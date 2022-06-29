import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var dr =<assembly:spinning_frame>;

var x as int[] = [3,5];
var slot as string[] = ["input","output"];

for i, heng in x {
        var set = slot[i];
        dr.setItemSlot(heng,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup(set);
         }

dr.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges2.png", 0, 7, 1, 7, GaugeDirection.up(), false, 1, 1))
        .setGroup("duration");

dr.setJEIItemSlot(5,2,"output");
dr.setJEIItemSlot(3,2,"input");
dr.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges2.png",0, 7, 1, 7, GaugeDirection.right(), false, 1, 1));

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<contenttweaker:cotton_fabric>);})
.requireItem("input", <contenttweaker:cotton_block>)
.requireDuration("duration", 1000);

dr.addRecipe(recipe1);
dr.addJEIRecipe(recipe1);