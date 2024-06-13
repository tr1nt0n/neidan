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
            "d",
            "d'",
        ]
    ),
    trinton.aftergrace_command(
        selector=trinton.pleaves(exclude=[-1]), slash=True, pitch_matching=True
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
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
        string="VI",
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
        peaks=[0, 2, 0, 2, 0, 2, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[
            0.5,
            0.25,
            0.25,
            0.25,
            0.25,
            0.25,
        ],  # must be greater than 1
        divisions=[
            7,
        ],
        counts=[
            2,
        ],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=-10,
        right_text=None,
        padding=-4,
        forget=False,
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

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[library.return_metronome_mark(dict_key="80", padding=17)],
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
    measures=[4, 7],
    fermata="middle-fermata",
    voice_names=["viola 1 voice", "viola 2 voice"],
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
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
