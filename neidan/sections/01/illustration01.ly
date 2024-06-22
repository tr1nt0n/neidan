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
            \time 7/8
            s1 * 7/8
            ^ \markup {
              \raise #14 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #"80" 
              }
            }
            \tweak text \long-fermata \startMeasureSpanner
            \time 6/4
            s1 * 3/2
            - \tweak Y-extent ##f
            - \tweak Y-offset 10
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "( senza misura )" }
            \stopMeasureSpanner
            \tweak text \very-short-fermata \startMeasureSpanner
            \time 1/4
            s1 * 1/4
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            R1 * 3/16
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \tweak text \middle-fermata \startMeasureSpanner
            \time 4/4
            s1 * 1
            \stopMeasureSpanner
            \tweak text \very-short-fermata \startMeasureSpanner
            \time 1/4
            s1 * 1/4
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            R1 * 3/16
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \tweak text \middle-fermata \startMeasureSpanner
            \time 4/4
            s1 * 1
            \stopMeasureSpanner
            \tweak text \short-fermata \startMeasureSpanner
            \time 2/4
            s1 * 1/2
            \stopMeasureSpanner
            \tweak text \long-fermata \startMeasureSpanner
            \time 6/4
            s1 * 3/2
            - \tweak X-extent ##f
            - \tweak Y-extent ##f
            - \tweak Y-offset 10.5
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "Completely periodic pulse" }
            \stopMeasureSpanner
            \tweak text \long-fermata \startMeasureSpanner
            \time 6/4
            s1 * 3/2
            \stopMeasureSpanner
            \tweak text \short-fermata \startMeasureSpanner
            \time 2/4
            s1 * 1/2
            - \tweak X-extent ##f
            - \tweak Y-extent ##f
            - \tweak Y-offset 11
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "Same pulse from mm. 10" }
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'12
            - \tweak padding -7
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \tweak text \short-fermata \startMeasureSpanner
            \time 2/4
            s1 * 1/2
            - \tweak X-extent ##f
            - \tweak Y-extent ##f
            - \tweak Y-offset 11
            ^ \markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { "( No more pulse )" }
            \stopMeasureSpanner
            \tweak text \very-short-fermata \startMeasureSpanner
            \time 1/4
            s1 * 1/4
            \stopMeasureSpanner
            \tweak text \extremely-long-fermata \startMeasureSpanner
            \time 12/4
            s1 * 3
            \stopMeasureSpanner
            \tweak text \middle-fermata \startMeasureSpanner
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
            _ \short-fermata
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
                        \clef "alto"
                        \afterGrace
                        d4
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
                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
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
                        d'8
                        \!
                        \stopTextSpan
                        \stopTextSpanOne
                        \stopTextSpanThree
                        \stopTextSpanTwo
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 3
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        r1
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        b''8.
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
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
                        d''16
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        f''16
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
                        \revert Dots.staff-position
                        b''16
                        \!
                        \stopTextSpan
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \back-of-body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        b'4
                        ^ \markup { \hspace #-1 "( back of body )" }
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 0
                        - \tweak padding -4
                        \startBowSpan #'((0 . 0) (0.3125 . -1.7) (0.46875 . -0.3) (0.625 . -2) (0.78125 . -0.6) (0.90625 . -2.5) (1.0 . 0))
                        - \tweak font-size -4- \tweak Y-offset -1
                        - \tweak padding #0
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanOne
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
                            \once \override NoteHead.transparent = ##t
                            b'16
                            \stopTextSpanOne
                        }
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 3/16
                        \stopBowSpan
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
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 3
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        b''4
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
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        b''16
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        a'8.
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
                        a''16
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        c'16
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        g'16
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
                        e'16
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        c'4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mf"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
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
                            c'16
                            \!
                            \stopTextSpan
                        }
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \back-of-body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        b'4
                        ^ \markup { \hspace #-1 "( back of body )" }
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 0
                        - \tweak padding -4
                        \startBowSpan #'((0 . 0) (0.65 . -3) (1.0 . 0))
                        - \tweak font-size -4- \tweak Y-offset -1
                        - \tweak padding #0
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanOne
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
                            \once \override NoteHead.transparent = ##t
                            b'16
                            \stopTextSpanOne
                        }
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 3/16
                        \stopBowSpan
                          %! +SCORE
                        \stopStaff \startStaff
                          %! +SCORE
                        \once \override Staff.Clef.X-extent = ##f
                          %! +SCORE
                        \once \override Staff.Clef.extra-offset = #'(-1 . 0)
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 3
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        d'8.
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpan
                        \<
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        a'32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        f'32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        a'32
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
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        g'32
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        d''16
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        g'16
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        d''16
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
                        g'32
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
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        c'4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mf"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
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
                        c'32
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
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c'16
                            \stopTextSpan
                        }
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'32
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \hspace #-1.5 { "l. bat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'32
                        - \accent
                        \stopTextSpan
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \back-of-body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        b'2
                        ^ \markup { \hspace #-1 "( back of body )" }
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 0
                        - \tweak padding -4
                        \startBowSpan #'((0 . 0) (0.1149425287356322 . -1.5) (0.13793103448275865 . -0.5) (0.14942528735632188 . -1.5) (0.17241379310344832 . -0.5) (0.18390804597701155 . -1.5) (0.20689655172413798 . -0.7) (0.3793103448275863 . -4) (0.40229885057471276 . -1) (0.41379310344827597 . -2) (0.43678160919540243 . -0.5) (0.44827586206896564 . -2) (0.4712643678160921 . -1) (0.4827586206896553 . -1.5) (0.5057471264367818 . -0.5) (0.6206896551724139 . -3) (0.6436781609195403 . -1) (0.6551724137931035 . -2) (0.67816091954023 . -1) (0.6896551724137931 . -2) (0.7126436781609196 . -0.2) (0.8850574712643678 . -5) (1.0 . 0))
                        - \tweak font-size -4- \tweak Y-offset -1
                        - \tweak padding #0
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanOne
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
                            \once \override NoteHead.transparent = ##t
                            b'16
                            \stopBowSpan
                            \stopTextSpanOne
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \times 8/13
                        {
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                            \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \string-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \clef "treble"
                            \tweak style #'cross
                            c'8.
                            \pp
                            - \tweak padding #6
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -4
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
                            \tweak style #'cross
                            c'8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            c'8.
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
                            e'!8.
                            \<
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            g'8.
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(13.2)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            b'8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            d''8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            g''8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            a''8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b''8.
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(19)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            b''8.
                            \fff
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b''8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b''8.
                            \stopTextSpan
                        }
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \back-of-body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        b'1.
                        ^ \markup { \hspace #-1 "( back of body )" }
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 0
                        - \tweak padding -4
                        \startBowSpan #'((0 . 0) (0.07552870090634443 . -5) (0.08308157099697888 . -1) (0.09063444108761333 . -0.1) (0.09818731117824778 . -1) (0.10574018126888222 . -0.1) (0.11329305135951667 . -1) (0.12084592145015112 . -0.1) (0.19637462235649555 . -1) (0.27190332326284 . -0.1) (0.27945619335347444 . -1) (0.28700906344410887 . -0.1) (0.2945619335347433 . -1) (0.30211480362537774 . -0.1) (0.33987915407854996 . -1) (0.4154078549848944 . -0.1) (0.42296072507552884 . -1) (0.4380664652567977 . -0.1) (0.44561933534743214 . -4) (0.44939577039274936 . -0.1) (0.4569486404833838 . -1) (0.46450151057401823 . -0.1) (0.48716012084592153 . -4) (0.49093655589123875 . -0.1) (0.513595166163142 . -4) (0.5173716012084593 . -0.1) (0.5400302114803626 . -4.5) (0.5438066465256798 . -1) (0.5891238670694865 . -3) (0.5936555891238672 . -2) (0.6540785498489428 . -4) (0.6601208459214503 . -3) (0.7356495468277947 . -5) (0.7432024169184291 . -1) (0.7507552870090636 . -1.5) (0.758308157099698 . -0.5) (0.7658610271903324 . -1) (0.7734138972809669 . -0.1) (1.0000000000000002 . -5))
                        - \tweak font-size -4- \tweak Y-offset -1
                        - \tweak padding #0
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanOne
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
                            \once \override NoteHead.transparent = ##t
                            b'16
                            \stopBowSpan
                            \stopTextSpanOne
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \times 2/3
                        {
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
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(19)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                            \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \string-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \clef "treble"
                            b''!8
                            \pp
                            - \tweak padding #6
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            g''8
                            - \accent
                            \ff
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(19.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            b''8
                            \mp
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            f''8
                            - \accent
                            \mf
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(16.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            b''8
                            \pp
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e''8
                            - \accent
                            \ff
                            \laissezVibrer
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
                          %! +SCORE
                        \once \override Staff.Clef.X-extent = ##f
                          %! +SCORE
                        \once \override Staff.Clef.extra-offset = #'(-1 . 0)
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \back-of-body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        b'2
                        ^ \markup { \hspace #-1 "( back of body )" }
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 0
                        - \tweak padding -4
                        \startBowSpan #'((0 . 0) (0.055555555555555566 . -0.1) (0.0888888888888889 . -1) (0.12222222222222225 . -0.1) (0.1444444444444445 . -1) (0.1777777777777778 . -0.5) (0.21111111111111114 . -2) (0.24444444444444446 . -0.5) (0.3555555555555556 . -1) (0.3555555555555556 . -0.1) (0.36666666666666675 . -0.5) (0.3777777777777779 . -0.1) (0.4111111111111112 . -0.5) (0.4111111111111112 . -0.1) (0.42222222222222233 . -0.5) (0.43333333333333346 . -0.1) (0.4444444444444446 . -0.1) (0.6666666666666669 . -4) (0.6666666666666669 . -0.1) (0.6777777777777779 . -1) (0.688888888888889 . -0.5) (0.7000000000000001 . -1) (0.7111111111111111 . -0.1) (0.7666666666666667 . -4.3) (0.8222222222222223 . -1) (0.8333333333333334 . -2) (1.0 . 0))
                        - \tweak font-size -4- \tweak Y-offset -1
                        - \tweak padding #0
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanOne
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
                            \once \override NoteHead.transparent = ##t
                            b'16
                            \stopBowSpan
                            \stopTextSpanOne
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \times 4/5
                        {
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
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(15.65)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #DOWN
                            \once \override Staff.Stem.thickness = #2
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                            \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \string-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \clef "treble"
                            b'!8.
                            _ \accent
                            _ \fff
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \hspace #-7 { "legno bat." } \hspace #0.5 }
                            - \tweak bound-details.right.padding 2.5
                            \startTextSpan
                            \override Dots.staff-position = #2
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 3
                            \override Staff.StaffSymbol.line-positions = #'(7 0 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \body-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \clef "treble"
                            \afterGrace
                            b''8
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
                            \stopTextSpan
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \hspace #-2 { "l. trat." } \hspace #0.5 }
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
                                d''16
                                \stopTextSpan
                            }
                        }
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \back-of-body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        b'\breve.
                        ^ \markup { \hspace #-1 "( back of body )" }
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 0
                        - \tweak padding -4
                        \startBowSpan #'((0 . 0) (0.24 . -3) (0.27999999999999997 . -1) (0.6 . -4) (0.6 . -1) (1.0 . -5))
                        - \tweak font-size -4- \tweak Y-offset -1
                        - \tweak padding #0
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanOne
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
                            \once \override NoteHead.transparent = ##t
                            b'16
                            \stopBowSpan
                            \stopTextSpanOne
                            \breathe
                        }
                        \once \revert Staff.StaffSymbol.line-positions
                        \once \override Staff.Clef.stencil = ##f
                        s1 * 1
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
                        R1 * 7/8
                          %! +SCORE
                        \stopStaff \startStaff
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 3
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \body-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \tweak style #'cross
                        a''32
                        - \tweak circled-tip ##t
                        \<
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''4
                        - \accent
                        \f
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a''32
                        \tweak style #'cross
                        a''32
                        - \tweak circled-tip ##t
                        \<
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''4
                        - \accent
                        \p
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a''32
                        \tweak style #'cross
                        a''32
                        - \tweak circled-tip ##t
                        \<
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''4
                        - \accent
                        \p
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a''32
                        \tweak style #'cross
                        a''32
                        - \tweak circled-tip ##t
                        \<
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''32
                        \tweak style #'cross
                        a''4
                        - \accent
                        \f
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a''32
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
                        R1 * 3/16
                        \stopStaff \startStaff
                          %! +SCORE
                        \stopStaff \startStaff
                        \tweak style #'cross
                        f''32
                        \mf
                        \<
                        \tweak style #'cross
                        f''32
                        \tweak style #'cross
                        f''32
                        \tweak style #'cross
                        f''32
                        - \accent
                        \ff
                        r2.
                        r16.
                        \footnote #'(0 . 3) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " lightly tap side of bridge with wooden piece " } } }
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 0 -4 -6 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \tweak style #'cross
                        c'32
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "pppp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-3 \box \line { w/ wooden piece }
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
                        R1 * 3/16
                        \stopStaff \startStaff
                          %! +SCORE
                        \stopStaff \startStaff
                        \footnote #'(-2 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " quasi-bow side of bridge with wooden piece " } } }
                        \override Dots.staff-position = #2
                        \afterGrace
                        c'2...
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
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "trat." } \hspace #0.5 }
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
                            c'16
                            \stopTextSpan
                        }
                        \tweak style #'cross
                        c'32
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mf"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \hspace #-1 { "bat." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \tweak style #'cross
                        c'32
                        \stopTextSpan
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
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-3 \box \line { ( set wooden piece aside) }
                          %! +SCORE
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13
                        {
                            \override Dots.staff-position = #2
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
                            \set Staff.forceClef = ##t
                            \set Staff.forceClef = ##t
                            \clef "treble"
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
                            \big-half-harmonic
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b'2
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
                            b'8
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            \afterGrace
                            d'4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                d'16
                            }
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
                        R1 * 3/2
                          %! +SCORE
                        \stopStaff \startStaff
                        \times 2/3
                        {
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
                            \set Staff.forceClef = ##t
                            \clef "treble"
                            \tweak style #'harmonic
                            d'!4
                            \tweak style #'harmonic
                            c'4
                            \tweak style #'harmonic
                            b'4
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
                        R1 * 1/2
                          %! +SCORE
                        \stopStaff \startStaff
                        \times 4/5
                        {
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup \fontsize #4 \override #'(font-name . "ekmelos") { \char ##xec64 }
                            \set Staff.forceClef = ##t
                            \clef "treble"
                            b16.
                            \footnote #'(0.5 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " strike open strings with bow, let ring shortly, then stop strings with left hand " } } }
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
                            \tweak style #'harmonic
                            d'!16.
                            r16
                            \footnote #'(-1 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " tap front of bridge with fingertips " } } }
                            \tweak style #'cross
                            c'32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \tweak style #'cross
                            c'32
                            - \accent
                        }
                        \times 16/25
                        {
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 3
                            \override Staff.StaffSymbol.line-positions = #'(7 0 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \body-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \clef "treble"
                            r4.
                            \footnote #'(-2 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " firmly tap front of body with fingertips " } } }
                            \tweak style #'cross
                            g''16
                            - \tweak circled-tip ##t
                            \<
                            \tweak style #'cross
                            g''16
                            \tweak style #'cross
                            g''16
                            \tweak style #'cross
                            g''2
                            - \accent
                            \mf
                            \tweak style #'cross
                            g''2
                            \tweak style #'cross
                            g''4.
                            \p
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \tweak style #'cross
                            g''4
                            \tweak style #'cross
                            g''4
                            \f
                            - \tweak circled-tip ##t
                            \>
                            \tweak style #'cross
                            g''4
                            \tweak style #'cross
                            g''16
                            \tweak style #'cross
                            g''16
                            \tweak style #'cross
                            g''2
                            \!
                            ~
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            g''8
                            \tweak style #'cross
                            g''16
                            \mp
                            \tweak style #'cross
                            g''4.
                            - \accent
                            \tweak style #'cross
                            g''16
                            \tweak style #'cross
                            g''4
                            - \accent
                            \mf
                            \tweak style #'cross
                            g''16
                            \mp
                            \tweak style #'cross
                            g''16
                            - \accent
                            \tweak style #'cross
                            f''16
                            \tweak style #'cross
                            e''16
                            \tweak style #'cross
                            d''16
                            \tweak style #'cross
                            c''16
                            \tweak style #'cross
                            b'16
                            \tweak style #'cross
                            a'16
                            \breathe
                        }
                        \times 8/9
                        {
                            \override Dots.staff-position = #2
                            \footnote #'(-2 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " lightly trace circles on the body with wooden piece " } } }
                            g''4.
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
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-3 \box \line { w/ wooden piece }
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak stencil #constante-hairpin
                            \<
                            d''8.
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            f''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            d''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            \afterGrace
                            e''4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak stencil #constante-hairpin
                            \<
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                b'16
                                \!
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
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
