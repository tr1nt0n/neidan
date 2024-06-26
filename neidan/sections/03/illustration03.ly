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
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 90)
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
            \noBreak
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 20)
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \long-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \long-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \time 13/32
            s1 * 13/32
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \set Score.proportionalNotationDuration = #(ly:make-moment 1 90)
            \time 80/32
            s1 * 5/2
            \pageBreak
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
            \bar ".|:"
            \time 9/8
            s1 * 9/8
            - \tweak X-extent ##f
            ^ \markup {
                                    \hspace #55 {
                                        \override #'(font-size . 4)
                                        \override #'(font-name . "Bodoni72 Book Italic")
                                        "attacca"
                                    }
                                }
            \bar ":|."
            \break
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
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VII }
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
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        - \tweak bound-details.right.padding 1
                        \startTextSpan
                        \<
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
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
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        \revert Dots.staff-position
                        c'!32
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                        - \accent
                        \stopTextSpan
                        ]
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
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
                        - \tweak bound-details.left.text \markup \concat { \upright { "XSB" } \hspace #0.5 }
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
                        - \tweak bound-details.left.text \markup \concat { \upright { "XSB" } \hspace #0.5 }
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
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        d'!32
                        - \accent
                        \pp
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #10
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
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
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
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
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            I
                                                        }
                                                        \line {
                                                            II
                                                        }
                                                    }
                                                }
                        d'!4.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \revert Dots.staff-position
                        d'32
                        - \accent
                        \f
                        \stopTextSpan
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 1 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VII }
                        d'!8
                        \mf
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Dots.staff-position
                        e'16.
                        \stopTextSpan
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 3 5 } \hspace #0.5 }
                        \startTextSpan
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            I
                                                        }
                                                        \line {
                                                            II
                                                        }
                                                    }
                                                }
                        d'!32
                        - \accent
                        \f
                        \stopTextSpan
                        ]
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VI }
                        f'!16.
                        \p
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \revert Dots.staff-position
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d'16
                        \mf
                        \stopTextSpan
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 2 5 } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d'!16
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        f'16.
                        \ff
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 1 5 } \hspace #0.5 }
                        \startTextSpan
                        \revert Dots.staff-position
                        c'32
                        - \accent
                        \f
                        \stopTextSpan
                        ]
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VII }
                        d'!16.
                        \mp
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \afterGrace
                        g'16.
                        \mf
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 4 5 } \hspace #0.5 }
                        \startTextSpan
                        \>
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
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        \revert Dots.staff-position
                        d'!32
                        - \accent
                        \f
                        \stopTextSpan
                        ]
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
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
                        \pp
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        - \tweak bound-details.left.text \markup { \center-column { \fontsize #-5 \line { VI | VII } } }
                        \startTrillSpan
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        \revert Dots.staff-position
                        c'!32
                        \f
                        \stopTextSpan
                        ]
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { V }
                        e'!16
                        - \accent
                        \mf
                        \stopTextSpan
                        \stopTrillSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Dots.staff-position
                        d'16.
                        \stopTextSpan
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 3 5 } \hspace #0.5 }
                        \startTextSpan
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        d'!32
                        - \accent
                        \f
                        \stopTextSpan
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        r32
                        \stopTextSpan
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 0 5 } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            I
                                                        }
                                                        \line {
                                                            II
                                                        }
                                                    }
                                                }
                        c'!8
                        \pp
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \revert Dots.staff-position
                        d'32
                        - \accent
                        \f
                        \stopTextSpan
                        ]
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VII }
                        d''!8
                        \mp
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        \revert Dots.staff-position
                        d'!32
                        - \accent
                        \f
                        \stopTextSpan
                        ]
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 3 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        b'8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "f mp"))
                        \stopTextSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        \startTextSpan
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        - \tweak bound-details.left.text \markup { \center-column { \fontsize #-5 \line { VI | VII } } }
                        \startTrillSpan
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                        \revert Dots.staff-position
                        d'!32
                        - \accent
                        \f
                        \stopTextSpan
                        ]
                        - \tweak padding #13
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 2 5 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \upright \fraction 0 5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        b16.
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
                        \stopTrillSpan
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "XSB" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
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
                            \stopTextSpan
                        }
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            I
                                                        }
                                                        \line {
                                                            II
                                                        }
                                                    }
                                                }
                        d'!32
                        - \accent
                        \f
                        [
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        r32
                        \stopTextSpan
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \upright \fraction 0 5 } \hspace #0.5 }
                        \startTextSpan
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        c'32
                        - \accent
                        \stopTextSpan
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe610 } \line { \upright \fraction 5 5 } } } \hspace #0.5 }
                        \startTextSpan
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            VI
                                                        }
                                                        \line {
                                                            VII
                                                        }
                                                    }
                                                }
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        f'!16.
                        \stopTextSpan
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \concat { \center-column { \line { \override #'(font-name . "ekmelos") \override #'(font-size . 4) \char ##xe612 } \line { \upright \fraction 0 5 } } } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \concat { \upright \fraction 5 5 }
                        \startTextSpan
                        \>
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
                            \stopTextSpan
                        }
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
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
                        <b! d'>8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "ppp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        [
                        - \tweak padding #7.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \column { \line { "wood on string, hair behind bridge" } \line { "full bows poss." } } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        <b d'>8
                        - \tenuto
                        <b d'>8
                        <b d'>8
                        <b d'>8
                        - \tenuto
                        <b d'>8
                        <b d'>8
                        <b d'>8
                        - \tenuto
                        <b d'>8
                        \!
                        \stopTextSpan
                        ]
                    }
                }
                \context leftHandStaff = "viola 2 staff"
                {
                    \context Voice = "viola 2 voice"
                    {
                        \times 2/3
                        {
                            \override Dots.staff-position = #2
                            \once \override Voice.Accidental.stencil = #ly:text-interface::print
                            \once \override Voice.Accidental.text = \markup
                                                    \fontsize #-3
                                                    \raise #0.4
                                                    {
                                                        \center-column {
                                                            \line {
                                                                III -
                                                            }
                                                            \line {
                                                                VII
                                                            }
                                                        }
                                                    }
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                            \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \string-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \revert NoteHead.X-extent
                            \revert NoteHead.transparent
                            \clef "treble"
                            g''!32
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
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            I
                                                        }
                                                        \line {
                                                            II
                                                        }
                                                    }
                                                }
                        \afterGrace
                        \tweak style #'harmonic
                        g''!32
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
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            I
                                                        }
                                                        \line {
                                                            II
                                                        }
                                                    }
                                                }
                        \tweak style #'harmonic
                        g''!16.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
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
                        \tweak style #'harmonic
                        e''!16
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.transparent = ##t
                        \revert Dots.staff-position
                        \revert NoteHead.X-extent
                        \revert NoteHead.transparent
                        \afterGrace
                        \tweak style #'harmonic
                        c''4
                        - \tweak arrow-length #2
                        - \tweak arrow-width #0.75
                        - \tweak bound-details.right.arrow ##t
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \big-half-harmonic
                            \revert Dots.staff-position
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
                        <<
                            \context Voice = "viola 2 voice temp"
                            {
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.5
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00C
                                                                    }
                                                                    \line {
                                                                        II
                                                                    }
                                                                }
                                                            }
                                \voiceOne
                                \tweak style #'harmonic
                                a''!4.
                                - \tweak arrow-length #2
                                - \tweak arrow-width #0.75
                                - \tweak bound-details.right.arrow ##t
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \revert Dots.staff-position
                                a''32
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                        \fontsize #-3
                                                        \raise #2.25
                                                        {
                                                            \center-column {
                                                                \line {
                                                                    \lower #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00C
                                                                }
                                                                \line {
                                                                    VI
                                                                }
                                                                \line {
                                                                    VII
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                f''!16.
                                - \abjad-zero-padding-glissando
                                \glissando
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                a''16.
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                e''32
                                \override Dots.staff-position = #2
                                \big-half-harmonic
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.5
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00C
                                                                    }
                                                                    \line {
                                                                        II
                                                                    }
                                                                }
                                                            }
                                g''!32
                                - \abjad-zero-padding-glissando
                                \glissando
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                        \fontsize #-3
                                                        \raise #2.25
                                                        {
                                                            \center-column {
                                                                \line {
                                                                    \lower #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00C
                                                                }
                                                                \line {
                                                                    VII
                                                                }
                                                                \line {
                                                                    VI
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                \revert Dots.staff-position
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                g''!16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                a''16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                e''32
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                                b'!8
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                ~
                                - \tweak bound-details.left.text \markup { \center-column { \fontsize #5 \override #'(font-name . "ekmelos") \line { \char ##xe0D9 | \char ##xe0A4 } } }
                                \startTrillSpan
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.transparent = ##t
                                  %! abjad.glissando(1)
                                \hide NoteHead
                                  %! abjad.glissando(1)
                                \override Accidental.stencil = ##f
                                  %! abjad.glissando(1)
                                \override NoteColumn.glissando-skip = ##t
                                  %! abjad.glissando(1)
                                \override NoteHead.no-ledgers = ##t
                                \afterGrace
                                b'32
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \once \override NoteHead.transparent = ##t
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b'16
                                }
                                \override Dots.staff-position = #2
                                \big-half-harmonic
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.5
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00C
                                                                    }
                                                                    \line {
                                                                        II
                                                                    }
                                                                }
                                                            }
                                \afterGrace
                                a''!32
                                \stopTrillSpan
                                - \tweak arrow-length #1
                                - \tweak arrow-width #0.7
                                - \tweak bound-details.right.arrow ##t
                                - \abjad-zero-padding-glissando
                                \glissando
                                {
                                    \revert Dots.staff-position
                                    \tweak style #'harmonic
                                    a''16
                                }
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VII }
                                d''!16.
                                - \tweak arrow-length #2
                                - \tweak arrow-width #0.75
                                - \tweak bound-details.right.arrow ##t
                                - \abjad-zero-padding-glissando
                                \glissando
                                \override Dots.staff-position = #2
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                 )
                                 #0.5
                                \revert Dots.staff-position
                                a''16.
                                - \abjad-zero-padding-glissando
                                \glissando
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.5
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00C
                                                                    }
                                                                    \line {
                                                                        II
                                                                    }
                                                                }
                                                            }
                                \revert Dots.staff-position
                                \tweak style #'harmonic
                                e''!32
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                        \fontsize #-3
                                                        \raise #0.4
                                                        {
                                                            \center-column {
                                                                \line {
                                                                    VI
                                                                }
                                                                \line {
                                                                    VII
                                                                }
                                                            }
                                                        }
                                e''!16.
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \revert Dots.staff-position
                                b''32
                                \override Dots.staff-position = #2
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                 )
                                 #0.5
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                                \tweak style #'harmonic
                                f''!32
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                        \fontsize #-3
                                                        \raise #0.4
                                                        {
                                                            \center-column {
                                                                \line {
                                                                    VI
                                                                }
                                                                \line {
                                                                    VII
                                                                }
                                                            }
                                                        }
                                b''!8
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                ~
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.transparent = ##t
                                  %! abjad.glissando(1)
                                \hide NoteHead
                                  %! abjad.glissando(1)
                                \override Accidental.stencil = ##f
                                  %! abjad.glissando(1)
                                \override NoteColumn.glissando-skip = ##t
                                  %! abjad.glissando(1)
                                \override NoteHead.no-ledgers = ##t
                                b''32
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                 )
                                 #0.5
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
                                \tweak style #'harmonic
                                f''!16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \override Dots.staff-position = #2
                                \revert Dots.staff-position
                                \tweak style #'harmonic
                                f''8
                                - \tweak arrow-length #2
                                - \tweak arrow-width #0.75
                                - \tweak bound-details.right.arrow ##t
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \revert Dots.staff-position
                                f''32
                                \override Dots.staff-position = #2
                                \big-half-harmonic
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                a''32
                                - \abjad-zero-padding-glissando
                                \glissando
                                - \tweak bound-details.left.text \markup { \center-column { \fontsize #-5 \line { VI | VII } } }
                                \startTrillSpan
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                b''32
                                - \abjad-zero-padding-glissando
                                \glissando
                                \override Dots.staff-position = #2
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                \revert Dots.staff-position
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                e''32
                                - \tweak arrow-length #0.75
                                - \tweak arrow-width #0.75
                                - \tweak bound-details.right.arrow ##t
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                f''32
                                r32
                                \override Dots.staff-position = #2
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                f''32
                                \stopTrillSpan
                                - \abjad-zero-padding-glissando
                                \glissando
                                - \tweak bound-details.left.text \markup { \center-column { \fontsize #-5 \line { VI | VII } } }
                                \startTrillSpan
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                a''32
                                - \abjad-zero-padding-glissando
                                \glissando
                                \override Dots.staff-position = #2
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                \revert Dots.staff-position
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                f''16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                b''32
                                r8
                                \stopTrillSpan
                                r32
                                \big-half-harmonic
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                                f''!16
                                \tweak style #'harmonic
                                f''32
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                        \fontsize #-3
                                                        \raise #0.4
                                                        {
                                                            \center-column {
                                                                \line {
                                                                    VI
                                                                }
                                                                \line {
                                                                    VII
                                                                }
                                                            }
                                                        }
                                \afterGrace
                                c''!8.
                                - \abjad-zero-padding-glissando
                                \glissando
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \once \override NoteHead.transparent = ##t
                                    b''16
                                }
                            }
                            \context Voice = "left hand lower voice"
                            {
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.1
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        I
                                                                    }
                                                                    \line {
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00B
                                                                    }
                                                                }
                                                            }
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                \voiceTwo
                                \tweak style #'harmonic
                                e''!8.
                                - \abjad-zero-padding-glissando
                                \glissando
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                g''8.
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                \tweak style #'harmonic
                                e''32
                                \override Dots.staff-position = #2
                                f''16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                c''16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                f''16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                e''32
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.1
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        I
                                                                    }
                                                                    \line {
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00B
                                                                    }
                                                                }
                                                            }
                                \afterGrace
                                \tweak style #'harmonic
                                d''!32
                                - \abjad-zero-padding-glissando
                                \glissando
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \once \override NoteHead.transparent = ##t
                                    d''16
                                }
                                \override Dots.staff-position = #2
                                \revert NoteHead.X-extent
                                \revert NoteHead.transparent
                                g''16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \once \override NoteHead.X-extent = #'(0 . 0)
                                \once \override NoteHead.transparent = ##t
                                d''16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                e''32
                                r8
                                r32
                                \override Dots.staff-position = #2
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.1
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        I
                                                                    }
                                                                    \line {
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00B
                                                                    }
                                                                }
                                                            }
                                \afterGrace
                                \tweak style #'harmonic
                                d''!32
                                - \abjad-zero-padding-glissando
                                \glissando
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \once \override NoteHead.transparent = ##t
                                    d''16
                                }
                                r16.
                                \footnote #'(0 . -4) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " finger percussion with third or 4th finger " } } }
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.1
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        III
                                                                    }
                                                                    \line {
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00B
                                                                    }
                                                                }
                                                            }
                                \tweak style #'cross
                                d''!32
                                - \tweak Y-offset -0.5
                                - \accent
                                \tweak style #'cross
                                e''32
                                - \tweak Y-offset -0.5
                                - \accent
                                \tweak style #'cross
                                f''32
                                - \tweak Y-offset -0.5
                                - \accent
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup
                                                            \fontsize #-3
                                                            \raise #1.1
                                                            {
                                                                \center-column {
                                                                    \line {
                                                                        \lower #1.75
                                                                        I
                                                                    }
                                                                    \line {
                                                                        \override #'(font-name . "ekmelos")
                                                                        \char ##xe00B
                                                                    }
                                                                }
                                                            }
                                \tweak style #'harmonic
                                b'!32
                                r8
                                \override Dots.staff-position = #2
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                 )
                                 #0.5
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                                \afterGrace
                                b'!32
                                - \abjad-zero-padding-glissando
                                \glissando
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    b'16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                }
                                r8
                                r32
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                 )
                                 #0.5
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                                b'!16
                                - \abjad-zero-padding-glissando
                                \glissando
                                \override Dots.staff-position = #2
                                \big-half-harmonic
                                \revert Dots.staff-position
                                c''8
                                - \tweak arrow-length #2
                                - \tweak arrow-width #0.75
                                - \tweak bound-details.right.arrow ##t
                                - \abjad-zero-padding-glissando
                                \glissando
                                \revert Dots.staff-position
                                \tweak style #'harmonic
                                c''32
                                r8
                                \big-half-harmonic
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                                a'!32
                                r8
                                r32
                                \big-half-harmonic
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                                e''!32
                                r8
                                \big-half-harmonic
                                \once \override Voice.Accidental.stencil = #ly:text-interface::print
                                \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                                b'!16
                                \tweak style #'harmonic
                                b'32
                                r8.
                            }
                        >>
                        \oneVoice
                        r4
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-3 \box \line { ( remove slide ) }
                        \big-half-harmonic
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup
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
                        b'!8
                        r4
                        \big-half-harmonic
                        b'8
                        r4
                        \big-half-harmonic
                        b'8
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
