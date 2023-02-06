/// Control depth
phy_fixed_rotation = true;
depth = -y;
if hp <= 0{
	persistent = false;
}

for (var i = 0; i < ds_list_size(KO_LIST); i++){
	if ds_list_find_index(KO_LIST, KO_LIST[|i]) == id{
		instance_destroy();	
	}
}





/*
for (var i = 0; i < ds_list_size(KO_LIST); i++){
	if ds_list_find_index(KO_LIST, KO_LIST[|i]) == id{
		instance_destroy();	
	}
}



/*
if ds_exists(KO_LIST, ds_type_list){
	for (var i = 0; i < ds_list_size(KO_LIST); i++){
		var list = ds_list_find_index(KO_LIST, id);
		if list == id{
			instance_destroy();
		}
	}
}
*/

/*
if ds_exists(KO_LIST, ds_type_list){
	if ds_list_find_index(KO_LIST, id) == id{
		instance_destroy();
	}
}



/*
if ds_exists(KO_LIST, ds_type_list){
	KO_LIST[| ob_player_stats.ko_index ++] = id;
}
	


