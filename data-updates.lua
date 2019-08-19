-- TODO: change dying_explosion and corpse. Add customizable mod settings.

local entity, name


local function multiply_property(property, modificator)
	if entity[property] == 0 then return end
	entity[property] = entity[property] * modificator
end


name = "locomotive"
entity = data.raw[name][name]
if entity then
	multiply_property("weight", 3)
	multiply_property("max_health", 1.2)
	multiply_property("max_speed", 0.5)
	entity.max_power = "1200kW" -- TODO: change
	if entity.burner.effectivity ~= 0 then
		entity.burner.effectivity = entity.burner.effectivity * 2
	end
	multiply_property("friction_force", 8)
end

name = "cargo-wagon"
entity = data.raw[name][name]
if entity then
	multiply_property("weight", 3)
	multiply_property("max_health", 1.2)
	multiply_property("friction_force", 5)
	multiply_property("inventory_size", 1.5)
end

name = "fluid-wagon"
entity = data.raw[name][name]
if entity then
	multiply_property("weight", 3)
	multiply_property("max_health", 1.2)
	multiply_property("friction_force", 5)
	multiply_property("capacity", 1.5)
end


-- For https://mods.factorio.com/mod/OS-Speed-Train
---------------------------------------------------
name = "speed-train"
entity = data.raw["locomotive"][name]
if entity then
	multiply_property("weight", 3)
	multiply_property("max_health", 1.2)
	multiply_property("max_speed", 0.5)
	entity.max_power = "4000kW" -- TODO: change
	if entity.burner.effectivity ~= 0 then
		entity.burner.effectivity = entity.burner.effectivity * 2
	end
	multiply_property("friction_force", 8)
end

name = "speed-cargo-wagon"
entity = data.raw["cargo-wagon"][name]
if entity then
	multiply_property("weight", 3)
	multiply_property("max_health", 1.2)
	multiply_property("friction_force", 5)
	multiply_property("inventory_size", 1.5)
end
---------------------------------------------------
