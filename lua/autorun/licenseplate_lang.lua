LicensePlate=LicensePlate or {}

local LicensePlate_country=CreateConVar("LicensePlate_country", "fr", {FCVAR_ARCHIVE, FCVAR_PROTECTED, FCVAR_SERVER_CAN_EXECUTE}, "Language of license plates")

LicensePlate.lang=LicensePlate_country:GetString()

LicensePlate.langTable={
	["be"]={
		["Texture"]="licenseplate/plate/b.png",
		["SetTextColor"]=Color(255,0,0),
		["SetTextPos"]={2.25,2},
		["SetFontSize"]=150
	},
	["de"]={
		["Texture"]="licenseplate/plate/d.png",
		["SetTextColor"]=Color(0,0,0),
		["SetTextPos"]={2.25,2},
		["SetFontSize"]=150
	},
	["fi"]={
		["Texture"]="licenseplate/plate/fin.png",
		["SetTextColor"]=Color(0,0,0),
		["SetTextPos"]={2.25,2},
		["SetFontSize"]=150
	},
	["fr"]={
		["Texture"]="licenseplate/plate/f.png",
		["SetTextColor"]=Color(0,0,0),
		["SetTextPos"]={2,2},
		["SetFontSize"]=100
	},
	["it"]={
		["Texture"]="licenseplate/plate/i.png",
		["SetTextColor"]=Color(0,0,0),
		["SetTextPos"]={2,2},
		["SetFontSize"]=100
	},
	["ru"]={
		["Texture"]="licenseplate/plate/rus.png",
		["SetTextColor"]=Color(0,0,0),
		["SetTextPos"]={1.37,2},
		["SetFontSize"]=125
	},
	["da"]={
		["Texture"]="licenseplate/plate/dk.png",
		["SetTextColor"]=Color(0,0,0),
		["SetTextPos"]={2.25,2},
		["SetFontSize"]=125
	}
}

function LicensePlate_plate(ply)
	if LicensePlate.lang=="fr" then
		return LicensePlate_let(ply,1)..LicensePlate_rlet().."-"..LicensePlate_id(ply).."-"..LicensePlate_rlet()..LicensePlate_let(ply,10)
	end
	if LicensePlate.lang=="be" then
		return "1".."-"..LicensePlate_let(ply,1)..LicensePlate_rlet()..LicensePlate_let(ply,10).."-"..LicensePlate_id(ply)
	end
	if LicensePlate.lang=="it" then
		return LicensePlate_let(ply,1)..LicensePlate_rlet().." "..LicensePlate_id(ply)..LicensePlate_rlet()..LicensePlate_let(ply,10)
	end
	if LicensePlate.lang=="fi" then
		return LicensePlate_let(ply,1)..LicensePlate_rlet()..LicensePlate_let(ply,10).."-"..LicensePlate_id(ply)
	end
	if LicensePlate.lang=="de" then
		return LicensePlate_let(ply,1)..LicensePlate_rlet()..":"..LicensePlate_rlet()..LicensePlate_let(ply,10).." "..LicensePlate_id(ply)
	end
	if LicensePlate.lang=="ru" then
		return LicensePlate_rlet()..LicensePlate_id(ply)..LicensePlate_let(ply,10)..LicensePlate_let(ply,1)
	end
	if LicensePlate.lang=="da" then
		return LicensePlate_let(ply,1)..LicensePlate_let(ply,10).." "..math.random(11,99).." "..LicensePlate_id(ply)
	end
	return "error"
end

function LicensePlate_plate_npc(ply)
	if LicensePlate.lang=="fr" then
		return LicensePlate_let(ply,1).."▓".."-"..LicensePlate_id(ply).."-".."▓"..LicensePlate_let(ply,10)
	end
	if LicensePlate.lang=="be" then
		return "1".."-"..LicensePlate_let(ply,1).."▓"..LicensePlate_let(ply,10).."-"..LicensePlate_id(ply)
	end
	if LicensePlate.lang=="it" then
		return LicensePlate_let(ply,1).."▓".." "..LicensePlate_id(ply).."▓"..LicensePlate_let(ply,10)
	end
	if LicensePlate.lang=="fi" then
		return LicensePlate_let(ply,1).."▓"..LicensePlate_let(ply,10).."-"..LicensePlate_id(ply)
	end
	if LicensePlate.lang=="de" then
		return LicensePlate_let(ply,1).."▓"..":".."▓"..LicensePlate_let(ply,10).." "..LicensePlate_id(ply)
	end
	if LicensePlate.lang=="ru" then
		return "▓"..LicensePlate_id(ply)..LicensePlate_let(ply,10)..LicensePlate_let(ply,1)
	end
	if LicensePlate.lang=="da" then
		return LicensePlate_let(ply,1)..LicensePlate_let(ply,10).." ".."▓▓".." "..LicensePlate_id(ply)
	end
	return "error"
end