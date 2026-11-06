# Start above the build limit so a missed heightmap cannot look like the surface.
$execute in minecraft:overworld positioned $(x) 400 $(z) positioned over world_surface align xz positioned ~0.5 ~ ~0.5 run function dandelion:respawn/check_here
