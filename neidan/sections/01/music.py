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
        (7, 8),
        (6, 4),
        (1, 4),
        (3, 16),
        (4, 4),
        (1, 4),
        (3, 16),
        (4, 4),
        (2, 4),
        (6, 4),
        (6, 4),
    ]
)

# right hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([2, 2, 2, 1], 8)),
    evans.PitchHandler(
        [
            "d'",
            "d''",
        ]
    ),
    trinton.aftergrace_command(
        selector=trinton.pleaves(exclude=[-1]), slash=True, pitch_matching=True
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.continuous_glissando(zero_padding=True),
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
        string="IV",
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
    evans.RhythmHandler(evans.talea([-16, 3, 1, 1, 2, 1], 16)),
    evans.PitchHandler(["b''", "d''", "f''", "d''", "b''"]),
    library.change_staff(
        clef_name="body", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="legno trat.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=2,
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
    evans.RhythmHandler(evans.talea([1000], 16)),
    evans.PitchHandler(["b'"]),
    trinton.aftergrace_command(invisible=True, pitch_matching=True),
    library.change_staff(
        clef_name="back-of-body", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.attachment_command(
        attachments=[abjad.Markup(r'\markup { \hspace #-1 "( back of body )" }')],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    library.graphic_bow_pressure_spanner(
        peaks=[0, 1.7, 0.3, 2, 0.6, 2.5, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[
            0.5,
            0.25,
            0.25,
            0.25,
            0.20,
            0.15,
        ],
        divisions=[
            7,
        ],
        counts=[
            2,
        ],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=-4,
        forget=False,
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([5, 3, 1, 1, 1, 1, 4], 16)),
    evans.PitchHandler(["b''", "a'", "a''", "c'", "g'", "e'", "a''"]),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
        pitch_matching=True,
    ),
    library.change_staff(
        clef_name="body", selector=trinton.select_leaves_by_index([0])
    ),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([-1], grace=False)
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1, 2], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                4,
                5,
            ],
            pitched=True,
        ),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.Articulation(">"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, -2, -2, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string="legno trat.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
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
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([1000], 16)),
    evans.PitchHandler(["b'"]),
    trinton.aftergrace_command(invisible=True, pitch_matching=True),
    library.change_staff(
        clef_name="back-of-body", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.attachment_command(
        attachments=[abjad.Markup(r'\markup { \hspace #-1 "( back of body )" }')],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    library.graphic_bow_pressure_spanner(
        peaks=[0, 3, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[0.65, 0.35, 0.15],
        divisions=[
            3,
        ],
        counts=[
            2,
        ],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=-4,
        forget=False,
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.talea([6, 1, 1, 1, 5, 2, 2, 2, 1, 9, 1, 1], 32)),
    evans.PitchHandler(
        ["d'", "a'", "f'", "a'", "g'", "d''", "g'", "d''", "g'", "a''", "a''", "a''"]
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-3], pitched=True, grace=False),
        invisible=True,
        pitch_matching=True,
    ),
    library.change_staff(
        clef_name="body", selector=trinton.select_leaves_by_index([0])
    ),
    library.change_staff(
        clef_name="string",
        selector=trinton.select_logical_ties_by_index(
            [-3], first=True, pitched=True, grace=False
        ),
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
            ],
            pitched=True,
        ),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([9, 10], pitched=True),
        zero_padding=True,
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"mf"'),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -4, -3, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string="legno trat.",
        selector=trinton.select_leaves_by_index([0, -3], pitched=True),
        padding=6,
        direction=None,
        right_padding=-0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    trinton.hooked_spanner_command(
        string='\markup \hspace #-1.5 { "l. bat." }',
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.talea([1000], 16)),
    evans.PitchHandler(["b'"]),
    trinton.aftergrace_command(invisible=True, pitch_matching=True),
    library.change_staff(
        clef_name="back-of-body", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.attachment_command(
        attachments=[abjad.Markup(r'\markup { \hspace #-1 "( back of body )" }')],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    library.graphic_bow_pressure_spanner(
        peaks=[
            0,
            1.5,
            0.5,
            1.5,
            0.5,
            1.5,
            0.7,
            4,
            1,
            2,
            0.5,
            2,
            1,
            1.5,
            0.5,
            3,
            1,
            2,
            1,
            2,
            0.2,
            5,
            0,
        ],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[
            1,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            1.5,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            1,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            1.5,
            1,
        ],
        divisions=[
            23,
        ],
        counts=[
            2,
        ],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=-4,
        forget=False,
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    voice=score["viola 1 voice"],
)


# left hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="absolute_before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([1, 1, 1, 9], 32)),
    evans.PitchHandler(["a''"]),
    library.clean_ametric_ties(selector=trinton.logical_ties(pitched=True)),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.logical_ties(pitched=True, first=True)
    ),
    library.change_staff(
        clef_name="body", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3], 4, pitched=True, first=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.Dynamic("f")]),
        selector=trinton.select_logical_ties_by_index(
            [0, 3, -4, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.Dynamic("p")]),
        selector=trinton.select_logical_ties_by_index(
            [4, 7, 8, 11], first=True, pitched=True, grace=False
        ),
    ),
    library.footnote_command(
        text_string="quickly tap fingertips 2-5 on body",
        # selector=trinton.select_leaves_by_index([0]),
        # position_pair=(-1, 3),
        # site="before",
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([1, 1, 1, 1, -27, 1], 32)),
    evans.PitchHandler(["f''", "f''", "f''", "f''", "a''"]),
    trinton.change_notehead_command(notehead="cross"),
    library.change_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Articulation(">"),
            abjad.Dynamic('"pppp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, 3, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="w/ wooden piece",
                tweaks=None,
                column="\center-column",
                font_name="Bodoni72 Book",
                fontsize=-3,
                string_only=False,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    library.footnote_command(
        text_string="lightly tap side of bridge with wooden piece",
        selector=trinton.select_leaves_by_index([-1]),
        # position_pair=(-1, 3),
        # site="before",
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.talea([30, 1, 1], 32)),
    evans.PitchHandler(["a''"]),
    trinton.change_notehead_command(
        selector=trinton.select_leaves_by_index([-2, -1]), notehead="cross"
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        invisible=True,
        pitch_matching=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -2], first=True, pitched=True, grace=False
        ),
    ),
    library.footnote_command(
        text_string="quasi-bow side of bridge with wooden piece",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        # position_pair=(-1, 3),
        site="absolute_before",
    ),
    trinton.hooked_spanner_command(
        string="trat.",
        selector=trinton.select_logical_ties_by_index(
            [0, 1],
            pitched=True,
            first=True,
        ),
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
    trinton.hooked_spanner_command(
        string='\markup \hspace #-1 { "bat." }',
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True),
        padding=5.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    voice=score["viola 2 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[library.return_metronome_mark(dict_key="80", padding=14)],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r'\markup \fontsize #3 { "( senza misura )" }'),
                r"- \tweak padding #7",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

for measure, fermata in zip(
    [
        2,
        3,
        5,
        6,
        8,
        9,
        10,
        11,
    ],
    [
        "long-fermata",
        "very-short-fermata",
        "middle-fermata",
        "very-short-fermata",
        "middle-fermata",
        "short-fermata",
        "long-fermata",
        "long-fermata",
    ],
):
    library.fermata_measure_spanner(
        fermata=fermata, measure=measure, voice=score["Global Context"]
    )

# fermate

trinton.fermata_measures(
    score=score,
    measures=[
        4,
    ],
    fermata="middle-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=False,
    blank=True,
    last_measure=False,
    padding=-7,
)

trinton.fermata_measures(
    score=score,
    measures=[7],
    fermata="middle-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=True,
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
    segment_path="/Users/trintonprater/scores/neidan/neidan/sections/01",
    build_path="/Users/trintonprater/scores/glossolaly/glossolaly/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/neidan/neidan/build/neidan-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
