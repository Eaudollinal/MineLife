import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var tp = <assembly:textile_machine>;

var x as int[] = [3,5];
var slot as string[] = ["input","output"];

for i, heng in x {
        var set = slot[i];
        tp.setItemSlot(heng,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup(set);
         }

tp.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges2.png", 4, 4, 4, 5, GaugeDirection.up(), false, 1, 1))
        .setGroup("duration");

tp.setJEIItemSlot(5,2,"output");
tp.setJEIItemSlot(3,2,"input");
tp.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges2.png",4, 4, 4, 5, GaugeDirection.right(), false, 1, 1));

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<contenttweaker:lenin>);})
.requireItem("input", <contenttweaker:ma_sheng>*4)
.requireDuration("duration", 1000);

tp.addRecipe(recipe1);
tp.addJEIRecipe(recipe1);