const stuckThreshold = 0.01;

const rotSpeedOpening = 90;
const rotSpeedClosing = 720;

stuckCounter <- 0;
outpos <- 0.0;
lastoutpos <- 0.0;
isMoving <- false;
isMovingDir <- 0; // 0 = backward, 1 = forward
isLocked <- false;
isLowSpeed <- false;

// Think function:
// If the wheel is supposed to be turning (isMoving == true) but isn't (outpos hasn't changed significantly since last update), lock the wheel in place and fire User3 (effects + lock blocking prop in place) BUT ONLY if above 50% opening (don't want the player to get stuck)
function Update() {

	/* Not used anymore

		if (isMoving && (outpos>=0.5) && (isMovingDir == 1) && !isLowSpeed) {
			// slow down the door during the last 50% of travel
			EntFire("DoorPuz_Winch", "AddOutput", "speed 90", 0, self, self);
			EntFire("DoorPuz_Winch", "SetPosition", 1, 0.1, self, self);

		}

	*/

	if (isMoving && (outpos>=0.5)) {
		printl("Lastpos " + lastoutpos + " Pos " + outpos);
		// monitor outpos
		if ((lastoutpos >= outpos - stuckThreshold) && (lastoutpos <= outpos + stuckThreshold)) { // stuck - not moved more than +/-.05 in the last 3 loops
			stuckCounter++;
			printl(stuckCounter);
		} else {
			stuckCounter=0;
		}
		if (stuckCounter>=3) {
			// OK, position of wheel hasn't changed for 3 iterations even though we are meant to be moving
			// Lock up the wheel and explode
			LockPosition();
		}

		lastoutpos = outpos;
		
	}
}

// Fire this when we start trying to move
function StartMove() {
	if (!isLocked) {
		isMoving = true;
		isMovingDir = 1; // forward
		EntFire("DoorPuz_Winch", "AddOutput", "speed " + rotSpeedOpening, 0, self, self);
		EntFire("DoorPuz_Winch", "SetPosition", 1, 0.1, self, self);

		EntFire("doorpuz_sound_move", "PlaySound", null, 0, self, self);

	}
}


// Lock the button at the current position permanently
function LockPosition() {
	printl("Door is now locked in place");
	if (isLocked==false) {	

		EntFire("doorpuz_sound_move", "StopSound"); // stop sound

		EntFire("DoorPuz_Winch", "AddOutput", "speed 0", 0, self, self);
		EntFire("DoorPuz_Winch", "SetPosition", outpos, 0.1, self, self);
		isLocked=true;
		isMoving=false;

		EntFire("DoorPuz_Winch", "FireUser1", null,0,self,self);

		!self.EmitSound("Canals.d1_canals_01a_metal_stress1");

		EntFire("DoorPuz_Winch", "RemoveOutput", "Position"); // Stop updating door position to avoid jiggling
	}
}

// Hook the Position output to keep our internal position variable up-to-date
function OnPosition() {
	
	// Figure out output from X-angle
	local angle = self.GetLocalAngles().x;
	local maxangle = 720.0;
	outpos = angle / maxangle;

	// Clamp
	if (outpos > 1) outpos=1;
	if (outpos < 0) outpos=0;


}


self.ConnectOutput("Position", "OnPosition");




// Hook OnReachedPosition output so we know when the wheel has reached desired position
function OnReachedPosition() {
	if (isMoving && (isMovingDir == 1)) {
		// We have reached full open, now move backwards again FAST 

		EntFire("doorpuz_sound_move", "StopSound"); // stop sound

		!self.EmitSound("outland_04.gear_engage_lever");

		EntFire("DoorPuz_Winch", "AddOutput", "speed " + rotSpeedClosing, 0, self, self);
		EntFire("DoorPuz_Winch", "SetPosition", 0, 0.1, self, self);
		isMovingDir = 0; // backwards
		return;

	}

	if (isMoving && (isMovingDir == 0)) {
		// We have reached full close, stop.
		isMoving = false;
		return;
	}

	// Ignore case where we aren't meant to be moving and reachedPosition fires

}


self.ConnectOutput("OnReachedPosition", "OnReachedPosition");