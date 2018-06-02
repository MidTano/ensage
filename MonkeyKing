local MonkeyKing = {}
MonkeyKing.optionEnable = Menu.AddOptionBool({"Hero Specific", "MonkeyKing"}, "Enable", false)
function MonkeyKing.OnUpdate()
local myHero = Heroes.GetLocal()
  if NPC.GetUnitName(myHero) ~= "npc_dota_hero_monkey_king" then return end
  if not Menu.IsEnabled(MonkeyKing.optionEnable) or not Engine.IsInGame() or not Heroes.GetLocal() then 
else 
local rot = NPC.GetAbilityByIndex(myHero, 4)
local mySpeed = NPC.GetMoveSpeed(myHero)
if mySpeed <= 200 and Ability.IsReady(rot) then
Ability.CastNoTarget(rot)
end
end
end
return MonkeyKing
