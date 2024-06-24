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
    evans.PitchHandler(["a,", "a"]),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([0], pitched=True),
        pitch_matching=True,
        slash=True,
    ),
    library.change_staff(
        clef_name="alto", selector=trinton.select_leaves_by_index([0])
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
    evans.PitchHandler(["c'", "c'", "d'", "c'"]),
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
        padding=5,
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
        heights=[13.75, 13.25],
        site="before",
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(invisible=True),
    evans.PitchHandler(["b"]),
    trinton.continuous_glissando(zero_padding=True),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"fff"')],
        selector=trinton.select_leaves_by_index([0]),
    ),
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
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    5,
                    8,
                    1,
                    1,
                    2,
                    1,
                    2,
                    5,
                    1,
                    1,
                    1,
                    1,
                    4,
                    2,
                    3,
                    1,
                    3,
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        )
    ),
    evans.PitchHandler(
        [
            "c'",
            "d'",
            "e''",
            "d''",
            "d'",
            "c'",
            "e'",
            "d'",
            "b'",
            "d''",
            "a''",
            "b'",
            "e'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
            "d'",
        ]
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
        pitch_matching=True,
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.clean_ametric_ties(),
    library.connection_stems(
        selector=trinton.select_logical_ties_by_index(
            [-8, -7, -6, -5, -4], pitched=True, grace=False
        ),
        heights=[
            11.5,
            9.75,
            11,
            7.5,
            14,
        ],
        site="before",
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8], first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [-9, -8, -7, -6, -5, -4, -3, -2, -1]
        ),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [4, 6, 7, 10, 13], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 7, 9, 14, 14], first=True, pitched=True, grace=False
        ),
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("II -", "V")],
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([14], pitched=True, grace=False),
        accidental_strings=[("V", "VI")],
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.bundle(
                    abjad.Articulation("downbow"),
                    abjad.Tweak(r"- \tweak Y-offset -1.5"),
                ),
                abjad.bundle(
                    abjad.Articulation("upbow"), abjad.Tweak(r"- \tweak Y-offset -1.5")
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [-9, -8, -7, -6, -5, -4, -3, -2, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string="legno",
        selector=trinton.select_logical_ties_by_index(
            [0, 8], grace=False, first=True, pitched=True
        ),
        padding=6.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    trinton.hooked_spanner_command(
        string="1/2 legno",
        selector=trinton.select_logical_ties_by_index(
            [9, 13], grace=False, first=True, pitched=True
        ),
        padding=6.5,
        direction=None,
        right_padding=5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    trinton.spanner_command(
        strings=["battuto ( no horizontal motion )", "tratto ( full bows poss. )"],
        selector=trinton.select_logical_ties_by_index(
            [0, -5], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=4.5,
        full_string=False,
        right_padding=0,
        command="Two",
    ),
    trinton.spanner_command(
        strings=["aperiodic", "periodic"],
        selector=trinton.select_logical_ties_by_index(
            [13, -3], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=0,
        full_string=False,
        right_padding=0,
        command="Three",
        tweaks=[r"- \tweak Y-offset 1.5"],
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1)])),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], grace=False),
        invisible=True,
        pitch_matching=True,
    ),
    evans.PitchHandler(["d'", "e'", "f'", "g'", "a'", "e'"]),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.connection_stems(
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3], pitched=True, grace=False
        ),
        heights=[
            14,
            11.5,
            10,
        ],
        site="before",
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("III -", "VI")],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                2,
                2,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("upbow"), abjad.Tweak(r"- \tweak Y-offset -1.5")
            ),
            abjad.bundle(
                abjad.Articulation("downbow"), abjad.Tweak(r"- \tweak Y-offset -1")
            ),
            abjad.bundle(
                abjad.Articulation("upbow"), abjad.Tweak(r"- \tweak Y-offset -0.5")
            ),
            abjad.bundle(
                abjad.Articulation("downbow"), abjad.Tweak(r"- \tweak Y-offset 0")
            ),
            abjad.bundle(
                abjad.Articulation("upbow"), abjad.Tweak(r"- \tweak Y-offset 0.5")
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 1, 1, 1, 1)])),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["e'"]),
    trinton.noteheads_only(selector=trinton.pleaves(grace=False)),
    trinton.invisible_tuplet_brackets(),
    library.connection_stems(
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 6], pitched=True, grace=False
        ),
        heights=[14.5, 14.5, 14.5],
        site="before",
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("V", "VI")],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 6], 9, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 6], 9, first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1, 4, 7], 9, first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.bundle(
                    abjad.Articulation("downbow"), abjad.Tweak(r"- \tweak Y-offset 0")
                ),
                abjad.bundle(
                    abjad.Articulation("upbow"), abjad.Tweak(r"- \tweak Y-offset 0")
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.hooked_spanner_command(
        string="full bows poss.",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=5.5,
        direction=None,
        right_padding=6.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)])
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["e'"]),
    trinton.noteheads_only(selector=trinton.pleaves(grace=False)),
    trinton.invisible_tuplet_brackets(),
    library.connection_stems(
        selector=trinton.select_logical_ties_by_index(
            [0, 4], pitched=True, grace=False
        ),
        heights=[
            14.25,
            14.25,
        ],
        site="before",
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("V", "VI")],
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffpp"),
            trinton.make_custom_dynamic("mf pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 4, -2], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [0, 4], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.bundle(
                    abjad.Articulation("downbow"), abjad.Tweak(r"- \tweak Y-offset 0")
                ),
                abjad.bundle(
                    abjad.Articulation("upbow"), abjad.Tweak(r"- \tweak Y-offset 0")
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.spanner_command(
        strings=["", "extremely slow bow"],
        selector=trinton.select_logical_ties_by_index(
            [0, -7, -7, -1],
            first=True,
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=5.5,
        full_string=False,
        right_padding=0,
        command="One",
        end_hook=True,
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)])
    ),
    evans.PitchHandler(
        [
            "e'",
            "e'",
            "f'",
            "f'",
            "g'",
            "g'",
            "a'",
            "a'",
            "b'",
            "b'",
            "c''",
            "d''",
            "e''",
            "f''",
            "g''",
            "a''",
            "b''",
            "b''",
            "b''",
            "b''",
        ]
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
        pitch_matching=True,
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 8, 12], pitched=True, grace=False
        ),
        accidental_strings=[
            ("V", "VI"),
            ("IV -", "VI"),
            ("III -", "VI"),
            ("II -", "V"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic('"ppp"')],
        selector=trinton.select_logical_ties_by_index(
            [0, -5], first=True, pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=["", "fast bow"],
        selector=trinton.select_logical_ties_by_index(
            [0, -5, -5, -1], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=5.5,
        full_string=False,
        right_padding=0,
        command="One",
        end_hook=True,
    ),
    voice=score["viola 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([6, 1], 8)),
    evans.PitchHandler(["a,", "aqf"]),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([0], pitched=True),
        pitch_matching=True,
        slash=True,
    ),
    library.change_staff(
        clef_name="alto", selector=trinton.select_leaves_by_index([0])
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

# left hand music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([7, 1], 16)),
    evans.PitchHandler(["f''", "b'"]),
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
        accidental_strings=["VI"],
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(-2, 3, 1, 3, 1, -2)]),
    ),
    evans.PitchHandler(["d'", "c'", "e'", "c'"]),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.logical_ties(
            last=True, exclude=[-1], grace=False, pitched=True
        ),
    ),
    trinton.aftergrace_command(
        invisible=True,
    ),
    evans.PitchHandler(["g''"]),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.StartHairpin("|>"),
            abjad.StartHairpin("<|"),
            abjad.StartHairpin("|>"),
            abjad.StartHairpin("<|"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.pleaves(),
    ),
    library.varied_trills(
        initial_width=5,
        y_scale=0.9,
        speed_factor=0.7,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("I -", "VII")],
    ),
    trinton.hooked_spanner_command(
        string="finger percussion",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size 1"],
    ),
    voice=score["viola 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        evans.tuplet([(3, 1, 1, 3, 1, 1, 1, 2, 4, 1, 1, 1, 4, 6, 5, 3, 1, 3, 1, 4)])
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [8, 12, 13, -1], grace=False, pitched=True
        ),
        invisible=True,
    ),
    evans.PitchHandler(
        [
            "a''",
            "b'",
            "g''",
            "e''",
            "a''",
            "g'",
            "a''",
            "b'",
            "b''",
            "b''",
            "g'",
            "b''",
            "f'",
            "b'",
            "f''",
            "c''",
            "b''",
            "b''",
            "b'",
            "e''",
            "c''",
            "b''",
            "c'",
            "c'",
        ]
    ),
    library.clean_ametric_ties(),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
            first=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [13, 14, 15, 16],
            first=True,
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
        ),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([13, 14]), zero_padding=True
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([15, 16]), zero_padding=True
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([17, 18, 19, 20, 21, 22, 23]),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.5,
                0.6,
                0.7,
                1.5,
                1,
                0.5,
                0.5,
                0.5,
                0.5,
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("II -", "V")],
    ),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([-6], pitched=True, grace=False),
        accidental_strings=[("I", "II")],
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 4, 8], first=True, grace=False
        ),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.tuplet([(2, 1, 2)])),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["c'", "c''", "g''", "b''"]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_logical_ties_by_index([1], first=True, grace=False),
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=[("VI")],
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(
        evans.tuplet([(1, -2, 1, -2, 1, -2)]),
    ),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["c'", "e'"]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        accidental_strings=["VI"],
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.tuplet([(1, -3, 1, -7, 7)]),
    ),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["c'", "e'", "c'", "e'", "f'", "f'"]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_logical_ties_by_index([-1], first=True, grace=False),
    ),
    trinton.continuous_glissando(zero_padding=True),
    library.accidentals(
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, grace=False
        ),
        accidental_strings=["VI", ("V", "VI")],
    ),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                0.1,
                0.2,
                0.5,
                0.5,
                0.4,
                0.4,
                1,
                0.2,
                0.2,
                0.2,
                1,
                0.5,
                0.5,
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    library.footnote_command(
        text_string="fingers above bow, close to bow as possible",
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
        # position_pair=(-1, 3),
        site="before",
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(
        evans.tuplet([(16, -3)]),
    ),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True, grace=False), invisible=True
    ),
    evans.PitchHandler(["d'"]),
    trinton.continuous_glissando(zero_padding=True),
    library.varied_trills(
        initial_width=7,
        y_scale=0.9,
        speed_factor=0.7,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        head=True,
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="( Slide in left hand )",
                tweaks=None,
                column="\center-column",
                font_name="Bodoni72 Book",
                fontsize=-2,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["viola 2 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_mark(dict_key="80", padding=17, site="opening"),
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
        padding=13,
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
        padding=13,
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
            library.return_metronome_mark(dict_key="80", padding=17, site="opening"),
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

for measure in [1, 2, 3, 4, 7, 8, 10, 11]:
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
    segment_path="/Users/trintonprater/scores/neidan/neidan/sections/02",
    build_path="/Users/trintonprater/scores/neidan/neidan/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/neidan/neidan/build/neidan-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
