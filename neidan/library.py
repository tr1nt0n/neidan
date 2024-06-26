import abjad
import baca
import evans
import trinton
import dataclasses
import fractions
import itertools
import random
import statistics
import typing
import quicktions
from itertools import cycle
from glossolaly import pitch
from abjadext import rmakers

# score


def neidan_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[abjad.Viola(), abjad.Viola()],
        groups=[
            2,
        ],
        staff_types=[
            ["Staff", "leftHandStaff"],
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# immutables

# notation tools


def varied_trills(
    initial_width,
    y_scale,
    speed_factor,
    thickness=3,
    selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    head=False,
    strings=None,
):
    def trills(argument):
        if speed_factor > 0.9:
            raise Exception("Speed factor must be a float value under 1.")
        selections = selector(argument)

        it = iter(selections)
        tups = [*zip(it, it)]

        start_trill = abjad.bundle(
            abjad.LilyPondLiteral(r"\slow-fast-trill", site="after"),
            rf"- \tweak details.squiggle-Y-scale {y_scale}",
            rf"- \tweak details.squiggle-initial-width {initial_width}",
            rf"- \tweak details.squiggle-speed-factor {speed_factor}",
            rf"- \tweak thickness {thickness}",
        )

        if head is True:
            start_trill = abjad.bundle(
                abjad.StartTrillSpan(),
                r"""- \tweak bound-details.left.text \markup { \center-column { \fontsize #5 \override #'(font-name . "ekmelos") \line { \char ##xe0D9 | \char ##xe0A4 } } }""",
            )

        if strings is not None:
            start_trill = abjad.bundle(
                abjad.StartTrillSpan(),
                rf"""- \tweak bound-details.left.text \markup {{ \center-column {{ \fontsize #-5 \line {{ {strings[0]} | {strings[-1]} }} }} }}""",
            )

        stop_trill = abjad.StopTrillSpan()

        for tup in tups:
            abjad.attach(start_trill, tup[0])

            abjad.attach(stop_trill, tup[-1])

    return trills


def accidentals(selector, accidental_strings, site="before", arrows=None):
    def make_accidentals(argument):
        selections = selector(argument)
        ties = abjad.select.logical_ties(selections)
        for tie, accidental in zip(ties, accidental_strings):
            if arrows is None:
                if isinstance(accidental, tuple):
                    string_I = accidental[0]
                    string_II = accidental[-1]

                    accidental_markup = rf"""\markup
                        \fontsize #-3
                        \raise #0.4
                        {{
                            \center-column {{
                                \line {{
                                    {string_I}
                                }}
                                \line {{
                                    {string_II}
                                }}
                            }}
                        }}"""

                else:
                    accidental_markup = (
                        rf"""\markup \fontsize #-3 \lower #0.6 {{ {accidental} }}"""
                    )
            else:
                if isinstance(accidental, tuple):
                    string_I = accidental[0]
                    string_II = accidental[-1]

                    accidental_markup = rf"""\markup
                        \fontsize #-3
                        \raise #2.25
                        {{
                            \center-column {{
                                \line {{
                                    \lower #1.75
                                    \override #'(font-name . "ekmelos")
                                    \char ##xe00C
                                }}
                                \line {{
                                    {string_I}
                                }}
                                \line {{
                                    {string_II}
                                }}
                                \line {{
                                    \raise #1.75
                                    \override #'(font-name . "ekmelos")
                                    \char ##xe00B
                                }}
                            }}
                        }}"""

                else:
                    if arrows == "up":
                        accidental_markup = rf"""\markup
                            \fontsize #-3
                            \raise #1.5
                            {{
                                \center-column {{
                                    \line {{
                                        \lower #1.75
                                        \override #'(font-name . "ekmelos")
                                        \char ##xe00C
                                    }}
                                    \line {{
                                        {accidental}
                                    }}
                                }}
                            }}"""

                    if arrows == "down":
                        accidental_markup = rf"""\markup
                            \fontsize #-3
                            \raise #1.1
                            {{
                                \center-column {{
                                    \line {{
                                        \lower #1.75
                                        {accidental}
                                    }}
                                    \line {{
                                        \override #'(font-name . "ekmelos")
                                        \char ##xe00B
                                    }}
                                }}
                            }}"""

            first_leaf = abjad.select.leaf(tie, 0)
            if isinstance(first_leaf, abjad.Chord):
                note_heads = first_leaf.note_heads
                note_head = note_heads[0]
                note_head.is_forced = True
            else:
                first_leaf.note_head.is_forced = True

            literal = abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.Accidental.stencil = #ly:text-interface::print",
                    rf"\once \override Voice.Accidental.text = {accidental_markup}",
                ],
                site=site,
            )

            abjad.attach(literal, first_leaf)

    return make_accidentals


