import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

RecipeBuilder.newBuilder("fabric_maker_1", "fabric_maker",1000).
addItemInput(<minecraft:string>*4).
addItemOutput(<contenttweaker:silk>).
build();

