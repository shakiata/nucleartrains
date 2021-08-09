local nuctrain = util.table.deepcopy(data.raw["locomotive"]["locomotive"]);
nuctrain.name = "Nuclear_Train";
nuctrain.max_health = 7350; -- 3350 original
nuctrain.minable.result = "Nuclear_Train";
nuctrain.weight = 220; -- removed last zero
-- nuctrain.max_speed = 2.87037037; 
nuctrain.max_speed = 4; -- Speed 400Km/h
nuctrain.max_power = "41000kW"; --21000
nuctrain.reversing_power_modifier = 1;
nuctrain.corpse = "locomotive-remnants";
nuctrain.dying_explosion = "locomotive-explosion";
nuctrain.braking_force = 250; -- added 0
nuctrain.connection_distance = 3;
nuctrain.joint_distance = 4;
nuctrain.color = {r = 0, g = 1, b = 0, a = 0.5}
local smoke = nuctrain.burner.smoke
nuctrain.burner =
    {
      fuel_category = "nuclear",
      effectivity = 1.5, --was changed in original mod setting to normal
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      smoke = smoke,
    };


-- Cargo wagon max speed modifier
data.raw["cargo-wagon"]["cargo-wagon"].max_speed = 6
-- Fluid wagon max speed modifier
data.raw["fluid-wagon"]["fluid-wagon"].max_speed = 6
-- Artillery wagon max speed modifier
data.raw["artillery-wagon"]["artillery-wagon"].max_speed = 6

data:extend({nuctrain})