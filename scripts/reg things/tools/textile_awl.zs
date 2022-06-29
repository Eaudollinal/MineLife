#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val textile_awl as Item = VanillaFactory.createItem("textile_awl");
textile_awl.maxDamage = 30;
textile_awl.creativeTab = <creativetab:tab4>;    
textile_awl.maxStackSize = 1;
textile_awl.register();
