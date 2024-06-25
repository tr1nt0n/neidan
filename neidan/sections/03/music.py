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
        (5, 32),
        (1, 4),
        (1, 4),
        (1, 4),
        (13, 32),
        (1, 4),
        (89, 32),
        (9, 8),
    ]
)

# right hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([2, 2, 1], 32)),
    # trinton.aftergrace_command(
    #     selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    #     invisible=True
    # ),
    evans.PitchHandler(
        [
            "d'",
            "e'",
            "c'",
        ]
    ),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.continuous_glissando(
        zero_padding=True, selector=trinton.logical_ties(grace=False)
    ),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin(">"),
            abjad.StopSlur(),
            trinton.make_custom_dynamic("s. f"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, -1, -1], grace=False),
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], pitched=True, grace=False
        ),
        accidental_strings=["VII", ("III -", "VI"), "I"],
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(invisible=True),
    evans.PitchHandler(["b"]),
    trinton.noteheads_only(selector=trinton.pleaves(grace=False)),
    trinton.continuous_glissando(zero_padding=True),
    trinton.hooked_spanner_command(
        string="extremely slow bow",
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"fff"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.spanner_command(
        strings=library.return_fraction_string_list(
            [("downbow", 0, 5), (3, 5), ("upbow", 5, 5), (0, 5)]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2, 2, 3],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
        full_string=True,
        right_padding=-1,
        # command="Two",
    ),
    voice=score["viola 1 voice"],
)

# left hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, 1),
                (
                    2,
                    1,
                ),
            ]
        )
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], pitched=True, grace=False
        ),
        invisible=True,
    ),
    evans.PitchHandler(["g''", "c''", "e''", "b'", "b'", "g''", "c''"]),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
            ],
            pitched=True,
        ),
        zero_padding=True,
        invisible_center=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
            abjad.Tweak(r"- \tweak arrow-length #2"),
            abjad.Tweak(r"- \tweak arrow-width #0.75"),
            # abjad.Tweak(r"- \tweak thickness #2"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([3, 4], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
        zero_padding=True,
    ),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [3, 4], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.X-extent = #'(0 . 0)",
                    "\once \override NoteHead.transparent = ##t",
                ],
                "before",
            ),
            abjad.LilyPondLiteral(
                [r"\revert NoteHead.X-extent", r"\revert NoteHead.transparent"],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [2], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["viola 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1, 2)),
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\set Score.proportionalNotationDuration = #(ly:make-moment 1 70)",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\set Score.proportionalNotationDuration = #(ly:make-moment 1 20)",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_mark(dict_key="144", padding=17, site="opening"),
            library.return_movement_markup(movement=-1, padding=11),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine(".|:"),
            abjad.LilyPondLiteral(
                r"""\tweak text \markup {
                    \raise #4
                    \center-column {
                        \line {
                            \override #'(font-name . "Bodoni72 Book Italic")
                            \override #'(font-size . 4)
                            "Rall. moltiss. sempre"
                        }
                        \line {
                            \override #'(font-name . "Bodoni72 Book")
                            \override #'(font-size . 4)
                            ×9
                        }
                    }
                } \startMeasureSpanner""",
                site="absolute_before",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
            abjad.BarLine(":|.", site="after"),
            abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup {
                        \hspace #55 {
                            \override #'(font-size . 4)
                            \override #'(font-name . "Bodoni72 Book Italic")
                            "attaca"
                        }
                    }"""
                ),
                abjad.Tweak(r"- \tweak X-extent ##f"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[
        2,
    ],
    fermata="long-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=False,
    blank=False,
    last_measure=False,
    extra_offset=1,
    padding=-7,
)

trinton.fermata_measures(
    score=score,
    measures=[3],
    fermata="long-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=False,
    blank=True,
    last_measure=False,
    extra_offset=1,
    padding=-7,
)

trinton.fermata_measures(
    score=score,
    measures=[4],
    fermata="middle-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=False,
    blank=False,
    last_measure=False,
    extra_offset=1,
    padding=-7,
)

trinton.fermata_measures(
    score=score,
    measures=[6],
    fermata="middle-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=False,
    blank=True,
    last_measure=False,
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

# for measure in [1, 2, 3, 4, 7, 8, 10, 11]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

# persist

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/neidan/neidan/sections/03",
    build_path="/Users/trintonprater/scores/neidan/neidan/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/neidan/neidan/build/neidan-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
