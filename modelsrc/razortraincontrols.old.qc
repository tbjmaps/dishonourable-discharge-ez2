$staticprop
$modelname	"props\razortraincontrols.mdl"
$scale 0.5
$body mybody	"razortraincontrols.smd"
$surfaceprop	combine_metal


$cdmaterials	models\props

$sequence idle	"anims\idle.smd"
$sequence powerhandle_brake_to_neutral	"anims\powerhandle_brake_to_neutral.smd" {
	fps 30
}
$sequence powerhandle_neutral_to_brake	"anims\powerhandle_neutral_to_brake.smd"
$sequence powerhandle_neutral_to_power	"anims\powerhandle_neutral_to_power.smd"
$sequence powerhandle_power_to_neutral	"anims\powerhandle_power_to_neutral.smd"
$sequence reverser_forward_to_neutral	"anims\reverser_forward_to_neutral.smd"
$sequence reverser_neutral_to_forward	"anims\reverser_neutral_to_forward.smd"
$sequence reverser_neutral_to_reverse	"anims\reverser_neutral_to_reverse.smd"
$sequence reverser_reverse_to_neutral	"anims\reverser_reverse_to_neutral.smd"

$texturegroup "razortraincontrols"
{
	{ razortraincontrols }
	{ razortraincontrols_off }
}