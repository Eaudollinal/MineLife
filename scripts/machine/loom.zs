#loader crafttweaker reloadableevents

import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerLoggedInEvent;

import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;

//by baka943
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
	var world as IWorld = event.world;
	var pos as IBlockPos = event.position;
	var state as IBlockState = world.getBlockState(pos);
	var player as IPlayer = event.player;
	var stack as IItemStack = event.item;
	var data as IData = player.data.PlayerPersisted;

	if(!world.isRemote()) {
		if(<contenttweaker:cotton_line>.matches(stack)
				&& state == <blockstate:requious:loom_empty:active=false,facing=up>) {
			stack.mutable().shrink(1);
			world.setBlockState(<blockstate:requious:loom_full:active=false,facing=up>, pos);
		}

		if(<contenttweaker:textile_awl>.matches(stack)
				&& state == <blockstate:requious:loom_full:active=false,facing=up>) {
			if(data.KakaChanged < 9) {
				player.update({"PlayerPersisted": {"KakaChanged": data.KakaChanged + 1}});
			} else {
				world.setBlockState(<blockstate:requious:loom_empty:active=false,facing=up>, pos);
				stack.mutable().shrink(1);
				player.give(<contenttweaker:cotton_material>);
				player.update({"PlayerPersisted": {"KakaChanged": 0}});
			}
		}
	}
});

//玩家数据初始化
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
	var player as IPlayer = event.player;
	var data as IData = player.data.PlayerPersisted;
	
	if(isNull(data.KakaChanged)) {
		player.update({"PlayerPersisted": {"KakaChanged": 0}});
	}
});