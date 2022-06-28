import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var ir = <assembly:ironmaking_furnace>;

ir.setItemSlot(3, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input1");
ir.setItemSlot(1, 4, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input2");       
ir.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");
ir.setDurationSlot(3,3)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");
ir.setItemSlot(5, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output");

ir.setJEIItemSlot(3,2,"input1");
ir.setJEIItemSlot(5,2,"output");
ir.setJEIItemSlot(1,4,"input2");
ir.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
ir.setJEIDurationSlot(3,3, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<contenttweaker:crude_iron>);})
.requireItem("input1", <ore:high_ironOre>*2)
.requireItem("input2", <ore:coal>)
.requireDuration("fire", 1000)
.requireDuration("duration", 1000);




var recipe2 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<contenttweaker:crude_iron>);})
.requireItem("input1", <ore:low_ironOre>*4)
.requireItem("input2", <ore:coal>)
.requireDuration("fire", 1000)
.requireDuration("duration", 1000);



ir.addRecipe(recipe1);
ir.addJEIRecipe(recipe1);
ir.addRecipe(recipe2);
ir.addJEIRecipe(recipe2);