#priority 4
#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;

val tab4 as CreativeTab = VanillaFactory.createCreativeTab("tab4", <item:contenttweaker:textile_awl>);
tab4.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:tab4>;
    item.rarity = rarity;
    item.maxDamage = maxdamage;
    item.maxStackSize = maxstacksize;
    item.glowing = glowing;
    if (isTool) {
        item.toolLevel = lvl;
    } else {
        item.toolLevel = lvl;
    }
    item.register();
}

//common_items
var common as string[] =
[
    "silkworm","silk",
    "wetted_wool_material","cotton_fabric","cashmere","cashmere_rare",
    "black_padded_cloth","black_reinforced_cloth","padded_cloth","reinforced_cloth",
    "lenin","ma_sheng",
    "cotton_material","cotton_line",
    "tanning_leather","delicate_leather","final_leather"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}

function blockAdder(name as string, blockmaterial as BlockMaterial, blockLayer as string, blockHardness as float, toolLevel as int, toolClass as string) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.creativeTab = <creativetab:tab4>;
    block.blockLayer = blockLayer;
    block.blockHardness = blockHardness;
    block.toolLevel = toolLevel;
    block.toolClass = toolClass;
    block.register();
}

var block as string[] = [
    "cotton_block"
];

for bcl in block {
    blockAdder(bcl,<blockmaterial:rock>,"SOLID", 5.0, 2.0, "pickaxe");
}
