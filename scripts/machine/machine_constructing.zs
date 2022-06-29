import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var br = <assembly:machine_constructing>;

br.setItemSlot(2,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input5");

br.setItemSlot(1,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input2");

br.setItemSlot(1,1, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input1");

br.setItemSlot(2,1, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input4");

br.setItemSlot(3,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input8");

br.setItemSlot(1,3, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input3");

br.setItemSlot(2,3, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input6");

br.setItemSlot(3,1, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input7");

br.setItemSlot(3,3, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input9");

br.setItemSlot(5,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("output");

br.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");