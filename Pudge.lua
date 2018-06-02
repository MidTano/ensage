local Pudge = {}
Pudge.optionEnable = Menu.AddOptionBool({"Hero Specific", "Pudge"}, "Enable", false)
local HpDenay = Menu.AddOptionSlider({ "Hero Specific", "Pudge" }, "HpDeny", 10, 170, 150)
local XX = Menu.AddOptionSlider({ "Hero Specific", "Pudge" }, "Coordinate X", 10, 2000, 100)
local YY = Menu.AddOptionSlider({ "Hero Specific", "Pudge" }, "Coordinate Y", 10, 2000, 100)
function Pudge.OnUpdate()
local X = Menu.GetValue(XX)
local Y = Menu.GetValue(YY)
local myHero = Heroes.GetLocal()
  if NPC.GetUnitName(myHero) ~= "npc_dota_hero_pudge" then return end
  if not Menu.IsEnabled(Pudge.optionEnable) or not Engine.IsInGame() or not Heroes.GetLocal() then 
Renderer.SetDrawColor(255, 0, 0, 100)
Renderer.DrawText(Font, X, Y, "[Denay:OFF]")
else 
Renderer.SetDrawColor(100, 255, 100, 100)
Renderer.DrawText(Font, X, Y, "[Denay:ON]")

    Pudge.Denay(myHero, enemy) end
  function Pudge.Denay(myHero, enemy)
local myMana = NPC.GetMana(myHero)
local myHp = Entity.GetHealth(myHero)
local soul = NPC.GetItem(myHero, "item_soul_ring", true)
local rot = NPC.GetAbilityByIndex(myHero, 1)
local result = Menu.GetValue(HpDenay)
if soul and myHp <= result and myHp > 0 and Ability.IsReady(soul,myMana) then
Ability.Toggle(rot)
Ability.ToggleMod(rot, queue)
Ability.CastNoTarget(soul)
end
end
end
return Pudge
