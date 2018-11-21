(define (problem valve_turning-task)
    (:domain pandora)
    
    (:objects
	auv0 auv1 auv2 auv3 auv4 auv5 auv6 auv7 auv8 auv9  - vehicle
	w0 w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 w16 w17 w18 w19 w20 w21 w22 w23 w24 w25 w26 w27 w28 w29 w30 w31 w32 w33 w34 w35 w36 w37 w38 w39 w40 w41 w42 w43 w44 w45 w46 w47 w48 w49  - waypoint
	p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49  - panel
	v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73 v74 v75 v76 v77 v78 v79 v80 v81 v82 v83 v84 v85 v86 v87 v88 v89 v90 v91 v92 v93 v94 v95 v96 v97 v98 v99 v100 v101 v102 v103 v104 v105 v106 v107 v108 v109 v110 v111 v112 v113 v114 v115 v116 v117 v118 v119 v120 v121 v122 v123 v124 v125 v126 v127 v128 v129 v130 v131 v132 v133 v134 v135 v136 v137 v138 v139 v140 v141 v142 v143 v144 v145 v146 v147 v148 v149 v150 v151 v152 v153 v154 v155 v156 v157 v158 v159 v160 v161 v162 v163 v164 v165 v166 v167 v168 v169 v170 v171 v172 v173 v174 v175 v176 v177 v178 v179 v180 v181 v182 v183 v184 v185 v186 v187 v188 v189 v190 v191 v192 v193 v194 v195 v196 v197 v198 v199 v200 v201 v202 v203 v204 v205 v206 v207 v208 v209 v210 v211 v212 v213 v214 v215 v216 v217 v218 v219 v220 v221 v222 v223 v224 v225 v226 v227 v228 v229 v230 v231 v232 v233 v234 v235 v236 v237 v238 v239 v240 v241 v242 v243 v244 v245 v246 v247 v248 v249 v250 v251 v252 v253 v254 v255 v256 v257 v258 v259 v260 v261 v262 v263 v264 v265 v266 v267 v268 v269 v270 v271 v272 v273 v274 v275 v276 v277 v278 v279 v280 v281 v282 v283 v284 v285 v286 v287 v288 v289 v290 v291 v292 v293 v294 v295 v296 v297 v298 v299 v300 v301 v302 v303 v304 v305 v306 v307 v308 v309 v310 v311 v312 v313 v314 v315 v316 v317 v318 v319 v320 v321 v322 v323 v324 v325 v326 v327 v328 v329 v330 v331 v332 v333 v334 v335 v336 v337 v338 v339 v340 v341 v342 v343 v344 v345 v346 v347 v348 v349 v350 v351 v352 v353 v354 v355 v356 v357 v358 v359 v360 v361 v362 v363 v364 v365 v366 v367 v368 v369 v370 v371 v372 v373 v374 v375 v376 v377 v378 v379 v380 v381 v382 v383 v384 v385 v386 v387 v388 v389 v390 v391 v392 v393 v394 v395 v396 v397 v398 v399  - valve
)

(:init
	(connected w0 w1) (connected w1 w0)
	(= (distance w0 w1) 1) (= (distance w1 w0) 3)
	(connected w1 w2) (connected w2 w1)
	(= (distance w1 w2) 1) (= (distance w2 w1) 2)
	(connected w2 w3) (connected w3 w2)
	(= (distance w2 w3) 1) (= (distance w3 w2) 2)
	(connected w3 w4) (connected w4 w3)
	(= (distance w3 w4) 3) (= (distance w4 w3) 2)
	(connected w4 w5) (connected w5 w4)
	(= (distance w4 w5) 3) (= (distance w5 w4) 2)
	(connected w5 w6) (connected w6 w5)
	(= (distance w5 w6) 1) (= (distance w6 w5) 1)
	(connected w6 w7) (connected w7 w6)
	(= (distance w6 w7) 2) (= (distance w7 w6) 2)
	(connected w7 w8) (connected w8 w7)
	(= (distance w7 w8) 1) (= (distance w8 w7) 2)
	(connected w8 w9) (connected w9 w8)
	(= (distance w8 w9) 1) (= (distance w9 w8) 3)
	(connected w9 w10) (connected w10 w9)
	(= (distance w9 w10) 2) (= (distance w10 w9) 1)
	(connected w10 w11) (connected w11 w10)
	(= (distance w10 w11) 1) (= (distance w11 w10) 1)
	(connected w11 w12) (connected w12 w11)
	(= (distance w11 w12) 1) (= (distance w12 w11) 1)
	(connected w12 w13) (connected w13 w12)
	(= (distance w12 w13) 1) (= (distance w13 w12) 1)
	(connected w13 w14) (connected w14 w13)
	(= (distance w13 w14) 1) (= (distance w14 w13) 1)
	(connected w14 w15) (connected w15 w14)
	(= (distance w14 w15) 2) (= (distance w15 w14) 2)
	(connected w15 w16) (connected w16 w15)
	(= (distance w15 w16) 1) (= (distance w16 w15) 3)
	(connected w16 w17) (connected w17 w16)
	(= (distance w16 w17) 1) (= (distance w17 w16) 2)
	(connected w17 w18) (connected w18 w17)
	(= (distance w17 w18) 2) (= (distance w18 w17) 2)
	(connected w18 w19) (connected w19 w18)
	(= (distance w18 w19) 1) (= (distance w19 w18) 2)
	(connected w19 w20) (connected w20 w19)
	(= (distance w19 w20) 1) (= (distance w20 w19) 1)
	(connected w20 w21) (connected w21 w20)
	(= (distance w20 w21) 3) (= (distance w21 w20) 1)
	(connected w21 w22) (connected w22 w21)
	(= (distance w21 w22) 1) (= (distance w22 w21) 1)
	(connected w22 w23) (connected w23 w22)
	(= (distance w22 w23) 1) (= (distance w23 w22) 1)
	(connected w23 w24) (connected w24 w23)
	(= (distance w23 w24) 1) (= (distance w24 w23) 1)
	(connected w24 w25) (connected w25 w24)
	(= (distance w24 w25) 3) (= (distance w25 w24) 1)
	(connected w25 w26) (connected w26 w25)
	(= (distance w25 w26) 2) (= (distance w26 w25) 2)
	(connected w26 w27) (connected w27 w26)
	(= (distance w26 w27) 1) (= (distance w27 w26) 1)
	(connected w27 w28) (connected w28 w27)
	(= (distance w27 w28) 3) (= (distance w28 w27) 2)
	(connected w28 w29) (connected w29 w28)
	(= (distance w28 w29) 3) (= (distance w29 w28) 1)
	(connected w29 w30) (connected w30 w29)
	(= (distance w29 w30) 3) (= (distance w30 w29) 2)
	(connected w30 w31) (connected w31 w30)
	(= (distance w30 w31) 3) (= (distance w31 w30) 3)
	(connected w31 w32) (connected w32 w31)
	(= (distance w31 w32) 3) (= (distance w32 w31) 1)
	(connected w32 w33) (connected w33 w32)
	(= (distance w32 w33) 3) (= (distance w33 w32) 1)
	(connected w33 w34) (connected w34 w33)
	(= (distance w33 w34) 1) (= (distance w34 w33) 1)
	(connected w34 w35) (connected w35 w34)
	(= (distance w34 w35) 1) (= (distance w35 w34) 2)
	(connected w35 w36) (connected w36 w35)
	(= (distance w35 w36) 3) (= (distance w36 w35) 3)
	(connected w36 w37) (connected w37 w36)
	(= (distance w36 w37) 2) (= (distance w37 w36) 3)
	(connected w37 w38) (connected w38 w37)
	(= (distance w37 w38) 3) (= (distance w38 w37) 1)
	(connected w38 w39) (connected w39 w38)
	(= (distance w38 w39) 3) (= (distance w39 w38) 2)
	(connected w39 w40) (connected w40 w39)
	(= (distance w39 w40) 2) (= (distance w40 w39) 2)
	(connected w40 w41) (connected w41 w40)
	(= (distance w40 w41) 2) (= (distance w41 w40) 3)
	(connected w41 w42) (connected w42 w41)
	(= (distance w41 w42) 2) (= (distance w42 w41) 1)
	(connected w42 w43) (connected w43 w42)
	(= (distance w42 w43) 1) (= (distance w43 w42) 2)
	(connected w43 w44) (connected w44 w43)
	(= (distance w43 w44) 2) (= (distance w44 w43) 3)
	(connected w44 w45) (connected w45 w44)
	(= (distance w44 w45) 3) (= (distance w45 w44) 3)
	(connected w45 w46) (connected w46 w45)
	(= (distance w45 w46) 2) (= (distance w46 w45) 3)
	(connected w46 w47) (connected w47 w46)
	(= (distance w46 w47) 3) (= (distance w47 w46) 2)
	(connected w47 w48) (connected w48 w47)
	(= (distance w47 w48) 3) (= (distance w48 w47) 1)
	(connected w48 w49) (connected w49 w48)
	(= (distance w48 w49) 1) (= (distance w49 w48) 3)
	(connected w7 w15) (= (distance w7 w15) 7)
	(connected w15 w27) (= (distance w15 w27) 6)
	(connected w27 w43) (= (distance w27 w43) 7)
	(connected w43 w11) (= (distance w43 w11) 6)
	(connected w11 w13) (= (distance w11 w13) 6)
	(connected w13 w31) (= (distance w13 w31) 7)
	(connected w31 w37) (= (distance w31 w37) 7)
	(connected w37 w1) (= (distance w37 w1) 4)
	(connected w1 w41) (= (distance w1 w41) 7)
	(connected w41 w33) (= (distance w41 w33) 6)
	(connected w33 w3) (= (distance w33 w3) 5)
	(connected w3 w17) (= (distance w3 w17) 4)
	(connected w17 w21) (= (distance w17 w21) 7)
	(connected w21 w39) (= (distance w21 w39) 7)
	(connected w39 w29) (= (distance w39 w29) 4)
	(connected w29 w5) (= (distance w29 w5) 6)
	(connected w5 w9) (= (distance w5 w9) 5)
	(connected w9 w19) (= (distance w9 w19) 7)
	(connected w19 w23) (= (distance w19 w23) 7)
	(at auv0 w0)
	(at auv1 w42)
	(at auv2 w8)
	(at auv3 w44)
	(at auv4 w7)
	(at auv5 w10)
	(at auv6 w46)
	(at auv7 w10)
	(at auv8 w43)
	(at auv9 w49)
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
	(canreach_panel w35 p35)
	(canreach_panel w36 p36)
	(canreach_panel w37 p37)
	(canreach_panel w38 p38)
	(canreach_panel w39 p39)
	(canreach_panel w40 p40)
	(canreach_panel w41 p41)
	(canreach_panel w42 p42)
	(canreach_panel w43 p43)
	(canreach_panel w44 p44)
	(canreach_panel w45 p45)
	(canreach_panel w46 p46)
	(canreach_panel w47 p47)
	(canreach_panel w48 p48)
	(canreach_panel w49 p49)
	(on v0 p0) (on v1 p0) (on v2 p0) (on v3 p0) (on v4 p0) (on v5 p0) (on v6 p0) (on v7 p0) 
	(on v8 p1) (on v9 p1) (on v10 p1) (on v11 p1) (on v12 p1) (on v13 p1) (on v14 p1) (on v15 p1) 
	(on v16 p2) (on v17 p2) (on v18 p2) (on v19 p2) (on v20 p2) (on v21 p2) (on v22 p2) (on v23 p2) 
	(on v24 p3) (on v25 p3) (on v26 p3) (on v27 p3) (on v28 p3) (on v29 p3) (on v30 p3) (on v31 p3) 
	(on v32 p4) (on v33 p4) (on v34 p4) (on v35 p4) (on v36 p4) (on v37 p4) (on v38 p4) (on v39 p4) 
	(on v40 p5) (on v41 p5) (on v42 p5) (on v43 p5) (on v44 p5) (on v45 p5) (on v46 p5) (on v47 p5) 
	(on v48 p6) (on v49 p6) (on v50 p6) (on v51 p6) (on v52 p6) (on v53 p6) (on v54 p6) (on v55 p6) 
	(on v56 p7) (on v57 p7) (on v58 p7) (on v59 p7) (on v60 p7) (on v61 p7) (on v62 p7) (on v63 p7) 
	(on v64 p8) (on v65 p8) (on v66 p8) (on v67 p8) (on v68 p8) (on v69 p8) (on v70 p8) (on v71 p8) 
	(on v72 p9) (on v73 p9) (on v74 p9) (on v75 p9) (on v76 p9) (on v77 p9) (on v78 p9) (on v79 p9) 
	(on v80 p10) (on v81 p10) (on v82 p10) (on v83 p10) (on v84 p10) (on v85 p10) (on v86 p10) (on v87 p10) 
	(on v88 p11) (on v89 p11) (on v90 p11) (on v91 p11) (on v92 p11) (on v93 p11) (on v94 p11) (on v95 p11) 
	(on v96 p12) (on v97 p12) (on v98 p12) (on v99 p12) (on v100 p12) (on v101 p12) (on v102 p12) (on v103 p12) 
	(on v104 p13) (on v105 p13) (on v106 p13) (on v107 p13) (on v108 p13) (on v109 p13) (on v110 p13) (on v111 p13) 
	(on v112 p14) (on v113 p14) (on v114 p14) (on v115 p14) (on v116 p14) (on v117 p14) (on v118 p14) (on v119 p14) 
	(on v120 p15) (on v121 p15) (on v122 p15) (on v123 p15) (on v124 p15) (on v125 p15) (on v126 p15) (on v127 p15) 
	(on v128 p16) (on v129 p16) (on v130 p16) (on v131 p16) (on v132 p16) (on v133 p16) (on v134 p16) (on v135 p16) 
	(on v136 p17) (on v137 p17) (on v138 p17) (on v139 p17) (on v140 p17) (on v141 p17) (on v142 p17) (on v143 p17) 
	(on v144 p18) (on v145 p18) (on v146 p18) (on v147 p18) (on v148 p18) (on v149 p18) (on v150 p18) (on v151 p18) 
	(on v152 p19) (on v153 p19) (on v154 p19) (on v155 p19) (on v156 p19) (on v157 p19) (on v158 p19) (on v159 p19) 
	(on v160 p20) (on v161 p20) (on v162 p20) (on v163 p20) (on v164 p20) (on v165 p20) (on v166 p20) (on v167 p20) 
	(on v168 p21) (on v169 p21) (on v170 p21) (on v171 p21) (on v172 p21) (on v173 p21) (on v174 p21) (on v175 p21) 
	(on v176 p22) (on v177 p22) (on v178 p22) (on v179 p22) (on v180 p22) (on v181 p22) (on v182 p22) (on v183 p22) 
	(on v184 p23) (on v185 p23) (on v186 p23) (on v187 p23) (on v188 p23) (on v189 p23) (on v190 p23) (on v191 p23) 
	(on v192 p24) (on v193 p24) (on v194 p24) (on v195 p24) (on v196 p24) (on v197 p24) (on v198 p24) (on v199 p24) 
	(on v200 p25) (on v201 p25) (on v202 p25) (on v203 p25) (on v204 p25) (on v205 p25) (on v206 p25) (on v207 p25) 
	(on v208 p26) (on v209 p26) (on v210 p26) (on v211 p26) (on v212 p26) (on v213 p26) (on v214 p26) (on v215 p26) 
	(on v216 p27) (on v217 p27) (on v218 p27) (on v219 p27) (on v220 p27) (on v221 p27) (on v222 p27) (on v223 p27) 
	(on v224 p28) (on v225 p28) (on v226 p28) (on v227 p28) (on v228 p28) (on v229 p28) (on v230 p28) (on v231 p28) 
	(on v232 p29) (on v233 p29) (on v234 p29) (on v235 p29) (on v236 p29) (on v237 p29) (on v238 p29) (on v239 p29) 
	(on v240 p30) (on v241 p30) (on v242 p30) (on v243 p30) (on v244 p30) (on v245 p30) (on v246 p30) (on v247 p30) 
	(on v248 p31) (on v249 p31) (on v250 p31) (on v251 p31) (on v252 p31) (on v253 p31) (on v254 p31) (on v255 p31) 
	(on v256 p32) (on v257 p32) (on v258 p32) (on v259 p32) (on v260 p32) (on v261 p32) (on v262 p32) (on v263 p32) 
	(on v264 p33) (on v265 p33) (on v266 p33) (on v267 p33) (on v268 p33) (on v269 p33) (on v270 p33) (on v271 p33) 
	(on v272 p34) (on v273 p34) (on v274 p34) (on v275 p34) (on v276 p34) (on v277 p34) (on v278 p34) (on v279 p34) 
	(on v280 p35) (on v281 p35) (on v282 p35) (on v283 p35) (on v284 p35) (on v285 p35) (on v286 p35) (on v287 p35) 
	(on v288 p36) (on v289 p36) (on v290 p36) (on v291 p36) (on v292 p36) (on v293 p36) (on v294 p36) (on v295 p36) 
	(on v296 p37) (on v297 p37) (on v298 p37) (on v299 p37) (on v300 p37) (on v301 p37) (on v302 p37) (on v303 p37) 
	(on v304 p38) (on v305 p38) (on v306 p38) (on v307 p38) (on v308 p38) (on v309 p38) (on v310 p38) (on v311 p38) 
	(on v312 p39) (on v313 p39) (on v314 p39) (on v315 p39) (on v316 p39) (on v317 p39) (on v318 p39) (on v319 p39) 
	(on v320 p40) (on v321 p40) (on v322 p40) (on v323 p40) (on v324 p40) (on v325 p40) (on v326 p40) (on v327 p40) 
	(on v328 p41) (on v329 p41) (on v330 p41) (on v331 p41) (on v332 p41) (on v333 p41) (on v334 p41) (on v335 p41) 
	(on v336 p42) (on v337 p42) (on v338 p42) (on v339 p42) (on v340 p42) (on v341 p42) (on v342 p42) (on v343 p42) 
	(on v344 p43) (on v345 p43) (on v346 p43) (on v347 p43) (on v348 p43) (on v349 p43) (on v350 p43) (on v351 p43) 
	(on v352 p44) (on v353 p44) (on v354 p44) (on v355 p44) (on v356 p44) (on v357 p44) (on v358 p44) (on v359 p44) 
	(on v360 p45) (on v361 p45) (on v362 p45) (on v363 p45) (on v364 p45) (on v365 p45) (on v366 p45) (on v367 p45) 
	(on v368 p46) (on v369 p46) (on v370 p46) (on v371 p46) (on v372 p46) (on v373 p46) (on v374 p46) (on v375 p46) 
	(on v376 p47) (on v377 p47) (on v378 p47) (on v379 p47) (on v380 p47) (on v381 p47) (on v382 p47) (on v383 p47) 
	(on v384 p48) (on v385 p48) (on v386 p48) (on v387 p48) (on v388 p48) (on v389 p48) (on v390 p48) (on v391 p48) 
	(on v392 p49) (on v393 p49) (on v394 p49) (on v395 p49) (on v396 p49) (on v397 p49) (on v398 p49) (on v399 p49) 
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
	(valve_free v150)
	(valve_free v151)
	(valve_free v152)
	(valve_free v153)
	(valve_free v154)
	(valve_free v155)
	(valve_free v156)
	(valve_free v157)
	(valve_free v158)
	(valve_free v159)
	(valve_free v160)
	(valve_free v161)
	(valve_free v162)
	(valve_free v163)
	(valve_free v164)
	(valve_free v165)
	(valve_free v166)
	(valve_free v167)
	(valve_free v168)
	(valve_free v169)
	(valve_free v170)
	(valve_free v171)
	(valve_free v172)
	(valve_free v173)
	(valve_free v174)
	(valve_free v175)
	(valve_free v176)
	(valve_free v177)
	(valve_free v178)
	(valve_free v179)
	(valve_free v180)
	(valve_free v181)
	(valve_free v182)
	(valve_free v183)
	(valve_free v184)
	(valve_free v185)
	(valve_free v186)
	(valve_free v187)
	(valve_free v188)
	(valve_free v189)
	(valve_free v190)
	(valve_free v191)
	(valve_free v192)
	(valve_free v193)
	(valve_free v194)
	(valve_free v195)
	(valve_free v196)
	(valve_free v197)
	(valve_free v198)
	(valve_free v199)
	(valve_free v200)
	(valve_free v201)
	(valve_free v202)
	(valve_free v203)
	(valve_free v204)
	(valve_free v205)
	(valve_free v206)
	(valve_free v207)
	(valve_free v208)
	(valve_free v209)
	(valve_free v210)
	(valve_free v211)
	(valve_free v212)
	(valve_free v213)
	(valve_free v214)
	(valve_free v215)
	(valve_free v216)
	(valve_free v217)
	(valve_free v218)
	(valve_free v219)
	(valve_free v220)
	(valve_free v221)
	(valve_free v222)
	(valve_free v223)
	(valve_free v224)
	(valve_free v225)
	(valve_free v226)
	(valve_free v227)
	(valve_free v228)
	(valve_free v229)
	(valve_free v230)
	(valve_free v231)
	(valve_free v232)
	(valve_free v233)
	(valve_free v234)
	(valve_free v235)
	(valve_free v236)
	(valve_free v237)
	(valve_free v238)
	(valve_free v239)
	(valve_free v240)
	(valve_free v241)
	(valve_free v242)
	(valve_free v243)
	(valve_free v244)
	(valve_free v245)
	(valve_free v246)
	(valve_free v247)
	(valve_free v248)
	(valve_free v249)
	(valve_free v250)
	(valve_free v251)
	(valve_free v252)
	(valve_free v253)
	(valve_free v254)
	(valve_free v255)
	(valve_free v256)
	(valve_free v257)
	(valve_free v258)
	(valve_free v259)
	(valve_free v260)
	(valve_free v261)
	(valve_free v262)
	(valve_free v263)
	(valve_free v264)
	(valve_free v265)
	(valve_free v266)
	(valve_free v267)
	(valve_free v268)
	(valve_free v269)
	(valve_free v270)
	(valve_free v271)
	(valve_free v272)
	(valve_free v273)
	(valve_free v274)
	(valve_free v275)
	(valve_free v276)
	(valve_free v277)
	(valve_free v278)
	(valve_free v279)
	(valve_free v280)
	(valve_free v281)
	(valve_free v282)
	(valve_free v283)
	(valve_free v284)
	(valve_free v285)
	(valve_free v286)
	(valve_free v287)
	(valve_free v288)
	(valve_free v289)
	(valve_free v290)
	(valve_free v291)
	(valve_free v292)
	(valve_free v293)
	(valve_free v294)
	(valve_free v295)
	(valve_free v296)
	(valve_free v297)
	(valve_free v298)
	(valve_free v299)
	(valve_free v300)
	(valve_free v301)
	(valve_free v302)
	(valve_free v303)
	(valve_free v304)
	(valve_free v305)
	(valve_free v306)
	(valve_free v307)
	(valve_free v308)
	(valve_free v309)
	(valve_free v310)
	(valve_free v311)
	(valve_free v312)
	(valve_free v313)
	(valve_free v314)
	(valve_free v315)
	(valve_free v316)
	(valve_free v317)
	(valve_free v318)
	(valve_free v319)
	(valve_free v320)
	(valve_free v321)
	(valve_free v322)
	(valve_free v323)
	(valve_free v324)
	(valve_free v325)
	(valve_free v326)
	(valve_free v327)
	(valve_free v328)
	(valve_free v329)
	(valve_free v330)
	(valve_free v331)
	(valve_free v332)
	(valve_free v333)
	(valve_free v334)
	(valve_free v335)
	(valve_free v336)
	(valve_free v337)
	(valve_free v338)
	(valve_free v339)
	(valve_free v340)
	(valve_free v341)
	(valve_free v342)
	(valve_free v343)
	(valve_free v344)
	(valve_free v345)
	(valve_free v346)
	(valve_free v347)
	(valve_free v348)
	(valve_free v349)
	(valve_free v350)
	(valve_free v351)
	(valve_free v352)
	(valve_free v353)
	(valve_free v354)
	(valve_free v355)
	(valve_free v356)
	(valve_free v357)
	(valve_free v358)
	(valve_free v359)
	(valve_free v360)
	(valve_free v361)
	(valve_free v362)
	(valve_free v363)
	(valve_free v364)
	(valve_free v365)
	(valve_free v366)
	(valve_free v367)
	(valve_free v368)
	(valve_free v369)
	(valve_free v370)
	(valve_free v371)
	(valve_free v372)
	(valve_free v373)
	(valve_free v374)
	(valve_free v375)
	(valve_free v376)
	(valve_free v377)
	(valve_free v378)
	(valve_free v379)
	(valve_free v380)
	(valve_free v381)
	(valve_free v382)
	(valve_free v383)
	(valve_free v384)
	(valve_free v385)
	(valve_free v386)
	(valve_free v387)
	(valve_free v388)
	(valve_free v389)
	(valve_free v390)
	(valve_free v391)
	(valve_free v392)
	(valve_free v393)
	(valve_free v394)
	(valve_free v395)
	(valve_free v396)
	(valve_free v397)
	(valve_free v398)
	(valve_free v399)
	(= (distanceCost) 0)
)

(:goal (and
	(valve_goal_completed v99)
	(valve_goal_completed v331)
	(valve_goal_completed v58)
	(valve_goal_completed v154)
	(valve_goal_completed v353)
	(valve_goal_completed v1)
	(valve_goal_completed v52)
	(valve_goal_completed v13)
	(valve_goal_completed v169)
	(valve_goal_completed v366)
	(valve_goal_completed v0)
	(valve_goal_completed v136)
	(valve_goal_completed v379)
	(valve_goal_completed v318)
	(valve_goal_completed v69)
	(valve_goal_completed v75)
	(valve_goal_completed v42)
	(valve_goal_completed v361)
	(valve_goal_completed v3)
	(valve_goal_completed v256)
	(valve_goal_completed v255)
	(valve_goal_completed v217)
	(valve_goal_completed v158)
	(valve_goal_completed v105)
	(valve_goal_completed v307)
	(valve_goal_completed v348)
	(valve_goal_completed v198)
	(valve_goal_completed v213)
	(valve_goal_completed v103)
	(valve_goal_completed v370)
	(valve_goal_completed v309)
	(valve_goal_completed v385)
	(valve_goal_completed v393)
	(valve_goal_completed v159)
	(valve_goal_completed v390)
	(valve_goal_completed v308)
	(valve_goal_completed v298)
	(valve_goal_completed v225)
	(valve_goal_completed v271)
	(valve_goal_completed v326)
	(valve_goal_completed v57)
	(valve_goal_completed v290)
	(valve_goal_completed v359)
	(valve_goal_completed v8)
	(valve_goal_completed v223)
	(valve_goal_completed v115)
	(valve_goal_completed v139)
	(valve_goal_completed v338)
	(valve_goal_completed v10)
	(valve_goal_completed v102)
	(valve_goal_completed v162)
	(valve_goal_completed v387)
	(valve_goal_completed v29)
	(valve_goal_completed v170)
	(valve_goal_completed v92)
	(valve_goal_completed v62)
	(valve_goal_completed v117)
	(valve_goal_completed v321)
	(valve_goal_completed v168)
	(valve_goal_completed v121)
	(valve_goal_completed v248)
	(valve_goal_completed v294)
	(valve_goal_completed v126)
	(valve_goal_completed v17)
	(valve_goal_completed v207)
	(valve_goal_completed v227)
	(valve_goal_completed v12)
	(valve_goal_completed v252)
	(valve_goal_completed v306)
	(valve_goal_completed v119)
	(valve_goal_completed v201)
	(valve_goal_completed v345)
	(valve_goal_completed v206)
	(valve_goal_completed v191)
	(valve_goal_completed v222)
	(valve_goal_completed v229)
	(valve_goal_completed v11)
	(valve_goal_completed v129)
	(valve_goal_completed v27)
	(valve_goal_completed v155)
	(valve_goal_completed v87)
	(valve_goal_completed v209)
	(valve_goal_completed v165)
	(valve_goal_completed v97)
	(valve_goal_completed v166)
	(valve_goal_completed v20)
	(valve_goal_completed v84)
	(valve_goal_completed v388)
	(valve_goal_completed v274)
	(valve_goal_completed v21)
	(valve_goal_completed v181)
	(valve_goal_completed v243)
	(valve_goal_completed v185)
	(valve_goal_completed v395)
	(valve_goal_completed v54)
	(valve_goal_completed v247)
	(valve_goal_completed v267)
	(valve_goal_completed v45)
	(valve_goal_completed v272)
	(valve_goal_completed v49)
	(valve_goal_completed v38)
	(valve_goal_completed v25)
	(valve_goal_completed v210)
	(valve_goal_completed v138)
	(valve_goal_completed v341)
	(valve_goal_completed v93)
	(valve_goal_completed v176)
	(valve_goal_completed v275)
	(valve_goal_completed v204)
	(valve_goal_completed v367)
	(valve_goal_completed v26)
	(valve_goal_completed v148)
	(valve_goal_completed v19)
	(valve_goal_completed v278)
	(valve_goal_completed v4)
	(valve_goal_completed v253)
	(valve_goal_completed v111)
	(valve_goal_completed v288)
	(valve_goal_completed v140)
	(valve_goal_completed v251)
	(valve_goal_completed v270)
	(valve_goal_completed v310)
	(valve_goal_completed v90)
	(valve_goal_completed v316)
	(valve_goal_completed v205)
	(valve_goal_completed v96)
	(valve_goal_completed v74)
	(valve_goal_completed v88)
	(valve_goal_completed v143)
	(valve_goal_completed v386)
	(valve_goal_completed v36)
	(valve_goal_completed v104)
	(valve_goal_completed v39)
	(valve_goal_completed v244)
	(valve_goal_completed v14)
	(valve_goal_completed v240)
	(valve_goal_completed v277)
	(valve_goal_completed v160)
	(valve_goal_completed v218)
	(valve_goal_completed v376)
	(valve_goal_completed v334)
	(valve_goal_completed v224)
	(valve_goal_completed v202)
	(valve_goal_completed v317)
	(valve_goal_completed v261)
	(valve_goal_completed v33)
	(valve_goal_completed v23)
	(valve_goal_completed v40)
	(valve_goal_completed v291)
	(valve_goal_completed v246)
	(valve_goal_completed v112)
	(valve_goal_completed v157)
	(valve_goal_completed v279)
	(valve_goal_completed v123)
	(valve_goal_completed v86)
	(valve_goal_completed v398)
	(valve_goal_completed v320)
	(valve_goal_completed v392)
	(valve_goal_completed v34)
	(valve_goal_completed v22)
	)
)

(:metric minimize (distanceCost))
)