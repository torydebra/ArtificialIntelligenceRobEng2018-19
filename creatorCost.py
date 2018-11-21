#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Sep 14 11:03:58 2018

@author: tori, fafux
"""

import random
import math

# Parameter 1:
# Number of auvs
#n_auv = [1,2]

# Parameter 2:
# Number of waypoints (the number of the panels is the same).
#n_waypoint = [20]


# Parameter 3:
# Number of valves on each panel.
#n_valve = [4,5]

#Percentage of valve to turn
_percentageValveGoal_ = 0.4

#Percentage of not consecutive waypoint connected 
_percentageConnected_ = 0.4


def save_file(out, n_auv, n_waypoint, n_valve):
    filename = "problemsCost/problemPandoraCost-"+str(n_auv)+"auv-"+str(n_waypoint)+"waypoint-"+str(n_valve)+"valve.pddl"
    with open(filename, "w") as f:
        f.write(out)


def generate_problem(n_auv, n_waypoint, n_valve):
    
    n_panel = n_waypoint

    #define
    out = """(define (problem valve_turning-task)
    (:domain pandora)
    
    (:objects\n"""
    
    auv = "\t"
    for i in range(n_auv):
        auv += "auv" + str(i) + " "
    
    auv += " - vehicle\n"
    out += auv
    
    
    way = "\t"
    for i in range(n_waypoint):
        way += "w" + str(i) + " "
    

    way += " - waypoint\n"
    out += way
    
    
    pan = "\t"
    for i in range(n_panel):
        pan += "p" + str(i) + " "
    
    pan += " - panel\n"
    out += pan
    
    
    val = "\t"
    for i in range(n_valve*n_panel):
        val += "v" + str(i) + " "
    
    val += " - valve\n"
    out += val 
    
      
    out += ")\n\n(:init\n"
    
    #Connections
    # 1 connected to 2;  2 connected to 3 ....
    con = ""
    for i in range(n_waypoint-1):
        con += "\t(connected w" + str(i) + " w" + str(i+1) + ") " + "(connected w" + str(i+1) + " w" + str(i) + ")\n" + \
                "\t(= (distance w"+ str(i) + " w" + str(i+1) +") " + str(random.choice(range(1,4))) +") " + \
                "(= (distance w"+ str(i+1) + " w" + str(i) +") " + str(random.choice(range(1,4))) +")\n" 
    
    out += con
    
    #Other random connections
    rndWay = list(range(n_waypoint))
    rndWay = rndWay[1::2]
    waySelected = math.ceil(_percentageConnected_*n_waypoint)
    wayList = random.sample(rndWay,  waySelected)
    con = ""
    for i in range(waySelected-1):
        con += "\t(connected w" + str(wayList[i]) + " w" + str(wayList[i+1]) + ") " + \
               "(= (distance w"+ str(wayList[i]) + " w" + str(wayList[i+1]) +") " + str(random.choice(range(4,8))) +")\n"
   
    out += con
    
    
    #At auv in waypoint
    #each auv start from random waypoint
    at = ""
    for i in range(n_auv):
        at += "\t(at auv" + str(i) + " w" + str(random.choice(range(n_waypoint))) + ")\n"
        
    out += at
    
    
    #Illuminations
    illum = ""
    for i in range(n_auv):   
        illum += "\t(not_illuminating auv" + str(i) +")\n"
        
    out += illum
    
    
    #Reaching
    reach = ""
    for i in range(n_waypoint):
        reach += "\t(canreach_panel w"+ str(i)+" p" + str(i) + ")\n"
        
    out += reach
    
    
    #On valve on panel
    on = ""
    for j in range(n_panel):
        on += "\t"
        for i in range(j*n_valve, (j*n_valve) + n_valve):
            on += "(on v" + str(i) + " p" + str(j) +") "
        
        on += "\n"
        
    out += on
    

    #Valve free to be operated
    free = ""
    for i in range(n_valve*n_panel):
        free += "\t(valve_free v" + str(i) +")\n"
    
    out += free
        
    out += "\t(= (distanceCost) 0)\n)\n\n(:goal (and\n"
    
    
    #Goals
    totGoals = list(range(n_valve*n_panel))
    goalSelected = math.ceil(_percentageValveGoal_*n_valve*n_panel)
    goalchosen = random.sample(totGoals, goalSelected)
    
    comp = ""
    for i in goalchosen:
        comp += "\t(valve_goal_completed v" + str(i) +")\n"
    
    comp += "\t)"
    out += comp
    
    out += "\n)\n\n(:metric minimize (distanceCost))\n)"
            
    save_file(out, n_auv, n_waypoint, n_valve)
    

minmaxAuv = input('Insert auvs number for each problem: (n1 n2 n3 ...): ')
minmaxWay = input('Insert waypoints number for each problem: (n1 n2 n3 ...): ')
minmaxVal = input('Insert valves number on each panel for each problem: (n1 n2 n3 ...): ')

n_auv = [int(i) for i in minmaxAuv.split()]
n_waypoint = [int(i) for i in minmaxWay.split()]
n_valve = [int(i) for i in minmaxVal.split()]
 
for i in n_auv:
    for j in n_waypoint:
        for k in n_valve:
            generate_problem(i,j,k) 