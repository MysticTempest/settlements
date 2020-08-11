--
-- switch for debugging
--
settlements.debug = false
--
-- switch for lvm
settlements.lvm = false
--
-- timer between creation of two settlements
--
settlements.last_settlement = 0;
settlements.min_timer = 5
--
--
-- material to replace cobblestone with
--
wallmaterial = {
  "mcl_core:junglewood", 
  "mcl_core:sprucewood", 
  "mcl_core:wood", 
  "mcl_core:birchwood", 
  "mcl_core:acaciawood",   
  "mcl_core:stonebrick", 
  "mcl_core:cobble", 
  "mcl_core:sandstonecarved", 
  "mcl_core:sandstone", 
  "mcl_core:sandstonesmooth2"
}
--
-- path to schematics
--
schem_path = settlements.modpath.."/schematics/"
--
-- list of schematics
--
--Notes: hwidth,hdepth,hheight are what considered when spawning houses. I copied the library code to the butcher & the butcher now spawns more often.
--Previously it had a low spawn due to being bigger. But adjusted max_num as they spawned too close to each other initially.
schematic_table = { 
  {name = "large_house", mts = schem_path.."large_house.mts", hwidth = 8, hdepth = 10, hheight = 11, hsize = 15, max_num = 0, rplc = "n"},
  {name = "well", mts = schem_path.."well.mts", hwidth = 6, hdepth = 8, hheight = 9, hsize = 11, max_num = 0.045, rplc = "n"},
  {name = "small_house", mts = schem_path.."small_house.mts", hwidth = 5, hdepth = 7, hheight = 7, hsize = 11, max_num = 0.9, rplc = "y"},
  {name = "farm", mts = schem_path.."farm.mts", hwidth = 9, hdepth = 7, hheight = 8, hsize = 11, max_num = 0.1, rplc = "n"},
  {name = "lamp", mts = schem_path.."lamp.mts", hwidth = 3, hdepth = 4, hheight = 6, hsize = 10, max_num = 0.1, rplc = "n"},
  {name = "library", mts = schem_path.."library.mts", hwidth = 8, hdepth = 9, hheight = 10, hsize = 11, max_num = 0.055, rplc = "n"},
  {name = "butcher", mts = schem_path.."butcher.mts", hwidth = 8, hdepth = 9, hheight = 10, hsize = 11, max_num = 0.065, rplc = "n"},
  {name = "blacksmith", mts = schem_path.."blacksmith.mts", hwidth = 7, hdepth = 11, hheight = 8, hsize = 11, max_num = 0.050, rplc = "n"},
}
--
-- temporary info for currentliy built settlement (position of each building) 
--
settlement_info = {}
--
-- list of settlements, load on server start up
--
settlements_in_world = {}
--
-- min_distance between settlements
--
min_dist_settlements = 150
if settlements.debug == true 
then
  min_dist_settlements = 200
end
--
-- maximum allowed difference in height for building a sttlement
--
max_height_difference = 25
--
--
--
half_map_chunk_size = 40
quarter_map_chunk_size = 20
