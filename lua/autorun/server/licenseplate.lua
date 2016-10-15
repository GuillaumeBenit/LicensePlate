LicensePlate=LicensePlate or {}

local function FindEntityOwner(ent,Type)
	local cleanup_list=cleanup.GetList()
	for id,types in pairs(cleanup_list) do
		if types[Type] then
			for _,ent1 in ipairs(types[Type]) do
				if ent1==ent then
					return player.GetByUniqueID(id) or nil
				end
			end
		end
	end
	return nil
end

hook.Add("OnEntityCreated","LicensePlate",function(veh)
	if veh:IsVehicle() then
		timer.Simple(0,function()
			if IsValid(veh) and LicensePlate.ModelPlates[veh:GetModel()] then
				local ply=FindEntityOwner(veh,"vehicles")
				if IsValid(ply) then
					veh:SetNWString("LicensePlate",LicensePlate_plate(ply))
				end
			end
		end)
	end
end)