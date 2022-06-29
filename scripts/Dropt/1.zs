import mods.dropt.Dropt;
import mods.dropt.Harvester;
//石墨
Dropt.list("graphite_list")
    .add(Dropt.rule()
        .matchBlocks(["contenttweaker:graphite_ore"])
        .addDrop(Dropt.drop()
            .items([<contenttweaker:graphite>*2])));

//铁矿石修改
Dropt.list("iron_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:iron_ore"])
        .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("1"))
        .addDrop(Dropt.drop()));

//煤炭掉落
Dropt.list("coal_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:coal_ore"])
        .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("1"))
        .addDrop(Dropt.drop()
        .items([<cttinycoal:tiny_coal>])
        .matchQuantity([<cttinycoal:tiny_coal>*5])
        ));

//铝等级修改
Dropt.list("aluminium_list")
    .add(Dropt.rule()
        .matchBlocks(["contenttweaker:aluminium_ore"])
        .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("2"))
        .addDrop(Dropt.drop()));

//镍碎片掉落
Dropt.list("nickel_list")
    .add(Dropt.rule()
        .matchBlocks(["contenttweaker:nickel_ore"])
        .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("2"))
        .addDrop(Dropt.drop()
        .items([<contenttweaker:nickel_sharp>*3])
        ));