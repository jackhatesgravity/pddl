(define (domain gripper-domain)
   (:predicates (room ?r)
		(ball ?b)
		(gripper ?g)
		(at-robby ?r)
		(at ?b ?r)
		(free ?g)
		(carry ?o ?g))

   (:action move
       :parameters  (?from ?to)
       :precondition (and  (room ?from) (room ?to) (at-robby ?from))
       :effect (and  (at-robby ?to)
		     (not (at-robby ?from))))

    (:action swap
        :parameters (?ball-one ?ball-two ?gripper-one ?gripper-two ?room)
        :precondition (and
            (at-robby ?room)
            (carry ?ball-one ?gripper-one)
            (free ?gripper-two)
            (at ?ball-two ?room)
         )
        :effect (and
            (carry ?ball-two ?gripper-two)
            (at ?ball-one ?room)
            (free ?gripper-one)
            (not (carry ?ball-one ?gripper-one))
            (not (free ?gripper-two))
            (not (at ?ball-two ?room))
         )
    )

   (:action pick
       :parameters (?obj ?room ?gripper)
       :precondition  (and  (ball ?obj) (room ?room) (gripper ?gripper)
			    (at ?obj ?room) (at-robby ?room) (free ?gripper))
       :effect (and (carry ?obj ?gripper)
		    (not (at ?obj ?room)) 
		    (not (free ?gripper))))


   (:action drop
       :parameters  (?obj  ?room ?gripper)
       :precondition  (and  (ball ?obj) (room ?room) (gripper ?gripper)
			    (carry ?obj ?gripper) (at-robby ?room))
       :effect (and (at ?obj ?room)
		    (free ?gripper)
		    (not (carry ?obj ?gripper)))))

