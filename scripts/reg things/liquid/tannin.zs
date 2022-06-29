#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var Tannin as Fluid = VanillaFactory.createFluid("tannin", 0xD98719);
Tannin.temperature = 20;
Tannin.viscosity = 700;
Tannin.density = 700;
Tannin.luminosity = 0;
Tannin.stillLocation = "contenttweaker:blocks/tannin";
Tannin.flowingLocation = "contenttweaker:blocks/tannin_flow";
Tannin.colorize = false;	
Tannin.material = <blockmaterial:water>;
Tannin.register();