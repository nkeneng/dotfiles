{ pkgs, ... }:
{
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 6;
  system.primaryUser = "stevennkeneng";
  nix.enable = false;

  system.defaults = {
    dock.autohide = true;
    dock.magnification = false;
  };

  environment.systemPackages = with pkgs; [
    obsidian
  ];

  homebrew = {
    enable = true;
    brews = [ "mas" ];
    casks = [ 
		"iina" 
		
		#Terminal
		"ghostty" 

		# Browsers
		"arc"
		"comet"

		#IDE
		"datagrip"
		"phpstorm"
		"visual-studio-code@insiders"
		"visual-studio-code"
		"pycharm"

		"discord"
		"displaylink"
		"elgato-camera-hub"
		"karabiner-elements"
		"raycast"
		"logi-options+"
		"macwhisper"
		"nordvpn"
		"notion"
		"numi"
		"ollama-app"
		"orbstack"
		"postman"
		"termius"
		"tinkerwell"
		"vnc-viewer"
		"warp"
		"zen"
		"zoom"
		"appcleaner"
		"chatgpt"
	];
	masApps = {
		"CleanMyKeyboard" = 6468120888;
		"Windows App" = 1295203466;
		"Slack for Desktop" = 803453959;
		"Notability: Smarter AI Notes" = 360593530;
		"Perplexity: Ask Anything" = 6714467650;
		"ScreenBrush" = 1233965871;
		"Shapr 3D CAD modeling" = 1091675654;
		"Spark Classic – Email App" = 1176895641;
		"Tailscale" = 1475387142;
		"Telegram Lite" = 946399090;
		"TickTick:To-Do List, Calendar" = 966085870;
		"WhatsApp Messenger" = 310633997;
	};
    # onActivation.cleanup = "zap";
    # onActivation.autoUpdate = "true";
    # onActivation.autoUpgrade = "true";
  };
}
