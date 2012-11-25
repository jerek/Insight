Insight Release 7.2
----------------
Author: Jerek Dain
Email: jerek@jerekdain.com
Website: http://www.jerekdain.com/

	+============+
	|Introduction|
	+============+

Type "/insight o" or "/insight options" to open the options panel. Most PlayerFrame options can also be toggled with keybindings.

Insight displays player health, mana/energy/rage, charges (when applicable), and exp info. Also colors player name when auto-attack is enabled, and colors health bar based on health percentage. Health and mana/energy/rage can be displayed as a percentile. it also allows display of health and mana values at your target's portrait.

The /tnl command sends your TNL (to next level) info to say, party, raid or guild chat, or just displays it for only you. Type /tnl help for more info.

If you have MobInfo-2 or another MobHealth addon Insight will detect it and use it to determine target HP. If you don't have these mods target HP will always display as a percent.

	+==========+
	|Change Log|
	+==========+

RELEASE 7.2 - Sunday, November 25, 2012
- Updated to work with WoW patch 5.0.x.
- Updated some placement adjustments for various classes. (e.g. Monk chi, new Warlock resources, etc)
- Better formatting for large values.
- Renamed mod from JDHP to Insight.

RELEASE 7.1 - Sunday, October 18, 2009
- Updated to work with WoW patch 3.2 (that was a long gap too).

RELEASE 7 - Saturday, March 29, 2008
- Updated to work with WoW patch 2.4 (that was a long gap).
- Added Options to adjust the position of the TargetFrame.

RELEASE 6.2 - Tuesday, December 12, 2006
- Updated to work with WoW patch 2.0.

RELEASE 6.2 - Tuesday, August 22, 2006
- Updated to work with WoW patch 1.12.

RELEASE 6.2 - Wednesday, July 19, 2006
- Fixed a bug where targeting a raid member not in your party would not retrieve their exact HP.

RELEASE 6.1 - Thursday, July 13, 2006
- When typing /jdhp it will now also say the JDHP version you are using.
- Fixed a bug where targeting yourself with target HP percentiles off would still display as a percentile.

RELEASE 6 - Monday, July 12, 2006
- Updated to work with WoW patch 1.11.
- All options that were previously available for JDHP, which only displayed info on the side of the PlayerFrame, now work for displaying on the PlayerFrame bars, and on the TargetFrame side and bars. Coloration settings are also in place for targets.
- Complete options panel added! Type "/jdhp o" to open the options panel. Also added a key binding to open the options panel. Khaos support removed in favor of this central control panel. All old options set either with or without Khaos are now reset.
- Added support to get target HP from MobInfo-2 and other MobHealth addons. This will be done automatically if you have these mods. If you don't have them target HP can only be displayed as a percent.
- JDHP should recognize when it doesn't actually know a target player's real HP, and display it as a percent in those cases.
- Removed almost all slash commands. The only remaining are the /tnl command, the /jdhp command to list commands, and the new /jdhp o command to open the options panel.
- Two new options: "Allow energy as a percentile." and "Allow rage as a percentile." If disabled rage and energy will always be displayed as its actual value. This is because some effects such as the 31-point Assassination talent or the 5-piece Nightslayer set bonus will may percentiles seem odd. Rage included in case of future item effects like the energy effects.
- Key binding code optimized.

RELEASE 5 - Friday, March 31, 2006
- Updated to work with WoW patch 1.10.

RELEASE 5 - Thursday, January 5, 2006
- Updated to work with WoW patch 1.9 (oops, missed 1.8 :P)
- The EXP/TNL display is now automatically moved to below the pet bar if you have a pet (and moved back if you don't).
- Added an option for the EXP/TNL display, when moved to the pet area, to automatically slide to the right along with your pet's buffs. This is for people using mods which have pet buffs always displayed.
- The /tnl command can now send to say, party, raid or guild chat. E.g. "/tnl g" for guild chat. Type /tnl help for more info.
- The /tnl command now displays what level you're working towards.
- When displaying missing amounts a hyphen (-) is added before the value to show it's a missing amount.
- Export of text to localization file complete, JDHP is now ready to fully support other languages.

RELEASE 4 - Wednesday, September 14, 2005
- Updated to work with WoW patch 1.7.
- Added support for Khaos, the control panel of Cosmos 2! If you use the Khaos control panel only options set through Khaos will save between sessions, and options changed with the key bindings or slash commands will be temporary. For people not using Khaos the key bindings and slash commands are still a permanent way to change your options.
- Added option to display EXP and TNL in terms of bars instead of actual values. (/jdhpbarexp)
- Added option to automatically hide EXP and TNL when on level 60 characters. (/jdhphideexp)
- Added options to hide health, mana/energy/rage and charges text. (/jdhphealth, /jdhpmana and /jdhpcharges)
- Added command to report EXP needed to level in party chat, as well as rested amount. Always reported in terms of bars. (/tnl)
- Old coloration commands /jdhphealth and /jdhpmana renamed to /jdhpcolorhealth and /jdhpcolormana
- Shapeshifting quirk fixed! (Through a cheap workaround, but whatever.) When returning to caster form your mana display will now properly update immediately.
* Behind the scenes:
- Renamed almost all functions and many variables.
- Major code streamlining, including fixing incompatibilities with Archeologist while giving JDHP much simpler code.
- Dropped a couple old unused functions.
- Moved more of the displayed text to the localization file. If anyone wants to translate JDHP to their language, please contact me at jerek@deciv.com.

RELEASE 3.1 - Monday, August 8, 2005
- Updated so users of Kaos (part of Cosmos 2) no longer get errors. The downside of this is that JDHP still doesn't work with Kaos, and now has no support for the old Cosmos. I will begin work on Kaos support soon. Because of these changes variables are now saved per account per server, and not per character. Also, it is currently only configurable via the /jdhp commands.
- Changed a couple variable names hoping to avoid possible variable overlap with other mods.

RELEASE 3 - Wednesday, July 13, 2005
- Updated to work with WoW patch 1.6.
- Added "nopatch" file to make sure Cosmos doesn't delete JDHP.
- Added Display Missing option for health and mana/energy/rage.
- Fixed a rare but sometimes consistent bug involving a "find" error with the HP code. This fix was already in place with mana, it was just for some reason much rarer with HP, so it didn't get fixed there. Odd.
- Greatly improved checks for whether the player was alive, dead or a ghost/whisp and improved handling of those times.

RELEASE 2 - Wednesday, April 20, 2005
- Fixed charges display (whoops, didn't know it was broken in Release 1!), and improved it, and added the PLAYER_TARGET_CHANGED event for charge checking.
- Fixed an issue where sometimes upon a character's death the health and mana/energy/rage values wouldn't update and still appear as if the character was alive.
- Made JDHP usable without Cosmos.
- Slash commands are back.
- Removed the tooltip that popped up when mousing over the Rested EXP. It was only in the right spot under specific circumstances, and its usefulness was debatable anyway.

RELEASE 1 - Sunday, March 27, 2005
- First release.

	+====================+
	|Planned Improvements|
	+====================+

Options to display info next to party member portraits. And perhaps on drag-off raid panels eventually.
