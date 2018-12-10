
include("hud_config.lua")

hook.Add("HUDPaint", "Hud", function() 

	local health = LocalPlayer():Health()
	local armor = LocalPlayer():Armor()
	
	if health > 100 then health = 100 end
	
	if armor > 100 then armor = 100 end
	
	draw.RoundedBox(0, 20, 730, health * 3, 20,CONFIG.BOXVIE)
	draw.RoundedBox(0, 20, 700, armor * 3, 20,CONFIG.BOXARMURE)
	
end)
-----------------------------------------------------------------------------------
hook.Add("HUDShouldDraw", "DefaultHud", function(name)
	if (name == "CHudHealth" or name == "CHudBattery") then 
		return false 
	end 
end)
-----------------------------------------------------------------------------------
