LicensePlate=LicensePlate or {}

local PlateBase=Material(LicensePlate_lang().Texture ,"unlitgeneric smooth")

surface.CreateFont("LicensePlate",{
	font="Arial",
	size=LicensePlate_lang().SetFontSize,
	antialias=true,
})

local model
local w,h
hook.Add("PostDrawTranslucentRenderables","LicensePlate",function()
	surface.SetMaterial(PlateBase)
	surface.SetDrawColor(255,255,255,255)
	surface.SetFont("LicensePlate")
	surface.SetTextColor(LicensePlate_lang().SetTextColor)
	for _,veh in ipairs(ents.FindByClass("prop_vehicle_*")) do
		model=veh:GetModel()
		if LicensePlate.ModelPlates[model] then
			local id=veh:GetNWString("LicensePlate",nil)
			if id then
				w,h=surface.GetTextSize(id)
				for _,plate in ipairs(LicensePlate.ModelPlates[model]) do
					cam.Start3D2D(veh:LocalToWorld(plate.pos),veh:LocalToWorldAngles(plate.ang),plate.scale)
						surface.DrawTexturedRect(-390,-82.5,780,165)
						surface.SetTextPos(-w/LicensePlate_lang().SetTextPos[1],-h/LicensePlate_lang().SetTextPos[2])
						surface.DrawText(id)
					cam.End3D2D()
				end
			end
		end
	end
end)