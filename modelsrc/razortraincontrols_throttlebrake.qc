$modelname	"props\razortraincontrols_throttlebrake.mdl"
$scale 0.5
$body mybody	"razortraincontrols_throttlebrake.smd"
$surfaceprop	combine_metal


$cdmaterials	models\props

$sequence idle "razortraincontrols_throttlebrake.smd"
$sequence Neutral_To_power "anims/Neutral_To_power.smd"
$sequence Power_To_neutral "anims/Power_To_neutral.smd"
$sequence Neutral_To_Brake "anims/Neutral_To_Brake.smd"
$sequence Brake_To_Neutral "anims/Brake_To_Neutral.smd"
