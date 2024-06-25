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
            \time 89/32
            s1 * 89/32
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
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 1/4
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 13/32
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 89/32
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
                    %%% \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                        R1 * 13/32
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                        R1 * 89/32
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                    %%% \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                        R1 * 9/8
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
