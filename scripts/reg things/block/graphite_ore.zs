#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var Graphiteore as Block = VanillaFactory.createBlock("graphite_ore", <blockmaterial:rock>);
Graphiteore.blockHardness = 4.0;
Graphiteore.blockResistance = 5.0;
Graphiteore.toolClass = "pickaxe";
Graphiteore.toolLevel = 1;
Graphiteore.register();