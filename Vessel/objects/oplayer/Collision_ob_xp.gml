/// Collect xp
with (other){
	instance_destroy();
}

// Level up code
with (ob_player_stats){
	xp += 1;
	if (xp >= maxxp){
		level += 1;	
		xp = xp - maxxp;
		maxxp *= 1.5; 
		hp += 2;
		maxhp += 2;
		stamina += 2;
		maxstamina += 2;
		attack += 1;
	}
}
