(define (problem valve_turning-task)
    (:domain pandora)
    
    (:objects
	auv0 auv1 auv2 auv3 auv4 auv5 auv6 auv7 auv8 auv9  - vehicle
	w0 w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 w16 w17 w18 w19  - waypoint
	p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19  - panel
	v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73 v74 v75 v76 v77 v78 v79  - valve
)

(:init
	(connected w0 w1) (connected w1 w0)
	(= (distance w0 w1) 3) (= (distance w1 w0) 2)
	(connected w1 w2) (connected w2 w1)
	(= (distance w1 w2) 2) (= (distance w2 w1) 3)
	(connected w2 w3) (connected w3 w2)
	(= (distance w2 w3) 1) (= (distance w3 w2) 3)
	(connected w3 w4) (connected w4 w3)
	(= (distance w3 w4) 3) (= (distance w4 w3) 3)
	(connected w4 w5) (connected w5 w4)
	(= (distance w4 w5) 1) (= (distance w5 w4) 1)
	(connected w5 w6) (connected w6 w5)
	(= (distance w5 w6) 3) (= (distance w6 w5) 2)
	(connected w6 w7) (connected w7 w6)
	(= (distance w6 w7) 2) (= (distance w7 w6) 2)
	(connected w7 w8) (connected w8 w7)
	(= (distance w7 w8) 1) (= (distance w8 w7) 3)
	(connected w8 w9) (connected w9 w8)
	(= (distance w8 w9) 3) (= (distance w9 w8) 2)
	(connected w9 w10) (connected w10 w9)
	(= (distance w9 w10) 1) (= (distance w10 w9) 2)
	(connected w10 w11) (connected w11 w10)
	(= (distance w10 w11) 2) (= (distance w11 w10) 2)
	(connected w11 w12) (connected w12 w11)
	(= (distance w11 w12) 2) (= (distance w12 w11) 1)
	(connected w12 w13) (connected w13 w12)
	(= (distance w12 w13) 2) (= (distance w13 w12) 3)
	(connected w13 w14) (connected w14 w13)
	(= (distance w13 w14) 3) (= (distance w14 w13) 3)
	(connected w14 w15) (connected w15 w14)
	(= (distance w14 w15) 1) (= (distance w15 w14) 3)
	(connected w15 w16) (connected w16 w15)
	(= (distance w15 w16) 1) (= (distance w16 w15) 3)
	(connected w16 w17) (connected w17 w16)
	(= (distance w16 w17) 1) (= (distance w17 w16) 1)
	(connected w17 w18) (connected w18 w17)
	(= (distance w17 w18) 1) (= (distance w18 w17) 3)
	(connected w18 w19) (connected w19 w18)
	(= (distance w18 w19) 2) (= (distance w19 w18) 1)
	(connected w3 w9) (= (distance w3 w9) 5)
	(connected w9 w15) (= (distance w9 w15) 5)
	(connected w15 w17) (= (distance w15 w17) 7)
	(connected w17 w11) (= (distance w17 w11) 7)
	(connected w11 w1) (= (distance w11 w1) 5)
	(connected w1 w7) (= (distance w1 w7) 6)
	(connected w7 w5) (= (distance w7 w5) 5)
	(at auv0 w16)
	(at auv1 w13)
	(at auv2 w10)
	(at auv3 w12)
	(at auv4 w9)
	(at auv5 w9)
	(at auv6 w15)
	(at auv7 w8)
	(at auv8 w12)
	(at auv9 w14)
	(not_illuminating auv0)
	(not_illuminating auv1)
	(not_illuminating auv2)
	(not_illuminating auv3)
	(not_illuminating auv4)
	(not_illuminating auv5)
	(not_illuminating auv6)
	(not_illuminating auv7)
	(not_illuminating auv8)
	(not_illuminating auv9)
	(canreach_panel w0 p0)
	(canreach_panel w1 p1)
	(canreach_panel w2 p2)
	(canreach_panel w3 p3)
	(canreach_panel w4 p4)
	(canreach_panel w5 p5)
	(canreach_panel w6 p6)
	(canreach_panel w7 p7)
	(canreach_panel w8 p8)
	(canreach_panel w9 p9)
	(canreach_panel w10 p10)
	(canreach_panel w11 p11)
	(canreach_panel w12 p12)
	(canreach_panel w13 p13)
	(canreach_panel w14 p14)
	(canreach_panel w15 p15)
	(canreach_panel w16 p16)
	(canreach_panel w17 p17)
	(canreach_panel w18 p18)
	(canreach_panel w19 p19)
	(on v0 p0) (on v1 p0) (on v2 p0) (on v3 p0) 
	(on v4 p1) (on v5 p1) (on v6 p1) (on v7 p1) 
	(on v8 p2) (on v9 p2) (on v10 p2) (on v11 p2) 
	(on v12 p3) (on v13 p3) (on v14 p3) (on v15 p3) 
	(on v16 p4) (on v17 p4) (on v18 p4) (on v19 p4) 
	(on v20 p5) (on v21 p5) (on v22 p5) (on v23 p5) 
	(on v24 p6) (on v25 p6) (on v26 p6) (on v27 p6) 
	(on v28 p7) (on v29 p7) (on v30 p7) (on v31 p7) 
	(on v32 p8) (on v33 p8) (on v34 p8) (on v35 p8) 
	(on v36 p9) (on v37 p9) (on v38 p9) (on v39 p9) 
	(on v40 p10) (on v41 p10) (on v42 p10) (on v43 p10) 
	(on v44 p11) (on v45 p11) (on v46 p11) (on v47 p11) 
	(on v48 p12) (on v49 p12) (on v50 p12) (on v51 p12) 
	(on v52 p13) (on v53 p13) (on v54 p13) (on v55 p13) 
	(on v56 p14) (on v57 p14) (on v58 p14) (on v59 p14) 
	(on v60 p15) (on v61 p15) (on v62 p15) (on v63 p15) 
	(on v64 p16) (on v65 p16) (on v66 p16) (on v67 p16) 
	(on v68 p17) (on v69 p17) (on v70 p17) (on v71 p17) 
	(on v72 p18) (on v73 p18) (on v74 p18) (on v75 p18) 
	(on v76 p19) (on v77 p19) (on v78 p19) (on v79 p19) 
	(valve_free v0)
	(valve_free v1)
	(valve_free v2)
	(valve_free v3)
	(valve_free v4)
	(valve_free v5)
	(valve_free v6)
	(valve_free v7)
	(valve_free v8)
	(valve_free v9)
	(valve_free v10)
	(valve_free v11)
	(valve_free v12)
	(valve_free v13)
	(valve_free v14)
	(valve_free v15)
	(valve_free v16)
	(valve_free v17)
	(valve_free v18)
	(valve_free v19)
	(valve_free v20)
	(valve_free v21)
	(valve_free v22)
	(valve_free v23)
	(valve_free v24)
	(valve_free v25)
	(valve_free v26)
	(valve_free v27)
	(valve_free v28)
	(valve_free v29)
	(valve_free v30)
	(valve_free v31)
	(valve_free v32)
	(valve_free v33)
	(valve_free v34)
	(valve_free v35)
	(valve_free v36)
	(valve_free v37)
	(valve_free v38)
	(valve_free v39)
	(valve_free v40)
	(valve_free v41)
	(valve_free v42)
	(valve_free v43)
	(valve_free v44)
	(valve_free v45)
	(valve_free v46)
	(valve_free v47)
	(valve_free v48)
	(valve_free v49)
	(valve_free v50)
	(valve_free v51)
	(valve_free v52)
	(valve_free v53)
	(valve_free v54)
	(valve_free v55)
	(valve_free v56)
	(valve_free v57)
	(valve_free v58)
	(valve_free v59)
	(valve_free v60)
	(valve_free v61)
	(valve_free v62)
	(valve_free v63)
	(valve_free v64)
	(valve_free v65)
	(valve_free v66)
	(valve_free v67)
	(valve_free v68)
	(valve_free v69)
	(valve_free v70)
	(valve_free v71)
	(valve_free v72)
	(valve_free v73)
	(valve_free v74)
	(valve_free v75)
	(valve_free v76)
	(valve_free v77)
	(valve_free v78)
	(valve_free v79)
	(= (distanceCost) 0)
)

(:goal (and
	(valve_goal_completed v39)
	(valve_goal_completed v10)
	(valve_goal_completed v5)
	(valve_goal_completed v3)
	(valve_goal_completed v16)
	(valve_goal_completed v30)
	(valve_goal_completed v71)
	(valve_goal_completed v27)
	(valve_goal_completed v43)
	(valve_goal_completed v65)
	(valve_goal_completed v45)
	(valve_goal_completed v38)
	(valve_goal_completed v41)
	(valve_goal_completed v6)
	(valve_goal_completed v0)
	(valve_goal_completed v15)
	(valve_goal_completed v42)
	(valve_goal_completed v17)
	(valve_goal_completed v72)
	(valve_goal_completed v1)
	(valve_goal_completed v64)
	(valve_goal_completed v60)
	(valve_goal_completed v35)
	(valve_goal_completed v49)
	(valve_goal_completed v14)
	(valve_goal_completed v59)
	(valve_goal_completed v7)
	(valve_goal_completed v11)
	(valve_goal_completed v47)
	(valve_goal_completed v23)
	(valve_goal_completed v77)
	(valve_goal_completed v24)
	)
)

(:metric minimize (distanceCost))
)