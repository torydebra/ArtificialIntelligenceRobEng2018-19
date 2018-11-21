(define (domain pandora)
(:requirements :strips :typing)

(:types
    waypoint
    panel
    valve
    vehicle
)    
    
(:predicates
    (connected ?wp1 ?wp2 - waypoint)
    (at ?v - vehicle ?wp - waypoint)
    (not_illuminating ?v - vehicle)
    (panel_illuminated ?p - panel)
    (canreach_panel ?wp - waypoint ?p - panel)
    (examined ?p - panel)
    (on ?a - valve ?p - panel)
    (valve_free ?a - valve)
    (valve_goal_completed ?va - valve)
)

(:functions
    (distance ?wp1 ?wp2 - waypoint)
    (distanceCost)
)

(:action move
    :parameters (?v - vehicle ?from ?to - waypoint)
    :precondition (and
        (at ?v ?from)
        (connected ?from ?to)
        (not_illuminating ?v))
    :effect (and
        (not (at ?v ?from))
        (at ?v ?to)
        (increase (distanceCost) (distance ?from ?to)))
)

(:action illuminate_panel
    :parameters (?v - vehicle ?wp - waypoint ?p - panel)
    :precondition (and
        (at ?v ?wp)
        (canreach_panel ?wp ?p))
    :effect (and
        (panel_illuminated ?p)
        (not (not_illuminating ?v)))
)

(:action deilluminate_panel
    :parameters (?v - vehicle ?wp - waypoint ?p - panel)
    :precondition (and
        (at ?v ?wp)
        (canreach_panel ?wp ?p)
        (panel_illuminated ?p))
    :effect (and
        (not (panel_illuminated ?p))
        (not_illuminating ?v))
)


(:action examine_panel
    :parameters (?v - vehicle ?wp - waypoint ?p - panel)
    :precondition (and
        (at ?v ?wp)
        (panel_illuminated ?p))
    :effect (and
        (examined ?p))
)

(:action turn_valve
    :parameters (?v - vehicle ?wp - waypoint ?p - panel ?a - valve)
    :precondition (and
        (at ?v ?wp)
        (examined ?p)
        (canreach_panel ?wp ?p)
        (on ?a ?p)
        (valve_free ?a))
    :effect (and
        (not (valve_free ?a))
        (valve_goal_completed ?a))
)
)
