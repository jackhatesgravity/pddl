(define (problem wumpus)
  (:domain wumpus)
  (:objects
    sq-1-1 sq-1-2 sq-1-3 sq-1-4 sq-2-1 sq-2-2 sq-2-3 sq-2-4 sq-3-1 sq-3-2 sq-3-3 sq-3-4 sq-4-1 sq-4-2 sq-4-3 sq-4-4 the-gold the-arrow agent wumpus
  )

  (:init
    ;; Vertical adjacencies notation: sq-{X-axis-coordinate}-{Y-axis-coordinate}
    (adj sq-1-1 sq-1-2)
    (adj sq-1-2 sq-1-1)
    (adj sq-1-2 sq-1-3)
    (adj sq-1-3 sq-1-2)
    (adj sq-1-3 sq-1-4)
    (adj sq-1-4 sq-1-3)
    (adj sq-2-1 sq-2-2)
    (adj sq-2-2 sq-2-1)
    (adj sq-2-2 sq-2-3)
    (adj sq-2-3 sq-2-2)
    (adj sq-2-3 sq-2-4)
    (adj sq-2-4 sq-2-3)
    (adj sq-3-1 sq-3-2)
    (adj sq-3-2 sq-3-1)
    (adj sq-3-2 sq-3-3)
    (adj sq-3-3 sq-3-2)
    (adj sq-3-3 sq-3-4)
    (adj sq-3-4 sq-3-3)
    (adj sq-4-1 sq-4-2)
    (adj sq-4-2 sq-4-1)
    (adj sq-4-2 sq-4-3)
    (adj sq-4-3 sq-4-2)
    (adj sq-4-3 sq-4-4)
    (adj sq-4-4 sq-4-3)

    ;; Horizontal adjacencies notation: sq-{X-axis-coordinate}-{Y-axis-coordinate}
    (adj sq-1-1 sq-2-1)
    (adj sq-2-1 sq-1-1)
    (adj sq-2-1 sq-3-1)
    (adj sq-3-1 sq-2-1)
    (adj sq-3-1 sq-4-1)
    (adj sq-4-1 sq-3-1)
    (adj sq-1-2 sq-2-2)
    (adj sq-2-2 sq-1-2)
    (adj sq-2-2 sq-3-2)
    (adj sq-3-2 sq-2-2)
    (adj sq-3-2 sq-4-2)
    (adj sq-4-2 sq-3-2)
    (adj sq-1-3 sq-2-3)
    (adj sq-2-3 sq-1-3)
    (adj sq-2-3 sq-3-3)
    (adj sq-3-3 sq-2-3)
    (adj sq-3-3 sq-4-3)
    (adj sq-4-3 sq-3-3)
    (adj sq-1-4 sq-2-4)
    (adj sq-2-4 sq-1-4)
    (adj sq-2-4 sq-3-4)
    (adj sq-3-4 sq-2-4)
    (adj sq-3-4 sq-4-4)
    (adj sq-4-4 sq-3-4)

    ;; Declare the position of the Gold
    (at the-gold sq-2-3)

    ;; Declare the locations of the Pits
    (pit sq-3-1)
    (pit sq-3-3)
    (pit sq-4-4)

    ;; Declare the Agent, its position, and that it has an arrow
    (is-agent agent)
    (at agent sq-1-1)
    (is-arrow the-arrow)
    (have agent the-arrow)

    ;; Declare the Wumpus and its position
    (is-wumpus wumpus)
    (at wumpus sq-2-3)
    (wumpus-in sq-2-3)
  )

  (:goal
    (and (have agent the-gold) (at agent sq-1-1))
  )
)