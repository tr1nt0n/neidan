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

# markups

# metronome marks

_metronome_marks = {
    "80": """\\abjad-metronome-mark-markup #3 #0 #2 #"80" """,
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
