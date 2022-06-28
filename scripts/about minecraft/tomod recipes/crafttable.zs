import mods.extendedcrafting.TableCrafting.addShaped;

//砖窑
recipes.addShaped(<requious:brickkiln>,
 [[<minecraft:clay>, <minecraft:stone>,<minecraft:clay>],
 [<minecraft:stone>, <minecraft:clay>, <minecraft:stone>],
 [<minecraft:clay>, <minecraft:stone>, <minecraft:clay>]]);
 
//基础机械外壳
recipes.remove(<ic2:resource:12>);
recipes.addShaped(<ic2:resource:12>,
 [[<contenttweaker:normal_steelp>, <contenttweaker:normal_steelp>,<contenttweaker:normal_steelp>],
 [<contenttweaker:normal_steelp>, null, <contenttweaker:normal_steelp>],
 [<contenttweaker:normal_steelp>,<contenttweaker:normal_steelp>, <contenttweaker:normal_steelp>]]);
 //基础工作台
 recipes.remove(<extendedcrafting:table_basic>);
 recipes.addShaped(<extendedcrafting:table_basic>,
 [[<extendedcrafting:material:2>, <contenttweaker:ban>,<extendedcrafting:material:2>],
 [<contenttweaker:ban>, <extendedcrafting:material:2>, <contenttweaker:ban>],
 [<extendedcrafting:material:2>,<contenttweaker:ban>, <extendedcrafting:material:2>]]);
 //纺织台
 recipes.addShaped(<requious:textile_platform>, [
	[<ore:woolWhite>, <ore:chestWood>, <ore:woolWhite>], 
	[<ore:woolWhite>, <ore:craftingTableWood>, <ore:woolWhite>], 
	[<ore:dyeWhite>, <ore:woolWhite>, <ore:dyeWhite>]
]);
//旅行者背包
recipes.removeByMod("travelersbackpack");
recipes.addShaped(<travelersbackpack:travelers_backpack>, [
	[<contenttweaker:final_leather>, <camping:bag:2>, <contenttweaker:final_leather>], 
	[<contenttweaker:cashmere_rare>,<contenttweaker:final_leather>, <contenttweaker:cashmere_rare>], 
	[<contenttweaker:cashmere_rare>,<contenttweaker:cashmere_rare>,<contenttweaker:cashmere_rare>]
]);
//背包
recipes.removeByMod("camping");
//亚麻删除
recipes.remove(<camping:hemp>,true);
recipes.remove(<harvestcraft:kenafitem>,true);
recipes.remove(<harvestcraft:flaxitem>,true);
//羊绒
recipes.addShapeless(<contenttweaker:cashmere>,[<ore:woolWhite>*4,<contenttweaker:textile_awl>.transformDamage(5)]);
//床删除
var bed = <minecraft:bed:*>;
recipes.remove(bed);
//床合成
recipes.addShaped(bed,[
	[null,null,null],
	[<contenttweaker:pillow>,<contenttweaker:bedding>,<contenttweaker:bedding>],
	[<minecraft:planks>,<minecraft:planks>,<minecraft:planks>]
]);
//青铜删除
recipes.remove(<ore:dustBronze>);
//石锤了
recipes.remove(<artisanworktables:artisans_hammer_stone>);
//小撮青铜粉
recipes.addShapeless(<ic2:dust>,[<ore:dustTinyBronze>,<ore:dustTinyBronze>,<ore:dustTinyBronze>,<ore:dustTinyBronze>,<ore:dustTinyBronze>,<ore:dustTinyBronze>,<ore:dustTinyBronze>,<ore:dustTinyBronze>,<ore:dustTinyBronze>]);
//煤炭
recipes.addShapeless(<grimoireofgaia:misc_furnace_fuel>,[<cttinycoal:tiny_coal>*9]);
recipes.addShapeless(<minecraft:coal>,[<grimoireofgaia:misc_furnace_fuel>*3]);
//金属熔炼炉
recipes.addShaped(<requious:mix_furnace>, [
	[<contenttweaker:furnace_brick>,<contenttweaker:furnace_brick>,<contenttweaker:furnace_brick>], 
	[<minecraft:chest>,<contenttweaker:furnace_brick>,<minecraft:chest>], 
	[<contenttweaker:furnace_brick>,<contenttweaker:furnace_brick>,<contenttweaker:furnace_brick>]
]);