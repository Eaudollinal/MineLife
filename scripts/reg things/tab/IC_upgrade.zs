#priority 3
#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val tab2 as CreativeTab = VanillaFactory.createCreativeTab("tab2", <item:ic2:upgrade>);
tab2.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:tab2>;
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
    "fire_upgrade","heat_upgrade"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}