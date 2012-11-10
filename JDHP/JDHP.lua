--[[
	JDHP Release 7
	Author: Jerek Dain
	Email: jerekdain@gmail.com
	Website: http://www.jerekdain.com/
]]


-- ** DEFAULT SETTINGS ** --

-- You can change the numbers to set your default configuration
-- Once you've loaded a character with JDHP installed the defaults will no longer be loaded on that server for that account! It will save your settings and reload those next time.
-- 0 means Off, 1 means On. Be sure to NOT CHANGE ANYTHING ELSE

-- Player Side Options --
if (PlayerSideHealth == nil) then PlayerSideHealth = 1; end   -- Display player's health on side?
if (PlayerSideMana == nil) then PlayerSideMana = 1; end   -- Display player's mana on side?
if (PlayerSideMaxes == nil) then PlayerSideMaxes = 0; end   -- Display player's max charges, health, and mana/rage/energy on side?
if (PlayerSideMissing == nil) then PlayerSideMissing = 0; end   -- Display amount missing from player's health and mana/rage/energy on side?
if (PlayerSideHealthPer == nil) then PlayerSideHealthPer = 0; end   -- Display player's health as a percentage on side?
if (PlayerSideManaPer == nil) then PlayerSideManaPer = 0; end   -- Display player's mana/rage/energy as a percentage on side?

-- Player Side Coloration --
if (ColorPlayerHealth == nil) then ColorPlayerHealth = 1; end   -- Color your health based on percentage? (Does not require health text to be displayed as a percentage)
if (ColorPlayerMana == nil) then ColorPlayerMana = 1; end   -- Color your mana/rage/energy based on what type it is?
if (ColorPlayerHealthBar == nil) then ColorPlayerHealthBar = 1; end   -- Color your health bar based on percentage? (Does not require mana/rage/energy text to be displayed as a percentage)

-- Player Bar Options --
if (PlayerBarHealth == nil) then PlayerBarHealth = 1; end   -- Display player's health on bar?
if (PlayerBarMana == nil) then PlayerBarMana = 1; end   -- Display player's mana on bar?
if (PlayerBarMaxes == nil) then PlayerBarMaxes = 0; end   -- Display player's max charges, health, and mana/rage/energy on bar?
if (PlayerBarMissing == nil) then PlayerBarMissing = 0; end   -- Display amount missing from player's health and mana/rage/energy on bar?
if (PlayerBarHealthPer == nil) then PlayerBarHealthPer = 1; end   -- Display player's health as a percentage on bar?
if (PlayerBarManaPer == nil) then PlayerBarManaPer = 1; end   -- Display player's mana/rage/energy as a percentage on bar?

-- Target Side Options --
if (TargetSideHealth == nil) then TargetSideHealth = 1; end   -- Display target's health?
if (TargetSideMana == nil) then TargetSideMana = 0; end   -- Display target's mana/energy/rage?
if (TargetSideMaxes == nil) then TargetSideMaxes = 0; end   -- Display target's max health and mana/rage/energy on side?
if (TargetSideMissing == nil) then TargetSideMissing = 0; end   -- Display amount missing from target's health and mana/rage/energy on side?
if (TargetSideHealthPer == nil) then TargetSideHealthPer = 1; end   -- Display target's health as a percentage on side?
if (TargetSideManaPer == nil) then TargetSideManaPer = 1; end   -- Display target's mana/rage/energy as a percentage on side?

-- Target Side Coloration --
if (ColorTargetHealth == nil) then ColorTargetHealth = 0; end   -- Color target's health based on percentage? (Does not require health text to be displayed as a percentage)
if (ColorTargetMana == nil) then ColorTargetMana = 0; end   -- Color target's mana/rage/energy based on what type it is?
if (ColorTargetHealthBar == nil) then ColorTargetHealthBar = 1; end   -- Color target's health bar based on percentage? (Does not require mana/rage/energy text to be displayed as a percentage)

-- Target Bar Options --
if (TargetBarHealth == nil) then TargetBarHealth = 1; end   -- Display target's health on bar?
if (TargetBarMana == nil) then TargetBarMana = 1; end   -- Display target's mana on bar?
if (TargetBarMaxes == nil) then TargetBarMaxes = 1; end   -- Display target's max health and mana/rage/energy on bar?
if (TargetBarMissing == nil) then TargetBarMissing = 0; end   -- Display amount missing from target's health and mana/rage/energy on bar?
if (TargetBarHealthPer == nil) then TargetBarHealthPer = 0; end   -- Display target's health as a percentage on bar?
if (TargetBarManaPer == nil) then TargetBarManaPer = 0; end   -- Display target's mana/rage/energy as a percentage on bar?

