extends Node


enum Biome
{
    OCEAN,
    PLAINS,
    FOREST,
    DESERT,
    MOUNTAIN
}



func get_biome(height, temperature):

    if height < 0.3:
        return Biome.OCEAN


    if height > 0.8:
        return Biome.MOUNTAIN


    if temperature < 0.3:
        return Biome.FOREST


    if temperature > 0.7:
        return Biome.DESERT


    return Biome.PLAINS
