#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val needle as Item = VanillaFactory.createItem("needle");
needle.maxDamage = 30;
needle.creativeTab = <creativetab:tab4>;    
needle.maxStackSize = 1;
needle.register();
