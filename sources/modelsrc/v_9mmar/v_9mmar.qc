/*
==============================================================================

QC script generated by Half-Life MDL Decompiler 1.2 
2003, Kratisto. Based on code from Valve's HL SDK.

v_9mmar.mdl

Original internal name:
"c:\sierra\half-life\gearbox\models\v_9mmAR.mdl"

==============================================================================
*/

$modelname "v_9mmar.mdl"
$cd ".\"
$cdtexture ".\"
$scale 1.0
$cliptotextures


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "studio" "new_v_mp5_reference"

$body "studio" "new_v_mp5_hands_reference"


// 1 attachment(s)
$attachment 0 "Bip01 R Hand" 10.000000 -1.750000 8.000000

// 10 hit box(es)
$hbox 0 "Bip01 R Forearm" -0.440000 -2.130000 -1.990000 11.390000 2.580000 1.140000
$hbox 0 "Bip01 R Hand" 0.000000 -1.170000 -1.850000 3.789474 0.750000 2.130000
$hbox 0 "Bone01" -1.680000 -11.160000 -12.980000 1.110000 2.950000 5.590000
$hbox 0 "Bone03" -1.220000 -0.730000 -4.480000 0.000000 6.680000 0.540000
$hbox 0 "Bip01 L Forearm" -0.370000 -1.710000 -1.580000 11.370000 1.910000 2.560000
$hbox 0 "Bip01 L Hand" 0.000000 -0.960000 -2.100000 3.789474 0.970000 1.890000
$hbox 0 "Bip01 L Finger0" 0.000000 -0.900000 -0.650000 2.540000 0.400000 0.860000
$hbox 0 "Bip01 L Finger31" 0.000000 -0.620000 -0.420000 1.160000 0.530000 0.600000
$hbox 0 "Bip01 R Finger0" 0.000000 -0.850000 -1.150000 2.470000 0.450000 0.420000
$hbox 0 "Bip01 R Finger31" 0.000000 -0.730000 -0.530000 1.136842 0.420000 0.480000

// 9 animation sequence(s)
$sequence "longidle" "longidle" fps 8 
$sequence "idle1" "idle1" fps 35 
$sequence "grenade" "grenade" fps 30 
$sequence "reload" "reload" fps 30 { event 5004 5 "items/cliprelease1.wav" } { event 5004 24 "items/clipinsert1.wav" } 
$sequence "deploy_1" "deploy_1" fps 30 
$sequence "deploy_2" "deploy_2" fps 30 
$sequence "shoot_1" "shoot_1" fps 10 { event 5001 0 "20" } 
$sequence "shoot_2" "shoot_2" fps 10 { event 5001 0 "20" } 
$sequence "shoot_3" "shoot_3" fps 10 { event 5001 0 "20" } 

// End of QC script.
