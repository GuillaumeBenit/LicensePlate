LicensePlate=LicensePlate or {}

resource.AddWorkshop("781258788")

hook.Add("PlayerSpawnedVehicle","LicensePlate",function(ply, veh)
	if veh:IsVehicle() then
		timer.Simple(0,function()
			if IsValid(veh) and LicensePlate.ModelPlates[veh:GetModel()] then
				if IsValid(ply) then
					veh:SetNWString("LicensePlate",LicensePlate_plate(ply))
				end
			end
		end)
	end
end)