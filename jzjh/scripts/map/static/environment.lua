local environment = {}

function environment.init()
	local we
	SetCameraBounds(-15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT),
			-15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM),
			15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT),
			15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP),
			-15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT),
			15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP),
			15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT),
			-15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
	SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
	SetTerrainFogEx(0, 3000.0, 5000.0, 0.5, 0.0, 0.0, 0.0)
	NewSoundEnvironment("Default")
	SetAmbientDaySound("VillageDay")
	SetAmbientNightSound("VillageNight")
	SetMapMusic("Music", true, 0)
	wh = CreateSound("Sound\\Ambient\\DoodadEffects\\Seagull1.wav", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundParamsFromLabel(wh, "SeagullSound")
	SetSoundDuration(wh, 3593)
	Ah = CreateSound("Sound\\Music\\mp3Music\\UndeadVictory.mp3", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundDuration(Ah, 39794)
	SetSoundChannel(Ah, 0)
	SetSoundVolume(Ah, 127)
	SetSoundPitch(Ah, 1.0)
	ah = CreateSound("Sound\\Music\\mp3Music\\Undead1.mp3", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundDuration(ah, 303507)
	SetSoundChannel(ah, 0)
	SetSoundVolume(ah, 127)
	SetSoundPitch(ah, 1.0)
	Bh = CreateSound("Sound\\Music\\mp3Music\\SadMystery.mp3", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundDuration(Bh, 84515)
	SetSoundChannel(Bh, 0)
	SetSoundVolume(Bh, 127)
	SetSoundPitch(Bh, 1.0)
	bh = CreateSound("Sound\\Interface\\Hint.wav", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundParamsFromLabel(bh, "Hint")
	SetSoundDuration(bh, 2006)
	Ch = CreateSound("Sound\\Ambient\\DoodadEffects\\SargerasLaugh.wav", false, true, true, 10, 10, "DefaultEAXON")
	SetSoundParamsFromLabel(Ch, "SargerasLaugh")
	SetSoundDuration(Ch, 3326)
	Dh = CreateSound("Sound\\Ambient\\DoodadEffects\\UtherReturns.wav", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundParamsFromLabel(Dh, "UtherReturnsSound")
	SetSoundDuration(Dh, 6711)
	Eh = CreateSound("Abilities\\Spells\\NightElf\\FaerieFire\\FaerieFireLaunch1.wav", false, true, true, 10, 10, "SpellsEAX")
	SetSoundParamsFromLabel(Eh, "FaerieFire")
	SetSoundDuration(Eh, 2067)
	Fh = CreateSound("Abilities\\Spells\\Orc\\Reincarnation\\Reincarnation.wav", false, true, true, 10, 10, "SpellsEAX")
	SetSoundParamsFromLabel(Fh, "Reincarnation")
	SetSoundDuration(Fh, 2728)
	Gh = CreateSound("Sound\\Interface\\Warning.wav", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundParamsFromLabel(Gh, "Warning")
	SetSoundDuration(Gh, 1904)
	Hh = CreateSound("Sound\\Interface\\QuestCompleted.wav", false, false, false, 10, 10, "DefaultEAXON")
	SetSoundParamsFromLabel(Hh, "QuestCompleted")
	SetSoundDuration(Hh, 5155)
	Ih = CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav", false, true, true, 10, 10, "SpellsEAX")
	SetSoundParamsFromLabel(Ih, "ReceiveGold")
	SetSoundDuration(Ih, 589)

	we = AddWeatherEffect(df, 1464820599)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(of, 1178886760)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(xf, 1464755063)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(Df, 1178886760)
	EnableWeatherEffect(we, true)
	SetSoundPosition(ah, -8512.0, -3712.0, 0.0)
	RegisterStackedSound(ah, true, 3520.0, 4224.0)

	we = AddWeatherEffect(Ef, 1380018290)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(Nf, 1464755063)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(Rf, 1464822903)
	EnableWeatherEffect(we, true)
	SetSoundPosition(Bh, 3856.0, 8480.0, 512.0)
	RegisterStackedSound(Bh, true, 4384.0, 4288.0)

	we = AddWeatherEffect(cg, 1296393331)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(Kg, 1280470369)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(Mg, 1397647475)
	EnableWeatherEffect(we, true)

	we = AddWeatherEffect(Yg, 1296393331)
	EnableWeatherEffect(we, true)
	SetSoundPosition(ah, 7344.0, 13456.0, 0.0)
	RegisterStackedSound(ah, true, 1824.0, 3616.0)

	Gt = CreateDestructable(1096050481, -12160.0, -15104.0, 270.0, 0.1, 0)
	createitem(1227895891, -13670.0, -5176.9)
	createitem(1227895891, -15044.5, -4362.7)
	createitem(1227895891, -14352.8, -5099.9)
	createitem(1227895891, -12961.7, -1926.6)
	createitem(1227895891, -11668.2, -3676.2)
	createitem(1227895891, -13280.1, -3255.6)
	createitem(1227895891, -14558.4, -3730.4)
	createitem(1227895891, -12682.9, -5421.0)
	createitem(1227895891, -12819.6, -6280.9)
	createitem(1227895891, -11757.7, -1760.2)
	createitem(1227895891, -11871.1, -1750.7)
	createitem(1227895891, -12008.6, -5355.2)
	createitem(1227897138, -1694.1, -1810.2)
	createitem(1227897138, -1881.7, -1924.9)
	createitem(1227897138, -1657.2, -1924.9)
	createitem(1227897138, -1772.9, -1919.8)
	createitem(1227897138, -1894.2, -1812.9)
	createitem(1227897138, -1799.6, -1810.2)
end
return environment