-- Miscellaneous 1 --
if (Exp == nil) then Exp = 1; end   -- Display EXP?
if (Tnl == nil) then Tnl = 1; end   -- Display TNL? (EXP To Next Level) If This is enabled with EXP off, it will take EXP's place.
if (BarExp == nil) then BarExp = 1; end   -- Display EXP and TNL in terms of bars.
if (ActualExp == nil) then ActualExp = 1; end   -- Display EXP and TNL in terms of actual values.
if (MoveExp == nil) then MoveExp = 0; end   -- Move EXP/TNL with pet buffs?
if (AutohideExp == nil) then AutohideExp = 1; end   -- Hide EXP and TNL when on a level 70 character?

-- Miscellaneous 2 --
if (MoveTarget == nil) then MoveTarget = 1; end   -- Adjust the TargetFrame position?
if (TargetFramePos == nil) then TargetFramePos = 300; end  -- If adjusting the TargetFrame position, set x to what?
if (TargetFrameVertPos == nil) then TargetFrameVertPos = 4; end  -- If adjusting the TargetFrame position, set x to what?
if (PlayerSideCharges == nil) then PlayerSideCharges = 1; end   -- Display player's charges? (only shows when you have charges)
if (ColorPlayerName == nil) then ColorPlayerName = 1; end   -- Color your name when in combat? (Note: based on whether you have autoattack or autoshot on, not actual combat status)
if (EnergyPercent == nil) then EnergyPercent = 1; end   -- Allow Energy as a percentile?
if (RagePercent == nil) then RagePercent = 1; end   -- Allow Rage as a percentile?

-- That's the end of the Default Settings area!
-- You can ignore the rest of this file.


-- ** ONLOAD SETUP ** --

function JDHP_PlayerFrameOnLoad()
	SlashCmdList["JDHP_PRINTTNL"] = JDHP_PrintTNL;
	SLASH_JDHP_PRINTTNL1 = "/tnl";
	SlashCmdList["JDHP_RL"] = function() ReloadUI(); end
	SLASH_JDHP_RL1 = "/rl";
	SLASH_JDHP_RL2 = "/reloadui";
	SlashCmdList["JDHP"] = JDHP_SlashHandler;
	SLASH_JDHP1 = "/jdhp";
	SlashCmdList["JDHPOPTIONS"] = function() JDHPOptionsDisplay:Show(); end
	SLASH_JDHPOPTIONS1 = "/jdhpoptions";
	SLASH_JDHPOPTIONS2 = "/jdhpo";

	this:RegisterEvent("PET_BAR_UPDATE");
	this:RegisterEvent("PET_STABLE_UPDATE");
	this:RegisterEvent("PET_UI_UPDATE");
	this:RegisterEvent("PLAYER_ALIVE");
	this:RegisterEvent("PLAYER_DEAD");
	this:RegisterEvent("PLAYER_ENTER_COMBAT");
	this:RegisterEvent("PLAYER_LEAVE_COMBAT");
	this:RegisterEvent("PLAYER_LEVEL_UP");
	this:RegisterEvent("PLAYER_TARGET_CHANGED");
	this:RegisterEvent("PLAYER_XP_UPDATE");
	this:RegisterEvent("UNIT_AURA");
	this:RegisterEvent("UNIT_ENERGY");
	this:RegisterEvent("UNIT_FOCUS");
	this:RegisterEvent("UNIT_HEALTH");
	this:RegisterEvent("UNIT_MANA");
	this:RegisterEvent("UNIT_MODEL_CHANGED");
	this:RegisterEvent("UNIT_RAGE");
	this:RegisterEvent("UPDATE_EXHAUSTION");
	this:RegisterEvent("VARIABLES_LOADED");
end

-- ** ONEVENT HANDLERS ** --

function JDHP_PlayerFrameOnEvent (event)
	if (event == "UNIT_MANA" or event == "UNIT_RAGE" or event == "UNIT_FOCUS" or event == "UNIT_ENERGY" or event == "UNIT_MODEL_CHANGED") then
		if (arg1 == "player") then
			JDHP_RenderPlayerMana();
			JDHP_RenderPlayerCharges();
		elseif (arg1 == "target") then
			JDHP_RenderTargetMana();
		end
	elseif (event == "UNIT_HEALTH") then
		if (arg1 == "player") then
			JDHP_RenderPlayerHealth();
		elseif (arg1 == "target") then
			JDHP_RenderTargetHealth();
		end
	elseif (event == "PLAYER_TARGET_CHANGED") then
		JDHP_RenderPlayerCharges();
		JDHP_RenderTargetHealth();
		JDHP_RenderTargetMana();
	elseif(event == "PLAYER_XP_UPDATE" or event == "UPDATE_EXHAUSTION" or event == "PLAYER_LEVEL_UP") then
		JDHP_RenderPlayerExp();
	elseif (event == "PLAYER_ENTER_COMBAT" or event == "PLAYER_LEAVE_COMBAT") then
		JDHP_RenderNameColor();
	elseif (event == "UNIT_AURA" or event == "PET_BAR_UPDATE" or event == "PET_UI_UPDATE") then
		JDHP_RenderPlayerExp();
	elseif (event == "PLAYER_ALIVE" or event == "PLAYER_DEAD") then
		JDHP_RenderPlayerHealth();
		JDHP_RenderPlayerMana();
		JDHP_RenderPlayerCharges();
		JDHP_RenderPlayerExp();
	elseif (event == "PLAYER_ENTERING_WORLD") then
		JDHP_RenderPlayerCharges();
		JDHP_RenderPlayerHealth();
		JDHP_RenderPlayerMana();
		JDHP_RenderPlayerExp();
	elseif (event == "VARIABLES_LOADED") then
		if (MobHealthFrame) then
			MobHealthAvailable = 1;
			PercentOnly = 0;
		else
			MobHealthAvailable = 0;
			PercentOnly = 1;
		end
		JDHP_RenderPlayerCharges();
		JDHP_RenderPlayerHealth();
		JDHP_RenderPlayerMana();
		JDHP_RenderPlayerExp();
	end