def connection_stems(selector, heights, site="before"):
    def stems(argument):
        selections = selector(argument)
        ties = abjad.select.logical_ties(selections)

        for tie, height in zip(ties, heights):
            first_leaf = abjad.select.leaf(tie, 0)

            literal = abjad.LilyPondLiteral(
                [
                    r"\once \revert Staff.Stem.stencil",
                    rf"\once \override Staff.Stem.details.lengths = #'({height})",
                    # r"\once \override Staff.Stem.X-extent = ##f",
                    # r"\once \override Staff.Stem.X-offset = 0",
                    r"\once \override Staff.Stem.Y-extent = ##f",
                    r"\once \override Staff.Stem.Y-offset = 0",
                    r"\once \override Staff.Stem.layer = 0",
                    r"\once \override Staff.Stem.direction = #DOWN",
                    r"\once \override Staff.Stem.thickness = #2",
                    r"\once \override Flag.stencil = ##f",
                    r"\once \override Dots.stencil = ##f",
                ],
                site=site,
            )

            abjad.detach(abjad.LilyPondLiteral, first_leaf)

            abjad.attach(literal, first_leaf, direction=abjad.DOWN)

    return stems


def graphic_bow_pressure_spanner(
    peaks=[0, 1, 4, 2],
    peak_direction=abjad.DOWN,
    anchor_point_step_sizes=[1, 0.5, 1, 0.25],  # must be greater than 1
    divisions=[4, 5],
    counts=[1, 3, 1, 2],
    cyclic=True,
    left_broken_text=None,
    left_text=None,
    right_padding=None,
    right_text=None,
    padding=2,
    forget=False,
):
    if peak_direction == abjad.UP:
        peaks = [0 - _ for _ in peaks]
    cyc_peaks = evans.CyclicList(peaks, forget=forget)
    cyc_divisions = evans.CyclicList(divisions, forget=forget)
    cyc_anchor_points = evans.CyclicList(anchor_point_step_sizes, forget=forget)

    def returned_function(selections):
        ties = abjad.select.logical_ties(selections, pitched=True)
        if counts is not None:
            groups = abjad.select.partition_by_counts(
                ties, counts, cyclic=cyclic, overhang=cyclic
            )
            for group in groups:
                final = abjad.select.leaf(group, -1)
                next_leaf = abjad.get.leaf(final, 1)
                group.append(next_leaf)
            for group in groups:
                current_divisions = cyc_divisions(r=1)[0]
                current_peaks = cyc_peaks(r=current_divisions)
                current_anchor_point_step_sizes = cyc_anchor_points(
                    r=current_divisions - 1
                )
                normalized_step_sizes = evans.Sequence(
                    current_anchor_point_step_sizes
                ).normalize_to_sum(1)
                summed_steps = abjad.math.cumulative_sums(normalized_step_sizes)
                zipped_peaks_and_positions = [
                    _ for _ in zip(summed_steps, current_peaks)
                ]
                pairs = str(
                    tuple([f"({x} . {y})" for x, y in zipped_peaks_and_positions])
                )
                current_peaks = pairs.replace(",", "")
                current_peaks = current_peaks.replace("'", "")
                constructed_string = rf"\startBowSpan #'{current_peaks}"
                start_indicator = abjad.StartTextSpan(
                    command=constructed_string,
                    left_broken_text=left_broken_text,
                    left_text=left_text,
                    right_padding=right_padding,
                    right_text=right_text,
                )
                bundle = abjad.bundle(
                    start_indicator,
                    abjad.Tweak(rf"- \tweak padding {padding}"),
                    abjad.Tweak(r"- \tweak Y-extent ##f"),
                    abjad.Tweak(r"- \tweak Y-offset 0"),
                )
                stop_indicator = abjad.StopTextSpan(
                    command=r"\stopBowSpan",
                )
                abjad.attach(bundle, abjad.select.leaf(group, 0))
                abjad.attach(stop_indicator, abjad.select.leaf(group, -1))

    return returned_function


