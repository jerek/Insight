-- Version : English - Jerek Dain
-- Translation by : None

-- JDHP Release 7
-- Author: Jerek Dain
-- Email: jerekdain@gmail.com
-- Website: http://www.jerekdain.com/

-- ** TNL REPORT ** --

JDHP_TNL_EXPLANATION1				= "Type \"/tnl *\" to send TNL info to chat, where the * is:";
JDHP_TNL_EXPLANATION2				= "   s = Say     p = Party     r = Raid     g = Guild";
JDHP_TNL_EXPLANATION3				= "   o = Officer     bg = Battleground";
JDHP_TNL_EXPLANATION4				= "   [nothing] = Shows only for you";
JDHP_TNL_EXPLANATION5				= "When sending to a party, raid, guild (or officer chat of a guild) or battleground when you are not in one it will show only for you.";
JDHP_TNL_REPORT						= "JDHP Report: ";
JDHP_TNL_BARSTO						= " bars to ";
JDHP_TNL_RESTED						= " rested)";

-- ** SLASH COMMANDS ** --

JDHP_SLASH_JDHP0					= "JDHP Release 7 by Jerek Dain (www.JerekDain.com)";
JDHP_SLASH_JDHP1					= "List of JDHP Commands:";
JDHP_SLASH_JDHP2					= "   /jdhp o - /jdhp options - Display options panel.";
JDHP_SLASH_JDHP3					= "   /rl - /reloadui - Reload UI.";
JDHP_SLASH_JDHP4					= "   /tnl - Display TNL info or send to chat. Type /tnl help for more info.";
JDHP_SLASH_JDHP98					= "Add \"help\" to the end of any command for more info.";
JDHP_SLASH_JDHP99					= "Scroll up to see more JDHP options.";

-- ** BINDINGS TEXT ** --

BINDING_HEADER_JDHPPLAYERSIDEHEADER	= "JDHP";
BINDING_NAME_JDHPOPTIONS			= "Open the options panel";
BINDING_NAME_JDHPPLAYERSIDEHEALTH	= "Toggle side health display";
BINDING_NAME_JDHPPLAYERSIDEMANA		= "Toggle side mana display";
BINDING_NAME_JDHPPLAYERSIDECHARGES	= "Toggle charges display";
BINDING_NAME_JDHPPLAYERSIDEMAXES	= "Toggle display maxes on the side";
BINDING_NAME_JDHPPLAYERSIDEMISSING	= "Toggle display missing amounts on the side";
BINDING_NAME_JDHPPLAYERSIDEHEALTHPER= "Toggle side health as percent";
BINDING_NAME_JDHPPLAYERSIDEMANAPER	= "Toggle side mana as percent";
BINDING_NAME_JDHPEXP				= "Toggle display EXP";
BINDING_NAME_JDHPTNL				= "Toggle display TNL";
BINDING_NAME_JDHPBAREXP				= "Toggle EXP/TNL in bars";
BINDING_NAME_JDHPMOVEEXP			= "Toggle EXP/TNL moving with pet buffs";
BINDING_NAME_JDHPAUTOHIDEEXP		= "Toggle EXP/TNL hiding on lvl 70s";
BINDING_NAME_JDHPCOLORPLAYERNAME	= "Toggle name coloration";
BINDING_NAME_JDHPCOLORPLAYERHEALTH	= "Toggle player health coloration";
BINDING_NAME_JDHPCOLORPLAYERMANA	= "Toggle player mana coloration";
BINDING_NAME_JDHPCOLORTARGETHEALTH	= "Toggle target health coloration";
BINDING_NAME_JDHPCOLORTARGETMANA	= "Toggle target mana coloration";
BINDING_NAME_JDHPCOLORPLAYERHEALTHBAR	= "Toggle player health bar coloration";
BINDING_NAME_JDHPCOLORTARGETHEALTHBAR	= "Toggle target health bar coloration";

-- ** JDHP OPTIONS PANEL ** --

