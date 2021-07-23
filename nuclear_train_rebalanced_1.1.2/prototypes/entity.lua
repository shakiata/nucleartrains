local nuctrain = util.table.deepcopy(data.raw["locomotive"]["locomotive"]);
nuctrain.name = "Nuclear_Train";
nuctrain.max_health = 2350;
nuctrain.minable.result = "Nuclear_Train";
nuctrain.weight = 2200;
-- nuctrain.max_speed = 2.87037037; 
nuctrain.max_speed = 3; -- Speed 400Km/h
nuctrain.max_power = "2100kW";
nuctrain.reversing_power_modifier = 0.8;
nuctrain.corpse = "locomotive-remnants";
nuctrain.dying_explosion = "locomotive-explosion";
nuctrain.braking_force = 15.5;
nuctrain.connection_distance = 3;
nuctrain.joint_distance = 4;
nuctrain.color = {r = 0, g = 1, b = 0, a = 0.5}
local smoke = nuctrain.burner.smoke
nuctrain.burner =
    {
      fuel_category = "nuclear",
      effectivity = 0.05,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      smoke = smoke,
    };


-- Cargo wagon max speed modifier
data.raw["cargo-wagon"]["cargo-wagon"].max_speed = 2.8
-- Fluid wagon max speed modifier
data.raw["fluid-wagon"]["fluid-wagon"].max_speed = 2.8
-- Artillery wagon max speed modifier
data.raw["artillery-wagon"]["artillery-wagon"].max_speed = 2.8

data:extend({nuctrain})