#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var MoltenCopper as Fluid = VanillaFactory.createFluid("molten_copper", 0xD98719);
MoltenCopper.temperature = 1600;
MoltenCopper.viscosity = 4000;
MoltenCopper.density = 4000;
MoltenCopper.luminosity = 4;
MoltenCopper.stillLocation = "contenttweaker:blocks/liquid_copper";
MoltenCopper.flowingLocation = "contenttweaker:blocks/liquid_copper_flow";
MoltenCopper.colorize = false;	
MoltenCopper.material = <blockmaterial:lava>;
MoltenCopper.register();
