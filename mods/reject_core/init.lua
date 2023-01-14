minetest.register_alias("mapgen_stone", "air")
minetest.register_alias("mapgen_water_source", "air")
minetest.register_alias("mapgen_river_water_source", "air")

local reason = minetest.settings:get("reject_reason")
if not reason or reason == "" then
	reason = "This server is closed."
end

minetest.register_on_prejoinplayer(function(name, ip)
	return reason
end)
