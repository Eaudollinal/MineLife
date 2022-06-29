#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var dr =<assembly:drying_rack>;

dr.setItemSlot(3,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input");

dr.setItemSlot(5,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("output");

dr.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges2.png", 6, 8, 7, 8, GaugeDirection.up(), false, 1, 1))
        .setGroup("duration");

dr.setJEIItemSlot(5,2,"output");
dr.setJEIItemSlot(3,2,"input");
dr.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges2.png",6, 8, 7, 8, GaugeDirection.right(), false, 1, 1));

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<contenttweaker:cashmere_rare>);})
.requireItem("input",<contenttweaker:wetted_wool_material>)
.requireDuration("duration", 1000);

dr.addRecipe(recipe1);
dr.addJEIRecipe(recipe1);

function RecipeAdder(Input as IIngredient, Output as IItemStack ,Duration as int){

var dr =<assembly:drying_rack>;

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",Output);})
.requireItem("input",Input)
.requireDuration("duration", Duration);

dr.addRecipe(recipe1);
dr.addJEIRecipe(recipe1);
}
