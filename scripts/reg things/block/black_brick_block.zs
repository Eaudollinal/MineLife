#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var bbb as Block = VanillaFactory.createBlock("black_brick_block", <blockmaterial:rock>);
bbb.blockHardness = 4.0;
bbb.blockResistance = 5.0;
bbb.toolClass = "pickaxe";
bbb.toolLevel = 1;
bbb.register();