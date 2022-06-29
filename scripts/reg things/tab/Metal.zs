#priority 4
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;

val tab3 as CreativeTab = VanillaFactory.createCreativeTab("tab3", <item:contenttweaker:crude_iron>);
tab3.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:tab3>;
    item.rarity = rarity;
    item.maxDamage = maxdamage;
    item.maxStackSize = maxstacksize;
    item.toolLevel = lvl;
    item.glowing = glowing;
    item.register();
}

function blockAdder(name as string, blockmaterial as BlockMaterial, blockLayer as string, blockHardness as float, toolLevel as int, toolClass as string) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.creativeTab = <creativetab:tab5>;
    block.blockLayer = blockLayer;
    block.blockHardness = blockHardness;
    block.toolLevel = toolLevel;
    block.toolClass = toolClass;
    block.register();
}

var common as string[] = [
    "crude_iron", "melting_iron","crude_steel","ban","damascus_steel","damascus_steelp","normal_steel","normal_steelp","nickel_sharp","aluminium_ingot", "aluminium_casing", 
    "crushed_aluminium_ore","aluminium_dust","nickel_ingot","nickel_casing","crushed_nickel_ore","nickel_dust","steel_stick","limon_iron"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false);
}

var ore as string[] = [
   
];

for Ore in ore {
    blockAdder(Ore,<blockmaterial:rock>,"SOLID", 5.0, 2.0, "pickaxe");
}


