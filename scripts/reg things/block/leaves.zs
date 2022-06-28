#priority 4
#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;


function blockAdder(name as string, blockmaterial as BlockMaterial, blockLayer as string, blockHardness as float, toolLevel as int, toolClass as string,translucent as bool,fullBlock as bool) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.creativeTab = <creativetab:misc>;
    block.blockLayer = blockLayer;
    block.blockHardness = blockHardness;
    block.toolLevel = toolLevel;
    block.toolClass = toolClass;
    block.fullBlock = fullBlock;
    block.register();
}

var block as string[] = [
    "mulberry_leaves","sakura_leaves"
];

for bcl in block {
    blockAdder(bcl,<blockmaterial:leaves>,"CUTOUT", 5.0, 2.0, "scissors",true,false);
}
