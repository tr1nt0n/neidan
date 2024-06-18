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
        (5, 8),
        (2, 4),
        (3, 16),
        (4, 4),
        (1, 4),
        (12, 4),
        (2, 4),
        (4, 4),
        (6, 4),
        (8, 4),
        (7, 8),
        (1, 4),
    ]
)

# right hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([4, 1], 8)),
    evans.PitchHandler(["a", "a'"]),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([0], pitched=True),
        pitch_matching=True,
        slash=True,
    ),
    library.change_staff(
        clef_name="treble", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="extremely fast bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15,
        direction=None,
        right_padding=4,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    trinton.hooked_spanner_command(
        string="tasto poss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction=None,
        right_padding=4,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    trinton.hooked_spanner_command(
        string="1/2 legno trat.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        direction=None,
        right_padding=4,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    trinton.hooked_spanner_command(
        string="V",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([3, 1, 2, 2], 16)),
    evans.PitchHandler(["a''", "a''", "g''", "a''"]),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Articulation(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, -1], first=True, pitched=True
        ),
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=["II"],
    ),
    trinton.hooked_spanner_command(
        string="legno bat.",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 4, 4, 1, 1)]),
    ),
    evans.PitchHandler(["e'"]),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3, 4], pitched=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [2, 3, -1], first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("downbow"), abjad.Tweak(r"- \tweak Y-offset -1")
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 5], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("upbow"), abjad.Tweak(r"- \tweak Y-offset -1")
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 4], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("V", "VI")],
    ),
    trinton.hooked_spanner_command(
        string="fast bow",
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
    library.connection_stems(
        selector=trinton.select_logical_ties_by_index(
            [2, 3], pitched=True, grace=False
        ),
        heights=[8.8, 9.2],
        site="before",
    ),
    voice=score["viola 1 voice"],
)

# left hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([7, 1], 16)),
    evans.PitchHandler(["e'", "b'"]),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.logical_ties(first=True, grace=False),
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=["II"],
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(-2, 3, 1, 3, 1, -2)]),
    ),
    evans.PitchHandler(["g''", "a''", "f''", "a''"]),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_logical_ties_by_index(
            [0, 2], pitched=True, first=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.logical_ties(first=True, grace=False)
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=["VI"],
    ),
    voice=score["viola 2 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_mark(dict_key="80", padding=17),
            library.return_movement_markup(movement=0, padding=21.5),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.hooked_spanner_command(
        string=r"""\markup {
            \fontsize #3
            \override #'(font-name . "Bodoni72 Book Italic")
            {
                "Same periodic pulse from previous measure"
            }
        }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=14,
        direction=None,
        right_padding=50,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    trinton.hooked_spanner_command(
        string=r"""\markup {
            \fontsize #3
            \override #'(font-name . "Bodoni72 Book Italic")
            {
                "Rall. moltiss."
            }
        }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=14,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "Same pulse from mm. 25" }"""
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
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_mark(dict_key="80", padding=14),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("|.", site="after"),
            abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

for measure, fermata in zip(
    [
        2,
        3,
        4,
        6,
        7,
        9,
        10,
    ],
    [
        "short-fermata",
        "very-short-fermata",
        "long-fermata",
        "extremely-long-fermata",
        "short-fermata",
        "long-fermata",
        "very-long-fermata",
    ],
):
    library.fermata_measure_spanner(
        fermata=fermata, measure=measure, voice=score["Global Context"]
    )

library.fermata_measure_spanner(
    fermata="middle-fermata", measure=8, voice=score["Global Context"], repeat="9"
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[5],
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
    measures=[12],
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

# persist

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/neidan/neidan/sections/02",
    build_path="/Users/trintonprater/scores/glossolaly/glossolaly/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/neidan/neidan/build/neidan-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
