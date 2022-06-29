#priority 4
#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val tab1 as CreativeTab = VanillaFactory.createCreativeTab("tab1", <item:minecraft:gunpowder>);
tab1.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:tab1>;
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
    "aluminium_hydroxide", "calcium_carbonate", "calcium_hydroxide", "calcium_oxide",
    "copper_hydroxide", "copper_sulphate","ferric_hydroxide","ferric_oxide","ferroferric_oxide","magnesium_hydroxide", "manganese_dioxide", "potassium_manganate",
    "sulfur", "potassium_permanganate", "potassium","graphite"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}

