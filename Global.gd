extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	SilentWolf.configure({
		"api_key": "Your API key here",
		"game_id": "Your Game ID here",
		"log_level": 1
	})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://Main.tscn"
	})
	
	SilentWolf.configure_auth({
		"redirect_to_scene": "res://Main.tscn",
		"login_scene": "res://addons/silent_wolf/Auth/Login.tscn",
#		"email_confirmation_scene": "res://addons/silent_wolf/Auth/ConfirmEmail.tscn", # comment if email confirmation not enabled
		"reset_password_scene": "res://addons/silent_wolf/Auth/ResetPassword.tscn",
		"session_duration_seconds": 0,
		"saved_session_expiration_days": 30
	})
