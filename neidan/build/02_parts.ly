    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/8
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #"80" 
              }
            }
            s1 * 5/8
            - \tweak padding #21.5
            ^ \markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { II. 地氣 }
            \noBreak
            \tweak text \short-fermata \startMeasureSpanner
            \time 2/4
            s1 * 1/2
            - \tweak X-extent ##f
            - \tweak Y-extent ##f
            - \tweak Y-offset 11
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "( Senza misura )" }
            \noBreak
            \stopMeasureSpanner
            \tweak text \very-short-fermata \startMeasureSpanner
            \time 3/16
            s1 * 3/16
            \noBreak
            \stopMeasureSpanner
            \tweak text \long-fermata \startMeasureSpanner
            \time 4/4
            s1 * 1
            \noBreak
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \long-fermata
            \once \override Score.BarLine.transparent = ##f
            \tweak text \extremely-long-fermata \startMeasureSpanner
            \time 12/4
            s1 * 3
            \stopMeasureSpanner
            \tweak text \short-fermata \startMeasureSpanner
            \time 2/4
            s1 * 1/2
            - \tweak padding #13
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { {
                        \fontsize #3
                        \override #'(font-name . "Bodoni72 Book Italic")
                        {
                            "Same periodic pulse from previous measure"
                        }
                    } \hspace #0.5 }
            - \tweak bound-details.right.padding -50
            \startTextSpanOne
            \noBreak
            \stopMeasureSpanner
            \tweak text \markup {
                        \raise #2.5
                        \center-column {
                            \line {
                                \override #'(font-name . "ekmelos")
                                \char ##xe4C0
                            }
                            \line {
                                \override #'(font-name . "Bodoni72 Book")
                                \override #'(font-size . 4)
                                ×9
                            }
                        }
                    } \startMeasureSpanner
            \bar ".|:"
            \time 4/4
            s1 * 1
            \stopTextSpanOne
            \bar ":|."
            \noBreak
            \stopMeasureSpanner
            \tweak text \long-fermata \startMeasureSpanner
            \time 6/4
            s1 * 3/2
            - \tweak padding #13
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { {
                        \fontsize #3
                        \override #'(font-name . "Bodoni72 Book Italic")
                        {
                            "Rall. moltiss."
                        }
                    } \hspace #0.5 }
            \startTextSpanOne
            \stopMeasureSpanner
            \tweak text \very-long-fermata \startMeasureSpanner
            \time 8/4
            s1 * 2
            - \tweak X-extent ##f
            - \tweak Y-extent ##f
            - \tweak Y-offset 11
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "Same pulse from mm. 25" }
            \stopTextSpanOne
            \noBreak
            \stopMeasureSpanner
            \time 7/8
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #"80" 
              }
            }
            s1 * 7/8
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \bar "|."
            \once \override Score.BarLine.transparent = ##f
            \pageBreak
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
                        a,2
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "pp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #12
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "tasto poss." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpanTwo
                        - \tweak padding #15
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "extremely fast bow" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpanOne
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "V" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 legno trat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpanThree
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        a8
                        \!
                        \stopTextSpan
                        \stopTextSpanOne
                        \stopTextSpanThree
                        \stopTextSpanTwo
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \tweak style #'cross
                        c'!8.
                        \p
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        \<
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'16
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        d'8
                        - \accent
                        \mp
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'8
                        \pp
                        \stopTextSpan
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup
                                            \fontsize #-3
                                            \raise #0.4
                                            {
                                                \center-column {
                                                    \line {
                                                        V
                                                    }
                                                    \line {
                                                        VI
                                                    }
                                                }
                                            }
                        e'!64
                        - \tweak Y-offset -1
                        ^ \downbow
                        \ff
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "fast bow" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        e'64
                        - \tweak Y-offset -1
                        ^ \upbow
                        \once \revert Staff.Stem.stencil
                        \once \override Staff.Stem.details.lengths = #'(13.75)
                        \once \override Staff.Stem.Y-extent = ##f
                        \once \override Staff.Stem.Y-offset = 0
                        \once \override Staff.Stem.layer = 0
                        \once \override Staff.Stem.direction = #DOWN
                        \once \override Staff.Stem.thickness = #2
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        e'16
                        - \tweak Y-offset -1
                        ^ \downbow
                        _ \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \revert Staff.Stem.stencil
                        \once \override Staff.Stem.details.lengths = #'(13.25)
                        \once \override Staff.Stem.Y-extent = ##f
                        \once \override Staff.Stem.Y-offset = 0
                        \once \override Staff.Stem.layer = 0
                        \once \override Staff.Stem.direction = #DOWN
                        \once \override Staff.Stem.thickness = #2
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        e'16
                        - \tweak Y-offset -1
                        ^ \downbow
                        _ \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        e'64
                        - \tweak Y-offset -1
                        ^ \upbow
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        e'64
                        - \tweak Y-offset -1
                        ^ \downbow
                        \!
                        _ \accent
                        \stopTextSpan
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        b1
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
                            b16
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
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 24/47
                        {
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            II -
                                                        }
                                                        \line {
                                                            V
                                                        }
                                                    }
                                                }
                            \tweak style #'cross
                            c'!2
                            \pp
                            - \tweak padding #4.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "battuto ( no horizontal motion )" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "tratto ( full bows poss. )" }
                            \startTextSpanTwo
                            - \tweak padding #6.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "legno" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanOne
                            ~
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                            c'8
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            d'1
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            e''8
                            \ff
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            d''8
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            d'4
                            - \accent
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            c'8
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            e'4
                            - \accent
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            d'2
                            - \accent
                            \pp
                            ~
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                            d'8
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            b'8
                            \stopTextSpanOne
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            d''8
                            \ff
                            - \tweak padding #6.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 legno" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -5
                            \startTextSpanOne
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            a''8
                            - \accent
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b'8
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'2
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            d'4
                            - \accent
                            - \tweak Y-offset -1.5
                            - \downbow
                            \stopTextSpanOne
                            - \tweak Y-offset 1.5
                            - \tweak padding #0
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "aperiodic" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "periodic" }
                            \startTextSpanThree
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            V
                                                        }
                                                        \line {
                                                            VI
                                                        }
                                                    }
                                                }
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(11.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            d'!4.
                            - \tweak Y-offset -1.5
                            - \upbow
                            \fp
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(9.75)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            d'8
                            - \tweak Y-offset -1.5
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(11)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            d'4.
                            - \tweak Y-offset -1.5
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(7.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            d'8
                            - \tweak Y-offset -1.5
                            - \downbow
                            \stopTextSpanTwo
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(14)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            d'8
                            - \tweak Y-offset -1.5
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            d'8
                            - \tweak Y-offset -1.5
                            - \downbow
                            \stopTextSpanThree
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            d'8
                            - \tweak Y-offset -1.5
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            d'8
                            - \tweak Y-offset -1.5
                            - \downbow
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
                                d'16
                            }
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \times 4/5
                        {
                            \override Dots.staff-position = #2
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
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(14)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            d'!8
                            - \tweak Y-offset -1.5
                            - \upbow
                            \fp
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "full bows poss." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -6.5
                            \startTextSpanOne
                            \>
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8
                            - \tweak Y-offset -1
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(11.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            f'8
                            - \tweak Y-offset -0.5
                            - \upbow
                            \pp
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(10)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            g'8
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            a'8
                            - \tweak Y-offset 0.5
                            - \upbow
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
                                e'16
                            }
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \times 8/9
                        {
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            V
                                                        }
                                                        \line {
                                                            VI
                                                        }
                                                    }
                                                }
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(14.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            e'!8
                            - \tweak Y-offset 0
                            - \downbow
                            \ff
                            ^ \tenuto
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8
                            - \tweak Y-offset 0
                            - \upbow
                            \mf
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(14.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            e'8
                            - \tweak Y-offset 0
                            - \upbow
                            \ff
                            ^ \tenuto
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8
                            - \tweak Y-offset 0
                            - \downbow
                            \mf
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(14.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            e'8
                            - \tweak Y-offset 0
                            - \downbow
                            \ff
                            ^ \tenuto
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8
                            - \tweak Y-offset 0
                            - \upbow
                            \mf
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            e'8
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                e'16
                                \stopTextSpanOne
                            }
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \times 16/19
                        {
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            V
                                                        }
                                                        \line {
                                                            VI
                                                        }
                                                    }
                                                }
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(14.25)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            e'!16.
                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                            - \tweak Y-offset 0
                            - \downbow
                            ^ \tenuto
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #5.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                            \startTextSpanOne
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(14.25)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            e'16.
                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf pp"))
                            - \tweak Y-offset 0
                            - \downbow
                            ^ \tenuto
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            \stopTextSpanOne
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "extremely slow bow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpanOne
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'16.
                            - \tweak Y-offset 0
                            - \upbow
                            \fff
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            e'16.
                            - \tweak Y-offset 0
                            - \downbow
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                e'16
                                \stopTextSpanOne
                            }
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \times 4/5
                        {
                            \override Dots.staff-position = #2
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            V
                                                        }
                                                        \line {
                                                            VI
                                                        }
                                                    }
                                                }
                            e'!8
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #5.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                            \startTextSpanOne
                            \>
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            f'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            f'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
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
                                                            VI
                                                        }
                                                    }
                                                }
                            g'!8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            g'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            a'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            a'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
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
                            b'!8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            c''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            d''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            II -
                                                        }
                                                        \line {
                                                            V
                                                        }
                                                    }
                                                }
                            e''!8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            f''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            g''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            a''8
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
                            \stopTextSpanOne
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "fast bow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpanOne
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            b''8
                            \stopTextSpanOne
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
                        \override Dots.staff-position = #2
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \override Staff.BarLine.bar-extent = #'(-2 . 2)
                        \set Staff.forceClef = ##t
                        \clef "alto"
                        \afterGrace
                        a,2.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "pp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #12
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "tasto poss." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpanTwo
                        - \tweak padding #15
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "extremely fast bow" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpanOne
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "V" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpan
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 legno trat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpanThree
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Flag.stroke-style = #"grace"
                            a,16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \revert Dots.staff-position
                        aqf8
                        \!
                        \stopTextSpan
                        \stopTextSpanOne
                        \stopTextSpanThree
                        \stopTextSpanTwo
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
                        R1 * 5/8
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \override Dots.staff-position = #2
                        \big-half-harmonic
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VI }
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        f''!4..
                        - \abjad-zero-padding-glissando
                        \glissando
                        \big-half-harmonic
                        \revert Dots.staff-position
                        b'16
                        r32
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VI }
                        \tweak style #'harmonic
                        d'!32.
                        - \abjad-zero-padding-glissando
                        \glissando
                        _ (
                        \tweak style #'harmonic
                        c'64
                        )
                        \tweak style #'harmonic
                        e'32.
                        - \abjad-zero-padding-glissando
                        \glissando
                        _ (
                        \tweak style #'harmonic
                        c'64
                        )
                        r32
                        r4
                        \times 4/7
                        {
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            I -
                                                        }
                                                        \line {
                                                            VII
                                                        }
                                                    }
                                                }
                            g''!8.
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #6.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "finger percussion" } \hspace #0.5 }
                            \startTextSpanOne
                            ~
                            - \tweak details.squiggle-Y-scale 0.9
                            - \tweak details.squiggle-initial-width 5
                            - \tweak details.squiggle-speed-factor 0.7
                            - \tweak thickness 3
                            \slow-fast-trill
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            g''8.
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            ~
                            g''8.
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            ~
                            g''8.
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            ~
                            g''8.
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            ~
                            g''8.
                            \<
                            ~
                            \afterGrace
                            g''8.
                            - \tweak circled-tip ##t
                            \>
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
                                g''16
                                \!
                                \stopTextSpanOne
                                \stopTrillSpan
                            }
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
                        \stopStaff \startStaff
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 24/47
                        {
                            \override Dots.staff-position = #2
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            II -
                                                        }
                                                        \line {
                                                            V
                                                        }
                                                    }
                                                }
                            a''!4.
                            (
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            b'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            g''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            e''4.
                            )
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            a''8
                            (
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            g'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            a''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            b'4
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            \afterGrace
                            b''2
                            )
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \big-half-harmonic
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                b''16
                                - \abjad-zero-padding-glissando
                                \glissando
                            }
                            \big-half-harmonic
                            g'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            b''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            \revert Dots.staff-position
                            f'8
                            \override Dots.staff-position = #2
                            \afterGrace
                            \tweak style #'harmonic
                            b'2
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                \tweak style #'harmonic
                                f''16
                            }
                            \override Dots.staff-position = #2
                            \afterGrace
                            \tweak style #'harmonic
                            c''2.
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                \tweak style #'harmonic
                                b''16
                            }
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
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
                            b''!2
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
                            b''8
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b'4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            e''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            c''4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            b''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 0.5 1 0)
                                  (1 0 1.5 -0.5 2 0)
                                  (2 0 2.5 0.6 3 0)
                                  (3 0 3.5 -0.6 4 0)
                                  (4 0 4.5 0.7 5 0)
                                  (5 0 5.5 -0.7 6 0)
                                  (6 0 6.5 1.5 7 0)
                                  (7 0 7.5 -1.5 8 0)
                                  (8 0 8.5 1 9 0)
                                  (9 0 9.5 -1 10 0)
                                  (10 0 10.5 0.5 11 0)
                                  (11 0 11.5 -0.5 12 0)
                                  (12 0 12.5 0.5 13 0)
                                  (13 0 13.5 -0.5 14 0)
                                  (14 0 14.5 0.5 15 0)
                                  (15 0 15.5 -0.5 16 0)
                                  (16 0 16.5 0.5 17 0)
                                  (17 0 17.5 -0.5 18 0)
                             )
                             #0.5
                            \afterGrace
                            c'2
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                c'16
                            }
                        }
                        \times 4/5
                        {
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VI }
                            \tweak style #'harmonic
                            c'!4
                            - \abjad-zero-padding-glissando
                            \glissando
                            \big-half-harmonic
                            c''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \afterGrace
                            g''4
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
                        \times 8/9
                        {
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VI }
                            \afterGrace
                            \tweak style #'harmonic
                            c'!8
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                e'16
                                - \abjad-zero-padding-glissando
                                \glissando
                            }
                            r4
                            \afterGrace
                            \tweak style #'harmonic
                            c'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                e'16
                                - \abjad-zero-padding-glissando
                                \glissando
                            }
                            r4
                            \afterGrace
                            \tweak style #'harmonic
                            c'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                e'16
                            }
                            r4
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/19
                        {
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { VI }
                            \afterGrace
                            \tweak style #'harmonic
                            c'!8
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                e'16
                                - \abjad-zero-padding-glissando
                                \glissando
                            }
                            r4.
                            \afterGrace
                            \tweak style #'harmonic
                            c'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                e'16
                                - \abjad-zero-padding-glissando
                                \glissando
                            }
                            r2..
                            \big-half-harmonic
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 0.1 1 0)
                                  (1 0 1.5 -0.1 2 0)
                                  (2 0 2.5 0.2 3 0)
                                  (3 0 3.5 -0.2 4 0)
                                  (4 0 4.5 0.5 5 0)
                                  (5 0 5.5 -0.5 6 0)
                                  (6 0 6.5 0.5 7 0)
                                  (7 0 7.5 -0.5 8 0)
                                  (8 0 8.5 0.4 9 0)
                                  (9 0 9.5 -0.4 10 0)
                                  (10 0 10.5 0.4 11 0)
                                  (11 0 11.5 -0.4 12 0)
                                  (12 0 12.5 1 13 0)
                                  (13 0 13.5 -1 14 0)
                                  (14 0 14.5 0.2 15 0)
                                  (15 0 15.5 -0.2 16 0)
                                  (16 0 16.5 0.2 17 0)
                                  (17 0 17.5 -0.2 18 0)
                                  (18 0 18.5 0.2 19 0)
                                  (19 0 19.5 -0.2 20 0)
                                  (20 0 20.5 1 21 0)
                                  (21 0 21.5 -1 22 0)
                                  (22 0 22.5 0.5 23 0)
                                  (23 0 23.5 -0.5 24 0)
                                  (24 0 24.5 0.5 25 0)
                                  (25 0 25.5 -0.5 26 0)
                             )
                             #0.5
                            \footnote #'(-2 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " fingers above bow, close to bow as possible " } } }
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup
                                                \fontsize #-3
                                                \raise #0.4
                                                {
                                                    \center-column {
                                                        \line {
                                                            V
                                                        }
                                                        \line {
                                                            VI
                                                        }
                                                    }
                                                }
                            \afterGrace
                            f'!2..
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                f'16
                            }
                        }
                        \times 16/19
                        {
                            \override Dots.staff-position = #2
                            \afterGrace
                            d'\breve
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak bound-details.left.text \markup { \center-column { \fontsize #5 \override #'(font-name . "ekmelos") \line { \char ##xe0D9 | \char ##xe0A4 } } }
                            \startTrillSpan
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                d'16
                                \stopTrillSpan
                            }
                            r4.
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
                        R1 * 7/8
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
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-2 \box \line { ( Slide in left hand ) }
                        \stopStaff \startStaff
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
