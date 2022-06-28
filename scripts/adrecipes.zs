import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("tanner")
  .setShaped([
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]])
  .setFluid(<liquid:tannin> * 2000)
  .addTool(<ore:artisansShears>, 10)
  .addOutput(<contenttweaker:tanning_leather> * 2)
  .create();