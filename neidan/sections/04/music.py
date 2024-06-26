import abjad
import baca
import evans
import trinton
import quicktions
from itertools import cycle
from abjadext import rmakers
from neidan import library

score = library.neidan_score(
    [
        (4, 4),
        (4, 4),
        (4, 4),
        (6, 4),
        (2, 4),
        (4, 4),
        (10, 4),
        (2, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (2, 4),
        (2, 4),
        (3, 4),
        (4, 4),
        (1, 4),
    ]
)

# right hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.change_staff(
        clef_name="alto", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["viola 1 voice"],
)

for measure in [1, 2, 3, 4, 5, 6, 7, 8]:
    if measure % 2 == 0:
        pitch_list = ["a,", "a,", "a", "a"]
    else:
        pitch_list = ["d", "d", "d'", "d'"]

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.talea([1], 4)),
        trinton.aftergrace_command(
            selector=trinton.logical_ties(exclude=[-1]), slash=True
        ),
        evans.PitchHandler(pitch_list),
        trinton.continuous_glissando(zero_padding=True),
        voice=score["viola 1 voice"],
    )

for measure in [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
]:
    if measure % 2 == 0:
        string_number = "V"
    else:
        string_number = "IV"

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.hooked_spanner_command(
            string=string_number,
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=6,
            direction=None,
            right_padding=4,
            full_string=False,
            style="dashed-line-with-hook",
            hspace=None,
            command="",
            tag=None,
            # tweaks=[r"- \tweak font-size 1"],
        ),
        voice=score["viola 1 voice"],
    )

for measure in [1, 2, 3, 4, 5, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
            direction=abjad.DOWN,
        ),
        voice=score["viola 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, -1], pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(r"\markup { V }"),
            abjad.Markup(r"\markup { II }"),
        ],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.talea([1, 3], 4)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["e'", "c'", "f'"]),
    trinton.noteheads_only(),
    trinton.continuous_glissando(zero_padding=True),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0])
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=["II"],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.padding = 5"
            ),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="extremely fast bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1)])),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([1], 4)),
        direction=abjad.UP,
        voice_name="right hand upper voice",
        from_components=False,
        temp_name="temp",
    ),
    evans.PitchHandler(["f'"]),
    voice=score["viola 1 voice"],
)

for measure in [10, 11, 12, 13, 14, 15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.rewrite_meter_command(),
        trinton.attachment_command(
            attachments=[trinton.make_custom_dynamic("ffpp")],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        abjad.beam,
        library.accidentals(
            selector=trinton.select_logical_ties_by_index(
                [
                    0,
                ],
                pitched=True,
                grace=False,
            ),
            accidental_strings=[
                ("I", "II"),
            ],
            arrows="up",
        ),
        voice=score["viola 1 voice temp"],
    )

# left hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    evans.RhythmHandler(evans.talea([10000], 4)),
    trinton.aftergrace_command(
        invisible=True,
    ),
    evans.PitchHandler(["e'"]),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0])
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            pitched=True,
            grace=False,
        ),
        accidental_strings=[
            "I",
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.footnote_command(
        text_string="finger underneath the bow, as close to bow as possible",
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
        position_pair=(0, -4),
        site="before",
    ),
    voice=score["viola 2 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=[
                    """\override #'(font-name . "Bodoni72 Book Italic") Epilogue:""",
                    "You Got to Go to that Lonesome Valley",
                    "( nobody else can go for you )",
                ],
                tweaks=[abjad.Tweak(r"- \tweak padding 24")],
                column="\column",
                font_name="Bodoni72 Book",
                fontsize=3,
                string_only=False,
            ),
            library.return_metronome_mark(dict_key="80", padding=19.5, site="opening"),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") {
                        \column {
                            "Rubato"
                            "poco pont. sempre"
                            "vib. moltiss. sempre"
                        }
                    }"""
                ),
                r"- \tweak padding 7.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "( Senza misura )" }"""
                ),
                r"- \tweak X-extent ##f",
                r"- \tweak Y-extent ##f",
                r"- \tweak Y-offset 11",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_mark(
                dict_key="72",
                # padding=17
                site="opening",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# fermate

library.fermata_measure_spanner(
    fermata="middle-fermata",
    measure=9,
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[16],
    fermata="long-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=False,
    blank=True,
    last_measure=True,
    extra_offset=1,
    padding=-7,
)

# beautification

library.reset_line_positions(
    score=score, voice_names=["viola 1 voice", "viola 2 voice"]
)

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=["viola 2 voice"],
)

for measure in [1, 2, 4, 5, 7, 9, 10, 12, 13, 15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# persist

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/neidan/neidan/sections/04",
    build_path="/Users/trintonprater/scores/neidan/neidan/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/neidan/neidan/build/neidan-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