JDHP_OPTIONS_PSHP				= "Display health";
JDHP_OPTIONS_PSMP				= "Display mana";
JDHP_OPTIONS_PSMAXES			= "Display max values";
JDHP_OPTIONS_PSMISSING			= "Display missing amounts";
JDHP_OPTIONS_PSHPPER			= "Display health as percent";
JDHP_OPTIONS_PSMPPER			= "Display mana as percent";

JDHP_OPTIONS_CPHP				= "Color health by percent";
JDHP_OPTIONS_CPMP				= "Color mana by type";
JDHP_OPTIONS_CPHPB				= "Color health bar by percent";

JDHP_OPTIONS_PBHP				= "Display health";
JDHP_OPTIONS_PBMP				= "Display mana";
JDHP_OPTIONS_PBMAXES			= "Display max values";
JDHP_OPTIONS_PBMISSING			= "Display missing amounts";
JDHP_OPTIONS_PBHPPER			= "Display health as percent";
JDHP_OPTIONS_PBMPPER			= "Display mana as percent";

JDHP_OPTIONS_TSHP				= "Display health";
JDHP_OPTIONS_TSMP				= "Display mana";
JDHP_OPTIONS_TSMAXES			= "Display max values";
JDHP_OPTIONS_TSMISSING			= "Display missing amounts";
JDHP_OPTIONS_TSHPPER			= "Display health as percent";
JDHP_OPTIONS_TSMPPER			= "Display mana as percent";

JDHP_OPTIONS_CTHP				= "Color health by percent";
JDHP_OPTIONS_CTMP				= "Color mana by type";
JDHP_OPTIONS_CTHPB				= "Color health bar by percent";

JDHP_OPTIONS_TBHP				= "Display health";
JDHP_OPTIONS_TBMP				= "Display mana";
JDHP_OPTIONS_TBMAXES			= "Display max values";
JDHP_OPTIONS_TBMISSING			= "Display missing amounts";
JDHP_OPTIONS_TBHPPER			= "Display health as percent";
JDHP_OPTIONS_TBMPPER			= "Display mana as percent";

JDHP_OPTIONS_EXP				= "Display EXP";
JDHP_OPTIONS_TNL				= "Display TNL";
JDHP_OPTIONS_BAREXP				= "EXP/TNL in bars";
JDHP_OPTIONS_ACTUALEXP			= "EXP/TNL in actual values";
JDHP_OPTIONS_MOVEEXP			= "Move EXP/TNL w/ pet buffs";
JDHP_OPTIONS_HIDEEXP			= "Hide EXP/TNL on level 70s";

JDHP_OPTIONS_MOVETARGET			= "Adjust TargetFrame position";
JDHP_OPTIONS_PSCHARGES			= "Player side charges";
JDHP_OPTIONS_CPNAME				= "Color name on auto-attack";
JDHP_OPTIONS_ENRGPER			= "Allow energy as a percent";
JDHP_OPTIONS_RAGEPER			= "Allow rage as a percent";

-- ** TOOLTIPS: PLAYER SIDE ** --

JDHP_TOOLTIP_PSHP				= "Display player's health text on the side of the PlayerFrame.";
JDHP_TOOLTIP_PSMP				= "Display player's mana/energy/rage on the side of the PlayerFrame.";
JDHP_TOOLTIP_PSMAXES			= "Display player's maximum health/mana/energy/rage amounts on the side.";
JDHP_TOOLTIP_PSMISSING			= "Display amount missing from player's health and mana/rage/energy on the side.";
JDHP_TOOLTIP_PSHPPER			= "Player's health on the side of the PlayerFrame as a percentage.";
JDHP_TOOLTIP_PSMPPER			= "Player's mana on the side of the PlayerFrame as a percentage.";

JDHP_TOOLTIP_CPHP				= "Color the player's side health text based on health percentage.";
JDHP_TOOLTIP_CPMP				= "Color the player's side mana/energy/rage text based on type. Mana is blue,\nenergy is yellow, and rage is red... Okay, it\'s kind of pink.";
JDHP_TOOLTIP_CPHPB				= "Color the player's health bar based on health percentage.";

