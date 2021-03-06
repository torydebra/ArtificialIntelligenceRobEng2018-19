(define (problem valve_turning-task)
    (:domain pandora)
    
    (:objects
	auv0 auv1  - vehicle
	w0 w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 w16 w17 w18 w19 w20 w21 w22 w23 w24 w25 w26 w27 w28 w29 w30 w31 w32 w33 w34  - waypoint
	p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34  - panel
	v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69  - valve
)

(:init
	(connected w0 w1) (connected w1 w0)
	(connected w1 w2) (connected w2 w1)
	(connected w2 w3) (connected w3 w2)
	(connected w3 w4) (connected w4 w3)
	(connected w4 w5) (connected w5 w4)
	(connected w5 w6) (connected w6 w5)
	(connected w6 w7) (connected w7 w6)
	(connected w7 w8) (connected w8 w7)
	(connected w8 w9) (connected w9 w8)
	(connected w9 w10) (connected w10 w9)
	(connected w10 w11) (connected w11 w10)
	(connected w11 w12) (connected w12 w11)
	(connected w12 w13) (connected w13 w12)
	(connected w13 w14) (connected w14 w13)
	(connected w14 w15) (connected w15 w14)
	(connected w15 w16) (connected w16 w15)
	(connected w16 w17) (connected w17 w16)
	(connected w17 w18) (connected w18 w17)
	(connected w18 w19) (connected w19 w18)
	(connected w19 w20) (connected w20 w19)
	(connected w20 w21) (connected w21 w20)
	(connected w21 w22) (connected w22 w21)
	(connected w22 w23) (connected w23 w22)
	(connected w23 w24) (connected w24 w23)
	(connected w24 w25) (connected w25 w24)
	(connected w25 w26) (connected w26 w25)
	(connected w26 w27) (connected w27 w26)
	(connected w27 w28) (connected w28 w27)
	(connected w28 w29) (connected w29 w28)
	(connected w29 w30) (connected w30 w29)
	(connected w30 w31) (connected w31 w30)
	(connected w31 w32) (connected w32 w31)
	(connected w32 w33) (connected w33 w32)
	(connected w33 w34) (connected w34 w33)
	(connected w11 w27)
	(connected w27 w21)
	(connected w21 w5)
	(connected w5 w15)
	(connected w15 w31)
	(connected w31 w29)
	(connected w29 w3)
	(connected w3 w9)
	(connected w9 w13)
	(connected w13 w7)
	(connected w7 w17)
	(connected w17 w33)
	(connected w33 w1)
	(at auv0 w21)
	(at auv1 w21)
	(not_illuminating auv0)
	(not_illuminating auv1)
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
	(canreach_panel w20 p20)
	(canreach_panel w21 p21)
	(canreach_panel w22 p22)
	(canreach_panel w23 p23)
	(canreach_panel w24 p24)
	(canreach_panel w25 p25)
	(canreach_panel w26 p26)
	(canreach_panel w27 p27)
	(canreach_panel w28 p28)
	(canreach_panel w29 p29)
	(canreach_panel w30 p30)
	(canreach_panel w31 p31)
	(canreach_panel w32 p32)
	(canreach_panel w33 p33)
	(canreach_panel w34 p34)
	(on v0 p0) (on v1 p0) 
	(on v2 p1) (on v3 p1) 
	(on v4 p2) (on v5 p2) 
	(on v6 p3) (on v7 p3) 
	(on v8 p4) (on v9 p4) 
	(on v10 p5) (on v11 p5) 
	(on v12 p6) (on v13 p6) 
	(on v14 p7) (on v15 p7) 
	(on v16 p8) (on v17 p8) 
	(on v18 p9) (on v19 p9) 
	(on v20 p10) (on v21 p10) 
	(on v22 p11) (on v23 p11) 
	(on v24 p12) (on v25 p12) 
	(on v26 p13) (on v27 p13) 
	(on v28 p14) (on v29 p14) 
	(on v30 p15) (on v31 p15) 
	(on v32 p16) (on v33 p16) 
	(on v34 p17) (on v35 p17) 
	(on v36 p18) (on v37 p18) 
	(on v38 p19) (on v39 p19) 
	(on v40 p20) (on v41 p20) 
	(on v42 p21) (on v43 p21) 
	(on v44 p22) (on v45 p22) 
	(on v46 p23) (on v47 p23) 
	(on v48 p24) (on v49 p24) 
	(on v50 p25) (on v51 p25) 
	(on v52 p26) (on v53 p26) 
	(on v54 p27) (on v55 p27) 
	(on v56 p28) (on v57 p28) 
	(on v58 p29) (on v59 p29) 
	(on v60 p30) (on v61 p30) 
	(on v62 p31) (on v63 p31) 
	(on v64 p32) (on v65 p32) 
	(on v66 p33) (on v67 p33) 
	(on v68 p34) (on v69 p34) 
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
)

(:goal (and
	(valve_goal_completed v56)
	(valve_goal_completed v50)
	(valve_goal_completed v7)
	(valve_goal_completed v18)
	(valve_goal_completed v38)
	(valve_goal_completed v68)
	(valve_goal_completed v35)
	(valve_goal_completed v31)
	(valve_goal_completed v45)
	(valve_goal_completed v47)
	(valve_goal_completed v33)
	(valve_goal_completed v27)
	(valve_goal_completed v15)
	(valve_goal_completed v58)
	(valve_goal_completed v59)
	(valve_goal_completed v21)
	(valve_goal_completed v40)
	(valve_goal_completed v60)
	(valve_goal_completed v32)
	(valve_goal_completed v69)
	(valve_goal_completed v44)
	(valve_goal_completed v29)
	(valve_goal_completed v3)
	(valve_goal_completed v6)
	(valve_goal_completed v12)
	(valve_goal_completed v65)
	(valve_goal_completed v34)
	(valve_goal_completed v36)
	)
)
)