def footnote_command(
    text_string="",
    selector=trinton.select_leaves_by_index([0]),
    position_pair=(-2, 1),
    site="before",
):
    def footnote(argument):
        selections = selector(argument)

        if isinstance(text_string, list):
            text = [f"\line {{ {_} }} " for _ in text_string]
            text = "".join(text)
            footnote = rf"""\footnote #'({position_pair[0]} . {position_pair[-1]}) \markup \fontsize #1 {{ \override #'(font-name . "Bodoni72 Book Italic") {{ \column {{ {text} }} }} }}"""
        else:
            footnote = rf"""\footnote #'({position_pair[0]} . {position_pair[-1]}) \markup \fontsize #1 {{ \override #'(font-name . "Bodoni72 Book Italic") {{ \column {{ " {text_string} " }} }} }}"""

        for selection in selections:
            if isinstance(selection, abjad.Chord):
                note_heads = selection.note_heads

                note_head_length = len(note_heads)

                note_head_range = list(range(0, note_head_length + 1))

                note_head_index = statistics.median(note_head_range)

                note_head_index = int(note_head_index)

                middle_note_head = note_heads[note_head_index]

                middle_note_head.tweaks = [NoteHeadAttachment(footnote)]
            else:
                footnote = abjad.LilyPondLiteral(footnote, site=site)
                abjad.attach(footnote, selection)

    return footnote


def clean_ametric_ties(selector=trinton.logical_ties(pitched=True)):
    def clean(argument):
        selections = selector(argument)

        ties = abjad.select.logical_ties(selections)

        relevant_ties = [_ for _ in ties if len(_) > 1]

        for tie in relevant_ties:
            leaves = abjad.select.leaves(tie)
            invisible_leaves = abjad.select.exclude(leaves, [0])
            for leaf in invisible_leaves:
                abjad.override(leaf).NoteHead.transparent = True
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override NoteHead.no-ledgers = ##t", "before"
                    ),
                    leaf,
                )
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override Accidental.stencil = ##f", "before"
                    ),
                    leaf,
                )

    return clean


def reset_line_positions(score, voice_names):
    voices = [score[_] for _ in voice_names]

    reset = abjad.LilyPondLiteral(
        [
            r"\once \revert Staff.StaffSymbol.line-positions",
            r"\once \override Staff.Clef.stencil = ##f",
        ],
        site="before",
    )

    for voice in voices:
        shards = abjad.select.group_by_measure(voice)
        relevant_shards = []
        for shard in shards:
            if (
                all(isinstance(leaf, abjad.Rest) for leaf in shard)
                or all(isinstance(leaf, abjad.MultimeasureRest) for leaf in shard)
                or all(isinstance(leaf, abjad.Skip) for leaf in shard)
            ):
                relevant_shards.append(shard)

        for shard in relevant_shards:
            abjad.attach(reset, shard[0])


_clef_name_to_info = {
    "body": (3, [7, 0, -7]),
    "back-of-body": (2, [7, -7]),
    "string": (5, [7, 0, -4, -6, -7]),
    "alto": (5, "revert"),
}