-- ** TOOLTIPS: PLAYER BAR ** --

JDHP_TOOLTIP_PBHP				= "Display player's health text on the bar of the PlayerFrame.";
JDHP_TOOLTIP_PBMP				= "Display player's mana/energy/rage on the bar of the PlayerFrame.";
JDHP_TOOLTIP_PBMAXES			= "Display player's maximum health/mana/energy/rage amounts on the bar.";
JDHP_TOOLTIP_PBMISSING			= "Display amount missing from player's health and mana/rage/energy on the bar.";
JDHP_TOOLTIP_PBHPPER			= "Player's health on the bar of the PlayerFrame as a percentage.";
JDHP_TOOLTIP_PBMPPER			= "Player's mana on the bar of the PlayerFrame as a percentage.";

-- ** TOOLTIPS: TARGET SIDE ** --

JDHP_TOOLTIP_TSHP				= "Display target's health text on the side of the PlayerFrame.";
JDHP_TOOLTIP_TSMP				= "Display target's mana/energy/rage on the side of the PlayerFrame.";
JDHP_TOOLTIP_TSMAXES			= "Display target's maximum health/mana/energy/rage amounts on the side.";
JDHP_TOOLTIP_TSMISSING			= "Display amount missing from target's health and mana/rage/energy on the side.";
JDHP_TOOLTIP_TSHPPER			= "Target's health on the side of the PlayerFrame as a percentage.";
JDHP_TOOLTIP_TSMPPER			= "Target's mana on the side of the PlayerFrame as a percentage.";

JDHP_TOOLTIP_CTHP				= "Color the target's side health text based on health percentage.";
JDHP_TOOLTIP_CTMP				= "Color the target's side mana/energy/rage text based on type. Mana is blue,\nenergy is yellow, and rage is red... Okay, it\'s kind of pink.";
JDHP_TOOLTIP_CTHPB				= "Color the target's health bar based on health percentage.";

-- ** TOOLTIPS: TARGET BAR ** --

JDHP_TOOLTIP_TBHP				= "Display target's health text on the bar of the PlayerFrame.";
JDHP_TOOLTIP_TBMP				= "Display target's mana/energy/rage on the bar of the PlayerFrame.";
JDHP_TOOLTIP_TBMAXES			= "Display target's maximum health/mana/energy/rage amounts on the bar.";
JDHP_TOOLTIP_TBMISSING			= "Display amount missing from target's health and mana/rage/energy on the bar.";
JDHP_TOOLTIP_TBHPPER			= "Target's health on the bar of the PlayerFrame as a percentage.";
JDHP_TOOLTIP_TBMPPER			= "Target's mana on the bar of the PlayerFrame as a percentage.";

-- ** TOOLTIPS: MISCELLANEOUS ** --

JDHP_TOOLTIP_EXP				= "Display experience below the PlayerFrame.";
JDHP_TOOLTIP_TNL				= "Display experience To Next Level below experience,\nor in its place if Display EXP is off.";
JDHP_TOOLTIP_BAREXP				= "Display EXP and TNL in terms of bars instead of actual values.";
JDHP_TOOLTIP_MOVEEXP			= "Move EXP and TNL over when your pet gains or loses buffs (for working with mods that always display pet buffs).";
JDHP_TOOLTIP_HIDEEXP			= "Hide EXP and TNL when on level 70 characters.";

JDHP_TOOLTIP_PSCHARGES			= "Display player's charges on the side of the PlayerFrame when the character has at least one charge on the target.";
JDHP_TOOLTIP_CPNAME				= "Color the player's name when auto-attack is enabled.";
JDHP_TOOLTIP_ENRGPER			= "Allow energy as a percent. (Because max energy is not always 100 - it can be 110 or 120.)";
JDHP_TOOLTIP_RAGEPER			= "Allow rage as a percent. (In case in the future rage gets any effects to change its max amount.)";
