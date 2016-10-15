AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

include("shared.lua")

function ENT:Initialize()
	self:SetUseType(SIMPLE_USE)
	self:SetModel("models/Humans/Group01/Male_01.mdl")
	self.IdleSequence=5
	self:SetHealth(2147483647)
end

function ENT:Use(ply)
	if IsValid(ply) and ply:IsPlayer() then
		ply:SendLua('Entity('..self:EntIndex()..'):Use()')
	end
end

function ENT:RunBehaviour()
	while true do
		self:PlaySequenceAndWait(self.IdleSequence)
		coroutine.yield()
	end
end