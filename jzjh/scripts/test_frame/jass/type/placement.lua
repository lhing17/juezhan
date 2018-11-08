---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/06 11:47
---

local placement = {}

local mt = {}
placement.__index = mt

mt.type = 'placement'
mt.name = ''

function placement.init()
	local placement_names={}
	for i = 1, #placement_names do
		local pl = {}
		pl.name = placement_names[i]
		setmetatable(pl, placement)
		table.insert(placement, pl)
	end
end