end

-- ** NAME COLORATION ** --

function JDHP_RenderNameColor()
	if (ColorPlayerName == 1) then
		local playerFrame = getglobal("PlayerFrame");
		if (playerFrame.inCombat and playerFrame.OnHateList or playerFrame.inCombat) then
			PlayerName:SetTextColor(1, 0.5, 0);
		else
			PlayerName:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
		end
	else
		PlayerName:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	end
end

-- ** TEXT DISPLAY FUNCTIONS ** --

function JDHP_RenderTargetHealth()
	if ((TargetSideHealth == 1 or TargetBarHealth == 1) and UnitExists("target") == 1) then --  and ((UnitIsPlayer("target") == 0) or (UnitInParty("target") or UnitInRaid("target") or UnitIsUnit("target", "pet")))
		if (MoveTarget == 1) then
			TargetFrameVertPosTemp = 0 - TargetFrameVertPos;
			TargetFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", TargetFramePos, TargetFrameVertPosTemp);
		else
			TargetFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 250, -4);
		end

		local IsDead = UnitIsDeadOrGhost("target");

		local hcur = UnitHealth("target");
		local total = UnitHealthMax("target");
		local missing = total - hcur;

		local percent = (tonumber(hcur) / tonumber(total)) * 100;

		if (MobHealthAvailable == 1) then
			PercentOnly = 0;
			if (MI2_MobHealthFrame) then
				MI2_MobHealthFrame:Hide()
			end
