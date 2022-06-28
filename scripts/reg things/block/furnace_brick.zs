#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var fb as Block = VanillaFactory.createBlock("furnace_brick", <blockmaterial:rock>);
fb.blockHardness = 4.0;
fb.blockResistance = 5.0;
fb.toolClass = "pickaxe";
fb.toolLevel = 1;
fb.register();