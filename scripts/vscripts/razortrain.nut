// Driveable razor train script !!!!

const maxSpeed=500;	// u/s
const accelRate=50;
const decelRate=50;

trackPowerOn <- false;		// track power is switched on
trainStarted <- false; 		// train has been started up
reverserState <- 0; 		// -1 = reverse, 0 = power off, 1 = forward
throttleState <- 0; 		// -1 = brake, 0 = neutral, 1 = power
throttleDirection <- true; // cycle through throttle modes

reverser <- null;
throttle <- null
console <- null;




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
	if (throttleState == 0) { // only allow reverser movement when throttle 0
	
		printl("Reverser input");
	
		if (trainStarted == false) {
			// startup sequence upon first reverser movement
			reverserState = 1;
			DoEntFire("razortrain_reverser", "SetAnimation", "Neutral_To_F", 0, null, null)
			razortrainStart()
			
		} else {
			if (reverserState == 1) {
				reverserState = -1;
				DoEntFire("razortrain_reverser", "SetAnimation", "F_To_B", 0, null, null);
				
			} else if (reverserState == -1) {
				reverserState = 1;
				DoEntFire("razortrain_reverser", "SetAnimation", "B_To_F", 0, null, null);
			}
		}
	
			
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


