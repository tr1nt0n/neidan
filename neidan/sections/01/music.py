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

# music

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

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[library.return_metronome_mark(dict_key="80", padding=17)],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
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

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank",
#     voice_names=["viola 2 voice"],
# )

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
