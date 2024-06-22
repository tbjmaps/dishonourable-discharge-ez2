"Resource/HudLayout.res"
{
	HudHealth [!$DECK]
	{
		"fieldName"		"HudHealth"
		"xpos"	"16"
		"ypos"	"432"
		"wide"	"102"
		"tall"  "36"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"
		
		"text_xpos" "8"
		"text_ypos" "20"
		"digit_xpos" "50"
		"digit_ypos" "2"
	}
	HudHealth [$DECK]
	{
		"fieldName"		"HudHealth"
		"xpos"	"16"
		"ypos"	"426"
		"wide"	"130"
		"tall"  "42"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"
		
		"text_xpos" "8"
		"text_ypos" "23"
		"digit_xpos" "72" // 66
		"digit_ypos" "0"
		
		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"NumberFont"		"HudNumbers_Deck"
		"NumberGlowFont"	"HudNumbersGlow_Deck"
		"SmallNumberFont"	"HudNumbersSmall_Deck"
		"TextFont"		"Default_Deck"
	}
	
	HudSuit [!$DECK]
	{
		"fieldName"		"HudSuit"
		"xpos"	"140"
		"ypos"	"432"
		"wide"	"108"
		"tall"  "36"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "8"
		"text_ypos" "20"
		"digit_xpos" "50"
		"digit_ypos" "2"
	}
	HudSuit [$DECK]
	{
		"fieldName"		"HudSuit"
		"xpos"	"150"
		"ypos"	"426"
		"wide"	"120"
		"tall"  "42"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"
		
		"text_xpos" "8"
		"text_ypos" "23"
		"digit_xpos" "56"
		"digit_ypos" "0"
		
		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"NumberFont"		"HudNumbers_Deck"
		"NumberGlowFont"	"HudNumbersGlow_Deck"
		"SmallNumberFont"	"HudNumbersSmall_Deck"
		"TextFont"		"Default_Deck"
	}

	HudAmmo	[!$DECK]
	{
		"fieldName" "HudAmmo"
		"xpos"	"r150"
		"ypos"	"432"
		"wide"	"136"
		"tall"  "36"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "8"
		"text_ypos" "20"
		"digit_xpos" "44"
		"digit_ypos" "2"
		"digit2_xpos" "98"
		"digit2_ypos" "16"
	}
	HudAmmo	[$DECK]
	{
		"fieldName" "HudAmmo"
		"xpos"	"r150"
		"ypos"	"426"
		"wide"	"152"
		"tall"  "42"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "8"
		"text_ypos" "24"
		"digit_xpos" "50" // 55
		"digit_ypos" "0"
		"digit2_xpos" "100"
		"digit2_ypos" "12"
		
		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"NumberFont"		"HudNumbers_Deck"
		"NumberGlowFont"	"HudNumbersGlow_Deck"
		"SmallNumberFont"	"HudNumbersSmall_Deck"
		"TextFont"		"Default_Deck"
	}

	HudAmmoSecondary [!$DECK]
	{
		"fieldName" "HudAmmoSecondary"
		"xpos"	"r76"
		"ypos"	"432"
		"wide"	"60"
		"tall"  "36"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "8"
		"text_ypos" "22"
		"digit_xpos" "36"
		"digit_ypos" "2"
	}
	HudAmmoSecondary [$DECK]
	{
		"fieldName" "HudAmmoSecondary"
		"xpos"	"r82"
		"ypos"	"426"
		"wide"	"70"
		"tall"  "42"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "8"
		"text_ypos" "24"
		"digit_xpos" "42"
		"digit_ypos" "0"
		
		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"NumberFont"		"HudNumbers_Deck"
		"NumberGlowFont"	"HudNumbersGlow_Deck"
		"SmallNumberFont"	"HudNumbersSmall_Deck"
		"TextFont"		"Default_Deck"
	}

	HudPosture	[$WIN32]
	{
		"fieldName" 		"HudPosture"
		"visible" 		"1"
		"PaintBackgroundType"	"2"
		"xpos"	"16"
		"ypos"	"316"
		"tall"  "35"
		"wide"	"36"
		"font"	"WeaponIconsSmall" [!$DECK]
		"font"	"WeaponIconsSmall_Deck" [$DECK]
		"icon_xpos"	"8"
		"icon_ypos" 	"-2"
	}
	HudPosture	[$X360]
	{
		"fieldName" 		"HudPosture"
		"visible" 		"1"
		"PaintBackgroundType"	"2"
		"xpos"	"48"
		"ypos"	"316"
		"tall"  "36"
		"wide"	"36"
		"font"	"WeaponIconsSmall"
		"icon_xpos"	"10"
		"icon_ypos" 	"2"
	}

	HudSuitPower	[!$DECK]
	{
		"fieldName" "HudSuitPower"
		"visible" "0"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"396"
		"wide"	"102"
		"tall"	"26"
		
		"AuxPowerLowColor" "255 0 0 220"
		"AuxPowerHighColor" "255 220 0 220"
		"AuxPowerDisabledAlpha" "70"

		"BarInsetX" "8"
		"BarInsetY" "15"
		"BarWidth" "92"
		"BarHeight" "4"
		"BarChunkWidth" "6"
		"BarChunkGap" "3"

		"text_xpos" "8"
		"text_ypos" "4"
		"text2_xpos" "8"
		"text2_ypos" "22"
		"text2_gap" "10"

		"PaintBackgroundType"	"2"
	}
	HudSuitPower	[$DECK]
	{
		"fieldName" "HudSuitPower"
		"visible" "1"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"386"
		"wide"	"112"
		"tall"	"32"
		
		"AuxPowerLowColor" "255 0 0 220"
		"AuxPowerHighColor" "255 220 0 220"
		"AuxPowerDisabledAlpha" "70"

		"BarInsetX" "8"
		"BarInsetY" "18"
		"BarWidth" "102"
		"BarHeight" "5"
		"BarChunkWidth" "6" [!$DECK]
		"BarChunkWidth" "7" [$DECK]
		"BarChunkGap" "3"

		"text_xpos" "8"
		"text_ypos" "4"
		"text2_xpos" "8"
		"text2_ypos" "26"
		"text2_gap" "14"

		"PaintBackgroundType"	"2"
		
		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"TextFont"		"Default_Deck"
	}
	
	HudFlashlight
	{
		"fieldName" "HudFlashlight"
		"visible" "1"
		"PaintBackgroundType"	"2"
		"xpos"	"270"		[!$DECK]
		"xpos"	"280"		[$DECK]
		"ypos"	"444"		[!$DECK]
		"ypos"	"436"		[$DECK]
		"xpos_hidef"	"306"		[$X360]		// aligned to left
		"xpos_lodef"	"c-18"		[$X360]		// centered in screen
		"ypos"	"428"		[$X360]				
		"tall"  "24" [!$DECK]
		"tall"  "30" [$DECK]
		"wide"	"36" [!$DECK]
		"wide"	"46" [$DECK]
		"font"	"WeaponIconsSmall" [!$DECK]
		"font"	"FlashlightDeck" [$DECK]
		
		"icon_xpos"	"4"
		"icon_ypos" "-8" [!$DECK]
		"icon_ypos" "-12"  [$DECK]
		
		"BarInsetX" "4"
		"BarInsetY" "18" [!$DECK]
		"BarInsetY" "22" [$DECK]
		"BarWidth" "28" [!$DECK]
		"BarWidth" "36" [$DECK]
		"BarHeight" "2" [!$DECK]
		"BarChunkWidth" "2" [!$DECK]
		"BarHeight" "3" [$DECK]
		"BarChunkWidth" "3" [$DECK]
		"BarChunkGap" "1"
	}

	HudLocator	[!$DECK]
	{
		"fieldName" "HudLocator"
		"visible" "1"
		"PaintBackgroundType"	"2"
		"xpos"	"c8"	[$WIN32]
		"ypos"	"r36"	[$WIN32]
		"xpos"	"c-32"	[$X360]
		"ypos_hidef"	"r52"	[$X360]
		"ypos_lodef"	"r95"	[$X360]		// 52 is aligned to bottom of HudSuit
		"wide"	"64"
		"tall"  "24"
	}

	HudLocator	[$DECK]
	{
		"fieldName" "HudLocator"
		"visible" "1"
		"PaintBackgroundType"	"2"
		"xpos"	"c8"
		"ypos"	"r36"
		"wide"	"80"
		"tall"  "32"
	}

	HudDamageIndicator
	{
		"fieldName" "HudDamageIndicator"
		"visible" "1"
		"enabled" "1"
		"DmgColorLeft" "255 0 0 0"
		"DmgColorRight" "255 0 0 0"
		
		"dmg_xpos" "30"
		"dmg_ypos" "100"
		"dmg_wide" "36"
		"dmg_tall1" "240"
		"dmg_tall2" "200"
	}

	HudZoom
	{
		"fieldName" "HudZoom"
		"visible" "1"
		"enabled" "1"
		"Circle1Radius" "66"
		"Circle2Radius"	"74"
		"DashGap"	"16"
		"DashHeight" "4"	[$WIN32]
		"DashHeight" "6"	[$X360]		
		"BorderThickness" "88"
	}

	HudWeaponSelection
	{
		"fieldName" "HudWeaponSelection"
		"ypos" 	"16"	[$WIN32]
		"ypos" 	"32"	[$X360]
		"visible" "1"
		"enabled" "1"
		"SmallBoxSize" "32"
		"MediumBoxWide"	"95"
		"MediumBoxWide_hidef"	"78"
		"MediumBoxTall"	"50"
		"MediumBoxTall_hidef"	"50"
		"MediumBoxWide_lodef"	"74"
		"MediumBoxTall_lodef"	"50"
		"LargeBoxWide" "112"
		"LargeBoxTall" "80"
		"BoxGap" "8"
		"SelectionNumberXPos" "4"
		"SelectionNumberYPos" "4"
		"SelectionGrowTime"	"0.4"
		"TextYPos" "64"
	}

	HudCrosshair
	{
		"fieldName" "HudCrosshair"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudDeathNotice
	{
		"fieldName" "HudDeathNotice"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudVehicle
	{
		"fieldName" "HudVehicle"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	ScorePanel
	{
		"fieldName" "ScorePanel"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudTrain
	{
		"fieldName" "HudTrain"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudMOTD
	{
		"fieldName" "HudMOTD"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudMessage
	{
		"fieldName" "HudMessage"
		"visible" "1"
		"enabled" "1"
		"wide"	 "f0"
		"tall"	 "480"
	}

	HudMenu
	{
		"fieldName" "HudMenu"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudCloseCaption
	{
		"fieldName" "HudCloseCaption"
		"visible"	"0"
		"enabled"	"1"
		"xpos"		"c-250"
		"ypos"		"276"	[$WIN32]
		"ypos_hidef"	"236"	[$X360]
		"ypos_lodef"	"206"	[$X360]			//236
		"wide"		"500"	[!$DECK]
		"wide"		"475"	[$DECK]
		"tall"		"136"	[$WIN32]
		"tall"		"176"	[$X360]

		"BgAlpha"	"128"

		"GrowTime"		"0.25"
		"ItemHiddenTime"	"0.2"  // Nearly same as grow time so that the item doesn't start to show until growth is finished
		"ItemFadeInTime"	"0.15"	// Once ItemHiddenTime is finished, takes this much longer to fade in
		"ItemFadeOutTime"	"0.3"
		"topoffset"		"0"		[$WIN32]
		"topoffset"		"40"	[$X360]
	}

	HudChat
	{
		"fieldName" "HudChat"
		"visible" "0"
		"enabled" "1"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	 "4"
		"tall"	 "4"
	}

	HudHistoryResource
	{
		"fieldName" "HudHistoryResource"
		"visible" "1"
		"enabled" "1"
		"xpos"	"r272" [$DECK]
		"xpos"	"r252" [!$DECK]
		"ypos"	"40"
		"wide"	 "248"
		"tall"	 "320"

		"history_gap"	"64" [$DECK]
		"history_gap"	"56" [!$DECK]
		"icon_inset"	"38"
		"text_inset"	"36"
		"text_inset"	"26"
		"NumberFont"	"HudNumbersSmall"
	}

	HudGeiger
	{
		"fieldName" "HudGeiger"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HUDQuickInfo
	{
		"fieldName" "HUDQuickInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudWeapon
	{
		"fieldName" "HudWeapon"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	HudAnimationInfo
	{
		"fieldName" "HudAnimationInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudPredictionDump
	{
		"fieldName" "HudPredictionDump"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudHintDisplay
	{
		"fieldName"	"HudHintDisplay"
		"visible"	"0"
		"enabled" "1"
		"Alpha"		"0"		// Remove this to enable hint hud element
		"xpos"	"r120"	[$WIN32]
		"ypos"	"r340"	[$WIN32]
		"xpos"	"r148"	[$X360]
		"ypos"	"r338"	[$X360]
		"wide"	"100"
		"tall"	"200"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_xgap"	"8"
		"text_ygap"	"8"
		"TextColor"	"255 170 0 220"

		"PaintBackgroundType"	"2"
	}

	HudHintKeyDisplay
	{
		"fieldName"	"HudHintKeyDisplay"
		"visible"	"0"
		"enabled" 	"1"
		"xpos"		"r120"	[$WIN32]
		"ypos"		"r340"	[$WIN32]
		"xpos"		"r148"	[$X360]
		"ypos"		"r338"	[$X360]
		"wide"		"100"
		"tall"		"200"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_xgap"	"8"
		"text_ygap"	"8"
		"TextColor"	"255 170 0 220"

		"PaintBackgroundType"	"2"
	}


	HudSquadStatus	[!$DECK]
	{
		"fieldName"	"HudSquadStatus"
		"visible"	"1"
		"enabled" "1"
		"xpos"	"r120"
		"ypos"	"380"
		"wide"	"104"
		"tall"	"46"
		"text_xpos"	"8"
		"text_ypos"	"34"
		"SquadIconColor"	"255 255 255 160"
		"SquadTextColor"	"255 255 255 160"
		"IconInsetX"	"8"
		"IconInsetY"	"0"
		"IconGap"		"24"
		"IconFont"		"SquadIcon"

		"PaintBackgroundType"	"2"
	}
	HudSquadStatus	[$DECK]
	{
		"fieldName"	"HudSquadStatus"
		"visible"	"1"
		"enabled" "1"
		"xpos"	"r160"
		"ypos"	"372"
		"wide"	"144"
		"tall"	"46"
		"text_xpos"	"8"
		"text_ypos"	"28"
		"SquadIconColor"	"255 255 255 160"
		"SquadTextColor"	"255 255 255 160"
		"IconInsetX"	"8"
		"IconInsetY"	"-10"
		"IconGap"		"39"
		"IconFont"		"SquadIcon_Deck"

		"PaintBackgroundType"	"2"
		
		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"IconFont"		"HudNumbers_Deck"
		"TextFont"		"Default_Deck"
	}
	
	// EZ2
	HudSLAMStatus	[!$DECK]
	{
		"fieldName"	"HudSLAMStatus"
		"visible"	"1"
		"enabled" "1"
		"xpos"	"r120"
		"ypos"	"394"
		"wide"	"104"
		"tall"	"32"
		"xpos_default"	"r120"
		"wide_default"	"104"
		"SLAMIconColor"	"255 244 244 160"
		"LastSLAMColor"	"255 244 244 160"
		"IconInsetX"	"8"
		"IconInsetY"	"4"
		"IconGap"		"24"
		"IconFont"		"HudNumbersSmall"

		"PaintBackgroundType"	"2"
	}
	
	HudSLAMStatus	[$DECK]
	{
		"fieldName"	"HudSLAMStatus"
		"visible"	"1"
		"enabled" "1"
		"xpos"	"r120"
		"ypos"	"386"
		"wide"	"104"
		"tall"	"32"
		"xpos_default"	"r120"
		"wide_default"	"104"
		"SLAMIconColor"	"255 244 244 160"
		"LastSLAMColor"	"255 244 244 160"
		"IconInsetX"	"8"
		"IconInsetY"	"4"
		"IconGap"		"24"
		"IconFont"		"HudNumbersSmall_Deck"

		"PaintBackgroundType"	"2"
	}

	HudHealthVialStatus	[!$DECK]
	{
		"fieldName"	"HudHealthVialStatus"
		"visible"	"1"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"394"
		"wide"	"104"
		"tall"	"32"
		"xpos_default"	"120"
		"wide_default"	"104"
		"HealthVialIconColor"	"255 244 244 160"
		"LastHealthVialColor"	"255 244 244 160"
		"IconInsetX"	"8"
		"IconInsetY"	"4"
		"IconGap"		"24"
		"IconFont"		"HudNumbersSmall"

		"PaintBackgroundType"	"2"
	}

	HudHealthVialStatus	[$DECK]
	{
		"fieldName"	"HudHealthVialStatus"
		"visible"	"1"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"386"
		"wide"	"104"
		"tall"	"32"
		"xpos_default"	"120"
		"wide_default"	"104"
		"HealthVialIconColor"	"255 244 244 160"
		"LastHealthVialColor"	"255 244 244 160"
		"IconInsetX"	"8"
		"IconInsetY"	"4"
		"IconGap"		"24"
		"IconFont"		"HudNumbersSmall_Deck"

		"PaintBackgroundType"	"2"
	}

	HudPoisonDamageIndicator	[!$DECK]
	{
		"fieldName"	"HudPoisonDamageIndicator"
		"visible"	"0"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"346"
		"wide"	"136"
		"tall"	"38"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_ygap" "14"
		"TextColor"	"255 244 244 220"
		"PaintBackgroundType"	"2"
		
		"TextFont"		"Default"
	}
	HudPoisonDamageIndicator	[$DECK]
	{
		"fieldName"	"HudPoisonDamageIndicator"
		"visible"	"0"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"262"
		"wide"	"190"
		"tall"	"42"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_ygap" "14"
		"TextColor"	"255 244 244 220"
		"PaintBackgroundType"	"2"
		
		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"TextFont"		"Default_Deck"
	}

	HudCredits
	{
		"fieldName"	"HudCredits"
		"TextFont"	"Default"
		"visible"	"1"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"640"
		"tall"	"480"
		"TextColor"	"255 255 255 192"

	}
	
	HUDAutoAim
	{
		"fieldName" "HUDAutoAim"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"	[$WIN32]
		"tall"	 "480"	[$WIN32]
		"wide"	 "960"	[$X360]
		"tall"	 "720"	[$X360]
	}

	HudCommentary
	{
		"fieldName" "HudCommentary"
		"xpos"	"c-190"
		"ypos"	"350"
		"wide"	"380"
		"tall"  "40"
		"visible" "1"
		"enabled" "1"
		
		"PaintBackgroundType"	"2"
		
		"bar_xpos"		"50"
		"bar_ypos"		"20"
		"bar_height"	"8"
		"bar_width"		"320"
		"speaker_xpos"	"50"
		"speaker_ypos"	"8"
		"count_xpos_from_right"	"10"	// Counts from the right side
		"count_ypos"	"8"
		
		"icon_texture"	"vgui/hud/icon_commentary"
		"icon_xpos"		"0"
		"icon_ypos"		"0"		
		"icon_width"	"40"
		"icon_height"	"40"
	}
	
	HudHDRDemo
	{
		"fieldName" "HudHDRDemo"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"640"
		"tall"  "480"
		"visible" "1"
		"enabled" "1"
		
		"Alpha"	"255"
		"PaintBackgroundType"	"2"
		
		"BorderColor"	"0 0 0 255"
		"BorderLeft"	"16"
		"BorderRight"	"16"
		"BorderTop"		"16"
		"BorderBottom"	"64"
		"BorderCenter"	"0"
		
		"TextColor"		"255 255 255 255"
		"LeftTitleY"	"422"
		"RightTitleY"	"422"
	}
	"HudChatHistory"
	{
		"ControlName"		"RichText"
		"fieldName"		"HudChatHistory"
		"xpos"			"10"
		"ypos"			"290"
		"wide"	 		"300"
		"tall"			 "75"
		"wrap"			"1"
		"autoResize"		"1"
		"pinCorner"		"1"
		"visible"		"0"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"south-west"
		"font"			"Default"
		"maxchars"		"-1"
	}

	HudBonusProgress [!$DECK]
	{
		"fieldName"		"HudBonusProgress"
		"xpos"	"16" // "r208"
		"ypos"	"380" // "416"
		"wide"	"115"
		"tall"  "36"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "8"
		"text_ypos" "20"
		"digit_xpos" "50"
		"digit_ypos" "2"
		"digit2_xpos" "8" // 98
		"digit2_ypos" "2" // 16
	}

	HudBonusProgress [$DECK]
	{
		"fieldName"		"HudBonusProgress"
		"xpos"	"16"
		"ypos"	"378"
		"wide"	"133"
		"tall"  "44"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "8"
		"text_ypos" "24"
		"digit_xpos" "66"
		"digit_ypos" "2"
		"digit2_xpos" "8" // 98
		"digit2_ypos" "0" // 16

		// Have to override fonts here because ClientScheme is in engine and can't get new conditionals
		"NumberFont"		"HudNumbers_Deck"
		"NumberGlowFont"	"HudNumbersGlow_Deck"
		"SmallNumberFont"	"HudNumbersSmall_Deck"
		"TextFont"		"Default_Deck"
	}

	AchievementNotificationPanel	
	{
		"fieldName"				"AchievementNotificationPanel"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"0"
		"ypos"					"180"
		"wide"					"f10"	[$WIN32]
		"wide"					"f60"	[$X360]
		"tall"					"100"
	}
}
