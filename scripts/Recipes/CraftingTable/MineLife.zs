import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;


//a function for adding recipes of pickaxes
function PickaxeRecipes(metal as IItemStack,pickaxe as IItemStack){
    recipes.addShaped(pickaxe,
    [[metal, metal, metal],
    [null,<minecraft:stick>, null],
    [null,<minecraft:stick>, null]]);
}

var pickaxes as IItemStack[] = [<minelife:damascussteelpickaxe>];
var metals as IItemStack[] = [<contenttweaker:damascus_steel>];
for pickaxe in pickaxes 
{
    for metal in metals
    {
    PickaxeRecipes(metal,pickaxe);
    }
}

//Black Brick
 recipes.addShaped(<contenttweaker:black_brick_block>,
 [[<contenttweaker:black_brick>, <contenttweaker:black_brick>,<contenttweaker:black_brick>],
 [<contenttweaker:black_brick>, <contenttweaker:black_brick>, <contenttweaker:black_brick>],
 [<contenttweaker:black_brick>, <contenttweaker:black_brick>, <contenttweaker:black_brick>]]);

//Graphite Block
 recipes.addShaped(<contenttweaker:graphite_block>,
 [[<contenttweaker:graphite>, <contenttweaker:graphite>,<contenttweaker:graphite>],
 [<contenttweaker:graphite>,<contenttweaker:graphite>, <contenttweaker:graphite>],
 [<contenttweaker:graphite>,<contenttweaker:graphite>, <contenttweaker:graphite>]]);

//Needle
recipes.addShapedMirrored(<contenttweaker:needle>,
 [[<ore:ingotIron>, null,null],
 [null,<ore:ingotIron>, null],
 [null,null, <ore:ingotIron>]]);