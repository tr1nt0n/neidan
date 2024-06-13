staff-line-count = #(
    define-music-function (parser location number music) (number? ly:music?)
    #{
    \stopStaff
    \override Staff.StaffSymbol.line-count = #number
    \startStaff
    $music
    #}
    )

boxed-markup = #(
    define-music-function
    (string font-size)
    (string? number?)
    #{
    - \tweak font-size #font-size
    ^ \markup
    \override #'(style . "box")
    \override #'(box-padding . 0.5)
    \whiteout
    \box
    #string
    #}
    )

#(define ((flared-tie coords) grob)

  (define (pair-to-list pair)
     (list (car pair) (cdr pair)))

  (define (normalize-coords goods x y dir)
    (map
      (lambda (coord)
        ;(coord-scale coord (cons x (* y dir)))
        (cons (* x (car coord)) (* y dir (cdr coord))))
      goods))

  (define (my-c-p-s points thick)
    (make-connected-path-stencil
      points
      thick
      1.0
      1.0
      #f
      #f))

  ;; outer let to trigger suicide
  (let ((sten (ly:tie::print grob)))
    (if (grob::is-live? grob)
        (let* ((layout (ly:grob-layout grob))
               (line-thickness (ly:output-def-lookup layout 'line-thickness))
               (thickness (ly:grob-property grob 'thickness 0.1))
               (used-thick (* line-thickness thickness))
               (dir (ly:grob-property grob 'direction))
               (xex (ly:stencil-extent sten X))
               (yex (ly:stencil-extent sten Y))
               (lenx (interval-length xex))
               (leny (interval-length yex))
               (xtrans (car xex))
               (ytrans (if (> dir 0)(car yex) (cdr yex)))
               (uplist
                 (map pair-to-list
                      (normalize-coords coords lenx (* leny 2) dir))))

   (ly:stencil-translate
       (my-c-p-s uplist used-thick)
     (cons xtrans ytrans)))
   '())))

#(define flare-tie
  (flared-tie '((0 . 0)(0.06 . 0.1) (0.94 . 0.1) (1.0 . 0.0))))

#(define ((trinton-blank-time-signature) grob)
   (grob-interpret-markup grob
          (markup #:override '(baseline-skip . 2.5) #:number
                  (#:line ((#:fontsize 1 #:column ("X" "X")))))))


一 = #(rgb-color 190/255 132/255 170/255)
二 = #(rgb-color 170/255 165/255 230/255)
三 = #(rgb-color 125/255 200/255 240/255)
四 = #(rgb-color 133/255 176/255 147/255)

% U+E078

string-clef = \markup {
    % \hspace #0.6
    \fontsize #4.9
    \override #'(font-name . "ekmelos")
    \override #'(whiteout-style . "outline")
    \override #'(whiteout . 1)
    \override #'(layer . 27)
    {
        % \rotate #-45
        \raise #1
        \char ##xe078
    }
}

% U+E06B

body-clef = \markup {
    % \hspace #0.6
    \override #'(font-name . "ekmelos")
    \override #'(whiteout-style . "outline")
    \override #'(whiteout . 1)
    \override #'(layer . 27)
    \center-column {
        \line {
            \rotate #180
            \fontsize #1
            \raise #2.75
            \char ##xe06b
        }
        \line {
            \rotate #180
            \fontsize #1
            \raise #3.5
            \char ##xe06b
        }
    }
}

back-of-body-clef = \markup {
    % \hspace #0.6
    \override #'(font-name . "ekmelos")
    \override #'(whiteout-style . "outline")
    \override #'(whiteout . 1)
    \override #'(layer . 27)
    \center-column {
        \line {
            % \scale #'(-1 . 1)
            \fontsize #1
            \raise #2.75
            \char ##xe06b
        }
        \line {
            % \scale #'(-1 . 1)
            \fontsize #1
            \raise #3.5
            \char ##xe06b
        }
    }
}

% noteheads

#(define-markup-command
    (ekmelos-char layout props point-code)
    (number?)
    (interpret-markup layout props
    #{
    \markup
    \override #'(font-name . "ekmelos")
    \override #'(font-size . 20)
    \char #point-code
    #}))

grace-half-harmonic = {
    \once \override NoteHead.stem-attachment = #(lambda (grob)
        (let* ((thickness (ly:staff-symbol-line-thickness grob))
              (stem (ly:grob-object grob 'stem))
              (dir (ly:grob-property stem 'direction UP)))
          (if (= dir UP)
              (cons
                  0
                  0.9
              )
              (if (= dir DOWN)
                  (cons
                      0
                      -0.9
                  )
              )
          )
        )
    )
    \once \override NoteHead.stencil =
        #(lambda (grob)
            (let
                ((dur (ly:grob-property grob 'duration-log)))
                (if (<= dur 1)
                    (grob-interpret-markup grob (markup #:ekmelos-char #xe0fc))
                    (if (> dur 1)
                        (grob-interpret-markup grob (markup #:ekmelos-char #xe0e3))
                    )
                )
            )
        )
    \once \override NoteHead.font-size = #3
}

big-half-harmonic = {
    \once \override NoteHead.stem-attachment = #(lambda (grob)
        (let* ((thickness (ly:staff-symbol-line-thickness grob))
              (stem (ly:grob-object grob 'stem))
              (dir (ly:grob-property stem 'direction UP)))
          (if (= dir UP)
              (cons
                  0
                  0.9
              )
              (if (= dir DOWN)
                  (cons
                      0
                      -0.9
                  )
              )
          )
        )
    )
    \once \override NoteHead.stencil =
        #(lambda (grob)
            (let
                ((dur (ly:grob-property grob 'duration-log)))
                (if (<= dur 1)
                    (grob-interpret-markup grob (markup #:ekmelos-char #xe0fc))
                    (if (> dur 1)
                        (grob-interpret-markup grob (markup #:ekmelos-char #xe0e3))
                    )
                )
            )
        )
    \once \override NoteHead.font-size = #5.5
}

#(define-markup-command (double-box layout props text) (markup?)
  #:properties ((inter-box-padding 0.4)
                (box-padding 0.6))
  (interpret-markup layout props
    #{\markup \override #`(box-padding . ,inter-box-padding) \box
              \override #`(box-padding . ,box-padding) \box
              { #text } #}))
