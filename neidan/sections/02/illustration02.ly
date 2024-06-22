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
            \time 5/8
            s1 * 5/8
            - \tweak padding #21.5
            ^ \markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { II. 地氣 }
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #"80" 
              }
            }
            \tweak text \short-fermata \startMeasureSpanner
            \time 2/4
            s1 * 1/2
            - \tweak X-extent ##f
            - \tweak Y-extent ##f
            - \tweak Y-offset 11
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "( Senza misura )" }
            \stopMeasureSpanner
            \tweak text \very-short-fermata \startMeasureSpanner
            \time 3/16
            s1 * 3/16
            \stopMeasureSpanner
            \tweak text \long-fermata \startMeasureSpanner
            \time 4/4
            s1 * 1
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
            - \tweak padding #14
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
            \stopMeasureSpanner
            \tweak text \long-fermata \startMeasureSpanner
            \time 6/4
            s1 * 3/2
            - \tweak padding #14
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
            \stopMeasureSpanner
            \time 7/8
            s1 * 7/8
            ^ \markup {
              \raise #14 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #"80" 
              }
            }
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
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 3
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 1/2
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 1
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 3/2
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 2
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 7/8
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
                    }
                }
                \context leftHandStaff = "viola 2 staff"
                {
                    \context Voice = "viola 2 voice"
                    {
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
                        R1 * 5/8
                          %! +SCORE
                        \stopStaff \startStaff
                        \override Dots.staff-position = #2
                        \big-half-harmonic
                        \once \override Staff.Accidental.stencil = #ly:text-interface::print
                        \once \override Staff.Accidental.text = \markup \fontsize #-3 \lower #0.6 { II }
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
                        R1 * 3
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
                        R1 * 1/2
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
                        R1 * 1
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
                        R1 * 3/2
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
                        R1 * 2
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
                        R1 * 7/8
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
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
