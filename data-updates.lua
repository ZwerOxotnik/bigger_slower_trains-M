-- TODO: change dying_explosion and corpse

local name = "locomotive"
local entity = data.raw[name][name]
if entity then
	entity.weight = entity.weight * 3
	entity.max_health = entity.max_health * 1.2
	entity.max_speed = entity.max_speed / 2
	entity.max_power = "1200kW" -- TODO: change
	entity.burner.effectivity = entity.burner.effectivity * 2
	entity.friction_force = entity.friction_force * 16
end


local name = "cargo-wagon"
local entity = data.raw[name][name]
if entity then
	entity.weight = entity.weight * 3
	entity.max_health = entity.max_health * 1.2
	entity.friction_force = entity.friction_force * 5
	entity.inventory_size = entity.inventory_size * 1.5
end


local name = "fluid-wagon"
local entity = data.raw[name][name]
if entity then
	entity.weight = entity.weight * 3
	entity.max_health = entity.max_health * 1.2
	entity.friction_force = entity.friction_force * 5
	entity.capacity = entity.capacity * 1.5
end
