  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/neidan/neidan/build/neidan-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 70)
            \time 5/32
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #"144" 
              }
            }
            s1 * 5/32
            - \tweak padding #11
            ^ \markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { III. 人神 }
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 20)
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \long-fermata
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \long-fermata
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 13/32
            s1 * 13/32
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 70)
            \time 80/32
            s1 * 5/2
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 20)
            \tweak text \markup {
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
                            } \startMeasureSpanner
            \time 9/8
            s1 * 9/8
            - \tweak X-extent ##f
            ^ \markup {
                                    \hspace #55 {
                                        \override #'(font-size . 4)
                                        \override #'(font-name . "Bodoni72 Book Italic")
                                        "attaca"
                                    }
                                }
            \bar ".|:"
            \bar ":|."
            \pageBreak
            \stopMeasureSpanner
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "viola 1 staff"
                {
                    \context Voice = "viola 1 voice"
                    {
                        \override Dots.staff-position = #2
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VII }
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        d'!16
                        \fp
                        [
                        (
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        - \tweak bound-details.right.padding 1
                        \startTextSpan
                        \<
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup
                                            \fontsize #-3
                                            \raise #0.4
                                            {
                                                \center-column {
                                                    \line {
                                                        III -
                                                    }
                                                    \line {
                                                        VI
                                                    }
                                                }
                                            }
                        e'!16
                        )
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 3 5 } \hspace #0.5 }
                        - \tweak bound-details.right.padding 1
                        \startTextSpan
                        \>
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        \revert Dots.staff-position
                        c'!32
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                        - \accent
                        \stopTextSpan
                        ]
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \upright \fraction 0 5 }
                        - \tweak bound-details.right.padding 1
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        b4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "extremely slow bow" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            b16
                            \!
                            \stopTextSpan
                        }
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        b4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "extremely slow bow" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            b16
                            \!
                            \stopTextSpan
                        }
                        \override Dots.staff-position = #2
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        d'!32
                        - \accent
                        \pp
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup
                                            \fontsize #-3
                                            \raise #0.4
                                            {
                                                \center-column {
                                                    \line {
                                                        IV -
                                                    }
                                                    \line {
                                                        VII
                                                    }
                                                }
                                            }
                        e'!8.
                        \f
                        \stopTextSpan
                        (
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \revert Dots.staff-position
                        \afterGrace
                        d'8.
                        )
                        \stopTextSpan
                        ]
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 2 5 } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \upright \fraction 3 5 }
                        \startTextSpan
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            d'16
                            \!
                            \stopTextSpan
                        }
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        \override Dots.staff-position = #2
                        d'4.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        d'32
                        \override Dots.staff-position = #2
                        d'8
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        e'16.
                        d'32
                        ]
                        \override Dots.staff-position = #2
                        f'16.
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d'16
                        \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d'16
                        - \abjad-zero-padding-glissando
                        \glissando
                        f'16.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        c'32
                        ]
                        \override Dots.staff-position = #2
                        d'16.
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \afterGrace
                        g'16.
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert NoteHead.X-extent
                            \revert NoteHead.transparent
                            \once \override NoteHead.transparent = ##t
                            g'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        d'32
                        ]
                        \override Dots.staff-position = #2
                        \fancy-gliss
                           #'(
                              (0 0 0.5 0.5 1 0)
                              (1 0 1.5 -0.5 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1.5 5 0)
                              (5 0 5.5 -1.5 6 0)
                              (6 0 6.5 2 7 0)
                              (7 0 7.5 -2 8 0)
                              (8 0 8.5 3 9 0)
                              (9 0 9.5 -3 10 0)
                         )
                         #0.5
                        f'8
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        c'32
                        ]
                        \override Dots.staff-position = #2
                        e'16
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        d'16.
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        d'32
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        r32
                        \override Dots.staff-position = #2
                        c'8
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        d'32
                        ]
                        \override Dots.staff-position = #2
                        d''8
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        d'32
                        ]
                        \override Dots.staff-position = #2
                        b'8
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        d'32
                        ]
                        \override Dots.staff-position = #2
                        b16.
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.transparent = ##t
                        \revert NoteHead.X-extent
                        \revert NoteHead.transparent
                        \afterGrace
                        b16
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \revert NoteHead.X-extent
                            \revert NoteHead.transparent
                            \once \override NoteHead.transparent = ##t
                            b16
                        }
                        d'32
                        [
                        r32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        c'32
                        \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        f'16.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \afterGrace
                        e'16.
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \revert NoteHead.X-extent
                            \revert NoteHead.transparent
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 9/8
                    }
                }
                \context leftHandStaff = "viola 2 staff"
                {
                    \context Voice = "viola 2 voice"
                    {
                        \times 2/3
                        {
                            \override Dots.staff-position = #2
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                            \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \string-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \revert NoteHead.X-extent
                            \revert NoteHead.transparent
                            \clef "treble"
                            g''32
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.transparent = ##t
                            c''32
                            - \abjad-zero-padding-glissando
                            \glissando
                            \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.transparent = ##t
                            \revert Dots.staff-position
                            \revert NoteHead.X-extent
                            \revert NoteHead.transparent
                            e''32
                            - \tweak arrow-length #2
                            - \tweak arrow-width #0.75
                            - \tweak bound-details.right.arrow ##t
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \override Dots.staff-position = #2
                        \revert Dots.staff-position
                        \afterGrace
                        \tweak style #'harmonic
                        b'16
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            b'16
                        }
                        \override Dots.staff-position = #2
                        \afterGrace
                        \tweak style #'harmonic
                        g''32
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            c''16
                        }
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                          %! +SCORE
                        \stopStaff \startStaff
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        \override Dots.staff-position = #2
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 2 3 0)
                              (3 0 3.5 -2 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 2 7 0)
                              (7 0 7.5 -2 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 2 11 0)
                              (11 0 11.5 -2 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 2 15 0)
                              (15 0 15.5 -2 16 0)
                         )
                         #0.5
                        \tweak style #'harmonic
                        g''32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak style #'harmonic
                        e''16
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.transparent = ##t
                        \revert NoteHead.X-extent
                        \revert NoteHead.transparent
                        \tweak style #'harmonic
                        c''4
                          %! abjad.glissando(7)
                        - \tweak arrow-length #2
                          %! abjad.glissando(7)
                        - \tweak arrow-width #0.75
                          %! abjad.glissando(7)
                        - \tweak bound-details.right.arrow ##t
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \revert Dots.staff-position
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        \tweak style #'harmonic
                        c''16
                        {
                            \big-half-harmonic
                            \revert Dots.staff-position
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            a''16
                        }
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                          %! +SCORE
                        \stopStaff \startStaff
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/2
                          %! +SCORE
                        \stopStaff \startStaff
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 9/8
                          %! +SCORE
                        \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
