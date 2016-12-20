LicensePlate=LicensePlate or {}

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