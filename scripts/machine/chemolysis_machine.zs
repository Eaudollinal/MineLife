import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var machine2 = <assembly:chemolysis_machine>;

machine2.setItemSlot(2,1, ComponentFace.front(), 64)
        .setHandAccess(true, true)
        .setAccess(true, false)
        .setGroup("output1");
machine2.setItemSlot(4,1, ComponentFace.front(), 64)
        .setHandAccess(true, true)
        .setAccess(true, false)
        .setGroup("output2");        
machine2.setItemSlot(6,1, ComponentFace.front(), 64)
        .setHandAccess(true, true)
        .setAccess(true, false)
        .setGroup("output3");              
machine2.setItemSlot(4,3, ComponentFace.up(), 64)
        .setHandAccess(true, true)
        .setAccess(true, false)
        .setGroup("input");
machine2.setItemSlot(0,4, ComponentFace.up(), 64)
        .setHandAccess(true, true)
        .setAccess(true, false)
        .setGroup("model");                       
machine2.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 6, 8, 7, 8, GaugeDirection.up(), false, 1, 2))
        .setGroup("duration");


machine2.setJEIItemSlot(2,1,"output1");
machine2.setJEIItemSlot(4,1,"output2");
machine2.setJEIItemSlot(6,1,"output3");
machine2.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 6, 8, 7, 8, GaugeDirection.up(), false, 1, 2));
machine2.setJEIItemSlot(4,3,"input");
machine2.setJEIItemSlot(0,4,"model");


var needed =<contenttweaker:heat_upgrade>.marked("upgrade");

var recipe1 =AssemblyRecipe.create(function(container){
container.addItemOutput("output1",<contenttweaker:manganese_dioxide>);
container.addItemOutput("output2",<contenttweaker:potassium_manganate>);                        
container.addItemOutput("output3",<ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2oxygen", Amount: 1000}}));
container.addItemOutput("model",container.getItem("upgrade"));})
.requireItem("input", <contenttweaker:potassium_permanganate>)
.requireItem("model", needed)
.requireDuration("duration", 20);

machine2.addRecipe(recipe1);
machine2.addJEIRecipe(recipe1);