def change_staff(clef_name, selector=trinton.select_leaves_by_index([0], pitched=True)):
    def change(argument):
        selections = selector(argument)
        first_leaf = abjad.select.leaf(selections, 0)

        if clef_name != "alto":
            clef = f"\{clef_name}-clef"
            clef_line_count = _clef_name_to_info[clef_name][0]
            clef_line_positions = _clef_name_to_info[clef_name][-1]
            clef_line_positions = tuple(clef_line_positions)
            clef_line_positions = str(clef_line_positions)
            clef_line_positions = clef_line_positions.replace(",", "")

            literal = abjad.LilyPondLiteral(
                [
                    r"\override Staff.NoteHead.no-ledgers = ##t"
                    rf"\staff-line-count {clef_line_count}",
                    f"\override Staff.StaffSymbol.line-positions = #'{clef_line_positions}",
                    r"\override Staff.Clef.stencil = #ly:text-interface::print",
                    f"\override Staff.Clef.text = {clef}",
                    r"\override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)"
                    r"\set Staff.forceClef = ##t",
                ],
                site="before",
            )

            abjad.attach(abjad.Clef("treble"), first_leaf)

            abjad.attach(literal, first_leaf)

        else:
            literal = abjad.LilyPondLiteral(
                [
                    r"\revert Staff.NoteHead.no-ledgers",
                    r"\staff-line-count 5",
                    r"\revert Staff.StaffSymbol.line-positions",
                    r"\revert Staff.Clef.stencil",
                    r"\override Staff.BarLine.bar-extent = #'(-2 . 2)",
                    r"\set Staff.forceClef = ##t",
                ],
                site="before",
            )

            abjad.attach(abjad.Clef("alto"), first_leaf)
            abjad.attach(literal, first_leaf)

    return change


# markups

movements = [
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { II. 地氣 }""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { III. 人神 }""",
    ),
]


def return_fraction_string_list(tups):
    _bowing_to_character = {
        "upbow": "##xe612",
        "downbow": "##xe610",
    }

    fraction_list = []

    for tup in tups:
        if len(tup) == 3:
            fraction_list.append(
                rf"""\markup \concat {{ \center-column {{ \line {{ \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char {_bowing_to_character[tup[0]]} }} \line {{ \upright \fraction {tup[1]} {tup[-1]} }} }} }}"""
            )

        else:
            fraction_list.append(
                rf"\markup \concat {{ \upright \fraction {tup[0]} {tup[-1]} }}"
            )

    return fraction_list


def return_movement_markup(movement, padding=14):
    return abjad.bundle(
        movements[movement], abjad.Tweak(rf"- \tweak padding #{padding}")
    )


def fermata_measure_spanner(fermata, measure, voice, repeat=None):
    attachment_list = [
        abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after")
    ]
    if repeat is not None:
        _fermata_name_to_character = {
            "extremely-short-fermata": "##xf69E",
            "very-short-fermata": "##xe4C2",
            "short-fermata": "##xe4C4",
            "middle-fermata": "##xe4C0",
            "long-fermata": "##xe4C6",
            "very-long-fermata": "##xe4C8",
            "extremely-long-fermata": "##xf6A0",
        }

        repetition_markup = rf"""\markup {{
            \raise #2.5
            \center-column {{
                \line {{
                    \override #'(font-name . "ekmelos")
                    \char {_fermata_name_to_character[fermata]}
                }}
                \line {{
                    \override #'(font-name . "Bodoni72 Book")
                    \override #'(font-size . 4)
                    ×{repeat}
                }}
            }}
        }}"""

        literal_string = f"\\tweak text {repetition_markup} \startMeasureSpanner"
        literal = abjad.LilyPondLiteral(literal_string, site="absolute_before")
        first_barline = abjad.BarLine(".|:", site="before")
        second_barline = abjad.BarLine(":|.", site="after")

        attachment_list.append(first_barline)
        attachment_list.append(literal)
        attachment_list.append(second_barline)

    else:
        literal_string = f"\\tweak text \{fermata} \startMeasureSpanner"
        literal = abjad.LilyPondLiteral(literal_string, site="absolute_before")
        attachment_list.append(literal)

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=attachment_list,
            selector=trinton.select_leaves_by_index(
                [
                    0,
                ]
            ),
        ),
        voice=voice,
    )


# metronome marks

_metronome_marks = {
    "72": """\\abjad-metronome-mark-markup #2 #0 #2 #"72" """,
    "80": """\\abjad-metronome-mark-markup #3 #0 #2 #"80" """,
    "144": """\\abjad-metronome-mark-markup #3 #0 #2 #"144" """,
}


def return_metronome_mark(dict_key, padding=7, site="absolute_after"):
    literal = abjad.LilyPondLiteral(
        [
            r"^ \markup {",
            rf"  \raise #{padding} \with-dimensions-from \null",
            r"  \override #'(font-size . 5.5)",
            r"  \concat {",
            f"      {_metronome_marks[dict_key]}",
            r"  }",
            r"}",
        ],
        site=site,
    )

    return literal
