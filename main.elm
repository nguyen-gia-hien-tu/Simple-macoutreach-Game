myShapes model = [ initialBackground
                 , case model.state of
                     -- Start --
                     Start -> group 
                              [ soap (-50, -20)
                              , text "Instruction: Choose the best answer in each question."
                                  |> filled black
                                  |> scale 0.6
                                  |> move (-80, 30)
                              , text "Human will win if you get more right answer"
                                  |> filled black
                                  |> scale 0.6
                                  |> move (-45, 20)
                              , text " than the wrong ones"
                                  |> filled black
                                  |> scale 0.6
                                  |> move (-45, 10)
                              , rect 28 12
                                  |> filled blue
                                  |> move (11, -6)
                                  |> notifyTap (GoToQuestion 1)
                              , text "Start"
                                  |> filled red
                                  |> move (0, -9)
                                  |> notifyTap (GoToQuestion 1)
                              ]
                     -- Question 1 --         
                     Question 1 -> group 
                                  [ soap (-50, -20)
                                  , text "Question 1"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "For at least how long do we have to wash our hands"
                                      |> filled black
                                      |> move (-120, 45)
                                      |> scale 0.7
                                  , text "to prevent the spread of the virus?"
                                      |> filled black
                                      |> move (-70, 30)
                                      |> scale 0.7
                                  , text "A. 10s"
                                      |> filled black
                                      |> move (-70, 10)
                                      |> scale 0.65
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. 20s"
                                      |> filled black
                                      |> move (-20, 10)
                                      |> scale 0.65
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. Don't wash your hands"
                                      |> filled black
                                      |> move (20, 10)
                                      |> scale 0.65
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  ]
                                  
                     SoapToVirus 1 -> soapToVir 50 15 (-11, 10) "Question 2"  (GoToQuestion 2)                 
                     VirusToHuman 1 -> virusToHomo 50 15 (-11, 10) "Question 2" (GoToQuestion 2)
                            
                     -- Question 2 --
                     Question 2 -> group
                                  [ soap (-50, -20)
                                  , text "Question 2"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What is the official name of the virus?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-60, 30)
                                  , text "A. COVID-19"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-40, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. SARS-CoV-2"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (20, 10)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  ]
                     SoapToVirus 2 -> soapToVir 50 15 (-11, 10) "Question 3" (GoToQuestion 3)
                     VirusToHuman 2 -> virusToHomo 50 15 (-11, 10) "Question 3" (GoToQuestion 3)
                     
                     -- Question 3 --
                     Question 3 -> group
                                  [ soap (-50, -20)
                                  , text "Question 3"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Where is the origin of the virus?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-50, 30)
                                  , text "A. Canada"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. England"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (0, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. China"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (50, 10)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  ]
                     SoapToVirus 3 -> soapToVir 50 15 (-11, 10) "Question 4" (GoToQuestion 4)
                     VirusToHuman 3 -> virusToHomo 50 15 (-11, 10) "Question 4" (GoToQuestion 4)
                     
                     
                    -- Question 4 --
                     Question 4 -> group
                                  [ soap (-50, -20)
                                  , text "Question 4"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How close should you stand with a stranger?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-80, 30)
                                  , text "C. At least 1 metre"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (25, 10)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "A. 80cm"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. 50cm"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-10, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  
                                  ]
                     SoapToVirus 4 -> soapToVir 50 15 (-11, 10) "Question 5" (GoToQuestion 5)
                     VirusToHuman 4 -> virusToHomo 50 15 (-11, 10) "Question 5" (GoToQuestion 5)
                     
                     -- Question 5 --
                     Question 5 -> group
                                  [ soap (-50, -20)
                                  , text "Question 5"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How should you not press the elevator button?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-85, 30)
                                  , text "D. With hands"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (25, 0)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "A. With elbows"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-45, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. With sleeves"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-45, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , text "B. With tools"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (25, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  
                                  ]
                     SoapToVirus 5 -> soapToVir 50 15 (-11, 10) "Question 6" (GoToQuestion 6)
                     VirusToHuman 5 -> virusToHomo 50 15 (-11, 10) "Question 6" (GoToQuestion 6)
                     
                     -- Question 6 --
                     Question 6 -> group
                                  [ soap (-50, -20)
                                  , text "Question 6"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How should you sneeze or cough?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-50, 30)
                                  , text "B. Into elbow"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 15)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. Into the air"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Into your hands"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                      , text "A. Into someones face"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  
                                  ]
                     SoapToVirus 6 -> soapToVir 50 15 (-11, 10) "Question 7" (GoToQuestion 7)
                     VirusToHuman 6 -> virusToHomo 50 15 (-11, 10) "Question 7" (GoToQuestion 7)
                     
                     -- Question 7 --
                     Question 7 -> group
                                  [ soap (-50, -20)
                                  , text "Question 7"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "If you become ill what should you not do?"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-50, 30)
                                  , text "B. Stay home"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (55, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Drink plenty of fluids"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (-50, 5)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Get rest"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (55, 5)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "A. Go out and use public transport"
                                      |> filled black
                                      |> scale 0.6
                                      |> move (-50, 15)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  
                                  ]
                     SoapToVirus 7 -> soapToVir 50 15 (-11, 10) "Question 8" (GoToQuestion 8)
                     VirusToHuman 7 -> virusToHomo 50 15 (-11, 10) "Question 8" (GoToQuestion 8)
                     
                     -- Question 8 --
                     Question 8 -> group
                                  [ soap (-50, -20)
                                  , text "Question 8"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What part of your body should you wash"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-60, 35)
                                  , text "wash when you come back from somewhere?"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-70, 25)
                                  , text "A. Both face and hands"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (-40, 10)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. Face"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (-40, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. None"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (40, 10)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Hands"
                                      |> filled black
                                      |> scale 0.65
                                      |> move (40, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus                                                                
                                  ]
                     SoapToVirus 8-> soapToVir 50 15 (-11, 10) "Question 9" (GoToQuestion 9)
                     VirusToHuman 8 -> virusToHomo 50 15 (-11, 10) "Question 9" (GoToQuestion 9)
                     
                     -- Question 9 --         
                     Question 9 -> group
                                  [ soap (-50, -20)
                     
                                  , text "Question 9"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What kind of hand sanitizer should you use"
                                      |> filled black
                                      |> move (-90, 45)
                                      |> scale 0.7
                                  , text "if soap and water are not available?"
                                      |> filled black
                                      |> move (-70, 30)
                                      |> scale 0.7                                   
                                  , text "A. Alcohol-based "
                                      |> filled black
                                      |> move (-55, 5)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. Any kind"
                                      |> filled black
                                      |> move (50, 5)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus     ]       
                                 

                     SoapToVirus 9 -> soapToVir 50 15 (-13, 10) "Question 10" (GoToQuestion 10)
                     VirusToHuman 9 -> virusToHomo 50 15 (-13, 10) "Question 10" (GoToQuestion 10)

                     -- Question 10 --
                     Question 10 -> group
                                  [ soap (-50, -20)
                                  , text "Question 10"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What percent of alcohol kills coronavirus?"
                                      |> filled black
                                      |> scale 0.8
                                      |> move (-75, 30)
                                  , text "C. At least 60%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-40, 0)
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. 25%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. 50%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (30, 0)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "A. 0%"
                                      |> filled black
                                      |> scale 0.7
                                      |> move (-40, 15)
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  
                                  ]
                     SoapToVirus 10 -> soapToVir 50 15 (-13, 10) "Question 11" (GoToQuestion 11)
                     VirusToHuman 10 -> virusToHomo 50 15 (-13, 10) "Question 11" (GoToQuestion 11)


                     -- Question 11 --         
                     Question 11 -> group
                                  [ soap (-50, -20)
                                  , text "Question 11"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Should you wash your hands even though"
                                      |> filled black
                                      |> move (-80, 45)
                                      |> scale 0.7
                                  , text "they don't look dirty?"
                                      |> filled black
                                      |> move (-30, 30)
                                      |> scale 0.7
                                     
                                  , text "A. Yes"
                                      |> filled black
                                      |> move (-40, 5)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. No"
                                      |> filled black
                                      |> move (40, 5)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  ]

                     SoapToVirus 11 -> soapToVir 50 15 (-13, 10) "Question 12" (GoToQuestion 12)
                     VirusToHuman 11 -> virusToHomo 50 15 (-13, 10) "Question 12" (GoToQuestion 12)



                     -- Question 12 --         
                     Question 12 -> group
                                  [ soap (-50, -20)
                     
                                  , text "Question 12"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Have there been cases of COVID-19 before 2019?"
                                      |> filled black
                                      |> move (-110, 40)
                                      |> scale 0.7                                    
                                  , text "A. Yes"
                                      |> filled black
                                      |> move (-50, 15)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. No, it is a novel coronavirus"
                                      |> filled black
                                      |> move (-50, 0)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap]


                     SoapToVirus 12 -> soapToVir 50 15 (-13, 10) "Question 13" (GoToQuestion 13)
                     VirusToHuman 12 -> virusToHomo 50 15 (-13, 10) "Question 13" (GoToQuestion 13)




                     -- Question 13 --         
                     Question 13 -> group
                                  [ soap (-50, -20)
                     
                                  , text "Question 13"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What should you do if you are a traveller?"
                                      |> filled black
                                      |> move (-80, 40)
                                      |> scale 0.7                                     
                                  , text "A. Eat raw or undercooked food and meat"
                                      |> filled black
                                      |> move (-80, 30)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Avoid close contact with people who may be sick "
                                      |> filled black
                                      |> move (-80, 10)
                                      |> scale 0.5
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. Go to areas such as farms"
                                      |> filled black
                                      |> move (-80, -10)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Never wash your hand"
                                      |> filled black
                                      |> move (-80, -30)
                                      |> scale 0.5
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowVirus]
                   

                     SoapToVirus 13 -> soapToVir 50 15 (-13, 10) "Question 14" (GoToQuestion 14)
                     VirusToHuman 13 -> virusToHomo 50 15 (-13, 10) "Question 14" (GoToQuestion 14)



                     -- Question 14 --                           
                     Question 14 -> group
                                  [ soap (-50, -20)   
                     
                                  , text "Question 14"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "At what temperature of water should we wash our hands?"
                                      |> filled black
                                      |> move (-130, 40)
                                      |> scale 0.7                                    
                                  , text "A. Hot"
                                      |> filled black
                                      |> move (-50, 10)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Cold"
                                      |> filled black
                                      |> move (0, 10)
                                      |> scale 0.7
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Warm"
                                      |> filled black
                                      |> move (50, 10)
                                      |> scale 0.7
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  ]

                     SoapToVirus 14 -> soapToVir 50 15 (-13, 10) "Question 15" (GoToQuestion 15)
                     VirusToHuman 14 -> virusToHomo 50 15 (-13, 10) "Question 15" (GoToQuestion 15)

                     -- Question 15 --         
                     Question 15 -> group
                                  [ soap (-50, -20)
                                  , text "Question 15"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "As of March 2020, how is coronavirus treated?"
                                      |> filled black
                                      |> move (-100, 50)
                                      |> scale 0.7                                     
                                  , text "A. With vaccine"
                                      |> filled black
                                      |> move (-75, 35)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. There is currently no vaccine or treatment,"
                                      |> filled black
                                      |> move (-75, 15)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " C. Symptoms usually go away on their own"
                                      |> filled black
                                      |> move (-75, -5)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " D. Both B and C"
                                      |> filled black
                                      |> move (-75, -25)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  ]


                     SoapToVirus 15 -> soapToVir 50 15 (-13, 10) "Question 16" (GoToQuestion 16)
                     VirusToHuman 15 -> virusToHomo 50 15 (-13, 10) "Question 16" (GoToQuestion 16)

                     -- Question 16 --         
                     Question 16-> group
                                  [ soap (-50, -20)
                     
                                  , text "Question 16"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How does the coronavirus spread?"
                                      |> filled black
                                      |> move (-50, 40)
                                      |> scale 0.7                                    
                                  , text "A. From person to person through close contact"
                                      |> filled black
                                      |> move (-70, 20)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. It spreads over long distance"
                                      |> filled black
                                      |> move (-70, 0)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. It does not spread"
                                      |> filled black
                                      |> move (-70, -20)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus ]

                     SoapToVirus 16 -> soapToVir 50 15 (-13, 10) "Question 17" (GoToQuestion 17)
                     VirusToHuman 16 -> virusToHomo 50 15 (-13, 10) "Question 17" (GoToQuestion 17)

                     -- Question 17 --         
                     Question 17 -> group
                                  [ soap (-50, -20)
                                  , text "Question 17"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Which one of the following is not a symptom of coronavirus?"
                                      |> filled black
                                      |> move (-140, 50)
                                      |> scale 0.6                                    
                                  , text "A. Fever"
                                      |> filled black
                                      |> move (-50, 30)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Pneumonia in both lungs"
                                      |> filled black
                                      |> move (-50, 10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Difficulty breathing"
                                      |> filled black
                                      |> move (-50, -10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. Nose bleeding"
                                      |> filled black
                                      |> move (-50, -30)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap  ]

                     SoapToVirus 17 -> soapToVir 50 15 (-13, 10) "Question 18" (GoToQuestion 18)
                     VirusToHuman 17 -> virusToHomo 50 15 (-13, 10) "Question 18" (GoToQuestion 18)

                    -- Question 18 --        
                     Question 18 -> group
                                  [ soap (-50, -20)                      
                                  , text "Question 18"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How often should you touch your face unnecessarily?"
                                      |> filled black
                                      |> move (-130, 50)
                                      |> scale 0.7                                    
                                  , text "A. Never"
                                      |> filled black
                                      |> move (-50, 30)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "B. Once per hour "
                                      |> filled black
                                      |> move (-50, 10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. 5 times per hour"
                                      |> filled black
                                      |> move (-50, -10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. 20 times per hour "
                                      |> filled black
                                      |> move (-50, -30)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus 
                                  ]

                     SoapToVirus 18 -> soapToVir 50 15 (-13, 10) "Question 19" (GoToQuestion 19)
                     VirusToHuman 18 -> virusToHomo 50 15 (-13, 10) "Question 19" (GoToQuestion 19)

                     -- Question 19 --        
                     Question 19 -> group
                                  [ soap (-50, -20) 
                     
                                  , text "Question 19"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "How many days should you be self-isolating if you have been to"
                                      |> filled black
                                      |> move (-150, 50)
                                      |> scale 0.6
                                      
                                  , text "a country that has high risk of infection?"
                                      |> filled black
                                      |> move (-80, 35)
                                      |> scale 0.6
                                     
                                  , text "A. 24 hours"
                                      |> filled black
                                      |> move (-70, 20)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. 14 days "
                                      |> filled black
                                      |> move (-70, 0)
                                      |> scale 0.5
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  , text "C. One month"
                                      |> filled black
                                      |> move (-70, -20)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. 3 hours "
                                      |> filled black
                                      |> move (-70, -40)
                                      |> scale 0.5
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus  ]

                     SoapToVirus 19 -> soapToVir 50 15 (-13, 10) "Question 20" (GoToQuestion 20)
                     VirusToHuman 19 -> virusToHomo 50 15 (-13, 10) "Question 20" (GoToQuestion 20)

                     -- Question 20 --       
                     Question 20 -> group
                                  [ soap (-50, -20)  
                     
                                  , text "Question 20"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "What are the steps that you should do to wash your hands?"
                                      |> filled black
                                      |> move (-140, 50)
                                      |> scale 0.65                                  
                                  , text "A. Wet your hands, apply soap"
                                      |> filled black
                                      |> move (-85, 25)
                                      |> scale 0.52
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. Lather your hands, including the backs,fingers,nails"
                                      |> filled black
                                      |> move (-85, 5)
                                      |> scale 0.52
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Scrub for at least 20 seconds, rinse"
                                      |> filled black
                                      |> move (-85, -15)
                                      |> scale 0.52
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "D. All of the above "
                                      |> filled black
                                      |> move (-85, -35)
                                      |> scale 0.52
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap 
                                  ]

                     SoapToVirus 20 -> soapToVir 50 15 (-13, 10) "Question 21" (GoToQuestion 21)
                     VirusToHuman 20 -> virusToHomo 50 15 (-13, 10) "Question 21" (GoToQuestion 21)

                     -- Question 21 --                              
                     Question 21 -> group
                                  [ soap (-50, -20)
                                  , text "Question 21"
                                      |> filled red
                                      |> move (-10, 50)
                                  , text "Who is at a higher risk of getting severe illness from COVID-19?"
                                      |> filled black
                                      |> move (-155, 55)
                                      |> scale 0.6
                                  , text "A. Older Adults"
                                      |> filled black
                                      |> move (-70, 30)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "B. People who have serious chronic medical"
                                      |> filled black
                                      |> move (-70, 10)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " conditions like heart disease, diabletes,"
                                      |> filled black
                                      |> move (-60, -5)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text " lung disease"
                                      |> filled black
                                      |> move (-60, -20)
                                      |> scale 0.6
                                      |> notifyTap DecHumanHealth
                                      |> notifyTap ThrowVirus
                                  , text "C. Both A and B"
                                      |> filled black
                                      |> move (-70, -35)
                                      |> scale 0.6
                                      |> notifyTap DecVirusHealth
                                      |> notifyTap ThrowSoap
                                  ]

                     SoapToVirus 21 -> soapToVir 30 15 (-2, 10) "Result" GoToResult
                     VirusToHuman 21 -> virusToHomo 30 15 (-2, 10) "Result" GoToResult

                     -- Result --
                     Result -> group
                               [ text "RESULT"
                                   |> filled red
                                   |> move (-5, 50)
                               -- , whoWins model.humanHealth model.virusHealth model.time model.score
                               , whoWins model
                               ]
                     otherwise -> group[]
                   
                 ]
                 
-- Auxiliary Result Function
whoWins model = 
         if (model.humanHealth > model.virusHealth) 
         then
              group 
              [ text "YAY! HUMAN WINS :)"
                  |> filled red
                  |> move (-55, 10)
                  |> move (20 * sin (2 * model.time), 10)
              , text ("SCORE: " ++ (Debug.toString (model.score)) ++ "/21")
                 |> filled black
                 |> scale 0.7
                 |> move (-20, 10)
              , rect 40 12
                  |> filled blue
                  |> move (11, -6)
                  |> notifyTap GoToStart
              , text "Play Again"
                  |> filled red
                  |> scale 0.7
                  |> move (-8, -8)
                  |> notifyTap GoToStart
              ]
         else if (model.humanHealth < model.virusHealth)
         then 
             group
             [ text "OH NO! VIRUS WINS :("
                 |> filled red
                 |> move (-55, 10)
                 |> move (20 * sin (2 * model.time), 10)
             , text ("SCORE: " ++ (Debug.toString (model.score)) ++ "/21")
                 |> filled black
                 |> scale 0.7
                 |> move (-20, 10)
             , rect 40 12
                  |> filled blue
                  |> move (11, -6)
                  |> notifyTap GoToStart
              , text "Play Again"
                  |> filled red
                  |> scale 0.7
                  |> move (-8, -8)
                  |> notifyTap GoToStart
             ]
         else
             group[]

-- Auxiliary Functions
soapToVir width height (x,y) numQues goto = group
                                           [ soap (60, -10)
                                           , rect width height
                                                |> filled blue
                                                |> move (10, 12)
                                                |> notifyTap goto
                                           , text numQues
                                                |> filled red
                                                |> scale 0.8
                                                |> move (x,y)
                                                |> notifyTap goto
                                           ]

virusToHomo width height (x,y) numQues goto = group
                                             [ coronaVirus  
                                                  |> scale 0.08
                                                  |> move (-60, 10)
                                             , coronaVirus  
                                                  |> scale 0.08
                                                  |> move (-65, 5)
                                             , coronaVirus  
                                                  |> scale 0.08
                                                  |> move (-55, 5)
                                             , coronaVirus  
                                                  |> scale 0.08
                                                  |> move (-55, 0)
                                             , coronaVirus  
                                                  |> scale 0.08
                                                  |> move (-62, 1)
                                             , coronaVirus  
                                                  |> scale 0.08
                                                  |> move (-60, -5)
                                             , rect width height
                                                  |> filled blue
                                                  |> move (10, 12)
                                                  |> notifyTap goto
                                             , text numQues
                                                  |> filled red
                                                  |> scale 0.8
                                                  |> move (x,y)    
                                                  |> notifyTap goto
                                             ]
                           
finalResult numQues goto = group
                           [ rect 40 15 
                                |> filled blue
                                |> move (10, 12)
                           , text numQues
                                |> filled red
                                |> scale 0.8
                                |> move (-2, 9)    
                                |> notifyTap GoToResult
                           ]
                           

-- Background
initialBackground = group
                    [ sky 
                    , land
                    , grassLand
                    , finalCloud
                        
                    , finalSun
                    , coronaVirus
                        |> scale 0.2
                        |> move (60, -10)
                    , boy
                        |> scale 0.5
                        |> move (-60,-10)
                    ]

-- Blue Sky
sky = square 210 |> filled lightBlue

-- Land
land = rect 40 205
           |> filled darkBrown
           |> rotate (degrees 90)|> move (0,-50)
 
grass = triangle 10
          |> filled lightGreen
          |> rotate (degrees 30)
          
grassLand = group 
            [ grass |> move (100,-35)
            , grass |> move (85,-35)
            , grass |> move (70,-35)
            , grass |> move (55,-35)
            , grass |> move (40,-35)
            , grass |> move (25,-35)
            , grass |> move (10,-35)
            , grass |> move (-5,-35)
            , grass |> move (-20,-35)
            , grass |> move (-35,-35)
            , grass |> move (-50,-35)
            , grass |> move (-65,-35)
            , grass |> move (-80,-35)
            , grass |> move (-95,-35)
            ]
        
-- Cloud      
cloud = oval 80 15
          |> filled white
  
cloudbubble = circle 15
                |> filled white
                |> scaleX 0.5
                |> scaleY 0.5    
  
finalCloud = group
             [ cloud |> move (-50,50)
             , cloudbubble |> move (-85,50) 
             , cloudbubble |> scaleX 1.5
                           |> scaleY 1.5|> move (-70,50)
             , cloudbubble |> scaleX 1.5
                           |> scaleY 1.5|> move (-55,50) 
             , cloudbubble |> scaleX 1.5
                           |> scaleY 1.5|> move (-40,50)
             , cloudbubble |> scaleX 0.75
                           |> scaleY 0.75|> move (-15,50)
             , cloudbubble |> scaleX 1.25
                           |> scaleY 1.25|> move (-25,50)
             ]
 
-- Sun 
sunrays  = triangle 10
              |> filled lightYellow
             
sun =  circle 40
         |>filled lightYellow

finalSun = group
           [ sun |> move (80,65)
           , sunrays |> rotate (degrees 70)
                     |> move (40,50)
           , sunrays |> rotate (degrees 110)
                     |> move (52,32)
           , sunrays |> rotate (degrees 130)
                     |> move (70,23)
           , sunrays |> rotate (degrees 175)
                     |> move (95,24)
           ]
             |> scale 0.8
             |> move (20, 10)

-- Corona Virus
protein (x,y,deg) = triangle 5
                      |> filled darkGreen 
                      |> addOutline (solid 1) darkGreen
                      |> rotate (degrees deg)
                      |> move (x,y)
                      
coronaVirus = group
              [ circle 30
                  |> filled darkGreen
              , group (List.map protein [(0, 35, -90), (18, 30, 5), (30,18, -30), (35, 0, -180),
                                         (30, -18, 30), (18, -30, -5), (18,-30, -5), (0, -35, 90),
                                         (-18, -30, -70), (-30, -18, 30), (-35,0, 0),
                                         (-30, 18, -30), (-17, 30, 65)
                                        ])
              ]
                |> scale 0.5
                

-- Boy
boy = group[ circle 10
                |> filled lightBrown
                |> scale 2
                |> move(0,40)
           , roundedRect 7 10 3
                |> filled lightBrown
                |> scale 2
                |> move (0,20)
           , rect 40 48
                |> filled blue
                |> move (0,-7)
           , triangle 9
                |> filled lightBrown
                |> rotate (degrees 30)
                |> move (0,13)
           , rect 15 30
                |> filled black
                |> move (-11,-45)
           , rect 15 30
                |> filled black
                |> move (12,-45)
           , rect 10 10
                |> filled blue
                |> scale 2
                |> move (23,7)
           , rect 10 10
                |> filled blue
                |> scale 2
                |> move (-22,7)
           , rect 6 15
                |> filled lightBrown
                |> scale 2
                |> move (27,-18)
           , rect 5.5 15
                |> filled lightBrown
                |> scale 2
                |> move (-26,-18)
           , circle 2
                |> filled white
                |> scale 2
                |> move (7,43)
           , circle 2
                |> filled white
                |> scale 2
                |> move (-7,43)
           , circle 1
                |> filled black
                |> move (7,43)
           , circle 1
                |> filled black
                |> move (-7,43)
           , wedge 7 0.5
                |> filled black
                |> rotate (degrees -90)
                |> move (0,35)
           , curve (0,0) [Pull (10,0) (10,-5)]
                |> filled black
                |> rotate (degrees 20)
                |> move (2,49)
           , curve (10,-5) [Pull (10,0) (0,0)]
                |> filled black
                |> rotate (degrees 20)
                |> move (-12,49)
           , wedge 10 0.5
                |> filled black
                |> scale 2
                |> rotate (degrees 90)
                |> move (0,53)
           , wedge 2.75 0.5
                |> filled black
                |> scale 2
                |> rotate (degrees 180)
                |> move (-15,51)
           , curve (10,-5) [Pull (10,0) (0,0)]
                |> filled black
                |> scale 2
                |> rotate (degrees -50)
                |> move (13,65)
            ]
              |> scale 0.75 
                       
-- Soap
soap (x,y) = roundedRect 5 7 2
              |> filled lightYellow
              |> move (x, y)
          
       
          
-- UPDATE --
type Msg = Tick Float GetKeyState
         | GoToStart
         | GoToQuestion Int
         | GoToResult
         | DecHumanHealth
         | DecVirusHealth
         | ThrowSoap
         | ThrowVirus
         
type State = Start
           | Question Int
           | Result
           | SoapToVirus Int 
           | VirusToHuman Int

update msg model = case msg of
                     Tick t _ -> { model | time = t }
                     GoToStart -> { model | state = Start } 
                     GoToQuestion numQues -> { model | state = Question numQues }
                     GoToResult -> { model | state = Result 
                                   , time = 0}
                     
                     DecHumanHealth -> { model | humanHealth = model.humanHealth - 10 }
                     DecVirusHealth -> { model | virusHealth = model.virusHealth - 10
                                       ,         score = model.score + 1
                                       }
                     
                     ThrowSoap -> case model.state of 
                                     Question numQues -> { model | state = SoapToVirus numQues }
                                     otherwise -> model
                                      
                     ThrowVirus -> case model.state of
                                     Question numQues -> { model | state = VirusToHuman numQues }
                                     otherwise -> model


-- INIT --
type alias Model = { time : Float
                   , state : State
                   , humanHealth : Float
                   , virusHealth : Float
                   , score : Int
                   }
                   
init = { time = 0
       , state = Start
       , humanHealth = 100
       , virusHealth = 100
       , score = 0
       }