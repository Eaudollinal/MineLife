#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var sb as Block = VanillaFactory.createBlock("steam_machine_block", <blockmaterial:rock>);
sb.blockHardness = 4.0;
sb.blockResistance = 5.0;
sb.toolClass = "pickaxe";
sb.toolLevel = 1;
sb.creativeTab = <creativetab:misc>;
sb.register();
