// Driveable razor train script !!!!

const maxSpeed=250;	// u/s

trackPowerOn <- false;		// track power is switched on
trainStarted <- false; 		// train has been started up
throttleState <- 0; 		// -1 = brake, 0 = neutral, 1 = power
throttleDirection <- true; // cycle through throttle modes

reverser <- null;
throttle <- null
console <- null;


const accelRate 		= 0.0025
const decelRate 		= -0.004
const cruiseDecelRate 	= -0.001

velocity <- 0.0; 	// current velocity of the train - 0-1

function think()
{
	deltaV <- 0;
	prevVelocity <- 0;

	// first get the throttle state
	if (throttleState == 0) {
		deltaV = cruiseDecelRate;
		
	} else if (throttleState == -1) {
		deltaV = decelRate;
	
	} else if (throttleState == 1) {
		deltaV = accelRate;
	}

	// apply deltaV to velocity
	velocity += deltaV; 

	if (deltaV <= 0) // negative deltaV so we are decelerating
	{

			if (velocity<=0) velocity=0;
	
	}
	
	if (velocity>=1) velocity=1;

	
	DoEntFire("razortrain", "SetSpeedDir",velocity.tostring(), 0, null, null);
	DoEntFire("razortrain_speedo", "SetPosition", velocity.tostring(), 0, null, null);
}


function razortrainStart() {

	printl("Start request");
	
	if (!trackPowerOn) {
		printl("Power not on")
		// Failed startup procedure
		//DoEntFire("razortrain_snd_klaxon", "PlaySound","", 0, null, null)
		!self.EmitSound("d1_canals.Floodgate_Klaxon")
		
		DoEntFire("razortrain_spr_status", "Color", "255 0 0", 0, null, null)
		DoEntFire("razortrain_spr_status", "SetRenderFX", "11", 0, null, null)
		
		DoEntFire("razortrain_spr_status", "Color", "255 255 0", 2, null, null)
		DoEntFire("razortrain_spr_status", "SetRenderFX", "10", 2, null, null)
		
	} else {
		printl("Power ON")
		!self.EmitSound("plats/elevator_large_start1.wav");
		DoEntFire("razortrain_snd_idle", "PlaySound", "", 0.25, null, null)
		DoEntFire("razortrain_spr_status", "DisableDraw", "", 1, null, null)
		DoEntFire("razortrain_spr_throttle", "EnableDraw", "", 1, null, null)
		DoEntFire("razortrain_controls", "Skin", "0", 1.5, null, null)
		DoEntFire("razortrain_snd_relays", "PlaySound", "", 2.0, null, null)
		DoEntFire("rt_prop", "Skin", "0", 2.0, null, null)	
		
		DoEntFire("rt_light", "LightOn", "0", 2.0, null, null)
		DoEntFire("rt_pt", "TurnOn", "0", 2.0, null, null)
		
		trainStarted = true; // now started
		
			// startup sequence upon first reverser movement
			DoEntFire("razortrain_reverser", "SetAnimation", "Neutral_To_F", 0, null, null)
	}


}

function razortrainThrottle() {

	if (trainStarted == true) {
	
		DoEntFire("razortrain_spr_throttle", "DisableDraw", "", 1, null, null)

		printl("DEBUG: throttle state changed")
		
		animName <- ""

		if (throttleState == 0) {
			if (throttleDirection == true) {
				throttleState = 1;
				animName = "Neutral_To_Power"
				
				DoEntFire("snd_accel", "PlaySound", "", 0, null, null);
				DoEntFire("snd_accel", "Volume", "10", 0, null, null);
				
			} else {
				throttleState = -1;
				animName = "Neutral_To_Brake"
				DoEntFire("snd_brake", "PlaySound", "", 0, null, null);
				DoEntFire("snd_brake", "Volume", "10", 0, null, null);
			}
			
		} else if (throttleState == 1) {
			throttleDirection = false;
			throttleState = 0;
			animName = "Power_To_Neutral"
			DoEntFire("snd_accel", "Volume", "0", 0, null, null);
			

		} else if (throttleState == -1) {
			throttleDirection = true;
			throttleState = 0;
			animName = "Brake_To_Neutral"
			DoEntFire("snd_brake", "Volume", "0", 0, null, null);
		}
		

		printl(throttleState);
		DoEntFire("razortrain_handle", "SetAnimation", animName, 0, null, null)

		
	}
	
}

function razortrainReverser() {
	
		if (trainStarted == false) {

			razortrainStart()
		}
			
	}
	

function OnPostSpawn() {
	printl("Razor train script started");
	
	console = Entities.FindByName(null, "btn_console_on");
	throttle = Entities.FindByName(null, "btn_throttle");
	reverser = Entities.FindByName(null, "btn_reverser");
	

}

function razortrainTurnOnTrackPower() {
	trackPowerOn <- true;
	DoEntFire("razortrain_spr_status", "Color", "0 255 255", 2, null, null)
	printl("track power on");
}


self.ConnectOutput("OnUser1", "razortrainTurnOnTrackPower")
self.ConnectOutput("OnUser2", "razortrainThrottle")
self.ConnectOutput("OnUser3", "razortrainReverser")


