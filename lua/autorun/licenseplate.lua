LicensePlate=LicensePlate or {}

resource.AddWorkshop("781258788")

function LicensePlate_lang()
	for k,v in pairs(LicensePlate.langTable) do
		if k==LicensePlate.lang then
			return v
		end
	end
	return false
end

function LicensePlate_id(ply)
	return string.Explode(",",string.Comma(ply:SteamID64()),false)[6]
end

function LicensePlate_rlet()
	return string.char(math.random(65,90))
end

function LicensePlate_let(ply,num)
	local name=string.byte(ply:GetName(),1,1)
	
	function maj(let)
		if let>=97 and let<=122 then
			return let-32
		else
			return let
		end
	end
	
	if maj(name)>=65 and maj(name)<=78 then
		return string.char(maj(name)+num)
	else
		return string.char(maj(name)-num)
	end
end