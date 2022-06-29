#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var mix = <assembly:mix_furnace>;

mix.setItemSlot(3, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input1");
mix.setItemSlot(1, 4, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input2");       
mix.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");
mix.setDurationSlot(3,3)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");
mix.setItemSlot(5, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output");
mix.setItemSlot(2, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input3");

mix.setJEIItemSlot(3,2,"input1");
mix.setJEIItemSlot(2,2,"input3");
mix.setJEIItemSlot(5,2,"output");
mix.setJEIItemSlot(1,4,"input2");
mix.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
mix.setJEIDurationSlot(3,3, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<ic2:dust:18>*2);})
.requireItem("input1", <ore:dustTin>*3)
.requireItem("input2", <ore:coal>)
.requireItem("input3", <ore:dustCopper>)
.requireDuration("fire", 1000)
.requireDuration("duration", 1000);

mix.addRecipe(recipe1);
mix.addJEIRecipe(recipe1);

var recipe2 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<contenttweaker:damascus_steel>);})
.requireItem("input1", <contenttweaker:normal_steel>)
.requireItem("input2", <frogcraftrebirth:inflammable>)
.requireItem("input3", <contenttweaker:nickel_sharp>*3)
.requireDuration("fire", 1000)
.requireDuration("duration", 2000);

mix.addRecipe(recipe2);
mix.addJEIRecipe(recipe2);

function RecipeAdder(Main as IIngredient,Material as IIngredient,Fuel as IIngredient,OutPut as IItemStack,FireTime as int, Duration as int){

var mix = <assembly:mix_furnace>;

var RecipeName =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input1",Main)
.requireItem("input2",Fuel)
.requireItem("input3",Material)
.requireDuration("fire",FireTime)
.requireDuration("duration",Duration);

mix.addRecipe(RecipeName);
mix.addJEIRecipe(RecipeName);

}

