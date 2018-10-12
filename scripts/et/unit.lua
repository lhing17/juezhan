local unit = {}


function unit.register_jass_triggers()

    -- 单位被攻击事件
    local j_trg = war3.CreateTrigger(function()
		local source = unit.j_unit(jass.GetAttacker())
		local target = unit.j_unit(jass.GetTriggerUnit())
		local dmg = source:get '攻击'
		source.last_attack_damage = {
			source = source,
			target = target,
			attack = true,
			common_attack = true,
			damage = dmg,
			skill = false,
		}
		setmetatable(source.last_attack_damage, damage)
		source.last_attack_damage:on_attribute_attack()
		source:event_notify('单位-攻击开始', source.last_attack_damage)
	end)
	for i = 1, 16 do
		jass.TriggerRegisterPlayerUnitEvent(j_trg, player[i].handle, jass.EVENT_PLAYER_UNIT_ATTACKED, nil)
	end
end

function init()

end

init()

return unit