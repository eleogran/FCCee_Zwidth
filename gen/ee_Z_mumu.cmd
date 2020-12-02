! File: Pythia_ee_Z_mumu.cmd
Random:setSeed = on
Main:timesAllowErrors = 100         ! how many aborts before run stops

! 2) Settings related to output in init(), next() and stat()
Next:numberCount = 20			   ! print message every n events
Beams:idA = 11					   ! first beam, e+ = 11
Beams:idB = -11					   ! second beam, e- = -11

! 3) Beam energy spread
Beams:allowMomentumSpread = on     ! enable BES
Beams:sigmaPxA = 0.060			   ! BES as 3D Gaussian with width=0.132% of E_beam
Beams:sigmaPyA = 0.060
Beams:sigmaPzA = 0.060
Beams:sigmaPxB = 0.060			  
Beams:sigmaPyB = 0.060
Beams:sigmaPzB = 0.060

! 4) Hard process: Z on-shell production at 91.2 GeV
Beams:eCM = 91.2 					! CM energy of collision
WeakZ0:gmZmode = 0					! single EW boson (Z0/gamma: option=0; pure Z0: option=2)

! 5) Settings for the event generation process in the Pythia8 library
PartonLevel:ISR = on 				! initial-state radiation
PartonLevel:FSR = on 				! final-state radiation

! 6) Non-standard settings; exemplifies tuning possibilities
WeakSingleBoson:ffbar2ffbar(s:gmZ) = on 
23:onMode = off 					! switch off Z boson decays
23:onIfAny = 13 13					! switch on Z boson decays to muons
