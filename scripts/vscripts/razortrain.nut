// Driveable razor train script !!!!

const maxSpeed=250;	// u/s

trackPowerOn <- false;		// track power is switched on
trainStarted <- false; 		// train has been started up
throttleState <- 0; 		// -1 = brake, 0 = neutral, 1 = power
throttleDirection <- true; // cycle through throttle modes

reverser <- null;
throttle <- null
console <- null;


const accelRate 		= 0.005
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
		// Failed startup procedure
	} else {

	}
	!self.EmitSound("plats/elevator_large_start1.wav");
	DoEntFire("razortrain_snd_idle", "PlaySound", "", 0.25, null, null)
	DoEntFire("razortrain_spr_status", "DisableDraw", "", 1, null, null)
	DoEntFire("razortrain_controls", "Skin", "0", 1.5, null, null)	
	!self.EmitSound("plats/elevator_start1.wav");
	
	trainStarted = true; // now started

}

function razortrainThrottle() {

	if (trainStarted == true) {

		printl("DEBUG: throttle state changed")
		
		animName <- ""

		if (throttleState == 0) {
			if (throttleDirection == true) {
				throttleState = 1;
				animName = "Neutral_To_Power"
				
			} else {
				throttleState = -1;
				animName = "Neutral_To_Brake"
			}
		} else if (throttleState == 1) {
			throttleDirection = false;
			throttleState = 0;
			animName = "Power_To_Neutral"
		} else if (throttleState == -1) {
			throttleDirection = true;
			throttleState = 0;
			animName = "Brake_To_Neutral"
		}
		

		printl(throttleState);
		DoEntFire("razortrain_handle", "SetAnimation", animName, 0, null, null)

		
	}
	
}

function razortrainReverser() {
	
		if (trainStarted == false) {
			// startup sequence upon first reverser movement
			DoEntFire("razortrain_reverser", "SetAnimation", "Neutral_To_F", 0, null, null)
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
	printl("track power on");
}


self.ConnectOutput("OnUser2", "razortrainThrottle")
self.ConnectOutput("OnUser3", "razortrainReverser")


