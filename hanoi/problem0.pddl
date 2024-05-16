(define (problem hanoi0)
  (:domain hanoi)
  (:objects
    peg1 peg2 peg3 d1 d2 d3
  )
  (:init
    ;; All of the discs are smaller than all of the pegs
    (smaller peg1 d1)
    (smaller peg1 d2)
    (smaller peg1 d3)
    (smaller peg2 d1)
    (smaller peg2 d2)
    (smaller peg2 d3)
    (smaller peg3 d1)
    (smaller peg3 d2)
    (smaller peg3 d3)

    ;; Declare the disc sizes: d3 > d2 > d1
    (smaller d2 d1)
    (smaller d3 d1)
    (smaller d3 d2)

    ;; Declare peg2 and peg3 to be empty
    (clear peg2)
    (clear peg3)

    ;; Declare d1 to have nothing on top of it
    (clear d1)

    ;; Declare the order of the discs on peg1
    (on d3 peg1)
    (on d2 d3)
    (on d1 d2)

    ;; Declare action sequences
    (move d1 d2)
    (move d1 d3)
    (move d1 peg1)
    (move d1 peg2)
    (move d1 peg3)
    (move d2 d1)
    (move d2 d3)
    (move d2 peg1)
    (move d2 peg2)
    (move d2 peg3)
    (move d3 d1)
    (move d3 d2)
    (move d3 peg1)
    (move d3 peg2)
    (move d3 peg3)
  )
  (:goal
    (and (on d3 peg3) (on d2 d3) (on d1 d2))
  )
)