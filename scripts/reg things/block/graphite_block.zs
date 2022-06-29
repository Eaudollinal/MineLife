#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var gb as Block = VanillaFactory.createBlock("graphite_block", <blockmaterial:rock>);
gb.blockHardness = 4.0;
gb.blockResistance = 5.0;
gb.toolClass = "pickaxe";
gb.toolLevel = 1;
gb.register();