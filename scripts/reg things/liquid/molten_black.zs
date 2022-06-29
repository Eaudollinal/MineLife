#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var Moltenblack as Fluid = VanillaFactory.createFluid("molten_black",0x201E1E);
Moltenblack.temperature = 16;
Moltenblack.viscosity = 4000;
Moltenblack.density = 4000;
Moltenblack.luminosity = 4;
Moltenblack.material = <blockmaterial:water>;
Moltenblack.register();
