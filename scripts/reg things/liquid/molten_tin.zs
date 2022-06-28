#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var MoltenTin as Fluid = VanillaFactory.createFluid("molten_tin", 0xD98719);
MoltenTin.temperature = 1600;
MoltenTin.viscosity = 4000;
MoltenTin.density = 4000;
MoltenTin.luminosity = 4;
MoltenTin.stillLocation = "contenttweaker:blocks/liquid_tin";
MoltenTin.flowingLocation = "contenttweaker:blocks/liquid_tin_flow";
MoltenTin.colorize = false;	
MoltenTin.material = <blockmaterial:lava>;
MoltenTin.register();