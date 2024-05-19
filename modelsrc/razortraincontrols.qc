$modelname	"props\razortraincontrols.mdl"
$scale 0.5
$body mybody	"razortraincontrols.smd"
$surfaceprop	combine_metal


$cdmaterials	models\props

$sequence idle "razortraincontrols.smd"

$sequence powerhandle_brake_to_neutral	"anims\powerhandle_brake_to_neutral.smd" {
	fps 30
	loop 
}


$texturegroup "razortraincontrols"
{
	{ razortraincontrols }
	{ razortraincontrols_off }
}