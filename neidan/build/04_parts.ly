    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            ^ \markup {
              \raise #19.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #"80" 
              }
            }
            s1 * 1
            - \tweak padding 24
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #3 { \column { \line { \override #'(font-name . "Bodoni72 Book Italic") Epilogue: } \line { You Got to Go to that Lonesome Valley } \line { ( nobody else can go for you ) }  } }
            - \tweak padding 7.5
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") {
                                    \column {
                                        "Rubato"
                                        "poco pont. sempre"
                                        "vib. moltiss. sempre"
                                    }
                                }
            \noBreak
            \time 4/4
            s1 * 1
            \noBreak
            \time 4/4
            s1 * 1
            \time 6/4
            s1 * 3/2
            \noBreak
            \time 2/4
            s1 * 1/2
            \noBreak
            \time 4/4
            s1 * 1
            \time 10/4
            s1 * 5/2
            \noBreak
            \time 2/4
            s1 * 1/2
            \tweak text \middle-fermata \startMeasureSpanner
            \time 4/4
            s1 * 1
            - \tweak X-extent ##f
            - \tweak Y-extent ##f
            - \tweak Y-offset 11
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "( Senza misura )" }
            \noBreak
            \stopMeasureSpanner
            \time 3/4
            ^ \markup {
              \raise #7 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"72" 
              }
            }
            s1 * 3/4
            \noBreak
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \noBreak
            \time 2/4
            s1 * 1/2
            \noBreak
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \long-fermata
            \bar "|."
            \once \override Score.BarLine.transparent = ##f
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
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \override Staff.BarLine.bar-extent = #'(-2 . 2)
                        \set Staff.forceClef = ##t
                        \clef "alto"
                        \afterGrace
                        d4
                        \f
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        d'4
                        )
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \afterGrace
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "V" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        a4
                        )
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        d'4
                        )
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \afterGrace
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "V" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        a4
                        )
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        d'4
                        )
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \afterGrace
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "V" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        a4
                        )
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d4
                        )
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        _ (
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        d'4
                        )
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \afterGrace
                        a,4
                        ^ \markup { V }
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        a4
                        ^ \markup { II }
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \once \override Staff.DynamicLineSpanner.padding = 5
                        e'!4
                        \fp
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "extremely fast bow" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \<
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        c'2.
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            f'16
                            \!
                            \stopTextSpan
                        }
                        <<
                            \context Voice = "viola 1 voice temp"
                            {
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
                                                                    I
                                                                }
                                                                \line {
                                                                    II
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                \voiceTwo
                                f'!8.
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                                [
                                f'16
                                ~
                                f'8
                                f'8
                                ~
                                f'16
                                f'8.
                                ]
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
                                                                    I
                                                                }
                                                                \line {
                                                                    II
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                f'!8.
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                                [
                                f'16
                                ~
                                f'8
                                f'8
                                ~
                                f'16
                                f'8.
                                ]
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
                                                                    I
                                                                }
                                                                \line {
                                                                    II
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                f'!8
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                                [
                                f'8
                                f'8
                                f'8
                                ]
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
                                                                    I
                                                                }
                                                                \line {
                                                                    II
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                f'!8
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                                [
                                f'8
                                f'8
                                f'8
                                ]
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
                                                                    I
                                                                }
                                                                \line {
                                                                    II
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                f'!8.
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                                [
                                f'16
                                ~
                                f'8
                                f'8
                                ~
                                f'16
                                f'8.
                                ]
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
                                                                    I
                                                                }
                                                                \line {
                                                                    II
                                                                }
                                                                \line {
                                                                    \raise #1.75
                                                                    \override #'(font-name . "ekmelos")
                                                                    \char ##xe00B
                                                                }
                                                            }
                                                        }
                                f'!4
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                                f'4
                                f'4
                                f'4
                            }
                            \context Voice = "right hand upper voice"
                            {
                                \voiceOne
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                                f'4
                            }
                        >>
                        \oneVoice
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
                \context leftHandStaff = "viola 2 staff"
                {
                    \context Voice = "viola 2 voice"
                    {
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
                        R1 * 1
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
                        R1 * 1
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
                        R1 * 1
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
                        R1 * 3/2
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
                        R1 * 1/2
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
                        R1 * 1
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
                        R1 * 5/2
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
                        R1 * 1/2
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
                        R1 * 1
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \override Dots.staff-position = #2
                        \footnote #'(0 . -4) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " finger underneath the bow, as close to bow as possible " } } }
                        \once \override Voice.Accidental.stencil = #ly:text-interface::print
                        \once \override Voice.Accidental.text = \markup \fontsize #-3 \lower #0.6 { I }
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \tweak style #'harmonic
                        e'!2.
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        e'2.
                        ~
                        e'2
                        ~
                        e'2
                        ~
                        e'2.
                        ~
                        \afterGrace
                        e'1
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
                            e'16
                        }
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
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
