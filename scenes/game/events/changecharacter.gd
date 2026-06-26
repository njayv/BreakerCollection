extends FunkinScript


func _on_event_hit(event: EventData) -> void:
	if event.name.to_lower() != &"changecharacter":
		return

	var data: Dictionary = event.data[0]
	var target: String = data.get("target", "bf")
	var targetChar: String = data.get("character", "hey")
	var character: Character
	match target:
		"bf", "boyfriend":
			character = player
		"gf", "girlfriend":
			character = spectator
		"dad":
			character = opponent
	print("Found: ", character, " to change to: ", targetChar)
	print("Current Opponent is: ", SongAssets.opponent)
