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
                        \clef "treble"
                        \afterGrace
                        d'4
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
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \afterGrace
                        d''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Flag.stroke-style = #"grace"
                            d''16
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
                        \revert Dots.staff-position
                        d''8
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
                        \override Staff.StaffSymbol.line-positions = #'(7 6 4 0 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \afterGrace
                        a''4
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
                            a''16
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
                        \override Staff.StaffSymbol.line-positions = #'(7 6 4 0 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        a''4
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
                        a''32
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
                            a''16
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
                        a''32
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
                        a''32
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
                            \override Staff.StaffSymbol.line-positions = #'(7 6 4 0 -7)
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \string-clef
                            \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                            \clef "treble"
                            \tweak style #'cross
                            a''8.
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
                            a''8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \tweak style #'cross
                            a''8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup \fontsize #-3 \raise #0.4 { \center-column { \line { III } \line { IV } } }
                            f''!8.
                            \<
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
                            b'8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            g'8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            e'8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            c'8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b8.
                            \fff
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            b8.
                            \stopTextSpan
                        }
                        \once \revert Staff.StaffSymbol.line-positions
                        s1 * 3/2
                    }
                }
                \context leftHandStaff = "viola 2 staff"
                {
                    \context Voice = "viola 2 voice"
                    {
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override Staff.Clef.transparent = ##t
                        \once \revert Staff.StaffSymbol.line-positions
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/8
                          %! +SCORE
                        \stopStaff \startStaff
                        \footnote #'(-2 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " quickly tap fingertips 2-5 on body " } } }
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
                        \footnote #'(-2 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " lightly tap side of bridge with wooden piece " } } }
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                        \override Staff.StaffSymbol.line-positions = #'(7 6 4 0 -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)\set Staff.forceClef = ##t
                        \clef "treble"
                        \tweak style #'cross
                        a''32
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
                        a''2...
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
                            a''16
                            \stopTextSpan
                        }
                        \tweak style #'cross
                        a''32
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
                        a''32
                        \stopTextSpan
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/2
                          %! +SCORE
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13
                        {
                            \override Dots.staff-position = #2
                            \once \override Staff.Accidental.stencil = #ly:text-interface::print
                            \once \override Staff.Accidental.text = \markup \fontsize #-3 \raise #0.4 { \center-column { \line { III } \line { IV } } }
                            b!2
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
                            b8
                            \big-half-harmonic
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(13.2)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #UP
                            \once \override Staff.Stem.thickness = #2
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
                            \once \revert Staff.Stem.stencil
                            \once \override Staff.Stem.details.lengths = #'(7.5)
                            \once \override Staff.Stem.Y-extent = ##f
                            \once \override Staff.Stem.Y-offset = 0
                            \once \override Staff.Stem.layer = 0
                            \once \override Staff.Stem.direction = #UP
                            \once \override Staff.Stem.thickness = #2
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            \afterGrace
                            a''4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                a''16
                            }
                        }
                          %! +SCORE
                        \once \override Staff.BarLine.transparent = ##f
                        \once \revert Staff.StaffSymbol.line-positions
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                          %! +SCORE
                        \once \override Staff.TimeSignature.transparent = ##t
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/2
                          %! +SCORE
                        \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
