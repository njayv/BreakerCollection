extends FunkinScript

func _on_event_hit(event: EventData) -> void:
	if event.name.to_lower() != &"changecharacter":
		return
	
	var data: Dictionary = event.data[0]
	var target: String = String(data.get("target", "bf")).to_lower()
	var character_name: String = String(data.get("character", "bf"))
	
	game.replace_character(target, "res://scenes/game/characters/%s.tscn" % character_name)
