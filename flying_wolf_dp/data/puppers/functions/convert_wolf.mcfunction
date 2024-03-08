data modify storage puppers variant set string entity @s variant 10
function puppers:macro/append_variant with storage minecraft:puppers

execute at @s run summon minecraft:bee ~ ~ ~ {Age:0,Silent:1b,Invulnerable:1b,active_effects:[{duration:-1,id:"minecraft:invisibility",show_particles:0b}],Tags:["wolf_mount","wolf_mount_newest"],PersistenceRequired:1b}
data modify entity @e[tag=wolf_mount_newest,limit=1] Owner set from entity @s Owner

ride @s mount @e[tag=wolf_mount_newest,limit=1]
tag @e[tag=wolf_mount_newest] remove wolf_mount_newest

data remove entity @s body_armor_item