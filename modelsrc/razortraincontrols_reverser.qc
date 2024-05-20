$modelname	"props\razortraincontrols_reverser.mdl"
$scale 1
$body mybody	"razortraincontrols_reverser.smd"
$surfaceprop	combine_metal


$cdmaterials	models\props

$sequence idle "razortraincontrols_reverser.smd"
$sequence Neutral_to_F "anims/reverser_neutral_to_f.smd"
$sequence F_to_Neutral "anims/reverser_f_to_neutral.smd"
$sequence Neutral_to_B "anims/reverser_neutral_to_b.smd"
$sequence B_to_Neutral "anims/reverser_b_to_neutral.smd"
$sequence B_to_F "anims/reverser_b_to_f.smd"
$sequence F_to_B "anims/reverser_f_to_b.smd"