--		elseif (UnitIsUnit("target", "player") == 1) then
--			PercentOnly = 0;
		else
			PercentOnly = 1;
		end

		if (MobHealthAvailable == 1 and UnitIsUnit("target", "player") ~= 1) then
			hcur = MobHealth_GetTargetCurHP();
			total = MobHealth_GetTargetMaxHP();
			if (total == nil) then
				hcur = UnitHealth("target");
				total = UnitHealthMax("target");
				PercentOnly = 1;
			else
				PercentOnly = 0;
			end
			missing = total - hcur;
		end

		if (TargetSideHealth == 1) then
			if (IsDead == 1) then
				JDHPDisplay_TargetSideHealth:SetText("Dead");
				JDHPDisplay_TargetSideHealth:SetTextColor(0, 1, 0);
			else
				if (TargetSideHealthPer == 0 and (UnitIsUnit("target", "player") or (UnitIsPlayer("target") and (UnitInParty("target") or UnitInRaid("target"))) or UnitIsUnit("target", "pet") or MobHealthAvailable == 1) and (PercentOnly == 0 or (PercentOnly == 1 and ((UnitInParty("target") or UnitInRaid("target")) or UnitIsUnit("target", "player"))))) then
					if (TargetSideMaxes == 1) then
						if (TargetSideMissing == 0) then
							JDHPDisplay_TargetSideHealth:SetText(hcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_TargetSideHealth:SetText("");
							else
								JDHPDisplay_TargetSideHealth:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (TargetSideMissing == 0) then
							JDHPDisplay_TargetSideHealth:SetText(hcur);
						else
							if (missing == 0) then
								JDHPDisplay_TargetSideHealth:SetText("");
							else
								JDHPDisplay_TargetSideHealth:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 1 or if target is not a player in your party
					if (TargetSideMissing == 0) then
						JDHPDisplay_TargetSideHealth:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_TargetSideHealth:SetText("");
						else
							JDHPDisplay_TargetSideHealth:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
				if (ColorTargetHealth == 1) then
					if ((percent <= 100) and (percent > 75)) then
						JDHPDisplay_TargetSideHealth:SetTextColor(0, 1, 0);
					elseif ((percent <= 75) and (percent > 50)) then
						JDHPDisplay_TargetSideHealth:SetTextColor(1, 1, 0);
					elseif ((percent <= 50) and (percent > 25)) then
						JDHPDisplay_TargetSideHealth:SetTextColor(1, 0.5, 0);
					else
						JDHPDisplay_TargetSideHealth:SetTextColor(1, 0, 0);
					end
				else
					JDHPDisplay_TargetSideHealth:SetTextColor(0, 1, 0);
				end
			end
		else -- if TargetSideHealth == 0 then
			JDHPDisplay_TargetSideHealth:SetText("");
		end
		if (TargetBarHealth == 1) then
			if (IsDead == 1) then
				JDHPDisplay_TargetBarHealth:SetText("");
			else
				if (TargetBarHealthPer == 0 and (UnitIsUnit("target", "player") or (UnitIsPlayer("target") and (UnitInParty("target") or UnitInRaid("target"))) or UnitIsUnit("target", "pet") or MobHealthAvailable == 1) and (PercentOnly == 0 or (PercentOnly == 1 and (UnitInParty("target") or UnitInRaid("target")) or UnitIsUnit("target", "player")))) then
					if (TargetBarMaxes == 1) then
						if (TargetBarMissing == 0) then
							JDHPDisplay_TargetBarHealth:SetText(hcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_TargetBarHealth:SetText("");
							else
								JDHPDisplay_TargetBarHealth:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (TargetBarMissing == 0) then
							JDHPDisplay_TargetBarHealth:SetText(hcur);
						else
							if (missing == 0) then
								JDHPDisplay_TargetBarHealth:SetText("");
							else
								JDHPDisplay_TargetBarHealth:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 0
					if (TargetBarMissing == 0) then
						JDHPDisplay_TargetBarHealth:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_TargetBarHealth:SetText("");
						else
							JDHPDisplay_TargetBarHealth:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
			end
		else
			JDHPDisplay_TargetBarHealth:SetText("");
		end
		if (ColorTargetHealthBar == 1) then  --  Old: TargetFrameHealthBar:SetStatusBarColor((100 - percent) / 100, percent / 100, 0);
			if ((percent <= 100) and (percent > 75)) then
				TargetFrameHealthBar:SetStatusBarColor(0, 1, 0);
			elseif ((percent <= 75) and (percent > 50)) then
				TargetFrameHealthBar:SetStatusBarColor(1, 1, 0);
			elseif ((percent <= 50) and (percent > 25)) then
				TargetFrameHealthBar:SetStatusBarColor(1, 0.5, 0);
			else
				TargetFrameHealthBar:SetStatusBarColor(1, 0, 0);
			end
		else
			TargetFrameHealthBar:SetStatusBarColor(0, 1, 0);
		end
	else
		JDHPDisplay_TargetSideHealth:SetText("");
		JDHPDisplay_TargetBarHealth:SetText("");
	end
end


function JDHP_RenderTargetMana()
	if ((TargetSideMana == 1 or TargetBarMana == 1) and UnitExists("target") == 1) then
		if (MoveTarget == 1) then
			TargetFrameVertPosTemp = 0 - TargetFrameVertPos;
			TargetFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", TargetFramePos, TargetFrameVertPosTemp);
		else
			TargetFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 250, -4);
		end

		local TargetManaType = UnitPowerType("target");

		local mcur = UnitMana("target");
		local total = UnitManaMax("target");
		local missing = total - mcur;

		local percent = (tonumber(mcur) / tonumber(total)) * 100;

		local IsDead = UnitIsDeadOrGhost("target");

		if (TargetSideMana == 1) then
			if (IsDead == 1 and TargetSideManaPer == 1) then
				JDHPDisplay_TargetSideMana:SetText("");
			elseif (total < 1) then
				JDHPDisplay_TargetSideMana:SetText("");
			else
				if (TargetSideManaPer == 0 or (TargetManaType == 1 and RagePercent == 0) or (TargetManaType == 3 and EnergyPercent == 0)) then
					if (TargetSideMaxes == 1) then
						if (TargetSideMissing == 0) then
							JDHPDisplay_TargetSideMana:SetText(mcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_TargetSideMana:SetText("");
							else
								JDHPDisplay_TargetSideMana:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (TargetSideMissing == 0) then
							JDHPDisplay_TargetSideMana:SetText(mcur);
						else
							if (missing == 0) then
								JDHPDisplay_TargetSideMana:SetText("");
							else
								JDHPDisplay_TargetSideMana:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 1
					if (TargetSideMissing == 0) then
						JDHPDisplay_TargetSideMana:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_TargetSideMana:SetText("");
						else
							JDHPDisplay_TargetSideMana:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
				if (ColorTargetMana == 1) then
					if (TargetManaType == 1) then
						JDHPDisplay_TargetSideMana:SetTextColor(1, 0.50, 0.50);
					elseif (TargetManaType == 3) then
						JDHPDisplay_TargetSideMana:SetTextColor(1, 1, 0);
					elseif (TargetManaType == 2) then
						JDHPDisplay_TargetSideMana:SetTextColor(0.85, 0.5, 0);
					else
						JDHPDisplay_TargetSideMana:SetTextColor(0.75, 0.75, 1);
					end
				else
					JDHPDisplay_TargetSideMana:SetTextColor(0, 1, 0);
				end
			end
		else -- if TargetSideMana == 0 then
			JDHPDisplay_TargetSideMana:SetText("");
		end
		if (TargetBarMana == 1) then
			if (IsDead == 1 and TargetBarManaPer == 1) then
				JDHPDisplay_TargetBarMana:SetText("");
			elseif (total < 1) then
				JDHPDisplay_TargetBarMana:SetText("");
			else
				if (TargetBarManaPer == 0 or (TargetManaType == 1 and RagePercent == 0) or (TargetManaType == 3 and EnergyPercent == 0)) then
					if (TargetBarMaxes == 1) then
						if (TargetBarMissing == 0) then
							JDHPDisplay_TargetBarMana:SetText(mcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_TargetBarMana:SetText("");
							else
								JDHPDisplay_TargetBarMana:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (TargetBarMissing == 0) then
							JDHPDisplay_TargetBarMana:SetText(mcur);
						else
							if (missing == 0) then
								JDHPDisplay_TargetBarMana:SetText("");
							else
								JDHPDisplay_TargetBarMana:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 1
					if (TargetBarMissing == 0) then
						JDHPDisplay_TargetBarMana:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_TargetBarMana:SetText("");
						else
							JDHPDisplay_TargetBarMana:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
			end
		else
			JDHPDisplay_TargetBarMana:SetText("");
		end
	else
		JDHPDisplay_TargetSideMana:SetText("");
		JDHPDisplay_TargetBarMana:SetText("");
	end
end

function JDHP_RenderPlayerCharges()
	if (PlayerSideCharges == 1 and PlayerManaType == 3) then
		local charges = GetComboPoints();

		if (charges ~= 0) then
			local maxcharges = MAX_COMBO_POINTS;
			if (PlayerSideMaxes == 1) then
				chargeinfo = charges.." / "..maxcharges;
			else
				chargeinfo = charges;
			end
			JDHPDisplay_PlayerSideCharges:SetText(chargeinfo);
		else
			JDHPDisplay_PlayerSideCharges:SetText("");
		end
	else
		JDHPDisplay_PlayerSideCharges:SetText("");
	end
end

function JDHP_RenderPlayerHealth()
	if (PlayerSideHealth == 1 or PlayerBarHealth == 1 or ColorPlayerHealthBar == 1) then
		local hcur = UnitHealth("player");
		local total = UnitHealthMax("player");
		local missing = total - hcur;

		local percent = (tonumber(hcur) / tonumber(total)) * 100;

		local IsDead = UnitIsDeadOrGhost("player");

		if (PlayerSideHealth == 1) then
			if (IsDead == 1 and PlayerSideHealthPer == 1) then
				JDHPDisplay_PlayerSideHealth:SetText("Dead");
				JDHPDisplay_PlayerSideHealth:SetTextColor(1, 0, 0);
			else
				if (PlayerSideHealthPer == 0) then
					if (PlayerSideMaxes == 1) then
						if (PlayerSideMissing == 0) then
							JDHPDisplay_PlayerSideHealth:SetText(hcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerSideHealth:SetText("");
							else
								JDHPDisplay_PlayerSideHealth:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (PlayerSideMissing == 0) then
							JDHPDisplay_PlayerSideHealth:SetText(hcur);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerSideHealth:SetText("");
							else
								JDHPDisplay_PlayerSideHealth:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 0
					if (PlayerSideMissing == 0) then
						JDHPDisplay_PlayerSideHealth:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_PlayerSideHealth:SetText("");
						else
							JDHPDisplay_PlayerSideHealth:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
				if (ColorPlayerHealth == 1) then
					if ((percent <= 100) and (percent > 75)) then
						JDHPDisplay_PlayerSideHealth:SetTextColor(0, 1, 0);
					elseif ((percent <= 75) and (percent > 50)) then
						JDHPDisplay_PlayerSideHealth:SetTextColor(1, 1, 0);
					elseif ((percent <= 50) and (percent > 25)) then
						JDHPDisplay_PlayerSideHealth:SetTextColor(1, 0.5, 0);
					else
						JDHPDisplay_PlayerSideHealth:SetTextColor(1, 0, 0);
					end
				else
					JDHPDisplay_PlayerSideHealth:SetTextColor(0, 1, 0);
				end
			end
		else -- if (PlayerSideHealth == 0) then
			JDHPDisplay_PlayerSideHealth:SetText("");
		end
		if (PlayerBarHealth == 1) then
			PlayerFrameHealthBarText:SetWidth(1);
			if (IsDead == 1 and PlayerBarHealthPer == 1) then
				JDHPDisplay_PlayerBarHealth:SetText("");
			else
				if (PlayerBarHealthPer == 0) then
					if (PlayerBarMaxes == 1) then
						if (PlayerBarMissing == 0) then
							JDHPDisplay_PlayerBarHealth:SetText(hcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerBarHealth:SetText("");
							else
								JDHPDisplay_PlayerBarHealth:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (PlayerBarMissing == 0) then
							JDHPDisplay_PlayerBarHealth:SetText(hcur);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerBarHealth:SetText("");
							else
								JDHPDisplay_PlayerBarHealth:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 0
					if (PlayerBarMissing == 0) then
						JDHPDisplay_PlayerBarHealth:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_PlayerBarHealth:SetText("");
						else
							JDHPDisplay_PlayerBarHealth:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
			end
		else
			JDHPDisplay_PlayerBarHealth:SetText("");
			PlayerFrameHealthBarText:SetWidth(115);
		end
		if (ColorPlayerHealthBar == 1) then  --  Old: PlayerFrameHealthBar:SetStatusBarColor((100 - percent) / 100, percent / 100, 0);
			if ((percent <= 100) and (percent > 75)) then
				PlayerFrameHealthBar:SetStatusBarColor(0, 1, 0);
			elseif ((percent <= 75) and (percent > 50)) then
				PlayerFrameHealthBar:SetStatusBarColor(1, 1, 0);
			elseif ((percent <= 50) and (percent > 25)) then
				PlayerFrameHealthBar:SetStatusBarColor(1, 0.5, 0);
			else
				PlayerFrameHealthBar:SetStatusBarColor(1, 0, 0);
			end
		else
			PlayerFrameHealthBar:SetStatusBarColor(0, 1, 0);
		end
	end
	if (PlayerSideHealth == 0  and PlayerBarHealth == 0 and ColorPlayerHealthBar == 0) then
		JDHPDisplay_PlayerSideHealth:SetText("");
	end
end

function JDHP_RenderPlayerMana()
	if (PlayerSideMana == 1 or PlayerBarMana == 1) then
		local mcur = UnitMana("player");
		local total = UnitManaMax("player");
		local missing = total - mcur;

		local percent = (tonumber(mcur) / tonumber(total)) * 100;

		IsDead = UnitIsDeadOrGhost("player");
		PlayerManaType = UnitPowerType("player"); -- 0 = mana; 1 = rage; 2 = focus; 3 = energy; 4 = happiness

		if (PlayerSideMana == 1) then
			if (IsDead == 1 and PlayerSideManaPer == 1) then
				JDHPDisplay_PlayerSideMana:SetText("");
				-- FIX THIS - doesn't set colors if this is the first calculation of their mana
			else
				if (PlayerSideManaPer == 0 or (PlayerManaType == 1 and RagePercent == 0) or (PlayerManaType == 3 and EnergyPercent == 0)) then
					if (PlayerSideMaxes == 1) then
						if (PlayerSideMissing == 0) then
							JDHPDisplay_PlayerSideMana:SetText(mcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerSideMana:SetText("");
							else
								JDHPDisplay_PlayerSideMana:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (PlayerSideMissing == 0) then
							JDHPDisplay_PlayerSideMana:SetText(mcur);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerSideMana:SetText("");
							else
								JDHPDisplay_PlayerSideMana:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 1
					if (PlayerSideMissing == 0) then
						JDHPDisplay_PlayerSideMana:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_PlayerSideMana:SetText("");
						else
							JDHPDisplay_PlayerSideMana:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
				if (ColorPlayerMana == 1) then
					if (PlayerManaType == 1) then
						JDHPDisplay_PlayerSideMana:SetTextColor(1, 0.50, 0.50);
					elseif (PlayerManaType == 3) then
						JDHPDisplay_PlayerSideMana:SetTextColor(1, 1, 0);
					else
						JDHPDisplay_PlayerSideMana:SetTextColor(0.75, 0.75, 1);
					end
				else
					JDHPDisplay_PlayerSideMana:SetTextColor(0, 1, 0);
				end
			end
		else -- if PlayerSideMana == 0 then
			JDHPDisplay_PlayerSideMana:SetText("");
		end
		if (PlayerBarMana == 1) then
			PlayerFrameManaBarText:SetWidth(1);
			if (IsDead == 1 and PlayerBarManaPer == 1) then
				JDHPDisplay_PlayerBarMana:SetText("");
				-- FIX THIS - doesn't set colors if this is the first calculation of their mana
			else
				if (PlayerBarManaPer == 0 or (PlayerManaType == 1 and RagePercent == 0) or (PlayerManaType == 3 and EnergyPercent == 0)) then
					if (PlayerBarMaxes == 1) then
						if (PlayerBarMissing == 0) then
							JDHPDisplay_PlayerBarMana:SetText(mcur.." / "..total);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerBarMana:SetText("");
							else
								JDHPDisplay_PlayerBarMana:SetText("-"..missing.." / "..total);
							end
						end
					else -- if maxes == 0
						if (PlayerBarMissing == 0) then
							JDHPDisplay_PlayerBarMana:SetText(mcur);
						else
							if (missing == 0) then
								JDHPDisplay_PlayerBarMana:SetText("");
							else
								JDHPDisplay_PlayerBarMana:SetText("-"..missing);
							end
						end
					end
				else -- if percent == 0
					if (PlayerBarMissing == 0) then
						JDHPDisplay_PlayerBarMana:SetText(ceil(percent).."%");
					else
						if (missing == 0) then
							JDHPDisplay_PlayerBarMana:SetText("");
						else
							JDHPDisplay_PlayerBarMana:SetText("-"..ceil(100 - percent).."%");
						end
					end
				end
			end
		else
			JDHPDisplay_PlayerBarMana:SetText("");
			PlayerFrameManaBarText:SetWidth(115);
		end
	end
	if (PlayerSideMana == 0  and PlayerBarMana == 0) then
		JDHPDisplay_PlayerSideMana:SetText("");
	end
end

-- ** EXPERIENCE BAR FUNCTIONS ** --

function JDHP_RenderPlayerExp()
	Level = UnitLevel("player");
	if (AutohideExp == 1 and Level == 70) then
		JDHPDisplay_PlayerExp:SetText("");
		JDHPDisplay_PlayerTnl:SetText("");
	else
		local currXP = UnitXP("player");
		local nextXP = UnitXPMax("player");
		local restXP = GetXPExhaustion();
		local tnlXP = nextXP - currXP;

		if (HasPetUI() == 1) then
			JDHP_PetBuffUpdate();
		else
			JDHPDisplay_PlayerExp:SetPoint("LEFT", "PlayerFrame", "TOPLEFT", 105, -75)
			JDHPDisplay_PlayerTnl:SetPoint("LEFT", "PlayerFrame", "TOPLEFT", 105, -86)
		end

		if (Exp == 1 and (BarExp == 1 or ActualExp == 1)) then
			if(restXP == nil) then
				if (BarExp == 1 and ActualExp == 0) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					JDHPDisplay_PlayerExp:SetText("EXP: "..barsXP.." bars");
				elseif (BarExp == 1 and ActualExp == 1) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					JDHPDisplay_PlayerExp:SetText("EXP: "..barsXP.." bars ("..currXP.." / "..nextXP..")");
				else
					JDHPDisplay_PlayerExp:SetText(currXP.." / "..nextXP);
				end
			else
				if (BarExp == 1 and ActualExp == 0) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					local restbars = (floor(200 * (restXP / nextXP))) / 10;
					JDHPDisplay_PlayerExp:SetText(barsXP.." bars ("..restbars.." rested)");
				elseif (BarExp == 1 and ActualExp == 1) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					local restbars = (floor(200 * (restXP / nextXP))) / 10;
					JDHPDisplay_PlayerExp:SetText(barsXP.." bars ("..currXP.." / "..nextXP..") - "..restbars.." rested");
				else
					JDHPDisplay_PlayerExp:SetText(currXP.." / "..nextXP.." (+"..(tonumber(restXP)/2)..")");
				end
			end
			if (Tnl == 1) then
				if (BarExp == 1 and ActualExp == 0) then
					local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
					JDHPDisplay_PlayerTnl:SetText("TNL: "..barsTNL.." bars");
				elseif (BarExp == 1 and ActualExp == 1) then
					local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
					JDHPDisplay_PlayerTnl:SetText("TNL: "..barsTNL.." bars ("..tnlXP..")");
				else
					JDHPDisplay_PlayerTnl:SetText("TNL: "..tnlXP);
				end
			else
				JDHPDisplay_PlayerTnl:SetText("");
			end
		else
			JDHPDisplay_PlayerTnl:SetText("");
			if (Tnl == 1 and (BarExp == 1 or ActualExp == 1)) then
				if (restXP) then
					if (BarExp == 1 and ActualExp == 0) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						local restbars = (floor(200 * (restXP / nextXP))) / 10;
						JDHPDisplay_PlayerExp:SetText(barsTNL.." bars ("..restbars.." rested)");
					elseif (BarExp == 1 and ActualExp == 1) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						local restbars = (floor(200 * (restXP / nextXP))) / 10;
						JDHPDisplay_PlayerExp:SetText(barsTNL.." bars ("..tnlXP..") - "..restbars.." rested");
					else
						JDHPDisplay_PlayerExp:SetText(tnlXP.." (+"..(tonumber(restXP)/2)..")");
					end
				else
					if (BarExp == 1 and ActualExp == 0) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						JDHPDisplay_PlayerExp:SetText("TNL: "..barsTNL.." bars");
					elseif (BarExp == 1 and ActualExp == 1) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						JDHPDisplay_PlayerExp:SetText("TNL: "..barsTNL.." bars ("..tnlXP..")");
					else
						JDHPDisplay_PlayerExp:SetText("TNL: "..tnlXP);
					end
				end
			else
				JDHPDisplay_PlayerExp:SetText("");
			end
		end
	end
end

-- ** MOVE EXP/TNL WITH PET BUFFS ** --

function JDHP_PetBuffUpdate()
	local moveexpto = 125;
	if (MoveExp == 1) then
		local pbcount = 0;
		local pbdone = 0;
		while (pbdone == 0) do
			local pb = UnitBuff("pet", pbcount + 1);
			if (pb ~= nil) then
				pbcount = pbcount + 1;
			else
				pbdone = 1;
			end
		end
		if (pbcount ~= 0) then
			moveexpto = 17 * tonumber(pbcount) + 128;
		end
	end
	JDHPDisplay_PlayerExp:SetPoint("LEFT", "PlayerFrame", "TOPLEFT", moveexpto, -110)
	JDHPDisplay_PlayerTnl:SetPoint("LEFT", "PlayerFrame", "TOPLEFT", moveexpto, -121)
end

-- ** TNL'S PRINT COMMAND ** --

function JDHP_PrintTNL(msg)
	msg = string.lower(msg);
	local currXP = UnitXP("player");
	local nextXP = UnitXPMax("player");
	local restXP = GetXPExhaustion();
	local tnlXP = nextXP - currXP;
	local barsXP = (floor(200 * (currXP / nextXP))) / 10;
	local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
	local nextlvl = tonumber(UnitLevel("player")) + 1;
	local tnlinfo = nil;
	if (restXP) then
		local restbars = (floor(200 * (restXP / nextXP))) / 10;
		tnlinfo = JDHP_TNL_REPORT..barsTNL..JDHP_TNL_BARSTO..nextlvl.." ("..restbars..JDHP_TNL_RESTED..". "..tnlXP.." experience needed - "..restXP.." rested.";
	else
		tnlinfo = JDHP_TNL_REPORT..barsTNL..JDHP_TNL_BARSTO..nextlvl..". "..tnlXP.." experience needed.";
	end
	if ((msg == "party" or msg == "p") and GetNumPartyMembers() ~= 0 or (msg == "raid" or msg == "r") and GetNumRaidMembers() ~= 0 or msg == "say" or msg == "s" or msg == "battleground" or msg == "bg" or msg == "b" or (msg == "guild" or msg == "g" or msg == "officer" or msg == "o") and IsInGuild() == 1) then
		if (msg == "p") then
			msg = "PARTY";
		elseif (msg == "g") then
			msg = "GUILD";
		elseif (msg == "s") then
			msg = "SAY";
		elseif (msg == "r") then
			msg = "RAID";
		elseif (msg == "o") then
			msg = "OFFICER";
		elseif (msg == "bg" or msg == "b") then
			msg = "BATTLEGROUND";
		end
		SendChatMessage(tnlinfo, msg);
	elseif (msg == "w") then
		local wtarget = "FeatureIncomplete";
		SendChatMessage(tnlinfo, "WHISPER", nil, wtarget);
	elseif ((msg == "raid" or msg == "r") and GetNumRaidMembers() == 0 and GetNumPartyMembers() ~= 0) then
		SendChatMessage(tnlinfo, "PARTY");
	elseif (msg == "" or msg == "party" or msg == "p" or msg == "raid" or msg == "r" or msg == "guild" or msg == "g" or msg == "officer" or msg == "o") then
		DEFAULT_CHAT_FRAME:AddMessage(tnlinfo, 0, 1, 1);
	else
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_TNL_EXPLANATION1, 1, 1, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_TNL_EXPLANATION2, 1, .85, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_TNL_EXPLANATION3, 1, .85, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_TNL_EXPLANATION4, 1, .85, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_TNL_EXPLANATION5, 1, 1, 0);
	end
end

-- ** SLASH HANDLER FUNCTIONS ** --

function JDHP_SlashHandler(msg)
	if (msg == "o" or msg == "options") then
		JDHPOptionsDisplay:Show();
	else
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_SLASH_JDHP0, 1, 1, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_SLASH_JDHP1, 1, 1, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_SLASH_JDHP2, 1, .85, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_SLASH_JDHP3, 1, .85, 0);
		DEFAULT_CHAT_FRAME:AddMessage(JDHP_SLASH_JDHP4, 1, .85, 0);
	end
end
