(define (problem valve_turning-task)
    (:domain pandora)
    
    (:objects
	auv0 auv1 auv2 auv3  - vehicle
	w0 w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14  - waypoint
	p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14  - panel
	v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73 v74 v75 v76 v77 v78 v79 v80 v81 v82 v83 v84 v85 v86 v87 v88 v89 v90 v91 v92 v93 v94 v95 v96 v97 v98 v99 v100 v101 v102 v103 v104 v105 v106 v107 v108 v109 v110 v111 v112 v113 v114 v115 v116 v117 v118 v119 v120 v121 v122 v123 v124 v125 v126 v127 v128 v129 v130 v131 v132 v133 v134 v135 v136 v137 v138 v139 v140 v141 v142 v143 v144 v145 v146 v147 v148 v149  - valve
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
	(connected w5 w3)
	(connected w3 w7)
	(connected w7 w9)
	(connected w9 w13)
	(connected w13 w11)
	(at auv0 w3)
	(at auv1 w8)
	(at auv2 w8)
	(at auv3 w2)
	(not_illuminating auv0)
	(not_illuminating auv1)
	(not_illuminating auv2)
	(not_illuminating auv3)
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
	(on v0 p0) (on v1 p0) (on v2 p0) (on v3 p0) (on v4 p0) (on v5 p0) (on v6 p0) (on v7 p0) (on v8 p0) (on v9 p0) 
	(on v10 p1) (on v11 p1) (on v12 p1) (on v13 p1) (on v14 p1) (on v15 p1) (on v16 p1) (on v17 p1) (on v18 p1) (on v19 p1) 
	(on v20 p2) (on v21 p2) (on v22 p2) (on v23 p2) (on v24 p2) (on v25 p2) (on v26 p2) (on v27 p2) (on v28 p2) (on v29 p2) 
	(on v30 p3) (on v31 p3) (on v32 p3) (on v33 p3) (on v34 p3) (on v35 p3) (on v36 p3) (on v37 p3) (on v38 p3) (on v39 p3) 
	(on v40 p4) (on v41 p4) (on v42 p4) (on v43 p4) (on v44 p4) (on v45 p4) (on v46 p4) (on v47 p4) (on v48 p4) (on v49 p4) 
	(on v50 p5) (on v51 p5) (on v52 p5) (on v53 p5) (on v54 p5) (on v55 p5) (on v56 p5) (on v57 p5) (on v58 p5) (on v59 p5) 
	(on v60 p6) (on v61 p6) (on v62 p6) (on v63 p6) (on v64 p6) (on v65 p6) (on v66 p6) (on v67 p6) (on v68 p6) (on v69 p6) 
	(on v70 p7) (on v71 p7) (on v72 p7) (on v73 p7) (on v74 p7) (on v75 p7) (on v76 p7) (on v77 p7) (on v78 p7) (on v79 p7) 
	(on v80 p8) (on v81 p8) (on v82 p8) (on v83 p8) (on v84 p8) (on v85 p8) (on v86 p8) (on v87 p8) (on v88 p8) (on v89 p8) 
	(on v90 p9) (on v91 p9) (on v92 p9) (on v93 p9) (on v94 p9) (on v95 p9) (on v96 p9) (on v97 p9) (on v98 p9) (on v99 p9) 
	(on v100 p10) (on v101 p10) (on v102 p10) (on v103 p10) (on v104 p10) (on v105 p10) (on v106 p10) (on v107 p10) (on v108 p10) (on v109 p10) 
	(on v110 p11) (on v111 p11) (on v112 p11) (on v113 p11) (on v114 p11) (on v115 p11) (on v116 p11) (on v117 p11) (on v118 p11) (on v119 p11) 
	(on v120 p12) (on v121 p12) (on v122 p12) (on v123 p12) (on v124 p12) (on v125 p12) (on v126 p12) (on v127 p12) (on v128 p12) (on v129 p12) 
	(on v130 p13) (on v131 p13) (on v132 p13) (on v133 p13) (on v134 p13) (on v135 p13) (on v136 p13) (on v137 p13) (on v138 p13) (on v139 p13) 
	(on v140 p14) (on v141 p14) (on v142 p14) (on v143 p14) (on v144 p14) (on v145 p14) (on v146 p14) (on v147 p14) (on v148 p14) (on v149 p14) 
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
	(valve_free v80)
	(valve_free v81)
	(valve_free v82)
	(valve_free v83)
	(valve_free v84)
	(valve_free v85)
	(valve_free v86)
	(valve_free v87)
	(valve_free v88)
	(valve_free v89)
	(valve_free v90)
	(valve_free v91)
	(valve_free v92)
	(valve_free v93)
	(valve_free v94)
	(valve_free v95)
	(valve_free v96)
	(valve_free v97)
	(valve_free v98)
	(valve_free v99)
	(valve_free v100)
	(valve_free v101)
	(valve_free v102)
	(valve_free v103)
	(valve_free v104)
	(valve_free v105)
	(valve_free v106)
	(valve_free v107)
	(valve_free v108)
	(valve_free v109)
	(valve_free v110)
	(valve_free v111)
	(valve_free v112)
	(valve_free v113)
	(valve_free v114)
	(valve_free v115)
	(valve_free v116)
	(valve_free v117)
	(valve_free v118)
	(valve_free v119)
	(valve_free v120)
	(valve_free v121)
	(valve_free v122)
	(valve_free v123)
	(valve_free v124)
	(valve_free v125)
	(valve_free v126)
	(valve_free v127)
	(valve_free v128)
	(valve_free v129)
	(valve_free v130)
	(valve_free v131)
	(valve_free v132)
	(valve_free v133)
	(valve_free v134)
	(valve_free v135)
	(valve_free v136)
	(valve_free v137)
	(valve_free v138)
	(valve_free v139)
	(valve_free v140)
	(valve_free v141)
	(valve_free v142)
	(valve_free v143)
	(valve_free v144)
	(valve_free v145)
	(valve_free v146)
	(valve_free v147)
	(valve_free v148)
	(valve_free v149)
)

(:goal (and
	(valve_goal_completed v51)
	(valve_goal_completed v63)
	(valve_goal_completed v40)
	(valve_goal_completed v27)
	(valve_goal_completed v144)
	(valve_goal_completed v118)
	(valve_goal_completed v114)
	(valve_goal_completed v121)
	(valve_goal_completed v57)
	(valve_goal_completed v26)
	(valve_goal_completed v52)
	(valve_goal_completed v120)
	(valve_goal_completed v141)
	(valve_goal_completed v0)
	(valve_goal_completed v59)
	(valve_goal_completed v8)
	(valve_goal_completed v111)
	(valve_goal_completed v137)
	(valve_goal_completed v31)
	(valve_goal_completed v33)
	(valve_goal_completed v80)
	(valve_goal_completed v132)
	(valve_goal_completed v32)
	(valve_goal_completed v53)
	(valve_goal_completed v105)
	(valve_goal_completed v25)
	(valve_goal_completed v133)
	(valve_goal_completed v99)
	(valve_goal_completed v86)
	(valve_goal_completed v135)
	(valve_goal_completed v100)
	(valve_goal_completed v124)
	(valve_goal_completed v117)
	(valve_goal_completed v92)
	(valve_goal_completed v24)
	(valve_goal_completed v127)
	(valve_goal_completed v62)
	(valve_goal_completed v10)
	(valve_goal_completed v1)
	(valve_goal_completed v13)
	(valve_goal_completed v131)
	(valve_goal_completed v68)
	(valve_goal_completed v12)
	(valve_goal_completed v23)
	(valve_goal_completed v126)
	(valve_goal_completed v79)
	(valve_goal_completed v81)
	(valve_goal_completed v69)
	(valve_goal_completed v147)
	(valve_goal_completed v136)
	(valve_goal_completed v75)
	(valve_goal_completed v149)
	(valve_goal_completed v6)
	(valve_goal_completed v38)
	(valve_goal_completed v60)
	(valve_goal_completed v4)
	(valve_goal_completed v93)
	(valve_goal_completed v15)
	(valve_goal_completed v101)
	(valve_goal_completed v102)
	)
)
)