#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var crash as Block = VanillaFactory.createBlock("crash", <blockmaterial:rock>);
crash.blockHardness = 4.0;
crash.blockResistance = 5.0;
crash.toolClass = "pickaxe";
crash.toolLevel = 1;
crash.fullBlock=false;
crash.register();