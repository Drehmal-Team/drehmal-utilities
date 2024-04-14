$summon $(ID) ~ ~ ~ {Health:$(Health)f,Tags:["n_art.temp"],Attributes:[{Name:generic.knockback_resistance,Base:10},{Name:generic.max_health,Base:$(Health)}],NoAI:$(NoAI)b}
$execute summon marker run function n_art:debug/golem/m_init {hp:"$(Health)"}
tag @e remove n_art.temp