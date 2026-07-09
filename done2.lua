  local success = pcall(function()
    local allowedWorlds = {
        [2753915549] = true,
        [85211729168715] = true,
        [4442272183] = true,
        [79091703265657] = true,
        [7449423635] = true,
        [100117331123089] = true
    }
    if allowedWorlds[game.PlaceId] then
        loadstring(game:HttpGet("https://github.com/TlDinhKhoi/Util/raw/refs/heads/main/ThongBao/ApiNoEncodeDuyBeo"))()
    end
end)
if not success then
    warn("Failed to load announcement")
end

(loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhDzaiScript/Setting/refs/heads/main/FastMax.lua")))()

local players=game["Players"]
local localPlayer=players["LocalPlayer"]
local rootPart=localPlayer["Character"]["HumanoidRootPart"]
local replicatedStorage=game:GetService("ReplicatedStorage")
local playerLevel=localPlayer["Data"]["Level"]["Value"]
local teleportService=game:GetService("TeleportService")
local tweenService=game:GetService("TweenService")
local lighting=game:GetService("Lighting")
local enemies=workspace["Enemies"]
local virtualInput=game:GetService("VirtualInputManager")
local virtualUser=game:GetService("VirtualUser")
local playerTeam=localPlayer["Team"]
local runService=game:GetService("RunService")
local stats=game:GetService("Stats")
local energyValue=localPlayer["Character"]["Energy"]["Value"]
local playersService=game:GetService("Players")
local playerGui=playersService["LocalPlayer"]:WaitForChild("PlayerGui")
local localPlayerAlt=playersService["LocalPlayer"]
local backpack=localPlayerAlt:WaitForChild("Backpack")
local character=localPlayerAlt["Character"] or localPlayerAlt["CharacterAdded"]:Wait()
local U={}
local C={}
local v={}
local m={}
local y=false
local b=false
local c=true
local H=false
local S=false
local o=false
local Z=false
local T=.15
local L=0
local P=25

repeat
  local players=(localPlayer["PlayerGui"]:WaitForChild("Main")):WaitForChild("Loading") and game:IsLoaded()
  task["wait"](.1)
until players
if game["PlaceId"]==2753915549 or game["PlaceId"]==85211729168715 then
  World1=true
elseif  game["PlaceId"]==4442272183 or game["PlaceId"]==79091703265657 then
  World2=true
elseif  game["PlaceId"]==7449423635 or game["PlaceId"]==100117331123089 then
  World3=true
end
Marines=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("SetTeam","Marines")
end
Pirates=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("SetTeam","Pirates")
end
if World1 then
  U={"The Gorilla King","Bobby",
  "The Saw",
  "Yeti","Mob Leader",
  "Vice Admiral","Saber Expert","Warden",
  "Chief Warden",
  "Swan","Magma Admiral",
  "Fishman Lord","Wysper","Thunder God",
  "Cyborg","Ice Admiral",
  "Greybeard"}
elseif  World2 then
  U={"Diamond",
  "Jeremy","Fajita",
  "Don Swan","Smoke Admiral","Awakened Ice Admiral",
  "Tide Keeper",
  "Darkbeard",
  "Cursed Captain",
  "Order"}
elseif  World3 then
  U={"Stone","Hydra Leader","Kilo Admiral",
  "Captain Elephant",
  "Beautiful Pirate","Cake Queen",
  "Longma",
  "Soul Reaper"}
end
if World1 then
  v={"Leather + Scrap Metal","Angel Wings","Magma Ore","Fish Tail"}
elseif  World2 then
  v={"Leather + Scrap Metal","Radioactive Material","Ectoplasm","Mystic Droplet","Magma Ore","Vampire Fang"}
elseif  World3 then
  v={"Scrap Metal","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"}
end

local j={"Flame",
"Ice",
"Quake","Light",
"Dark","String",
"Rumble",
"Magma",
"Human: Buddha",
"Sand",
"Bird: Phoenix",
"Dough"}

local G={"Snow Lurker","Arctic Warrior","Hidden Key","Awakened Ice Admiral"}

local q={
  ["Mob"]="Mythological Pirate",
  ["Mob2"]="Cursed Skeleton",
  "Hell's Messenger",
  ["Mob3"]="Cursed Skeleton",
  "Heaven's Guardian",
}

local t={"Part","SpawnLocation","Terrain","WedgePart","MeshPart"}

local X={"Swan Pirate","Jeremy"}
local h={"Forest Pirate","Captain Elephant"}
local B={"Fajita","Jeremy","Diamond"}

local l={"Beast Hunter","Lantern","Guardian","Grand Brigade","Dinghy","Sloop","The Sentinel"}
local p={"Cookie Crafter"}
local E={"Reborn Skeleton"}

local e={
  ["Pirate Millionaire"]=CFrame["new"](-712.82727050781,98.577049255371,5711.9541015625),
  ["Pistol Billionaire"]=CFrame["new"](-723.43316650391,147.42906188965,5931.9931640625),
  ["Dragon Crew Warrior"]=CFrame["new"](7021.5043945312,55.762702941895,-730.12908935547),
  ["Dragon Crew Archer"]=CFrame["new"](6625,378,244),
  ["Female Islander"]=CFrame["new"](4692.7939453125,797.97668457031,858.84802246094),
  ["Venomous Assailant"]=CFrame["new"](4902,670,39),
  ["Marine Commodore"]=CFrame["new"](2401,123,-7589),
  ["Marine Rear Admiral"]=CFrame["new"](3588,229,-7085),
  ["Fishman Raider"]=CFrame["new"](-10941,332,-8760),
  ["Fishman Captain"]=CFrame["new"](-11035,332,-9087),
  ["Forest Pirate"]=CFrame["new"](-13446,413,-7760),
  ["Mythological Pirate"]=CFrame["new"](-13510,584,-6987),
  ["Jungle Pirate"]=CFrame["new"](-11778,426,-10592),
  ["Musketeer Pirate"]=CFrame["new"](-13282,496,-9565),
  ["Reborn Skeleton"]=CFrame["new"](-8764,142,5963),
  ["Living Zombie"]=CFrame["new"](-10227,421,6161),
  ["Demonic Soul"]=CFrame["new"](-9579,6,6194),
  ["Posessed Mummy"]=CFrame["new"](-9579,6,6194),
  ["Peanut Scout"]=CFrame["new"](-1993,187,-10103),
  ["Peanut President"]=CFrame["new"](-2215,159,-10474),
  ["Ice Cream Chef"]=CFrame["new"](-877,118,-11032),
  ["Ice Cream Commander"]=CFrame["new"](-877,118,-11032),
  ["Cookie Crafter"]=CFrame["new"](-2021,38,-12028),
  ["Cake Guard"]=CFrame["new"](-2024,38,-12026),
  ["Baking Staff"]=CFrame["new"](-1932,38,-12848),
  ["Head Baker"]=CFrame["new"](-1932,38,-12848),
  ["Cocoa Warrior"]=CFrame["new"](95,73,-12309),
  ["Chocolate Bar Battler"]=CFrame["new"](647,42,-12401),
  ["Sweet Thief"]=CFrame["new"](116,36,-12478),
  ["Candy Rebel"]=CFrame["new"](47,61,-12889),
  ["Ghost"]=CFrame["new"](5251,5,1111),
}

EquipWeapon = function(weaponName)
    if not weaponName then return end
    if localPlayer["Backpack"]:FindFirstChild(weaponName) then
        localPlayer["Character"]["Humanoid"]:EquipTool(localPlayer["Backpack"]:FindFirstChild(weaponName))
    end
end
task.spawn(function()
    local tool = localPlayer["Backpack"]:FindFirstChild("Tên_Vũ_Khí_Của_Bạn")
    if tool then
        localPlayer["Character"]["Humanoid"]:EquipTool(tool)
    end
end)
weaponSc=function(players)
  for localPlayer,rootPart in pairs(localPlayer["Backpack"]:GetChildren())do
    if rootPart:IsA("Tool")then
      if rootPart["ToolTip"]==players then
        EquipWeapon(rootPart["Name"])
      end
    end
  end
end
hookfunction(require(game:GetService("ReplicatedStorage")["Effect"]["Container"]["Death"]), function()
end)

hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule"))["ChangeDisplayedNPC"], function()
end)

hookfunction(error,function()
end)

hookfunction(warn,function()
end)

local O=workspace:FindFirstChild("Rocks")
if O then
  O:Destroy()
end
gay=(function()
  local players=game:GetService("Lighting")
  local localPlayer=players:FindFirstChild("LightingLayers")
  if localPlayer and (game:GetService("Lighting") and game:GetService("Lighting")) then
    local players=localPlayer:FindFirstChild("DarkFog")
    if players then
      players:Destroy()
    end
  end
  local rootPart=workspace["_WorldOrigin"]["Foam;"]
  if rootPart and workspace["_WorldOrigin"]["Foam;"] then
    rootPart:Destroy()
  end
end)

local f={}
f["__index"]=f
f["Alive"]=function(players)
  if not players then
    return
  end
  local localPlayer=players:FindFirstChild("Humanoid")return localPlayer and localPlayer["Health"]>0
end
f["Pos"]=function(players,localPlayer)
  if not players then return false end
  return (rootPart["Position"] - players["HumanoidRootPart"]["Position"])["Magnitude"] <= localPlayer
end
f["Dist"]=function(players,localPlayer)
  return(rootPart["Position"]-(players:FindFirstChild("HumanoidRootPart"))["Position"])["Magnitude"]<=localPlayer
end
f["DistH"]=function(players,localPlayer)
  return(rootPart["Position"]-(players:FindFirstChild("HumanoidRootPart"))["Position"])["Magnitude"]>localPlayer
end
f["Kill"]=function(players,localPlayer)
  if players and localPlayer then
    if not players:GetAttribute("Locked")then
      players:SetAttribute("Locked",players["HumanoidRootPart"]["CFrame"])
    end
    PosMon=(players:GetAttribute("Locked"))["Position"]
    BringEnemy()
    EquipWeapon(_G["SelectWeapon"])
    local localPlayer = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
    local rootPart=localPlayer["ToolTip"]
    if rootPart=="Blox Fruit"then
      _tp((players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,10,0))*CFrame["Angles"](0,math["rad"](90),0))
    else
      _tp((players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,20,0))*CFrame["Angles"](0,math["rad"](180),0))
    end
    if RandomCFrame then
      wait(.5)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,20,25))wait(.5)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](25,20,0))wait(.5)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](-25,20,0))wait(.5)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,20,25))wait(.5)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](-25,20,0))
    end
  end
end
f["Kill2"]=function(players,localPlayer)
  if players and localPlayer then
    if not players:GetAttribute("Locked")then
      players:SetAttribute("Locked",players["HumanoidRootPart"]["CFrame"])
    end
    PosMon=(players:GetAttribute("Locked"))["Position"]
    BringEnemy()
    EquipWeapon(_G["SelectWeapon"])
    local localPlayer = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
    local rootPart=localPlayer["ToolTip"]
    if rootPart=="Blox Fruit"then
      _tp((players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,10,0))*CFrame["Angles"](0,math["rad"](90),0))
    else
      _tp((players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,30,8))*CFrame["Angles"](0,math["rad"](180),0))
    end
    if RandomCFrame then
      wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,30,25))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](25,30,0))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](-25,30,0))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,30,25))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](-25,30,0))
    end
  end
end
f["KillSea"]=function(players,localPlayer)
  if players and localPlayer then
    if not players:GetAttribute("Locked")then
      players:SetAttribute("Locked",players["HumanoidRootPart"]["CFrame"])
    end
    PosMon=(players:GetAttribute("Locked"))["Position"]
    BringEnemy()
    EquipWeapon(_G["SelectWeapon"])
    local localPlayer = game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")
    local rootPart=localPlayer["ToolTip"]
    if rootPart=="Blox Fruit"then
      _tp((players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,10,0))*CFrame["Angles"](0,math["rad"](90),0))
    else
      notween(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,50,8))wait(.85)notween(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,400,0))wait(1)
    end
  end
end
f["Sword"]=function(players,localPlayer)
  if players and localPlayer then
    if not players:GetAttribute("Locked")then
      players:SetAttribute("Locked",players["HumanoidRootPart"]["CFrame"])
    end
    PosMon=(players:GetAttribute("Locked"))["Position"]BringEnemy()weaponSc("Sword")_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,30,0))if RandomCFrame then
      wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,30,25))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](25,30,0))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](-25,30,0))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,30,25))wait(.1)_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](-25,30,0))
    end
  end
end
f["Mas"]=function(players,localPlayer)
  if players and localPlayer then
    if not players:GetAttribute("Locked")then
      players:SetAttribute("Locked",players["HumanoidRootPart"]["CFrame"])
    end
    PosMon=(players:GetAttribute("Locked"))["Position"]BringEnemy()if players["Humanoid"]["Health"]<=HealthM then
      _tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,20,0))Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")
    else
      weaponSc("Melee")_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,20,0))
    end
  end
end
f["Masgun"]=function(players,localPlayer)
  if players and localPlayer then
    if not players:GetAttribute("Locked")then
      players:SetAttribute("Locked",players["HumanoidRootPart"]["CFrame"])
    end
    PosMon=(players:GetAttribute("Locked"))["Position"]BringEnemy()if players["Humanoid"]["Health"]<=HealthM then
      _tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,25,8))Useskills("Gun","Z")Useskills("Gun","X")
    else
      weaponSc("Melee")_tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,20,0))
    end
  end
end
statsSetings=function(players,rootPart)
  if players=="Melee"then
    if localPlayer["Data"]["Points"]["Value"]~=0 then
      replicatedStorage["Remotes"]["CommF_"]:InvokeServer("AddPoint","Melee",rootPart)
    end
  elseif  players=="Defense"then
    if localPlayer["Data"]["Points"]["Value"]~=0 then
      replicatedStorage["Remotes"]["CommF_"]:InvokeServer("AddPoint","Defense",rootPart)
    end
  elseif  players=="Sword"then
    if localPlayer["Data"]["Points"]["Value"]~=0 then
      replicatedStorage["Remotes"]["CommF_"]:InvokeServer("AddPoint","Sword",rootPart)
    end
  elseif  players=="Gun"then
    if localPlayer["Data"]["Points"]["Value"]~=0 then
      replicatedStorage["Remotes"]["CommF_"]:InvokeServer("AddPoint","Gun",rootPart)
    end
  elseif  players=="Devil"then
    if localPlayer["Data"]["Points"]["Value"]~=0 then
      replicatedStorage["Remotes"]["CommF_"]:InvokeServer("AddPoint","Demon Fruit",rootPart)
    end
  end
end
BringEnemy=function()
  if not _B then
    return
  end
  for players,rootPart in pairs(workspace["Enemies"]:GetChildren())do
    if rootPart:FindFirstChild("Humanoid")and rootPart["Humanoid"]["Health"]>0 then
      if(rootPart["PrimaryPart"]["Position"]-PosMon)["Magnitude"]<=300 then
        rootPart["PrimaryPart"]["CFrame"]=CFrame.new(PosMon)
        rootPart["PrimaryPart"]["CanCollide"]=true
        (rootPart:FindFirstChild("Humanoid"))["WalkSpeed"]=0
        (rootPart:FindFirstChild("Humanoid"))["JumpPower"]=0
        if rootPart["Humanoid"]:FindFirstChild("Animator") then
          rootPart["Humanoid"]["Animator"]:Destroy()
        end
        localPlayer["SimulationRadius"]=math["huge"]
      end
    end
  end
end
Useskills=function(players,localPlayer)
  if players=="Melee" then
    weaponSc("Melee")
    if localPlayer=="Z" then
      virtualInput:SendKeyEvent(true,"Z",false,game)
      virtualInput:SendKeyEvent(false,"Z",false,game)
    elseif localPlayer=="X" then
      virtualInput:SendKeyEvent(true,"X",false,game)
      virtualInput:SendKeyEvent(false,"X",false,game)
    elseif localPlayer=="C" then
      virtualInput:SendKeyEvent(true,"C",false,game)
      virtualInput:SendKeyEvent(false,"C",false,game)
    end
  elseif players=="Sword" then
    weaponSc("Sword")
    if localPlayer=="Z" then
      virtualInput:SendKeyEvent(true,"Z",false,game)
      virtualInput:SendKeyEvent(false,"Z",false,game)
    elseif localPlayer=="X" then
      virtualInput:SendKeyEvent(true,"X",false,game)
      virtualInput:SendKeyEvent(false,"X",false,game)
    end
  elseif players=="Blox Fruit" then
    weaponSc("Blox Fruit")
    if localPlayer=="Z" then
      virtualInput:SendKeyEvent(true,"Z",false,game)
      virtualInput:SendKeyEvent(false,"Z",false,game)
    elseif localPlayer=="X" then
      virtualInput:SendKeyEvent(true,"X",false,game)
      virtualInput:SendKeyEvent(false,"X",false,game)
    elseif localPlayer=="C" then
      virtualInput:SendKeyEvent(true,"C",false,game)
      virtualInput:SendKeyEvent(false,"C",false,game)
    elseif localPlayer=="V" then
      virtualInput:SendKeyEvent(true,"V",false,game)
      virtualInput:SendKeyEvent(false,"V",false,game)
    end
  elseif players=="Gun" then
    weaponSc("Gun")
    if localPlayer=="Z" then
      virtualInput:SendKeyEvent(true,"Z",false,game)
      virtualInput:SendKeyEvent(false,"Z",false,game)
    elseif localPlayer=="X" then
      virtualInput:SendKeyEvent(true,"X",false,game)
      virtualInput:SendKeyEvent(false,"X",false,game)
    end
  end

  if players=="nil" and localPlayer=="Y" then
    virtualInput:SendKeyEvent(true,"Y",false,game)
    virtualInput:SendKeyEvent(false,"Y",false,game)
  end
end
local s=getrawmetatable(game)
local x=s["__namecall"]
setreadonly(s,false)
s["__namecall"]=newcclosure(function(...)
  local players=getnamecallmethod()
  local localPlayer={...}
  if tostring(players)=="FireServer" then
    if tostring(localPlayer[1])=="RemoteEvent" then
      if tostring(localPlayer[2])~="true" and tostring(localPlayer[2])~="false" then
        if _G["FarmMastery_G"]and not b or _G["FarmMastery_Dev"]or _G["FarmBlazeEM"]or _G["Prehis_Skills"]or _G["SeaBeast1"]or _G["FishBoat"]or _G["PGB"]or _G["Leviathan1"]or _G["Complete_Trials"]or _G["AimMethod"]and ABmethod=="AimBots Skill"or _G["AimMethod"]and ABmethod=="Auto Aimbots" then
          localPlayer[2]=MousePos
          return x(unpack(localPlayer))
        end
      end
    end
  end
  return x(...)
end)
GetConnectionEnemies=function(players)
  for localPlayer,rootPart in pairs(replicatedStorage:GetChildren())do
    if rootPart:IsA("Model")and((typeof(players)=="table"and table["find"](players,rootPart["Name"])or rootPart["Name"]==players)and(rootPart:FindFirstChild("Humanoid")and rootPart["Humanoid"]["Health"]>0))then
      return rootPart
    end
  end
  for localPlayer,rootPart in next,game["Workspace"]["Enemies"]:GetChildren()do
    if rootPart:IsA("Model")and((typeof(players)=="table"and table["find"](players,rootPart["Name"])or rootPart["Name"]==players)and(rootPart:FindFirstChild("Humanoid")and rootPart["Humanoid"]["Health"]>0))then
      return rootPart
    end
  end
end
LowCpu=function()
  local players=true
  local localPlayer=game
  local rootPart=localPlayer["Workspace"]
  local replicatedStorage=localPlayer["Lighting"]
  local playerLevel=rootPart["Terrain"]
  playerLevel["WaterWaveSize"]=0
  playerLevel["WaterWaveSpeed"]=0
  playerLevel["WaterReflectance"]=0
  playerLevel["WaterTransparency"]=0
  replicatedStorage["GlobalShadows"]=false
  replicatedStorage["FogEnd"]=9000000000.0
  replicatedStorage["Brightness"]=0
  (settings())["Rendering"]["QualityLevel"]="Level01"for localPlayer,rootPart in pairs(localPlayer:GetDescendants())do
    if rootPart:IsA("Part")or rootPart:IsA("Union")or rootPart:IsA("CornerWedgePart")or rootPart:IsA("TrussPart")then
      rootPart["Material"]="Plastic"rootPart["Reflectance"]=0
    elseif  rootPart:IsA("Decal")or rootPart:IsA("Texture")and players then
      rootPart["Transparency"]=1
    elseif  rootPart:IsA("ParticleEmitter")or rootPart:IsA("Trail")then
      rootPart["Lifetime"]=NumberRange["new"](0)
    elseif  rootPart:IsA("Explosion")then
      rootPart["BlastPressure"]=1 rootPart["BlastRadius"]=1
    elseif  rootPart:IsA("Fire")or rootPart:IsA("SpotLight")or rootPart:IsA("Smoke")or rootPart:IsA("Sparkles")then
      rootPart["Enabled"]=false
    elseif  rootPart:IsA("MeshPart")then
      rootPart["Material"]="Plastic"rootPart["Reflectance"]=0 rootPart["TextureID"]=10385902758728957
    end
  end
  for players,localPlayer in pairs(replicatedStorage:GetChildren())do
    if localPlayer:IsA("BlurEffect")or localPlayer:IsA("SunRaysEffect")or localPlayer:IsA("ColorCorrectionEffect")or localPlayer:IsA("BloomEffect")or localPlayer:IsA("DepthOfFieldEffect")then
      localPlayer["Enabled"]=false
    end
  end
end
CheckF=function()
  if GetBP("Dragon-Dragon")or GetBP("Gas-Gas")or GetBP("Yeti-Yeti")or GetBP("Kitsune-Kitsune")or GetBP("T-Rex-T-Rex")then
    return true
  end
end
CheckBoat=function()
  for players,rootPart in pairs(workspace["Boats"]:GetChildren())do
    if tostring(rootPart["Owner"]["Value"])==tostring(localPlayer["Name"])then
      return rootPart
    end
  end
  return false
end
CheckEnemiesBoat=function()
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if localPlayer["Name"]=="FishBoat"and(localPlayer:FindFirstChild("Health"))["Value"]>0 then
      return true
    end
  end
  return false
end
CheckPirateGrandBrigade=function()
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if(localPlayer["Name"]=="PirateGrandBrigade"or localPlayer["Name"]=="PirateBrigade")and(localPlayer:FindFirstChild("Health"))["Value"]>0 then
      return true
    end
  end
  return false
end
CheckShark=function()
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if localPlayer["Name"]=="Shark"and f["Alive"](localPlayer)then
      return true
    end
  end
  return false
end
CheckTerrorShark=function()
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if localPlayer["Name"]=="Terrorshark"and f["Alive"](localPlayer)then
      return true
    end
  end
  return false
end
CheckPiranha=function()
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if localPlayer["Name"]=="Piranha"and f["Alive"](localPlayer)then
      return true
    end
  end
  return false
end
CheckFishCrew=function()
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if(localPlayer["Name"]=="Fish Crew Member"or localPlayer["Name"]=="Haunted Crew Member")and f["Alive"](localPlayer)then
      return true
    end
  end
  return false
end
CheckHauntedCrew=function()
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if localPlayer["Name"]=="Haunted Crew Member"and f["Alive"](localPlayer)then
      return true
    end
  end
  return false
end
CheckSeaBeast=function()
  if workspace["SeaBeasts"]:FindFirstChild("SeaBeast1")then
    return true
  end
  return false
end
CheckLeviathan=function()
  if workspace["SeaBeasts"]:FindFirstChild("Leviathan")then
    return true
  end
  return false
end
UpdStFruit=function()
  for players,rootPart in next,localPlayer["Backpack"]:GetChildren()do
    StoreFruit=rootPart:FindFirstChild("EatRemote",true)if StoreFruit then
      replicatedStorage["Remotes"]["CommF_"]:InvokeServer("StoreFruit",StoreFruit["Parent"]:GetAttribute("OriginalName"),localPlayer["Backpack"]:FindFirstChild(rootPart["Name"]))
    end
  end
end
collectFruits=function(players)
  if players then
    local players=localPlayer["Character"]for localPlayer,rootPart in pairs(workspace:GetChildren())do
      if string["find"](rootPart["Name"],"Fruit")then
        rootPart["Handle"]["CFrame"]=players["HumanoidRootPart"]["CFrame"]
      end
    end
  end
end
Getmoon=function()
  if World1 then
    return lighting["FantasySky"]["MoonTextureId"]
  elseif  World2 then
    return lighting["FantasySky"]["MoonTextureId"]
  elseif  World3 then
    return lighting["Sky"]["MoonTextureId"]
  end
end
DropFruits=function()
  for players,rootPart in next,localPlayer["Backpack"]:GetChildren()do
    if string["find"](rootPart["Name"],"Fruit")then
      EquipWeapon(rootPart["Name"])wait(.1)if localPlayer["PlayerGui"]["Main"]["Dialogue"]["Visible"]==true then
        localPlayer["PlayerGui"]["Main"]["Dialogue"]["Visible"]=false
      end
      EquipWeapon(rootPart["Name"])
      (localPlayer["Character"]:FindFirstChild(rootPart["Name"]))["EatRemote"]:InvokeServer("Drop")
    end
  end
  for players,rootPart in pairs(localPlayer["Character"]:GetChildren())do
    if string["find"](rootPart["Name"],"Fruit")then
      EquipWeapon(rootPart["Name"])wait(.1)if localPlayer["PlayerGui"]["Main"]["Dialogue"]["Visible"]==true then
        localPlayer["PlayerGui"]["Main"]["Dialogue"]["Visible"]=false
      end
      EquipWeapon(rootPart["Name"])
      (localPlayer["Character"]:FindFirstChild(rootPart["Name"]))["EatRemote"]:InvokeServer("Drop")
    end
  end
end
GetBP=function(players)
  return localPlayer["Backpack"]:FindFirstChild(players)or localPlayer["Character"]:FindFirstChild(players)
end
GetIn=function(players)
  for rootPart,replicatedStorage in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory"))do
    if type(replicatedStorage)=="table"then
      if replicatedStorage["Name"]==players or localPlayer["Character"]:FindFirstChild(players)or localPlayer["Backpack"]:FindFirstChild(players)then
        return true
      end
    end
  end
  return false
end
GetM=function(players)
  for localPlayer,rootPart in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory"))do
    if type(rootPart)=="table"then
      if rootPart["Type"]=="Material"then
        if rootPart["Name"]==players then
          return rootPart["Count"]
        end
      end
    end
  end
  return 0
end
GetWP=function(players)
  for rootPart,replicatedStorage in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory"))do
    if type(replicatedStorage)=="table"then
      if replicatedStorage["Type"]=="Sword"then
        if replicatedStorage["Name"]==players or localPlayer["Character"]:FindFirstChild(players)or localPlayer["Backpack"]:FindFirstChild(players)then
          return true
        end
      end
    end
  end
  return false
end
getInfinity_Ability=function(players,replicatedStorage)
  if not rootPart then
    return
  end
  if players=="Soru"and replicatedStorage then
    for players,rootPart in next,getgc()do
      if localPlayer["Character"]["Soru"]then
        if typeof(rootPart)=="function"and(getfenv(rootPart))["script"]==localPlayer["Character"]["Soru"]then
          for players,rootPart in next,getupvalues(rootPart)do
            if typeof(rootPart)=="table"then
              repeat
                wait(T)rootPart["LastUse"]=0
              until
              not replicatedStorage or localPlayer["Character"]["Humanoid"]["Health"]<=0
            end
          end
        end
      end
    end
  elseif  players=="Energy"and replicatedStorage then
    localPlayer["Character"]["Energy"]["Changed"]:connect(function()
      if replicatedStorage then
        localPlayer["Character"]["Energy"]["Value"]=energyValue
      end
    end
    )
  elseif  players=="Observation"and replicatedStorage then
    local players=localPlayer["VisionRadius"]players["Value"]=math["huge"]
  end
end
Hop=function()
  pcall(function()
    for players=math["random"](1,math["random"](40,75)),100,1 do
      local localPlayer=replicatedStorage["__ServerBrowser"]:InvokeServer(players)for players,localPlayer in next,localPlayer do
        if tonumber(localPlayer["Count"])<12 then
          teleportService:TeleportToPlaceInstance(game["PlaceId"],players)
        end
      end
    end
  end
  )
end
local J=Instance["new"]("Part",workspace)
J["Size"]=Vector3["new"](1,1,1)
J["Name"]="Rip_Indra"
J["Anchored"]=true
J["CanCollide"]=false
J["CanTouch"]=false
J["Transparency"]=1
local Yz=workspace:FindFirstChild(J["Name"]) 
if Yz and Yz~=J then
  Yz:Destroy()
end
task["spawn"](function()
  while task["wait"]()do
    if J and J["Parent"]==workspace then
      if y then
        (getgenv())["OnFarm"]=true
      else
        (getgenv())["OnFarm"]=false
      end
    else
      (getgenv())["OnFarm"]=false
    end
  end
end
)task["spawn"](function()
  local players=game["Players"]["LocalPlayer"]repeat
    task["wait"]()
  until
  players["Character"]and players["Character"]["PrimaryPart"]J["CFrame"]=players["Character"]["PrimaryPart"]["CFrame"]while task["wait"]()do
    pcall(function()
      if(getgenv())["OnFarm"]then
        if J and J["Parent"]==workspace then
          local localPlayer=players["Character"]and players["Character"]["PrimaryPart"]if localPlayer and(localPlayer["Position"]-J["Position"])["Magnitude"]<=200 then
            localPlayer["CFrame"]=J["CFrame"]
          else
            J["CFrame"]=localPlayer["CFrame"]
          end
        end
        local localPlayer=players["Character"]if localPlayer then
          for players,localPlayer in pairs(localPlayer:GetChildren())do
            if localPlayer:IsA("BasePart")then
              localPlayer["CanCollide"]=false
            end
          end
        end
      else
        local localPlayer=players["Character"]if localPlayer then
          for players,localPlayer in pairs(localPlayer:GetChildren())do
            if localPlayer:IsA("BasePart")then
              localPlayer["CanCollide"]=true
            end
          end
        end
      end
    end
    )
  end
end
)_tp=function(players)
  local rootPart=localPlayer["Character"]if not rootPart or not rootPart:FindFirstChild("HumanoidRootPart")then
    return
  end
  local replicatedStorage=rootPart["HumanoidRootPart"]
  local playerLevel=(players["Position"]-replicatedStorage["Position"])["Magnitude"]
  local teleportService=TweenInfo["new"](playerLevel/300,Enum["EasingStyle"]["Linear"]) 
  local tweenService=(game:GetService("TweenService")):Create(J,teleportService,{["CFrame"]=players})
  if localPlayer["Character"]["Humanoid"]["Sit"]==true then
    J["CFrame"]=CFrame["new"](J["Position"]["X"],players["Y"],J["Position"]["Z"])
  end
  tweenService:Play()task["spawn"](function()
    while tweenService["PlaybackState"]==Enum["PlaybackState"]["Playing"]do
      if not y then
        tweenService:Cancel()break
      end
      task["wait"](.1)
    end
  end
  )
end
TeleportToTarget=function(players)
  if(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>1000 then
    _tp(players)
  else
    _tp(players)
  end
end
notween=function(players)
  localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=players
end
function BTP(players)
  local localPlayer=game["Players"]["LocalPlayer"]
  local rootPart=localPlayer["Character"]["HumanoidRootPart"]
  local replicatedStorage=localPlayer["Character"]["Humanoid"]
  local playerLevel=localPlayer["PlayerGui"]["Main"]
  local teleportService=players["Position"]
  local tweenService=rootPart["Position"]
  repeat
    replicatedStorage["Health"]=0
    rootPart["CFrame"]=players
    playerLevel["Quest"]["Visible"]=false
    if (rootPart["Position"]-tweenService)["Magnitude"]>1 then
      tweenService=rootPart["Position"]
      rootPart["CFrame"]=players
    end
    task["wait"](.5)
  until (players["Position"]-rootPart["Position"])["Magnitude"]<=2000
end
task.spawn(function()
  while task["wait"]()do
    pcall(function()
      if _G["SailBoat_Hydra"]or _G["WardenBoss"]or _G["AutoFactory"]or _G["HighestMirage"]or _G["HCM"]or _G["PGB"]or _G["Leviathan1"]or _G["UPGDrago"]or _G["Complete_Trials"]or _G["TpDrago_Prehis"]or _G["BuyDrago"]or _G["AutoFireFlowers"]or _G["DT_Uzoth"]or _G["AutoBerry"]or _G["Prehis_Find"]or _G["Prehis_Skills"]or _G["Prehis_DB"]or _G["Prehis_DE"]or _G["FarmBlazeEM"]or _G["Dojoo"]or _G["CollectPresent"]or _G["AutoLawKak"]or _G["TpLab"]or _G["AutoPhoenixF"]or _G["AutoFarmChest"]or _G["AutoHytHallow"]or _G["LongsWord"]or _G["BlackSpikey"]or _G["AutoHolyTorch"]or _G["TrainDrago"]or _G["AutoSaber"]or _G["FarmMastery_Dev"]or _G["CitizenQuest"]or _G["AutoEctoplasm"]or _G["KeysRen"]or _G["Auto_Rainbow_Haki"]or _G["obsFarm"]or _G["AutoBigmom"]or _G["Doughv2"]or _G["AuraBoss"]or _G["Raiding"]or _G["Auto_Cavender"]or _G["TpPly"]or _G["Bartilo_Quest"]or _G["Level"]or _G["FarmEliteHunt"]or _G["AutoZou"]or _G["AutoFarm_Bone"]or(getgenv())["AutoMaterial"]or _G["CraftVM"]or _G["FrozenTP"]or _G["TPDoor"]or _G["AcientOne"]or _G["AutoFarmNear"]or _G["AutoRaidCastle"]or _G["DarkBladev3"]or _G["AutoFarmRaid"]or _G["Auto_Cake_Prince"]or _G["Addealer"]or _G["TPNpc"]or _G["TwinHook"]or _G["FindMirage"]or _G["FarmChestM"]or _G["Shark"]or _G["TerrorShark"]or _G["Piranha"]or _G["MobCrew"]or _G["SeaBeast1"]or _G["FishBoat"]or _G["AutoPole"]or _G["AutoPoleV2"]or _G["Auto_SuperHuman"]or _G["AutoDeathStep"]or _G["Auto_SharkMan_Karate"]or _G["Auto_Electric_Claw"]or _G["AutoDragonTalon"]or _G["Auto_Def_DarkCoat"]or _G["Auto_God_Human"]or _G["Auto_Tushita"]or _G["AutoMatSoul"]or _G["AutoKenVTWO"]or _G["AutoSerpentBow"]or _G["AutoFMon"]or _G["Auto_Soul_Guitar"]or _G["TPGEAR"]or _G["AutoSaw"]or _G["AutoTridentW2"]or _G["Auto_StartRaid"]or _G["AutoEvoRace"]or _G["AutoGetQuestBounty"]or _G["MarinesCoat"]or _G["TravelDres"]or _G["Defeating"]or _G["DummyMan"]or _G["Auto_Yama"]or _G["Auto_SwanGG"]or _G["SwanCoat"]or _G["AutoEcBoss"]or _G["Auto_Mink"]or _G["Auto_Human"]or _G["Auto_Skypiea"]or _G["Auto_Fish"]or _G["CDK_TS"]or _G["CDK_YM"]or _G["CDK"]or _G["AutoFarmGodChalice"]or _G["AutoFistDarkness"]or _G["AutoMiror"]or _G["Teleport"]or _G["AutoKilo"]or _G["AutoGetUsoap"]or _G["Praying"]or _G["TryLucky"]or _G["AutoColShad"]or _G["AutoUnHaki"]or _G["Auto_DonAcces"]or _G["AutoRipIngay"]or _G["DragoV3"]or _G["DragoV1"]or _G["SailBoats"]or NextIs or _G["FarmGodChalice"]or _G["IceBossRen"]or senth or senth2 or _G["Lvthan"]or _G["beasthunter"]or _G["DangerLV"]or _G["Relic123"]or _G["tweenKitsune"]or _G["Collect_Ember"]or _G["AutofindKitIs"]or _G["snaguine"]or _G["TwFruits"]or _G["tweenKitShrine"]or _G["Tp_LgS"]or _G["Tp_MasterA"]or _G["tweenShrine"]or _G["FarmMastery_G"]or _G["FarmMastery_S"]then
        y=true if not localPlayer["Character"]["HumanoidRootPart"]:FindFirstChild("BodyClip")then
          local players=Instance["new"]("BodyVelocity")players["Name"]="BodyClip"players["Parent"]=localPlayer["Character"]["HumanoidRootPart"]players["MaxForce"]=Vector3["new"](100000,100000,100000)players["Velocity"]=Vector3["new"](0,0,0)
        end
        if not localPlayer["Character"]:FindFirstChild("highlight")then
          local players=Instance["new"]("Highlight")players["Name"]="highlight"players["Enabled"]=true players["FillColor"]=Color3["fromRGB"](0,255,255)players["OutlineColor"]=Color3["fromRGB"](255,255,255)players["FillTransparency"]=.5 players["OutlineTransparency"]=.2 players["Parent"]=localPlayer["Character"]
        end
        for players,localPlayer in pairs(localPlayer["Character"]:GetDescendants())do
          if localPlayer:IsA("BasePart")then
            localPlayer["CanCollide"]=false
          end
        end
      else
        y=false if localPlayer["Character"]["HumanoidRootPart"]:FindFirstChild("BodyClip")then
          (localPlayer["Character"]["HumanoidRootPart"]:FindFirstChild("BodyClip")):Destroy()
        end
        if localPlayer["Character"]:FindFirstChild("highlight")then
          (localPlayer["Character"]:FindFirstChild("highlight")):Destroy()
        end
      end
    end
    )
  end
end
)MaterialMon=function()
  local players=game["Players"]["LocalPlayer"]
  local localPlayer=players["Character"] and players["Character"]:FindFirstChild("HumanoidRootPart")
  if not localPlayer then
    return
  end
  shouldRequestEntrance=function(players,rootPart)
    local playerLevel=(localPlayer["Position"]-players)["Magnitude"]if playerLevel>=rootPart then
      replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",players)
    end
  end
  if World1 then
    if SelectMaterial=="Angel Wings"then
    MMon={
    "Shanda",
    "Royal Squad",
    "Royal Soldier",
    "Wysper",
    "Thunder God"
    } 
    MPos=CFrame["new"](-4698,845,-1912)SP="Default"local players=Vector3["new"](-4607.82275,872.54248,-1667.55688)shouldRequestEntrance(players,10000)
    elseif  SelectMaterial=="Leather + Scrap Metal"then
      MMon={"Brute","Pirate"}MPos=CFrame["new"](-1145,15,4350)SP="Default"
    elseif  SelectMaterial=="Magma Ore"then
      MMon={"Military Soldier",
      "Military Spy",
      "Magma Admiral"}MPos=CFrame["new"](-5815,84,8820)SP="Default"
    elseif  SelectMaterial=="Fish Tail"then
      MMon={"Fishman Warrior","Fishman Commando",
      "Fishman Lord"}MPos=CFrame["new"](61123,19,1569)SP="Default"local players=Vector3["new"](61163.8515625,5.342342376709,1819.7841796875)shouldRequestEntrance(players,17000)
    end
  elseif  World2 then
    if SelectMaterial=="Leather + Scrap Metal"then
      MMon={"Marine Captain"}MPos=CFrame["new"](-2010.5059814453,73.001159667969,-3326.6208496094)SP="Default"
    elseif  SelectMaterial=="Magma Ore"then
      MMon={"Magma Ninja",
      "Lava Pirate"}MPos=CFrame["new"](-5428,78,-5959)SP="Default"
    elseif  SelectMaterial=="Ectoplasm"then
      MMon={"Ship Deckhand","Ship Engineer",
      "Ship Steward","Ship Officer"}MPos=CFrame["new"](911.35827636719,125.95812988281,33159.5390625)SP="Default"local players=Vector3["new"](61163.8515625,5.342342376709,1819.7841796875)shouldRequestEntrance(players,18000)
    elseif  SelectMaterial=="Mystic Droplet"then
      MMon={"Water Fighter"}MPos=CFrame["new"](-3385,239,-10542)SP="Default"
    elseif  SelectMaterial=="Radioactive Material"then
      MMon={"Factory Staff"}MPos=CFrame["new"](295,73,-56)SP="Default"
    elseif  SelectMaterial=="Vampire Fang"then
      MMon={"Vampire"}MPos=CFrame["new"](-6033,7,-1317)SP="Default"
    end
  elseif  World3 then
    if SelectMaterial=="Scrap Metal"then
      MMon={"Jungle Pirate",
      "Forest Pirate"}MPos=CFrame["new"](-11975.78515625,331.77340698242,-10620.030273438)SP="Default"
    elseif  SelectMaterial=="Fish Tail"then
      MMon={"Fishman Raider","Fishman Captain"}MPos=CFrame["new"](-10993,332,-8940)SP="Default"
    elseif  SelectMaterial=="Conjured Cocoa"then
      MMon={"Chocolate Bar Battler","Cocoa Warrior"}MPos=CFrame["new"](620.63446044922,78.936447143555,-12581.369140625)SP="Default"
    elseif  SelectMaterial=="Dragon Scale"then
      MMon={"Dragon Crew Archer",
      "Dragon Crew Warrior"}MPos=CFrame["new"](6594,383,139)SP="Default"
    elseif  SelectMaterial=="Gunpowder"then
      MMon={"Pistol Billionaire"}MPos=CFrame["new"](-84.855690002441,85.620613098145,6132.0087890625)SP="Default"
    elseif  SelectMaterial=="Mini Tusk"then
      MMon={"Mythological Pirate"}MPos=CFrame["new"](-13545,470,-6917)SP="Default"
    elseif  SelectMaterial=="Demonic Wisp"then
      MMon={"Demonic Soul"}MPos=CFrame["new"](-9495.6806640625,453.58624267578,5977.3486328125)SP="Default"
    end
  end
end
function CheckQuest()
  MyLevel=(game:GetService("Players"))["LocalPlayer"]["Data"]["Level"]["Value"]if World1 then
    if MyLevel>=1 and MyLevel<=9 then
      Mon="Bandit"LevelQuest=1 NameQuest="BanditQuest1"NameMon="Bandit"CFrameQuest=CFrame["new"](1059.37195,15.4495068,1550.4231,.939700544,0,-0.341998369,0,1,0,.341998369,0,.939700544)CFrameMon=CFrame["new"](1045.9626464844,27.002508163452,1560.8203125)
    elseif  MyLevel>=10 and MyLevel<=14 then
      Mon="Monkey"LevelQuest=1 NameQuest="JungleQuest"NameMon="Monkey"CFrameQuest=CFrame["new"](-1598.08911,35.5501175,153.377838,0,0,1,0,1,0,-1,0,0)CFrameMon=CFrame["new"](-1448.5180664062,67.853012084961,11.465796470642)
    elseif  MyLevel>=15 and MyLevel<=29 then
      Mon="Gorilla"LevelQuest=2 NameQuest="JungleQuest"NameMon="Gorilla"CFrameQuest=CFrame["new"](-1598.08911,35.5501175,153.377838,0,0,1,0,1,0,-1,0,0)CFrameMon=CFrame["new"](-1129.8836669922,40.46354675293,-525.42370605469)
    elseif  MyLevel>=30 and MyLevel<=39 then
      Mon="Pirate"LevelQuest=1 NameQuest="BuggyQuest1"NameMon="Pirate"CFrameQuest=CFrame["new"](-1141.07483,4.10001802,3831.5498,.965929627,0,-0.258804798,0,1,0,.258804798,0,.965929627)CFrameMon=CFrame["new"](-1103.5134277344,13.752052307129,3896.0910644531)
    elseif  MyLevel>=40 and MyLevel<=59 then
      Mon="Brute"LevelQuest=2 NameQuest="BuggyQuest1"NameMon="Brute"CFrameQuest=CFrame["new"](-1141.07483,4.10001802,3831.5498,.965929627,0,-0.258804798,0,1,0,.258804798,0,.965929627)CFrameMon=CFrame["new"](-1140.0837402344,14.809885025024,4322.9213867188)
    elseif  MyLevel>=60 and MyLevel<=74 then
      Mon="Desert Bandit"LevelQuest=1 NameQuest="DesertQuest"NameMon="Desert Bandit"CFrameQuest=CFrame["new"](894.488647,5.14000702,4392.43359,.819155693,0,-0.573571265,0,1,0,.573571265,0,.819155693)CFrameMon=CFrame["new"](924.7998046875,6.4486746788025,4481.5859375)
    elseif  MyLevel>=75 and MyLevel<=89 then
      Mon="Desert Officer"LevelQuest=2 NameQuest="DesertQuest"NameMon="Desert Officer"CFrameQuest=CFrame["new"](894.488647,5.14000702,4392.43359,.819155693,0,-0.573571265,0,1,0,.573571265,0,.819155693)CFrameMon=CFrame["new"](1608.2822265625,8.6142244338989,4371.0073242188)
    elseif  MyLevel>=90 and MyLevel<=99 then
      Mon="Snow Bandit"LevelQuest=1 NameQuest="SnowQuest"NameMon="Snow Bandit"CFrameQuest=CFrame["new"](1389.74451,88.1519318,-1298.90796,-0.342042685,0,.939684391,0,1,0,-0.939684391,0,-0.342042685)CFrameMon=CFrame["new"](1354.3479003906,87.272773742676,-1393.9465332031)
    elseif  MyLevel>=100 and MyLevel<=119 then
      Mon="Snowman"LevelQuest=2 NameQuest="SnowQuest"NameMon="Snowman"CFrameQuest=CFrame["new"](1389.74451,88.1519318,-1298.90796,-0.342042685,0,.939684391,0,1,0,-0.939684391,0,-0.342042685)CFrameMon=CFrame["new"](1201.6412353516,144.57958984375,-1550.0670166016)
    elseif  MyLevel>=120 and MyLevel<=149 then
      Mon="Chief Petty Officer"LevelQuest=1 NameQuest="MarineQuest2"NameMon="Chief Petty Officer"CFrameQuest=CFrame["new"](-5039.58643,27.3500385,4324.68018,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-4881.2309570312,22.652044296265,4273.7524414062)
    elseif  MyLevel>=150 and MyLevel<=174 then
      Mon="Sky Bandit"LevelQuest=1 NameQuest="SkyQuest"NameMon="Sky Bandit"CFrameQuest=CFrame["new"](-4839.53027,716.368591,-2619.44165,.866007268,0,.500031412,0,1,0,-0.500031412,0,.866007268)CFrameMon=CFrame["new"](-4953.20703125,295.74420166016,-2899.2290039062)
    elseif  MyLevel>=175 and MyLevel<=189 then
      Mon="Dark Master"LevelQuest=2 NameQuest="SkyQuest"NameMon="Dark Master"CFrameQuest=CFrame["new"](-4839.53027,716.368591,-2619.44165,.866007268,0,.500031412,0,1,0,-0.500031412,0,.866007268)CFrameMon=CFrame["new"](-5259.8447265625,391.39767456055,-2229.0354003906)
    elseif  MyLevel>=190 and MyLevel<=209 then
      Mon="Prisoner"LevelQuest=1 NameQuest="PrisonerQuest"NameMon="Prisoner"CFrameQuest=CFrame["new"](5308.93115,1.65517521,475.120514,-0.0894274712,-5.00292918e-009,-0.995993316,1.60817859e-009,1,-5.16744869e-009,.995993316,-2.06384709e-009,-0.0894274712)CFrameMon=CFrame["new"](5098.9736328125,-0.3204058110714,474.23733520508)
    elseif  MyLevel>=210 and MyLevel<=249 then
      Mon="Dangerous Prisoner"LevelQuest=2 NameQuest="PrisonerQuest"NameMon="Dangerous Prisoner"CFrameQuest=CFrame["new"](5308.93115,1.65517521,475.120514,-0.0894274712,-5.00292918e-009,-0.995993316,1.60817859e-009,1,-5.16744869e-009,.995993316,-2.06384709e-009,-0.0894274712)CFrameMon=CFrame["new"](5654.5634765625,15.633401870728,866.29919433594)
    elseif  MyLevel>=250 and MyLevel<=274 then
      Mon="Toga Warrior"LevelQuest=1 NameQuest="ColosseumQuest"NameMon="Toga Warrior"CFrameQuest=CFrame["new"](-1580.04663,6.35000277,-2986.47534,-0.515037298,0,-0.857167721,0,1,0,.857167721,0,-0.515037298)CFrameMon=CFrame["new"](-1820.21484375,51.683856964111,-2740.6650390625)
    elseif  MyLevel>=275 and MyLevel<=299 then
      Mon="Gladiator"LevelQuest=2 NameQuest="ColosseumQuest"NameMon="Gladiator"CFrameQuest=CFrame["new"](-1580.04663,6.35000277,-2986.47534,-0.515037298,0,-0.857167721,0,1,0,.857167721,0,-0.515037298)CFrameMon=CFrame["new"](-1292.8381347656,56.380882263184,-3339.0314941406)
    elseif  MyLevel>=300 and MyLevel<=324 then
      Mon="Military Soldier"LevelQuest=1 NameQuest="MagmaQuest"NameMon="Military Soldier"CFrameQuest=CFrame["new"](-5313.37012,10.9500084,8515.29395,-0.499959469,0,.866048813,0,1,0,-0.866048813,0,-0.499959469)CFrameMon=CFrame["new"](-5411.1645507812,11.081554412842,8454.29296875)
    elseif  MyLevel>=325 and MyLevel<=374 then
      Mon="Military Spy"LevelQuest=2 NameQuest="MagmaQuest"NameMon="Military Spy"CFrameQuest=CFrame["new"](-5313.37012,10.9500084,8515.29395,-0.499959469,0,.866048813,0,1,0,-0.866048813,0,-0.499959469)CFrameMon=CFrame["new"](-5802.8681640625,86.262413024902,8828.859375)
    elseif  MyLevel>=375 and MyLevel<=399 then
      Mon="Fishman Warrior"LevelQuest=1 NameQuest="FishmanQuest"NameMon="Fishman Warrior"CFrameQuest=CFrame["new"](61122.65234375,18.497442245483,1569.3997802734)CFrameMon=CFrame["new"](60878.30078125,18.482830047607,1543.7574462891)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](61163.8515625,11.6796875,1819.7841796875))
      end
    elseif  MyLevel>=400 and MyLevel<=449 then
      Mon="Fishman Commando"LevelQuest=2 NameQuest="FishmanQuest"NameMon="Fishman Commando"CFrameQuest=CFrame["new"](61122.65234375,18.497442245483,1569.3997802734)CFrameMon=CFrame["new"](61922.6328125,18.482830047607,1493.9343261719)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](61163.8515625,11.6796875,1819.7841796875))
      end
    elseif  MyLevel>=450 and MyLevel<=474 then
      Mon="God's Guard"LevelQuest=1 NameQuest="SkyExp1Quest"NameMon="God's Guard"CFrameQuest=CFrame["new"](-4721.88867,843.874695,-1949.96643,.996191859,0,-0.0871884301,0,1,0,.0871884301,0,.996191859)CFrameMon=CFrame["new"](-4710.04296875,845.27697753906,-1927.3079833984)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-4607.82275,872.54248,-1667.55688))
      end
    elseif  MyLevel>=475 and MyLevel<=524 then
      Mon="Shanda"LevelQuest=2 NameQuest="SkyExp1Quest"NameMon="Shanda"CFrameQuest=CFrame["new"](-7859.09814,5544.19043,-381.476196,-0.422592998,0,.906319618,0,1,0,-0.906319618,0,-0.422592998)CFrameMon=CFrame["new"](-7678.4897460938,5566.4038085938,-497.21560668945)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-7894.6176757813,5547.1416015625,-380.29119873047))
      end
    elseif  MyLevel>=525 and MyLevel<=549 then
      Mon="Royal Squad"LevelQuest=1 NameQuest="SkyExp2Quest"NameMon="Royal Squad"CFrameQuest=CFrame["new"](-7906.81592,5634.6626,-1411.99194,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-7624.2524414062,5658.1333007812,-1467.3542480469)
    elseif  MyLevel>=550 and MyLevel<=624 then
      Mon="Royal Soldier"LevelQuest=2 NameQuest="SkyExp2Quest"NameMon="Royal Soldier"CFrameQuest=CFrame["new"](-7906.81592,5634.6626,-1411.99194,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-7836.7534179688,5645.6640625,-1790.6236572266)
    elseif  MyLevel>=625 and MyLevel<=649 then
      Mon="Galley Pirate"LevelQuest=1 NameQuest="FountainQuest"NameMon="Galley Pirate"CFrameQuest=CFrame["new"](5259.81982,37.3500175,4050.0293,.087131381,0,.996196866,0,1,0,-0.996196866,0,.087131381)CFrameMon=CFrame["new"](5551.0219726562,78.901351928711,3930.4128417969)
    elseif  MyLevel>=650 then
      Mon="Galley Captain"LevelQuest=2 NameQuest="FountainQuest"NameMon="Galley Captain"CFrameQuest=CFrame["new"](5259.81982,37.3500175,4050.0293,.087131381,0,.996196866,0,1,0,-0.996196866,0,.087131381)CFrameMon=CFrame["new"](5441.9516601562,42.502059936523,4950.09375)
    end
  elseif  World2 then
    if MyLevel>=700 and MyLevel<=724 then
      Mon="Raider"LevelQuest=1 NameQuest="Area1Quest"NameMon="Raider"CFrameQuest=CFrame["new"](-429.543518,71.7699966,1836.18188,-0.22495985,0,-0.974368095,0,1,0,.974368095,0,-0.22495985)CFrameMon=CFrame["new"](-728.32672119141,52.779319763184,2345.7705078125)
    elseif  MyLevel>=725 and MyLevel<=774 then
      Mon="Mercenary"LevelQuest=2 NameQuest="Area1Quest"NameMon="Mercenary"CFrameQuest=CFrame["new"](-429.543518,71.7699966,1836.18188,-0.22495985,0,-0.974368095,0,1,0,.974368095,0,-0.22495985)CFrameMon=CFrame["new"](-1004.3244018555,80.158866882324,1424.6193847656)
    elseif  MyLevel>=775 and MyLevel<=799 then
      Mon="Swan Pirate"LevelQuest=1 NameQuest="Area2Quest"NameMon="Swan Pirate"CFrameQuest=CFrame["new"](638.43811,71.769989,918.282898,.139203906,0,.99026376,0,1,0,-0.99026376,0,.139203906)CFrameMon=CFrame["new"](1068.6643066406,137.61428833008,1322.1060791016)
    elseif  MyLevel>=800 and MyLevel<=874 then
      Mon="Factory Staff"NameQuest="Area2Quest"LevelQuest=2 NameMon="Factory Staff"CFrameQuest=CFrame["new"](632.698608,73.1055908,918.666321,-0.0319722369,8.96074881e-010,-0.999488771,1.36326533e-010,1,8.92172336e-010,.999488771,-1.07732087e-010,-0.0319722369)CFrameMon=CFrame["new"](73.078674316406,81.863441467285,-27.470672607422)
    elseif  MyLevel>=875 and MyLevel<=899 then
      Mon="Marine Lieutenant"LevelQuest=1 NameQuest="MarineQuest3"NameMon="Marine Lieutenant"CFrameQuest=CFrame["new"](-2440.79639,71.7140732,-3216.06812,.866007268,0,.500031412,0,1,0,-0.500031412,0,.866007268)CFrameMon=CFrame["new"](-2821.3723144531,75.897277832031,-3070.0891113281)
    elseif  MyLevel>=900 and MyLevel<=949 then
      Mon="Marine Captain"LevelQuest=2 NameQuest="MarineQuest3"NameMon="Marine Captain"CFrameQuest=CFrame["new"](-2440.79639,71.7140732,-3216.06812,.866007268,0,.500031412,0,1,0,-0.500031412,0,.866007268)CFrameMon=CFrame["new"](-1861.2310791016,80.176582336426,-3254.6975097656)
    elseif  MyLevel>=950 and MyLevel<=974 then
      Mon="Zombie"LevelQuest=1 NameQuest="ZombieQuest"NameMon="Zombie"CFrameQuest=CFrame["new"](-5497.06152,47.5923004,-795.237061,-0.29242146,0,-0.95628953,0,1,0,.95628953,0,-0.29242146)CFrameMon=CFrame["new"](-5657.7768554688,78.969734191895,-928.68701171875)
    elseif  MyLevel>=975 and MyLevel<=999 then
      Mon="Vampire"LevelQuest=2 NameQuest="ZombieQuest"NameMon="Vampire"CFrameQuest=CFrame["new"](-5497.06152,47.5923004,-795.237061,-0.29242146,0,-0.95628953,0,1,0,.95628953,0,-0.29242146)CFrameMon=CFrame["new"](-6037.66796875,32.184638977051,-1340.6597900391)
    elseif  MyLevel>=1000 and MyLevel<=1049 then
      Mon="Snow Trooper"LevelQuest=1 NameQuest="SnowMountainQuest"NameMon="Snow Trooper"CFrameQuest=CFrame["new"](609.858826,400.119904,-5372.25928,-0.374604106,0,.92718488,0,1,0,-0.92718488,0,-0.374604106)CFrameMon=CFrame["new"](549.14733886719,427.38705444336,-5563.6987304688)
    elseif  MyLevel>=1050 and MyLevel<=1099 then
      Mon="Winter Warrior"LevelQuest=2 NameQuest="SnowMountainQuest"NameMon="Winter Warrior"CFrameQuest=CFrame["new"](609.858826,400.119904,-5372.25928,-0.374604106,0,.92718488,0,1,0,-0.92718488,0,-0.374604106)CFrameMon=CFrame["new"](1142.7451171875,475.63980102539,-5199.4165039062)
    elseif  MyLevel>=1100 and MyLevel<=1124 then
      Mon="Lab Subordinate"LevelQuest=1 NameQuest="IceSideQuest"NameMon="Lab Subordinate"CFrameQuest=CFrame["new"](-6064.06885,15.2422857,-4902.97852,.453972578,0,-0.891015649,0,1,0,.891015649,0,.453972578)CFrameMon=CFrame["new"](-5707.4716796875,15.951709747314,-4513.3920898438)
    elseif  MyLevel>=1125 and MyLevel<=1174 then
      Mon="Horned Warrior"LevelQuest=2 NameQuest="IceSideQuest"NameMon="Horned Warrior"CFrameQuest=CFrame["new"](-6064.06885,15.2422857,-4902.97852,.453972578,0,-0.891015649,0,1,0,.891015649,0,.453972578)CFrameMon=CFrame["new"](-6341.3666992188,15.951770782471,-5723.162109375)
    elseif  MyLevel>=1175 and MyLevel<=1199 then
      Mon="Magma Ninja"LevelQuest=1 NameQuest="FireSideQuest"NameMon="Magma Ninja"CFrameQuest=CFrame["new"](-5428.03174,15.0622921,-5299.43457,-0.882952213,0,.469463557,0,1,0,-0.469463557,0,-0.882952213)CFrameMon=CFrame["new"](-5449.6728515625,76.658744812012,-5808.2006835938)
    elseif  MyLevel>=1200 and MyLevel<=1249 then
      Mon="Lava Pirate"LevelQuest=2 NameQuest="FireSideQuest"NameMon="Lava Pirate"CFrameQuest=CFrame["new"](-5428.03174,15.0622921,-5299.43457,-0.882952213,0,.469463557,0,1,0,-0.469463557,0,-0.882952213)CFrameMon=CFrame["new"](-5213.3315429688,49.737880706787,-4701.451171875)
    elseif  MyLevel>=1250 and MyLevel<=1274 then
      Mon="Ship Deckhand"LevelQuest=1 NameQuest="ShipQuest1"NameMon="Ship Deckhand"CFrameQuest=CFrame["new"](1037.80127,125.092171,32911.6016)CFrameMon=CFrame["new"](1212.0111083984,150.79205322266,33059.24609375)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923.21252441406,126.9760055542,32852.83203125))
      end
    elseif  MyLevel>=1275 and MyLevel<=1299 then
      Mon="Ship Engineer"LevelQuest=2 NameQuest="ShipQuest1"NameMon="Ship Engineer"CFrameQuest=CFrame["new"](1037.80127,125.092171,32911.6016)CFrameMon=CFrame["new"](919.47863769531,43.544013977051,32779.96875)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923.21252441406,126.9760055542,32852.83203125))
      end
    elseif  MyLevel>=1300 and MyLevel<=1324 then
      Mon="Ship Steward"LevelQuest=1 NameQuest="ShipQuest2"NameMon="Ship Steward"CFrameQuest=CFrame["new"](968.80957,125.092171,33244.125)CFrameMon=CFrame["new"](919.43853759766,129.55599975586,33436.03515625)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923.21252441406,126.9760055542,32852.83203125))
      end
    elseif  MyLevel>=1325 and MyLevel<=1349 then
      Mon="Ship Officer"LevelQuest=2 NameQuest="ShipQuest2"NameMon="Ship Officer"CFrameQuest=CFrame["new"](968.80957,125.092171,33244.125)CFrameMon=CFrame["new"](1036.0179443359,181.4390411377,33315.7265625)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923.21252441406,126.9760055542,32852.83203125))
      end
    elseif  MyLevel>=1350 and MyLevel<=1374 then
      Mon="Arctic Warrior"LevelQuest=1 NameQuest="FrostQuest"NameMon="Arctic Warrior"CFrameQuest=CFrame["new"](5667.6582,26.7997818,-6486.08984,-0.933587909,0,-0.358349502,0,1,0,.358349502,0,-0.933587909)CFrameMon=CFrame["new"](5966.24609375,62.970020294189,-6179.3828125)if(getgenv())["AutoFarm"]and(CFrameQuest["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>10000 then
        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-6508.5581054688,5000.0349960327,-132.83953857422))
      end
    elseif  MyLevel>=1375 and MyLevel<=1424 then
      Mon="Snow Lurker"LevelQuest=2 NameQuest="FrostQuest"NameMon="Snow Lurker"CFrameQuest=CFrame["new"](5667.6582,26.7997818,-6486.08984,-0.933587909,0,-0.358349502,0,1,0,.358349502,0,-0.933587909)CFrameMon=CFrame["new"](5407.0737304688,69.194374084473,-6880.8803710938)
    elseif  MyLevel>=1425 and MyLevel<=1449 then
      Mon="Sea Soldier"LevelQuest=1 NameQuest="ForgottenQuest"NameMon="Sea Soldier"CFrameQuest=CFrame["new"](-3054.44458,235.544281,-10142.8193,.990270376,0,-0.13915664,0,1,0,.13915664,0,.990270376)CFrameMon=CFrame["new"](-3028.2236328125,64.674514770508,-9775.4267578125)
    elseif  MyLevel>=1450 then
      Mon="Water Fighter"LevelQuest=2 NameQuest="ForgottenQuest"NameMon="Water Fighter"CFrameQuest=CFrame["new"](-3054,240,-10146)CFrameMon=CFrame["new"](-3291,252,-10501)
    end
  elseif  World3 then
    if MyLevel>=1500 and MyLevel<=1524 then
      Mon="Pirate Millionaire"LevelQuest=1 NameQuest="PiratePortQuest"NameMon="Pirate Millionaire"CFrameQuest=CFrame["new"](-290.074677,42.9034653,5581.58984,.965929627,0,-0.258804798,0,1,0,.258804798,0,.965929627)CFrameMon=CFrame["new"](-245.99638366699,47.30615234375,5584.1005859375)
    elseif  MyLevel>=1525 and MyLevel<=1574 then
      Mon="Pistol Billionaire"LevelQuest=2 NameQuest="PiratePortQuest"NameMon="Pistol Billionaire"CFrameQuest=CFrame["new"](-290.074677,42.9034653,5581.58984,.965929627,0,-0.258804798,0,1,0,.258804798,0,.965929627)CFrameMon=CFrame["new"](-187.33015441895,86.239875793457,6013.513671875)
    elseif  MyLevel>=1575 and MyLevel<=1599 then
      Mon="Dragon Crew Warrior"LevelQuest=1 NameQuest="DragonCrewQuest"NameMon="Dragon Crew Warrior"CFrameQuest=CFrame["new"](6738.9614257812,127.81645965576,-713.51147460938)CFrameMon=CFrame["new"](6920.7143554688,56.1559715271,-942.50445556641)
    elseif  MyLevel>=1600 and MyLevel<=1624 then
      Mon="Dragon Crew Archer"NameQuest="DragonCrewQuest"LevelQuest=2 NameMon="Dragon Crew Archer"CFrameQuest=CFrame["new"](6738.9614257812,127.81645965576,-713.51147460938)CFrameMon=CFrame["new"](6817.9125976562,484.80444335938,513.41412353516)
    elseif  MyLevel>=1625 and MyLevel<=1649 then
      Mon="Hydra Enforcer"NameQuest="VenomCrewQuest"LevelQuest=1 NameMon="Hydra Enforcer"CFrameQuest=CFrame["new"](5213.8740234375,1004.5042724609,758.69445800781)CFrameMon=CFrame["new"](4584.6928710938,1002.6435546875,705.7958984375)
    elseif  MyLevel>=1650 and MyLevel<=1699 then
      Mon="Venomous Assailant"NameQuest="VenomCrewQuest"LevelQuest=2 NameMon="Venomous Assailant"CFrameQuest=CFrame["new"](5213.8740234375,1004.5042724609,758.69445800781)CFrameMon=CFrame["new"](4638.7856445312,1078.9409179688,881.80023193359)
    elseif  MyLevel>=1700 and MyLevel<=1724 then
      Mon="Marine Commodore"LevelQuest=1 NameQuest="MarineTreeIsland"NameMon="Marine Commodore"CFrameQuest=CFrame["new"](2180.54126,27.8156815,-6741.5498,-0.965929747,0,.258804798,0,1,0,-0.258804798,0,-0.965929747)CFrameMon=CFrame["new"](2286.0078125,73.133918762207,-7159.8090820312)
    elseif  MyLevel>=1725 and MyLevel<=1774 then
      Mon="Marine Rear Admiral"NameMon="Marine Rear Admiral"NameQuest="MarineTreeIsland"LevelQuest=2 CFrameQuest=CFrame["new"](2179.98828125,28.731239318848,-6740.0551757813)CFrameMon=CFrame["new"](3656.7736816406,160.52406311035,-7001.5986328125)
    elseif  MyLevel>=1775 and MyLevel<=1799 then
      Mon="Fishman Raider"LevelQuest=1 NameQuest="DeepForestIsland3"NameMon="Fishman Raider"CFrameQuest=CFrame["new"](-10581.6563,330.872955,-8761.18652,-0.882952213,0,.469463557,0,1,0,-0.469463557,0,-0.882952213)CFrameMon=CFrame["new"](-10407.526367188,331.76263427734,-8368.5166015625)
    elseif  MyLevel>=1800 and MyLevel<=1824 then
      Mon="Fishman Captain"LevelQuest=2 NameQuest="DeepForestIsland3"NameMon="Fishman Captain"CFrameQuest=CFrame["new"](-10581.6563,330.872955,-8761.18652,-0.882952213,0,.469463557,0,1,0,-0.469463557,0,-0.882952213)CFrameMon=CFrame["new"](-10994.701171875,352.38140869141,-9002.1103515625)
    elseif  MyLevel>=1825 and MyLevel<=1849 then
      Mon="Forest Pirate"LevelQuest=1 NameQuest="DeepForestIsland"NameMon="Forest Pirate"CFrameQuest=CFrame["new"](-13234.04,331.488495,-7625.40137,.707134247,0,-0.707079291,0,1,0,.707079291,0,.707134247)CFrameMon=CFrame["new"](-13274.478515625,332.37814331055,-7769.5805664062)
    elseif  MyLevel>=1850 and MyLevel<=1899 then
      Mon="Mythological Pirate"LevelQuest=2 NameQuest="DeepForestIsland"NameMon="Mythological Pirate"CFrameQuest=CFrame["new"](-13234.04,331.488495,-7625.40137,.707134247,0,-0.707079291,0,1,0,.707079291,0,.707134247)CFrameMon=CFrame["new"](-13680.607421875,501.08154296875,-6991.189453125)
    elseif  MyLevel>=1900 and MyLevel<=1924 then
      Mon="Jungle Pirate"LevelQuest=1 NameQuest="DeepForestIsland2"NameMon="Jungle Pirate"CFrameQuest=CFrame["new"](-12680.3818,389.971039,-9902.01953,-0.0871315002,0,.996196866,0,1,0,-0.996196866,0,-0.0871315002)CFrameMon=CFrame["new"](-12256.16015625,331.73828125,-10485.836914062)
    elseif  MyLevel>=1925 and MyLevel<=1974 then
      Mon="Musketeer Pirate"LevelQuest=2 NameQuest="DeepForestIsland2"NameMon="Musketeer Pirate"CFrameQuest=CFrame["new"](-12680.3818,389.971039,-9902.01953,-0.0871315002,0,.996196866,0,1,0,-0.996196866,0,-0.0871315002)CFrameMon=CFrame["new"](-13457.904296875,391.54565429688,-9859.177734375)
    elseif  MyLevel>=1975 and MyLevel<=1999 then
      Mon="Reborn Skeleton"LevelQuest=1 NameQuest="HauntedQuest1"NameMon="Reborn Skeleton"CFrameQuest=CFrame["new"](-9479.2168,141.215088,5566.09277,0,0,1,0,1,0,-1,0,0)CFrameMon=CFrame["new"](-8763.7236328125,165.72299194336,6159.8618164062)
    elseif  MyLevel>=2000 and MyLevel<=2024 then
      Mon="Living Zombie"LevelQuest=2 NameQuest="HauntedQuest1"NameMon="Living Zombie"CFrameQuest=CFrame["new"](-9479.2168,141.215088,5566.09277,0,0,1,0,1,0,-1,0,0)CFrameMon=CFrame["new"](-10144.131835938,138.6266784668,5838.0888671875)
    elseif  MyLevel>=2025 and MyLevel<=2049 then
      Mon="Demonic Soul"LevelQuest=1 NameQuest="HauntedQuest2"NameMon="Demonic Soul"CFrameQuest=CFrame["new"](-9516.99316,172.017181,6078.46533,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-9505.8720703125,172.10482788086,6158.9931640625)
    elseif  MyLevel>=2050 and MyLevel<=2074 then
      Mon="Posessed Mummy"LevelQuest=2 NameQuest="HauntedQuest2"NameMon="Posessed Mummy"CFrameQuest=CFrame["new"](-9516.99316,172.017181,6078.46533,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-9582.0224609375,6.2515273094177,6205.478515625)
    elseif  MyLevel>=2075 and MyLevel<=2099 then
      Mon="Peanut Scout"LevelQuest=1 NameQuest="NutsIslandQuest"NameMon="Peanut Scout"CFrameQuest=CFrame["new"](-2104.3908691406,38.104167938232,-10194.21875,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-2143.2419433594,47.721984863281,-10029.995117188)
    elseif  MyLevel>=2100 and MyLevel<=2124 then
      Mon="Peanut President"LevelQuest=2 NameQuest="NutsIslandQuest"NameMon="Peanut President"CFrameQuest=CFrame["new"](-2104.3908691406,38.104167938232,-10194.21875,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-1859.3540039062,38.103168487549,-10422.4296875)
    elseif  MyLevel>=2125 and MyLevel<=2149 then
      Mon="Ice Cream Chef"LevelQuest=1 NameQuest="IceCreamIslandQuest"NameMon="Ice Cream Chef"CFrameQuest=CFrame["new"](-820.64825439453,65.819526672363,-10965.795898438,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-872.24658203125,65.81957244873,-10919.95703125)
    elseif  MyLevel>=2150 and MyLevel<=2199 then
      Mon="Ice Cream Commander"LevelQuest=2 NameQuest="IceCreamIslandQuest"NameMon="Ice Cream Commander"CFrameQuest=CFrame["new"](-820.64825439453,65.819526672363,-10965.795898438,0,0,-1,0,1,0,1,0,0)CFrameMon=CFrame["new"](-558.06103515625,112.04895782471,-11290.774414062)
    elseif  MyLevel>=2200 and MyLevel<=2224 then
      Mon="Cookie Crafter"LevelQuest=1 NameQuest="CakeQuest1"NameMon="Cookie Crafter"CFrameQuest=CFrame["new"](-2021.32007,37.7982254,-12028.7295,.957576931,-8.80302053e-008,.288177818,6.9301187e-008,1,7.51931211e-008,-0.288177818,-5.2032135e-008,.957576931)CFrameMon=CFrame["new"](-2374.13671875,37.798263549805,-12125.30859375)
    elseif  MyLevel>=2225 and MyLevel<=2249 then
      Mon="Cake Guard"LevelQuest=2 NameQuest="CakeQuest1"NameMon="Cake Guard"CFrameQuest=CFrame["new"](-2021.32007,37.7982254,-12028.7295,.957576931,-8.80302053e-008,.288177818,6.9301187e-008,1,7.51931211e-008,-0.288177818,-5.2032135e-008,.957576931)CFrameMon=CFrame["new"](-1598.3070068359,43.773197174072,-12244.581054688)
    elseif  MyLevel>=2250 and MyLevel<=2274 then
      Mon="Baking Staff"LevelQuest=1 NameQuest="CakeQuest2"NameMon="Baking Staff"CFrameQuest=CFrame["new"](-1927.91602,37.7981339,-12842.5391,-0.96804446,4.22142143e-008,.250778586,4.74911062e-008,1,1.49904711e-008,-0.250778586,2.64211941e-008,-0.96804446)CFrameMon=CFrame["new"](-1887.8099365234,77.618507385254,-12998.350585938)
    elseif  MyLevel>=2275 and MyLevel<=2299 then
      Mon="Head Baker"LevelQuest=2 NameQuest="CakeQuest2"NameMon="Head Baker"CFrameQuest=CFrame["new"](-1927.91602,37.7981339,-12842.5391,-0.96804446,4.22142143e-008,.250778586,4.74911062e-008,1,1.49904711e-008,-0.250778586,2.64211941e-008,-0.96804446)CFrameMon=CFrame["new"](-2216.1882324219,82.884521484375,-12869.293945312)
    elseif  MyLevel>=2300 and MyLevel<=2324 then
      Mon="Cocoa Warrior"LevelQuest=1 NameQuest="ChocQuest1"NameMon="Cocoa Warrior"CFrameQuest=CFrame["new"](233.22836303711,29.876001358032,-12201.233398438)CFrameMon=CFrame["new"](-21.553283691406,80.574996948242,-12352.387695312)
    elseif  MyLevel>=2325 and MyLevel<=2349 then
      Mon="Chocolate Bar Battler"LevelQuest=2 NameQuest="ChocQuest1"NameMon="Chocolate Bar Battler"CFrameQuest=CFrame["new"](233.22836303711,29.876001358032,-12201.233398438)CFrameMon=CFrame["new"](582.59057617188,77.188095092773,-12463.162109375)
    elseif  MyLevel>=2350 and MyLevel<=2374 then
      Mon="Sweet Thief"LevelQuest=1 NameQuest="ChocQuest2"NameMon="Sweet Thief"CFrameQuest=CFrame["new"](150.50663757324,30.693693161011,-12774.502929688)CFrameMon=CFrame["new"](165.1884765625,76.058853149414,-12600.836914062)
    elseif  MyLevel>=2375 and MyLevel<=2399 then
      Mon="Candy Rebel"LevelQuest=2 NameQuest="ChocQuest2"NameMon="Candy Rebel"CFrameQuest=CFrame["new"](150.50663757324,30.693693161011,-12774.502929688)CFrameMon=CFrame["new"](134.86563110352,77.247680664062,-12876.547851562)
    elseif  MyLevel>=2400 and MyLevel<=2424 then
      Mon="Candy Pirate"LevelQuest=1 NameQuest="CandyQuest1"NameMon="Candy Pirate"CFrameQuest=CFrame["new"](-1150.0400390625,20.378934860229,-14446.334960938)CFrameMon=CFrame["new"](-1310.5003662109,26.016523361206,-14562.404296875)
    elseif  MyLevel>=2425 and MyLevel<=2449 then
      Mon="Snow Demon"LevelQuest=2 NameQuest="CandyQuest1"NameMon="Snow Demon"CFrameQuest=CFrame["new"](-1150.0400390625,20.378934860229,-14446.334960938)CFrameMon=CFrame["new"](-880.20062255859,71.247764587402,-14538.609375)
    elseif  MyLevel>=2450 and MyLevel<=2474 then
      Mon="Isle Outlaw"LevelQuest=1 NameQuest="TikiQuest1"NameMon="Isle Outlaw"CFrameQuest=CFrame["new"](-16547.748046875,61.135334014893,-173.41360473633)CFrameMon=CFrame["new"](-16442.814453125,116.13899993896,-264.46377563477)
    elseif  MyLevel>=2475 and MyLevel<=2524 then
      Mon="Island Boy"LevelQuest=2 NameQuest="TikiQuest1"NameMon="Island Boy"CFrameQuest=CFrame["new"](-16547.748046875,61.135334014893,-173.41360473633)CFrameMon=CFrame["new"](-16901.26171875,84.067565917969,-192.88906860352)
    elseif  MyLevel>=2525 and MyLevel<=2550 then
      Mon="Isle Champion"LevelQuest=2 NameQuest="TikiQuest2"NameMon="Isle Champion"CFrameQuest=CFrame["new"](-16539.078125,55.686328887939,1051.5738525391)CFrameMon=CFrame["new"](-16641.6796875,235.78254699707,1031.2829589844)
    elseif  MyLevel>=2550 and MyLevel<=2574 then
      Mon="Serpent Hunter"LevelQuest=1 NameQuest="TikiQuest3"NameMon="Serpent Hunter"CFrameQuest=CFrame["new"](-16665.1914,104.596405,1579.69434,.951068401,0,-0.308980465,0,1,0,.308980465,0,.951068401)CFrameMon=CFrame["new"](-16521.0625,106.09285,1488.78467,.469467044,0,.882950008,0,1,0,-0.882950008,0,.469467044)
    elseif  MyLevel>=2575 and MyLevel<=2599 then
      Mon="Skull Slayer"LevelQuest=2 NameQuest="TikiQuest3"NameMon="Skull Slayer"CFrameQuest=CFrame["new"](-16665.1914,104.596405,1579.69434,.951068401,0,-0.308980465,0,1,0,.308980465,0,.951068401)CFrameMon=CFrame["new"](-16855.043,122.457253,1478.15308,-0.999392271,0,-0.0348687991,0,1,0,.0348687991,0,-0.999392271)
    elseif  MyLevel>=2600 and MyLevel<=2624 then
      Mon="Reef Bandit"LevelQuest=1 NameQuest="SubmergedQuest1"NameMon="Reef Bandit"CFrameMon=CFrame["new"](10943.0811,-2083.03516,9177.33691,-0.998713255,-0.0461204648,.021090759,-0.0451571345,.998007238,.0440727882,-0.0230813865,.0430636741,-0.998805642)CFrameQuest=CFrame["new"](10780.107421875,-2087.7214355469,9261.865234375)
    elseif  MyLevel>=2625 and MyLevel<=2649 then
      Mon="Coral Pirate"LevelQuest=2 NameQuest="SubmergedQuest1"NameMon="Coral Pirate"CFrameQuest=CFrame["new"](10780.107421875,-2087.7214355469,9261.865234375)CFrameMon=CFrame["new"](10713.4473,-2093.04517,9307.14844,.325602472,7.02769976e-005,.945506752,-7.02769976e-005,1,-5.01261711e-005,-0.945506752,-5.01261711e-005,.325602472)
    elseif  MyLevel>=2650 and MyLevel<=2674 then
      Mon="Sea Chanter"LevelQuest=1 NameQuest="SubmergedQuest2"NameMon="Sea Chanter"CFrameQuest=CFrame["new"](10883.587890625,-2086.1970214844,10032.196289062)CFrameMon=CFrame["new"](10647.606445312,-2077.6257324219,10079.962890625)
    elseif  MyLevel>=2675 and MyLevel<=2699 then
      Mon="High Disciple"LevelQuest=1 NameQuest="SubmergedQuest3"NameMon="High Disciple"CFrameQuest=CFrame["new"](9635.8701171875,-1992.4481201172,9614.3935546875)CFrameMon=CFrame["new"](9843.578125,-1993.4559326172,9696.48046875)
    elseif  MyLevel>=2700 then
      Mon="Grand Devotee"LevelQuest=2 NameQuest="SubmergedQuest3"NameMon="Grand Devotee"CFrameQuest=CFrame["new"](9635.8701171875,-1992.4481201172,9614.3935546875)CFrameMon=CFrame["new"](9591.0546875,-1993.4742431641,9808.705078125)
    end
  end
end)
local dz = {}
dz["listfunction"] = {}
dz["listtab"] = {}
local Rz = game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("TouchGui")
local Qz
local rz
local az
local wz = {}
local Fz = {
  ["Border Color"] = Color3["fromRGB"](0,80,180),
  ["Click Effect Color"] = Color3["fromRGB"](0,150,255),
  ["Setting Icon Color"] = Color3["fromRGB"](230,230,230),
  ["Logo Image"] = "rbxassetid://104239716435965",
  ["Search Icon Color"] = Color3["fromRGB"](255,255,255),
  ["Search Icon Highlight Color"] = Color3["fromRGB"](0,150,255),
  ["GUI Text Color"] = Color3["fromRGB"](230,230,230),
  ["Text Color"] = Color3["fromRGB"](230,230,230),
  ["Placeholder Text Color"] = Color3["fromRGB"](178,178,178),
  ["Title Text Color"] = Color3["fromRGB"](0,130,255),
  ["Background Main Color"] = Color3["fromRGB"](6,12,28),
  ["Background 1 Color"] = Color3["fromRGB"](10,20,42),
  ["Background 1 Transparency"] = .25,
  ["Background 2 Color"] = Color3["fromRGB"](16,35,60),
  ["Background 3 Color"] = Color3["fromRGB"](22,48,78),
  ["Background Image"] = "",
  ["Page Selected Color"] = Color3["fromRGB"](0,130,255),
  ["Section Text Color"] = Color3["fromRGB"](0,130,255),
  ["Section Underline Color"] = Color3["fromRGB"](0,130,255),
  ["Toggle Border Color"] = Color3["fromRGB"](0,130,255),
  ["Toggle Checked Color"] = Color3["fromRGB"](230,230,230),
  ["Toggle Desc Color"] = Color3["fromRGB"](185,185,185),
  ["Button Color"] = Color3["fromRGB"](0,100,220),
  ["Label Color"] = Color3["fromRGB"](35,35,35),
  ["Dropdown Icon Color"] = Color3["fromRGB"](230,230,230),
  ["Dropdown Selected Color"] = Color3["fromRGB"](0,130,255),
  ["Dropdown Selected Check Color"] = Color3["fromRGB"](0,100,190),
  ["Textbox Highlight Color"] = Color3["fromRGB"](0,130,255),
  ["Box Highlight Color"] = Color3["fromRGB"](0,130,255),
  ["Slider Line Color"] = Color3["fromRGB"](0,130,255),
  ["Slider Highlight Color"] = Color3["fromRGB"](0,80,190),
  ["Tween Animation 1 Speed"] = Rz and 0 or .25,
  ["Tween Animation 2 Speed"] = Rz and 0 or .5,
  ["Tween Animation 3 Speed"] = Rz and 0 or .1,
  ["Text Stroke Transparency"] = .5,
}
dz["UIColor"] = Fz
dz["UIToggled"] = false
local Mz = {}
local Kz = {}
local nz = {}
local Iz = game:GetService("TweenService")
local Wz = game:GetService("UserInputService")
local Nz = game:GetService("RunService")
local function Dz(players,localPlayer)
  local rootPart=nil local replicatedStorage=nil local playerLevel=nil local teleportService=nil players["InputBegan"]:Connect(function(players)
    if players["UserInputType"]==Enum["UserInputType"]["MouseButton1"] or players["UserInputType"]==Enum["UserInputType"]["Touch"]then
      rootPart=true playerLevel=players["Position"]teleportService=localPlayer["Position"]players["Changed"]:Connect(function()
        if players["UserInputState"]==Enum["UserInputState"]["End"]then
          rootPart=false
        end
      end
      )
    end
  end
  )players["InputChanged"]:Connect(function(players)
    if players["UserInputType"]==Enum["UserInputType"]["MouseMovement"]or players["UserInputType"]==Enum["UserInputType"]["Touch"]then
      replicatedStorage=players
    end
  end
  )Wz["InputChanged"]:Connect(function(players)
    if players==replicatedStorage and rootPart then
      local rootPart=players["Position"]-playerLevel if not djtmemay and cac then
        (Iz:Create(localPlayer,TweenInfo["new"](Rz and 0 or.35,Enum["EasingStyle"]["Linear"],Enum["EasingDirection"]["Out"]),{["Position"]=UDim2["new"](teleportService["X"]["Scale"],teleportService["X"]["Offset"]+rootPart["X"],teleportService["Y"]["Scale"],teleportService["Y"]["Offset"]+rootPart["Y"])})):Play()
      elseif  not djtmemay and not cac then
        localPlayer["Position"]=UDim2["new"](teleportService["X"]["Scale"],teleportService["X"]["Offset"]+rootPart["X"],teleportService["Y"]["Scale"],teleportService["Y"]["Offset"]+rootPart["Y"])
      end
    end
  end
  )
end
nz["Gui"]=Instance["new"]("ScreenGui")nz["Gui"]["ZIndexBehavior"]=Enum["ZIndexBehavior"]["Sibling"]nz["Gui"]["Name"]="noguchihyuga"nz["Gui"]["Enabled"]=false dz["ReadyForGuiLoaded"]=false task.spawn(function()
  repeat
    task["wait"]()
  until
  dz["ReadyForGuiLoaded"]if dz["UIToggled"]then
    nz["Gui"]["Enabled"]=true
  end
end
)nz["NotiGui"]=Instance["new"]("ScreenGui")nz["NotiGui"]["ZIndexBehavior"]=Enum["ZIndexBehavior"]["Sibling"]nz["NotiGui"]["Name"]="noguchi.hyuga Notification"nz["HideGui"]=Instance["new"]("ScreenGui")nz["HideGui"]["ZIndexBehavior"]=Enum["ZIndexBehavior"]["Sibling"]nz["HideGui"]["Name"]="noguchi.hyuga Btn"local Az=Instance["new"]("Frame")local uz=Instance["new"]("UIListLayout")Az["Name"]="NotiContainer"Az["Parent"]=nz["NotiGui"]Az["AnchorPoint"]=Vector2["new"](1,1)Az["BackgroundColor3"]=Color3["fromRGB"](230,230,230)Az["BackgroundTransparency"]=1.0 Az["Position"]=UDim2["new"](1,-5,1,-5)Az["Size"]=UDim2["new"](0,350,1,-10)uz["Name"]="NotiList"uz["Parent"]=Az uz["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]uz["VerticalAlignment"]=Enum["VerticalAlignment"]["Bottom"]uz["Padding"]=UDim["new"](0,5)nz["Gui"]["Parent"]=game["Players"]["LocalPlayer"]["PlayerGui"]nz["NotiGui"]["Parent"]=game["Players"]["LocalPlayer"]["PlayerGui"]nz["HideGui"]["Parent"]=game["Players"]["LocalPlayer"]["PlayerGui"]local gz=Instance["new"]("ImageButton",nz["HideGui"])gz["BorderSizePixel"]=0 gz["BackgroundColor3"]=Color3["fromRGB"](255,255,255)gz["AnchorPoint"]=Vector2["new"](0,1)gz["Image"]="rbxassetid://104239716435965"gz["Size"]=UDim2["new"](0,35,0,35)gz["BorderColor3"]=Color3["fromRGB"](0,0,0)gz["Position"]=UDim2["new"](.01,0,.99,0)Dz(gz,gz)gz["MouseButton1Down"]:Connect(function()
  nz["Gui"]["Enabled"]=not nz["Gui"]["Enabled"]
end
)local zz=Instance["new"]("UICorner",gz)zz["CornerRadius"]=UDim["new"](1,8)local iz=Instance["new"]("UIStroke",gz)iz["Thickness"]=.6 iz["Color"]=Color3["fromRGB"](0,255,255)function nz.Getcolor(players)
  return{math["floor"](players["r"]*255),math["floor"](players["g"]*255) math["floor"](players["b"]*255)}
end
local Uz=function(players)
  dz["TitleNameNoti"]=players["Title"]or ""local localPlayer=players["Desc"]local rootPart=players["ShowTime"]or 10 local replicatedStorage=Instance["new"]("Frame")local playerLevel=Instance["new"]("Frame")local teleportService=Instance["new"]("UICorner")local tweenService=Instance["new"]("Frame")local lighting=Instance["new"]("ImageLabel")local enemies=Instance["new"]("UICorner")local virtualInput=Instance["new"]("TextLabel")local virtualUser=Instance["new"]("Frame")local playerTeam=Instance["new"]("ImageLabel")local runService=Instance["new"]("TextButton")local stats=Instance["new"]("TextLabel")replicatedStorage["Name"]="NotiFrame"replicatedStorage["Parent"]=Az replicatedStorage["BackgroundColor3"]=Color3["fromRGB"](230,230,230)replicatedStorage["BackgroundTransparency"]=1.0 replicatedStorage["ClipsDescendants"]=true replicatedStorage["Position"]=UDim2["new"](0,0,0,0)replicatedStorage["Size"]=UDim2["new"](1,0,0,0)replicatedStorage["AutomaticSize"]=Enum["AutomaticSize"]["Y"]playerLevel["Name"]="Noticontainer"playerLevel["Parent"]=replicatedStorage playerLevel["Position"]=UDim2["new"](1,0,0,0)playerLevel["Size"]=UDim2["new"](1,0,1,6)playerLevel["AutomaticSize"]=Enum["AutomaticSize"]["Y"]playerLevel["BackgroundColor3"]=Color3["fromRGB"](48,47,55)teleportService["CornerRadius"]=UDim["new"](0,4)teleportService["Parent"]=playerLevel tweenService["Name"]="Topnoti"tweenService["Parent"]=playerLevel tweenService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)tweenService["BackgroundTransparency"]=1.0 tweenService["Position"]=UDim2["new"](0,0,0,5)tweenService["Size"]=UDim2["new"](1,0,0,25)lighting["Name"]="Ruafimg"lighting["Parent"]=tweenService lighting["BackgroundColor3"]=Color3["fromRGB"](230,230,230)lighting["BackgroundTransparency"]=1.0 lighting["Position"]=UDim2["new"](0,5,0,dz["T1"]and 5 or 0)lighting["Size"]=UDim2["new"](0,dz["T1"]and 30 or 25,0,dz["T1"]and 15 or 25)lighting["Image"]=dz["UIColor"]["Logo Image"]enemies["CornerRadius"]=UDim["new"](1,0)enemies["Name"]="RuafimgCorner"enemies["Parent"]=lighting local energyValue=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[1])local playersService=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[2])local playerGui=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[3])local localPlayerAlt=energyValue..(","..(playersService..(","..playerGui)))enemies["Text"]="<font color=\"rgb("..(v..")\"Nô Nô HUB </font> YTB Nô Nô Cloud")virtualInput["Name"]="TextLabelNoti"virtualInput["Parent"]=tweenService virtualInput["BackgroundColor3"]=Color3["fromRGB"](230,230,230)virtualInput["BackgroundTransparency"]=1.0 virtualInput["Position"]=UDim2["new"](0,dz["T1"]and 40 or 35,0,0)virtualInput["Size"]=UDim2["new"](1,dz["T1"]and-40 or-35,1,0)virtualInput["Font"]=Enum["Font"]["GothamBold"]virtualInput["TextSize"]=14.0 virtualInput["TextWrapped"]=true virtualInput["TextXAlignment"]=Enum["TextXAlignment"]["Left"]virtualInput["RichText"]=true virtualInput["TextColor3"]=dz["UIColor"]["GUI Text Color"]virtualUser["Name"]="CloseContainer"virtualUser["Parent"]=tweenService virtualUser["AnchorPoint"]=Vector2["new"](1,.5)virtualUser["BackgroundColor3"]=Color3["fromRGB"](230,230,230)virtualUser["BackgroundTransparency"]=1.0 virtualUser["Position"]=UDim2["new"](1,-4,.5,0)virtualUser["Size"]=UDim2["new"](0,22,0,22)playerTeam["Name"]="CloseImage"playerTeam["Parent"]=virtualUser playerTeam["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playerTeam["BackgroundTransparency"]=1.0 playerTeam["Size"]=UDim2["new"](1,0,1,0)playerTeam["Image"]="rbxassetid://129781592728096"playerTeam["ImageRectOffset"]=Vector2["new"](284,4)playerTeam["ImageRectSize"]=Vector2["new"](24,24)playerTeam["ImageColor3"]=dz["UIColor"]["Search Icon Color"]runService["Parent"]=virtualUser runService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)runService["BackgroundTransparency"]=1.0 runService["Size"]=UDim2["new"](1,0,1,0)runService["Font"]=Enum["Font"]["FredokaOne"]runService["Text"]="X"runService["TextColor3"]=Color3["fromRGB"](0,0,0)runService["TextSize"]=14.0 runService["FontFace"]=Font["new"]("rbxasset://fonts/families/FredokaOne.json",Enum["FontWeight"]["Bold"],Enum["FontStyle"]["Normal"])runService["TextColor3"]=Color3["new"](1,1,1)if localPlayer then
    stats["Name"]="TextColor"stats["Parent"]=playerLevel stats["BackgroundColor3"]=Color3["fromRGB"](230,230,230)stats["BackgroundTransparency"]=1.0 stats["Position"]=UDim2["new"](0,10,0,35)stats["Size"]=UDim2["new"](1,-15,0,0)stats["Font"]=Enum["Font"]["GothamBold"]stats["Text"]=localPlayer stats["TextSize"]=14.0 stats["TextXAlignment"]=Enum["TextXAlignment"]["Left"]stats["RichText"]=true stats["TextColor3"]=dz["UIColor"]["Text Color"]stats["AutomaticSize"]=Enum["AutomaticSize"]["Y"]stats["TextWrapped"]=true
  end
  local function backpack()
    (Iz:Create(playerLevel,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["Position"]=UDim2["new"](1,0,0,0)})):Play()wait(.25)replicatedStorage:Destroy()
  end
  (Iz:Create(playerLevel,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["Position"]=UDim2["new"](0,0,0,0)})):Play()runService["MouseEnter"]:Connect(function()
    (Iz:Create(playerTeam,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["ImageColor3"]=dz["UIColor"]["Search Icon Highlight Color"]})):Play()
  end
  )runService["MouseLeave"]:Connect(function()
    (Iz:Create(playerTeam,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["ImageColor3"]=dz["UIColor"]["Search Icon Color"]})):Play()
  end
  )runService["MouseButton1Click"]:Connect(function()
    wait(.25)backpack()
  end
  )task.spawn(function()
    wait(rootPart)backpack()
  end
  )
end
function Kz.CreateNoti(players,localPlayer)
  if not dz["Config"]or localPlayer then
    local localPlayer,rootPart=pcall(function()
      Uz(players)
    end
    )if rootPart then
      rconsoleprint(rootPart)
    end
  end
end
function Kz.CreateMain(players)
  local localPlayer=""dz["MainDesc"]=players["Desc"]or ""local rootPart=false cac=false local replicatedStorage=Instance["new"]("Frame")local playerLevel=Instance["new"]("ImageLabel")local teleportService=Instance["new"]("UICorner")local tweenService=Instance["new"]("Frame")local lighting=Instance["new"]("ImageLabel")local enemies=Instance["new"]("TextLabel")local virtualInput=Instance["new"]("Frame")local virtualUser=Instance["new"]("UICorner")local playerTeam=Instance["new"]("ScrollingFrame")local runService=Instance["new"]("UIListLayout")local stats=Instance["new"]("TextLabel")local energyValue=Instance["new"]("Frame")local playersService=Instance["new"]("UIPageLayout")local playerGui=Instance["new"]("Frame")local localPlayerAlt=Instance["new"]("Frame")local backpack replicatedStorage["Name"]="Main"replicatedStorage["Parent"]=nz["Gui"]replicatedStorage["BackgroundColor3"]=Color3["fromRGB"](42,42,42)replicatedStorage["BackgroundTransparency"]=1.0 replicatedStorage["Position"]=UDim2["new"](.5,0,.5,0)replicatedStorage["AnchorPoint"]=Vector2["new"](.5,.5)replicatedStorage["Size"]=UDim2["new"](0,629,0,359)Dz(replicatedStorage,replicatedStorage)playerLevel["Name"]="maingui"playerLevel["Parent"]=replicatedStorage playerLevel["AnchorPoint"]=Vector2["new"](.5,.5)playerLevel["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playerLevel["BackgroundTransparency"]=1.0 playerLevel["Position"]=UDim2["new"](.5,0,.5,0)playerLevel["Selectable"]=true playerLevel["Size"]=UDim2["new"](1,30,1,30)playerLevel["Image"]="rbxassetid://129781592728096"playerLevel["ScaleType"]=Enum["ScaleType"]["Slice"]playerLevel["SliceCenter"]=Rect["new"](15,15,175,175)playerLevel["SliceScale"]=1.3 playerLevel["ImageColor3"]=dz["UIColor"]["Border Color"]playerLevel["ImageTransparency"]=1 playerLevel["ImageColor3"]=dz["UIColor"]["Title Text Color"]local character=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[1])local U=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[2])local C=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[3])local v=character..(","..(U..(","..C)))enemies["Text"]="<font color=\"rgb("..(v..")\">Nô Nô HUB </font> YTB Nô Nô Cloud")backpack=Instance["new"]("ImageLabel")backpack["Name"]="MainContainer"backpack["Parent"]=replicatedStorage backpack["BackgroundColor3"]=dz["UIColor"]["Background Main Color"]backpack["Size"]=UDim2["new"](1,0,1,0)backpack["Transparency"]=.8 local m=Instance["new"]("UIStroke",backpack)m["Thickness"]=2 m["Color"]=Color3["fromRGB"](255,255,255)m["Transparency"]=.8 dz["ReadyForGuiLoaded"]=true local y=Instance["new"]("ImageLabel",backpack)y["Image"]="rbxassetid://131407996827614"y["BackgroundTransparency"]=1 y["ImageTransparency"]=.8 y["Position"]=UDim2["new"](0,-50,0,-80)y["Size"]=UDim2["new"](1,100,1,157)y["ZIndex"]=0 teleportService["CornerRadius"]=UDim["new"](0,4)teleportService["Name"]="MainCorner"teleportService["Parent"]=backpack playerGui["Name"]="Concacontainer"playerGui["Parent"]=backpack playerGui["BackgroundColor3"]=Color3["fromRGB"](255,255,255)playerGui["BackgroundTransparency"]=1.0 playerGui["ClipsDescendants"]=true playerGui["Position"]=UDim2["new"](0,0,0,30)playerGui["Size"]=UDim2["new"](1,0,1,-30)localPlayerAlt["Name"]="Concacmain"localPlayerAlt["Parent"]=playerGui localPlayerAlt["BackgroundColor3"]=Color3["fromRGB"](255,255,255)localPlayerAlt["BackgroundTransparency"]=1.0 localPlayerAlt["Selectable"]=true localPlayerAlt["Size"]=UDim2["new"](1,0,1,0)tweenService["Name"]="TopMain"tweenService["Parent"]=backpack tweenService["BackgroundColor3"]=Color3["fromRGB"](255,255,255)tweenService["BackgroundTransparency"]=1.0 tweenService["Size"]=UDim2["new"](1,0,0,25)lighting["Name"]="Ruafimg"lighting["Parent"]=tweenService lighting["BackgroundColor3"]=Color3["fromRGB"](255,255,255)lighting["BackgroundTransparency"]=1.0 lighting["Position"]=UDim2["new"](0,5,0,dz["T1"]and 5 or 0)lighting["Size"]=UDim2["new"](0,dz["T1"]and 30 or 25,0,dz["T1"]and 15 or 25)lighting["Image"]="rbxassetid://11176073582"enemies["Name"]="TextLabelMain"enemies["Parent"]=tweenService enemies["BackgroundColor3"]=Color3["fromRGB"](230,230,230)enemies["BackgroundTransparency"]=1.0 enemies["Position"]=UDim2["new"](0,dz["T1"]and 40 or 35,0,0)enemies["Size"]=UDim2["new"](1,dz["T1"]and-40 or-35,1,0)enemies["Font"]=Enum["Font"]["GothamBold"]enemies["RichText"]=true enemies["TextSize"]=16.0 enemies["TextWrapped"]=true enemies["TextXAlignment"]=Enum["TextXAlignment"]["Center"]enemies["TextColor3"]=dz["UIColor"]["GUI Text Color"]local b=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[1])local c=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[2])local H=tostring((nz["Getcolor"](dz["UIColor"]["Title Text Color"]))[3])local S=b..(","..(c..(","..H)))enemies["Text"]="<font color=\"rgb("..(S..")\">Nô Nô HUB </font>YTB Nô Nô Cloud")virtualInput["Name"]="Background1"virtualInput["Parent"]=localPlayerAlt virtualInput["Position"]=UDim2["new"](0,5,0,0)virtualInput["Size"]=UDim2["new"](0,160,0,325)virtualInput["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]virtualInput["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]local o=Instance["new"]("UIGradient",virtualInput)o["Transparency"]=NumberSequence["new"]({NumberSequenceKeypoint["new"](.0,.1),NumberSequenceKeypoint["new"](1.0,.1)})o["Name"]="thua"o["Color"]=ColorSequence["new"]({ColorSequenceKeypoint["new"](.0,Color3["fromRGB"](22,22,22))
  ColorSequenceKeypoint["new"](1.0,Color3["fromRGB"](44,44,44))})virtualUser["CornerRadius"]=UDim["new"](0,4)virtualUser["Parent"]=virtualInput playerTeam["Name"]="ControlList"playerTeam["Parent"]=virtualInput playerTeam["Active"]=true playerTeam["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playerTeam["BackgroundTransparency"]=1.0 playerTeam["BorderColor3"]=Color3["fromRGB"](27,42,53)playerTeam["BorderSizePixel"]=0 playerTeam["Position"]=UDim2["new"](0,0,0,30)playerTeam["Size"]=UDim2["new"](1,-5,1,-30)playerTeam["BottomImage"]="rbxasset://textures/ui/Scroll/scroll-middle.png"playerTeam["CanvasSize"]=UDim2["new"](0,0,0,0)playerTeam["ScrollBarThickness"]=5 playerTeam["TopImage"]="rbxasset://textures/ui/Scroll/scroll-middle.png"runService["Parent"]=playerTeam runService["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]runService["Padding"]=UDim["new"](0,5)stats["Name"]="GUITextColor"stats["Parent"]=virtualInput stats["BackgroundColor3"]=Color3["fromRGB"](230,230,230)stats["BackgroundTransparency"]=1.0 stats["Position"]=UDim2["new"](0,5,0,0)stats["Size"]=UDim2["new"](1,0,0,25)stats["Font"]=Enum["Font"]["GothamBold"]stats["Text"]=localPlayer stats["TextSize"]=14.0 stats["TextXAlignment"]=Enum["TextXAlignment"]["Center"]stats["TextColor3"]=dz["UIColor"]["GUI Text Color"]energyValue["Name"]="MainPage"energyValue["Parent"]=localPlayerAlt energyValue["BackgroundColor3"]=Color3["fromRGB"](230,230,230)energyValue["BackgroundTransparency"]=1.0 energyValue["ClipsDescendants"]=true energyValue["Position"]=UDim2["new"](0,170,0,0)energyValue["Size"]=UDim2["new"](0,453,0,325)playersService["Name"]="UIPage"playersService["Parent"]=energyValue playersService["FillDirection"]=Enum["FillDirection"]["Vertical"]playersService["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]playersService["EasingDirection"]=Enum["EasingDirection"]["InOut"]playersService["EasingStyle"]=Enum["EasingStyle"]["Quart"]playersService["Padding"]=UDim["new"](0,10)playersService["TweenTime"]=dz["UIColor"]["Tween Animation 1 Speed"]
  (runService:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()
    playerTeam["CanvasSize"]=UDim2["new"](0,0,0,runService["AbsoluteContentSize"]["Y"]+5)
  end
  )local Z=Instance["new"]("Frame")local T=Instance["new"]("UICorner")local k=Instance["new"]("Frame")local L=Instance["new"]("ImageLabel")local P=Instance["new"]("TextButton")local j=Instance["new"]("TextBox")Z["Name"]="Page Search"Z["Parent"]=virtualInput Z["AnchorPoint"]=Vector2["new"](1,0)Z["BackgroundColor3"]=Color3["fromRGB"](37,36,44)Z["Position"]=UDim2["new"](1,-5,0,5)Z["Size"]=UDim2["new"](0,20,0,20)Z["ClipsDescendants"]=true T["CornerRadius"]=UDim["new"](0,2)T["Name"]="PageSearchCorner"T["Parent"]=Z k["Name"]="SearchFrame"k["Parent"]=Z k["BackgroundColor3"]=Color3["fromRGB"](255,255,255)k["BackgroundTransparency"]=1.0 k["Size"]=UDim2["new"](0,20,0,20)L["Name"]="SearchIcon"L["Parent"]=k L["AnchorPoint"]=Vector2["new"](.5,.5)L["BackgroundColor3"]=Color3["fromRGB"](255,255,255)L["BackgroundTransparency"]=1.0 L["Position"]=UDim2["new"](.5,0,.5,0)L["Size"]=UDim2["new"](0,16,0,16)L["Image"]="rbxassetid://8154282545"L["ImageColor3"]=dz["UIColor"]["Search Icon Color"]P["Name"]="Search Button"P["Parent"]=k P["BackgroundColor3"]=Color3["fromRGB"](255,255,255)P["BackgroundTransparency"]=1.0 P["Size"]=UDim2["new"](1,0,1,0)P["Font"]=Enum["Font"]["SourceSans"]P["Text"]=""P["TextColor3"]=Color3["fromRGB"](0,0,0)P["TextSize"]=14.0 j["Name"]="Search Box"j["Parent"]=Z j["BackgroundColor3"]=Color3["fromRGB"](255,255,255)j["BackgroundTransparency"]=1.0 j["Position"]=UDim2["new"](0,30,0,0)j["Size"]=UDim2["new"](1,-30,1,0)j["Font"]=Enum["Font"]["GothamBold"]j["Text"]=""j["TextSize"]=14.0 j["TextXAlignment"]=Enum["TextXAlignment"]["Left"]j["PlaceholderText"]="Search section or function"j["PlaceholderColor3"]=dz["UIColor"]["Placeholder Text Color"]j["TextColor3"]=dz["UIColor"]["Text Color"]local G=true P["MouseEnter"]:Connect(function()
    (Iz:Create(L,TweenInfo["new"](dz["UIColor"]["Tween Animation 3 Speed"]),{["ImageColor3"]=dz["UIColor"]["Search Icon Highlight Color"]})):Play()
  end
  )P["MouseLeave"]:Connect(function()
    (Iz:Create(L,TweenInfo["new"](dz["UIColor"]["Tween Animation 3 Speed"]),{["ImageColor3"]=dz["UIColor"]["Search Icon Color"]})):Play()
  end
  )P["MouseButton1Click"]:Connect(function()
    G=not G local players=G and UDim2["new"](0,150,0,20)or UDim2["new"](0,20,0,20)
    (game["TweenService"]:Create(Z,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Size"]=players})):Play()
  end
  )local q=G and UDim2["new"](0,150,0,20)or UDim2["new"](0,20,0,20)
  (game["TweenService"]:Create(Z,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Size"]=q})):Play()local V={}local t=-1 local X=-1 local h=1 function V.T(players)
    local localPlayer=tostring(players["Page_Name"])local rootPart=tostring(players["Page_Title"])X=X+1 t=t+1 local replicatedStorage=Instance["new"]("Frame")local playerLevel=Instance["new"]("Frame")local teleportService=Instance["new"]("UICorner")local tweenService=Instance["new"]("Frame")local lighting=Instance["new"]("Frame")local enemies=Instance["new"]("UICorner")local virtualInput=Instance["new"]("Frame")local virtualUser=Instance["new"]("TextLabel")local runService=Instance["new"]("TextButton")replicatedStorage["Name"]=localPlayer.."_Control"replicatedStorage["Parent"]=playerTeam replicatedStorage["BackgroundColor3"]=Color3["fromRGB"](230,230,230)replicatedStorage["BackgroundTransparency"]=1.0 replicatedStorage["Size"]=UDim2["new"](1,-10,0,25)replicatedStorage["LayoutOrder"]=t playerLevel["Parent"]=replicatedStorage playerLevel["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playerLevel["BackgroundTransparency"]=1.0 playerLevel["Position"]=UDim2["new"](0,5,0,0)playerLevel["Size"]=UDim2["new"](1,-5,1,0)teleportService["CornerRadius"]=UDim["new"](0,4)teleportService["Name"]="TabNameCorner"teleportService["Parent"]=playerLevel tweenService["Name"]="Line"tweenService["Parent"]=playerLevel tweenService["AnchorPoint"]=Vector2["new"](0,.5)tweenService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)tweenService["BackgroundTransparency"]=1.0 tweenService["Position"]=UDim2["new"](0,0,.5,0)tweenService["Size"]=UDim2["new"](0,14,1,0)lighting["Name"]="PageInLine"lighting["Parent"]=tweenService lighting["AnchorPoint"]=Vector2["new"](.5,.5)lighting["BorderSizePixel"]=0 lighting["Position"]=UDim2["new"](.5,0,.5,0)lighting["Size"]=UDim2["new"](1,-10,1,-10)lighting["BackgroundColor3"]=dz["UIColor"]["Page Selected Color"]lighting["BackgroundTransparency"]=1.0 enemies["Name"]="LineCorner"enemies["Parent"]=lighting virtualInput["Name"]="TabTitleContainer"virtualInput["Parent"]=playerLevel virtualInput["BackgroundColor3"]=Color3["fromRGB"](230,230,230)virtualInput["BackgroundTransparency"]=1.0 virtualInput["Position"]=UDim2["new"](0,15,0,0)virtualInput["Size"]=UDim2["new"](1,-15,1,0)virtualUser["Name"]="GUITextColor"virtualUser["Parent"]=virtualInput virtualUser["BackgroundColor3"]=Color3["fromRGB"](230,230,230)virtualUser["BackgroundTransparency"]=1.0 virtualUser["Size"]=UDim2["new"](1,0,1,0)virtualUser["Font"]=Enum["Font"]["GothamBold"]virtualUser["Text"]=localPlayer virtualUser["TextColor3"]=Color3["fromRGB"](230,230,230)virtualUser["TextSize"]=14.0 virtualUser["TextXAlignment"]=Enum["TextXAlignment"]["Left"]virtualUser["TextColor3"]=dz["UIColor"]["GUI Text Color"]runService["Name"]="PageButton"runService["Parent"]=replicatedStorage runService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)runService["BackgroundTransparency"]=1.0 runService["Size"]=UDim2["new"](1,0,1,0)runService["Font"]=Enum["Font"]["SourceSans"]runService["Text"]=""runService["TextColor3"]=Color3["fromRGB"](0,0,0)runService["TextSize"]=14.0 local stats=Instance["new"]("Frame")local playerGui=Instance["new"]("UICorner")local localPlayerAlt=Instance["new"]("TextLabel")local backpack=Instance["new"]("ScrollingFrame")local character=Instance["new"]("UIListLayout")local U=h h=h+1 stats["Name"]="Page"..U stats["Parent"]=energyValue stats["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]stats["Position"]=UDim2["new"](0,190,0,30)stats["Size"]=UDim2["new"](0,453,0,325)stats["LayoutOrder"]=X stats["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]playerGui["CornerRadius"]=UDim["new"](0,4)playerGui["Parent"]=stats localPlayerAlt["Name"]="GUITextColor"localPlayerAlt["Parent"]=stats localPlayerAlt["BackgroundColor3"]=Color3["fromRGB"](230,230,230)localPlayerAlt["BackgroundTransparency"]=1.0 localPlayerAlt["Position"]=UDim2["new"](0,5,0,0)localPlayerAlt["Size"]=UDim2["new"](1,0,0,25)localPlayerAlt["Font"]=Enum["Font"]["GothamBold"]localPlayerAlt["Text"]=rootPart localPlayerAlt["TextSize"]=16.0 localPlayerAlt["TextXAlignment"]=Enum["TextXAlignment"]["Left"]localPlayerAlt["TextColor3"]=dz["UIColor"]["GUI Text Color"]backpack["Name"]="PageList"backpack["Parent"]=stats backpack["Active"]=true backpack["BackgroundColor3"]=Color3["fromRGB"](230,230,230)backpack["BackgroundTransparency"]=1.0 backpack["BorderColor3"]=Color3["fromRGB"](27,42,53)backpack["BorderSizePixel"]=0 backpack["Position"]=UDim2["new"](0,5,0,30)backpack["Size"]=UDim2["new"](1,-10,1,-30)backpack["BottomImage"]="rbxasset://textures/ui/Scroll/scroll-middle.png"backpack["ScrollBarThickness"]=5 backpack["TopImage"]="rbxasset://textures/ui/Scroll/scroll-middle.png"backpack["ScrollingEnabled"]=true backpack["VerticalScrollBarInset"]=Enum["ScrollBarInset"]["Always"]character["Name"]="Pagelistlayout"character["Parent"]=backpack character["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]character["Padding"]=UDim["new"](0,5)
    (character:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()
      backpack["CanvasSize"]=UDim2["new"](0,0,0,character["AbsoluteContentSize"]["Y"])
    end
    )local C=Instance["new"]("Frame")local v=Instance["new"]("UICorner")local m=Instance["new"]("Frame")local y=Instance["new"]("ImageLabel")local b=Instance["new"]("TextButton")local c=Instance["new"]("TextBox")C["Name"]="Page Search"C["Parent"]=stats C["AnchorPoint"]=Vector2["new"](1,0)C["BackgroundColor3"]=Color3["fromRGB"](37,36,44)C["Position"]=UDim2["new"](1,-5,0,5)C["Size"]=UDim2["new"](0,20,0,20)C["ClipsDescendants"]=true v["CornerRadius"]=UDim["new"](0,2)v["Name"]="PageSearchCorner"v["Parent"]=C m["Name"]="SearchFrame"m["Parent"]=C m["BackgroundColor3"]=Color3["fromRGB"](255,255,255)m["BackgroundTransparency"]=1.0 m["Size"]=UDim2["new"](0,20,0,20)y["Name"]="SearchIcon"y["Parent"]=m y["AnchorPoint"]=Vector2["new"](.5,.5)y["BackgroundColor3"]=Color3["fromRGB"](255,255,255)y["BackgroundTransparency"]=1.0 y["Position"]=UDim2["new"](.5,0,.5,0)y["Size"]=UDim2["new"](0,16,0,16)y["Image"]="rbxassetid://8154282545"y["ImageColor3"]=dz["UIColor"]["Search Icon Color"]b["Name"]="Search Button"b["Parent"]=m b["BackgroundColor3"]=Color3["fromRGB"](255,255,255)b["BackgroundTransparency"]=1.0 b["Size"]=UDim2["new"](1,0,1,0)b["Font"]=Enum["Font"]["SourceSans"]b["Text"]=""b["TextColor3"]=Color3["fromRGB"](0,0,0)b["TextSize"]=14.0 c["Name"]="Search Box"c["Parent"]=C c["BackgroundColor3"]=Color3["fromRGB"](255,255,255)c["BackgroundTransparency"]=1.0 c["Position"]=UDim2["new"](0,30,0,0)c["Size"]=UDim2["new"](1,-30,1,0)c["Font"]=Enum["Font"]["GothamBold"]c["Text"]=""c["TextSize"]=14.0 c["TextXAlignment"]=Enum["TextXAlignment"]["Left"]c["PlaceholderText"]="Search section or function"c["PlaceholderColor3"]=dz["UIColor"]["Placeholder Text Color"]c["TextColor3"]=dz["UIColor"]["Text Color"]local H=false b["MouseEnter"]:Connect(function()
      (Iz:Create(y,TweenInfo["new"](dz["UIColor"]["Tween Animation 3 Speed"]),{["ImageColor3"]=dz["UIColor"]["Search Icon Highlight Color"]})):Play()
    end
    )b["MouseLeave"]:Connect(function()
      (Iz:Create(y,TweenInfo["new"](dz["UIColor"]["Tween Animation 3 Speed"]),{["ImageColor3"]=dz["UIColor"]["Search Icon Color"]})):Play()
    end
    )b["MouseButton1Click"]:Connect(function()
      H=not H local players=H and UDim2["new"](0,150,0,20)or UDim2["new"](0,20,0,20)
      (game["TweenService"]:Create(C,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Size"]=players})):Play()
    end
    )
    (c:GetPropertyChangedSignal("Text")):Connect(function()
      local players=c["Text"]if players==""then
        for players,localPlayer in pairs(playerTeam:GetChildren())do
          if not localPlayer:IsA("UIListLayout")then
            localPlayer["Visible"]=true
          end
        end
        for players,localPlayer in pairs(energyValue:GetChildren())do
          if not localPlayer:IsA("UIPageLayout")and not localPlayer:IsA("UICorner")then
            localPlayer["Visible"]=true
          end
        end
        for players,localPlayer in pairs(wz)do
          players["Visible"]=true for players,localPlayer in pairs(localPlayer)do
            localPlayer["Visible"]=true
          end
        end
      else
        for players,localPlayer in pairs(wz)do
          players["Visible"]=false for players,localPlayer in pairs(localPlayer)do
            localPlayer["Visible"]=false
          end
        end
        for players,localPlayer in pairs(playerTeam:GetChildren())do
          if not localPlayer:IsA("UIListLayout")then
            localPlayer["Visible"]=false
          end
        end
        for players,localPlayer in pairs(energyValue:GetChildren())do
          if not localPlayer:IsA("UIPageLayout")and not localPlayer:IsA("UICorner")then
            localPlayer["Visible"]=false
          end
        end
        for localPlayer,rootPart in pairs(dz["listfunction"])do
          for rootPart,replicatedStorage in pairs(rootPart)do
            if string["find"](replicatedStorage["Name"]:lower(),players:lower())then
              if replicatedStorage["Call"]then
                replicatedStorage["Call"]()
              end
              local players=dz["listtab"][localPlayer]if players then
                players[1]["Visible"]=true players[2]["Visible"]=true players[3]["Visible"]=true local localPlayer=dz["UIColor"]["Tween Animation 1 Speed"]playersService["TweenTime"]=0 playersService:JumpTo(players[2])task["wait"]()playersService["TweenTime"]=localPlayer
              end
            end
          end
        end
      end
    end
    )function visiblealloff()
      for players,localPlayer in pairs(playerTeam:GetChildren())do
        if not localPlayer:IsA("UIListLayout")then
          localPlayer["Visible"]=false
        end
      end
      for players,localPlayer in pairs(energyValue:GetChildren())do
        if not localPlayer:IsA("UIPageLayout")and not localPlayer:IsA("UICorner")then
          localPlayer["Visible"]=false
        end
      end
    end
    o=visiblealloff for players,localPlayer in pairs(playerTeam:GetChildren())do
      if not localPlayer:IsA("UIListLayout")then
        if players==2 then
          localPlayer["Frame"]["Line"]["PageInLine"]["BackgroundTransparency"]=0
        end
      end
    end
    runService["MouseButton1Click"]:Connect(function()
      if tostring(playersService["CurrentPage"])==stats["Name"]then
        return
      end
      for players,localPlayer in pairs(energyValue:GetChildren())do
        if not localPlayer:IsA("UIPageLayout")and not localPlayer:IsA("UICorner")then
          localPlayer["Visible"]=false
        end
      end
      stats["Visible"]=true playersService:JumpTo(stats)for players,rootPart in next,playerTeam:GetChildren()do
        if not rootPart:IsA("UIListLayout")then
          if rootPart["Name"]==localPlayer.."_Control"then
            (Iz:Create(rootPart["Frame"]["Line"]["PageInLine"],TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=0})):Play()
          else
            (Iz:Create(rootPart["Frame"]["Line"]["PageInLine"],TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=1})):Play()
          end
        end
      end
    end
    )local S={}function S.CreateSection(players,localPlayer,rootPart,playerLevel)
      local teleportService=localPlayer or false local tweenService=Instance["new"]("Frame")local lighting=Instance["new"]("UICorner")local enemies=Instance["new"]("Frame")local virtualInput=Instance["new"]("TextLabel")local virtualUser=Instance["new"]("Frame")local playerTeam=Instance["new"]("UIGradient")local runService=Instance["new"]("UIListLayout")dz["listtab"][tweenService]={[1]=replicatedStorage
      [2]=stats,[3]=tweenService}dz["listfunction"][tweenService]={}tweenService["Name"]=players.."_Dot"tweenService["Parent"]=backpack tweenService["Size"]=UDim2["new"](1,-5,0,30)tweenService["BackgroundColor3"]=dz["UIColor"]["Background 3 Color"]tweenService["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]tweenService["ClipsDescendants"]=true wz[tweenService]={}lighting["CornerRadius"]=UDim["new"](0,4)lighting["Parent"]=tweenService local energyValue=Instance["new"]("UIGradient",tweenService)energyValue["Name"]="thua2"energyValue["Color"]=ColorSequence["new"]({ColorSequenceKeypoint["new"](.0,Color3["fromRGB"](22,22,22)),ColorSequenceKeypoint["new"](1.0,Color3["fromRGB"](44,44,44))})enemies["Name"]="Topsec"enemies["Parent"]=tweenService enemies["BackgroundColor3"]=Color3["fromRGB"](230,230,230)enemies["BackgroundTransparency"]=1.0 enemies["Size"]=UDim2["new"](0,415,0,30)virtualInput["Name"]="Sectiontitle"virtualInput["Parent"]=enemies virtualInput["BackgroundColor3"]=Color3["fromRGB"](230,230,230)virtualInput["BackgroundTransparency"]=1.0 virtualInput["Size"]=UDim2["new"](1,0,1,0)virtualInput["Font"]=Enum["Font"]["GothamBold"]virtualInput["Text"]=players virtualInput["TextSize"]=14.0 virtualInput["TextColor3"]=playerLevel and playerLevel or dz["UIColor"]["Section Text Color"]virtualUser["Name"]="Linesec"virtualUser["Parent"]=enemies virtualUser["AnchorPoint"]=Vector2["new"](.5,1)virtualUser["BorderSizePixel"]=0 virtualUser["Position"]=UDim2["new"](.5,0,1,-2)virtualUser["Size"]=UDim2["new"](1,-10,0,2)virtualUser["BackgroundColor3"]=playerLevel and playerLevel or dz["UIColor"]["Section Underline Color"]local playersService local playerGui=false if teleportService then
        local players=Instance["new"]("Frame")local localPlayer=Instance["new"]("UICorner")local rootPart=Instance["new"]("ImageButton")local replicatedStorage=Instance["new"]("ImageButton")local playerLevel=Instance["new"]("TextButton")playerLevel["Name"]="VisibilityButton"playerLevel["Parent"]=enemies playerLevel["AnchorPoint"]=Vector2["new"](1,.5)playerLevel["BackgroundColor3"]=Color3["fromRGB"](255,255,255)playerLevel["BackgroundTransparency"]=1.0 playerLevel["BorderColor3"]=Color3["fromRGB"](0,0,0)playerLevel["BorderSizePixel"]=0 playerLevel["Font"]=Enum["Font"]["SourceSans"]playerLevel["Text"]=""playerLevel["TextColor3"]=Color3["fromRGB"](0,0,0)playerLevel["TextSize"]=14.0 playerLevel["ZIndex"]=2 playerLevel["Position"]=UDim2["new"](1,-5,.5,0)playerLevel["Size"]=UDim2["new"](0,20,0,20)players["Name"]="VisibilitySectionFrame"players["Parent"]=enemies players["AnchorPoint"]=Vector2["new"](1,.5)players["BackgroundColor3"]=Color3["fromRGB"](30,30,30)players["BorderColor3"]=Color3["fromRGB"](0,0,0)players["BorderSizePixel"]=0 players["Position"]=UDim2["new"](1,-5,.5,0)players["Size"]=UDim2["new"](0,20,0,20)localPlayer["CornerRadius"]=UDim["new"](0,4)localPlayer["Name"]="VisibilitySectionFrameCorner"localPlayer["Parent"]=players rootPart["Name"]="visibility"rootPart["Parent"]=players rootPart["AnchorPoint"]=Vector2["new"](.5,.5)rootPart["BackgroundTransparency"]=1.0 rootPart["LayoutOrder"]=4 rootPart["Position"]=UDim2["new"](.5,0,.5,0)rootPart["Size"]=UDim2["new"](1,-4,1,-4)rootPart["ZIndex"]=2 rootPart["Image"]="rbxassetid://3926307971"rootPart["ImageRectOffset"]=Vector2["new"](84,44)rootPart["ImageRectSize"]=Vector2["new"](36,36)rootPart["ImageTransparency"]=1 replicatedStorage["Name"]="visibility_off"replicatedStorage["Parent"]=players replicatedStorage["AnchorPoint"]=Vector2["new"](.5,.5)replicatedStorage["BackgroundTransparency"]=1.0 replicatedStorage["LayoutOrder"]=4 replicatedStorage["Position"]=UDim2["new"](.5,0,.5,0)replicatedStorage["Size"]=UDim2["new"](1,-4,1,-4)replicatedStorage["ZIndex"]=2 replicatedStorage["Image"]="rbxassetid://3926307971"replicatedStorage["ImageRectOffset"]=Vector2["new"](564,44)replicatedStorage["ImageRectSize"]=Vector2["new"](36,36)replicatedStorage["ImageTransparency"]=0 playerLevel["MouseButton1Down"]:Connect(function()
          playerGui=not playerGui
          (Iz:Create(rootPart,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]/2),{["ImageTransparency"]=playerGui and 0 or 1})):Play()wait(dz["UIColor"]["Tween Animation 1 Speed"]/4)
          (Iz:Create(replicatedStorage,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]/2),{["ImageTransparency"]=playerGui and 1 or 0})):Play()
          (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["Size"]=UDim2["new"](1,-5,0,playerGui and playersService or 30)})):Play()
        end
        )
      end
      if rootPart then
        local players=Instance["new"]("Frame")players["Name"]="SectionGap"players["Parent"]=backpack players["Size"]=UDim2["new"](1,-5,0,30)players["ClipsDescendants"]=true players["Transparency"]=1
      end
      playerTeam["Transparency"]=NumberSequence["new"]({NumberSequenceKeypoint["new"](.0,1.0),NumberSequenceKeypoint["new"](.5,.0)
      NumberSequenceKeypoint["new"](.51,.02)
      NumberSequenceKeypoint["new"](1.0,1.0)})playerTeam["Parent"]=virtualUser runService["Name"]="SectionList"runService["Parent"]=tweenService runService["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]runService["Padding"]=UDim["new"](0,5)local localPlayerAlt=-1
      (runService:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()
        local players=runService["AbsoluteContentSize"]["Y"]+5 if players==localPlayerAlt then
          return
        end
        localPlayerAlt=players if not teleportService then
          tweenService["Size"]=UDim2["new"](1,-5,0,players)
        end
        playersService=players if playerGui then
          (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["Size"]=UDim2["new"](1,-5,0,playersService)})):Play()
        end
      end
      )local character={}function character.CreateToggle(players,localPlayer)
        local rootPart=tostring(players["Title"]or "")local replicatedStorage=players["Description"]local playerLevel=players["Default"]if playerLevel==nil then
          playerLevel=false
        end
        local teleportService=players["Callback"]or function()
        end
        local lighting=Instance["new"]("Frame")local enemies=Instance["new"]("Frame")local virtualInput=Instance["new"]("ImageLabel")local virtualUser=Instance["new"]("ImageLabel")local playerTeam=Instance["new"]("TextLabel")local runService=Instance["new"]("TextLabel")local stats=Instance["new"]("Frame")local energyValue=Instance["new"]("UICorner")local playersService=Instance["new"]("TextButton")local playerGui=Instance["new"]("UIListLayout")lighting["Name"]="ToggleFrame"lighting["Parent"]=tweenService lighting["BackgroundColor3"]=Color3["fromRGB"](230,230,230)lighting["BackgroundTransparency"]=1.0 lighting["Position"]=UDim2["new"](0,0,.300000012,0)lighting["Size"]=UDim2["new"](1,0,0,0)lighting["AutomaticSize"]=Enum["AutomaticSize"]["Y"]enemies["Name"]="TogFrame1"enemies["Parent"]=lighting enemies["AnchorPoint"]=Vector2["new"](.5,.5)enemies["BackgroundColor3"]=Color3["fromRGB"](230,230,230)enemies["BackgroundTransparency"]=1.0 enemies["Position"]=UDim2["new"](.5,0,.5,0)enemies["Size"]=UDim2["new"](1,-10,0,0)enemies["AutomaticSize"]=Enum["AutomaticSize"]["Y"]virtualInput["Name"]="checkbox"virtualInput["Parent"]=enemies virtualInput["AnchorPoint"]=Vector2["new"](1,.5)virtualInput["BackgroundColor3"]=Color3["fromRGB"](230,230,230)virtualInput["BackgroundTransparency"]=1.0 virtualInput["Position"]=UDim2["new"](1,-5,.5,3)virtualInput["Size"]=UDim2["new"](0,25,0,25)virtualInput["Image"]="rbxassetid://4552505888"virtualInput["ImageColor3"]=dz["UIColor"]["Toggle Border Color"]virtualUser["Name"]="check"virtualUser["Parent"]=virtualInput virtualUser["AnchorPoint"]=Vector2["new"](.5,.5)virtualUser["BackgroundColor3"]=Color3["fromRGB"](0,255,255)virtualUser["BackgroundTransparency"]=0 virtualUser["Position"]=UDim2["new"](.5,0,.5,0)virtualUser["Size"]=UDim2["new"](0,0,0,0)virtualUser["Image"]=""virtualUser["ImageColor3"]=dz["UIColor"]["Toggle Checked Color"]local localPlayerAlt=5 if replicatedStorage then
          localPlayerAlt=0 playerTeam["Name"]="ToggleDesc"playerTeam["Parent"]=enemies playerTeam["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playerTeam["BackgroundTransparency"]=1.0 playerTeam["Position"]=UDim2["new"](0,15,0,20)playerTeam["Size"]=UDim2["new"](1,-50,0,0)playerTeam["Font"]=Enum["Font"]["GothamBlack"]playerTeam["Text"]=replicatedStorage playerTeam["TextSize"]=13.0 playerTeam["TextWrapped"]=true playerTeam["TextXAlignment"]=Enum["TextXAlignment"]["Left"]playerTeam["RichText"]=true playerTeam["AutomaticSize"]=Enum["AutomaticSize"]["Y"]playerTeam["TextColor3"]=dz["UIColor"]["Toggle Desc Color"]
        else
          playerTeam["Text"]=""
        end
        runService["Name"]="TextColor"runService["Parent"]=enemies runService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)runService["BackgroundTransparency"]=1.0 runService["Position"]=UDim2["new"](0,10,0,localPlayerAlt)runService["Size"]=UDim2["new"](1,-10,0,20)runService["Font"]=Enum["Font"]["GothamBlack"]runService["Text"]=rootPart runService["TextSize"]=14.0 runService["TextXAlignment"]=Enum["TextXAlignment"]["Left"]runService["TextYAlignment"]=Enum["TextYAlignment"]["Center"]runService["RichText"]=true runService["AutomaticSize"]=Enum["AutomaticSize"]["Y"]runService["TextColor3"]=dz["UIColor"]["Text Color"]stats["Name"]="Background1"stats["Parent"]=enemies stats["Size"]=UDim2["new"](1,0,1,6)stats["ZIndex"]=0 stats["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]stats["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]energyValue["CornerRadius"]=UDim["new"](0,4)energyValue["Name"]="ToggleCorner"energyValue["Parent"]=stats playersService["Name"]="ToggleButton"playersService["Parent"]=enemies playersService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playersService["BackgroundTransparency"]=1.0 playersService["AnchorPoint"]=Vector2["new"](1,.5)playersService["Size"]=UDim2["new"](0,25,0,25)playersService["Position"]=UDim2["new"](1,-5,.5,3)playersService["Font"]=Enum["Font"]["SourceSans"]playersService["Text"]=""playersService["TextColor3"]=Color3["fromRGB"](0,0,0)playersService["TextSize"]=14.0 playerGui["Name"]="ToggleList"playerGui["Parent"]=lighting playerGui["HorizontalAlignment"]=Enum["HorizontalAlignment"]["Center"]playerGui["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]playerGui["VerticalAlignment"]=Enum["VerticalAlignment"]["Center"]playerGui["Padding"]=UDim["new"](0,5)local backpack=Instance["new"]("UICorner",virtualUser)backpack["CornerRadius"]=UDim["new"](0,2)local function character(players)
          local localPlayer=players and UDim2["new"](1,-12,1,-12)or UDim2["new"](0,0,0,0)local rootPart=UDim2["new"](.5,0,.5,0)local replicatedStorage=Vector2["new"](.5,.5)
          (game["TweenService"]:Create(virtualUser,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["Size"]=localPlayer
          ["Position"]=rootPart,["AnchorPoint"]=replicatedStorage})):Play()teleportService(players)
        end
        if teleportService then
          character(playerLevel)
        end
        local function U()
          playerLevel=not playerLevel character(playerLevel)
        end
        playersService["MouseButton1Down"]:Connect(function()
          U()
        end
        )local C={}function C.SetStage(players)
          if players~=playerLevel then
            U()
          end
        end
        function visibleon()
          lighting["Visible"]=true
        end
        table["insert"](dz["listfunction"][tweenService],{["Type"]="Toggle",["Name"]=rootPart
        ["Call"]=visibleon})table["insert"](wz[tweenService],lighting)return C
      end
      function character.CreateButton(players,localPlayer)
        local rootPart=players["Title"]local replicatedStorage=players["Callback"]or function()
        end
        local playerLevel=Instance["new"]("Frame",tweenService)playerLevel["LayoutOrder"]=0 playerLevel["BorderMode"]=Enum["BorderMode"]["Outline"]playerLevel["Selectable"]=false playerLevel["AnchorPoint"]=Vector2["new"](0,0)playerLevel["AutomaticSize"]=Enum["AutomaticSize"]["None"]playerLevel["Size"]=UDim2["new"](1,0,0,40)playerLevel["Draggable"]=false playerLevel["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)playerLevel["Style"]=Enum["FrameStyle"]["Custom"]playerLevel["Transparency"]=1 playerLevel["BackgroundTransparency"]=1 playerLevel["SelectionOrder"]=0 playerLevel["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]playerLevel["BackgroundColor3"]=Color3["fromRGB"](0,255,255)local teleportService=Instance["new"]("Frame",playerLevel)teleportService["LayoutOrder"]=0 teleportService["BorderMode"]=Enum["BorderMode"]["Outline"]teleportService["Selectable"]=false teleportService["AnchorPoint"]=Vector2["new"](.5,.5)teleportService["AutomaticSize"]=Enum["AutomaticSize"]["None"]teleportService["Size"]=UDim2["new"](1,-10,1,0)teleportService["Draggable"]=false teleportService["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)teleportService["Style"]=Enum["FrameStyle"]["Custom"]teleportService["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]teleportService["Transparency"]=dz["UIColor"]["Background 1 Transparency"]teleportService["BackgroundTransparency"]=.25 teleportService["Position"]=UDim2["new"](.5,0,.5,0)teleportService["SelectionOrder"]=0 teleportService["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]local lighting=Instance["new"]("UICorner",teleportService)lighting["CornerRadius"]=UDim["new"](0,10)local enemies=Instance["new"]("Frame",teleportService)enemies["LayoutOrder"]=0 enemies["BorderMode"]=Enum["BorderMode"]["Outline"]enemies["Selectable"]=false enemies["AnchorPoint"]=Vector2["new"](0,0)enemies["ZIndex"]=2 enemies["AutomaticSize"]=Enum["AutomaticSize"]["None"]enemies["Draggable"]=false enemies["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)enemies["Style"]=Enum["FrameStyle"]["Custom"]enemies["Transparency"]=1 enemies["BackgroundTransparency"]=1 enemies["SelectionOrder"]=0 enemies["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]enemies["BackgroundColor3"]=Color3["new"](.18823529779911,.18823529779911,.21960784494877)local virtualInput=Instance["new"]("UICorner",enemies)virtualInput["CornerRadius"]=UDim["new"](0,10)local virtualUser=Instance["new"]("TextLabel",teleportService)virtualUser["LineHeight"]=1 virtualUser["Active"]=false virtualUser["TextStrokeTransparency"]=.85000002384186 virtualUser["TextTruncate"]=Enum["TextTruncate"]["None"]virtualUser["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]virtualUser["ZIndex"]=1 virtualUser["BorderSizePixel"]=1 virtualUser["Draggable"]=false virtualUser["RichText"]=false virtualUser["SelectionOrder"]=0 virtualUser["BackgroundColor3"]=Color3["fromRGB"](0,255,255)virtualUser["BorderMode"]=Enum["BorderMode"]["Outline"]virtualUser["TextStrokeColor3"]=Color3["new"](0,0,0)virtualUser["AnchorPoint"]=Vector2["new"](0,0)virtualUser["AutomaticSize"]=Enum["AutomaticSize"]["None"]virtualUser["Size"]=UDim2["new"](1,-110,1,0)virtualUser["TextColor3"]=Color3["new"](.92156863212585,.92156863212585,.90196079015732)virtualUser["ClipsDescendants"]=false virtualUser["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)virtualUser["Text"]=rootPart virtualUser["TextXAlignment"]=Enum["TextXAlignment"]["Left"]virtualUser["LayoutOrder"]=0 virtualUser["Rotation"]=0 virtualUser["Font"]=Enum["Font"]["GothamBold"]virtualUser["BackgroundTransparency"]=1 virtualUser["Position"]=UDim2["new"](0,12,0,0)virtualUser["Selectable"]=false virtualUser["MaxVisibleGraphemes"]=-1 virtualUser["Visible"]=true virtualUser["TextSize"]=14 local playerTeam=Instance["new"]("Frame",teleportService)playerTeam["LayoutOrder"]=0 playerTeam["BorderMode"]=Enum["BorderMode"]["Outline"]playerTeam["Selectable"]=false playerTeam["AnchorPoint"]=Vector2["new"](1,.5)playerTeam["AutomaticSize"]=Enum["AutomaticSize"]["None"]playerTeam["Size"]=UDim2["new"](0,94,0,30)playerTeam["Draggable"]=false playerTeam["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)playerTeam["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]playerTeam["Transparency"]=0 playerTeam["Style"]=Enum["FrameStyle"]["Custom"]playerTeam["Position"]=UDim2["new"](1,-8,.5,0)playerTeam["SelectionOrder"]=0 playerTeam["BackgroundColor3"]=Color3["fromRGB"](0,255,255)local runService=Instance["new"]("UICorner",playerTeam)runService["CornerRadius"]=UDim["new"](0,12)local stats=Instance["new"]("UIGradient",playerTeam)stats["Enabled"]=true stats["Transparency"]=NumberSequence["new"]({NumberSequenceKeypoint["new"](0,0,0)
        NumberSequenceKeypoint["new"](1,0,0)})stats["Color"]=ColorSequence["new"]({ColorSequenceKeypoint["new"](.0,Color3["fromRGB"](201,0,255)),ColorSequenceKeypoint["new"](1.0,Color3["fromRGB"](201,0,255))})stats["Offset"]=Vector2["new"](0,0)stats["Rotation"]=90 local energyValue=Instance["new"]("TextButton",playerTeam)energyValue["Visible"]=true energyValue["TextWrapped"]=false energyValue["LineHeight"]=1 energyValue["Active"]=true energyValue["TextStrokeTransparency"]=1 energyValue["TextTruncate"]=Enum["TextTruncate"]["None"]energyValue["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]energyValue["ZIndex"]=1 energyValue["BorderSizePixel"]=1 energyValue["Draggable"]=false energyValue["RichText"]=false energyValue["AutoButtonColor"]=false energyValue["Transparency"]=1 energyValue["SelectionOrder"]=0 energyValue["TextYAlignment"]=Enum["TextYAlignment"]["Center"]energyValue["TextScaled"]=false energyValue["BackgroundColor3"]=Color3["fromRGB"](0,255,255)energyValue["BorderMode"]=Enum["BorderMode"]["Outline"]energyValue["Selectable"]=true energyValue["AnchorPoint"]=Vector2["new"](0,0)energyValue["Style"]=Enum["ButtonStyle"]["Custom"]energyValue["Modal"]=false energyValue["Selected"]=false energyValue["AutomaticSize"]=Enum["AutomaticSize"]["None"]energyValue["Size"]=UDim2["new"](1,0,1,0)energyValue["TextXAlignment"]=Enum["TextXAlignment"]["Center"]energyValue["TextTransparency"]=0 energyValue["ClipsDescendants"]=false energyValue["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)energyValue["Text"]="Click"energyValue["LayoutOrder"]=0 energyValue["TextStrokeColor3"]=Color3["new"](0,0,0)energyValue["Rotation"]=0 energyValue["Font"]=Enum["Font"]["GothamBold"]energyValue["BackgroundTransparency"]=1 energyValue["Position"]=UDim2["new"](0,0,0,0)energyValue["TextSize"]=13 energyValue["MaxVisibleGraphemes"]=-1 energyValue["TextColor3"]=Color3["new"](.098039217293262,.10980392247438,.14117647707462)local playersService=Instance["new"]("Frame",playerTeam)playersService["LayoutOrder"]=0 playersService["BorderMode"]=Enum["BorderMode"]["Outline"]playersService["Selectable"]=false playersService["AnchorPoint"]=Vector2["new"](.5,0)playersService["ZIndex"]=2 playersService["AutomaticSize"]=Enum["AutomaticSize"]["None"]playersService["Size"]=UDim2["new"](1,-6,0,10)playersService["Draggable"]=false playersService["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)playersService["Style"]=Enum["FrameStyle"]["Custom"]playersService["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]playersService["Transparency"]=.85000002384186 playersService["BackgroundTransparency"]=.85000002384186 playersService["Position"]=UDim2["new"](.5,0,0,2)playersService["SelectionOrder"]=0 playersService["BackgroundColor3"]=Color3["new"](1,1,1)local playerGui=Instance["new"]("UICorner",playersService)playerGui["CornerRadius"]=UDim["new"](0,4)local localPlayerAlt=Instance["new"]("ImageLabel",playerTeam)localPlayerAlt["LayoutOrder"]=0 localPlayerAlt["BorderMode"]=Enum["BorderMode"]["Outline"]localPlayerAlt["SliceCenter"]=Rect["new"](24,24,276,276)localPlayerAlt["Active"]=false localPlayerAlt["Selectable"]=false localPlayerAlt["Visible"]=true localPlayerAlt["ImageTransparency"]=.55000001192093 localPlayerAlt["ImageColor3"]=Color3["new"](1,1,1)localPlayerAlt["AnchorPoint"]=Vector2["new"](.5,.5)localPlayerAlt["Image"]="rbxassetid://5028857084"localPlayerAlt["ImageRectOffset"]=Vector2["new"](0,0)localPlayerAlt["ImageRectSize"]=Vector2["new"](0,0)localPlayerAlt["ZIndex"]=0 localPlayerAlt["AutomaticSize"]=Enum["AutomaticSize"]["None"]localPlayerAlt["Size"]=UDim2["new"](1,14,1,14)localPlayerAlt["Draggable"]=false localPlayerAlt["ScaleType"]=Enum["ScaleType"]["Slice"]localPlayerAlt["BorderColor3"]=Color3["new"](.10588235408068,.16470588743687,.20784313976765)localPlayerAlt["SizeConstraint"]=Enum["SizeConstraint"]["RelativeXY"]localPlayerAlt["SelectionOrder"]=0 localPlayerAlt["ClipsDescendants"]=false localPlayerAlt["Rotation"]=0 localPlayerAlt["Transparency"]=1 localPlayerAlt["BackgroundTransparency"]=1 localPlayerAlt["Position"]=UDim2["new"](.5,0,.5,0)localPlayerAlt["SliceScale"]=1 localPlayerAlt["BorderSizePixel"]=1 localPlayerAlt["BackgroundColor3"]=Color3["fromRGB"](0,255,255)energyValue["MouseButton1Click"]:Connect(function()
          replicatedStorage()
        end
        )function visibleon()
          playerLevel["Visible"]=true
        end
        table["insert"](dz["listfunction"][tweenService],{["Type"]="Toggle",["Name"]=rootPart,["Call"]=visibleon})table["insert"](wz[tweenService],playerLevel)
      end
      function character.CreateLabel(players)
        local localPlayer=tostring(players["Title"])local rootPart=Instance["new"]("Frame")local replicatedStorage=Instance["new"]("Frame")local playerLevel=Instance["new"]("UICorner")local teleportService=Instance["new"]("TextLabel")rootPart["Name"]="LabelFrame"rootPart["Parent"]=tweenService rootPart["BackgroundColor3"]=Color3["fromRGB"](230,230,230)rootPart["BackgroundTransparency"]=1 rootPart["Position"]=UDim2["new"](0,0,0,0)rootPart["Size"]=UDim2["new"](1,0,0,0)rootPart["AutomaticSize"]=Enum["AutomaticSize"]["Y"]replicatedStorage["Name"]="LabelBG"replicatedStorage["Parent"]=rootPart replicatedStorage["AnchorPoint"]=Vector2["new"](.5,0)replicatedStorage["Position"]=UDim2["new"](.5,0,0,0)replicatedStorage["Size"]=UDim2["new"](1,-10,0,-10)replicatedStorage["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]replicatedStorage["AutomaticSize"]=Enum["AutomaticSize"]["Y"]replicatedStorage["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]playerLevel["CornerRadius"]=UDim["new"](0,4)playerLevel["Parent"]=replicatedStorage teleportService["Name"]="TextColor"teleportService["Parent"]=replicatedStorage teleportService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)teleportService["BackgroundTransparency"]=1 teleportService["Position"]=UDim2["new"](0,10,0,3)teleportService["Size"]=UDim2["new"](1,-20,1,10)teleportService["Font"]=Enum["Font"]["GothamBlack"]teleportService["Text"]=localPlayer teleportService["TextSize"]=14 teleportService["TextXAlignment"]=Enum["TextXAlignment"]["Left"]teleportService["AutomaticSize"]=Enum["AutomaticSize"]["Y"]teleportService["TextWrapped"]=true teleportService["TextColor3"]=dz["UIColor"]["Text Color"]teleportService["TextStrokeTransparency"]=dz["UIColor"]["Text Stroke Transparency"]teleportService["RichText"]=true local lighting={}function lighting.SetText(localPlayer,players)
          teleportService["Text"]=players
        end
        function lighting.SetColor(localPlayer,players)
          teleportService["TextColor3"]=players
        end
        function lighting.SetDesc(localPlayer,players)
          teleportService["Text"]=players
        end
        function visibleon()
          rootPart["Visible"]=true
        end
        table["insert"](dz["listfunction"][tweenService],{["Type"]="Label"
        ["Name"]=localPlayer,["Call"]=visibleon})table["insert"](wz[tweenService],rootPart)return lighting
      end
      function character.CreateDropdown(players,localPlayer)
        local rootPart=tostring(players["Title"])local replicatedStorage=players["Values"]local playerLevel=players["Search"]or false local teleportService=players["Selected"]or false local lighting=players["Slider"]or false local enemies=players["SliderRelease"]or false local virtualInput=players["Default"]local virtualUser=players["Callback"]or function()
        end
        local playerTeam=players["IndexTable"]local runService=players["SortPairs"]or pairs local stats=Instance["new"]("Frame")local energyValue=Instance["new"]("Frame")local playersService=Instance["new"]("UICorner")local playerGui=Instance["new"]("Frame")local localPlayerAlt=Instance["new"]("UICorner")local backpack=Instance["new"]("ImageLabel")local character=Instance["new"]("TextButton")local U=Instance["new"]("Frame")local C=Instance["new"]("ScrollingFrame")local v=Instance["new"]("Frame")local m=Instance["new"]("UIListLayout")local y=false local b if playerLevel then
          b=Instance["new"]("TextBox")
        else
          b=Instance["new"]("TextLabel")
        end
        stats["Name"]=rootPart.."DropdownFrame"stats["Parent"]=tweenService stats["BackgroundColor3"]=Color3["fromRGB"](230,230,230)stats["BackgroundTransparency"]=1.0 stats["Position"]=UDim2["new"](0,0,.473684222,0)stats["Size"]=UDim2["new"](1,0,0,25)energyValue["Name"]="Background1"energyValue["Parent"]=stats energyValue["AnchorPoint"]=Vector2["new"](.5,.5)energyValue["Position"]=UDim2["new"](.5,0,.5,0)energyValue["Size"]=UDim2["new"](1,-10,1,0)energyValue["ClipsDescendants"]=true energyValue["BackgroundColor3"]=Color3["fromRGB"](28,28,34)energyValue["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]energyValue["BackgroundTransparency"]=.25 playersService["CornerRadius"]=UDim["new"](0,4)playersService["Name"]="Dropdowncorner"playersService["Parent"]=energyValue playerGui["Name"]="Background2"playerGui["Parent"]=energyValue playerGui["Size"]=UDim2["new"](1,0,0,25)playerGui["BackgroundColor3"]=Color3["fromRGB"](38,38,46)playerGui["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]playerGui["BackgroundTransparency"]=.25 localPlayerAlt["CornerRadius"]=UDim["new"](0,4)localPlayerAlt["Parent"]=playerGui b["Name"]="TextColorPlaceholder"b["Parent"]=playerGui b["BackgroundColor3"]=Color3["fromRGB"](230,230,230)b["BackgroundTransparency"]=1.0 b["Position"]=UDim2["new"](0,10,0,0)b["Size"]=UDim2["new"](1,-40,1,0)b["Font"]=Enum["Font"]["GothamBlack"]b["Text"]=""b["TextSize"]=14.0 b["TextXAlignment"]=Enum["TextXAlignment"]["Left"]b["ClipsDescendants"]=true local c=Instance["new"]("StringValue",b)c["Value"]=""if virtualInput and table["find"](replicatedStorage,virtualInput)then
          c["Value"]=virtualInput
        end
        if not teleportService then
          if playerLevel then
            b["PlaceholderColor3"]=dz["UIColor"]["Placeholder Text Color"]b["PlaceholderText"]=rootPart..(": "..tostring(virtualInput or ""))
          else
            b["Text"]=rootPart..(": "..tostring(virtualInput or ""))
          end
        else
          if playerLevel then
            b["PlaceholderColor3"]=dz["UIColor"]["Placeholder Text Color"]b["PlaceholderText"]=rootPart..(": "..tostring(virtualInput or ""))
          else
            b["Text"]=rootPart..(": "..tostring(virtualInput or ""))
          end
        end
        b["TextColor3"]=dz["UIColor"]["Text Color"]backpack["Name"]="ImgDrop"backpack["Parent"]=playerGui backpack["AnchorPoint"]=Vector2["new"](1,.5)backpack["BackgroundTransparency"]=1.0 backpack["BorderColor3"]=Color3["fromRGB"](27,42,53)backpack["Position"]=UDim2["new"](1,-6,.5,0)backpack["Size"]=UDim2["new"](0,15,0,15)backpack["Image"]="rbxassetid://6954383209"backpack["ImageColor3"]=dz["UIColor"]["Dropdown Icon Color"]character["Name"]="DropdownButton"character["Parent"]=playerGui character["BackgroundColor3"]=Color3["fromRGB"](230,230,230)character["BackgroundTransparency"]=1.0 character["Size"]=playerLevel and UDim2["new"](0,30,0,30)or UDim2["new"](1,0,1,0)character["Position"]=playerLevel and UDim2["new"](1,-35,0,0)or UDim2["new"](0,0,0,0)character["Font"]=Enum["Font"]["GothamBold"]character["Text"]=""character["TextColor3"]=Color3["fromRGB"](230,230,230)character["TextSize"]=14.0 U["Name"]="Dropdownlisttt"U["Parent"]=energyValue U["BackgroundTransparency"]=1.0 U["BorderSizePixel"]=0 U["Position"]=UDim2["new"](0,0,0,25)U["Size"]=UDim2["new"](1,0,0,25)U["BackgroundColor3"]=Color3["fromRGB"](230,230,230)C["Name"]="DropdownScroll"C["Parent"]=U C["Active"]=true C["BackgroundColor3"]=Color3["fromRGB"](230,230,230)C["BackgroundTransparency"]=1.0 C["BorderSizePixel"]=0 C["Size"]=UDim2["new"](1,0,1,0)C["BottomImage"]="rbxasset://textures/ui/Scroll/scroll-middle.png"C["CanvasSize"]=UDim2["new"](0,0,0,0)C["ScrollBarThickness"]=5 C["TopImage"]="rbxasset://textures/ui/Scroll/scroll-middle.png"C["ScrollingEnabled"]=true C["VerticalScrollBarInset"]=Enum["ScrollBarInset"]["Always"]v["Name"]="ScrollContainer"v["Parent"]=C v["BackgroundColor3"]=Color3["fromRGB"](230,230,230)v["BackgroundTransparency"]=1.0 v["Position"]=UDim2["new"](0,5,0,5)v["Size"]=UDim2["new"](1,-15,1,-5)m["Name"]="ScrollContainerList"m["Parent"]=v m["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]m["Padding"]=UDim["new"](0,5)
        (m:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()
          C["CanvasSize"]=UDim2["new"](0,0,0,(10+m["AbsoluteContentSize"]["Y"])+5)
        end
        )local H=false local S={}local o={}local function Z()
          for players in runService(S)do
            S[players]=nil
          end
          for players,localPlayer in runService(v:GetChildren())do
            if not localPlayer:IsA("UIListLayout")and(not localPlayer:IsA("UIPadding")and not localPlayer:IsA("UIGridLayout"))then
              localPlayer["Visible"]=false
            end
          end
          b["Text"]=string["lower"](b["Text"])
        end
        local function T()
          local players={}for players,localPlayer in runService(o)do
            if string["find"](localPlayer,b["Text"])then
              table["insert"](S,localPlayer)
            end
          end
          for players,localPlayer in runService(v:GetChildren())do
            for players,rootPart in runService(S)do
              if rootPart==localPlayer["Name"]then
                localPlayer["Visible"]=true
              end
            end
          end
        end
        local function k()
          for players,localPlayer in next,v:GetChildren()do
            if localPlayer:IsA("Frame")then
              localPlayer:Destroy()
            end
          end
        end
        local L=replicatedStorage local function P(players)
          runService=players or runService k()o={}for players,localPlayer in runService(L)do
            if teleportService then
              table["insert"](o,string["lower"](players))
            elseif  lighting then
              table["insert"](o,string["lower"](localPlayer["Title"]))
            else
              table["insert"](o,string["lower"](localPlayer))
            end
          end
          if teleportService then
            for players,localPlayer in runService(L)do
              local replicatedStorage=Instance["new"]("Frame")local teleportService=Instance["new"]("UICorner")local tweenService=Instance["new"]("Frame")local lighting=Instance["new"]("UICorner")local enemies=Instance["new"]("TextLabel")local virtualInput=Instance["new"]("ImageButton")local playerTeam=Instance["new"]("TextButton")replicatedStorage["Name"]=string["lower"](players)replicatedStorage["Parent"]=v replicatedStorage["BackgroundColor3"]=Color3["fromRGB"](60,60,60)replicatedStorage["BackgroundTransparency"]=1.0 replicatedStorage["BorderColor3"]=Color3["fromRGB"](27,42,53)replicatedStorage["LayoutOrder"]=1 replicatedStorage["Position"]=UDim2["new"](0,0,.208333328,0)replicatedStorage["Size"]=UDim2["new"](1,0,0,25)teleportService["CornerRadius"]=UDim["new"](0,4)teleportService["Name"]="SampleItemCorner"teleportService["Parent"]=replicatedStorage tweenService["Name"]="SampleItemBG"tweenService["Parent"]=replicatedStorage tweenService["AnchorPoint"]=Vector2["new"](.5,.5)tweenService["BackgroundColor3"]=localPlayer and dz["UIColor"]["Dropdown Selected Check Color"]or Color3["fromRGB"](255,255,255)tweenService["BackgroundTransparency"]=localPlayer and.5 or 1 tweenService["BorderColor3"]=Color3["fromRGB"](27,42,53)tweenService["Position"]=UDim2["new"](.5,0,.5,0)tweenService["Size"]=UDim2["new"](1,0,1,0)lighting["CornerRadius"]=UDim["new"](0,4)lighting["Name"]="SampleItemBGCorner"lighting["Parent"]=tweenService enemies["Name"]="SampleItemTitle"enemies["Parent"]=tweenService enemies["BackgroundColor3"]=Color3["fromRGB"](255,255,255)enemies["BackgroundTransparency"]=1.0 enemies["BorderColor3"]=Color3["fromRGB"](27,42,53)enemies["Position"]=UDim2["new"](0,10,0,0)enemies["Size"]=UDim2["new"](1,-40,0,25)enemies["Font"]=Enum["Font"]["GothamBlack"]enemies["Text"]=players enemies["TextColor3"]=Color3["fromRGB"](255,255,255)enemies["TextSize"]=14.0 enemies["TextStrokeTransparency"]=.5 enemies["TextXAlignment"]=Enum["TextXAlignment"]["Left"]virtualInput["Name"]="SampleItemCheck"virtualInput["Parent"]=tweenService virtualInput["AnchorPoint"]=Vector2["new"](1,.5)virtualInput["BackgroundTransparency"]=1.0 virtualInput["Position"]=UDim2["new"](1,0,.5,0)virtualInput["Size"]=UDim2["new"](0,25,0,25)virtualInput["ZIndex"]=2 virtualInput["Image"]="rbxassetid://3926305904"virtualInput["ImageColor3"]=dz["UIColor"]["Dropdown Selected Check Color"]virtualInput["ImageRectOffset"]=Vector2["new"](312,4)virtualInput["ImageRectSize"]=Vector2["new"](24,24)virtualInput["ImageTransparency"]=localPlayer and 0 or 1 playerTeam["Name"]="SampleItemButton"playerTeam["Parent"]=replicatedStorage playerTeam["BackgroundColor3"]=Color3["fromRGB"](255,255,255)playerTeam["BackgroundTransparency"]=1.0 playerTeam["BorderColor3"]=Color3["fromRGB"](0,0,0)playerTeam["BorderSizePixel"]=0 playerTeam["Size"]=UDim2["new"](1,0,1,0)playerTeam["Font"]=Enum["Font"]["SourceSans"]playerTeam["TextColor3"]=dz["UIColor"]["Text Color"]playerTeam["TextSize"]=14.0 playerTeam["TextTransparency"]=1.0 playerTeam["MouseEnter"]:Connect(function()
                if localPlayer then
                  return
                end
                (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundColor3"]=Color3["fromRGB"](255,255,255)})):Play()
                (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=.7})):Play()
              end
              )playerTeam["MouseLeave"]:Connect(function()
                if localPlayer then
                  return
                end
                (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundColor3"]=Color3["fromRGB"](255,255,255)})):Play()
                (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=1})):Play()
              end
              )playerTeam["MouseButton1Click"]:Connect(function()
                localPlayer=not localPlayer
                (Iz:Create(virtualInput,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["ImageTransparency"]=localPlayer and 0 or 1})):Play()
                (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundColor3"]=localPlayer and dz["UIColor"]["Dropdown Selected Check Color"]or Color3["fromRGB"](255,255,255)})):Play()
                (Iz:Create(tweenService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=localPlayer and.5 or 1})):Play()if virtualUser then
                  virtualUser(players,localPlayer)L[players]=localPlayer
                end
                if playerLevel then
                  b["PlaceholderText"]=rootPart..": "
                else
                  b["Text"]=rootPart..": "
                end
              end
              )
            end
          elseif  lighting then
            for players,localPlayer in runService(L)do
              local rootPart=tostring(localPlayer["Title"])or ""local replicatedStorage=tonumber(localPlayer["Min"])or 0 local playerLevel=tonumber(localPlayer["Max"])or 100 local teleportService=localPlayer["Precise"]or false local tweenService=tonumber(localPlayer["Default"])or replicatedStorage local lighting=365 local virtualInput=Instance["new"]("Frame")local playerTeam=Instance["new"]("UICorner")local runService=Instance["new"]("Frame")local stats=Instance["new"]("UICorner")local energyValue=Instance["new"]("TextLabel")local playersService=Instance["new"]("Frame")local playerGui=Instance["new"]("TextButton")local localPlayerAlt=Instance["new"]("UICorner")local backpack=Instance["new"]("Frame")local character=Instance["new"]("UICorner")local U=Instance["new"]("Frame")local C=Instance["new"]("UICorner")local m=Instance["new"]("TextBox")virtualInput["Name"]=string["lower"](localPlayer["Title"])virtualInput["Parent"]=v virtualInput["BackgroundColor3"]=Color3["fromRGB"](60,60,60)virtualInput["BackgroundTransparency"]=1.0 virtualInput["Position"]=UDim2["new"](0,0,.208333328,0)virtualInput["Size"]=UDim2["new"](1,0,0,50)playerTeam["CornerRadius"]=UDim["new"](0,4)playerTeam["Name"]="SliderCorner"playerTeam["Parent"]=virtualInput runService["Name"]="Background1"runService["Parent"]=virtualInput runService["AnchorPoint"]=Vector2["new"](.5,.5)runService["Position"]=UDim2["new"](.5,0,.5,0)runService["Size"]=UDim2["new"](1,-10,1,0)runService["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]runService["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]stats["CornerRadius"]=UDim["new"](0,4)stats["Name"]="SliderBGCorner"stats["Parent"]=runService energyValue["Name"]="TextColor"energyValue["Parent"]=runService energyValue["BackgroundColor3"]=Color3["fromRGB"](230,230,230)energyValue["BackgroundTransparency"]=1.0 energyValue["Position"]=UDim2["new"](0,10,0,0)energyValue["Size"]=UDim2["new"](1,-10,0,25)energyValue["Font"]=Enum["Font"]["GothamBlack"]energyValue["Text"]=rootPart energyValue["TextSize"]=14.0 energyValue["TextXAlignment"]=Enum["TextXAlignment"]["Left"]energyValue["TextColor3"]=dz["UIColor"]["Text Color"]playersService["Name"]="SliderBar"playersService["Parent"]=virtualInput playersService["AnchorPoint"]=Vector2["new"](.5,.5)playersService["Position"]=UDim2["new"](.5,0,.5,14)playersService["Size"]=UDim2["new"](1,-20,0,6)playersService["BackgroundColor3"]=dz["UIColor"]["Background 2 Color"]playerGui["Name"]="SliderButton "playerGui["Parent"]=playersService playerGui["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playerGui["BackgroundTransparency"]=1.0 playerGui["Size"]=UDim2["new"](1,0,1,0)playerGui["Font"]=Enum["Font"]["GothamBold"]playerGui["Text"]=""playerGui["TextColor3"]=Color3["fromRGB"](230,230,230)playerGui["TextSize"]=14.0 localPlayerAlt["CornerRadius"]=UDim["new"](1,0)localPlayerAlt["Name"]="SliderBarCorner"localPlayerAlt["Parent"]=playersService backpack["Name"]="Bar"backpack["BorderSizePixel"]=0 backpack["Parent"]=playersService backpack["Size"]=UDim2["new"](0,0,1,0)backpack["BackgroundColor3"]=dz["UIColor"]["Slider Line Color"]character["CornerRadius"]=UDim["new"](1,0)character["Name"]="BarCorner"character["Parent"]=backpack U["Name"]="Background2"U["Parent"]=virtualInput U["AnchorPoint"]=Vector2["new"](1,0)U["Position"]=UDim2["new"](1,-10,0,5)U["Size"]=UDim2["new"](0,150,0,25)U["BackgroundColor3"]=dz["UIColor"]["Background 2 Color"]C["CornerRadius"]=UDim["new"](0,4)C["Name"]="Sliderbox"C["Parent"]=U m["Name"]="TextColor"m["Parent"]=U m["BackgroundColor3"]=Color3["fromRGB"](230,230,230)m["BackgroundTransparency"]=1.0 m["Size"]=UDim2["new"](1,0,1,0)m["Font"]=Enum["Font"]["GothamBold"]m["Text"]=""m["TextSize"]=14.0 m["TextColor3"]=dz["UIColor"]["Text Color"]playerGui["MouseEnter"]:Connect(function()
                (Iz:Create(backpack,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["BackgroundColor3"]=dz["UIColor"]["Slider Highlight Color"]})):Play()
              end
              )playerGui["MouseLeave"]:Connect(function()
                (Iz:Create(backpack,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["BackgroundColor3"]=dz["UIColor"]["Slider Line Color"]})):Play()
              end
              )local y=function(rootPart)
                m["Text"]=rootPart L[players]["Default"]=rootPart virtualUser(players,localPlayer)
              end
              if tweenService then
                if tweenService<=replicatedStorage then
                  tweenService=replicatedStorage
                elseif  tweenService>=playerLevel then
                  tweenService=playerLevel
                end
                backpack["Size"]=UDim2["new"](1-(playerLevel-tweenService)/(playerLevel-replicatedStorage),0,0,6)y(tweenService)
              end
              if enemies then
                local players=false local localPlayer local rootPart=0 local tweenService=0 local function enemies(localPlayer)
                  if localPlayer["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or localPlayer["UserInputType"]==Enum["UserInputType"]["Touch"]then
                    tweenService=tick()localPlayer["Changed"]:Connect(function()
                      if localPlayer["UserInputState"]==Enum["UserInputState"]["End"]then
                        players=false tweenService=0
                      end
                    end
                    )
                  end
                end
                local function virtualInput(localPlayer)
                  if localPlayer["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or localPlayer["UserInputType"]==Enum["UserInputType"]["Touch"]then
                    players=false tweenService=0
                  end
                end
                local function virtualUser(players)
                  if players["UserInputType"]==Enum["UserInputType"]["MouseMovement"]or players["UserInputType"]==Enum["UserInputType"]["Touch"]then
                    localPlayer=players
                  end
                end
                playerGui["InputBegan"]:Connect(enemies)playerGui["InputEnded"]:Connect(virtualInput)playerGui["InputChanged"]:Connect(virtualUser)Nz["RenderStepped"]:Connect(function()
                  if tweenService>0 and(tick()-tweenService>=rootPart and not players)then
                    players=true
                  end
                  if players and localPlayer then
                    local players=teleportService and tonumber(string["format"]("%.1f",((tonumber(playerLevel)-tonumber(replicatedStorage))/lighting)*backpack["AbsoluteSize"]["X"]+tonumber(replicatedStorage)))or math["floor"](((tonumber(playerLevel)-tonumber(replicatedStorage))/lighting)*backpack["AbsoluteSize"]["X"]+tonumber(replicatedStorage))pcall(function()
                      y(players)
                    end
                    )backpack["Size"]=UDim2["new"](0,math["clamp"](localPlayer["Position"]["X"]-backpack["AbsolutePosition"]["X"],0,lighting),0,6)
                  end
                end
                )
              else
                local players=false local localPlayer local rootPart=0 local tweenService=0 local function enemies(localPlayer)
                  if localPlayer["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or localPlayer["UserInputType"]==Enum["UserInputType"]["Touch"]then
                    tweenService=tick()localPlayer["Changed"]:Connect(function()
                      if localPlayer["UserInputState"]==Enum["UserInputState"]["End"]then
                        players=false tweenService=0
                      end
                    end
                    )
                  end
                end
                local function virtualInput(localPlayer)
                  if localPlayer["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or localPlayer["UserInputType"]==Enum["UserInputType"]["Touch"]then
                    players=false tweenService=0
                  end
                end
                local function virtualUser(players)
                  if players["UserInputType"]==Enum["UserInputType"]["MouseMovement"]or players["UserInputType"]==Enum["UserInputType"]["Touch"]then
                    localPlayer=players
                  end
                end
                playerGui["InputBegan"]:Connect(enemies)playerGui["InputEnded"]:Connect(virtualInput)playerGui["InputChanged"]:Connect(virtualUser)Nz["RenderStepped"]:Connect(function()
                  if tweenService>0 and(tick()-tweenService>=rootPart and not players)then
                    players=true
                  end
                  if players and localPlayer then
                    local players=teleportService and tonumber(string["format"]("%.1f",((tonumber(playerLevel)-tonumber(replicatedStorage))/lighting)*backpack["AbsoluteSize"]["X"]+tonumber(replicatedStorage)))or math["floor"](((tonumber(playerLevel)-tonumber(replicatedStorage))/lighting)*backpack["AbsoluteSize"]["X"]+tonumber(replicatedStorage))pcall(function()
                      y(players)
                    end
                    )backpack["Size"]=UDim2["new"](0,math["clamp"](localPlayer["Position"]["X"]-backpack["AbsolutePosition"]["X"],0,lighting),0,6)
                  end
                end
                )
              end
              local function b(players)
                if tonumber(players)<=replicatedStorage then
                  backpack["Size"]=UDim2["new"](0,0*lighting,0,6)y(replicatedStorage)
                elseif  tonumber(players)>=playerLevel then
                  backpack["Size"]=UDim2["new"](0,(playerLevel/playerLevel)*lighting,0,6)y(playerLevel)
                else
                  backpack["Size"]=UDim2["new"](1-(playerLevel-players)/(playerLevel-replicatedStorage),0,0,6)y(players)
                end
              end
              m["FocusLost"]:Connect(function()
                b(m["Text"])
              end
              )
            end
          else
            for players,localPlayer in runService(L)do
              if typeof(localPlayer)=="string"then
                local players=Instance["new"]("Frame")local replicatedStorage=Instance["new"]("UICorner")local teleportService=Instance["new"]("Frame")local tweenService=Instance["new"]("UICorner")local lighting=Instance["new"]("TextLabel")local enemies=Instance["new"]("ImageButton")local virtualInput=Instance["new"]("TextButton")players["Name"]=string["lower"](localPlayer)players["Parent"]=v players["BackgroundColor3"]=Color3["fromRGB"](60,60,60)players["BackgroundTransparency"]=1.0 players["BorderColor3"]=Color3["fromRGB"](27,42,53)players["LayoutOrder"]=1 players["Position"]=UDim2["new"](0,0,.208333328,0)players["Size"]=UDim2["new"](1,0,0,25)replicatedStorage["CornerRadius"]=UDim["new"](0,4)replicatedStorage["Name"]="SampleItemCorner"replicatedStorage["Parent"]=players teleportService["Name"]="SampleItemBG"teleportService["Parent"]=players teleportService["AnchorPoint"]=Vector2["new"](.5,.5)teleportService["BackgroundColor3"]=Color3["fromRGB"](255,255,255)teleportService["BackgroundTransparency"]=1 teleportService["BorderColor3"]=Color3["fromRGB"](27,42,53)teleportService["Position"]=UDim2["new"](.5,0,.5,0)teleportService["Size"]=UDim2["new"](1,0,1,0)tweenService["CornerRadius"]=UDim["new"](0,4)tweenService["Name"]="SampleItemBGCorner"tweenService["Parent"]=teleportService lighting["Name"]="SampleItemTitle"lighting["Parent"]=teleportService lighting["BackgroundColor3"]=Color3["fromRGB"](255,255,255)lighting["BackgroundTransparency"]=1.0 lighting["BorderColor3"]=Color3["fromRGB"](27,42,53)lighting["Position"]=UDim2["new"](0,10,0,0)lighting["Size"]=UDim2["new"](1,-40,0,25)lighting["Font"]=Enum["Font"]["GothamBlack"]lighting["Text"]=localPlayer lighting["TextColor3"]=Color3["fromRGB"](255,255,255)lighting["TextSize"]=14.0 lighting["TextStrokeTransparency"]=.5 lighting["TextXAlignment"]=Enum["TextXAlignment"]["Left"]enemies["Name"]="SampleItemCheck"enemies["Parent"]=teleportService enemies["AnchorPoint"]=Vector2["new"](1,.5)enemies["BackgroundTransparency"]=1.0 enemies["Position"]=UDim2["new"](1,0,.5,0)enemies["Size"]=UDim2["new"](0,25,0,25)enemies["ZIndex"]=2 enemies["Image"]="rbxassetid://3926305904"enemies["ImageColor3"]=dz["UIColor"]["Dropdown Selected Check Color"]enemies["ImageRectOffset"]=Vector2["new"](312,4)enemies["ImageRectSize"]=Vector2["new"](24,24)enemies["ImageTransparency"]=1 virtualInput["Name"]="SampleItemButton"virtualInput["Parent"]=players virtualInput["BackgroundColor3"]=Color3["fromRGB"](255,255,255)virtualInput["BackgroundTransparency"]=1.0 virtualInput["BorderColor3"]=Color3["fromRGB"](0,0,0)virtualInput["BorderSizePixel"]=0 virtualInput["Size"]=UDim2["new"](1,0,1,0)virtualInput["Font"]=Enum["Font"]["SourceSans"]virtualInput["TextColor3"]=dz["UIColor"]["Text Color"]virtualInput["TextSize"]=14.0 virtualInput["TextTransparency"]=1.0 virtualInput["MouseEnter"]:Connect(function()
                  if c["Value"]==localPlayer then
                    return
                  end
                  (Iz:Create(teleportService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundColor3"]=Color3["fromRGB"](255,255,255)})):Play()
                  (Iz:Create(teleportService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=.7})):Play()
                end
                )virtualInput["MouseLeave"]:Connect(function()
                  if c["Value"]==localPlayer then
                    return
                  end
                  (Iz:Create(teleportService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundColor3"]=Color3["fromRGB"](255,255,255)})):Play()
                  (Iz:Create(teleportService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=1})):Play()
                end
                )virtualInput["MouseButton1Click"]:Connect(function()
                  if playerLevel then
                    b["PlaceholderText"]=rootPart..(": "..localPlayer)or ""c["Value"]=localPlayer
                  else
                    b["Text"]=rootPart..(": "..localPlayer)or ""c["Value"]=localPlayer
                  end
                  (Iz:Create(teleportService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundColor3"]=dz["UIColor"]["Dropdown Selected Check Color"]})):Play()
                  (Iz:Create(teleportService,TweenInfo["new"](dz["UIColor"]["Tween Animation 1 Speed"]),{["BackgroundTransparency"]=.5})):Play()if virtualUser then
                    virtualUser(localPlayer)
                  end
                  if playerLevel then
                    b["Text"]=""
                  end
                  P()
                end
                )if c["Value"]==localPlayer then
                  teleportService["BackgroundTransparency"]=.5 teleportService["BackgroundColor3"]=dz["UIColor"]["Dropdown Selected Check Color"]players["LayoutOrder"]=0
                end
              end
            end
          end
        end
        if playerLevel then
          b["Changed"]:Connect(function()
            Z()T()
          end
          )
        end
        if typeof(virtualInput)~="table"then
          virtualUser(virtualInput)if playerLevel then
            b["PlaceholderText"]=rootPart..(": "..tostring(virtualInput or ""))
          else
            b["Text"]=rootPart..(": "..tostring(virtualInput or ""))
          end
        elseif  lighting then
          b["Text"]=""b["PlaceholderText"]=rootPart..": "
        elseif  teleportService then
          if playerLevel then
            b["PlaceholderText"]=rootPart..": "
          else
            b["Text"]=rootPart..": "
          end
        end
        character["MouseButton1Click"]:Connect(function()
          P()H=not H local players=H and UDim2["new"](1,0,0,170)or UDim2["new"](1,0,0,0)local localPlayer=H and UDim2["new"](1,0,0,200)or UDim2["new"](1,0,0,25)local rootPart=H and 90 or 0
          (Iz:Create(U,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Size"]=players})):Play()
          (Iz:Create(stats,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Size"]=localPlayer})):Play()
          (Iz:Create(backpack,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Rotation"]=rootPart})):Play()
        end
        )local j={["rf"]=P}function j.ClearText(localPlayer,players)
          if not teleportService then
            if playerLevel then
              b["PlaceholderText"]=rootPart..(": "..(players or ""))
            else
              b["Text"]=rootPart..(": "..(players or ""))
            end
          else
            b["Text"]=rootPart..(": "..(players or ""))
          end
        end
        function j.GetNewList(localPlayer,players)
          c["Value"]=""H=false local replicatedStorage=H and UDim2["new"](1,0,0,170)or UDim2["new"](1,0,0,0)local teleportService=H and UDim2["new"](1,0,0,200)or UDim2["new"](1,0,0,25)local tweenService=H and 90 or 0
          (Iz:Create(U,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Size"]=replicatedStorage})):Play()
          (Iz:Create(stats,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Size"]=teleportService})):Play()
          (Iz:Create(backpack,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["Rotation"]=tweenService})):Play()L={}L=players P()if playerLevel then
            b["PlaceholderText"]=rootPart..": "
          else
            b["Text"]=rootPart..": "
          end
        end
        table["insert"](dz["listfunction"][tweenService],{["Type"]="Dropdown",["Name"]=rootPart
        ["Call"]=function()
          stats["Visible"]=true
        end
        })table["insert"](wz[tweenService],stats)return j
      end
      function character.CreateBind(players,localPlayer)
        local rootPart=tostring(players["Title"])or ""table["insert"](dz["listfunction"][tweenService],{["Type"]="Bind",["Name"]=rootPart})local replicatedStorage=players["Key"]local playerLevel=players["Default"]or players["Key"]local teleportService=(tostring(playerLevel)):match("UserInputType")and "UserInputType"or "KeyCode"local lighting=localPlayer or function()
        end
        replicatedStorage=(tostring(replicatedStorage)):gsub("Enum.UserInputType.","")replicatedStorage=(tostring(replicatedStorage)):gsub("Enum.KeyCode.","")local enemies=Instance["new"]("Frame")local virtualInput=Instance["new"]("UICorner")local virtualUser=Instance["new"]("Frame")local playerTeam=Instance["new"]("UICorner")local runService=Instance["new"]("TextLabel")local stats=Instance["new"]("TextButton")local energyValue=Instance["new"]("Frame")local playersService=Instance["new"]("UICorner")local playerGui=Instance["new"]("TextButton")enemies["Name"]=rootPart.."bguvl"enemies["Parent"]=tweenService enemies["BackgroundColor3"]=Color3["fromRGB"](60,60,60)enemies["BackgroundTransparency"]=1.0 enemies["Position"]=UDim2["new"](0,0,.208333328,0)enemies["Size"]=UDim2["new"](1,0,0,35)virtualInput["CornerRadius"]=UDim["new"](0,4)virtualInput["Name"]="BindCorner"virtualInput["Parent"]=enemies virtualUser["Name"]="Background1"virtualUser["Parent"]=enemies virtualUser["AnchorPoint"]=Vector2["new"](.5,.5)virtualUser["Position"]=UDim2["new"](.5,0,.5,0)virtualUser["Size"]=UDim2["new"](1,-10,1,0)virtualUser["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]virtualUser["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]playerTeam["CornerRadius"]=UDim["new"](0,4)playerTeam["Name"]="ButtonCorner"playerTeam["Parent"]=virtualUser runService["Name"]="TextColor"runService["Parent"]=virtualUser runService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)runService["BackgroundTransparency"]=1.0 runService["Position"]=UDim2["new"](0,10,0,0)runService["Size"]=UDim2["new"](1,-10,1,0)runService["Font"]=Enum["Font"]["GothamBlack"]runService["Text"]=rootPart runService["TextSize"]=14.0 runService["TextXAlignment"]=Enum["TextXAlignment"]["Left"]runService["TextColor3"]=dz["UIColor"]["Text Color"]energyValue["Name"]="Background2"energyValue["Parent"]=virtualUser energyValue["AnchorPoint"]=Vector2["new"](1,.5)energyValue["Position"]=UDim2["new"](1,-5,.5,0)energyValue["Size"]=UDim2["new"](0,150,0,25)energyValue["BackgroundColor3"]=dz["UIColor"]["Background 2 Color"]playersService["CornerRadius"]=UDim["new"](0,4)playersService["Name"]="ButtonCorner"playersService["Parent"]=energyValue playerGui["Name"]="Bindkey"playerGui["Parent"]=energyValue playerGui["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playerGui["BackgroundTransparency"]=1.0 playerGui["Size"]=UDim2["new"](1,0,1,0)playerGui["Font"]=Enum["Font"]["GothamBold"]playerGui["Text"]=(tostring(playerLevel)):gsub("Enum.KeyCode.","")playerGui["TextSize"]=14.0 playerGui["TextColor3"]=dz["UIColor"]["Text Color"]local localPlayerAlt={[Enum["UserInputType"]["MouseButton1"]]="Mouse1"
        [Enum["UserInputType"]["MouseButton2"]]="Mouse2",[Enum["UserInputType"]["MouseButton3"]]="Mouse3"}playerGui["MouseButton1Click"]:Connect(function()
          local players playerGui["Text"]="..."players=(game:GetService("UserInputService"))["InputBegan"]:Connect(function(localPlayer)
            if localPlayerAlt[localPlayer["UserInputType"]]then
              playerGui["Text"]=localPlayerAlt[localPlayer["UserInputType"]]task.spawn(function()
                wait(.1)playerLevel=localPlayer["UserInputType"]teleportService="UserInputType"
              end
              )
            elseif  localPlayer["KeyCode"]~=Enum["KeyCode"]["Unknown"]then
              playerGui["Text"]=(tostring(localPlayer["KeyCode"])):gsub("Enum.KeyCode.","")task.spawn(function()
                wait(.1)playerLevel=localPlayer["KeyCode"]teleportService="KeyCode"
              end
              )
            end
            players:Disconnect()
          end
          )
        end
        )
        (game:GetService("UserInputService"))["InputBegan"]:Connect(function(players)
          if playerLevel==players["UserInputType"]or playerLevel==players["KeyCode"]then
            lighting(playerLevel)
          end
        end
        )
      end
      function character.CreateBox(players,localPlayer)
        local rootPart=tostring(players["Title"])or ""local replicatedStorage=tostring(players["Placeholder"])or ""local playerLevel=players["Default"]or false local teleportService=players["Number"]or false local lighting=localPlayer or function()
        end
        local enemies=Instance["new"]("Frame")local virtualInput=Instance["new"]("UICorner")local virtualUser=Instance["new"]("Frame")local playerTeam=Instance["new"]("UICorner")local runService=Instance["new"]("TextLabel")local stats=Instance["new"]("Frame")local energyValue=Instance["new"]("UICorner")local playersService=Instance["new"]("TextBox")local playerGui=Instance["new"]("Frame")local localPlayerAlt=Instance["new"]("UICorner")enemies["Name"]="BoxFrame"enemies["Parent"]=tweenService enemies["BackgroundColor3"]=Color3["fromRGB"](60,60,60)enemies["BackgroundTransparency"]=1.0 enemies["Position"]=UDim2["new"](0,0,.208333328,0)enemies["Size"]=UDim2["new"](1,0,0,60)virtualInput["CornerRadius"]=UDim["new"](0,4)virtualInput["Name"]="BoxCorner"virtualInput["Parent"]=enemies virtualUser["Name"]="Background1"virtualUser["Parent"]=enemies virtualUser["AnchorPoint"]=Vector2["new"](.5,.5)virtualUser["Position"]=UDim2["new"](.5,0,.5,0)virtualUser["Size"]=UDim2["new"](1,-10,1,0)virtualUser["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]virtualUser["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]playerTeam["CornerRadius"]=UDim["new"](0,4)playerTeam["Name"]="ButtonCorner"playerTeam["Parent"]=virtualUser runService["Name"]="TextColor"runService["Parent"]=virtualUser runService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)runService["BackgroundTransparency"]=1.0 runService["Position"]=UDim2["new"](0,10,0,0)runService["Size"]=UDim2["new"](1,-10,.5,0)runService["Font"]=Enum["Font"]["GothamBlack"]runService["Text"]=rootPart runService["TextSize"]=14.0 runService["TextXAlignment"]=Enum["TextXAlignment"]["Left"]runService["TextColor3"]=dz["UIColor"]["Text Color"]stats["Name"]="Background2"stats["Parent"]=virtualUser stats["AnchorPoint"]=Vector2["new"](1,.5)stats["ClipsDescendants"]=true stats["Position"]=UDim2["new"](1,-5,0,40)stats["Size"]=UDim2["new"](1,-10,0,25)stats["BackgroundColor3"]=dz["UIColor"]["Background 2 Color"]energyValue["CornerRadius"]=UDim["new"](0,4)energyValue["Name"]="ButtonCorner"energyValue["Parent"]=stats playersService["Name"]="TextColorPlaceholder"playersService["Parent"]=stats playersService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playersService["BackgroundTransparency"]=1.0 playersService["Position"]=UDim2["new"](0,5,0,0)playersService["Size"]=UDim2["new"](1,-5,1,0)playersService["Font"]=Enum["Font"]["GothamBold"]playersService["PlaceholderText"]=replicatedStorage playersService["Text"]=""playersService["TextSize"]=14.0 playersService["TextXAlignment"]=Enum["TextXAlignment"]["Left"]playersService["PlaceholderColor3"]=dz["UIColor"]["Placeholder Text Color"]playersService["TextColor3"]=dz["UIColor"]["Text Color"]playerGui["Name"]="TextNSBoxLineeeee"playerGui["Parent"]=stats playerGui["BackgroundTransparency"]=1.0 playerGui["Position"]=UDim2["new"](0,0,1,-2)playerGui["Size"]=UDim2["new"](1,0,0,6)playerGui["BackgroundColor3"]=dz["UIColor"]["Box Highlight Color"]localPlayerAlt["CornerRadius"]=UDim["new"](1,0)localPlayerAlt["Parent"]=playerGui playersService["Focused"]:Connect(function()
          (Iz:Create(playerGui,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["BackgroundTransparency"]=0})):Play()
        end
        )if teleportService then
          (playersService:GetPropertyChangedSignal("Text")):Connect(function()
            if tonumber(playersService["Text"])then
            else
              playersService["PlaceholderText"]=replicatedStorage playersService["Text"]=""
            end
          end
          )
        end
        playersService["FocusLost"]:Connect(function()
          (Iz:Create(playerGui,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["BackgroundTransparency"]=1})):Play()if playersService["Text"]~=""then
            lighting(playersService["Text"])
          end
        end
        )local backpack={}if playerLevel then
          playersService["Text"]=playerLevel lighting(playerLevel)
        end
        function backpack.SetValue(players)
          playersService["Text"]=players lighting(players)
        end
        table["insert"](dz["listfunction"][tweenService],{["Type"]="Box",["Name"]=rootPart,["Call"]=function()
          enemies["Visible"]=true
        end
        })table["insert"](wz[tweenService],enemies)return backpack
      end
      function character.CreateSlider(players,localPlayer)
        local rootPart=tostring(players["Title"])or ""local replicatedStorage=tonumber(players["Min"])or 0 local playerLevel=tonumber(players["Max"])or 100 local teleportService=players["Precise"]or false local lighting=tonumber(players["Default"])or 0 local enemies=localPlayer or function()
        end
        local virtualInput=400 local virtualUser=enemies or function()
        end
        local playerTeam=Instance["new"]("Frame")local runService=Instance["new"]("UICorner")local stats=Instance["new"]("Frame")local energyValue=Instance["new"]("UICorner")local playersService=Instance["new"]("TextLabel")local playerGui=Instance["new"]("Frame")local localPlayerAlt=Instance["new"]("TextButton")local backpack=Instance["new"]("UICorner")local character=Instance["new"]("Frame")local U=Instance["new"]("UICorner")local C=Instance["new"]("Frame")local v=Instance["new"]("UICorner")local m=Instance["new"]("TextBox")playerTeam["Name"]=rootPart.."buda"playerTeam["Parent"]=tweenService playerTeam["BackgroundColor3"]=Color3["fromRGB"](60,60,60)playerTeam["BackgroundTransparency"]=1.0 playerTeam["Position"]=UDim2["new"](0,0,.208333328,0)playerTeam["Size"]=UDim2["new"](1,0,0,50)runService["CornerRadius"]=UDim["new"](0,4)runService["Name"]="SliderCorner"runService["Parent"]=playerTeam stats["Name"]="Background1"stats["Parent"]=playerTeam stats["AnchorPoint"]=Vector2["new"](.5,.5)stats["Position"]=UDim2["new"](.5,0,.5,0)stats["Size"]=UDim2["new"](1,-10,1,0)stats["BackgroundColor3"]=dz["UIColor"]["Background 1 Color"]stats["BackgroundTransparency"]=dz["UIColor"]["Background 1 Transparency"]energyValue["CornerRadius"]=UDim["new"](0,4)energyValue["Name"]="SliderBGCorner"energyValue["Parent"]=stats playersService["Name"]="TextColor"playersService["Parent"]=stats playersService["BackgroundColor3"]=Color3["fromRGB"](230,230,230)playersService["BackgroundTransparency"]=1.0 playersService["Position"]=UDim2["new"](0,10,0,0)playersService["Size"]=UDim2["new"](1,-10,0,25)playersService["Font"]=Enum["Font"]["GothamBlack"]playersService["Text"]=rootPart playersService["TextSize"]=14.0 playersService["RichText"]=true playersService["TextXAlignment"]=Enum["TextXAlignment"]["Left"]playersService["TextColor3"]=dz["UIColor"]["Text Color"]playerGui["Name"]="SliderBar"playerGui["Parent"]=playerTeam playerGui["AnchorPoint"]=Vector2["new"](.5,.5)playerGui["Position"]=UDim2["new"](.5,0,.5,14)playerGui["Size"]=UDim2["new"](0,400,0,6)playerGui["BackgroundColor3"]=dz["UIColor"]["Background 2 Color"]localPlayerAlt["Name"]="SliderButton "localPlayerAlt["Parent"]=playerGui localPlayerAlt["BackgroundColor3"]=Color3["fromRGB"](230,230,230)localPlayerAlt["BackgroundTransparency"]=1.0 localPlayerAlt["Size"]=UDim2["new"](1,0,1,0)localPlayerAlt["Font"]=Enum["Font"]["GothamBold"]localPlayerAlt["Text"]=""localPlayerAlt["TextColor3"]=Color3["fromRGB"](230,230,230)localPlayerAlt["TextSize"]=14.0 backpack["CornerRadius"]=UDim["new"](1,0)backpack["Name"]="SliderBarCorner"backpack["Parent"]=playerGui character["Name"]="Bar"character["BorderSizePixel"]=0 character["Parent"]=playerGui character["Size"]=UDim2["new"](0,0,1,0)character["BackgroundColor3"]=dz["UIColor"]["Slider Line Color"]U["CornerRadius"]=UDim["new"](1,0)U["Name"]="BarCorner"U["Parent"]=character C["Name"]="Background2"C["Parent"]=playerTeam C["AnchorPoint"]=Vector2["new"](1,0)C["Position"]=UDim2["new"](1,-10,0,5)C["Size"]=UDim2["new"](0,150,0,25)C["BackgroundColor3"]=dz["UIColor"]["Background 2 Color"]v["CornerRadius"]=UDim["new"](0,4)v["Name"]="Sliderbox"v["Parent"]=C m["Name"]="TextColor"m["Parent"]=C m["BackgroundColor3"]=Color3["fromRGB"](230,230,230)m["BackgroundTransparency"]=1.0 m["Size"]=UDim2["new"](1,0,1,0)m["Font"]=Enum["Font"]["GothamBold"]m["Text"]=""m["TextSize"]=14.0 m["TextColor3"]=dz["UIColor"]["Text Color"]localPlayerAlt["MouseEnter"]:Connect(function()
          (Iz:Create(character,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["BackgroundColor3"]=dz["UIColor"]["Slider Highlight Color"]})):Play()
        end
        )localPlayerAlt["MouseLeave"]:Connect(function()
          (Iz:Create(character,TweenInfo["new"](dz["UIColor"]["Tween Animation 2 Speed"]),{["BackgroundColor3"]=dz["UIColor"]["Slider Line Color"]})):Play()
        end
        )local y=function(players)
          m["Text"]=players virtualUser(tonumber(players))
        end
        if lighting then
          if lighting<=replicatedStorage then
            lighting=replicatedStorage
          elseif  lighting>=playerLevel then
            lighting=playerLevel
          end
          character["Size"]=UDim2["new"](1-(playerLevel-lighting)/(playerLevel-replicatedStorage),0,0,6)y(lighting)
        end
        local b=false local c local H=0 local S=0 local function o(players)
          if players["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or players["UserInputType"]==Enum["UserInputType"]["Touch"]then
            S=tick()players["Changed"]:Connect(function()
              if players["UserInputState"]==Enum["UserInputState"]["End"]then
                b=false S=0
              end
            end
            )
          end
        end
        local function Z(players)
          if players["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or players["UserInputType"]==Enum["UserInputType"]["Touch"]then
            b=false S=0
          end
        end
        local function T(players)
          if players["UserInputType"]==Enum["UserInputType"]["MouseMovement"]or players["UserInputType"]==Enum["UserInputType"]["Touch"]then
            c=players
          end
        end
        localPlayerAlt["InputBegan"]:Connect(o)localPlayerAlt["InputEnded"]:Connect(Z)localPlayerAlt["InputChanged"]:Connect(T)Nz["RenderStepped"]:Connect(function()
          if S>0 and(tick()-S>=H and not b)then
            b=true
          end
          if b and c then
            local players=teleportService and tonumber(string["format"]("%.1f",((tonumber(playerLevel)-tonumber(replicatedStorage))/virtualInput)*character["AbsoluteSize"]["X"]+tonumber(replicatedStorage)))or math["floor"](((tonumber(playerLevel)-tonumber(replicatedStorage))/virtualInput)*character["AbsoluteSize"]["X"]+tonumber(replicatedStorage))pcall(function()
              y(players)
            end
            )character["Size"]=UDim2["new"](0,math["clamp"](c["Position"]["X"]-character["AbsolutePosition"]["X"],0,virtualInput),0,6)
          end
        end
        )local function k(players)
          if tonumber(players)<=replicatedStorage then
            character["Size"]=UDim2["new"](0,0*virtualInput,0,6)y(replicatedStorage)
          elseif  tonumber(players)>=playerLevel then
            character["Size"]=UDim2["new"](0,(playerLevel/playerLevel)*virtualInput,0,6)y(playerLevel)
          else
            character["Size"]=UDim2["new"](1-(playerLevel-players)/(playerLevel-replicatedStorage),0,0,6)y(players)
          end
        end
        m["FocusLost"]:Connect(function()
          k(m["Text"])
        end
        )local L={}function L.SetValue(players)
          k(players)
        end
        table["insert"](dz["listfunction"][tweenService],{["Type"]="Slider",["Name"]=rootPart,["Call"]=function()
          playerTeam["Visible"]=true
        end
        })table["insert"](wz[tweenService],playerTeam)return L
      end
      return character
    end
    return S
  end
  az=function()
    for players,localPlayer in pairs(playerTeam:GetChildren())do
      if not localPlayer:IsA("UIListLayout")then
        localPlayer["Visible"]=true
      end
    end
    for players,localPlayer in pairs(energyValue:GetChildren())do
      if not localPlayer:IsA("UIPageLayout")and not localPlayer:IsA("UICorner")then
        localPlayer["Visible"]=true
      end
    end
    for players,localPlayer in pairs(wz)do
      players["Visible"]=true for players,localPlayer in pairs(localPlayer)do
        localPlayer["Visible"]=true
      end
    end
  end
  (j:GetPropertyChangedSignal("Text")):Connect(function()
    local players=j["Text"]if players==""then
      az()
    else
      for players,localPlayer in pairs(wz)do
        players["Visible"]=false for players,localPlayer in pairs(localPlayer)do
          localPlayer["Visible"]=false
        end
      end
      for players,localPlayer in pairs(playerTeam:GetChildren())do
        if not localPlayer:IsA("UIListLayout")then
          localPlayer["Visible"]=false
        end
      end
      for players,localPlayer in pairs(energyValue:GetChildren())do
        if not localPlayer:IsA("UIPageLayout")and not localPlayer:IsA("UICorner")then
          localPlayer["Visible"]=false
        end
      end
      for localPlayer,rootPart in pairs(dz["listfunction"])do
        for rootPart,replicatedStorage in pairs(rootPart)do
          if string["find"](replicatedStorage["Name"]:lower(),players:lower())then
            if replicatedStorage["Call"]then
              replicatedStorage["Call"]()
            end
            local players=dz["listtab"][localPlayer]if players then
              players[1]["Visible"]=true players[2]["Visible"]=true players[3]["Visible"]=true local localPlayer=dz["UIColor"]["Tween Animation 1 Speed"]playersService["TweenTime"]=0 playersService:JumpTo(players[2])task["wait"]()playersService["TweenTime"]=localPlayer
            end
          end
        end
      end
    end
  end
  )return V
end
local Cz=Kz["CreateMain"]({["Desc"]=""})local vz=Cz["T"]({["Page_Name"]="Farm"
["Page_Title"]="Farm"})local mz=Cz["T"]({["Page_Name"]="Config",["Page_Title"]="Config"})local yz=Cz["T"]({["Page_Name"]="Fighting Style",["Page_Title"]="Fighting Style"})local bz=Cz["T"]({["Page_Name"]="Items Farm"
["Page_Title"]="Items Farm"})local cz=Cz["T"]({["Page_Name"]="Sea Events"
["Page_Title"]="Sea Events"})local Hz=Cz["T"]({["Page_Name"]="Mirage + RaceV4"
["Page_Title"]="Mirage + RaceV4"})local Sz=Cz["T"]({["Page_Name"]="Drago Dojo"
["Page_Title"]="Drago Dojo"})local oz=Cz["T"]({["Page_Name"]="Prehistoric",["Page_Title"]="Prehistoric"})local Zz=Cz["T"]({["Page_Name"]="Raid"
["Page_Title"]="Raid"})local Tz=Cz["T"]({["Page_Name"]="Combat PVP",["Page_Title"]="Combat PVP"})local kz=Cz["T"]({["Page_Name"]="Teleport"
["Page_Title"]="Teleport"})local Lz=Cz["T"]({["Page_Name"]="Fruits"
["Page_Title"]="Fruits"})local Pz=Cz["T"]({["Page_Name"]="Shop"
["Page_Title"]="Shop"})local jz=Cz["T"]({["Page_Name"]="Misc",["Page_Title"]="Misc"})local Gz=vz["CreateSection"]("Farm")Gz["CreateToggle"]({["Title"]="Auto Farm Level",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Level"]=players
end
})function CheckHasQuest(players)
  QuestGui=playerGui["Main"]["Quest"]if not QuestGui then
    return false
  end
  QuestTitle=QuestGui:FindFirstChild("Container")and QuestGui["Container"]:FindFirstChild("QuestTitle")if not QuestTitle then
    return false
  end
  if QuestGui["Visible"]==true then
    if QuestTitle["Title"]["Text"]:find(players)then
      return true
    else
      return false
    end
  else
    return false
  end
end
task.spawn(function()
  while task["wait"](.1)do
    if _G["Level"]then
      pcall(function()
        HRP=character and character:FindFirstChild("HumanoidRootPart")if not HRP then
          return
        end
        if(game:GetService("Players"))["LocalPlayer"]["Data"]["Level"]["Value"]<=2599 then
          if not CheckHasQuest(NameMon)then
            (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")wait(1)CheckQuest()_tp(CFrameQuest)if(HRP["Position"]-CFrameQuest["Position"])["Magnitude"]<=2 then
              task["wait"](2)
              (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("StartQuest",NameQuest,LevelQuest)task["wait"](1)_tp(CFrameMon)
            end
          else
            CheckQuest()if game["Workspace"]["Enemies"]:FindFirstChild(Mon)then
              for players,localPlayer in pairs(game["Workspace"]["Enemies"]:GetChildren())do
                if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Humanoid")and(localPlayer["Humanoid"]["Health"]>0 and localPlayer["Name"]==Mon))then
                  if CheckHasQuest(NameMon)then
                    repeat
                      task["wait"]()f["Kill"](localPlayer,_G["Level"])
                    until
                    not _G["Level"]or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]or not CheckHasQuest(NameMon)
                  else
                    (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
                  end
                end
              end
            else
              _tp(CFrameMon)
            end
          end
        elseif (game:GetService("Players"))["LocalPlayer"]["Data"]["Level"]["Value"]>=2600 then
          if localPlayerAlt:GetAttribute("CurrentLocation")=="Submerged Island"or localPlayerAlt:GetAttribute("CurrentLocation")=="Sealed Cavern"then
            if not CheckHasQuest(NameMon)then
              (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")wait(1)CheckQuest()_tp(CFrameQuest)if(HRP["Position"]-CFrameQuest["Position"])["Magnitude"]<=2 then
                task["wait"](2)
                (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("StartQuest",NameQuest,LevelQuest)task["wait"](1)_tp(CFrameMon)
              end
            else
              CheckQuest()if game["Workspace"]["Enemies"]:FindFirstChild(Mon)then
                for players,localPlayer in pairs(game["Workspace"]["Enemies"]:GetChildren())do
                  if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Humanoid")and(localPlayer["Humanoid"]["Health"]>0 and localPlayer["Name"]==Mon))then
                    if CheckHasQuest(NameMon)then
                      repeat
                        task["wait"]()f["Kill"](localPlayer,_G["Level"])
                      until
                      not _G["Level"]or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]or not CheckHasQuest(NameMon)
                    else
                      (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
                    end
                  end
                end
              else
                _tp(CFrameMon)
              end
            end
          elseif  localPlayerAlt:GetAttribute("CurrentLocation")~="Submerged Island"and localPlayerAlt:GetAttribute("CurrentLocation")~="Sealed Cavern"then
            if World3 then
              submarineCF=CFrame["new"](-16269.4121,24.7584076,1371.70752,-0.999348342,-0.00479344372,.0357791297,-0.00262145093,.998164296,.0605080314,-0.036003489,.0603748076,-0.997526407)_tp(submarineCF)if(HRP["Position"]-submarineCF["Position"])["Magnitude"]<=5 then
                local players={"TravelToSubmergedIsland"}
                ((game:GetService("ReplicatedStorage"))["Modules"]["Net"]:FindFirstChild("RF/SubmarineWorkerSpeak")):InvokeServer(unpack(players))
              end
            end
          end
        end
      end
      )
    end
  end
end
)Gz["CreateToggle"]({["Title"]="Auto Travel Dressrosa",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["TravelDres"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["TravelDres"]then
        if localPlayer["Data"]["Level"]["Value"]>=700 then
          if workspace["Map"]["Ice"]["Door"]["CanCollide"]==true and workspace["Map"]["Ice"]["Door"]["Transparency"]==0 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("DressrosaQuestProgress","Detective")EquipWeapon("Key")repeat
              wait(0.1)_tp(CFrame["new"](1347.7124,37.3751602,-1325.6488))
            until
            not _G["TravelDres"]or rootPart["Position"]==(CFrame["new"](1347.7124,37.3751602,-1325.6488))["Position"]
          elseif  workspace["Map"]["Ice"]["Door"]["CanCollide"]==false and workspace["Map"]["Ice"]["Door"]["Transparency"]==1 then
            if enemies:FindFirstChild("Ice Admiral")then
              for players,localPlayer in pairs(enemies:GetChildren())do
                if localPlayer["Name"]=="Ice Admiral"and f["Alive"](localPlayer)then
                  repeat
                    task["wait"]()f["Kill"](localPlayer,_G["TravelDres"])
                  until
                  _G["TravelDres"]==false or localPlayer["Humanoid"]["Health"]<=0 replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                end
              end
            else
              _tp(CFrame["new"](1347.7124,37.3751602,-1325.6488))
            end
          else
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
          end
        end
      end
    end
    )
  end
end
)Gz["CreateToggle"]({["Title"]="Auto Zou Quest"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Zou"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AutoZou"]then
        if localPlayer["Data"]["Level"]["Value"]>=1500 then
          if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress","Bartilo")==3 then
            if(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"]~=nil then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TravelZou")if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress","Check")==0 then
                local players=GetConnectionEnemies("rip_indra")if players then
                  repeat
                    wait()f["Kill"](players,_G["AutoZou"])
                  until
                  not _G["AutoZou"]or not players["Parent"]or players["Humanoid"]["Health"]<=0 Check=2 repeat
                    wait()replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TravelZou")
                  until
                  Check==1
                else
                  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","ZQuestProgress","Check")wait(.1)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","ZQuestProgress","Begin")
                end
              elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress","Check")==1 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TravelZou")
              else
                local players=GetConnectionEnemies("Don Swan")if players then
                  repeat
                    wait()f["Kill"](players,_G["AutoZou"])
                  until
                  not _G["AutoZou"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
                else
                  repeat
                    wait()_tp(CFrame["new"](2288.802,15.1870775,863.034607))
                  until
                  not _G["AutoZou"]or rootPart["Position"]==(CFrame["new"](2288.802,15.1870775,863.034607))["Position"]if rootPart["CFrame"]==CFrame["new"](2288.802,15.1870775,863.034607)then
                    notween(CFrame["new"](2288.802,15.1870775,863.034607))
                  end
                end
              end
            else
              if(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"]==nil then
                TabelDevilFruitStore={}TabelDevilFruitOpen={}for players,localPlayer in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventoryFruits"))do
                  for players,localPlayer in pairs(localPlayer)do
                    if players=="Name"then
                      table["insert"](TabelDevilFruitStore,localPlayer)
                    end
                  end
                end
                for players,localPlayer in next,(game["ReplicatedStorage"]:WaitForChild("Remotes"))["CommF_"]:InvokeServer("GetFruits")do
                  if localPlayer["Price"]>=1000000 then
                    table["insert"](TabelDevilFruitOpen,localPlayer["Name"])
                  end
                end
                for players,rootPart in pairs(TabelDevilFruitOpen)do
                  for players,playerLevel in pairs(TabelDevilFruitStore)do
                    if rootPart==playerLevel and(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"]==nil then
                      if not localPlayer["Backpack"]:FindFirstChild(playerLevel)then
                        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","LoadFruit",playerLevel)
                      else
                        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TalkTrevor","1")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TalkTrevor","2")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TalkTrevor","3")
                      end
                    end
                  end
                end
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TalkTrevor","1")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TalkTrevor","2")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("F_","TalkTrevor","3")
              end
            end
          else
            if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress","Bartilo")==0 then
              if string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Swan Pirates")and(string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"50")and localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true)then
                local players=GetConnectionEnemies("Swan Pirate")if players then
                  pcall(function()
                    repeat
                      wait()f["Kill"](players,_G["AutoZou"])
                    until
                    not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["AutoZou"]==false or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
                  end
                  )
                else
                  _tp(CFrame["new"](1057.92761,137.614319,1242.08069))
                end
              else
                _tp(CFrame["new"](-456.28952,73.0200958,299.895966))
              end
            elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress","Bartilo")==1 then
              local players=GetConnectionEnemies("Jeremy")if players then
                repeat
                  wait()f["Kill"](players,_G["AutoZou"])
                until
                not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["AutoZou"]==false
              else
                _tp(CFrame["new"](2099.88159,448.931,648.997375))
              end
            elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress","Bartilo")==2 then
              repeat
                wait()_tp(CFrame["new"](-1836,11,1714))
              until
              not _G["AutoZou"]or rootPart["Position"]==(CFrame["new"](-1836,11,1714))["Position"]if rootPart["CFrame"]==CFrame["new"](-1836,11,1714)then
                notween(CFrame["new"](-1836,11,1714))
              end
              notween(CFrame["new"](-1850.49329,13.1789551,1750.89685))wait(.1)notween(CFrame["new"](-1858.87305,19.3777466,1712.01807))wait(.1)notween(CFrame["new"](-1803.94324,16.5789185,1750.89685))wait(.1)notween(CFrame["new"](-1858.55835,16.8604317,1724.79541))wait(.1)notween(CFrame["new"](-1869.54224,15.987854,1681.00659))wait(.1)notween(CFrame["new"](-1800.0979,16.4978027,1684.52368))wait(.1)notween(CFrame["new"](-1819.26343,14.795166,1717.90625))wait(.1)notween(CFrame["new"](-1813.51843,14.8604736,1724.79541))
            end
          end
        end
      end
    end
    )
  end
end
)local qz=vz["CreateSection"]("Miscellanea / Quest")qz["CreateToggle"]({["Title"]="Auto Farm Nearest"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoFarmNear"]=players
end
})task.spawn(function()
  while wait()do
    pcall(function()
      if _G["AutoFarmNear"]then
        for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
          if localPlayer:FindFirstChild("Humanoid")or localPlayer:FindFirstChild("HumanoidRootPart")then
            if localPlayer["Humanoid"]["Health"]>0 then
              repeat
                wait()f["Kill"](localPlayer,_G["AutoFarmNear"])
              until
              not _G["AutoFarmNear"]or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0
            end
          end
        end
      end
    end
    )
  end
end
)qz["CreateToggle"]({["Title"]="Auto Factory Raid",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["FactoryRaids"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AutoFactory"]then
        local players=GetConnectionEnemies("Core")if players then
          repeat
            wait()EquipWeapon(_G["SelectWeapon"])_tp(CFrame["new"](448.46756,199.356781,-441.389252))
          until
          players["Humanoid"]["Health"]<=0 or _G["AutoFactory"]==false
        else
          _tp(CFrame["new"](448.46756,199.356781,-441.389252))
        end
      end
    end
    )
  end
end
)qz["CreateToggle"]({["Title"]="Auto Pirate Raid",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoRaidCastle"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoRaidCastle"]then
      pcall(function()
        local players=CFrame["new"](-5496.17432,313.768921,-2841.53027,.924894512,7.37058015e-009,.380223751,3.5881019e-008,1,-1.06665446e-007,-0.380223751,1.12297109e-007,.924894512)if((CFrame["new"](-5539.3115234375,313.80053710938,-2972.3723144531))["Position"]-rootPart["Position"])["Magnitude"]<=500 then
          for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
            if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Humanoid")and localPlayer["Humanoid"]["Health"]>0)then
              if localPlayer["Name"]then
                if(localPlayer["HumanoidRootPart"]["Position"]-rootPart["Position"])["Magnitude"]<=2000 then
                  repeat
                    wait()f["Kill"](localPlayer,_G["AutoRaidCastle"])
                  until
                  not _G["AutoRaidCastle"]or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0 or not workspace["Enemies"]:FindFirstChild(localPlayer["Name"])
                end
              end
            end
          end
        else
          local localPlayer={"Galley Pirate"
          "Galley Captain"
          "Raider"
          "Mercenary"
          "Vampire"
          "Zombie","Snow Trooper","Winter Warrior"
          "Lab Subordinate","Horned Warrior"
          "Magma Ninja","Lava Pirate"
          "Ship Deckhand"
          "Ship Engineer","Ship Steward"
          "Ship Officer","Arctic Warrior"
          "Snow Lurker","Sea Soldier","Water Fighter"}for rootPart=1,#localPlayer,1 do
            if replicatedStorage:FindFirstChild(localPlayer[rootPart])then
              for rootPart,replicatedStorage in pairs(replicatedStorage:GetChildren())do
                if table["find"](localPlayer,replicatedStorage["Name"])then
                  _tp(players)
                end
              end
            end
          end
        end
      end
      )
    end
  end
end
)qz["CreateDropdown"]({["Title"]="Choose Material"
["Description"]="",["Values"]=v,["Default"]=nil,["Multi"]=false
["Callback"]=function(players)
  (getgenv())["SelectMaterial"]=players
end
})qz["CreateToggle"]({["Title"]="Auto Materials"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  (getgenv())["AutoMaterial"]=players
end
})task.spawn(function()
  local function players(players,localPlayer)
    if players:FindFirstChild("Humanoid")and(players:FindFirstChild("HumanoidRootPart")and players["Humanoid"]["Health"]>0)then
      if players["Name"]==localPlayer then
        repeat
          wait()f["Kill"](players,(getgenv())["AutoMaterial"])
        until
        not(getgenv())["AutoMaterial"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
      end
    end
  end
  local function localPlayer()
    for players,localPlayer in pairs((game:GetService("Workspace"))["_WorldOrigin"]["EnemySpawns"]:GetChildren())do
      for players,rootPart in ipairs(MMon)do
        if string["find"](localPlayer["Name"],rootPart)then
          if(game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"]-localPlayer["Position"])["Magnitude"]>=10 then
            _tp(localPlayer["CFrame"]*Pos)
          end
        end
      end
    end
  end
  while wait()do
    if(getgenv())["AutoMaterial"]then
      pcall(function()
        if(getgenv())["SelectMaterial"]then
          MaterialMon((getgenv())["SelectMaterial"])_tp(MPos)
        end
        for localPlayer,rootPart in ipairs(MMon)do
          for localPlayer,replicatedStorage in pairs(workspace["Enemies"]:GetChildren())do
            players(replicatedStorage,rootPart)
          end
        end
        localPlayer()
      end
      )
    end
  end
end
)qz["CreateToggle"]({["Title"]="Auto Farm Ectoplasm"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AutoEctoplasm"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AutoEctoplasm"]then
        local players={"Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior"}
        local localPlayer=GetConnectionEnemies(players)if f["Alive"](localPlayer)then
          repeat
            wait()f["Kill"](localPlayer,_G["AutoEctoplasm"])
          until
          not _G["AutoEctoplasm"]or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0
        else
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923.21252441406,126.9760055542,32852.83203125))
        end
      end
    end
    )
  end
end
)qz["CreateToggle"]({["Title"]="Auto Done Bartilo Quest"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Bartilo_Quest"]=players
end
})task.spawn(function()
  while wait(.1)do
    pcall(function()
      if _G["Bartilo_Quest"]and playerLevel>=850 then
        local players=localPlayer["PlayerGui"]["Main"]["Quest"]if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress","Bartilo")==0 then
          _G["Level"]=false if players["Visible"]==true then
            local rootPart=GetConnectionEnemies("Swan Pirate")if rootPart then
              local rootPart=GetConnectionEnemies(X)if rootPart then
                repeat
                  task["wait"]()if not string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Swan Pirate")then
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
                  else
                    f["Kill"](rootPart,_G["Bartilo_Quest"])
                  end
                until
                _G["Bartilo_Quest"]==false or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0 or players["Visible"]==false or not rootPart:FindFirstChild("HumanoidRootPart")
              end
            else
              _tp(CFrame["nee"](970.369446,142.653198,1217.3667,.162079468,-4.85452638e-008,-0.986777723,1.03357589e-008,1,-4.74980872e-008,.986777723,-2.50063148e-009,.162079468))
            end
          else
            repeat
              wait()_tp(CFrame["new"](-461.533203,72.3478546,300.311096,.050853312,0,-0.998706102,0,1,0,.998706102,0,.050853312))
            until
            ((CFrame["new"](-461.533203,72.3478546,300.311096,.050853312,0,-0.998706102,0,1,0,.998706102,0,.050853312))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=20 or _G["Bartilo_Quest"]==false if((CFrame["new"](-461.533203,72.3478546,300.311096,.050853312,0,-0.998706102,0,1,0,.998706102,0,.050853312))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=1 then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("StartQuest","BartiloQuest",1)
            end
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress","Bartilo")==1 then
          _G["Level"]=false local localPlayer=GetConnectionEnemies("Jeremy")if localPlayer then
            repeat
              task["wait"]()f["Kill"](localPlayer,_G["Bartilo_Quest"])
            until
            _G["Bartilo_Quest"]==false or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0 or players["Visible"]==false or not localPlayer:FindFirstChild("HumanoidRootPart")
          else
            _tp(CFrame["new"](2158.97412,449.056244,705.411682,-0.754199564,-4.17389057e-009,-0.656645238,-4.47752875e-008,1,4.50709301e-008,.656645238,6.3393955e-008,-0.754199564))
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress","Bartilo")==2 then
          repeat
            wait()_tp(CFrame["new"](-1830.83972,10.5578213,1680.60229,.979988456,-2.02152783e-008,-0.199054286,2.20792113e-008,1,7.1442483e-009,.199054286,-1.13962431e-008,.979988456))
          until
          ((CFrame["new"](-1830.83972,10.5578213,1680.60229,.979988456,-2.02152783e-008,-0.199054286,2.20792113e-008,1,7.1442483e-009,.199054286,-1.13962431e-008,.979988456))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=1 or _G["Bartilo_Quest"]==false wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate1"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate2"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate3"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate4"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate5"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate6"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate7"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Dressrosa"]["BartiloPlates"]["Plate8"]["CFrame"]wait(2.5)
        end
      end
    end
    )
  end
end
)qz["CreateToggle"]({["Title"]="Auto Done Citizen Quest"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["CitizenQuest"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["CitizenQuest"]then
        if playerLevel>=1800 and(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress"))["KilledBandits"]==false then
          if string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Forest Pirate")and(string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"50")and localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true)then
            local players=GetConnectionEnemies("Forest Pirate")if players then
              repeat
                task["wait"]()f["Kill"](players,_G["CitizenQuest"])
              until
              _G["CitizenQuest"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0 or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
            else
              _tp(CFrame["new"](-13206.452148438,425.89199829102,-7964.5537109375))
            end
          else
            _tp(CFrame["new"](-12443.8671875,332.40396118164,-7675.4892578125))if(Vector3["new"](-12443.8671875,332.40396118164,-7675.4892578125)-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=30 then
              wait(1.5)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("StartQuest","CitizenQuest",1)
            end
          end
        elseif  playerLevel>=1800 and(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress"))["KilledBoss"]==false then
          local players=GetConnectionEnemies("Captain Elephant")if localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]and(string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Captain Elephant")and localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true)then
            if players then
              repeat
                task["wait"]()f["Kill"](players,_G["CitizenQuest"])
              until
              _G["CitizenQuest"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
            else
              _tp(CFrame["new"](-13374.889648438,421.27752685547,-8225.208984375))
            end
          else
            _tp(CFrame["new"](-12443.8671875,332.40396118164,-7675.4892578125))if((CFrame["new"](-12443.8671875,332.40396118164,-7675.4892578125))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=4 then
              wait(1.5)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress","Citizen")
            end
          end
        elseif  playerLevel>=1800 and replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress","Citizen")==2 then
          _tp(CFrame["new"](-12512.138671875,340.39279174805,-9872.8203125))
        end
      end
    end
    )
  end
end
)qz["CreateToggle"]({["Title"]="Auto Training Dummy"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["DummyMan"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["DummyMan"]then
      pcall(function()
        if localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false then
          local players={[1]="ArenaTrainer"}
          ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(players))
        else
          local players=GetConnectionEnemies("Training Dummy")if players then
            repeat
              wait()f["Kill"](players,_G["DummyMan"])
            until
            not _G["DummyMan"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
          else
            _tp(CFrame["new"](3688.0051269531,12.746943473816,170.20953369141))
          end
        end
      end
      )
    end
  end
end
)qz["CreateToggle"]({["Title"]="Auto Collect Berry",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["AutoBerry"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoBerry"]then
      local players=game:GetService("CollectionService")local localPlayer=game:GetService("Players")local rootPart=localPlayer["LocalPlayer"]local replicatedStorage=players:GetTagged("BerryBush")local playerLevel,teleportService=math["huge"]for players=1,#replicatedStorage,1 do
        local localPlayer=replicatedStorage[players]for players,rootPart in pairs(localPlayer:GetAttributes())do
          if not BerryArray or table["find"](BerryArray,rootPart)then
            _tp(localPlayer["Parent"]:GetPivot())for players=1,#replicatedStorage,1 do
              local localPlayer=replicatedStorage[players]for players,localPlayer in pairs(localPlayer:GetChildren())do
                if not BerryArray or table["find"](BerryArray,localPlayer)then
                  _tp(localPlayer["WorldPivot"])fireproximityprompt(localPlayer["ProximityPrompt"],math["huge"])
                end
              end
            end
          end
        end
      end
    end
  end
end
)qz["CreateToggle"]({["Title"]="Auto Collect Chest",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoFarmChest"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoFarmChest"]then
      pcall(function()
        local players=game:GetService("CollectionService")local localPlayer=game:GetService("Players")local rootPart=localPlayer["LocalPlayer"]local replicatedStorage=rootPart["Character"]or rootPart["CharacterAdded"]:Wait()if not replicatedStorage then
          return
        end
        local playerLevel=(replicatedStorage:GetPivot())["Position"]local teleportService=players:GetTagged("_ChestTagged")local tweenService,lighting=math["huge"],nil for players=1,#teleportService,1 do
          local localPlayer=teleportService[players]local rootPart=((localPlayer:GetPivot())["Position"]-playerLevel)["Magnitude"]if not SelectedIsland or localPlayer:IsDescendantOf(SelectedIsland)then
            if not localPlayer:GetAttribute("IsDisabled")and rootPart<tweenService then
              tweenService=rootPart lighting=localPlayer
            end
          end
        end
        if lighting then
          _tp(lighting:GetPivot())
        end
      end
      )
    end
  end
end
)local Vz=vz["CreateSection"]("Miscellanea / Fishing")local tz=game:GetService("ReplicatedStorage")local Xz=game:GetService("Players")local hz=game:GetService("Workspace")local Bz=Xz["LocalPlayer"]local lz=Bz["Character"]or Bz["CharacterAdded"]:Wait()local pz=lz:WaitForChild("HumanoidRootPart")local Ez=tz:WaitForChild("Modules")local ez=Ez:WaitForChild("Net")local Oz=tz:WaitForChild("FishReplicated")local fz=Oz:FindFirstChild("FishingRequest")local sz=Oz:FindFirstChild("FishingRemote")local xz=Oz:WaitForChild("FishingClient")local Jz=require(xz:WaitForChild("Config"))local YF=tz:WaitForChild("Util")local dF=require(YF:WaitForChild("GetWaterHeightAtLocation"))local RF=ez:FindFirstChild("RF/JobsRemoteFunction")local QF=ez:FindFirstChild("RF/Craft")local function rF()
  if not RF then
    return
  end
  pcall(function()
    RF:InvokeServer("FishingNPC","FirstTimeFreeRod")RF:InvokeServer("LoadItem",_G["SelectedRod"],{"Gear"})
  end
  )task["wait"](.5)local players=Bz:FindFirstChild("Data")and Bz["Data"]:FindFirstChild("FishingData")if players and table["find"]({"None"
  nil},players:GetAttribute("SelectedBait"))then
    local players,localPlayer=pcall(function()
      return RF:InvokeServer("getInventory")
    end
    )if players and localPlayer then
      for players,localPlayer in pairs(localPlayer)do
        if localPlayer["Type"]=="Bait"and localPlayer["Name"]==_G["SelectedBait"]then
          RF:InvokeServer("LoadItem",localPlayer["Name"],{"Usables"})return
        end
      end
    end
    if QF then
      QF:InvokeServer("Craft",_G["SelectedBait"])task["wait"](2)
    end
  end
end
local function aF()
  local players=lz:FindFirstChildOfClass("Humanoid")if not lz:FindFirstChild(_G["SelectedRod"])then
    local localPlayer=Bz["Backpack"]:FindFirstChild(_G["SelectedRod"])if localPlayer and players then
      players:EquipTool(localPlayer)task["wait"](.3)
    end
  end
end
local function wF()
  local players=dF(pz["Position"])local localPlayer=pz["CFrame"]["LookVector"]*(Jz["Rod"]["MaxLaunchDistance"]or 50)local rootPart,replicatedStorage=hz:FindPartOnRayWithIgnoreList(Ray["new"](lz["Head"]["Position"],localPlayer),{lz
  hz["Characters"],hz["Enemies"]})if not replicatedStorage then
    return pz["Position"]+Vector3["new"](0,-10,0)
  end
  local playerLevel,teleportService=hz:FindPartOnRayWithIgnoreList(Ray["new"](replicatedStorage+Vector3["new"](0,3,0),Vector3["new"](0,-500,0)),{lz
  hz["Characters"],hz["Enemies"]})if teleportService and teleportService["Y"]<players then
    return Vector3["new"](replicatedStorage["X"],math["max"](teleportService["Y"],players),replicatedStorage["Z"])
  end
  return replicatedStorage
end
local function FF()
  if not fz then
    return
  end
  pcall(function()
    fz:InvokeServer("StartCasting")task["wait"](.7)fz:InvokeServer("CastLineAtLocation",wF(),100,true)
  end
  )
end
local function MF()
  if not fz then
    return
  end
  pcall(function()
    fz:InvokeServer("Catching",1)task["wait"](.25)fz:InvokeServer("Catch",1)
  end
  )
end
local KF={"Fishing Rod","Gold Rod","Shark Rod","Shell Rod","Treasure Rod"}local nF={"Basic Bait","Kelp Bait",
"Good Bait",
"Abyssal Bait",
"Frozen Bait",
"Epic Bait","Carnivore Bait"}Vz["CreateDropdown"]({["Title"]="Select Fishing Rod",["Description"]="",["Values"]=KF,["Default"]="Fishing Rod",["Callback"]=function(players)
  _G["SelectedRod"]=players
end
})Vz["CreateDropdown"]({["Title"]="Select Bait"
["Description"]=""
["Values"]=nF
["Default"]="Basic Bait"
["Callback"]=function(players)
  _G["SelectedBait"]=players
end
})Vz["CreateToggle"]({["Title"]="Auto Fishing"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AutoFishing"]=players if V then
    task["spawn"](function()
      while _G["AutoFishing"]do
        task["wait"](.3)pcall(function()
          lz=Bz["Character"]or Bz["CharacterAdded"]:Wait()pz=lz:WaitForChild("HumanoidRootPart")rF()aF()local players=lz:FindFirstChild(_G["SelectedRod"])if players then
            local localPlayer=players:GetAttribute("ServerState")or players:GetAttribute("State")if localPlayer=="Biting"then
              MF()
            elseif  localPlayer=="ReeledIn"or localPlayer=="Idle"or not localPlayer then
              FF()
            end
          else
            print(", [WARN] Rod not found in Character")
          end
        end
        )
      end
    end
    )
  end
end
})local IF=vz["CreateSection"]("Miscellanea / Mastery")local WF={"Cake",
"Bone"}IF["CreateDropdown"]({["Title"]="Choose Island"
["Description"]="",["Values"]=WF,["Default"]="Cake",["Callback"]=function(players)
  SelectIsland=players
end
})IF["CreateToggle"]({["Title"]="Auto Mastery Fruits"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["FarmMastery_Dev"]=players
end
})task.spawn(function()
  runService["RenderStepped"]:Connect(function()
    pcall(function()
      if _G["FarmMastery_Dev"]or _G["FarmMastery_G"]or _G["FarmMastery_S"]then
        for players,localPlayer in pairs(localPlayer["PlayerGui"]["Notifications"]:GetChildren())do
          if localPlayer["Name"]=="NotificationTemplate"then
            if string["find"](localPlayer["Text"],"Skill locked!")then
              localPlayer:Destroy()
            end
          end
        end
      end
    end
    )
  end
  )
end
)task.spawn(function()
  while wait(T)do
    if _G["FarmMastery_Dev"]then
      pcall(function()
        if SelectIsland=="Cake"then
          local players=GetConnectionEnemies(p)if players then
            HealthM=(players["Humanoid"]["MaxHealth"]*70)/100 repeat
              wait()MousePos=players["HumanoidRootPart"]["Position"]f["Mas"](players,_G["FarmMastery_Dev"])
            until
            _G["FarmMastery_Dev"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]
          else
            _tp(CFrame["new"](-1943.6765136719,251.50956726074,-12337.880859375))
          end
        elseif  SelectIsland=="Bone"then
          local players=GetConnectionEnemies(E)if players then
            HealthM=(players["Humanoid"]["MaxHealth"]*70)/100 repeat
              wait()MousePos=players["HumanoidRootPart"]["Position"]f["Mas"](players,_G["FarmMastery_Dev"])
            until
            _G["FarmMastery_Dev"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]
          else
            _tp(CFrame["new"](-9495.6806640625,453.58624267578,5977.3486328125))
          end
        end
      end
      )
    end
  end
end
)IF["CreateToggle"]({["Title"]="Auto Mastery Gun"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["FarmMastery_G"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["FarmMastery_G"]then
      pcall(function()
        if SelectIsland=="Cake"then
          local players=GetConnectionEnemies(p)if players then
            HealthM=(players["Humanoid"]["MaxHealth"]*70)/100 repeat
              wait()MousePos=players["HumanoidRootPart"]["Position"]f["Masgun"](players,_G["FarmMastery_G"])local rootPart=replicatedStorage:FindFirstChild("Modules")local playerLevel=rootPart:FindFirstChild("Net")local teleportService=playerLevel:FindFirstChild("RE/ShootGunEvent")if(localPlayer["Character"]:FindFirstChildOfClass("Tool"))["ToolTip"]~="Gun"then
                return
              end
              if localPlayer["Character"]:FindFirstChildOfClass("Tool")and(localPlayer["Character"]:FindFirstChildOfClass("Tool"))["Name"]=="Skull Guitar"then
                b=true
                (localPlayer["Character"]:FindFirstChildOfClass("Tool"))["RemoteEvent"]:FireServer("TAP",MousePos)if _G["FarmMastery_G"]then
                  virtualInput:SendMouseButtonEvent(0,0,0,true,game,1)wait(.05)virtualInput:SendMouseButtonEvent(0,0,0,false,game,1)wait(.05)
                end
              elseif  localPlayer["Character"]:FindFirstChildOfClass("Tool")and(localPlayer["Character"]:FindFirstChildOfClass("Tool"))["Name"]~="Skull Guitar"then
                b=false teleportService:FireServer(MousePos,{players["HumanoidRootPart"]})if _G["FarmMastery_G"]then
                  virtualInput:SendMouseButtonEvent(0,0,0,true,game,1)wait(.05)virtualInput:SendMouseButtonEvent(0,0,0,false,game,1)wait(.05)
                end
              end
            until
            _G["FarmMastery_G"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]b=false
          else
            _tp(CFrame["new"](-1943.6765136719,251.50956726074,-12337.880859375))
          end
        elseif  SelectIsland=="Bone"then
          local players=GetConnectionEnemies(E)if players then
            HealthM=(players["Humanoid"]["MaxHealth"]*70)/100 repeat
              wait()MousePos=players["HumanoidRootPart"]["Position"]f["Masgun"](players,_G["FarmMastery_G"])local rootPart=replicatedStorage:FindFirstChild("Modules")local playerLevel=rootPart:FindFirstChild("Net")local teleportService=playerLevel:FindFirstChild("RE/ShootGunEvent")if(localPlayer["Character"]:FindFirstChildOfClass("Tool"))["ToolTip"]~="Gun"then
                return
              end
              if localPlayer["Character"]:FindFirstChildOfClass("Tool")and(localPlayer["Character"]:FindFirstChildOfClass("Tool"))["Name"]=="Skull Guitar"then
                b=true
                (localPlayer["Character"]:FindFirstChildOfClass("Tool"))["RemoteEvent"]:FireServer("TAP",MousePos)if _G["FarmMastery_G"]then
                  virtualInput:SendMouseButtonEvent(0,0,0,true,game,1)wait(.05)virtualInput:SendMouseButtonEvent(0,0,0,false,game,1)wait(.05)
                end
              elseif  localPlayer["Character"]:FindFirstChildOfClass("Tool")and(localPlayer["Character"]:FindFirstChildOfClass("Tool"))["Name"]~="Skull Guitar"then
                b=false teleportService:FireServer(MousePos,{players["HumanoidRootPart"]})if _G["FarmMastery_G"]then
                  virtualInput:SendMouseButtonEvent(0,0,0,true,game,1)wait(.05)virtualInput:SendMouseButtonEvent(0,0,0,false,game,1)wait(.05)
                end
              end
            until
            _G["FarmMastery_G"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]b=false
          else
            _tp(CFrame["new"](-9495.6806640625,453.58624267578,5977.3486328125))
          end
        end
      end
      )
    end
  end
end
)IF["CreateToggle"]({["Title"]="Auto Mastery All Sword",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["FarmMastery_S"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["FarmMastery_S"]then
        if SelectIsland=="Cake"then
          for players,localPlayer in next,replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")do
            if type(localPlayer)=="table"then
              if localPlayer["Type"]=="Sword"then
                SwordName=localPlayer["Name"]if tonumber(localPlayer["Mastery"])>=1 or tonumber(localPlayer["Mastery"])<=599 then
                  local players=GetConnectionEnemies(p)if GetBP(SwordName)then
                    if players then
                      repeat
                        wait()f["Sword"](players,_G["FarmMastery_S"])
                      until
                      _G["FarmMastery_S"]==false or not players["Parent"]or players["Humanoid"]["Healh"]<=0
                    else
                      _tp(CFrame["new"](-1943.6765136719,251.50956726074,-12337.880859375))
                    end
                  else
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem",SwordName)
                  end
                elseif  tonumber(localPlayer["Mastery"])>=600 then
                  if GetBP(SwordName)then
                    return nil
                  else
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem",SwordName)
                  end
                end
                break
              end
            end
          end
        elseif  SelectIsland=="Bone"then
          for players,localPlayer in next,replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")do
            if type(localPlayer)=="table"then
              if localPlayer["Type"]=="Sword"then
                SwordName=localPlayer["Name"]if tonumber(localPlayer["Mastery"])>=1 or tonumber(localPlayer["Mastery"])<=599 then
                  local players=GetConnectionEnemies(E)if GetBP(SwordName)then
                    if players then
                      repeat
                        wait()f["Sword"](players,_G["FarmMastery_S"])
                      until
                      _G["FarmMastery_S"]==false or not players["Parent"]or players["Humanoid"]["Healh"]<=0
                    else
                      _tp(CFrame["new"](-9495.6806640625,453.58624267578,5977.3486328125))
                    end
                  else
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem",SwordName)
                  end
                elseif  tonumber(localPlayer["Mastery"])>=600 then
                  if GetBP(SwordName)then
                    return nil
                  else
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem",SwordName)
                  end
                end
                break
              end
            end
          end
        end
      end
    end
    )
  end
end
)local NF=vz["CreateSection"]("Generals Quests / Items")local DF=NF["CreateLabel"]({["Title"]="Cake Princes :",["Content"]=""})local AF=NF["CreateLabel"]({["Title"]=" Bones :",["Content"]=""})task.spawn(function()
  while wait(.2)do
    pcall(function()
      local players=string["match"](replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner"),"%d+")if players then
        DF:SetDesc(" Killed : "..500-players)
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(.2)do
    pcall(function()
      AF:SetDesc(" Bones : "..GetM("Bones"))
    end
    )
  end
end
)NF["CreateToggle"]({["Title"]="Auto Cake Prince",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_Cake_Prince"]=players
end
})task.spawn(function()
  while wait()do
    if _G["Auto_Cake_Prince"]then
      pcall(function()
        local players=game["Players"]["LocalPlayer"]local localPlayer=players["Character"]and players["Character"]:FindFirstChild("HumanoidRootPart")local rootPart=players["PlayerGui"]["Main"]["Quest"]local replicatedStorage=workspace["Enemies"]local playerLevel=workspace["Map"]["CakeLoaf"]["BigMirror"]if not localPlayer then
          return
        end
        if not playerLevel:FindFirstChild("Other")then
          _tp(CFrame["new"](-2077,252,-12373))
        end
        if playerLevel["Other"]["Transparency"]==0 or replicatedStorage:FindFirstChild("Cake Prince")then
          local players=GetConnectionEnemies("Cake Prince")if players then
            repeat
              wait()f["Kill2"](players,_G["Auto_Cake_Prince"])
            until
            not _G["Auto_Cake_Prince"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
          else
            if playerLevel["Other"]["Transparency"]==0 and((CFrame["new"](-1990.67,4533,-14973.67))["Position"]-localPlayer["Position"])["Magnitude"]>=2000 then
              _tp(CFrame["new"](-2151.82,149.32,-12404.91))
            end
          end
        else
          local players={"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}
          local replicatedStorage=GetConnectionEnemies(players)if replicatedStorage then
            if _G["AcceptQuestC"]and not rootPart["Visible"]then
              local players=CFrame["new"](-1927.92,37.8,-12842.54)_tp(players)while(players["Position"]-localPlayer["Position"])["Magnitude"]>50 do
                wait(.2)
              end
              local rootPart=math["random"](1,4)local replicatedStorage={[1]={"StartQuest"
              "CakeQuest2"
              2}
              [2]={"StartQuest"
              "CakeQuest2"
              1},[3]={"StartQuest"
              "CakeQuest1",1},[4]={"StartQuest","CakeQuest1",2}}local playerLevel,teleportService=pcall(function()
                return game["ReplicatedStorage"]["Remotes"]["CommF_"]:InvokeServer(unpack(replicatedStorage[rootPart]))
              end
              )
            end
            repeat
              wait()f["Kill"](replicatedStorage,_G["Auto_Cake_Prince"])
            until
            not _G["Auto_Cake_Prince"]or replicatedStorage["Humanoid"]["Health"]<=0 or playerLevel["Other"]["Transparency"]==0 or _G["AcceptQuestC"]and not rootPart["Visible"]
          else
            _tp(CFrame["new"](-2077,252,-12373))
          end
        end
      end
      )
    end
  end
end
)NF["CreateToggle"]({["Title"]="Auto Bones",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoFarm_Bone"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoFarm_Bone"]then
      pcall(function()
        local players=game["Players"]["LocalPlayer"]local localPlayer=players["Character"]and players["Character"]:FindFirstChild("HumanoidRootPart")local rootPart=players["PlayerGui"]["Main"]["Quest"]local replicatedStorage={"Reborn Skeleton","Living Zombie"
        "Demonic Soul"
        "Posessed Mummy"}if not localPlayer then
          return
        end
        local playerLevel=GetConnectionEnemies(replicatedStorage)if playerLevel then
          if _G["AcceptQuestC"]and not rootPart["Visible"]then
            local players=CFrame["new"](-9516.99316,172.017181,6078.46533,0,0,-1,0,1,0,1,0,0)_tp(players)while(players["Position"]-localPlayer["Position"])["Magnitude"]>50 do
              wait(.2)
            end
            local rootPart=math["random"](1,4)local replicatedStorage={[1]={"StartQuest"
            "HauntedQuest2",2},[2]={"StartQuest","HauntedQuest2"
            1},[3]={"StartQuest","HauntedQuest1"
            1}
            [4]={"StartQuest"
            "HauntedQuest1",2}}local playerLevel,teleportService=pcall(function()
              return game["ReplicatedStorage"]["Remotes"]["CommF_"]:InvokeServer(unpack(replicatedStorage[rootPart]))
            end
            )
          end
          repeat
            task["wait"]()f["Kill"](playerLevel,_G["AutoFarm_Bone"])
          until
          not _G["AutoFarm_Bone"]or playerLevel["Humanoid"]["Health"]<=0 or not playerLevel["Parent"]or _G["AcceptQuestC"]and not rootPart["Visible"]
        else
          _tp(CFrame["new"](-9495.6806640625,453.58624267578,5977.3486328125))
        end
      end
      )
    end
  end
end
)NF["CreateToggle"]({["Title"]="Accept Quests"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["AcceptQuestC"]=players
end
})NF["CreateToggle"]({["Title"]="Auto Farm Mirror",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AutoMiror"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoMiror"]then
      pcall(function()
        local players=GetConnectionEnemies("Dough King")if players then
          repeat
            wait()f["Kill"](players,_G["AutoMiror"])
          until
          not _G["AutoMiror"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-1943.6765136719,251.50956726074,-12337.880859375))
        end
      end
      )
    end
  end
end
)NF["CreateToggle"]({["Title"]="Auto Soul Reaper [Fully]",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["AutoHytHallow"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoHytHallow"]then
      pcall(function()
        local players=GetConnectionEnemies("Soul Reaper")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoHytHallow"])
          until
          players["Humanoid"]["Health"]<=0 or _G["AutoHytHallow"]==false
        else
          if not GetBP("Hallow Essence")then
            repeat
              task["wait"](.1)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones","Buy",1,1)
            until
            _G["AutoHytHallow"]==false or GetBP("Hallow Essence")
          else
            repeat
              wait(.1)_tp(CFrame["new"](-8932.322265625,146.83154296875,6062.55078125))
            until
            _G["AutoHytHallow"]==false or localPlayer["Character"]["HumanoidRootPart"]["CFrame"]==CFrame["new"](-8932.322265625,146.83154296875,6062.55078125)EquipWeapon("Hallow Essence")
          end
        end
      end
      )
    end
  end
end
)NF["CreateToggle"]({["Title"]="Auto Random Bones"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Auto_Random_Bone"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Random_Bone"]then
        repeat
          task["wait"]()replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones","Buy",1,1)
        until
        not _G["Auto_Random_Bone"]
      end
    end
    )
  end
end
)NF["CreateToggle"]({["Title"]="Auto Try Luck Gravestone",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["TryLucky"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["TryLucky"]then
      local players=CFrame["new"](-8761.3154296875,164.85829162598,6161.1567382813)if localPlayer["Character"]["HumanoidRootPart"]["CFrame"]~=players then
        _tp(CFrame["new"](-8761.3154296875,164.85829162598,6161.1567382813))
      elseif  localPlayer["Character"]["HumanoidRootPart"]["CFrame"]==players then
        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent",1)
      end
    end
  end
end
NF["CreateToggle"]({["Title"]="Auto Pray Gravestone", ["Description"]="", ["Default"]=false, ["Callback"]=function(players) ... end})
)task.spawn(function()
  while wait(T)do
    if _G["Praying"]then
      local players=CFrame["new"](-8761.3154296875,164.85829162598,6161.1567382813)if localPlayer["Character"]["HumanoidRootPart"]["CFrame"]~=players then
        _tp(CFrame["new"](-8761.3154296875,164.85829162598,6161.1567382813))
      elseif  localPlayer["Character"]["HumanoidRootPart"]["CFrame"]==players then
        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent",2)
      end
    end
  end
end
)local uF=vz["CreateSection"]("Unlocked Dungeon")uF["CreateToggle"]({["Title"]="Auto Unlock Dough Dungeon"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["Doughv2"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["Doughv2"]then
      pcall(function()
        if not workspace["Map"]["CakeLoaf"]:FindFirstChild("RedDoor")then
          if GetBP("Red Key")then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakeScientist","Check")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc","Check")
          end
        elseif  workspace["Map"]["CakeLoaf"]:FindFirstChild("RedDoor")then
          if GetBP("Red Key")then
            repeat
              wait()_tp(CFrame["new"](-2681.97998,64.3921585,-12853.7363,.149007782,-1.87902192e-008,.98883605,3.60619588e-008,1,1.35681812e-008,-0.98883605,3.36376011e-008,.149007782))
            until
            not _G["Doughv2"]or(localPlayer["Character"]["HumanoidRootPart"]["CFrame"]-CFrame["new"](-2681.97998,64.3921585,-12853.7363,.149007782,-1.87902192e-008,.98883605,3.60619588e-008,1,1.35681812e-008,-0.98883605,3.36376011e-008,.149007782))["Magnitude"]<=5 EquipWeapon("Red Key")
          end
        elseif  GetConnectionEnemies("Dough King")then
          local players=GetConnectionEnemies("Dough King")if players then
            repeat
              wait()f["Kill"](players,_G["Doughv2"])
            until
            not _G["Doughv2"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
          else
            _tp(CFrame["new"](-1943.6765136719,251.50956726074,-12337.880859375))
          end
        end
        if GetBP("Sweet Chalice")then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner",true)_G["AutoMiror"]=true
        else
          _G["AutoMiror"]=false
        end
        if GetBP("God's Chalice")and GetM("Conjured Cocoa")>=10 then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("SweetChaliceNpc")
        end
        if not localPlayer["Backpack"]:FindFirstChild("God's Chalice")or localPlayer["Character"]:FindFirstChild("God's Chalice")then
          _G["FarmEliteHunt"]=true
        else
          _G["FarmEliteHunt"]=false
        end
        if GetM("Conjured Cocoa")<=10 then
          local players={"Cocoa Warrior","Chocolate Bar Battler"}
          local localPlayer=GetConnectionEnemies(players)if localPlayer then
            repeat
              wait()f["Kill"](localPlayer,_G["Doughv2"])
            until
            _G["Doughv2"]==false or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0
          else
            _tp(CFrame["new"](402.71890258789,81.060501098633,-12259.54296875))
          end
        end
      end
      )
    end
  end
end
)uF["CreateToggle"]({["Title"]="Auto Unlock Phoenix Dungeon",
["Description"]="",
["Default"]=false,["Callback"]=function(players)
  _G["AutoPhoenixF"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["AutoPhoenixF"]then
      pcall(function()
        if GetBP("Bird-Bird: Phoenix")then
          if localPlayer["Backpack"]:FindFirstChild(localPlayer["Data"]["DevilFruit"]["Value"])then
            if(localPlayer["Backpack"]:FindFirstChild(localPlayer["Data"]["DevilFruit"]["Value"]))["Level"]["Value"]>=400 then
              _tp(CFrame["new"](-2812.7670898438,254.80346679688,-12595.560546875))if((CFrame["new"](-2812.7670898438,254.80346679688,-12595.560546875))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("SickScientist","Check")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("SickScientist","Heal")
              end
            end
          elseif  localPlayer["Character"]:FindFirstChild(localPlayer["Data"]["DevilFruit"]["Value"])then
            if(localPlayer["Character"]:FindFirstChild(localPlayer["Data"]["DevilFruit"]["Value"]))["Level"]["Value"]>=400 then
              _tp(CFrame["new"](-2812.7670898438,254.80346679688,-12595.560546875))if((CFrame["new"](-2812.7670898438,254.80346679688,-12595.560546875))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("SickScientist","Check")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("SickScientist","Heal")
              end
            end
          end
        end
      end
      )
    end
  end
end
)local gF=vz["CreateSection"]("Buso/Aura Colours")gF["CreateToggle"]({["Title"]="Auto Teleport Barista Cousin",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Tp_MasterA"]=players
end
})task.spawn(function()
  while wait()do
    if _G["Tp_MasterA"]then
      pcall(function()
        for players,localPlayer in pairs(replicatedStorage["NPCs"]:GetChildren())do
          if localPlayer["Name"]=="Barista Cousin"then
            _tp(localPlayer["HumanoidRootPart"]["CFrame"])
          end
        end
      end
      )
    end
  end
end
)gF["CreateButton"]({["Title"]="Buy Buso Colors",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ColorsDealer","2")
end
})gF["CreateToggle"]({["Title"]="Auto Rainbow Colors",["Description"]="",
["Default"]=false,
["Callback"]=function(players)
  _G["Auto_Rainbow_Haki"]=players
end
})task.spawn(function()
  pcall(function()
    while wait(T)do
      if _G["Auto_Rainbow_Haki"]then
        if localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false then
          if _G["GetQFast"]then
            if localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("HornedMan","Bet")
            end
          else
            Rainbow1=CFrame["new"](-11892.0703125,930.57672119141,-8760.1591796875)if localPlayer["Character"]["HumanoidRootPart"]["CFrame"]~=Rainbow1 then
              _tp(Rainbow1)
            elseif  localPlayer["Character"]["HumanoidRootPart"]["CFrame"]==Rainbow1 then
              wait(1)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("HornedMan","Bet")
            end
          end
        elseif  localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true and string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Stone")then
          local players=GetConnectionEnemies("Stone")if players then
            repeat
              wait()f["Kill"](players,_G["Auto_Rainbow_Haki"])
            until
            _G["Auto_Rainbow_Haki"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
          else
            _tp(CFrame["new"](-1086.11621,38.8425903,6768.71436,.0231462717,-0.592676699,.805107772,2.03251839e-005,.805323839,.592835128,-0.999732077,-0.0137055516,.0186523199))
          end
        elseif  localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true and string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Hydra Leader")then
          local players=GetConnectionEnemies("Hydra Leader")if players then
            repeat
              task["wait"]()f["Kill"](players,_G["Auto_Rainbow_Haki"])
            until
            _G["Auto_Rainbow_Haki"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
          else
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](5643.4526367188,1013.0858154297,-340.51025390625))local players=Vector3["new"](5643.4526367188,1013.0858154297,-340.51025390625)local rootPart=CFrame["new"](5821.8979492188,1019.0950927734,-73.719230651855)if localPlayer["Character"]["HumanoidRootPart"]["CFrame"]["Position"]==players then
              _tp(rootPart)
            end
          end
        elseif  localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true and string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Kilo Admiral")then
          local players=GetConnectionEnemies("Kilo Admiral")if players then
            repeat
              task["wait"]()f["Kill"](players,_G["Auto_Rainbow_Haki"])
            until
            _G["Auto_Rainbow_Haki"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
          else
            _tp(CFrame["new"](2877.61743,423.558685,-7207.31006,-0.989591599,0,-0.143904909,0,1.00000012,0,.143904924,0,-0.989591479))
          end
        elseif  localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true and string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Captain Elephant")then
          local players=GetConnectionEnemies("Captain Elephant")if players then
            repeat
              task["wait"]()f["Kill"](players,_G["Auto_Rainbow_Haki"])
            until
            _G["Auto_Rainbow_Haki"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
          else
            local players=Vector3["new"](-12471.169921875,374.94024658203,-7551.677734375)local rootPart=CFrame["new"](-13376.7578125,433.28689575195,-8071.392578125)if localPlayer["Character"]["HumanoidRootPart"]["CFrame"]["Position"]~=players then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-12471.169921875,374.94024658203,-7551.677734375))
            elseif  localPlayer["Character"]["HumanoidRootPart"]["CFrame"]["Position"]==players then
              _tp(rootPart)
            end
          end
        elseif  localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true and string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Beautiful Pirate")then
          local players=GetConnectionEnemies("Captain Elephant")if players then
            repeat
              task["wait"]()f["Kill"](players,_G["Auto_Rainbow_Haki"])
            until
            _G["Auto_Rainbow_Haki"]==false or players["Humanoid"]["Health"]<=0 or not players["Parent"]or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
          else
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](5314.5463867188,22.562219619751,-127.06755065918))
          end
        end
      end
    end
  end
  )
end
)gF["CreateToggle"]({["Title"]="Accept Rainbow Quest Faster"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["GetQFast"]=players
end
})local zF=vz["CreateSection"]("Instinct / Observation")zF["CreateToggle"]({["Title"]="Auto Farm Observation"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["obsFarm"]=players
end
})task.spawn(function()
  while wait(.2)do
    pcall(function()
      if _G["obsFarm"]then
        replicatedStorage["Remotes"]["CommE"]:FireServer("Ken",true)if localPlayer:GetAttribute("KenDodgesLeft")==0 then
          c=false
        elseif  localPlayer:GetAttribute("KenDodgesLeft")>0 then
          replicatedStorage["Remotes"]["CommE"]:FireServer("Ken",true)c=true
        end
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(.2)do
    pcall(function()
      if _G["obsFarm"]then
        if World1 then
          if workspace["Enemies"]:FindFirstChild("Galley Captain")then
            if c then
              repeat
                wait()localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=(workspace["Enemies"]:FindFirstChild("Galley Captain"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](3,0,0)
              until
              _G["obsFarm"]==false or c==false
            else
              repeat
                wait()localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=(workspace["Enemies"]:FindFirstChild("Galley Captain"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,50,0)
              until
              _G["obsFarm"]==false or c
            end
          else
            _tp(CFrame["new"](5533.29785,88.1079102,4852.3916))
          end
        elseif  World2 then
          if workspace["Enemies"]:FindFirstChild("Lava Pirate")then
            if c then
              repeat
                wait()localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=(workspace["Enemies"]:FindFirstChild("Lava Pirate"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](3,0,0)
              until
              _G["obsFarm"]==false or c==false
            else
              repeat
                wait()localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=(workspace["Enemies"]:FindFirstChild("Lava Pirate"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,50,0)
              until
              _G["obsFarm"]==false or c
            end
          else
            _tp(CFrame["new"](-5478.39209,15.9775667,-5246.9126))
          end
        elseif  World3 then
          if workspace["Enemies"]:FindFirstChild("Venomous Assailant")then
            if c then
              repeat
                wait()_tp((workspace["Enemies"]:FindFirstChild("Venomous Assailant"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](3,0,0))
              until
              _G["obsFarm"]==false or c==false
            else
              repeat
                wait()_tp((workspace["Enemies"]:FindFirstChild("Venomous Assailant"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,50,0))
              until
              _G["obsFarm"]==false or c
            end
          else
            _tp(CFrame["new"](4530.3540039063,656.75695800781,-131.60952758789))
          end
        end
      end
    end
    )
  end
end
)zF["CreateToggle"]({["Title"]="Auto Observation V2"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["AutoKenVTWO"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoKenVTWO"]then
      pcall(function()
        local players=CFrame["new"](-12444.78515625,332.40396118164,-7673.1806640625)local rootPart="Kuy"local playerLevel=CFrame["new"](-10920.125,624.20275878906,-10266.995117188)local teleportService=CFrame["new"](-13277.568359375,370.34185791016,-7821.1572265625)local tweenService=CFrame["new"](-13493.12890625,318.89553833008,-8373.7919921875)if localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true and string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Defeat 50 Forest Pirates")then
          local players=GetConnectionEnemies("Forest Pirate")if players then
            repeat
              wait()f["Kill"](players,_G["AutoKenVTWO"])
            until
            not _G["AutoKenVTWO"]or players["Humanoid"]["Health"]<=0 or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
          else
            _tp(teleportService)
          end
        elseif  localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true then
          local players=GetConnectionEnemies("Captain Elephant")if players then
            repeat
              wait()f["Kill"](players,_G["AutoKenVTWO"])
            until
            not _G["AutoKenVTWO"]or players["Humanoid"]["Health"]<=0 or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false
          else
            _tp(tweenService)
          end
        elseif  localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress","Citizen")wait(.1)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("StartQuest","CitizenQuest",1)
        end
        if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress","Citizen")==2 then
          _tp(CFrame["new"](-12513.51953125,340.11373901367,-9873.048828125))
        end
        if not localPlayer["Backpack"]:FindFirstChild("Fruit Bowl")or not localPlayer["Character"]:FindFirstChild("Fruit Bowl")then
          if not GetBP("Fruit Bowl")then
            if not GetBP("Apple")then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-12471.169921875,374.94024658203,-7551.677734375))for players,rootPart in pairs(workspace:GetDescendants())do
                if rootPart["Name"]=="Apple"then
                  rootPart["Handle"]["CFrame"]=localPlayer["Character"]["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,1,10)wait()firetouchinterest(localPlayer["Character"]["HumanoidRootPart"],rootPart["Handle"],0)wait()
                end
              end
            elseif  not GetBP("Banana")then
              _tp(CFrame["new"](2286.0078125,73.133918762207,-7159.8090820312))for players,rootPart in pairs(workspace:GetDescendants())do
                if rootPart["Name"]=="Banana"then
                  rootPart["Handle"]["CFrame"]=localPlayer["Character"]["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,1,10)wait()firetouchinterest(localPlayer["Character"]["HumanoidRootPart"],rootPart["Handle"],0)wait()
                end
              end
            elseif  not GetBP("Pineapple")then
              _tp(CFrame["new"](-712.82727050781,98.577049255371,5711.9541015625))for players,rootPart in pairs(workspace:GetDescendants())do
                if rootPart["Name"]=="Pineapple"then
                  rootPart["Handle"]["CFrame"]=localPlayer["Character"]["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,1,10)wait()firetouchinterest(localPlayer["Character"]["HumanoidRootPart"],rootPart["Handle"],0)wait()
                end
              end
            end
          end
          if localPlayer["Backpack"]:FindFirstChild("Banana")and(localPlayer["Backpack"]:FindFirstChild("Apple")and localPlayer["Backpack"]:FindFirstChild("Pineapple"))or localPlayer:FindFirstChild("Banana")and(localPlayer:FindFirstChild("Apple")and localPlayer:FindFirstChild("Pineapple"))then
            repeat
              wait()_tp(players)
            until
            _G["AutoKenVTWO"]or localPlayer["Character"]["HumanoidRootPart"]["CFrame"]==players replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CitizenQuestProgress","Citizen")
          end
          if localPlayer["Backpack"]:FindFirstChild("Fruit Bowl")or localPlayer["Character"]:FindFirstChild("Fruit Bowl")then
            if localPlayer["Character"]["HumanoidRootPart"]["CFrame"]~=playerLevel then
              _tp(playerLevel)
            elseif  localPlayer["Character"]["HumanoidRootPart"]["CFrame"]==playerLevel then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("KenTalk2","Start")wait(.1)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("KenTalk2","Buy")
            end
          end
        end
      end
      )
    end
  end
end
)local iF=vz["CreateSection"]("Upgrade Races V3")iF["CreateToggle"]({["Title"]="Auto Upgrade Mink V3",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_Mink"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Mink"]then
        if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")~=2 then
          if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==0 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","2")
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==1 then
            if not localPlayer["Backpack"]:FindFirstChild("Flower 1")and not localPlayer["Character"]:FindFirstChild("Flower 1")then
              _tp(workspace["Flower1"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 2")and not localPlayer["Character"]:FindFirstChild("Flower 2")then
              _tp(workspace["Flower2"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 3")and not localPlayer["Character"]:FindFirstChild("Flower 3")then
              local players=GetConnectionEnemies("Swan Pirate")if players then
                repeat
                  wait()f["Kill"](players,_G["Auto_Mink"])
                until
                GetBP("Flower 3")or not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["Auto_Mink"]==false
              else
                _tp(CFrame["new"](980.09851074219,121.33129882812,1287.2093505859))
              end
            end
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==2 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","3")
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==0 then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","2")
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==1 then
          _G["AutoFarmChest"]=true
        else
          _G["AutoFarmChest"]=false
        end
      end
    end
    )
  end
end
)iF["CreateToggle"]({["Title"]="Auto Upgrade Human V3",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["Auto_Human"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Human"]then
        if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")~=-2 then
          if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==0 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","2")
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==1 then
            if not localPlayer["Backpack"]:FindFirstChild("Flower 1")and not localPlayer["Character"]:FindFirstChild("Flower 1")then
              _tp(workspace["Flower1"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 2")and not localPlayer["Character"]:FindFirstChild("Flower 2")then
              _tp(workspace["Flower2"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 3")and not localPlayer["Character"]:FindFirstChild("Flower 3")then
              local players=GetConnectionEnemies("Swan Pirate")if players then
                repeat
                  wait()f["Kill"](players,_G["Auto_Human"])
                until
                localPlayer["Backpack"]:FindFirstChild("Flower 3")or not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["Auto_Human"]==false
              else
                _tp(CFrame["new"](980.09851074219,121.33129882812,1287.2093505859))
              end
            end
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==2 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","3")
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==0 then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","2")
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==1 then
          local players=GetConnectionEnemies(B[1])if players then
            repeat
              wait()f["Kill"](players,_G["Auto_Human"])
            until
            players["Humanoid"]["Health"]<=0 or not players["Parent"]or not _G["Auto_Human"]
          else
            _tp(CFrame["new"](-2172.7399902344,103.32216644287,-4015.025390625))
          end
          local localPlayer=GetConnectionEnemies(B[2])if localPlayer then
            repeat
              wait()f["Kill"](localPlayer,_G["Auto_Human"])
            until
            localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]or not _G["Auto_Human"]
          else
            _tp(CFrame["new"](2006.9261474609,448.95666503906,853.98284912109))
          end
          local rootPart=GetConnectionEnemies(B[3])if rootPart then
            repeat
              wait()f["Kill"](rootPart,_G["Auto_Human"])
            until
            rootPart["Humanoid"]["Health"]<=0 or not rootPart["Parent"]or not _G["Auto_Human"]
          else
            _tp(CFrame["new"](-1576.7166748047,198.59265136719,13.724286079407))
          end
        end
      end
    end
    )
  end
end
)iF["CreateToggle"]({["Title"]="Auto Upgrade Skypiea V3",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Auto_Skypiea"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Skypiea"]then
        if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")~=-2 then
          if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==0 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","2")
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==1 then
            if not localPlayer["Backpack"]:FindFirstChild("Flower 1")and not localPlayer["Character"]:FindFirstChild("Flower 1")then
              _tp(workspace["Flower1"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 2")and not localPlayer["Character"]:FindFirstChild("Flower 2")then
              _tp(workspace["Flower2"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 3")and not localPlayer["Character"]:FindFirstChild("Flower 3")then
              local players=GetConnectionEnemies("Swan Pirate")if players then
                repeat
                  wait()f["Kill"](players,_G["Auto_Skypiea"])
                until
                localPlayer["Backpack"]:FindFirstChild("Flower 3")or not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["Auto_Skypiea"]==false
              else
                _tp(CFrame["new"](980.09851074219,121.33129882812,1287.2093505859))
              end
            end
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==2 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","3")
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==0 then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","2")
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==1 then
          for players,rootPart in pairs(game["Players"]:GetChildren())do
            if rootPart["Name"]~=localPlayer["Name"]and tostring(rootPart["Data"]["Race"]["Value"])=="Skypiea"then
              repeat
                task["wait"]()_tp((rootPart["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,8,0))*CFrame["Angles"](math["rad"](-45),0,0))
              until
              rootPart["Humanoid"]["Health"]<=0 or _G["Auto_Skypiea"]==false
            end
          end
        end
      end
    end
    )
  end
end
)iF["CreateToggle"]({["Title"]="Auto Upgrade FishMan V3"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Auto_Fish"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Fish"]then
        if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")~=-2 then
          if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==0 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","2")
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==1 then
            if not localPlayer["Backpack"]:FindFirstChild("Flower 1")and not localPlayer["Character"]:FindFirstChild("Flower 1")then
              _tp(workspace["Flower1"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 2")and not localPlayer["Character"]:FindFirstChild("Flower 2")then
              _tp(workspace["Flower2"]["CFrame"])
            elseif  not localPlayer["Backpack"]:FindFirstChild("Flower 3")and not localPlayer["Character"]:FindFirstChild("Flower 3")then
              local players=GetConnectionEnemies("Swan Pirate")if players then
                repeat
                  wait()f["Kill"](players,_G["Auto_Fish"])
                until
                localPlayer["Backpack"]:FindFirstChild("Flower 3")or not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["Auto_Fish"]==false
              else
                _tp(CFrame["new"](980.09851074219,121.33129882812,1287.2093505859))
              end
            end
          elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","1")==2 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist","3")
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==0 then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","2")
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad","1")==1 then
          warn("Sea Beast Soon")
        end
      end
    end
    )
  end
end
)local UF=vz["CreateSection"]("Dark Dragger + Valkyrie")UF["CreateToggle"]({["Title"]="Auto Valkyrie",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["AutoRipIngay"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AutoRipIngay"]then
        local players=GetConnectionEnemies("rip_indra")if not GetWP("Dark Dagger")or not GetIn("Valkyrie")and players then
          repeat
            wait()f["Kill"](players,_G["AutoRipIngay"])
          until
          not _G["AutoRipIngay"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-5097.93164,316.447021,-3142.66602,-0.405007899,-4.31682743e-008,.914313197,-1.90943332e-008,1,3.8755779e-008,-0.914313197,-1.76180437e-009,-0.405007899))wait(.1)_tp(CFrame["new"](-5344.822265625,423.98541259766,-2725.0930175781))
        end
      end
    end
    )
  end
end
)UF["CreateToggle"]({["Title"]="Auto Unlocked Puzzle",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["AutoUnHaki"]=players
end
})AuraSkin=function(players)
  local localPlayer={[1]={["StorageName"]=players
  ["Type"]="AuraSkin"
  ["Context"]="Equip"}}
  (((replicatedStorage:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer(unpack(localPlayer))
end
VaildColor=function(players)
  if players and players["BrickColor"]then
    return tostring(players["BrickColor"])=="Lime green"
  end
end
HakiCalculate=function(players)
  local localPlayer={["Really red"]="Pure Red"
  ["Oyster"]="Snow White",["Hot pink"]="Winter Sky"}if players and players["BrickColor"]then
    return localPlayer[tostring(players["BrickColor"])]
  end
end
task.spawn(function()
  while wait(T)do
    if _G["AutoUnHaki"]then
      pcall(function()
        local players=workspace["Map"]["Boat Castle"]:FindFirstChild("Summoner")if players and players:FindFirstChild("Circle")then
          for players,localPlayer in pairs((players:FindFirstChild("Circle")):GetChildren())do
            if localPlayer["Name"]=="Part"then
              local players=localPlayer:FindFirstChild("Part")if VaildColor(players)==false then
                AuraSkin(HakiCalculate(localPlayer))repeat
                  wait()_tp(localPlayer["CFrame"])
                until
                VaildColor(players)==true or not _G["AutoUnHaki"]
              end
            end
          end
        end
      end
      )
    end
  end
end
)local CF=mz["CreateSection"]("Settings / Configure")CF["CreateDropdown"]({["Title"]="Select Weapon",["Description"]=""
["Values"]={"Melee"
"Sword"
"Blox Fruit","Gun"},["Default"]="Melee",["Multi"]=false
["Callback"]=function(players)
  _G["ChooseWP"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["ChooseWP"]=="Melee"then
        for players,rootPart in pairs(localPlayer["Backpack"]:GetChildren())do
          if rootPart["ToolTip"]=="Melee"then
            if localPlayer["Backpack"]:FindFirstChild(tostring(rootPart["Name"]))then
              _G["SelectWeapon"]=rootPart["Name"]
            end
          end
        end
      elseif  _G["ChooseWP"]=="Sword"then
        for players,rootPart in pairs(localPlayer["Backpack"]:GetChildren())do
          if rootPart["ToolTip"]=="Sword"then
            if localPlayer["Backpack"]:FindFirstChild(tostring(rootPart["Name"]))then
              _G["SelectWeapon"]=rootPart["Name"]
            end
          end
        end
      elseif  _G["ChooseWP"]=="Gun"then
        for players,rootPart in pairs(localPlayer["Backpack"]:GetChildren())do
          if rootPart["ToolTip"]=="Gun"then
            if localPlayer["Backpack"]:FindFirstChild(tostring(rootPart["Name"]))then
              _G["SelectWeapon"]=rootPart["Name"]
            end
          end
        end
      elseif  _G["ChooseWP"]=="Blox Fruit"then
        for players,rootPart in pairs(localPlayer["Backpack"]:GetChildren())do
          if rootPart["ToolTip"]=="Blox Fruit"then
            if localPlayer["Backpack"]:FindFirstChild(tostring(rootPart["Name"]))then
              _G["SelectWeapon"]=rootPart["Name"]
            end
          end
        end
      end
    end
    )
  end
end
)CF["CreateToggle"]({["Title"]="Initialize Attack [M1/Melee/Sword]"
["Description"]=", [ Not Supported Gas M1 ]",["Default"]=true,["Callback"]=function(players)
  _G["Seriality"]=players
end
})CF["CreateToggle"]({["Title"]="Bring Mobs",["Description"]=""
["Default"]=true,["Callback"]=function(players)
  _B=players
end
})CF["CreateToggle"]({["Title"]="Auto Turn on Buso"
["Description"]=""
["Default"]=true,["Callback"]=function(players)
  Boud=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if Boud then
        local players={"HasBuso","Buso"}
        if not localPlayer["Character"]:FindFirstChild(players[1])then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer(players[2])
        end
      end
    end
    )
  end
end
)CF["CreateToggle"]({["Title"]="Auto Turn on Race V3",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["RaceClickAutov3"]=players
end
})CF["CreateToggle"]({["Title"]="Auto Turn on Race V4"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["RaceClickAutov4"]=players
end
})task.spawn(function()
  while wait(.2)do
    pcall(function()
      if _G["RaceClickAutov3"]then
        repeat
          replicatedStorage["Remotes"]["CommE"]:FireServer("ActivateAbility")wait(30)
        until
        not _G["RaceClickAutov3"]
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(.2)do
    pcall(function()
      if _G["RaceClickAutov4"]then
        if localPlayer["Character"]:FindFirstChild("RaceEnergy")then
          if(localPlayer["Character"]:FindFirstChild("RaceEnergy"))["Value"]==1 then
            Useskills("nil","Y")
          end
        end
      end
    end
    )
  end
end
)CF["CreateToggle"]({["Title"]="Auto Turn on Spin Position",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  RandomCFrame=players
end
})CF["CreateToggle"]({["Title"]="Turn on Bypass Teleport",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Bypass"]=players
end
})CF["CreateToggle"]({["Title"]="Panic Mode",["Description"]="turn on for safe ur health if low"
["Default"]=false,["Callback"]=function(players)
  _G["Safemode"]=players
end
})task.spawn(function()
  while task["wait"](T)do
    pcall(function()
      if _G["Safemode"]then
        local players=(localPlayer["Character"]["Humanoid"]["Health"]/localPlayer["Character"]["Humanoid"]["MaxHealth"])*100 if players<P then
          y=true _tp(rootPart["CFrame"]*CFrame["new"](0,500,0))
        else
          y=false
        end
      end
    end
    )
  end
end
)CF["CreateToggle"]({["Title"]="Anti AFK"
["Description"]="",["Default"]=true,["Callback"]=function(players)
  _G["AntiAFK"]=players
end
})localPlayer["Idled"]:connect(function()
  virtualUser:Button2Down(Vector2["new"](0,0),workspace["CurrentCamera"]["CFrame"])wait(1)virtualUser:Button2Up(Vector2["new"](0,0),workspace["CurrentCamera"]["CFrame"])
end
)CF["CreateToggle"]({["Title"]="Remove Hit VFX"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["DistroyHit"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["DistroyHit"]then
      pcall(function()
        local players={"SlashHit","CurvedRing","SwordSlash","SlashTail"}
        for players,localPlayer in pairs(workspace["_WorldOrigin"]:GetChildren())do
          if table["find"](__Effect,localPlayer["Name"])then
            localPlayer:Destroy()
          end
        end
      end
      )
    end
  end
end
)CF["CreateToggle"]({["Title"]="Remove Death & Respawned VFX"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  RDeath=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if RDeath then
        if replicatedStorage["Effect"]["Container"]:FindFirstChild("Death")then
          replicatedStorage["Effect"]["Container"]["Death"]:Destroy()
        end
        if replicatedStorage["Effect"]["Container"]:FindFirstChild("Respawn")then
          replicatedStorage["Effect"]["Container"]["Respawn"]:Destroy()
        end
      end
    end
    )
  end
end
)CF["CreateToggle"]({["Title"]="Disable Notify",["Description"]="",["Default"]=false
["Callback"]=function(players)
  RemoveDamage=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if RemoveDamage then
        replicatedStorage["Assets"]["GUI"]["DamageCounter"]["Enabled"]=false localPlayer["PlayerGui"]["Notifications"]["Enabled"]=false
      else
        replicatedStorage["Assets"]["GUI"]["DamageCounter"]["Enabled"]=true localPlayer["PlayerGui"]["Notifications"]["Enabled"]=true
      end
    end
    )
  end
end
)local vF=mz["CreateSection"]("Stats Upgrade")vF["CreateSlider"]({["Title"]="Stats Value",["Min"]=0,["Max"]=1000
["Default"]=10,["Precise"]=true},function(players)
  pSats=players
end
)vF["CreateToggle"]({["Title"]="Auto Melee",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_Melee"]=players
end
})vF["CreateToggle"]({["Title"]="Auto Swords",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_Sword"]=players
end
})vF["CreateToggle"]({["Title"]="Auto Gun"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["Auto_Gun"]=players
end
})vF["CreateToggle"]({["Title"]="Auto Blox Fruit"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_Blox"]=players
end
})vF["CreateToggle"]({["Title"]="Auto Defense",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_Defense"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Melee"]then
        statsSetings("Melee",pSats)
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Sword"]then
        statsSetings("Sword",pSats)
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Gun"]then
        statsSetings("Gun",pSats)
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_DevilFruit"]then
        statsSetings("Devil",pSats)
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Defense"]then
        statsSetings("Defense",pSats)
      end
    end
    )
  end
end
)local mF=yz["CreateSection"]("Fighting Melee Styles")mF["CreateToggle"]({["Title"]="Auto Superhuman",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_SuperHuman"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_SuperHuman"]then
        local players=localPlayer["Data"]["Beli"]["Value"]local rootPart=localPlayer["Data"]["Fragments"]["Value"]if localPlayer:FindFirstChild("WeaponAssetCache")then
          if not GetBP("Superhuman")then
            if not GetBP("Black Leg")then
              if players>=150000 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
              end
            elseif  GetBP("Black Leg")and(GetBP("Black Leg"))["Level"]["Value"]<299 then
              _G["Level"]=true
            elseif  GetBP("Black Leg")and(GetBP("Black Leg"))["Level"]["Value"]>=300 then
              _G["Level"]=false
            end
            if not GetBP("Electro")then
              if players>=500000 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
              end
            elseif  GetBP("Electro")and(GetBP("Electro"))["Level"]["Value"]<299 then
              _G["Level"]=true
            elseif  GetBP("Electro")and(GetBP("Electro"))["Level"]["Value"]>=300 then
              _G["Level"]=false
            end
            if not GetBP("Fishman Karate")then
              if players>=750000 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
              end
            elseif  GetBP("Fishman Karate")and(GetBP("Fishman Karate"))["Level"]["Value"]<299 then
              _G["Level"]=true
            elseif  GetBP("Fishman Karate")and(GetBP("Fishman Karate"))["Level"]["Value"]>=300 then
              _G["Level"]=false
            end
            if not GetBP("Dragon Claw")then
              if rootPart>=1500 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward","DragonClaw","2")
              end
            elseif  GetBP("Dragon Claw")and(GetBP("Dragon Claw"))["Level"]["Value"]<299 then
              _G["Level"]=true
            elseif  GetBP("Dragon Claw")and(GetBP("Dragon Claw"))["Level"]["Value"]>=300 then
              _G["Level"]=false
            end
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
          end
        end
      end
    end
    )
  end
end
)mF["CreateToggle"]({["Title"]="Auto DeathStep",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["AutoDeathStep"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoDeathStep"]then
      pcall(function()
        if localPlayer:FindFirstChild("WeaponAssetCache")then
          if not GetBP("Death Step")then
            if not GetBP("Black Leg")then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
            end
            if GetBP("Black Leg")and(GetBP("Black Leg"))["Level"]["Value"]>=400 then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")_G["Level"]=false
            elseif  GetBP("Black Leg")and(GetBP("Black Leg"))["Level"]["Value"]<399 then
              _G["Level"]=true
            end
            if GetBP("Black Leg")or(GetBP("Black Leg"))["Level"]["Value"]>=400 then
              if workspace["Map"]["IceCastle"]["Hall"]["LibraryDoor"]["PhoeyuDoor"]["Transparency"]==0 then
                if GetBP("Library Key")then
                  repeat
                    wait()_tp(CFrame["new"](6371.2001953125,296.63433837891,-6841.1811523438))
                  until
                  not _G["AutoDeathStep"]or rootPart["Position"]==(CFrame["new"](6371.2001953125,296.63433837891,-6841.1811523438))["Position"]if rootPart["CFrame"]==CFrame["new"](6371.2001953125,296.63433837891,-6841.1811523438)then
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
                  end
                elseif  not GetBP("Library Key")then
                  local players=GetConnectionEnemies("Awakened Ice Admiral")if players then
                    repeat
                      wait()f["Kill"](players,_G["AutoDeathStep"])
                    until
                    not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["AutoDeathStep"]==false or GetBP("Library Key")or GetBP("Death Step")
                  else
                    _tp(CFrame["new"](5668.9780273438,28.519989013672,-6483.3520507813))
                  end
                end
              end
            end
          end
        end
      end
      )
    end
  end
end
)mF["CreateToggle"]({["Title"]="Auto Sharkman Karate"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Auto_SharkMan_Karate"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["Auto_SharkMan_Karate"]then
      pcall(function()
        if localPlayer:FindFirstChild("WeaponAssetCache")then
          if not GetBP("Sharkman Karate")then
            if not GetBP("Fishman Karate")then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
            end
            if GetBP("Fishman Karate")and(GetBP("Fishman Karate"))["Level"]["Value"]>=400 then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")_G["Level"]=false
            elseif  GetBP("Fishman Karate")and(GetBP("Fishman Karate"))["Level"]["Value"]<399 then
              _G["Level"]=true
            end
            if GetBP("Fishman Karate")or(GetBP("Fishman Karate"))["Level"]["Value"]>=400 then
              if GetBP("Water Key")then
                if string["find"](replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate"),"keys")then
                  if GetBP("Water Key")then
                    repeat
                      wait()_tp(CFrame["new"](-2604.6958,239.432526,-10315.1982,.0425701365,0,-0.999093413,0,1,0,.999093413,0,.0425701365))
                    until
                    not _G["Auto_SharkMan_Karate"]or rootPart["Position"]==(CFrame["new"](-2604.6958,239.432526,-10315.1982,.0425701365,0,-0.999093413,0,1,0,.999093413,0,.0425701365))["Position"]replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
                  end
                end
              elseif  not GetBP("Water Key")then
                local players=GetConnectionEnemies("Tide Keeper")if players then
                  repeat
                    wait()f["Kill"](players,_G["Auto_SharkMan_Karate"])
                  until
                  not players["Parent"]or players["Humanoid"]["Health"]<=0 or _G["Auto_SharkMan_Karate"]==false or GetBP("Water Key")or GetBP("Sharkman Karate")
                else
                  _tp(CFrame["new"](-3053.9814453125,237.18954467773,-10145.0390625))
                end
              end
            end
          end
        end
      end
      )
    end
  end
end
)mF["CreateToggle"]({["Title"]="Auto ElectricClaw"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Auto_Electric_Claw"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["Auto_Electric_Claw"]then
      pcall(function()
        if localPlayer:FindFirstChild("WeaponAssetCache")then
          if not GetBP("Electro")then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
          end
          if GetBP("Electro")and(GetBP("Electro"))["Level"]["Value"]>=400 then
            if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw","Start")==nil then
              notween(CFrame["new"](-12548,337,-7481))
            end
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
          elseif  GetBP("Electro")and(GetBP("Electro"))["Level"]["Value"]<400 then
            repeat
              _G["AutoFarm_Bone"]=true wait()
            until
            not _G["Auto_Electric_Claw"]or GetBP("Electric Claw")_G["AutoFarm_Bone"]=false
          end
        end
      end
      )
    end
  end
end
)mF["CreateToggle"]({["Title"]="Auto DragonTalon",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoDragonTalon"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoDragonTalon"]then
      pcall(function()
        if localPlayer:FindFirstChild("WeaponAssetCache")then
          if not GetBP("Dragon Claw")then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward","DragonClaw","2")
          end
          if GetBP("Dragon Claw")and(GetBP("Dragon Claw"))["Level"]["Value"]>=400 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones","Buy",1,1)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
          elseif  GetBP("Dragon Claw")and(GetBP("Dragon Claw"))["Level"]["Value"]<400 then
            repeat
              _G["AutoFarm_Bone"]=true wait()
            until
            not _G["AutoDragonTalon"]or GetBP("Dragon Talon")_G["AutoFarm_Bone"]=false
          end
        end
      end
      )
    end
  end
end
)mF["CreateToggle"]({["Title"]="Auto Godhuman"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Auto_God_Human"]=players
end
})task.spawn(function()
  while wait()do
    pcall(function()
      if _G["AutoGodHuman"]then
        if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman",true)=="Bring me 20 Fish Tails, 20 Magma Ore, 10 Dragon Scales and 10 Mystic Droplets."then
          if GetM("Dragon Scale")==false or GetM("Dragon Scale")<10 then
            if World3 then
              playerLevel=1575 _G["Level"]=true
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
            end
          elseif  GetM("Fish Tail")==false or GetM("Fish Tail")<20 then
            if World3 then
              playerLevel=1775 _G["Level"]=true
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
            end
          elseif  GetM("Mystic Droplet")==false or GetM("Mystic Droplet")<10 then
            if World2 then
              playerLevel=1425 _G["Level"]=true
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
            end
          elseif  GetM("Magma Ore")==false or GetM("Magma Ore")<20 then
            if World2 then
              playerLevel=1175 _G["Level"]=true
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
            end
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman",true)==3 then
          return nil
        else
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman")
        end
      end
    end
    )
  end
end
)mF["CreateToggle"]({["Title"]="Auto SanguineArt"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["snaguine"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["snaguine"]then
      pcall(function()
        if not GetBP("Sanguine Art")then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Sanguine Art")
        end
        if not GetBP("Sanguine Art")then
          if GetM("Leviathan Heart")>=1 then
            print("Completed!!")
          else
            if World3 then
              _G["DangerSc"]="Lv Infinite"_G["SailBoats"]=true
            else
              _G["SailBoats"]=false
            end
          end
          if GetM("Vampire Fang")<=19 then
            if World2 then
              local players=GetConnectionEnemies("Vampire")if players then
                repeat
                  task["wait"]()f["Kill"](players,_G["snaguine"])
                until
                not _G["snaguine"]or players["Humanoid"]["Health"]<=0 or not players["Parent"]
              else
                _tp(CFrame["new"](-6041.2924804688,6.4027109146118,-1304.6333007812))
              end
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
            end
          end
          if GetM("Vampire Fang")>=20 and GetM("Demonic Wisp")<=19 then
            if World3 then
              local players=GetConnectionEnemies("Demonic Soul")if players then
                repeat
                  task["wait"]()f["Kill"](players,_G["snaguine"])
                until
                not _G["snaguine"]or players["Humanoid"]["Health"]<=0 or not players["Parent"]
              else
                _tp(CFrame["new"](-9495.6806640625,453.58624267578,5977.3486328125))
              end
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
            end
          end
          if GetM("Vampire Fang")>=20 and(GetM("Demonic Wisp")>=20 and GetM("Dark Fragment")<=1)then
            if World2 then
              local players=GetConnectionEnemies("Darkbeard")if players then
                repeat
                  task["wait"]()f["Kill"](black,_G["snaguine"])
                until
                _G["snaguine"]or black["Humanoid"]["Health"]<=0 or not black["Parent"]
              else
                _tp(CFrame["new"](3798.4575195313,13.826690673828,-3399.806640625))
              end
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
            end
          end
        else
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySanguineArt")
        end
      end
      )
    end
  end
end
)local yF=bz["CreateSection"]("Tushita + Yama")local bF=yF["CreateLabel"]({["Title"]="Elites Process ",["Content"]=""})task.spawn(function()
  while wait(T)do
    pcall(function()
      bF:SetDesc("Elite Procress :  "..replicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter","Progress"))
    end
    )
  end
end
)yF["CreateToggle"]({["Title"]="Auto Elite Quest",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["FarmEliteHunt"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["FarmEliteHunt"]then
        if localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==true then
          if string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Diablo")or string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Urban")or string["find"](localPlayer["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"],"Deandre")then
            for players,localPlayer in pairs(replicatedStorage:GetChildren())do
              if string["find"](localPlayer["Name"],"Diablo")or string["find"](localPlayer["Name"],"Urban")or string["find"](localPlayer["Name"],"Deandre")then
                _tp(localPlayer["HumanoidRootPart"]["CFrame"])
              end
            end
            for players,rootPart in pairs(enemies:GetChildren())do
              if(string["find"](rootPart["Name"],"Diablo")or string["find"](rootPart["Name"],"Urban")or string["find"](rootPart["Name"],"Deandre"))and f["Alive"](rootPart)then
                repeat
                  wait()f["Kill"](rootPart,_G["FarmEliteHunt"])
                until
                not _G["FarmEliteHunt"]or localPlayer["PlayerGui"]["Main"]["Quest"]["Visible"]==false or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0
              end
            end
          end
        else
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter")
        end
      end
    end
    )
  end
end
)yF["CreateToggle"]({["Title"]="Stop when got God's Chalice",["Description"]="",["Default"]=true
["Callback"]=function(players)
  _G["StopWhenChalice"]=players
end
})task.spawn(function()
  while wait(.2)do
    if _G["StopWhenChalice"]and _G["FarmEliteHunt"]then
      pcall(function()
        if GetBP("God's Chalice")or GetBP("Sweet Chalice")or GetBP("Fist of Darkness")then
          _G["FarmEliteHunt"]=false
        end
      end
      )
    end
  end
end
)yF["CreateToggle"]({["Title"]="Auto Tushita Sword"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Auto_Tushita"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Tushita"]then
        if workspace["Map"]["Turtle"]:FindFirstChild("TushitaGate")then
          if not GetBP("Holy Torch")then
            _tp(CFrame["new"](5148.03613,162.352493,910.548218))wait(.7)
          else
            EquipWeapon("Holy Torch")task["wait"](1)repeat
              task["wait"]()_tp(CFrame["new"](-10752,417,-9366))
            until
            not _G["Auto_Tushita"]or((CFrame["new"](-10752,417,-9366))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 wait(.7)repeat
              task["wait"]()_tp(CFrame["new"](-11672,334,-9474))
            until
            not _G["Auto_Tushita"]or((CFrame["new"](-11672,334,-9474))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 wait(.7)repeat
              task["wait"]()_tp(CFrame["new"](-12132,521,-10655))
            until
            not _G["Auto_Tushita"]or((CFrame["new"](-12132,521,-10655))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 wait(.7)repeat
              task["wait"]()_tp(CFrame["new"](-13336,486,-6985))
            until
            not _G["Auto_Tushita"]or((CFrame["new"](-13336,486,-6985))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 wait(.7)repeat
              task["wait"]()_tp(CFrame["new"](-13489,332,-7925))
            until
            not _G["Auto_Tushita"]or((CFrame["new"](-13489,332,-7925))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10
          end
        else
          local players=GetConnectionEnemies("Longma")if players then
            repeat
              task["wait"]()f["Kill"](players,_G["Auto_Tushita"])
            until
            players["Humanoid"]["Health"]<=0 or not _G["Auto_Tushita"]or not players["Parent"]
          else
            if replicatedStorage:FindFirstChild("Longma")then
              _tp((replicatedStorage:FindFirstChild("Longma"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,40,0))
            end
          end
        end
      end
    end
    )
  end
end
)yF["CreateToggle"]({["Title"]="Auto Yama Sword",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Auto_Yama"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Yama"]then
        if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter","Progress")<30 then
          _G["FarmEliteHunt"]=true
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter","Progress")>30 then
          _G["FarmEliteHunt"]=false if(workspace["Map"]["Waterfall"]["SealedKatana"]["Handle"]["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>=20 then
            _tp(workspace["Map"]["Waterfall"]["SealedKatana"]["Handle"]["CFrame"])local players=GetConnectionEnemies("Ghost")if players then
              repeat
                wait()f["Kill"](players,_G["Auto_Yama"])
              until
              players["Humanoid"]["Health"]<=0 or not players["Parent"]or not _G["Auto_Yama"]fireclickdetector(workspace["Map"]["Waterfall"]["SealedKatana"]["Handle"]["ClickDetector"])
            end
          end
        end
      end
    end
    )
  end
end
)local cF=bz["CreateSection"]("Cursed Dual Katana")local HF=cF["CreateLabel"]({["Title"]=" Number Cursed dual katana quests "
["Content"]="Quest Numbers :"})task.spawn(function()
  while wait(.2)do
    if QuestYama_1==true then
      HF:SetDesc(" Quest Numbers : yama quest 1")
    elseif  QuestYama_2==true then
      HF:SetDesc(" Quest Numbers : yama quest 2")
    elseif  QuestYama_3==true then
      HF:SetDesc(" Quest Numbers : yama quest 3")
    elseif  QuestTushita_1==true then
      HF:SetDesc(" Quest Numbers : tushita quest 1")
    elseif  QuestTushita_2==true then
      HF:SetDesc(" Quest Numbers : tushita quest 2")
    elseif  QuestTushita_1==true then
      HF:SetDesc(" Quest Numbers: tushita quest 2")
    elseif  GetWP("Cursed Dual Katana")then
      HF:SetDesc(" Quest Numbers: CDK done!!")
    end
  end
end
)cF["CreateToggle"]({["Title"]="Auto Get CDK [ Last Quest ]",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["CDK"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["CDK"]then
        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress","Good")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress","Evil")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","StartTrial","Boss")local players=GetConnectionEnemies("Cursed Skeleton Boss")if players then
          repeat
            wait()if localPlayer["Character"]:FindFirstChild("Yama")or localPlayer["Backpack"]:FindFirstChild("Yama")then
              EquipWeapon("Yama")
            elseif  localPlayer["Character"]:FindFirstChild("Tushita")or localPlayer["Backpack"]:FindFirstChild("Tushita")then
              EquipWeapon("Tushita")
            end
            _tp(players["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,20,0))
          until
          not _G["CDK"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-12318.193359375,601.95184326172,-6538.662109375))wait(.5)_tp(workspace["Map"]["Turtle"]["Cursed"]["BossDoor"]["CFrame"])
        end
      end
    end
    )
  end
end
)cF["CreateToggle"]({["Title"]="Auto Yama CDK",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["CDK_YM"]=players
end
})task.spawn(function()
  while wait()do
    pcall(function()
      if _G["CDK_YM"]then
        if tostring(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","OpenDoor"))~="opened"then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","OpenDoor")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","OpenDoor",true)
        else
          if(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Finished"]==nil then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","StartTrial","Evil")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","StartTrial","Evil")
          elseif (replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Finished"]==false then
            if tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==-3 then
              QuestYama_1=true QuestYama_2=false QuestYama_3=false repeat
                task["wait"]()if not workspace["Enemies"]:FindFirstChild("Forest Pirate")then
                  _tp(CFrame["new"](-13223.521484375,428.19381713867,-7766.0678710938))
                else
                  local players=GetConnectionEnemies("Forest Pirate")if players then
                    _tp((workspace["Enemies"]:FindFirstChild("Forest Pirate"))["HumanoidRootPart"]["CFrame"])
                  end
                end
              until
              tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==1 or not _G["CDK_YM"]
            elseif  tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==-4 then
              QuestYama_1=false QuestYama_2=true QuestYama_3=false for players,localPlayer in pairs((game:GetService("Players"))["LocalPlayer"]["QuestHaze"]:GetChildren())do
                for players,playerLevel in pairs(e)do
                  if string["find"](players,localPlayer["Name"])and localPlayer["Value"]>0 then
                    if(playerLevel["Position"]-rootPart["Position"])["Magnitude"]<=1000 and workspace["Enemies"]:FindFirstChild(players)then
                      for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
                        if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Humanoid")and((localPlayer:FindFirstChild("Humanoid"))["Health"]>0 and localPlayer:FindFirstChild("HazeESP")))then
                          repeat
                            wait()f["Kill"](localPlayer,_G["CDK_YM"])
                          until
                          not _G["CDK_YM"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==2 or not localPlayer:FindFirstChild("HazeESP")or localPlayer["Humanoid"]["Health"]<=0
                        end
                      end
                    else
                      _tp(playerLevel)
                    end
                  end
                end
              end
            elseif  tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==-5 then
              QuestYama_1=false QuestYama_2=false QuestYama_3=true if workspace["Map"]:FindFirstChild("HellDimension")then
                if(rootPart["Position"]-workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"]<=1000 then
                  for players,localPlayer in pairs(workspace["Map"]["HellDimension"]["Exit"]:GetChildren())do
                    if tonumber(players)==2 then
                      repeat
                        task["wait"]()rootPart["CFrame"]=workspace["Map"]["HellDimension"]["Exit"]["CFrame"]
                      until
                      not _G["CDK_YM"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==3
                    end
                  end
                  EquipWeapon(_G["SelectWeapon"])if tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])~=3 then
                    repeat
                      task["wait"]()repeat
                        task["wait"]()_tp(workspace["Map"]["HellDimension"]["Torch1"]["Particles"]["CFrame"])for players,localPlayer in pairs(workspace["Map"]["HellDimension"]:GetDescendants())do
                          if localPlayer:IsA("ProximityPrompt")then
                            fireproximityprompt(localPlayer)
                          end
                        end
                      until
                      (workspace["Map"]["HellDimension"]["Torch1"]["Particles"]["Position"]-rootPart["Position"])["Magnitude"]<5 wait(2)_G["T1Yama"]=true
                    until
                    not _G["CDK_YM"]or _G["T1Yama"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==3 repeat
                      task["wait"]()repeat
                        task["wait"]()_tp(workspace["Map"]["HellDimension"]["Torch2"]["Particles"]["CFrame"])for players,localPlayer in pairs(workspace["Map"]["HellDimension"]:GetDescendants())do
                          if localPlayer:IsA("ProximityPrompt")then
                            fireproximityprompt(localPlayer)
                          end
                        end
                      until
                      (workspace["Map"]["HellDimension"]["Torch2"]["Particles"]["Position"]-rootPart["Position"])["Magnitude"]<5 wait(2)_G["T2Yama"]=true
                    until
                    _G["T2Yama"]or _G["CDK_YM"]==false or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==3 repeat
                      wait()repeat
                        task["wait"]()_tp(workspace["Map"]["HellDimension"]["Torch3"]["Particles"]["CFrame"])for players,localPlayer in pairs(workspace["Map"]["HellDimension"]:GetDescendants())do
                          if localPlayer:IsA("ProximityPrompt")then
                            fireproximityprompt(localPlayer)
                          end
                        end
                      until
                      (workspace["Map"]["HellDimension"]["Torch3"]["Particles"]["Position"]-rootPart["Position"])["Magnitude"]<5 wait(2)_G["T3Yama"]=true
                    until
                    _G["T3Yama"]or _G["CDK_YM"]==false or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==3
                  end
                  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
                    if((localPlayer:FindFirstChild("HumanoidRootPart"))["Position"]-workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"]<=300 then
                      if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Humanoid")and(localPlayer:FindFirstChild("Humanoid"))["Health"]>0)then
                        repeat
                          task["wait"]()f["Kill"](localPlayer,_G["CDK_YM"])
                        until
                        not _G["CDK_YM"]or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==3
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    )
  end
end
)task.spawn(function()
  while wait()do
    pcall(function()
      if _G["CDK_YM"]then
        if tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==-5 then
          if not workspace["Map"]:FindFirstChild("HellDimension")or(rootPart["Position"]-workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"]>1000 then
            local players=GetConnectionEnemies("Soul Reaper")if players then
              repeat
                task["wait"]()_tp(players["HumanoidRootPart"]["CFrame"])
              until
              players["Humanoid"]["Health"]<=0 or not _G["CDK_YM"]or not players["Parent"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Evil"])==3 or workspace["Map"]:FindFirstChild("HellDimension")and(rootPart["Position"]-workspace["Map"]["HellDimension"]["Spawn"]["Position"])["Magnitude"]<=1000
            elseif  localPlayer["Backpack"]:FindFirstChild("Hallow Essence")or localPlayer["Character"]:FindFirstChild("Hallow Essence")then
              repeat
                _tp(CFrame["new"](-8932.322265625,146.83154296875,6062.55078125))task["wait"]()
              until
              ((CFrame["new"](-8932.322265625,146.83154296875,6062.55078125))["Position"]-rootPart["Position"])["Magnitude"]<=8 EquipWeapon("Hallow Essence")
            elseif  replicatedStorage:FindFirstChild("Soul Reaper")and(replicatedStorage:FindFirstChild("Soul Reaper"))["Humanoid"]["Health"]>0 then
              _tp((replicatedStorage:FindFirstChild("Soul Reaper"))["HumanoidRootPart"]["CFrame"])
            else
              if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones","Check")<50 and(not workspace["Enemies"]:FindFirstChild("Soul Reaper")and(not replicatedStorage:FindFirstChild("Soul Reaper")and not workspace["Map"]:FindFirstChild("HellDimension")))then
                if workspace["Enemies"]:FindFirstChild("Reborn Skeleton")or workspace["Enemies"]:FindFirstChild("Living Zombie")or workspace["Enemies"]:FindFirstChild("Domenic Soul")or workspace["Enemies"]:FindFirstChild("Posessed Mummy")then
                  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
                    if localPlayer["Name"]=="Reborn Skeleton"or localPlayer["Name"]=="Living Zombie"or localPlayer["Name"]=="Demonic Soul"or localPlayer["Name"]=="Posessed Mummy"then
                      if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Humanoid")and(localPlayer:FindFirstChild("Humanoid"))["Health"]>0)then
                        repeat
                          task["wait"]()f["Kill"](localPlayer,_G["CDK_YM"])
                        until
                        not _G["CDK_YM"]or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]
                      end
                    end
                  end
                else
                  _tp(CFrame["new"](-9515.2255859375,164.00622558594,5785.3833007812))
                end
              else
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones","Buy",1,1)
              end
            end
          end
        end
      end
    end
    )
  end
end
)cF["CreateToggle"]({["Title"]="Auto Tushita CDK",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["CDK_TS"]=players
end
})task.spawn(function()
  while wait()do
    pcall(function()
      if _G["CDK_TS"]then
        if tostring(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","OpenDoor"))~="opened"then
          wait(.7)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","OpenDoor")wait(.3)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","OpenDoor",true)
        else
          if(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Finished"]==nil then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","StartTrial","Good")
          elseif (replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Finished"]==false then
            if tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==-3 then
              QuestTushita_1=true QuestTushita_2=false QuestTushita_3=false repeat
                wait()_tp(CFrame["new"](-4602.5107421875,16.446542739868,-2880.998046875))
              until
              ((CFrame["new"](-4602.5107421875,16.446542739868,-2880.998046875))["Position"]-(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=3 or not _G["CDK_TS"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==1 if((CFrame["new"](-4602.5107421875,16.446542739868,-2880.998046875))["Position"]-(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
                wait(.7)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","BoatQuest",workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"),"Check")wait(.5)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","BoatQuest",workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
              end
              wait(1)repeat
                wait()_tp(CFrame["new"](4001.1853027344,10.089399337769,-2654.86328125))
              until
              ((CFrame["new"](4001.1853027344,10.089399337769,-2654.86328125))["Position"]-(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=3 or not _G["CDK_TS"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==1 if((CFrame["new"](4001.1853027344,10.089399337769,-2654.86328125))["Position"]-(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
                wait(.7)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","BoatQuest",workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"),"Check")wait(.5)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","BoatQuest",workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
              end
              wait(1)repeat
                wait()_tp(CFrame["new"](-9530.763671875,7.2452087402344,-8375.5087890625))
              until
              ((CFrame["new"](-9530.763671875,7.2452087402344,-8375.5087890625))["Position"]-(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=3 or not _G["CDK_TS"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==1 if((CFrame["new"](-9530.763671875,7.2452087402344,-8375.5087890625))["Position"]-(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
                wait(.7)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","BoatQuest",workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"),"Check")wait(.5)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","BoatQuest",workspace["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
              end
              wait(1)
            elseif  tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==-4 then
              QuestTushita_1=false QuestTushita_2=true QuestTushita_3=false repeat
                wait()_G["AutoRaidCastle"]=true
              until
              not _G["CDK_TS"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==2 _G["AutoRaidCastle"]=false
            elseif  tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==-5 then
              QuestTushita_1=false QuestTushita_2=false QuestTushita_3=true if workspace["Enemies"]:FindFirstChild("Cake Queen")then
                for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
                  if localPlayer["Name"]=="Cake Queen"then
                    if localPlayer:FindFirstChild("Humanoid")and(localPlayer:FindFirstChild("HumanoidRootPart")and localPlayer["Humanoid"]["Health"]>0)then
                      repeat
                        wait()f["Kill"](localPlayer,_G["CDK_TS"])
                      until
                      not _G["CDK_TS"]or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0 or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==3
                    end
                  end
                end
              elseif  replicatedStorage:FindFirstChild("Cake Queen")and(replicatedStorage:FindFirstChild("Cake Queen"))["Humanoid"]["Health"]>0 then
                _tp((replicatedStorage:FindFirstChild("Cake Queen"))["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,30,0))
              else
                if(game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"]-workspace["Map"]["HeavenlyDimension"]["Spawn"]["Position"])["Magnitude"]<=1000 then
                  for players,localPlayer in pairs(workspace["Map"]["HeavenlyDimension"]["Exit"]:GetChildren())do
                    Ex=players
                  end
                  if Ex==2 then
                    repeat
                      wait()game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["HeavenlyDimension"]["Exit"]["CFrame"]
                    until
                    not _G["CDK_TS"]or tonumber((replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest","Progress"))["Good"])==3
                  end
                  repeat
                    wait()repeat
                      wait()_tp(CFrame["new"](-22529.6171875,5275.7739257812,3873.5712890625))for players,localPlayer in pairs(workspace["Map"]["HeavenlyDimension"]:GetDescendants())do
                        if localPlayer:IsA("ProximityPrompt")then
                          fireproximityprompt(localPlayer)
                        end
                      end
                    until
                    ((CFrame["new"](-22529.6171875,5275.7739257812,3873.5712890625))["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<5 wait(2)_G["DoneT1"]=true
                  until
                  not _G["CDK_TS"]or _G["DoneT1"]repeat
                    wait()repeat
                      wait()_tp(CFrame["new"](-22637.291015625,5281.365234375,3749.2885742188))for players,localPlayer in pairs(workspace["Map"]["HeavenlyDimension"]:GetDescendants())do
                        if localPlayer:IsA("ProximityPrompt")then
                          fireproximityprompt(localPlayer)
                        end
                      end
                    until
                    ((CFrame["new"](-22637.291015625,5281.365234375,3749.2885742188))["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<5 wait(2)_G["DoneT2"]=true
                  until
                  _G["DoneT2"]or _G["CDK_TS"]==false repeat
                    wait()repeat
                      task["wait"]()_tp(CFrame["new"](-22791.14453125,5277.1655273438,3764.5700683594))for players,localPlayer in pairs(workspace["Map"]["HeavenlyDimension"]:GetDescendants())do
                        if localPlayer:IsA("ProximityPrompt")then
                          fireproximityprompt(localPlayer)
                        end
                      end
                    until
                    ((CFrame["new"](-22791.14453125,5277.1655273438,3764.5700683594))["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<5 wait(2)_G["DoneT3"]=true
                  until
                  _G["DoneT3"]or _G["CDK_TS"]==false for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
                    if((localPlayer:FindFirstChild("HumanoidRootPart"))["Position"]-(CFrame["new"](-22695.7012,5270.93652,3814.42847,.11794927,3.32185834e-008,.99301964,-8.73070718e-008,1,-2.30819008e-008,-0.99301964,-8.3975138e-008,.11794927))["Position"])["Magnitude"]<=300 then
                      if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Humanoid")and(localPlayer:FindFirstChild("Humanoid"))["Health"]>0)then
                        repeat
                          wait()f["Kill"](localPlayer,_G["CDK_TS"])
                        until
                        not _G["CDK_TS"]or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    )
  end
end
)local SF=bz["CreateSection"]("True Triple Katana Sword")SF["CreateButton"]({["Title"]="Buy Legendary Sword",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer","1")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer","2")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer","3")
end
})SF["CreateButton"]({["Title"]="Buy True Triple Katana Sword",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("MysteriousMan","2")
end
})SF["CreateToggle"]({["Title"]="Tween to Legendary Sword Dealer"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Tp_LgS"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["Tp_LgS"]then
      pcall(function()
        for players,localPlayer in pairs(replicatedStorage["NPCs"]:GetChildren())do
          if localPlayer["Name"]=="Legendary Sword Dealer "then
            _tp(localPlayer["HumanoidRootPart"]["CFrame"])
          end
        end
      end
      )
    end
  end
end
)local oF=bz["CreateSection"]("Pole / God Enal's")oF["CreateToggle"]({["Title"]="Auto Pole V1"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoPole"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoPole"]then
      pcall(function()
        local players=GetConnectionEnemies("Thunder God")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoPole"])
          until
          not _G["AutoPole"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-7994.984375,5761.025390625,-2088.6479492188))
        end
      end
      )
    end
  end
end
)oF["CreateToggle"]({["Title"]="Auto Pole V2 [Beta]"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["AutoPoleV2"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AutoPoleV2"]then
        if not GetBP("Pole (1st Form)")then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem","Pole (1st Form)")
        end
        if not GetBP("Pole (2nd Form)")then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem","Pole (2nd Form)")
        end
        if GetBP("Pole (1st Form)")and(GetBP("Pole (1st Form)"))["Level"]["Value"]<=179 then
          _G["Level"]=true
        elseif  GetBP("Pole (1st Form)")and(GetBP("Pole (1st Form)"))["Level"]["Value"]>=180 then
          _G["Level"]=false
        end
        if not GetBP("Rumble Fruit")then
          return
        end
        if(GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("Z")and((GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("X")and((GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("C")and((GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("V")and(GetBP("Rumble Fruit"))["AwakenedMoves"]:FindFirstChild("F"))))then
          _G["SelectChip"]=nil _G["Raiding"]=false _G["Auto_Awakener"]=false if localPlayer["Data"]["Fragments"]["Value"]>=5000 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Thunder God","Talk")wait(T)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Thunder God","Sure")
          end
        elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Awakener","Check")==nil or replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Awakener","Check")==0 then
          _G["SelectChip"]="Rumble"local players=replicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc","Select",_G["SelectChip"])if players then
            players:Stop()
          end
          _G["Raiding"]=true _G["Auto_Awakener"]=true
        end
      end
    end
    )
  end
end
)local ZF=bz["CreateSection"]("Items Law/Order Sword")ZF["CreateToggle"]({["Title"]="Auto Law Sword"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["AutoLawKak"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoLawKak"]then
      pcall(function()
        local players=GetConnectionEnemies("Order")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoLawKak"])
          until
          _G["AutoLawKak"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-6217.2021484375,28.047645568848,-5053.1357421875))
        end
      end
      )
    end
  end
end
)ZF["CreateButton"]({["Title"]="Buy Microchip Law",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward","Microchip","2")
end
})ZF["CreateButton"]({["Title"]="Start Law Raids"
["Callback"]=function()
  fireclickdetector(workspace["Map"]["CircleIsland"]["RaidSummon"]["Button"]["Main"]["ClickDetector"])
end
})local TF=bz["CreateSection"]("East Blue Misc")TF["CreateToggle"]({["Title"]="Auto Saw Sword",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoSaw"]=players
end
})task.spawn(function()
  while wait(.2)do
    pcall(function()
      if _G["AutoSaw"]then
        local players=GetConnectionEnemies("The Saw")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoSaw"])
          until
          _G["AutoSaw"]==false or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-784.89715576172,72.427383422852,1603.5822753906))
        end
      end
    end
    )
  end
end
)TF["CreateToggle"]({["Title"]="Auto Saber Sword"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AutoSaber"]=players
end
})task.spawn(function()
  while wait(.2)do
    pcall(function()
      if _G["AutoSaber"]and(localPlayer["Data"]["Level"]["Value"]>=200 and(not localPlayer["Backpack"]:FindFirstChild("Saber")and not localPlayer["Character"]:FindFirstChild("Saber")))then
        if workspace["Map"]["Jungle"]["Final"]["Part"]["Transparency"]==0 then
          if workspace["Map"]["Jungle"]["QuestPlates"]["Door"]["Transparency"]==0 then
            if((CFrame["new"](-1612.55884,36.9774132,148.719543,.37091279,3.0717151e-009,-0.928667724,3.97099491e-008,1,1.91679348e-008,.928667724,-4.39869794e-008,.37091279))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=100 then
              _tp(localPlayer["Character"]["HumanoidRootPart"]["CFrame"])wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Jungle"]["QuestPlates"]["Plate1"]["Button"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Jungle"]["QuestPlates"]["Plate2"]["Button"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Jungle"]["QuestPlates"]["Plate3"]["Button"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Jungle"]["QuestPlates"]["Plate4"]["Button"]["CFrame"]wait(.5)localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=workspace["Map"]["Jungle"]["QuestPlates"]["Plate5"]["Button"]["CFrame"]wait(.5)
            else
              _tp(CFrame["new"](-1612.55884,36.9774132,148.719543,.37091279,3.0717151e-009,-0.928667724,3.97099491e-008,1,1.91679348e-008,.928667724,-4.39869794e-008,.37091279))
            end
          else
            if workspace["Map"]["Desert"]["Burn"]["Part"]["Transparency"]==0 then
              if localPlayer["Backpack"]:FindFirstChild("Torch")or localPlayer["Character"]:FindFirstChild("Torch")then
                EquipWeapon("Torch")firetouchinterest(localPlayer["Character"]["Torch"]["Handle"],workspace["Map"]["Desert"]["Burn"]["Fire"],0)firetouchinterest(localPlayer["Character"]["Torch"]["Handle"],workspace["Map"]["Desert"]["Burn"]["Fire"],1)_tp(CFrame["new"](1114.61475,5.04679728,4350.22803,-0.648466587,-1.28799094e-009,.761243105,-5.70652914e-010,1,1.20584542e-009,-0.761243105,3.47544882e-010,-0.648466587))
              else
                _tp(CFrame["new"](-1610.00757,11.5049858,164.001587,.984807551,-0.167722285,-0.0449818149,.17364943,.951244235,.254912198,3.42372805e-005,-0.258850515,.965917408))
              end
            else
              if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","SickMan")~=0 then
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","GetCup")wait(.5)EquipWeapon("Cup")wait(.5)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","FillCup",localPlayer["Character"]["Cup"])wait(T)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","SickMan")
              else
                if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","RichSon")==nil then
                  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","RichSon")
                elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","RichSon")==0 then
                  if workspace["Enemies"]:FindFirstChild("Mob Leader")or replicatedStorage:FindFirstChild("Mob Leader")then
                    _tp(CFrame["new"](-2967.59521,-4.91089821,5328.70703,.342208564,-0.0227849055,.939347804,.0251603816,.999569714,.0150796166,-0.939287126,.0184739735,.342634559))for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
                      if localPlayer["Name"]=="Mob Leader"and f["Alive"](localPlayer)then
                        repeat
                          task["wait"]()f["Kill"](localPlayer,_G["AutoSaber"])
                        until
                        localPlayer["Humanoid"]["Health"]<=0 or _G["AutoSaber"]==false
                      end
                    end
                  end
                elseif  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","RichSon")==1 then
                  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","RichSon")EquipWeapon("Relic")_tp(CFrame["new"](-1404.91504,29.9773273,3.80598116,.876514494,5.66906877e-009,.481375456,2.53851997e-008,1,-5.79995607e-008,-0.481375456,6.30572643e-008,.876514494))
                end
              end
            end
          end
        else
          if workspace["Enemies"]:FindFirstChild("Saber Expert")or replicatedStorage:FindFirstChild("Saber Expert")then
            for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
              if localPlayer["Name"]=="Saber Expert"and f["Alive"](localPlayer)then
                repeat
                  task["wait"]()f["Kill"](localPlayer,_G["AutoSaber"])
                until
                localPlayer["Humanoid"]["Health"]<=0 or _G["AutoSaber"]==false if localPlayer["Humanoid"]["Health"]<=0 then
                  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress","PlaceRelic")
                end
              end
            end
          else
            _tp(CFrame["new"](-1401.85046,29.9773273,8.81916237,.85820812,8.76083845e-008,.513301849,-8.55007443e-008,1,-2.77243419e-008,-0.513301849,-2.00944328e-008,.85820812))
          end
        end
      end
    end
    )
  end
end
)TF["CreateToggle"]({["Title"]="Auto Cybrog"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["AutoColShad"]=players
end
})task.spawn(function()
  while wait(.2)do
    if _G["AutoColShad"]then
      pcall(function()
        local players=GetConnectionEnemies("Cyborg")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoColShad"])
          until
          _G["AutoColShad"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](6094.0249023438,73.770050048828,3825.7348632813))
        end
      end
      )
    end
  end
end
)TF["CreateToggle"]({["Title"]="Auto Usoap's Hat",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AutoGetUsoap"]=players
end
})task.spawn(function()
  while task["wait"](T)do
    pcall(function()
      if _G["AutoGetUsoap"]then
        for players,replicatedStorage in pairs(workspace["Characters"]:GetChildren())do
          if replicatedStorage["Name"]~=localPlayer["Name"]then
            if replicatedStorage["Humanoid"]["Health"]>0 and(replicatedStorage:FindFirstChild("HumanoidRootPart")and(replicatedStorage["Parent"]and(rootPart["Position"]-replicatedStorage["HumanoidRootPart"]["Position"])["Magnitude"]<=230))then
              repeat
                task["wait"]()EquipWeapon(_G["SelectWeapon"])_tp(replicatedStorage["HumanoidRootPart"]["CFrame"]*CFrame["new"](1,1,2))
              until
              _G["AutoGetUsoap"]==false or replicatedStorage["Humanoid"]["Health"]<=0 or not replicatedStorage["Parent"]or not replicatedStorage:FindFirstChild("HumanoidRootPart")or not replicatedStorage:FindFirstChild("Humanoid")
            end
          end
        end
      end
    end
    )
  end
end
)TF["CreateToggle"]({["Title"]="Auto Bisento V2"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["Greybeard"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["Greybeard"]then
      pcall(function()
        if not GetWP("Bisento")then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Bisento")
        elseif  GetWP("Bisento")then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem","Bisento")local players=GetConnectionEnemies("Greybeard")if players then
            repeat
              wait()f["Kill"](players,_G["Greybeard"])
            until
            _G["Greybeard"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
          else
            _tp(CFrame["new"](-5023.3833007812,28.652032852173,4332.3818359375))
          end
        end
      end
      )
    end
  end
end
)TF["CreateToggle"]({["Title"]="Auto Warden Sword"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["WardenBoss"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["WardenBoss"]then
      pcall(function()
        local players=GetConnectionEnemies("Chief Warden")if players then
          repeat
            wait()f["Kill"](players,_G["WardenBoss"])
          until
          _G["WardenBoss"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](5206.92578,.997753382,814.976746,.342041343,-0.00062915677,.939684749,.00191645394,.999998152,-2.80422337e-005,-0.939682961,.00181045406,.342041939))
        end
      end
      )
    end
  end
end
)TF["CreateToggle"]({["Title"]="Auto Marine Coat"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["MarinesCoat"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["MarinesCoat"]then
      pcall(function()
        local players=GetConnectionEnemies("Vice Admiral")if players then
          repeat
            wait()f["Kill"](players,_G["MarinesCoat"])
          until
          _G["MarinesCoat"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-5006.5454101563,88.032081604004,4353.162109375))
        end
      end
      )
    end
  end
end
)TF["CreateToggle"]({["Title"]="Auto Swan Coat",
["Description"]=""
["Default"]=false,
["Callback"]=function(players)
  _G["SwanCoat"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["SwanCoat"]then
      pcall(function()
        local players=GetConnectionEnemies("Swan")if players then
          repeat
            wait()f["Kill"](players,_G["SwanCoat"])
          until
          _G["SwanCoat"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](5325.09619,7.03906584,719.570679,-0.309060812,0,.951042235,0,1,0,-0.951042235,0,-0.309060812))
        end
      end
      )
    end
  end
end
)local kF=bz["CreateSection"]("Rengoku Sword")kF["CreateToggle"]({["Title"]="Auto Rengoku Sword",
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["IceBossRen"]=players
end
})task.spawn(function()
  pcall(function()
    while wait(.1)do
      if _G["IceBossRen"]then
        local players=GetConnectionEnemies("Awakened Ice Admiral")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["IceBossRen"])
          until
          _G["IceBossRen"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](5668.9780273438,28.519989013672,-6483.3520507813))
        end
      end
    end
  end
  )
end
)kF["CreateToggle"]({["Title"]="Auto Key Rengoku",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["KeysRen"]=players
end
})task.spawn(function()
  while wait(.1)do
    pcall(function()
      if _G["KeysRen"]then
        if localPlayer["Backpack"]:FindFirstChild(G[3])or localPlayer["Character"]:FindFirstChild(G[3])then
          EquipWeapon(G[3])wait(.1)_tp(CFrame["new"](6571.1201171875,299.23028564453,-6967.841796875))
        else
          local players=GetConnectionEnemies(G)if players then
            repeat
              task["wait"]()f["Kill"](players,_G["KeysRen"])
            until
            localPlayer["Backpack"]:FindFirstChild(G[3])or _G["KeysRen"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
          else
            _tp(CFrame["new"](5439.716796875,84.420944213867,-6715.1635742188))
          end
        end
      end
    end
    )
  end
end
)kF["CreateToggle"]({["Title"]="Auto Dragon Trident"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AutoTridentW2"]=players
end
})task.spawn(function()
  while wait(.1)do
    pcall(function()
      if _G["AutoTridentW2"]then
        local players=GetConnectionEnemies("Tide Keeper")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoTridentW2"])
          until
          _G["AutoTridentW2"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-3795.6423339844,105.88877105713,-11421.307617188))
        end
      end
    end
    )
  end
end
)kF["CreateToggle"]({["Title"]="Auto Long Sword",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["LongsWord"]=players
end
})task.spawn(function()
  while wait(.1)do
    pcall(function()
      if _G["LongsWord"]then
        local players=GetConnectionEnemies("Diamond")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["LongsWord"])
          until
          _G["LongsWord"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-1576.7166748047,198.59265136719,13.724286079407))
        end
      end
    end
    )
  end
end
)kF["CreateToggle"]({["Title"]="Auto Black Spikey"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["BlackSpikey"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["BlackSpikey"]then
      pcall(function()
        local players=GetConnectionEnemies("Jeremy")if players then
          repeat
            wait()f["Kill"](players,_G["BlackSpikey"])
          until
          _G["BlackSpikey"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](2006.9261474609,448.95666503906,853.98284912109))
        end
      end
      )
    end
  end
end
)kF["CreateToggle"]({["Title"]="Auto Dark Blade V3",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["DarkBladev3"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["DarkBladev3"]and World2 then
        if not GetBP("Dark Blade")then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem","Dark Blade")
        end
        if GetBP("Fist of Darkness")>1 then
          if not workspace["Enemies"]:FindFirstChild("Darkbeard")then
            _tp(CFrame["new"](3677.08203125,62.751937866211,-3144.8332519531))
          elseif  GetConnectionEnemies("Darkbeard")and GetBP("Fist of Darkness")>=1 then
            repeat
              wait()_tp(CFrame["new"](-5719.3637695312,48.505905151367,-782.97595214844))
            until
            not _G["DarkBladev3"]or rootPart["Position"]==(CFrame["new"](-5719.3637695312,48.505905151367,-782.97595214844))["Position"]fireclickdetector(workspace["Map"]["GraveIsland"]["Mountain"]["Rocks"]["Button"]["ClickDetector"])
          end
        else
          _G["AutoFarmChest"]=true
        end
      end
    end
    )
  end
end
)kF["CreateToggle"]({["Title"]="Auto Midnight Blade"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["AutoEcBoss"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AutoEcBoss"]then
        if GetM("Ectoplasm")>=99 then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Ectoplasm","Buy",3)
        elseif  GetM("Ectoplasm")<=99 then
          local players=GetConnectionEnemies("Cursed Captain")if players then
            repeat
              wait()f["Kill"](players,_G["AutoEcBoss"])
            until
            not _G["AutoEcBoss"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
          else
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923.21252441406,126.9760055542,32852.83203125))wait(.5)_tp(CFrame["new"](916.928589,181.092773,33422))
          end
        end
      end
    end
    )
  end
end
)kF["CreateToggle"]({["Title"]="Auto Darkbeard",["Description"]="",["Default"]=false,
["Callback"]=function(players)
  _G["Auto_Def_DarkCoat"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["Auto_Def_DarkCoat"]then
      pcall(function()
        if GetBP("Fist of Darkness")and not workspace["Enemies"]:FindFirstChild("Darkbeard")then
          _tp(CFrame["new"](3677.08203125,62.751937866211,-3144.8332519531))
        elseif  GetConnectionEnemies("Darkbeard")then
          local players=GetConnectionEnemies("Darkbeard")if players then
            repeat
              wait()f["Kill"](players,_G["Auto_Def_DarkCoat"])
            until
            _G["Auto_Def_DarkCoat"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
          end
        elseif  not GetBP("Fist of Darkness")and not GetConnectionEnemies("Darkbeard")then
          repeat
            wait(.1)_G["AutoFarmChest"]=true
          until
          not _G["Auto_Def_DarkCoat"]or GetBP("Fist of Darkness")or GetConnectionEnemies("Darkbeard")_G["AutoFarmChest"]=false
        end
      end
      )
    end
  end
end
)kF["CreateToggle"]({["Title"]="Auto Unlocked DonSwan",
["Description"]="",
["Default"]=false,["Callback"]=function(players)
  _G["Auto_DonAcces"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["Auto_DonAcces"]then
      pcall(function()
        if(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"]==nil and localPlayer["Data"]["Level"]["Value"]>=1500 then
          FruitPrice={}FruitStore={}for players,localPlayer in next,(replicatedStorage:WaitForChild("Remotes"))["CommF_"]:InvokeServer("GetFruits")do
            if localPlayer["Price"]>=1000000 then
              table["insert"](FruitPrice,localPlayer["Name"])
            end
          end
          for players,rootPart in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventoryFruits"))do
            for players,localPlayer in pairs(rootPart)do
              if players=="Name"then
                table["insert"](FruitStore,localPlayer)
              end
            end
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Cousin","Buy")for players,rootPart in pairs(FruitPrice)do
              for players,playerLevel in pairs(FruitStore)do
                if rootPart==playerLevel and(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"]==nil then
                  _G["StoreF"]=false if not localPlayer["Backpack"]:FindFirstChild(FruitStore)then
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit",tostring(rootPart))
                  else
                    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor","1")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor","2")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor","3")
                  end
                end
              end
            end
            if(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables"))["FlamingoAccess"]~=nil then
              _G["StoreF"]=true _G["Auto_DonAcces"]=false
            end
          end
        end
      end
      )
    end
  end
end
)kF["CreateToggle"]({["Title"]="Auto Swan Glasses",["Description"]="",["Default"]=false,
["Callback"]=function(players)
  _G["Auto_SwanGG"]=players
end
})task.spawn(function()
  while wait(.2)do
    if _G["Auto_SwanGG"]then
      pcall(function()
        local players=GetConnectionEnemies("Don Swan")if players then
          repeat
            wait()f["Kill"](players,_G["Auto_SwanGG"])
          until
          _G["Auto_SwanGG"]==false or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](2286.2004394531,15.177839279175,863.8388671875))
        end
      end
      )
    end
  end
end
)local LF=bz["CreateSection"]("Cavender + Twin Hooks + Bigmom")LF["CreateToggle"]({["Title"]="Auto Bigmom",["Description"]="",["Default"]=false,
["Callback"]=function(players)
  _G["AutoBigmom"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoBigmom"]then
      pcall(function()
        local players=GetConnectionEnemies("Cake Queen")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoBigmom"])
          until
          not _G["AutoBigmom"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](-709.3133,381.6006,-11011.3965))
        end
      end
      )
    end
  end
end
)LF["CreateToggle"]({["Title"]="Auto Canvendish Sword"
["Description"]="",["Default"]=false,
["Callback"]=function(players)
  _G["Auto_Cavender"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Cavender"]then
        local players=GetConnectionEnemies("Beautiful Pirate")if players then
          repeat
            wait()f["Kill"](players,_G["Auto_Cavender"])
          until
          not _G["Auto_Cavender"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](5283.6094,22.5622,-110.7829))
        end
      end
    end
    )
  end
end
)LF["CreateToggle"]({["Title"]="Auto Twin Hooks",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["TwinHook"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["TwinHook"]then
        local players=GetConnectionEnemies("Captain Elephant")if players then
          repeat
            wait()f["Kill"](players,_G["TwinHook"])
          until
          not _G["TwinHook"]or players["Humanoid"]["Health"]<=0
        else
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-12471.1699,374.9402,-7551.6777))wait(.2)_tp(CFrame["new"](-13376.7578,433.2869,-8071.3926))
        end
      end
    end
    )
  end
end
)LF["CreateToggle"]({["Title"]="Auto Serpent Bow",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AutoSerpentBow"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoSerpentBow"]then
      local players=GetConnectionEnemies("Hydra Leader")if players then
        repeat
          wait()f["Kill"](players,_G["AutoSerpentBow"])
        until
        not _G["AutoSerpentBow"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
      else
        _tp(CFrame["new"](5821.898,1019.0951,-73.7192))
      end
    end
  end
end
)LF["CreateToggle"]({["Title"]="Auto Lei Accessory"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["AutoKilo"]=players
end
})task.spawn(function()
  while wait(.2)do
    if _G["AutoKilo"]then
      pcall(function()
        local players=GetConnectionEnemies("Kilo Admiral")if players then
          repeat
            task["wait"]()f["Kill"](players,_G["AutoKilo"])
          until
          not _G["AutoKilo"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
        else
          _tp(CFrame["new"](2764.2234,432.4615,-7144.458))
        end
      end
      )
    end
  end
end
)local PF=cz["CreateSection"]("Sea Event / Setting Sail")local jF={"Guardian"
"PirateGrandBrigade","MarineGrandBrigade","PirateBrigade","MarineBrigade","PirateSloop","MarineSloop"
"Beast Hunter"}local GF={"Lv 1","Lv 2"
"Lv 3"
"Lv 4"
"Lv 5","Lv 6"
"Lv Infinite"}local qF=PF["CreateLabel"]({["Title"]=" Spy Status ",["Content"]=""})task.spawn(function()
  while wait(.2)do
    pcall(function()
      local players=string["match"](replicatedStorage["Remotes"]["CommF_"]:InvokeServer("InfoLeviathan","1"),"%d+")if players then
        qF:SetDesc(" Spy Leviathan  : "..tostring(players))if tostring(players)==5 then
          qF:SetDesc(" Spy Leviathan : Already Done!!")
        end
      end
    end
    )
  end
end
)PF["CreateButton"]({["Title"]="Buy Fracments with Spy",["Callback"]=function()
  ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("InfoLeviathan","2")
end
})local VF=PF["CreateLabel"]({["Title"]=" FlozenDimension Status "
["Content"]=""})task.spawn(function()
  pcall(function()
    while wait(.2)do
      if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Frozen Dimension")then
        VF:SetDesc(" Flozen Dimension : True")
      else
        VF:SetDesc(" Flozen Dimension : False")
      end
    end
  end
  )
end
)PF["CreateToggle"]({["Title"]="Auto Teleport Frozen Dimension",["Description"]="turn on for teleport to frozen dimension and start the leviathan gate",["Default"]=false,["Callback"]=function(players)
  _G["FrozenTP"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["FrozenTP"]then
      pcall(function()
        if workspace["Map"]:FindFirstChild("LeviathanGate")then
          _tp(workspace["Map"]["LeviathanGate"]["CFrame"])
          ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("OpenLeviathanGate")
        end
      end
      )
    end
  end
end
)PF["CreateToggle"]({["Title"]="Auto Drive To Hydra Island",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["SailBoat_Hydra"]=players
end
})task.spawn(function()
  while wait()do
    if _G["SailBoat_Hydra"]then
      pcall(function()
        local players=CheckBoat()if not players then
          local players=CFrame["new"](-16927.451,9.086,433.864)TeleportToTarget(players)if(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBoat",_G["SelectedBoat"])
          end
        elseif  players then
          if localPlayer["Character"]["Humanoid"]["Sit"]==false then
            local localPlayer=players["VehicleSeat"]["CFrame"]*CFrame["new"](0,1,0)_tp(localPlayer)
          else
            repeat
              wait()if CheckEnemiesBoat()or CheckPirateGrandBrigade()or CheckTerrorShark()then
                _tp(CFrame["new"](5433,150,290))
              else
                _tp(CFrame["new"](5433,35,290))
              end
            until
            _G["SailBoat_Hydra"]==false or(localPlayer["Character"]:WaitForChild("Humanoid"))["Sit"]==false localPlayer["Character"]["Humanoid"]["Sit"]=false
          end
        end
      end
      )
    end
  end
end
)PF["CreateDropdown"]({["Title"]="Choose Boats",["Description"]="",["Values"]=jF,["Default"]="Guardian"
["Multi"]=false,["Callback"]=function(players)
  _G["SelectedBoat"]=players
end
})PF["CreateButton"]({["Title"]="Buy Boats"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBoat",_G["SelectedBoat"])
end
})PF["CreateDropdown"]({["Title"]="Choose Sea Level",["Description"]="",["Values"]=GF,["Default"]="Lv 1",["Multi"]=false,["Callback"]=function(players)
  _G["DangerSc"]=players
end
})PF["CreateToggle"]({["Title"]="Auto Sail Boat"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["SailBoats"]=players
end
})task.spawn(function()
  while wait()do
    if _G["SailBoats"]then
      pcall(function()
        local players=CheckBoat()if not players and(not(CheckShark()and _G["Shark"]or CheckTerrorShark()and _G["TerrorShark"]or CheckFishCrew()and _G["MobCrew"]or CheckPiranha()and _G["Piranha"])and(not(CheckEnemiesBoat()and _G["FishBoat"])and(not(CheckSeaBeast()and _G["SeaBeast1"])and(not(_G["PGB"]and CheckPirateGrandBrigade())and(not(_G["HCM"]and CheckHauntedCrew())and not(_G["Leviathan1"]and CheckLeviathan()))))))then
          local players=CFrame["new"](-16927.451,9.086,433.864)TeleportToTarget(players)if(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBoat",_G["SelectedBoat"])
          end
        elseif  players and(not(CheckShark()and _G["Shark"]or CheckTerrorShark()and _G["TerrorShark"]or CheckFishCrew()and _G["MobCrew"]or CheckPiranha()and _G["Piranha"])and(not(CheckEnemiesBoat()and _G["FishBoat"])and(not(CheckSeaBeast()and _G["SeaBeast1"])and(not(_G["PGB"]and CheckPirateGrandBrigade())and(not(_G["HCM"]and CheckHauntedCrew())and not(_G["Leviathan1"]and CheckLeviathan()))))))then
          if localPlayer["Character"]["Humanoid"]["Sit"]==false then
            local localPlayer=players["VehicleSeat"]["CFrame"]*CFrame["new"](0,1,0)_tp(localPlayer)
          else
            if _G["DangerSc"]=="Lv 1"then
              CFrameSelectedZone=CFrame["new"](-21998.375,30.0006084,-682.309143)
            elseif  _G["DangerSc"]=="Lv 2"then
              CFrameSelectedZone=CFrame["new"](-26779.5215,30.0005474,-822.858032)
            elseif  _G["DangerSc"]=="Lv 3"then
              CFrameSelectedZone=CFrame["new"](-31171.957,30.0001011,-2256.93774)
            elseif  _G["DangerSc"]=="Lv 4"then
              CFrameSelectedZone=CFrame["new"](-34054.6875,30.2187767,-2560.12012)
            elseif  _G["DangerSc"]=="Lv 5"then
              CFrameSelectedZone=CFrame["new"](-38887.5547,30.0004578,-2162.99023)
            elseif  _G["DangerSc"]=="Lv 6"then
              CFrameSelectedZone=CFrame["new"](-44541.7617,30.0003204,-1244.8584)
            elseif  _G["DangerSc"]=="Lv Infinite"then
              CFrameSelectedZone=CFrame["new"](-10000000,31,37016.25)
            end
            repeat
              wait()if not _G["FishBoat"]and CheckEnemiesBoat()or not _G["PGB"]and CheckPirateGrandBrigade()or not _G["TerrorShark"]and CheckTerrorShark()then
                _tp(CFrameSelectedZone*CFrame["new"](0,150,0))
              else
                _tp(CFrameSelectedZone)
              end
            until
            _G["SailBoats"]==false or CheckShark()and _G["Shark"]or CheckTerrorShark()and _G["TerrorShark"]or CheckFishCrew()and _G["MobCrew"]or CheckPiranha()and _G["Piranha"]or CheckSeaBeast()and _G["SeaBeast1"]or CheckEnemiesBoat()and _G["FishBoat"]or _G["Leviathan1"]and CheckLeviathan()or _G["HCM"]and CheckHauntedCrew()or _G["PGB"]and CheckPirateGrandBrigade()or(localPlayer["Character"]:WaitForChild("Humanoid"))["Sit"]==false localPlayer["Character"]["Humanoid"]["Sit"]=false
          end
        end
      end
      )
    end
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      for players,localPlayer in pairs(workspace["Boats"]:GetChildren())do
        for players,localPlayer in pairs(workspace["Boats"][localPlayer["Name"]]:GetDescendants())do
          if localPlayer:IsA("BasePart")then
            if _G["SailBoats"]or _G["Prehis_Find"]or _G["FindMirage"]or _G["SailBoat_Hydra"]or _G["AutofindKitIs"]then
              localPlayer["CanCollide"]=false
            else
              localPlayer["CanCollide"]=true
            end
          end
        end
      end
    end
    )
  end
end
)local tF=cz["CreateSection"]("Entity Sea Event")tF["CreateToggle"]({["Title"]="Auto Shark"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["Shark"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Piranha",["Description"]="",["Default"]=false,
["Callback"]=function(players)
  _G["Piranha"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Terror Shark"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["TerrorShark"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Fish Crew Member"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["MobCrew"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Haunted Crew Member",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["HCM"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Attack PirateGrandBrigade",["Description"]="",["Default"]=false,
["Callback"]=function(players)
  _G["PGB"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Attack Fish Boat"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["FishBoat"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Attack Sea Beast"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["SeaBeast1"]=players
end
})tF["CreateToggle"]({["Title"]="Auto Attack Leviathan",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Leviathan1"]=players
end
})task.spawn(function()
  while wait()do
    pcall(function()
      if _G["Shark"]then
        local players={"Shark"}if CheckShark()then
          for localPlayer,rootPart in pairs(workspace["Enemies"]:GetChildren())do
            if table["find"](players,rootPart["Name"])then
              if f["Alive"](rootPart)then
                repeat
                  task["wait"]()f["Kill"](rootPart,_G["Shark"])
                until
                _G["Shark"]==false or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0
              end
            end
          end
        end
      end
      if _G["TerrorShark"]then
        local players={"Terrorshark"}if CheckTerrorShark()then
          for localPlayer,rootPart in pairs(workspace["Enemies"]:GetChildren())do
            if table["find"](players,rootPart["Name"])then
              if f["Alive"](rootPart)then
                repeat
                  task["wait"]()f["KillSea"](rootPart,_G["TerrorShark"])
                until
                _G["TerrorShark"]==false or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0
              end
            end
          end
        end
      end
      if _G["Piranha"]then
        local players={"Piranha"}if CheckPiranha()then
          for localPlayer,rootPart in pairs(workspace["Enemies"]:GetChildren())do
            if table["find"](players,rootPart["Name"])then
              if f["Alive"](rootPart)then
                repeat
                  task["wait"]()f["Kill"](rootPart,_G["Piranha"])
                until
                _G["Piranha"]==false or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0
              end
            end
          end
        end
      end
      if _G["MobCrew"]then
        local players={"Fish Crew Member"}if CheckFishCrew()then
          for localPlayer,rootPart in pairs(workspace["Enemies"]:GetChildren())do
            if table["find"](players,rootPart["Name"])then
              if f["Alive"](rootPart)then
                repeat
                  task["wait"]()f["Kill"](rootPart,_G["MobCrew"])
                until
                _G["MobCrew"]==false or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0
              end
            end
          end
        end
      end
      if _G["HCM"]then
        local players={"Haunted Crew Member"}if CheckHauntedCrew()then
          for localPlayer,rootPart in pairs(workspace["Enemies"]:GetChildren())do
            if table["find"](players,rootPart["Name"])then
              if f["Alive"](rootPart)then
                repeat
                  task["wait"]()f["Kill"](rootPart,_G["HCM"])
                until
                _G["HCM"]==false or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0
              end
            end
          end
        end
      end
      if _G["SeaBeast1"]then
        if workspace["SeaBeasts"]:FindFirstChild("SeaBeast1")then
          for players,rootPart in pairs(workspace["SeaBeasts"]:GetChildren())do
            if rootPart:FindFirstChild("HumanoidRootPart")and(rootPart:FindFirstChild("Health")and rootPart["Health"]["Value"]>0)then
              repeat
                task["wait"]()task.spawn(function()
                  _tp(CFrame["new"](rootPart["HumanoidRootPart"]["Position"]["X"],(game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Position"]["Y"]+200,rootPart["HumanoidRootPart"]["Position"]["Z"]))
                end
                )if localPlayer:DistanceFromCharacter(rootPart["HumanoidRootPart"]["CFrame"]["Position"])<=500 then
                  AitSeaSkill_Custom=rootPart["HumanoidRootPart"]["CFrame"]MousePos=AitSeaSkill_Custom["Position"]if CheckF()then
                    weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")
                  else
                    Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")
                  end
                end
              until
              _G["SeaBeast1"]==false or not rootPart:FindFirstChild("HumanoidRootPart")or not rootPart["Parent"]or rootPart["Health"]["Value"]<=0
            end
          end
        end
      end
      if _G["Leviathan1"]then
        if workspace["SeaBeasts"]:FindFirstChild("Leviathan")then
          for players,rootPart in pairs(workspace["SeaBeasts"]:GetChildren())do
            if rootPart:FindFirstChild("HumanoidRootPart")and(rootPart:FindFirstChild("Leviathan Segment")and(rootPart:FindFirstChild("Health")and rootPart["Health"]["Value"]>0))then
              repeat
                task["wait"]()task.spawn(function()
                  _tp(CFrame["new"](rootPart["HumanoidRootPart"]["Position"]["X"],(game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Position"]["Y"]+200,rootPart["HumanoidRootPart"]["Position"]["Z"]))
                end
                )if localPlayer:DistanceFromCharacter(rootPart["HumanoidRootPart"]["CFrame"]["Position"])<=500 then
                  MousePos=(rootPart:FindFirstChild("Leviathan Segment"))["Position"]if CheckF()then
                    weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")
                  else
                    Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")
                  end
                end
              until
              _G["Leviathan1"]==false or not rootPart:FindFirstChild("HumanoidRootPart")or not rootPart["Parent"]or rootPart["Health"]["Value"]<=0
            end
          end
        end
      end
      if _G["FishBoat"]then
        if CheckEnemiesBoat()then
          for players,rootPart in pairs(workspace["Enemies"]:GetChildren())do
            if rootPart:FindFirstChild("Health")and(rootPart["Health"]["Value"]>0 and rootPart:FindFirstChild("VehicleSeat"))then
              repeat
                task["wait"]()task.spawn(function()
                  if rootPart["Name"]=="FishBoat"then
                    _tp(rootPart["Engine"]["CFrame"]*CFrame["new"](0,-50,-25))
                  end
                end
                )if localPlayer:DistanceFromCharacter(rootPart["Engine"]["CFrame"]["Position"])<=150 then
                  AitSeaSkill_Custom=rootPart["Engine"]["CFrame"]MousePos=AitSeaSkill_Custom["Position"]if CheckF()then
                    weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")
                  else
                    Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")
                  end
                end
              until
              _G["FishBoat"]==false or not rootPart:FindFirstChild("VehicleSeat")or rootPart["Health"]["Value"]<=0
            end
          end
        end
      end
      if _G["PGB"]then
        if CheckPirateGrandBrigade()then
          for players,rootPart in pairs(workspace["Enemies"]:GetChildren())do
            if rootPart:FindFirstChild("Health")and(rootPart["Health"]["Value"]>0 and rootPart:FindFirstChild("VehicleSeat"))then
              repeat
                task["wait"]()task.spawn(function()
                  if rootPart["Name"]=="PirateBrigade"then
                    _tp(rootPart["Engine"]["CFrame"]*CFrame["new"](0,-30,-10))
                  elseif  rootPart["Name"]=="PirateGrandBrigade"then
                    _tp(rootPart["Engine"]["CFrame"]*CFrame["new"](0,-50,-50))
                  end
                end
                )if localPlayer:DistanceFromCharacter(rootPart["Engine"]["CFrame"]["Position"])<=150 then
                  AitSeaSkill_Custom=rootPart["Engine"]["CFrame"]MousePos=AitSeaSkill_Custom["Position"]if CheckF()then
                    weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")
                  else
                    Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")
                  end
                end
              until
              _G["PGB"]==false or not rootPart:FindFirstChild("VehicleSeat")or rootPart["Health"]["Value"]<=0
            end
          end
        end
      end
    end
    )
  end
end
)local XF=cz["CreateSection"]("Kitsune Island / Event")local hF=XF["CreateLabel"]({["Title"]=" Kitsune Island Status "
["Content"]=""})task.spawn(function()
  while wait(.2)do
    if workspace["Map"]:FindFirstChild("KitsuneIsland")or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island")then
      hF:SetDesc(" Kitsune Island : True")
    else
      hF:SetDesc(" Kitsune Island : False")
    end
  end
end
)XF["CreateToggle"]({["Title"]="Auto Find Kitsune Island",["Description"]="turn on for finding & tween kitsune island",["Default"]=false,["Callback"]=function(players)
  _G["AutofindKitIs"]=players
end
})task.spawn(function()
  while wait()do
    if _G["AutofindKitIs"]then
      pcall(function()
        if not workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island",true)then
          local players=CheckBoat()if not players then
            local players=CFrame["new"](-16927.451,9.086,433.864)TeleportToTarget(players)if(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBoat",_G["SelectedBoat"])
            end
          else
            if localPlayer["Character"]["Humanoid"]["Sit"]==false then
              local localPlayer=players["VehicleSeat"]["CFrame"]*CFrame["new"](0,1,0)_tp(localPlayer)
            else
              local players=CFrame["new"](-10000000,31,37016.25)repeat
                wait()if CheckEnemiesBoat()or CheckTerrorShark()or CheckPirateGrandBrigade()then
                  _tp(CFrame["new"](-10000000,150,37016.25))
                else
                  _tp(CFrame["new"](-10000000,31,37016.25))
                end
              until
              not _G["AutofindKitIs"]or(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island")or localPlayer["Character"]["Humanoid"]["Sit"]==false localPlayer["Character"]["Humanoid"]["Sit"]=false
            end
          end
        else
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island"))["CFrame"]*CFrame["new"](0,500,0))
        end
      end
      )
    end
  end
end
)XF["CreateToggle"]({["Title"]="Auto Teleport to Shrine Actived",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["tweenShrine"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["tweenShrine"]then
      pcall(function()
        local players=workspace["Map"]:FindFirstChild("KitsuneIsland")or game["Workspace"]["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island")local localPlayer=players:FindFirstChild("ShrineActive")if localPlayer then
          for localPlayer,rootPart in next,localPlayer:GetDescendants()do
            if rootPart:IsA("BasePart")and rootPart["Name"]:find("NeonShrinePart")then
              (replicatedStorage["Modules"]["Net"]:FindFirstChild("RE/TouchKitsuneStatue")):FireServer()repeat
                wait()_tp(rootPart["CFrame"]*CFrame["new"](0,2,0))
              until
              _G["tweenShrine"]==false or not players
            end
          end
        else
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island"))["CFrame"]*CFrame["new"](0,500,0))
        end
      end
      )
    end
  end
end
)XF["CreateToggle"]({["Title"]="Auto Collect Azure Ember"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["Collect_Ember"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["Collect_Ember"]then
      pcall(function()
        if workspace:WaitForChild("AttachedAzureEmber")or workspace:WaitForChild("EmberTemplate")then
          notween(((workspace:WaitForChild("EmberTemplate")):FindFirstChild("Part"))["CFrame"])
        else
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island"))["CFrame"]*CFrame["new"](0,500,0))replicatedStorage["Modules"]["Net"]["RF/KitsuneStatuePray"]:InvokeServer()
        end
      end
      )
    end
  end
end
)XF["CreateToggle"]({["Title"]="Auto Trade Azure Ember",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Trade_Ember"]=players
end
})task.spawn(function()
  while wait(.1)do
    if _G["Trade_Ember"]then
      pcall(function()
        if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Kitsune Island",true)then
          (replicatedStorage["Modules"]["Net"]:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer()
        end
      end
      )
    end
  end
end
)XF["CreateButton"]({["Title"]="Trade Items Azure",["Callback"]=function()
  (replicatedStorage["Modules"]["Net"]:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer()
end
})XF["CreateButton"]({["Title"]="Talk with kitsune statue",["Callback"]=function()
  (replicatedStorage["Modules"]["Net"]:FindFirstChild("RE/TouchKitsuneStatue")):FireServer()
end
})local BF=Hz["CreateSection"]("Mystic Island / Full Moon")FullMOOn=BF["CreateLabel"]({["Title"]=" FullMoon Status ",["Content"]=""})Ismirage=BF["CreateLabel"]({["Title"]=" Mirage Island Status ",["Content"]=""})task.spawn(function()
  while wait(.2)do
    if workspace["Map"]:FindFirstChild("MysticIsland")or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Mirage Island")then
      Ismirage:SetDesc(" Mirage Island : True")
    else
      Ismirage:SetDesc(" Mirage Island : False")
    end
  end
end
)task.spawn(function()
  while wait(.2)do
    pcall(function()
      moon8="http://www.roblox.com/asset/?id=9709150401"moon7="http://www.roblox.com/asset/?id=9709150086"moon6="http://www.roblox.com/asset/?id=9709149680"moon5="http://www.roblox.com/asset/?id=9709149431"moon4="http://www.roblox.com/asset/?id=9709149052"moon3="http://www.roblox.com/asset/?id=9709143733"moon2="http://www.roblox.com/asset/?id=9709139597"moon1="http://www.roblox.com/asset/?id=9709135895"moon=Getmoon()if moon==moon1 then
        FullMOOn:SetDesc("Moon : 0 / 8")
      elseif  moon==moon2 then
        FullMOOn:SetDesc("Moon : 1 / 8")
      elseif  moon==moon3 then
        FullMOOn:SetDesc("Moon : 2 / 8")
      elseif  moon==moon4 then
        FullMOOn:SetDesc("Moon : 3 / 8 [ Next Night ]")
      elseif  moon==moon5 then
        FullMOOn:SetDesc("Moon : 4 / 8 [ Full Moon ]")
      elseif  moon==moon6 then
        FullMOOn:SetDesc("Moon : 5 / 8 [ Last Night ]")
      elseif  moon==moon7 then
        FullMOOn:SetDesc("Moon : 6 / 8")
      elseif  moon==moon8 then
        FullMOOn:SetDesc("Moon : 7 / 8")
      end
    end
    )
  end
end
)BF["CreateToggle"]({["Title"]="Auto Find Mirage Island"
["Description"]="turn on for finding & tween mirage island",["Default"]=false
["Callback"]=function(players)
  _G["FindMirage"]=players
end
})task.spawn(function()
  while wait()do
    if _G["FindMirage"]then
      pcall(function()
        if not workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Mirage Island",true)then
          local players=CheckBoat()if not players then
            local players=CFrame["new"](-16927.451,9.086,433.864)TeleportToTarget(players)if(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBoat",_G["SelectedBoat"])
            end
          else
            if localPlayer["Character"]["Humanoid"]["Sit"]==false then
              local localPlayer=players["VehicleSeat"]["CFrame"]*CFrame["new"](0,1,0)_tp(localPlayer)
            else
              repeat
                wait()local players=CFrame["new"](-10000000,31,37016.25)if CheckEnemiesBoat()or CheckTerrorShark()or CheckPirateGrandBrigade()then
                  _tp(CFrame["new"](-10000000,150,37016.25))
                else
                  _tp(CFrame["new"](-10000000,31,37016.25))
                end
              until
              not _G["FindMirage"]or(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Mirage Island")or localPlayer["Character"]["Humanoid"]["Sit"]==false localPlayer["Character"]["Humanoid"]["Sit"]=false
            end
          end
        else
          _tp(workspace["Map"]["MysticIsland"]["Center"]["CFrame"]*CFrame["new"](0,300,0))
        end
      end
      )
    end
  end
end
)BF["CreateToggle"]({["Title"]="Auto Tween To Highest Point",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["HighestMirage"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["HighestMirage"]then
      pcall(function()
        if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Mirage Island",true)then
          _tp(workspace["Map"]["MysticIsland"]["Center"]["CFrame"]*CFrame["new"](0,400,0))
        end
      end
      )
    end
  end
end
)BF["CreateToggle"]({["Title"]="Auto Collect Gear"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["TPGEAR"]=players
end
})task.spawn(function()
  pcall(function()
    while wait(.1)do
      if _G["TPGEAR"]then
        for players,localPlayer in pairs((workspace["Map"]:FindFirstChild("MysticIsland")):GetChildren())do
          if localPlayer["Name"]=="Part"and localPlayer["ClassName"]=="MeshPart"then
            _tp(localPlayer["CFrame"])
          end
        end
      end
    end
  end
  )
end
)BF["CreateToggle"]({["Title"]="Change Transparency can see",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["can"]=players
end
})task.spawn(function()
  pcall(function()
    while wait(T)do
      if _G["can"]then
        for players,localPlayer in pairs((workspace["Map"]:FindFirstChild("MysticIsland")):GetChildren())do
          if localPlayer["Name"]=="Part"then
            if localPlayer["ClassName"]=="MeshPart"then
              localPlayer["Transparency"]=0
            else
              localPlayer["Transparency"]=1
            end
          end
        end
      end
    end
  end
  )
end
)BF["CreateToggle"]({["Title"]="Auto Tween Advanced Fruit Dealer",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["Addealer"]=players
end
})task.spawn(function()
  while wait()do
    if _G["Addealer"]then
      pcall(function()
        for players,localPlayer in pairs(replicatedStorage["NPCs"]:GetChildren())do
          if localPlayer["Name"]=="Advanced Fruit Dealer"then
            _tp(localPlayer["HumanoidRootPart"]["CFrame"])
          end
        end
      end
      )
    end
  end
end
)BF["CreateToggle"]({["Title"]="Auto Collect Mirage Chest",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["FarmChestM"]=players
end
})task.spawn(function()
  while wait(.2)do
    if _G["FarmChestM"]then
      pcall(function()
        if workspace["Map"]["MysticIsland"]["Chests"]:FindFirstChild("DiamondChest")or workspace["Map"]["MysticIsland"]["Chests"]:FindFirstChild("FragChest")then
          local players=game:GetService("CollectionService")local localPlayer=game:GetService("Players")local rootPart=localPlayer["LocalPlayer"]local replicatedStorage=rootPart["Character"]or rootPart["CharacterAdded"]:Wait()if not replicatedStorage then
            return
          end
          local playerLevel=(replicatedStorage:GetPivot())["Position"]local teleportService=players:GetTagged("_ChestTagged")local tweenService,lighting=math["huge"],nil for players=1,#teleportService,1 do
            local localPlayer=teleportService[players]local rootPart=((localPlayer:GetPivot())["Position"]-playerLevel)["Magnitude"]if not SelectedIsland or localPlayer:IsDescendantOf(SelectedIsland)then
              if not localPlayer:GetAttribute("IsDisabled")and rootPart<tweenService then
                tweenService=rootPart lighting=localPlayer
              end
            end
          end
          if lighting then
            _tp(lighting:GetPivot())
          end
        end
      end
      )
    end
  end
end
)local lF=Hz["CreateSection"]("Skull Guitars / Misc")local pF=lF["CreateLabel"]({["Title"]=" Skull Guitar Quests "
["Content"]=""})task.spawn(function()
  while wait(.2)do
    pcall(function()
      if Quest1==true then
        pF:SetDesc(" Quest Number : Quest1")
      elseif  Quest2==true then
        pF:SetDesc(" Quest Number : Quest2")
      elseif  Quest3==true then
        pF:SetDesc(" Quest Number : Quest3")
      elseif  Quest4==true then
        pF:SetDesc(" Quest Number : Quest4")
      elseif  GetWP("Skull Guitar")then
        pF:SetDesc(" Quest Number : Collect!!")
      else
        pF:SetDesc(" Quest Number : No Quest!!")
      end
    end
    )
  end
end
)lF["CreateToggle"]({["Title"]="Auto Skull Guitar"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Auto_Soul_Guitar"]=players
end
})task["spawn"](function()
  while wait()do
    if _G["Auto_Soul_Guitar"]then
      pcall(function()
        local players=GetConnectionEnemies("Living Zombie")if players then
          players["HumanoidRootPart"]["CFrame"]=CFrame["new"](-10138.397460938,138.65246582031,5902.8920898438)players["Head"]["CanCollide"]=false players["Humanoid"]["Sit"]=false players["HumanoidRootPart"]["CanCollide"]=false players["Humanoid"]["JumpPower"]=0 players["Humanoid"]["WalkSpeed"]=0 if players["Humanoid"]:FindFirstChild("Animator")then
            (players["Humanoid"]:FindFirstChild("Animator")):Destroy()
          end
        end
      end
      )
    end
  end
end
)function getT(players)
  local localPlayer if players==1 then
    localPlayer=workspace["Map"]["Haunted Castle"]["Tablet"]["Segment1"]["Line"]["Rotation"]
  elseif  players==3 then
    localPlayer=workspace["Map"]["Haunted Castle"]["Tablet"]["Segment3"]["Line"]["Rotation"]
  elseif  players==4 then
    localPlayer=workspace["Map"]["Haunted Castle"]["Tablet"]["Segment4"]["Line"]["Rotation"]
  elseif  players==7 then
    localPlayer=workspace["Map"]["Haunted Castle"]["Tablet"]["Segment7"]["Line"]["Rotation"]
  elseif  players==10 then
    localPlayer=workspace["Map"]["Haunted Castle"]["Tablet"]["Segment10"]["Line"]["Rotation"]
  end
  if localPlayer then
    return localPlayer["Z"]
  end
end
function getRT(players)
  local localPlayer=workspace["Map"]["Haunted Castle"]["Trophies"]["Quest"]local rootPart for localPlayer,replicatedStorage in pairs(localPlayer:GetChildren())do
    if players==1 and(replicatedStorage["Name"]=="Trophy1"and replicatedStorage:FindFirstChild("Handle"))then
      rootPart=replicatedStorage["Handle"]["Rotation"]
    elseif  players==2 and(replicatedStorage["Name"]=="Trophy2"and replicatedStorage:FindFirstChild("Handle"))then
      rootPart=replicatedStorage["Handle"]["Rotation"]
    elseif  players==3 and(replicatedStorage["Name"]=="Trophy3"and replicatedStorage:FindFirstChild("Handle"))then
      rootPart=replicatedStorage["Handle"]["Rotation"]
    elseif  players==4 and(replicatedStorage["Name"]=="Trophy4"and replicatedStorage:FindFirstChild("Handle"))then
      rootPart=replicatedStorage["Handle"]["Rotation"]
    elseif  players==5 and(replicatedStorage["Name"]=="Trophy5"and replicatedStorage:FindFirstChild("Handle"))then
      rootPart=replicatedStorage["Handle"]["Rotation"]
    end
    if rootPart then
      return rootPart["Z"]
    end
  end
end
GetFirePlacard=function(players,localPlayer)
  if tostring(workspace["Map"]["Haunted Castle"]["Placard"..players][localPlayer]["Indicator"]["BrickColor"])~="Pearl"then
    fireclickdetector(workspace["Map"]["Haunted Castle"]["Placard"..players][localPlayer]["ClickDetector"])
  end
end
task.spawn(function()
  repeat
    task["wait"]()
  until
  _G["Auto_Soul_Guitar"]while wait(T)do
    pcall(function()
      if _G["Auto_Soul_Guitar"]then
        if World3 then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent",2)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent",2,true)if replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Check")==nil then
            _tp(CFrame["new"](-8655.0166015625,141.31669616699,6160.0224609375))replicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent",2)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent",2,true)
          elseif (replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Check"))["Swamp"]==false then
            Quest1=true Quest2=false Quest3=false Quest4=false local players=GetConnectionEnemies("Living Zombie")if players then
              repeat
                task["wait"]()f["Kill"](players,_G["Auto_Soul_Guitar"])
              until
              not _G["Auto_Soul_Guitar"]or players["Humanoid"]["Health"]<=0 or not players["Parent"]or workspace["Map"]["Haunted Castle"]["SwampWater"]["Color"]~=Color3["fromRGB"](117,0,0)
            else
              _tp(CFrame["new"](-10170.727539062,138.65246582031,5934.2651367188))
            end
          elseif (replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Check"))["Gravestones"]==false then
            Quest1=false Quest2=true Quest3=false Quest4=false GetFirePlacard("7","Left")GetFirePlacard("6","Left")GetFirePlacard("5","Left")GetFirePlacard("4","Right")GetFirePlacard("3","Left")GetFirePlacard("2","Right")GetFirePlacard("1","Right")
          elseif (replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Check"))["Ghost"]==false then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Ghost")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Ghost",true)
          elseif (replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Check"))["Trophies"]==false then
            Quest1=false Quest2=false Quest3=true Quest4=false _tp(CFrame["new"](-9532.8232421875,6.471667766571,6078.068359375))repeat
              wait()local players=getRT(1)local localPlayer=getT(1)if players and localPlayer then
                fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment1"]:FindFirstChild("ClickDetector"))
              end
            until
            players==localPlayer repeat
              wait()local players=getRT(2)local localPlayer=getT(3)if players and localPlayer then
                fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment3"]:FindFirstChild("ClickDetector"))
              end
            until
            players==localPlayer repeat
              wait()local players=getRT(3)local localPlayer=getT(4)if players and localPlayer then
                fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment4"]:FindFirstChild("ClickDetector"))
              end
            until
            players==localPlayer repeat
              wait()local players=getRT(4)local localPlayer=getT(7)if players and localPlayer then
                fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment7"]:FindFirstChild("ClickDetector"))
              end
            until
            players==localPlayer repeat
              wait()local players=getRT(5)local localPlayer=getT(10)if players and localPlayer then
                fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment10"]:FindFirstChild("ClickDetector"))
              end
            until
            players==localPlayer repeat
              wait()fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment2"]:FindFirstChild("ClickDetector"))fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment5"]:FindFirstChild("ClickDetector"))fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment6"]:FindFirstChild("ClickDetector"))fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment8"]:FindFirstChild("ClickDetector"))fireclickdetector(workspace["Map"]["Haunted Castle"]["Tablet"]["Segment9"]:FindFirstChild("ClickDetector"))
            until
            workspace["Map"]["Haunted Castle"]["Tablet"]["Segment2"]["Line"]["Rotation"]["Z"]==0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment5"]["Line"]["Rotation"]["Z"]==0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment6"]["Line"]["Rotation"]["Z"]==0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment8"]["Line"]["Rotation"]["Z"]==0 or workspace["Map"]["Haunted Castle"]["Tablet"]["Segment9"]["Line"]["Rotation"]["Z"]==0
          elseif (replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress","Check"))["Pipes"]==false then
            Quest1=false Quest2=false Quest3=false Quest4=true _tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part3"]["CFrame"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part3"]["ClickDetector"])_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["CFrame"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["ClickDetector"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["ClickDetector"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part4"]["ClickDetector"])_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part6"]["CFrame"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part6"]["ClickDetector"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part6"]["ClickDetector"])_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part8"]["CFrame"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part8"]["ClickDetector"])_tp(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["CFrame"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["ClickDetector"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["ClickDetector"])fireclickdetector(workspace["Map"]["Haunted Castle"]["Lab Puzzle"]["ColorFloor"]["Model"]["Part10"]["ClickDetector"])
          end
        end
      end
    end
    )
  end
end
)lF["CreateToggle"]({["Title"]="Auto Farm Material Skull Guitar",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoMatSoul"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AutoMatSoul"]and GetWP("Skull Guitar")==false then
        if GetM("Bones")>=500 and(GetM("Ectoplasm")>=250 and GetM("Dark Fragment")>=1)then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("soulGuitarBuy",true)
        else
          if GetM("Ectoplasm")<=250 then
            if _G["AutoMatSoul"]and World2 then
              local players={"Ship Deckhand",
              "Ship Engineer","Ship Steward",
              "Ship Officer","Arctic Warrior"}local localPlayer=GetConnectionEnemies(players)if localPlayer then
                repeat
                  task["wait"]()f["Kill"](localPlayer,_G["AutoMatSoul"])
                until
                not _G["AutoMatSoul"]or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0
              else
                replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923.21252441406,126.9760055542,32852.83203125))
              end
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
            end
          elseif  GetM("Dark Fragment")<1 then
            if _G["AutoMatSoul"]and World2 then
              local players=GetConnectionEnemies("Darkbeard")if players then
                repeat
                  task["wait"]()f["Kill"](players,_G["AutoMatSoul"])
                until
                _G["AutoMatSoul"]or players["Humanoid"]["Health"]<=0
              else
                _tp(CFrame["new"](3798.4575195313,13.826690673828,-3399.806640625))
              end
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
            end
            if not GetConnectionEnemies("Darkbeard")then
              Hop()
            end
          elseif  GetM("Bones")<=500 then
            if _G["AutoMatSoul"]and World3 then
              local players={"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}
              local localPlayer=GetConnectionEnemies(players)if localPlayer then
                repeat
                  task["wait"]()f["Kill"](localPlayer,_G["AutoMatSoul"])
                until
                not _G["AutoMatSoul"]or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0
              else
                _tp(CFrame["new"](-9504.8564453125,172.14292907715,6057.259765625))
              end
            else
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
            end
          end
        end
      end
    end
    )
  end
end
)lF["CreateButton"]({["Title"]="Talk With Stone",["Callback"]=function()
  ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress","Begin")
  ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress","Check")
  ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress","Teleport")
  ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("RaceV4Progress","Continue")
end
})lF["CreateToggle"]({["Title"]="Auto Look At Moon",["Description"]="",["Default"]=false,["Callback"]=function(players)
  LookM=players
end
})function MoveCamtoMoon()
  workspace["CurrentCamera"]["CFrame"]=CFrame["new"](workspace["CurrentCamera"]["CFrame"]["Position"],lighting:GetMoonDirection()+workspace["CurrentCamera"]["CFrame"]["Position"])localPlayer["Character"]["HumanoidRootPart"]["CFrame"]=CFrame["new"](localPlayer["Character"]["HumanoidRootPart"]["Position"],lighting:GetMoonDirection()+localPlayer["Character"]["HumanoidRootPart"]["CFrame"]["Position"])
end
task["spawn"](function()
  while task["wait"]()do
    if LookM then
      MoveCamtoMoon()wait(.1)replicatedStorage["Remotes"]["CommE"]:FireServer("ActivateAbility")
    end
  end
end
)local EF=Hz["CreateSection"]("Trials Quests / Misc V4")local eF=EF["CreateLabel"]({["Title"]=" Tiers V4 Status "
["Content"]=""})task.spawn(function()
  pcall(function()
    while wait(.2)do
      eF:SetDesc(" Tiers - V4  :"..(" "..localPlayer["Data"]["Race"]["C"]["Value"]))
    end
  end
  )
end
)EF["CreateToggle"]({["Title"]="Auto Pull Lever",["Description"]="",
["Default"]=false,["Callback"]=function(players)
  _G["Lver"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["Lver"]then
      pcall(function()
        for players,localPlayer in pairs(workspace["Map"]["Temple of Time"]:GetDescendants())do
          if localPlayer["Name"]=="ProximityPrompt"then
            fireproximityprompt(localPlayer,math["huge"])
          end
        end
      end
      )
    end
  end
end
)EF["CreateToggle"]({["Title"]="Auto Train V4",["Description"]="turn on for farm tier + auto upgrade your tier level",["Default"]=false,["Callback"]=function(players)
  _G["AcientOne"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["AcientOne"]then
        local players={"Reborn Skeleton",
        "Living Zombie",
        "Demonic Soul",
        "Posessed Mummy"}for rootPart=1,#players,1 do
          if(localPlayer["Character"]:FindFirstChild("RaceEnergy"))["Value"]==1 then
            virtualInput:SendKeyEvent(true,"Y",false,game)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("UpgradeRace","Buy")_tp(CFrame["new"](-8987.041015625,215.86206054688,5886.7104492188))
          elseif (localPlayer["Character"]:FindFirstChild("RaceTransformed"))["Value"]==false then
            local localPlayer=GetConnectionEnemies(players)if localPlayer then
              repeat
                wait()f["Kill"](localPlayer,_G["AcientOne"])
              until
              _G["AcientOne"]==false or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]
            else
              _tp(CFrame["new"](-9495.6806640625,453.58624267578,5977.3486328125))
            end
          end
        end
      end
    end
    )
  end
end
)EF["CreateButton"]({["Title"]="Teleport to Temple of Time",
["Callback"]=function()
  TpTemple()
end
})function TpTemple()
  local players=(game["ReplicatedStorage"]:WaitForChild("MapStash")):FindFirstChild("Temple of Time")
  (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]["CFrame"]=CFrame["new"](28286,14897,103)if players then
    players["Parent"]=workspace:WaitForChild("Map")
  end
end
EF["CreateButton"]({["Title"]="Teleport to Ancient One",["Callback"]=function()
  TpTemple()notween(CFrame["new"](28981.552734375,14888.426757812,-120.24584960938))
end
})EF["CreateButton"]({["Title"]="Teleport to Ancient Clock",
["Callback"]=function()
  TpTemple()notween(CFrame["new"](29549,15069,-88))
end
})EF["CreateToggle"]({["Title"]="Auto Teleport to Race Doors",["Description"]="",["Default"]=false,
["Callback"]=function(players)
  _G["TPDoor"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["TPDoor"]then
        if tostring(localPlayer["Data"]["Race"]["Value"])=="Mink"then
          _tp(CFrame["new"](29020.66015625,14889.426757812,-379.2682800293))
        elseif  tostring(localPlayer["Data"]["Race"]["Value"])=="Fishman"then
          _tp(CFrame["new"](28224.056640625,14889.426757812,-210.58720397949))
        elseif  tostring(localPlayer["Data"]["Race"]["Value"])=="Cyborg"then
          _tp(CFrame["new"](28492.4140625,14894.426757812,-422.11001586914))
        elseif  tostring(localPlayer["Data"]["Race"]["Value"])=="Skypiea"then
          _tp(CFrame["new"](28967.408203125,14918.075195312,234.31198120117))
        elseif  tostring(localPlayer["Data"]["Race"]["Value"])=="Ghoul"then
          _tp(CFrame["new"](28672.720703125,14889.127929688,454.59616088867))
        elseif  tostring(localPlayer["Data"]["Race"]["Value"])=="Human"then
          _tp(CFrame["new"](29237.294921875,14889.426757812,-206.94955444336))
        end
      end
    end
    )
  end
end
)EF["CreateToggle"]({["Title"]="Auto Complete Trial Race",["Description"]="",
["Default"]=false,
["Callback"]=function(players)
  _G["Complete_Trials"]=players
end
})GetSeaBeastTrial=function()
  if not workspace["Map"]:FindFirstChild("FishmanTrial")then
    return nil
  end
  if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Trial of Water")then
    FishmanTrial=workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Trial of Water")
  end
  if FishmanTrial then
    for players,localPlayer in next,workspace["SeaBeasts"]:GetChildren()do
      if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer["HumanoidRootPart"]["Position"]-FishmanTrial["Position"])["Magnitude"]<=1500 then
        if localPlayer["Health"]["Value"]>0 then
          return localPlayer
        end
      end
    end
  end
end
task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Complete_Trials"]then
        if tostring(localPlayer["Data"]["Race"]["Value"])=="Mink"then
          notween(workspace["Map"]["MinkTrial"]["Ceiling"]["CFrame"]*CFrame["new"](0,-20,0))
        end
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Complete_Trials"]then
        if tostring(localPlayer["Data"]["Race"]["Value"])=="Fishman"then
          if GetSeaBeastTrial()then
            repeat
              task["wait"]()task.spawn(function()
                _tp(CFrame["new"]((GetSeaBeastTrial())["HumanoidRootPart"]["Position"]["X"],(game:GetService("Workspace"))["Map"]["WaterBase-Plane"]["Position"]["Y"]+300,(GetSeaBeastTrial())["HumanoidRootPart"]["Position"]["Z"]))
              end
              )MousePos=(GetSeaBeastTrial())["HumanoidRootPart"]["Position"]Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")
            until
            _G["Complete_Trials"]==false or not GetSeaBeastTrial()
          end
        end
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Complete_Trials"]then
        if tostring(localPlayer["Data"]["Race"]["Value"])=="Cyborg"then
          _tp(workspace["Map"]["CyborgTrial"]["Floor"]["CFrame"]*CFrame["new"](0,500,0))
        end
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Complete_Trials"]then
        if tostring(localPlayer["Data"]["Race"]["Value"])=="Skypiea"then
          notween(workspace["Map"]["SkyTrial"]["Model"]["FinishPart"]["CFrame"])
        end
      end
    end
    )
  end
end
)task.spawn(function()
  while wait(.1)do
    pcall(function()
      if _G["Complete_Trials"]then
        if tostring(localPlayer["Data"]["Race"]["Value"])=="Human"or tostring(localPlayer["Data"]["Race"]["Value"])=="Ghoul"then
          local players={"Ancient Vampire","Ancient Zombie"}local localPlayer=GetConnectionEnemies(players)if localPlayer then
            repeat
              wait()f["Kill"](localPlayer,_G["Complete_Trials"])
            until
            _G["Complete_Trials"]==false or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0
          end
        end
      end
    end
    )
  end
end
)EF["CreateToggle"]({["Title"]="Auto Kill Player After Trial"
["Description"]="turn on for kill player after the race trials"
["Default"]=false
["Callback"]=function(players)
  _G["Defeating"]=players
end
})task.spawn(function()
  while task["wait"](T)do
    pcall(function()
      if _G["Defeating"]then
        for players,replicatedStorage in pairs(workspace["Characters"]:GetChildren())do
          if replicatedStorage["Name"]~=localPlayer["Name"]then
            if replicatedStorage["Humanoid"]["Health"]>0 and(replicatedStorage:FindFirstChild("HumanoidRootPart")and(replicatedStorage["Parent"]and(rootPart["Position"]-replicatedStorage["HumanoidRootPart"]["Position"])["Magnitude"]<=250))then
              repeat
                task["wait"]()EquipWeapon(_G["SelectWeapon"])_tp(replicatedStorage["HumanoidRootPart"]["CFrame"]*CFrame["new"](0,0,15))sethiddenproperty(localPlayer,"SimulationRadius",math["huge"])
              until
              _G["Defeating"]==false or replicatedStorage["Humanoid"]["Health"]<=0 or not replicatedStorage["Parent"]or not replicatedStorage:FindFirstChild("HumanoidRootPart")or not replicatedStorage:FindFirstChild("Humanoid")
            end
          end
        end
      end
    end
    )
  end
end
)local OF=Sz["CreateSection"]("Dojo Quest & Drago Race")OF["CreateToggle"]({["Title"]="Auto Dojo Trainer",["Description"]="turn on for do dojo belt quest white to black"
["Default"]=false,["Callback"]=function(players)
  _G["Dojoo"]=players
end
})function printBeltName(players)
  if type(players)=="table"and players["Quest"]["BeltName"]then
    return players["Quest"]["BeltName"]
  end
end
task.spawn(function()
  while wait(T)do
    if _G["Dojoo"]then
      pcall(function()
        local players={[1]={["NPC"]="Dojo Trainer"
        ["Command"]="RequestQuest"}}local rootPart=(replicatedStorage["Modules"]["Net"]:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(players))local playerLevel=printBeltName(rootPart)if H==false and(not rootPart and not playerLevel)then
          _tp(CFrame["new"](5865.0234375,1208.3154296875,871.15185546875))H=true
        elseif  H==true and((CFrame["new"](5865.0234375,1208.3154296875,871.15185546875))["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=50 then
          if playerLevel=="White"then
            local players=GetConnectionEnemies("Skull Slayer")if players then
              repeat
                task["wait"]()f["Kill"](players,_G["Dojoo"])
              until
              not rootPart or not _G["Dojoo"]or not f["Alive"](players)
            else
              _tp(CFrame["new"](-16759.58984375,71.283767700195,1595.3399658203))
            end
          elseif  playerLevel=="Yellow"then
            repeat
              task["wait"]()_G["SeaBeast1"]=true _G["TerrorShark"]=true _G["Shark"]=true _G["Piranha"]=true _G["MobCrew"]=true _G["FishBoat"]=true _G["SailBoats"]=true
            until
            not _G["Dojoo"]or not rootPart _G["SeaBeast1"]=false _G["TerrorShark"]=false _G["Shark"]=false _G["Piranha"]=false _G["MobCrew"]=false _G["FishBoat"]=false _G["SailBoats"]=false
          elseif  playerLevel=="Green"then
            repeat
              task["wait"]()_G["SailBoats"]=true
            until
            not _G["Dojoo"]or not rootPart _G["SailBoats"]=false
          elseif  playerLevel=="Purple"then
            repeat
              task["wait"]()_G["FarmEliteHunt"]=true
            until
            not _G["Dojoo"]or not rootPart _G["FarmEliteHunt"]=false
          elseif  playerLevel=="Red"then
            repeat
              task["wait"]()_G["SailBoats"]=true _G["FishBoat"]=true
            until
            not _G["Dojoo"]or not rootPart _G["SailBoats"]=false _G["FishBoat"]=false
          elseif  playerLevel=="Black"then
            repeat
              task["wait"]()if workspace["Map"]:FindFirstChild("PrehistoricIsland")or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Prehistoric Island")then
                _G["Prehis_Find"]=true if workspace["Map"]["PrehistoricIsland"]["Core"]["ActivationPrompt"]:FindFirstChild("ProximityPrompt",true)then
                  _G["Prehis_Skills"]=false _G["Prehis_Find"]=true
                else
                  _G["Prehis_Skills"]=true _G["Prehis_Find"]=false
                end
              else
                _G["Prehis_Find"]=true _G["Prehis_Skills"]=false
              end
            until
            not _G["Dojoo"]or not rootPart _G["Prehis_Find"]=false _G["Prehis_Skills"]=false
          elseif  playerLevel=="Orange"or playerLevel=="Blue"then
            return nil
          end
        end
        if not rootPart then
          H=false local players={[1]={["NPC"]="Dojo Trainer"
          ["Command"]="ClaimQuest"}}
          (replicatedStorage["Modules"]["Net"]:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(players))
        end
      end
      )
    end
  end
end
)OF["CreateToggle"]({["Title"]="Auto Dragon Hunter",["Description"]="turn on for farm blaze ember + auto collect blaze ember",["Default"]=false
["Callback"]=function(players)
  _G["FarmBlazeEM"]=players
end
})checkQuesta=function()
  local players={[1]={["Context"]="Check"}}local localPlayer=nil pcall(function()
    local players={[1]={["Context"]="RequestQuest"}}
    ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(players))
  end
  )local rootPart,replicatedStorage=pcall(function()
    localPlayer=((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(players))
  end
  )local playerLevel=false local teleportService local tweenService local lighting if localPlayer then
    if localPlayer["Text"]then
      playerLevel=true local players=localPlayer["Text"]if string["find"](tostring(players),"Defeat")then
        lighting=1 teleportService=string["sub"](tostring(players),8,9)teleportService=tonumber(teleportService)local localPlayer={"Hydra Enforcer"
        "Venomous Assailant"}for localPlayer,rootPart in pairs(localPlayer)do
          if string["find"](players,rootPart)then
            tweenService=rootPart break
          end
        end
      elseif  string["find"](tostring(players),"Destroy")then
        teleportService=10 lighting=2 tweenService=nil
      end
    end
  end
  return playerLevel,tweenService,teleportService,lighting
end
BackTODoJo=function()
  for players,localPlayer in pairs((game:GetService("Players"))["LocalPlayer"]["PlayerGui"]["Notifications"]:GetChildren())do
    if localPlayer["Name"]=="NotificationTemplate"then
      if string["find"](localPlayer["Text"],"Head back to the Dojo to complete more tasks")then
        return true
      end
    end
  end
  return false
end
DragonMobClear=function(players,localPlayer,rootPart)
  if workspace["Enemies"]:FindFirstChild(localPlayer)then
    for rootPart,replicatedStorage in pairs(workspace["Enemies"]:GetChildren())do
      if replicatedStorage["Name"]==localPlayer and f["Alive"](replicatedStorage)then
        if players then
          f["Kill"](replicatedStorage,players)
        end
      end
    end
  else
    _tp(rootPart)
  end
end
task.spawn(function()
  while wait()do
    if _G["FarmBlazeEM"]then
      pcall(function()
        local players,localPlayer,replicatedStorage,playerLevel=checkQuesta()if players==true and not BackTODoJo()then
          if playerLevel==1 then
            if localPlayer=="Hydra Enforcer"or localPlayer=="Venomous Assailant"then
              repeat
                wait()DragonMobClear(true,localPlayer,CFrame["new"](4620.6157226562,1002.2954711914,399.08688354492))
              until
              not _G["FarmBlazeEM"]or not players or BackTODoJo()
            end
          elseif  playerLevel==2 then
            if workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree",true)then
              repeat
                wait()task.spawn(function()
                  _tp((workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree",true))["CFrame"]*CFrame["new"](4,0,0))
                end
                )if((workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree",true))["Position"]-rootPart["Position"])["Magnitude"]<=200 then
                  MousePos=(workspace["Map"]["Waterfall"]["IslandModel"]:FindFirstChild("Meshes/bambootree",true))["Position"]Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.5)Useskills("Sword","Z")Useskills("Sword","X")wait(.5)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.5)Useskills("Gun","Z")Useskills("Gun","X")
                end
              until
              not _G["FarmBlazeEM"]or not players or BackTODoJo()
            end
          end
        else
          _tp(CFrame["new"](5813,1208,884))DragonMobClear(false,nil,nil)
        end
      end
      )
    end
  end
end
)task.spawn(function()
  while wait(.1)do
    if _G["FarmBlazeEM"]then
      pcall(function()
        if workspace["EmberTemplate"]:FindFirstChild("Part")then
          game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["CFrame"]=workspace["EmberTemplate"]["Part"]["CFrame"]
        end
      end
      )
    end
  end
end
)local fF=Sz["CreateSection"]("Drago Trial")GetQuestDracoLevel=function()
  local players={[1]={["NPC"]="Dragon Wizard"
  ["Command"]="Upgrade"}}return(replicatedStorage["Modules"]["Net"]:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(players))
end
fF["CreateToggle"]({["Title"]="Tween To Upgrade Droco Trial",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["UPGDrago"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["UPGDrago"]then
        if GetQuestDracoLevel()==false then
          return nil
        elseif  GetQuestDracoLevel()==true then
          if((CFrame["new"](5814.4272460938,1208.3267822266,884.57855224609))["Position"]-rootPart["Position"])["Magnitude"]>=300 then
            _tp(CFrame["new"](5814.4272460938,1208.3267822266,884.57855224609))
          else
            _tp(CFrame["new"](5814.4272460938,1208.3267822266,884.57855224609))local players={[1]={["NPC"]="Dragon Wizard",["Command"]="Upgrade"}}
            (replicatedStorage["Modules"]["Net"]:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(players))
          end
        end
      end
    end
    )
  end
end
)fF["CreateToggle"]({["Title"]="Auto Drago (V1)"
["Description"]="turn on for auto quest1 auto prehistoric event + collect dragon eggs"
["Default"]=false,["Callback"]=function(players)
  _G["DragoV1"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["DragoV1"]then
        if GetM("Dragon Egg")<=0 then
          repeat
            wait()_G["Prehis_Find"]=true _G["Prehis_Skills"]=true _G["Prehis_DE"]=true
          until
          not _G["DragoV1"]or GetM("Dragon Egg")>=1 _G["Prehis_Find"]=false _G["Prehis_Skills"]=false _G["Prehis_DE"]=false
        end
      end
    end
    )
  end
end
)fF["CreateToggle"]({["Title"]="Auto Drago (V2)",["Description"]="turn on for auto kill Forest Pirate & Collect fireflower"
["Default"]=false
["Callback"]=function(players)
  _G["AutoFireFlowers"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoFireFlowers"]then
      local players=workspace:FindFirstChild("FireFlowers")local localPlayer=GetConnectionEnemies("Forest Pirate")if localPlayer then
        repeat
          wait()f["Kill"](localPlayer,_G["AutoFireFlowers"])
        until
        not _G["AutoFireFlowers"]or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0 or players
      else
        _tp(CFrame["new"](-13206.452148438,425.89199829102,-7964.5537109375))
      end
      if players then
        for players,localPlayer in pairs(players:GetChildren())do
          if localPlayer:IsA("Model")and localPlayer["PrimaryPart"]then
            local players=localPlayer["PrimaryPart"]["Position"]local rootPart=game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"]local replicatedStorage=(players-rootPart)["Magnitude"]if replicatedStorage<=100 then
              virtualInput:SendKeyEvent(true,"E",false,game)wait(1.5)virtualInput:SendKeyEvent(false,"E",false,game)
            else
              _tp(CFrame["new"](players))
            end
          end
        end
      end
    end
  end
end
)fF["CreateToggle"]({["Title"]="Auto Drago (V3)"
["Description"]="turn on for sea event kill terror shark"
["Default"]=false,["Callback"]=function(players)
  _G["DragoV3"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["DragoV3"]then
        repeat
          wait()_G["DangerSc"]="Lv Infinite"_G["SailBoats"]=true _G["TerrorShark"]=true
        until
        not _G["DragoV3"]_G["DangerSc"]="Lv 1"_G["SailBoats"]=false _G["TerrorShark"]=false
      end
    end
    )
  end
end
)fF["CreateToggle"]({["Title"]="Auto Relic Drago Trial [Beta]"
["Description"]="turn on for auto trial v4 you have to COLLECT RELIC by your self"
["Default"]=false,["Callback"]=function(players)
  _G["Relic123"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["Relic123"]then
      pcall(function()
        if workspace["Map"]:FindFirstChild("DracoTrial")then
          replicatedStorage["Remotes"]["DracoTrial"]:InvokeServer()wait(.5)repeat
            wait()_tp(CFrame["new"](-39934.9765625,10685.359375,22999.34375))
          until
          not _G["Relic123"]or rootPart["Position"]==(CFrame["new"](-39934.9765625,10685.359375,22999.34375))["Position"]repeat
            wait()_tp(CFrame["new"](-40511.25390625,9376.4013671875,23458.37890625))
          until
          not _G["Relic123"]or rootPart["Position"]==(CFrame["new"](-40511.25390625,9376.4013671875,23458.37890625))["Position"]wait(2.5)repeat
            wait()_tp(CFrame["new"](-39914.65625,10685.384765625,23000.177734375))
          until
          not _G["Relic123"]or rootPart["Position"]==(CFrame["new"](-39914.65625,10685.384765625,23000.177734375))["Position"]repeat
            wait()_tp(CFrame["new"](-40045.83203125,9376.3984375,22791.287109375))
          until
          not _G["Relic123"]or rootPart["Position"]==(CFrame["new"](-40045.83203125,9376.3984375,22791.287109375))["Position"]wait(2.5)repeat
            wait()_tp(CFrame["new"](-39908.5,10685.405273438,22990.04296875))
          until
          not _G["Relic123"]or rootPart["Position"]==(CFrame["new"](-39908.5,10685.405273438,22990.04296875))["Position"]repeat
            wait()_tp(CFrame["new"](-39609.5,9376.400390625,23472.94335975))
          until
          not _G["Relic123"]or rootPart["Position"]==(CFrame["new"](-39609.5,9376.400390625,23472.94335975))["Position"]
        else
          local players=workspace["Map"]["PrehistoricIsland"]:FindFirstChild("TrialTeleport")if players and players:IsA("Part")then
            _tp(CFrame["new"](players["Position"]))
          end
        end
      end
      )
    end
  end
end
)fF["CreateToggle"]({["Title"]="Auto Train Drago v4"
["Description"]="turn on for training Drago race v4 + auto upgrade tier",["Default"]=false
["Callback"]=function(players)
  _G["TrainDrago"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["TrainDrago"]then
        local players={"Venomous Assailant","Hydra Enforcer"}for rootPart=1,#players,1 do
          if(localPlayer["Character"]:FindFirstChild("RaceEnergy"))["Value"]==1 then
            virtualInput:SendKeyEvent(true,"Y",false,game)replicatedStorage["Remotes"]["CommF_"]:InvokeServer("UpgradeRace","Buy",2)_tp(CFrame["new"](4620.6157226562,1002.2954711914,399.08688354492))
          elseif (localPlayer["Character"]:FindFirstChild("RaceTransformed"))["Value"]==false then
            local localPlayer=GetConnectionEnemies(players)if localPlayer then
              repeat
                wait()f["Kill"](localPlayer,_G["TrainDrago"])
              until
              _G["TrainDrago"]==false or localPlayer["Humanoid"]["Health"]<=0 or not localPlayer["Parent"]
            else
              _tp(CFrame["new"](4620.6157226562,1002.2954711914,399.08688354492))
            end
          end
        end
      end
    end
    )
  end
end
)fF["CreateToggle"]({["Title"]="Tween to Drago Trials"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["TpDrago_Prehis"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["TpDrago_Prehis"]then
      local players=workspace["Map"]["PrehistoricIsland"]:FindFirstChild("TrialTeleport")if players and players:IsA("Part")then
        _tp(CFrame["new"](players["Position"]))
      end
    end
  end
end
)fF["CreateToggle"]({["Title"]="Swap Drago Race"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["BuyDrago"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["BuyDrago"]then
      pcall(function()
        if((CFrame["new"](5814.4272460938,1208.3267822266,884.57855224609))["Position"]-rootPart["Position"])["Magnitude"]>=300 then
          _tp(CFrame["new"](5814.4272460938,1208.3267822266,884.57855224609))
        else
          _tp(CFrame["new"](5814.4272460938,1208.3267822266,884.57855224609))local players={[1]={["NPC"]="Dragon Wizard"
          ["Command"]="DragonRace"}}
          (replicatedStorage["Modules"]["Net"]:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(players))
        end
      end
      )
    end
  end
end
)fF["CreateToggle"]({["Title"]="Upgrade Dragon Talon With Uzoth",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["DT_Uzoth"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["DT_Uzoth"]then
      local players=CFrame["new"](5661.89014,1211.31909,864.836731,.811413169,-1.36805838e-008,-0.584473014,4.75227395e-008,1,4.25682458e-008,.584473014,-6.23161966e-008,.811413169)_tp(players)if(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=25 then
        local players={["NPC"]="Uzoth",["Command"]="Upgrade"}replicatedStorage["Modules"]["Net"]["RF/InteractDragonQuest"]:InvokeServer(players)
      end
    end
  end
end
)local sF=oz["CreateSection"]("Volcanic Magnet")sF["CreateToggle"]({["Title"]="Auto Craft Volcanic Magnet"
["Description"]="turn on for auto farm material and craft volcanic magnet & stop when you have 1 volcanic magnet",["Default"]=false
["Callback"]=function(players)
  _G["CraftVM"]=players
end
})sF["CreateButton"]({["Title"]="Craft Volcanic Magnet",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","Volcanic Magnet")
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["CraftVM"]then
        if GetM("Volcanic Magnet")<1 then
          if GetM("Scrap Metal")>=10 and GetM("Blaze Ember")>=15 then
            replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","Volcanic Magnet")
          elseif  GetM("Scrap Metal")<10 then
            local players=GetConnectionEnemies("Forest Pirate")if players then
              repeat
                wait()f["Kill"](players,_G["CraftVM"])
              until
              not _G["CraftVM"]or not players["Parent"]or players["Humanoid"]["Health"]<=0 or GetM("Scrap Metal")>=10
            else
              _tp(CFrame["new"](-13206.452148438,425.89199829102,-7964.5537109375))
            end
          elseif  GetM("Blaze Ember")<15 then
            repeat
              wait()_G["FarmBlazeEM"]=true
            until
            not _G["CraftVM"]or GetM("Blaze Ember")>=15 _G["FarmBlazeEM"]=false
          end
        end
      end
    end
    )
  end
end
)local xF=oz["CreateSection"]("Prehistoric Island")local JF=xF["CreateLabel"]({["Title"]=" Prehistoric Island Status ",["Content"]=""})task.spawn(function()
  while wait(.2)do
    if workspace["Map"]:FindFirstChild("PrehistoricIsland")or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Prehistoric Island")then
      JF:SetDesc(" Prehistoric Island : True")
    else
      JF:SetDesc(" Prehistoric Island : False")
    end
  end
end
)xF["CreateToggle"]({["Title"]="Auto Find Prehistoric Island",["Description"]="turn on for finding & tween & start prehistoric island",["Default"]=false,["Callback"]=function(players)
  _G["Prehis_Find"]=players
end
})local Yq=nil task.spawn(function()
  while wait()do
    if _G["Prehis_Find"]then
      pcall(function()
        if not workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Prehistoric Island",true)then
          local players=CheckBoat()if not players then
            local players=CFrame["new"](-16927.451,9.086,433.864)TeleportToTarget(players)if(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBoat",_G["SelectedBoat"])
            end
          else
            if localPlayer["Character"]["Humanoid"]["Sit"]==false then
              local localPlayer=players["VehicleSeat"]["CFrame"]*CFrame["new"](0,1,0)_tp(localPlayer)
            else
              repeat
                wait()local players=CFrame["new"](-10000000,31,37016.25)if CheckEnemiesBoat()or CheckTerrorShark()or CheckPirateGrandBrigade()then
                  _tp(CFrame["new"](-10000000,150,37016.25))
                else
                  _tp(CFrame["new"](-10000000,31,37016.25))
                end
              until
              not _G["Prehis_Find"]or(players["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=10 or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Prehistoric Island")or localPlayer["Character"]["Humanoid"]["Sit"]==false localPlayer["Character"]["Humanoid"]["Sit"]=false
            end
          end
        else
          if((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Prehistoric Island"))["CFrame"]["Position"]-game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]>=2000 then
            _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Prehistoric Island"))["CFrame"])
          end
          if workspace["Map"]:FindFirstChild("PrehistoricIsland",true)or workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Prehistoric Island",true)then
            if workspace["Map"]["PrehistoricIsland"]["Core"]["ActivationPrompt"]:FindFirstChild("ProximityPrompt",true)then
              if localPlayer:DistanceFromCharacter(workspace["Map"]["PrehistoricIsland"]["Core"]["ActivationPrompt"]["CFrame"]["Position"])<=150 then
                fireproximityprompt(workspace["Map"]["PrehistoricIsland"]["Core"]["ActivationPrompt"]["ProximityPrompt"],math["huge"])virtualInput:SendKeyEvent(true,"E",false,game)wait(1.5)virtualInput:SendKeyEvent(false,"E",false,game)
              end
              _tp(workspace["Map"]["PrehistoricIsland"]["Core"]["ActivationPrompt"]["CFrame"])
            end
          end
        end
      end
      )
    end
  end
end
)xF["CreateToggle"]({["Title"]="Auto Patch Prehistoric Event",["Description"]="turn on for auto patch volcano + kill aura lava golems + auto remove lava",["Default"]=false
["Callback"]=function(players)
  _G["Prehis_Skills"]=players
end
})task.spawn(function()
  while wait()do
    if _G["Prehis_Skills"]then
      local players=game["Workspace"]["Map"]:FindFirstChild("PrehistoricIsland")if players then
        for players,localPlayer in pairs(players:GetDescendants())do
          if localPlayer:IsA("Part")and(localPlayer["Name"]:lower()):find("lava")then
            localPlayer:Destroy()
          end
          if localPlayer:IsA("MeshPart")and(localPlayer["Name"]:lower()):find("lava")then
            localPlayer:Destroy()
          end
        end
        local localPlayer=game["Workspace"]["Map"]["PrehistoricIsland"]["Core"]:FindFirstChild("InteriorLava")if localPlayer and localPlayer:IsA("Model")then
          localPlayer:Destroy()
        end
        local rootPart=workspace["Map"]:FindFirstChild("PrehistoricIsland")if rootPart then
          local players=workspace["Map"]["PrehistoricIsland"]:FindFirstChild("TrialTeleport")for localPlayer,rootPart in pairs(rootPart:GetDescendants())do
            if rootPart["Name"]=="TouchInterest"then
              if not(players and rootPart:IsDescendantOf(players))then
                rootPart["Parent"]:Destroy()
              end
            end
          end
        end
      end
    end
  end
end
)task.spawn(function()
  while wait()do
    pcall(function()
      if _G["Prehis_Skills"]then
        if workspace["Enemies"]:FindFirstChild("Lava Golem")then
          local players=GetConnectionEnemies("Lava Golem")if players then
            repeat
              wait()f["Kill"](players,_G["Prehis_Skills"])players["Humanoid"]:ChangeState(15)
            until
            not _G["Prehis_Skills"]or not players["Parent"]or players["Humanoid"]["Health"]<=0
          end
        end
        for players,rootPart in pairs(game["Workspace"]["Map"]["PrehistoricIsland"]["Core"]["VolcanoRocks"]:GetChildren())do
          if rootPart:FindFirstChild("VFXLayer")then
            if(rootPart:FindFirstChild("VFXLayer"))["At0"]["Glow"]["Enabled"]==true or rootPart["VFXLayer"]["At0"]["Glow"]["Enabled"]==true then
              repeat
                wait()_tp(rootPart["VFXLayer"]["CFrame"])if rootPart["VFXLayer"]["At0"]["Glow"]["Enabled"]==true and localPlayer:DistanceFromCharacter(rootPart["VFXLayer"]["CFrame"]["Position"])<=150 then
                  MousePos=rootPart["VFXLayer"]["CFrame"]["Position"]Useskills("Melee","Z")wait(.5)Useskills("Melee","X")wait(.5)Useskills("Melee","C")wait(.5)Useskills("Blox Fruit","Z")wait(.5)Useskills("Blox Fruit","X")wait(.5)Useskills("Blox Fruit","C")
                end
              until
              not _G["Prehis_Skills"]or(rootPart:FindFirstChild("VFXLayer"))["At0"]["Glow"]["Enabled"]==false or rootPart["VFXLayer"]["At0"]["Glow"]["Enabled"]==false
            end
          end
        end
      end
    end
    )
  end
end
)xF["CreateToggle"]({["Title"]="Auto Collect Dino Bones"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Prehis_DB"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Prehis_DB"]then
        if workspace:FindFirstChild("DinoBone")then
          for players,localPlayer in pairs(workspace:GetChildren())do
            if localPlayer["Name"]=="DinoBone"then
              _tp(localPlayer["CFrame"])
            end
          end
        end
      end
    end
    )
  end
end
)xF["CreateToggle"]({["Title"]="Auto Collect Dragon Eggs",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Prehis_DE"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Prehis_DE"]then
        if workspace["Map"]["PrehistoricIsland"]["Core"]["SpawnedDragonEggs"]:FindFirstChild("DragonEgg")then
          _tp((workspace["Map"]["PrehistoricIsland"]["Core"]["SpawnedDragonEggs"]:FindFirstChild("DragonEgg"))["Molten"]["CFrame"])fireproximityprompt(workspace["Map"]["PrehistoricIsland"]["Core"]["SpawnedDragonEggs"]["DragonEgg"]["Molten"]["ProximityPrompt"],30)
        end
      end
    end
    )
  end
end
)xF["CreateToggle"]({["Title"]="Auto Reset When Complete Volcano",["Description"]="Reset When Complete Volcano not collect dino bones and else..",["Default"]=false,["Callback"]=function(players)
  _G["ResetPH"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["ResetPH"]then
        local players=workspace["Map"]["PrehistoricIsland"]:FindFirstChild("TrialTeleport")if players and players:FindFirstChild("TouchInterest")then
          localPlayer["Character"]["Humanoid"]["Health"]=0
        else
          if workspace:FindFirstChild("DinoBone")then
            for players,localPlayer in pairs(workspace:GetChildren())do
              if localPlayer["Name"]=="DinoBone"then
                _tp(localPlayer["CFrame"])
              end
            end
          end
        end
      end
    end
    )
  end
end
)local dq=Zz["CreateSection"]("Dungeon Event / Raiding")local Rq=dq["CreateLabel"]({["Title"]=" Raiding Status ",["Content"]=""})task.spawn(function()
  while wait(.2)do
    pcall(function()
      if localPlayer["PlayerGui"]["Main"]["Timer"]["Visible"]==true then
        Rq:SetDesc(" Raiding Statud : True")
      else
        Rq:SetDesc(" Raiding Statud : False")
      end
    end
    )
  end
end
)j={"Flame","Ice"
"Quake"
"Light","Dark","String"
"Rumble"
"Magma","Human: Buddha"
"Sand"
"Bird: Phoenix","Dough"}dq["CreateDropdown"]({["Title"]="Select Chip"
["Description"]="",["Values"]=j,["Default"]="Flame",["Multi"]=false
["Callback"]=function(players)
  _G["SelectChip"]=players
end
})dq["CreateToggle"]({["Title"]="Auto Select Dungeon Chip"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["AutoSelectDungeon"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AutoSelectDungeon"]then
      pcall(function()
        if GetBP("Flame-Flame")then
          _G["SelectChip"]="Flame"
        elseif  GetBP("Ice-Ice")then
          _G["SelectChip"]="Ice"
        elseif  GetBP("Quake-Quake")then
          _G["SelectChip"]="Quake"
        elseif  GetBP("Light-Light")then
          _G["SelectChip"]="Light"
        elseif  GetBP("Dark-Dark")then
          _G["SelectChip"]="Dark"
        elseif  GetBP("String-String")then
          _G["SelectChip"]="String"
        elseif  GetBP("Rumble-Rumble")then
          _G["SelectChip"]="Rumble"
        elseif  GetBP("Magma-Magma")then
          _G["SelectChip"]="Magma"
        elseif  GetBP("Human-Human: Buddha Fruit")then
          _G["SelectChip"]="Human: Buddha"
        elseif  GetBP("Dough-Dough")then
          _G["SelectChip"]="Dough"
        elseif  GetBP("Sand-Sand")then
          _G["SelectChip"]="Sand"
        elseif  GetBP("Bird-Bird: Phoenix")then
          _G["SelectChip"]="Bird: Phoenix"
        else
          _G["SelectChip"]="Ice"
        end
      end
      )
    end
  end
end
)dq["CreateButton"]({["Title"]="Buy Dungeon Chips [Beli]",["Callback"]=function()
  if not GetBP("Special Microchip")then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc","Select",_G["SelectChip"])
  end
end
})dq["CreateButton"]({["Title"]="Buy Dungeon Chips [Devil Fruit]"
["Callback"]=function()
  if GetBP("Special Microchip")then
    return
  end
  local players={}local localPlayer={}for localPlayer,rootPart in next,(replicatedStorage:WaitForChild("Remotes"))["CommF_"]:InvokeServer("GetFruits")do
    if rootPart["Price"]<=490000 then
      table["insert"](players,rootPart["Name"])
    end
  end
  for players,localPlayer in pairs(players)do
    for players,rootPart in pairs(j)do
      if not GetBP("Special Microchip")then
        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit",tostring(localPlayer))replicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc","Select",_G["SelectChip"])
      end
    end
  end
end
})local Qq=Zz["CreateSection"]("Raiding Menu")Qq["CreateToggle"]({["Title"]="Auto Start Raid"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["Auto_StartRaid"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_StartRaid"]then
        if localPlayer["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"]==false then
          if GetBP("Special Microchip")then
            if World2 then
              _tp(CFrame["new"](-6438.73535,250.645355,-4501.50684))fireclickdetector(workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"])
            elseif  World3 then
              replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-5097.93164,316.447021,-3142.66602,-0.405007899,-4.31682743e-008,.914313197,-1.90943332e-008,1,3.8755779e-008,-0.914313197,-1.76180437e-009,-0.405007899))fireclickdetector(workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"])
            end
          end
        end
      end
    end
    )
  end
end
)Qq["CreateToggle"]({["Title"]="Teleport To Lab"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["TpLab"]=players task.spawn(function()
    while _G["TpLab"]do
      wait(T)if _G["TpLab"]then
        if World2 then
          _tp(CFrame["new"](-6438.73535,250.645355,-4501.50684))
        elseif  World3 then
          _tp(CFrame["new"](-5017.40869,314.844055,-2823.0127,-0.925743818,4.48217499e-008,-0.378151238,4.55503146e-009,1,1.07377559e-007,.378151238,9.7681621e-008,-0.925743818))
        end
      end
    end
  end
  )
end
})Qq["CreateToggle"]({["Title"]="Auto Complete Raid [Safety]",["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Raiding"]=players
end
})task.spawn(function()
  pcall(function()
    while wait(T)do
      if _G["Raiding"]then
        if localPlayer["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"]==true then
          local players={"Island5","Island 4","Island 3","Island 2","Island 1"}
           for players,localPlayer in ipairs(players)do
            local rootPart=(game:GetService("Workspace"))["_WorldOrigin"]["Locations"]:FindFirstChild(localPlayer)if rootPart then
              for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
                if localPlayer:FindFirstChild("Humanoid")or localPlayer:FindFirstChild("HumanoidRootPart")then
                  if localPlayer["Humanoid"]["Health"]>0 then
                    repeat
                      wait()f["Kill"](localPlayer,_G["Raiding"])NextIs=false
                    until
                    not _G["Raiding"]or not localPlayer["Parent"]or localPlayer["Humanoid"]["Health"]<=0 NextIs=true
                  end
                end
              end
            end
          end
        else
          NextIs=false
        end
      else
        NextIs=false
      end
    end
  end
  )
end
)Qq["CreateToggle"]({["Title"]="Kill Aura"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["KillH"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["KillH"]then
      for players,rootPart in pairs(workspace["Enemies"]:GetChildren())do
        if f["Alive"](rootPart)then
          pcall(function()
            repeat
              wait(T)sethiddenproperty(localPlayer,"SimulationRadius",math["huge"])rootPart:BreakJoints()rootPart["Humanoid"]["Health"]=0 rootPart["HumanoidRootPart"]["CanCollide"]=false
            until
            not _G["KillH"]or not rootPart["Parent"]or rootPart["Humanoid"]["Health"]<=0
          end
          )
        end
      end
    end
  end
end
)Qq["CreateToggle"]({["Title"]="Auto Next Island"
["Description"]="",["Default"]=false,["Callback"]=function(players)
  NextIs=players
end
})task.spawn(function()
  while wait(T)do
    if NextIs then
      if localPlayer["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"]==true then
        if workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 5")then
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 5"))["CFrame"]*CFrame["new"](0,50,100))
        elseif  workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 4")then
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 4"))["CFrame"]*CFrame["new"](0,50,100))
        elseif  workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 3")then
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 3"))["CFrame"]*CFrame["new"](0,50,100))
        elseif  workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 2")then
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 2"))["CFrame"]*CFrame["new"](0,50,100))
        elseif  workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 1")then
          _tp((workspace["_WorldOrigin"]["Locations"]:FindFirstChild("Island 1"))["CFrame"]*CFrame["new"](0,50,100))
        end
      end
    end
  end
end
)Qq["CreateToggle"]({["Title"]="Auto Awakening"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["Auto_Awakener"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Auto_Awakener"]then
        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Awakener","Check")replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Awakener","Awaken")
      end
    end
    )
  end
end
)local rq=Tz["CreateSection"]("Combat / Aimbot")__indexPlayer=rq["CreateLabel"]({["Title"]="All Players On Server :",["Content"]=""})task.spawn(function()
  while wait(T)do
    pcall(function()
      for players,localPlayer in pairs((game:GetService("Players")):GetPlayers())do
        if players==12 then
          __indexPlayer:SetDesc("All Players :"..(" "..(players.." / 12 [Max]")))
        elseif  players==1 then
          __indexPlayer:SetDesc("All Players  :"..(" "..(players.." / 12")))
        else
          __indexPlayer:SetDesc("All Players  :"..(" "..(players.." / 12")))
        end
      end
    end
    )
  end
end
)__AimBotTurn=rq["CreateLabel"]({["Title"]="Aimbot Status :",["Content"]=""})local aq={"AimBots Skill",
"Auto Aimbots"}Checking_AimStatus=function()
  if _G["AimCam"]then
    return "Aimbot Camera"
  else
    return ""
  end
  if _G["AimbotGun"]then
    return "Aimbot Guns"
  else
    return ""
  end
end
task.spawn(function()
  while wait(.2)do
    pcall(function()
      if _G["AimMethod"]then
        __AimBotTurn:SetDesc("Aimbot - Skills : True")
      elseif (_G["AimCam"]or _G["AimbotGun"])and _G["AimMethod"]then
        __AimBotTurn:SetDesc("Aimbot - Skills |"..(Checking_AimStatus().." :True"))
      else
        __AimBotTurn:SetDesc("Aimbot - Skills : False")
      end
    end
    )
  end
end
)local wq={}for players,localPlayer in pairs((game:GetService("Players")):GetChildren())do
  table["insert"](wq,localPlayer["Name"])
end
rq["CreateDropdown"]({["Title"]="Choose Players",["Description"]=""
["Values"]=wq
["Default"]=false
["Multi"]=false,["Callback"]=function(players)
  _G["PlayersList"]=players
end
})rq["CreateToggle"]({["Title"]="Teleport to choose players"
["Description"]=""
["Default"]=false
["Callback"]=function(players)
  _G["TpPly"]=players task.spawn(function()
    pcall(function()
      while _G["TpPly"]do
        wait()_tp((game:GetService("Players"))[_G["PlayersList"]]["Character"]["HumanoidRootPart"]["CFrame"])
      end
    end
    )
  end
  )
end
})rq["CreateToggle"]({["Title"]="Spectate Choose Players"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  SpectatePlys=players task.spawn(function()
    repeat
      task["wait"](.1)workspace["Camera"]["CameraSubject"]=((game:GetService("Players")):FindFirstChild(_G["PlayersList"]))["Character"]["Humanoid"]
    until
    not SpectatePlys workspace["Camera"]["CameraSubject"]=localPlayer["Character"]["Humanoid"]
  end
  )
end
})rq["CreateDropdown"]({["Title"]="Choose Aim Method"
["Description"]=""
["Values"]=aq
["Default"]=false,["Multi"]=false,["Callback"]=function(players)
  ABmethod=players
end
})rq["CreateToggle"]({["Title"]="Aimbot Method Skills"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["AimMethod"]=players
end
})task["spawn"](function()
  while task["wait"]()do
    pcall(function()
      if _G["AimMethod"]and ABmethod=="AimBots Skill"then
        for players,localPlayer in pairs((game:GetService("Players")):GetPlayers())do
          if localPlayer["Name"]==_G["PlayersList"]and localPlayer["Team"]~=game["Players"]["LocalPlayer"]["Team"]then
            MousePos=(localPlayer["Character"]:FindFirstChild("HumanoidRootPart"))["Position"]
          end
        end
      end
    end
    )
  end
end
)task["spawn"](function()
  while task["wait"]()do
    pcall(function()
      if _G["AimMethod"]and ABmethod=="Auto Aimbots"then
        local players=math["huge"]for rootPart,replicatedStorage in pairs((game:GetService("Players")):GetPlayers())do
          if replicatedStorage["Name"]~=localPlayer["Name"]and replicatedStorage["Team"]~=game["Players"]["LocalPlayer"]["Team"]then
            local rootPart=replicatedStorage:DistanceFromCharacter(localPlayer["Character"]["HumanoidRootPart"]["Position"])if rootPart<players then
              players=rootPart MousePos=(replicatedStorage["Character"]:FindFirstChild("HumanoidRootPart"))["Position"]
            end
          end
        end
      end
    end
    )
  end
end
)rq["CreateToggle"]({["Title"]="Aimbot Camera Closet Players",["Description"]="",["Default"]=false,["Callback"]=function(players)
  _G["AimCam"]=players
end
})task["spawn"](function()
  while task["wait"](T)do
    pcall(function()
      if _G["AimCam"]then
        local rootPart=workspace["CurrentCamera"]closestplayer=function()
          local rootPart=math["huge"]local replicatedStorage=nil for players,playerLevel in next,players:GetPlayers()do
            if playerLevel~=localPlayer then
              if playerLevel["Character"]and(playerLevel["Character"]:FindFirstChild("Head")and(_G["AimCam"]and playerLevel["Character"]["Humanoid"]["Health"]>0))then
                local players=(playerLevel["Character"]["Head"]["Position"]-localPlayer["Character"]["Head"]["Position"])["Magnitude"]if players<rootPart then
                  rootPart=players replicatedStorage=playerLevel
                end
              end
            end
          end
          return replicatedStorage
        end
        repeat
          task["wait"]()rootPart["CFrame"]=CFrame["new"](rootPart["CFrame"]["Position"],(closestplayer())["Character"]["HumanoidRootPart"]["Position"])
        until
        _G["AimCam"]==false or Mag>dist
      end
    end
    )
  end
end
)local Fq=Tz["CreateSection"]("LocalPlayer Settings / Misc")Fq["CreateToggle"]({["Title"]="Instance Mink V3 [ INF ]"
["Description"]="turn on for make mink v3 infinity",["Default"]=false
["Callback"]=function(players)
  InfAblities=players
end
})task.spawn(function()
  while wait(.2)do
    pcall(function()
      if InfAblities then
        if not localPlayer["Character"]["HumanoidRootPart"]:FindFirstChild("Agility")then
          local players=replicatedStorage["FX"]["Agility"]:Clone()players["Name"]="Agility"players["Parent"]=localPlayer["Character"]["HumanoidRootPart"]
        end
      else
        localPlayer["Character"]["HumanoidRootPart"]["Agility"]:Destroy()
      end
    end
    )
  end
end
)Fq["CreateToggle"]({["Title"]="Instance Energy [ INF ]"
["Description"]="turn on for make energy infinity",["Default"]=false
["Callback"]=function(players)
  infEnergy=players if players then
    getInfinity_Ability("Energy",infEnergy)
  end
end
})Fq["CreateToggle"]({["Title"]="Instance Soru [ INF ]"
["Description"]="turn on for make soru infinity"
["Default"]=false,["Callback"]=function(players)
  _G["InfSoru"]=players if players then
    getInfinity_Ability("Soru",_G["InfSoru"])
  end
end
})Fq["CreateToggle"]({["Title"]="Instance Observation Range [ INF ]"
["Description"]="turn on for make observation range infinity"
["Default"]=false
["Callback"]=function(players)
  _G["InfiniteObRange"]=players if players then
    getInfinity_Ability("Observation",_G["InfiniteObRange"])
  end
end
})local Mq=Tz["CreateSection"]("Settings Combat / Aimbot Settings")Mq["CreateToggle"]({["Title"]="Ignore Same Teams"
["Description"]="turn on for ignore not aimbot same team",["Default"]=false
["Callback"]=function(players)
  _G["NoAimTeam"]=players
end
})Mq["CreateToggle"]({["Title"]="Accept Allies",["Description"]="turn on for auto accept ally",["Default"]=false
["Callback"]=function(players)
  _G["AcceptAlly"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["AcceptAlly"]then
      pcall(function()
        for players,rootPart in pairs(players:GetChildren())do
          if rootPart["Name"]~=localPlayer["Name"]and(rootPart:FindFirstChild("Humanoid")and rootPart:FindFirstChild("HumanoidRootPart"))then
            ((replicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("AcceptAlly",rootPart["Name"])
          end
        end
      end
      )
    end
  end
end
)local Kq=Tz["CreateSection"]("Esp Items / Entity / Island")function isnil(players)
  return players==nil
end
local function nq(players)
  return math["floor"](tonumber(players)+.5)
end
Number=math["random"](1,1000000)EspPly=function()
  for players,localPlayer in next,game["Players"]:GetChildren()do
    pcall(function()
      if not isnil(localPlayer["Character"])then
        if PlayerEsp then
          if not isnil(localPlayer["Character"]["Head"])and not localPlayer["Character"]["Head"]:FindFirstChild("NameEsp"..Number)then
            local players=Instance["new"]("BillboardGui",localPlayer["Character"]["Head"])players["Name"]="NameEsp"..Number players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=localPlayer["Character"]["Head"]players["AlwaysOnTop"]=true local rootPart=Instance["new"]("TextLabel",players)rootPart["Font"]=Enum["Font"]["Code"]rootPart["FontSize"]="Size14"rootPart["TextWrapped"]=true rootPart["Text"]=localPlayer["Name"]..(" 
"..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Character"]["Head"]["Position"])["Magnitude"]/3).." M"))rootPart["Size"]=UDim2["new"](1,0,1,0)rootPart["TextYAlignment"]="Top"rootPart["BackgroundTransparency"]=1 rootPart["TextStrokeTransparency"]=.5 if localPlayer["Team"]==playerTeam then
              rootPart["TextColor3"]=Color3["new"](0,0,254)
            else
              rootPart["TextColor3"]=Color3["new"](255,0,0)
            end
          else
            localPlayer["Character"]["Head"]["NameEsp"..Number]["TextLabel"]["Text"]=localPlayer["Data"]["Level"]["Value"]..(" | "..(localPlayer["Name"]..(" | "..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Character"]["Head"]["Position"])["Magnitude"]/3)..(" M
Health : "..(nq((localPlayer["Character"]["Humanoid"]["Health"]*100)/localPlayer["Character"]["Humanoid"]["MaxHealth"]).."%"))))))
          end
        else
          if localPlayer["Character"]["Head"]:FindFirstChild("NameEsp"..Number)then
            (localPlayer["Character"]["Head"]:FindFirstChild("NameEsp"..Number)):Destroy()
          end
        end
      end
    end
    )
  end
end
LocationEsp=function()
  for players,localPlayer in next,workspace["_WorldOrigin"]["Locations"]:GetChildren()do
    pcall(function()
      if IslandESP then
        if localPlayer["Name"]~="Sea"then
          if not localPlayer:FindFirstChild("NameEsp")then
            local players=Instance["new"]("BillboardGui",localPlayer)players["Name"]="NameEsp"players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=localPlayer players["AlwaysOnTop"]=true local rootPart=Instance["new"]("TextLabel",players)rootPart["Font"]=Enum["Font"]["Code"]rootPart["FontSize"]="Size14"rootPart["TextWrapped"]=true rootPart["Size"]=UDim2["new"](1,0,1,0)rootPart["TextYAlignment"]="Top"rootPart["BackgroundTransparency"]=1 rootPart["TextStrokeTransparency"]=.5 rootPart["TextColor3"]=Color3["fromRGB"](98,252,252)
          else
            localPlayer["NameEsp"]["TextLabel"]["Text"]=localPlayer["Name"]..("   
"..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Position"])["Magnitude"]/3).." M"))
          end
        end
      else
        if localPlayer:FindFirstChild("NameEsp")then
          (localPlayer:FindFirstChild("NameEsp")):Destroy()
        end
      end
    end
    )
  end
end
DevEsp=function()
  for players,localPlayer in next,workspace:GetChildren()do
    pcall(function()
      if DevilFruitESP then
        if string["find"](localPlayer["Name"],"Fruit")then
          if not localPlayer["Handle"]:FindFirstChild("NameEsp"..Number)then
            local players=Instance["new"]("BillboardGui",localPlayer["Handle"])players["Name"]="NameEsp"..Number players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=localPlayer["Handle"]players["AlwaysOnTop"]=true local rootPart=Instance["new"]("TextLabel",players)rootPart["Font"]=Enum["Font"]["Code"]rootPart["FontSize"]="Size14"rootPart["TextWrapped"]=true rootPart["Size"]=UDim2["new"](1,0,1,0)rootPart["TextYAlignment"]="Top"rootPart["BackgroundTransparency"]=1 rootPart["TextStrokeTransparency"]=.5 rootPart["TextColor3"]=Color3["fromRGB"](255,255,255)rootPart["Text"]=localPlayer["Name"]..(" 
"..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Handle"]["Position"])["Magnitude"]/3).." M"))
          else
            localPlayer["Handle"]["NameEsp"..Number]["TextLabel"]["Text"]=", ["..(localPlayer["Name"]..("]"..("   
"..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Handle"]["Position"])["Magnitude"]/3).." M"))))
          end
        end
      else
        if localPlayer["Handle"]:FindFirstChild("NameEsp"..Number)then
          (localPlayer["Handle"]:FindFirstChild("NameEsp"..Number)):Destroy()
        end
      end
    end
    )
  end
end
flowerEsp=function()
  for players,localPlayer in pairs(workspace:GetChildren())do
    pcall(function()
      if localPlayer["Name"]=="Flower2"or localPlayer["Name"]=="Flower1"then
        if FlowerESP then
          if not localPlayer:FindFirstChild("NameEsp"..Number)then
            local players=Instance["new"]("BillboardGui",localPlayer)players["Name"]="NameEsp"..Number players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=localPlayer players["AlwaysOnTop"]=true local rootPart=Instance["new"]("TextLabel",players)rootPart["Font"]=Enum["Font"]["Code"]rootPart["FontSize"]="Size14"rootPart["TextWrapped"]=true rootPart["Size"]=UDim2["new"](1,0,1,0)rootPart["TextYAlignment"]="Top"rootPart["BackgroundTransparency"]=1 rootPart["TextStrokeTransparency"]=.5 rootPart["TextColor3"]=Color3["fromRGB"](88,214,252)if localPlayer["Name"]=="Flower1"then
              rootPart["Text"]="Blue Flower"..(" 
"..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Position"])["Magnitude"]/3).." M"))rootPart["TextColor3"]=Color3["fromRGB"](88,214,252)
            end
            if localPlayer["Name"]=="Flower2"then
              rootPart["Text"]="Red Flower"..(" 
"..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Position"])["Magnitude"]/3).." M"))rootPart["TextColor3"]=Color3["fromRGB"](88,214,252)
            end
          else
            localPlayer["NameEsp"..Number]["TextLabel"]["Text"]=localPlayer["Name"]..("   
"..(nq(((game:GetService("Players"))["LocalPlayer"]["Character"]["Head"]["Position"]-localPlayer["Position"])["Magnitude"]/3).." M"))
          end
        else
          if localPlayer:FindFirstChild("NameEsp"..Number)then
            (localPlayer:FindFirstChild("NameEsp"..Number)):Destroy()
          end
        end
      end
    end
    )
  end
end
EventIslandEsp=function()
  for players,rootPart in pairs(workspace["_WorldOrigin"]["Locations"]:GetChildren())do
    pcall(function()
      if EspEventIsland then
        if rootPart["Name"]=="Mirage Island"or rootPart["Name"]=="Prehistoric Island"or rootPart["Name"]=="Kitsune Island"then
          if not rootPart:FindFirstChild("NameEsp")then
            local players=Instance["new"]("BillboardGui",rootPart)players["Name"]="NameEsp"players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=rootPart players["AlwaysOnTop"]=true local localPlayer=Instance["new"]("TextLabel",players)localPlayer["Font"]="Code"localPlayer["FontSize"]="Size14"localPlayer["TextWrapped"]=true localPlayer["Size"]=UDim2["new"](1,0,1,0)localPlayer["TextYAlignment"]="Top"localPlayer["BackgroundTransparency"]=1 localPlayer["TextStrokeTransparency"]=.5 localPlayer["TextColor3"]=Color3["fromRGB"](80,245,245)
          else
            rootPart["NameEsp"]["TextLabel"]["Text"]=rootPart["Name"]..("   
"..(nq((localPlayer["Character"]["Head"]["Position"]-rootPart["Position"])["Magnitude"]/3).." M"))
          end
        end
      elseif  rootPart:FindFirstChild("NameEsp")then
        (rootPart:FindFirstChild("NameEsp")):Destroy()
      end
    end
    )
  end
end
gearEsp=function()
  for players,rootPart in pairs(workspace["Map"]["MysticIsland"]:GetDescendants())do
    pcall(function()
      if ESPGear then
        if rootPart["Name"]=="Part"and rootPart["Material"]==Enum["Material"]["Neon"]then
          if not rootPart:FindFirstChild("NameEsp")then
            local players=Instance["new"]("BillboardGui",rootPart)players["Name"]="NameEsp"players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=rootPart players["AlwaysOnTop"]=true local localPlayer=Instance["new"]("TextLabel",players)localPlayer["Font"]="Code"localPlayer["FontSize"]="Size14"localPlayer["TextWrapped"]=true localPlayer["Size"]=UDim2["new"](1,0,1,0)localPlayer["TextYAlignment"]="Top"localPlayer["BackgroundTransparency"]=1 localPlayer["TextStrokeTransparency"]=.5 localPlayer["TextColor3"]=Color3["fromRGB"](80,245,245)
          else
            rootPart["NameEsp"]["TextLabel"]["Text"]="Gear"..("   
"..(nq((localPlayer["Character"]["Head"]["Position"]-rootPart["Position"])["Magnitude"]/3).." M"))
          end
        end
      else
        if rootPart:FindFirstChild("NameEsp")then
          (rootPart:FindFirstChild("NameEsp")):Destroy()
        end
      end
    end
    )
  end
end
AdvanFruitEsp=function()
  if advanEsp==true then
    for players,rootPart in pairs(replicatedStorage["NPCs"]:GetChildren())do
      if rootPart["Name"]=="Advanced Fruit Dealer"then
        if not workspace:FindFirstChild("Adv")then
          Adv=Instance["new"]("Part")Adv["Name"]="Adv"Adv["Transparency"]=1 Adv["Size"]=Vector3["new"](1,1,1)Adv["Anchored"]=true Adv["CanCollide"]=false Adv["Parent"]=workspace Adv["CFrame"]=rootPart["HumanoidRootPart"]["CFrame"]
        elseif  workspace:FindFirstChild("Adv")then
          if not Adv:FindFirstChild("NameEsp")then
            local players=Instance["new"]("BillboardGui",Adv)players["Name"]="NameEsp"players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=Adv players["AlwaysOnTop"]=true local localPlayer=Instance["new"]("TextLabel",players)localPlayer["Font"]="Code"localPlayer["FontSize"]="Size14"localPlayer["TextWrapped"]=true localPlayer["Size"]=UDim2["new"](1,0,1,0)localPlayer["TextYAlignment"]="Top"localPlayer["BackgroundTransparency"]=1 localPlayer["TextStrokeTransparency"]=.5 localPlayer["TextColor3"]=Color3["fromRGB"](80,245,245)
          else
            Adv["NameEsp"]["TextLabel"]["Text"]=rootPart["Name"]..("   
"..(nq((localPlayer["Character"]["Head"]["Position"]-rootPart["HumanoidRootPart"]["Position"])["Magnitude"]/3).." M"))
          end
        end
      end
    end
  else
    if workspace:FindFirstChild("Adv")then
      (workspace:FindFirstChild("Adv")):Destroy()
    end
  end
end
HakiClorEsp=function()
  if ColorEsp==true then
    for players,rootPart in pairs(replicatedStorage["NPCs"]:GetChildren())do
      if rootPart["Name"]=="Barista Cousin"then
        if not workspace:FindFirstChild("Gay")then
          Gay=Instance["new"]("Part")Gay["Name"]="Gay"Gay["Transparency"]=1 Gay["Size"]=Vector3["new"](1,1,1)Gay["Anchored"]=true Gay["CanCollide"]=false Gay["Parent"]=workspace Gay["CFrame"]=rootPart["HumanoidRootPart"]["CFrame"]
        elseif  workspace:FindFirstChild("Gay")then
          if not Gay:FindFirstChild("NameEsp")then
            local players=Instance["new"]("BillboardGui",Gay)players["Name"]="NameEsp"players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=Gay players["AlwaysOnTop"]=true local localPlayer=Instance["new"]("TextLabel",players)localPlayer["Font"]="Code"localPlayer["FontSize"]="Size14"localPlayer["TextWrapped"]=true localPlayer["Size"]=UDim2["new"](1,0,1,0)localPlayer["TextYAlignment"]="Top"localPlayer["BackgroundTransparency"]=1 localPlayer["TextStrokeTransparency"]=.5 localPlayer["TextColor3"]=Color3["fromRGB"](80,245,245)
          else
            Gay["NameEsp"]["TextLabel"]["Text"]=rootPart["Name"]..("   
"..(nq((localPlayer["Character"]["Head"]["Position"]-rootPart["HumanoidRootPart"]["Position"])["Magnitude"]/3).." M"))
          end
        end
      end
    end
  else
    if workspace:FindFirstChild("Gay")then
      (workspace:FindFirstChild("Gay")):Destroy()
    end
  end
end
LegenSword=function()
  if LegenS==true then
    for players,rootPart in pairs(replicatedStorage["NPCs"]:GetChildren())do
      if rootPart["Name"]=="Legendary Sword Dealer "then
        if not workspace:FindFirstChild("Lgd")then
          Lgd=Instance["new"]("Part")Lgd["Name"]="Lgd"Lgd["Transparency"]=1 Lgd["Size"]=Vector3["new"](1,1,1)Lgd["Anchored"]=true Lgd["CanCollide"]=false Lgd["Parent"]=workspace Lgd["CFrame"]=rootPart["HumanoidRootPart"]["CFrame"]
        elseif  workspace:FindFirstChild("Lgd")then
          if not Lgd:FindFirstChild("NameEsp")then
            local players=Instance["new"]("BillboardGui",Lgd)players["Name"]="NameEsp"players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](1,200,1,30)players["Adornee"]=Lgd players["AlwaysOnTop"]=true local localPlayer=Instance["new"]("TextLabel",players)localPlayer["Font"]="Code"localPlayer["FontSize"]="Size14"localPlayer["TextWrapped"]=true localPlayer["Size"]=UDim2["new"](1,0,1,0)localPlayer["TextYAlignment"]="Top"localPlayer["BackgroundTransparency"]=1 localPlayer["TextStrokeTransparency"]=.5 localPlayer["TextColor3"]=Color3["fromRGB"](80,245,245)
          else
            Lgd["NameEsp"]["TextLabel"]["Text"]=rootPart["Name"]..("   
"..(nq((localPlayer["Character"]["Head"]["Position"]-rootPart["HumanoidRootPart"]["Position"])["Magnitude"]/3).." M"))
          end
        end
      end
    end
  else
    if workspace:FindFirstChild("Lgd")then
      (workspace:FindFirstChild("Lgd")):Destroy()
    end
  end
end
ChestEsp=function()
  if ChestESP then
    local players=game:GetService("CollectionService")local localPlayer=game:GetService("Players")local rootPart=localPlayer["LocalPlayer"]local replicatedStorage=rootPart["Character"]or rootPart["CharacterAdded"]:Wait()local playerLevel=(replicatedStorage:GetPivot())["Position"]local teleportService=players:GetTagged("_ChestTagged")for players,localPlayer in ipairs(teleportService)do
      local rootPart=false repeat
        if not SelectedIsland or localPlayer:IsDescendantOf(SelectedIsland)then
          if not localPlayer:GetAttribute("IsDisabled")then
            local players local replicatedStorage,teleportService=pcall(function()
              return(localPlayer:GetPivot())["Position"]
            end
            )if replicatedStorage then
              players=teleportService
            elseif  localPlayer:IsA("BasePart")then
              players=localPlayer["Position"]
            else
              rootPart=true break
            end
            local tweenService=(players-playerLevel)["Magnitude"]local lighting=(localPlayer:GetFullName()):gsub(", [^%w_]","_")local enemies=localPlayer:FindFirstChild("ChestEspAttachment")if not enemies then
              local players=Instance["new"]("Attachment")players["Name"]="ChestEspAttachment"players["Parent"]=localPlayer players["Position"]=Vector3["new"](0,3,0)local rootPart=Instance["new"]("BillboardGui")rootPart["Name"]="NameEsp"rootPart["Size"]=UDim2["new"](0,200,0,30)rootPart["Adornee"]=players rootPart["ExtentsOffset"]=Vector3["new"](0,1,0)rootPart["AlwaysOnTop"]=true rootPart["Parent"]=players local replicatedStorage=Instance["new"]("TextLabel")replicatedStorage["Font"]=Enum["Font"]["Code"]replicatedStorage["TextSize"]=14 replicatedStorage["TextWrapped"]=true replicatedStorage["Size"]=UDim2["new"](1,0,1,0)replicatedStorage["TextYAlignment"]=Enum["TextYAlignment"]["Top"]replicatedStorage["BackgroundTransparency"]=1 replicatedStorage["TextStrokeTransparency"]=.5 replicatedStorage["TextColor3"]=Color3["fromRGB"](80,245,245)replicatedStorage["Parent"]=rootPart
            end
            local virtualInput=enemies and enemies:FindFirstChild("NameEsp")if virtualInput then
              local players=math["floor"](tweenService/3)local rootPart=localPlayer["Name"]:gsub("Label","")virtualInput["TextLabel"]["Text"]=string["format"](", [%s] %d M",rootPart,players)
            end
            if _G_AutoFarmChest and tweenService<=20 then
              if enemies then
                enemies:Destroy()
              end
            end
          end
        end
        rootPart=true
      until
      true if not rootPart then
        break
      end
    end
  else
    for players,localPlayer in ipairs((game:GetService("CollectionService")):GetTagged("_ChestTagged"))do
      local rootPart=localPlayer:FindFirstChild("ChestEspAttachment")if rootPart then
        rootPart:Destroy()
      end
    end
  end
end
berriesEsp=function()
  if BerryEsp then
    local players=game:GetService("CollectionService")local localPlayer=game:GetService("Players")local rootPart=localPlayer["LocalPlayer"]local replicatedStorage=players:GetTagged("BerryBush")for players,localPlayer in ipairs(replicatedStorage)do
      local replicatedStorage=(localPlayer["Parent"]:GetPivot())["Position"]for players,localPlayer in pairs(localPlayer:GetAttributes())do
        if localPlayer and(not BerryArray or table["find"](BerryArray,localPlayer))then
          local players="BerryEspPart_"..(localPlayer..("_"..tostring(replicatedStorage)))local playerLevel=workspace:FindFirstChild(players)if not playerLevel then
            playerLevel=Instance["new"]("Part")playerLevel["Name"]=players playerLevel["Transparency"]=1 playerLevel["Size"]=Vector3["new"](1,1,1)playerLevel["Anchored"]=true playerLevel["CanCollide"]=false playerLevel["Parent"]=workspace playerLevel["CFrame"]=CFrame["new"](replicatedStorage)
          end
          if not playerLevel:FindFirstChild("NameEsp")then
            local players=Instance["new"]("BillboardGui",playerLevel)players["Name"]="NameEsp"players["ExtentsOffset"]=Vector3["new"](0,1,0)players["Size"]=UDim2["new"](0,200,0,30)players["Adornee"]=playerLevel players["AlwaysOnTop"]=true local localPlayer=Instance["new"]("TextLabel",players)localPlayer["Font"]=Enum["Font"]["Code"]localPlayer["TextSize"]=14 localPlayer["TextWrapped"]=true localPlayer["Size"]=UDim2["new"](1,0,1,0)localPlayer["TextYAlignment"]=Enum["TextYAlignment"]["Top"]localPlayer["BackgroundTransparency"]=1 localPlayer["TextStrokeTransparency"]=.5 localPlayer["TextColor3"]=Color3["fromRGB"](80,245,245)localPlayer["Parent"]=players
          end
          local teleportService=playerLevel:FindFirstChild("NameEsp")local tweenService=(rootPart["Character"]["Head"]["Position"]-replicatedStorage)["Magnitude"]/3 teleportService["TextLabel"]["Text"]=", ["..(localPlayer..("]"..(" "..(math["round"](tweenService).." M"))))if _G["AutoBerry"]and math["round"](tweenService)<=20 then
            playerLevel:Destroy()
          end
        end
      end
    end
  else
    for players,localPlayer in ipairs(workspace:GetChildren())do
      if localPlayer:IsA("Part")and localPlayer["Name"]:match("BerryEspPart_.*")then
        localPlayer:Destroy()
      end
    end
  end
end
Kq["CreateToggle"]({["Title"]="Esp Berries",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  BerryEsp=players task.spawn(function()
    while BerryEsp do
      wait()berriesEsp()
    end
  end
  )
end
})Kq["CreateToggle"]({["Title"]="Esp Players",["Description"]="",["Default"]=false
["Callback"]=function(players)
  PlayerEsp=players task.spawn(function()
    while PlayerEsp do
      wait()EspPly()
    end
  end
  )
end
})Kq["CreateToggle"]({["Title"]="Esp Chests"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  ChestESP=players task.spawn(function()
    while ChestESP do
      wait()ChestEsp()
    end
  end
  )
end
})Kq["CreateToggle"]({["Title"]="Esp Fruits"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  DevilFruitESP=players task.spawn(function()
    while DevilFruitESP do
      wait()DevEsp()
    end
  end
  )
end
})Kq["CreateToggle"]({["Title"]="Esp Island Location",["Description"]=""
["Default"]=false
["Callback"]=function(players)
  IslandESP=players task.spawn(function()
    while IslandESP do
      wait()LocationEsp()
    end
  end
  )
end
})if World2 then
  Kq["CreateToggle"]({["Title"]="Esp Flower"
  ["Description"]=""
  ["Default"]=false
  ["Callback"]=function(players)
    FlowerESP=players task.spawn(function()
      while FlowerESP do
        wait()flowerEsp()
      end
    end
    )
  end
  })Kq["CreateToggle"]({["Title"]="Esp Legendary Sword",["Description"]="",["Default"]=false,["Callback"]=function(players)
    LegenS=players task.spawn(function()
      while LegenS do
        wait()LegenSword()
      end
    end
    )
  end
  })
end
if World2 or World3 then
  Kq["CreateToggle"]({["Title"]="Esp Aura Colour Dealers"
  ["Description"]="",["Default"]=false
  ["Callback"]=function(players)
    ColorEsp=players task.spawn(function()
      while ColorEsp do
        wait()HakiClorEsp()
      end
    end
    )
  end
  })
end
if World3 then
  Kq["CreateToggle"]({["Title"]="Esp Gears",["Description"]="",["Default"]=false,["Callback"]=function(players)
    ESPGear=players task.spawn(function()
      while ESPGear do
        wait()gearEsp()
      end
    end
    )
  end
  })Kq["CreateToggle"]({["Title"]="Esp SeaEvent Island",["Description"]=""
  ["Default"]=false,["Callback"]=function(players)
    EspEventIsland=players task.spawn(function()
      while EspEventIsland do
        wait()EventIslandEsp()
      end
    end
    )
  end
  })Kq["CreateToggle"]({["Title"]="Esp Advanced Fruits Dealer",["Description"]="",["Default"]=false,["Callback"]=function(players)
    advanEsp=players task.spawn(function()
      while advanEsp do
        wait()AdvanFruitEsp()
      end
    end
    )
  end
  })
end
local Iq=kz["CreateSection"]("Travel - Worlds")Iq["CreateButton"]({["Title"]="Travel East Blue (World 1)",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelMain")
end
})Iq["CreateButton"]({["Title"]="Travel Dressrosa (World 2)",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
end
})Iq["CreateButton"]({["Title"]="Travel Zou (World 3)"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
end
})local Wq=kz["CreateSection"]("Travel - Island")Location={}for players,localPlayer in pairs(workspace["_WorldOrigin"]["Locations"]:GetChildren())do
  table["insert"](Location,localPlayer["Name"])
end
Wq["CreateDropdown"]({["Title"]="Select Travelling",["Description"]=""
["Values"]=Location
["Default"]=false,["Multi"]=false,["Callback"]=function(players)
  _G["Island"]=players
end
})Wq["CreateToggle"]({["Title"]="Auto Travel"
["Description"]="Automatic teleport to pos island"
["Default"]=false,["Callback"]=function(players)
  _G["Teleport"]=players if players then
    task.spawn(function()
      for players,localPlayer in pairs(workspace["_WorldOrigin"]["Locations"]:GetChildren())do
        if localPlayer["Name"]==_G["Island"]then
          repeat
            wait()_tp(localPlayer["CFrame"]*CFrame["new"](0,30,0))
          until
          not _G["Teleport"]or rootPart["CFrame"]==localPlayer["CFrame"]
        end
      end
    end
    )
  end
end
})local Nq=kz["CreateSection"]("Travel - Portal")if World1 then
  Location_Portal={"Sky","UnderWater"}
elseif  World2 then
  Location_Portal={"SwanRoom","Cursed Ship"}
elseif  World3 then
  Location_Portal={"Castle On The Sea","Mansion Cafe","Hydra Teleport","Canvendish Room","Temple of Time"}
end
Nq["CreateDropdown"]({["Title"]="Select Portal",["Description"]="",["Values"]=Location_Portal,["Default"]=false,["Multi"]=false,["Callback"]=function(players)
  _G["Island_PT"]=players
end
})Nq["CreateButton"]({["Title"]="requestEntrance",
["Callback"]=function()
  if _G["Island_PT"]=="Sky"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-7894,5547,-380))
  elseif  _G["Island_PT"]=="UnderWater"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](61163,11,1819))
  elseif  _G["Island_PT"]=="SwanRoom"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](2285,15,905))
  elseif  _G["Island_PT"]=="Cursed Ship"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](923,126,32852))
  elseif  _G["Island_PT"]=="Castle On The Sea"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-5097.93164,316.447021,-3142.66602,-0.405007899,-4.31682743e-008,.914313197,-1.90943332e-008,1,3.8755779e-008,-0.914313197,-1.76180437e-009,-0.405007899))
  elseif  _G["Island_PT"]=="Mansion Cafe"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-12471.169921875,374.94024658203,-7551.677734375))
  elseif  _G["Island_PT"]=="Hydra Teleport"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](5643.4526367188,1013.0858154297,-340.51025390625))
  elseif  _G["Island_PT"]=="Canvendish Room"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](5314.5463867188,22.562219619751,-127.06755065918))
  elseif  _G["Island_PT"]=="Temple of Time"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](28310.0234,14895.1123,109.456741,-0.469690144,-2.85620132e-008,-0.882831335,-3.23509219e-008,1,-1.51411736e-008,.882831335,2.14487486e-008,-0.469690144))
  end
end
})local Dq=kz["CreateSection"]("Travel - NPCs")for players,localPlayer in pairs(replicatedStorage["NPCs"]:GetChildren())do
  table["insert"](m,localPlayer["Name"])
end
Dq["CreateDropdown"]({["Title"]="Select NPCs",["Description"]="",["Values"]=m,["Default"]=false
["Multi"]=false
["Callback"]=function(players)
  NPClist=players
end
})Dq["CreateToggle"]({["Title"]="Auto Tween to NPCs",["Description"]="Automatic teleport to pos Npcs"
["Default"]=false
["Callback"]=function(players)
  _G["TPNpc"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["TPNpc"]then
      pcall(function()
        for players,localPlayer in pairs(replicatedStorage["NPCs"]:GetChildren())do
          if localPlayer["Name"]==NPClist then
            _tp(localPlayer["HumanoidRootPart"]["CFrame"])
          end
        end
      end
      )
    end
  end
end
)local Aq=Lz["CreateSection"]("Fruits Options")local uq={}local function gq(players)
  local localPlayer=tostring(players)while true do
    localPlayer,k=localPlayer:gsub("^(-?%d+)(%d%d%d)","%1,%2")if k==0 then
      break
    end
  end
  return localPlayer
end
for players,localPlayer in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetFruits",true))do
  if localPlayer["OnSale"]==true then
    local players=gq(localPlayer["Price"])local rootPart=localPlayer["Name"]table["insert"](uq,rootPart)
  end
end
local zq={}for players,localPlayer in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetFruits",false))do
  if localPlayer["OnSale"]==true then
    local players=gq(localPlayer["Price"])local rootPart=localPlayer["Name"]table["insert"](zq,rootPart)
  end
end
Aq["CreateDropdown"]({["Title"]="Select Fruit Stock"
["Description"]="",["Values"]=zq,["Default"]=false,["Multi"]=false
["Callback"]=function(players)
  _G["SelectFruit"]=players
end
})Aq["CreateButton"]({["Title"]="Buy Basic Stock"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("PurchaseRawFruit",_G["SelectFruit"])
end
})Aq["CreateDropdown"]({["Title"]="Select Mirage Fruit"
["Description"]=""
["Values"]=uq
["Default"]=false
["Multi"]=false,["Callback"]=function(players)
  SelectF_Adv=players
end
})local iq={}for players,localPlayer in pairs(replicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetFruits",false))do
  if localPlayer["OnSale"]==true then
    local players=gq(localPlayer["Price"])local rootPart=localPlayer["Name"]table["insert"](iq,rootPart)
  end
end
Aq["CreateButton"]({["Title"]="Buy Mirage Stock",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("PurchaseRawFruit",SelectF_Adv)
end
})Aq["CreateToggle"]({["Title"]="Auto Random Fruit"
["Description"]="Automatic random devil fruit"
["Default"]=false
["Callback"]=function(players)
  _G["Random_Auto"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["Random_Auto"]then
        replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Cousin","Buy")
      end
    end
    )
  end
end
)Aq["CreateToggle"]({["Title"]="Auto Drop Fruit",["Description"]="Automatic drop devil fruit"
["Default"]=false,["Callback"]=function(players)
  _G["DropFruit"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["DropFruit"]then
      pcall(function()
        DropFruits()
      end
      )
    end
  end
end
)Aq["CreateToggle"]({["Title"]="Auto Store Fruit"
["Description"]="Automatic store devil fruit"
["Default"]=false,["Callback"]=function(players)
  _G["StoreF"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["StoreF"]then
      pcall(function()
        UpdStFruit()
      end
      )
    end
  end
end
)Aq["CreateToggle"]({["Title"]="Auto Tween to Fruit"
["Description"]="Automatic tween to get devil fruit",["Default"]=false
["Callback"]=function(players)
  _G["TwFruits"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["TwFruits"]then
      pcall(function()
        for players,localPlayer in pairs(workspace:GetChildren())do
          if string["find"](localPlayer["Name"],"Fruit")then
            _tp(localPlayer["Handle"]["CFrame"])
          end
        end
      end
      )
    end
  end
end
)Aq["CreateToggle"]({["Title"]="Auto Collect Fruit"
["Description"]="Automatic bring devil fruit"
["Default"]=false
["Callback"]=function(players)
  _G["InstanceF"]=players
end
})task.spawn(function()
  while wait(T)do
    if _G["InstanceF"]then
      pcall(function()
        collectFruits(_G["InstanceF"])
      end
      )
    end
  end
end
)local Uq=Pz["CreateSection"]("Shop Options")Uq["CreateButton"]({["Title"]="Buy Buso"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyHaki","Buso")
end
})Uq["CreateButton"]({["Title"]="Buy Geppo",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyHaki","Geppo")
end
})Uq["CreateButton"]({["Title"]="Buy Soru",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyHaki","Soru")
end
})Uq["CreateButton"]({["Title"]="Buy Ken"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("KenTalk","Buy")
end
})local Cq=Pz["CreateSection"]("Fighting - Style")Cq["CreateButton"]({["Title"]="Buy Black Leg",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
end
})Cq["CreateButton"]({["Title"]="Buy Electro",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
end
})Cq["CreateButton"]({["Title"]="Buy Fishman Karate",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
end
})Cq["CreateButton"]({["Title"]="Buy DragonClaw"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward","DragonClaw","2")
end
})Cq["CreateButton"]({["Title"]="Buy Superhuman",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
end
})Cq["CreateButton"]({["Title"]="Buy Death Step",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
end
})Cq["CreateButton"]({["Title"]="Buy Sharkman Karate"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
end
})Cq["CreateButton"]({["Title"]="Buy ElectricClaw"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
end
})Cq["CreateButton"]({["Title"]="Buy DragonTalon"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
end
})Cq["CreateButton"]({["Title"]="Buy Godhuman",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman")
end
})Cq["CreateButton"]({["Title"]="Buy SanguineArt",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySanguineArt")
end
})local vq=Pz["CreateSection"]("Accessory")vq["CreateButton"]({["Title"]="Buy Tomoe Ring"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Tomoe Ring")
end
})vq["CreateButton"]({["Title"]="Buy Black Cape"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Black Cape")
end
})vq["CreateButton"]({["Title"]="Buy Swordsman Hat"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Swordsman Hat")
end
})vq["CreateButton"]({["Title"]="Buy Bizarre Rifle"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Ectoplasm","Buy",1)
end
})vq["CreateButton"]({["Title"]="Buy Ghoul Mask"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Ectoplasm","Buy",2)
end
})local mq=Pz["CreateSection"]("Accessory SeaEvent")mq["CreateButton"]({["Title"]="Craft Dragonheart"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","Dragonheart")
end
})mq["CreateButton"]({["Title"]="Craft Dragonstorm"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","Dragonstorm")
end
})mq["CreateButton"]({["Title"]="Craft DinoHood"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","DinoHood")
end
})mq["CreateButton"]({["Title"]="Craft SharkTooth"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","SharkTooth")
end
})mq["CreateButton"]({["Title"]="Craft TerrorJaw"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","TerrorJaw")
end
})mq["CreateButton"]({["Title"]="Craft SharkAnchor"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","SharkAnchor")
end
})mq["CreateButton"]({["Title"]="Craft LeviathanCrown",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","LeviathanCrown")
end
})mq["CreateButton"]({["Title"]="Craft LeviathanShield",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","LeviathanShield")
end
})mq["CreateButton"]({["Title"]="Craft LeviathanBoat"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","LeviathanBoat")
end
})mq["CreateButton"]({["Title"]="Craft LegendaryScroll"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","LegendaryScroll")
end
})mq["CreateButton"]({["Title"]="Craft MythicalScroll",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CraftItem","Craft","MythicalScroll")
end
})local yq=Pz["CreateSection"]("Weapon World1")yq["CreateButton"]({["Title"]="Buy Cutlass",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Cutlass")
end
})yq["CreateButton"]({["Title"]="Buy Katana",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Katana")
end
})yq["CreateButton"]({["Title"]="Buy Iron Mace",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Iron Mace")
end
})yq["CreateButton"]({["Title"]="Buy Duel Katana"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Duel Katana")
end
})yq["CreateButton"]({["Title"]="Buy Triple Katana",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Triple Katana")
end
})yq["CreateButton"]({["Title"]="Buy Pipe"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Pipe")
end
})yq["CreateButton"]({["Title"]="Buy Dual-Headed Blade"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Dual-Headed Blade")
end
})yq["CreateButton"]({["Title"]="Buy Bisento"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Bisento")
end
})yq["CreateButton"]({["Title"]="Buy Soul Cane"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Soul Cane")
end
})yq["CreateButton"]({["Title"]="Buy Slingshot",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Slingshot")
end
})yq["CreateButton"]({["Title"]="Buy Musket",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Musket")
end
})yq["CreateButton"]({["Title"]="Buy Dual Flintlock",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Dual Flintlock")
end
})yq["CreateButton"]({["Title"]="Buy Flintlock",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Flintlock")
end
})yq["CreateButton"]({["Title"]="Buy Refined Flintlock"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Refined Flintlock")
end
})yq["CreateButton"]({["Title"]="Buy Cannon"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem","Cannon")
end
})yq["CreateButton"]({["Title"]="Buy Kabucha"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward","Slingshot","2")
end
})local bq=Pz["CreateSection"]("Fragments shop")bq["CreateButton"]({["Title"]="Buy Refund Stats"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward","Refund","2")
end
})bq["CreateButton"]({["Title"]="Buy Reroll Race",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward","Reroll","2")
end
})bq["CreateButton"]({["Title"]="Buy Ghoul Race (2.5k)",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("Ectoplasm"," Change",4)
end
})bq["CreateButton"]({["Title"]="Buy Cyborg Race (2.5k)",["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("CyborgTrainer"," Buy")
end
})local cq=jz["CreateSection"]("Server - Function")cq["CreateButton"]({["Title"]="Rejoin Server",["Callback"]=function()
  (game:GetService("TeleportService")):Teleport(game["PlaceId"],game["Players"]["LocalPlayer"])
end
})cq["CreateButton"]({["Title"]="Hop Server"
["Callback"]=function()
  Hop()
end
})cq["CreateButton"]({["Title"]="Hop to Lowest Players",["Callback"]=function()
  local players=game:GetService("HttpService")local rootPart=game:GetService("TeleportService")local replicatedStorage="https://games.roblox.com/v1/games/"local playerLevel=game["PlaceId"]local teleportService=replicatedStorage..(playerLevel.."/servers/Public?sortOrder=Asc&limit=100")function ListServers(localPlayer)
    local rootPart=game:HttpGet(teleportService..(localPlayer and "&cursor="..localPlayer or ""))return players:JSONDecode(rootPart)
  end
  local tweenService,lighting repeat
    local players=ListServers(lighting)tweenService=players["data"][1]lighting=players["nextPageCursor"]
  until
  tweenService rootPart:TeleportToPlaceInstance(playerLevel,tweenService["id"],localPlayer)
end
})cq["CreateButton"]({["Title"]="Hop to Lowest Pings Server",["Callback"]=function()
  local players=game:GetService("HttpService")local localPlayer=game:GetService("TeleportService")local rootPart=game:GetService("Stats")local function replicatedStorage(localPlayer,rootPart)
    local replicatedStorage=string["format"]("https://games.roblox.com/v1/games/%d/servers/Public?limit=%d",localPlayer,rootPart)local playerLevel,teleportService=pcall(function()
      return players:JSONDecode(game:HttpGet(replicatedStorage))
    end
    )if playerLevel and(teleportService and teleportService["data"])then
      return teleportService["data"]
    end
    return nil
  end
  local playerLevel=game["PlaceId"]local teleportService=100 local tweenService=replicatedStorage(playerLevel,teleportService)if not tweenService then
    return
  end
  local lighting=tweenService[1]for players,localPlayer in pairs(tweenService)do
    if localPlayer["ping"]<lighting["ping"]and localPlayer["maxPlayers"]>localPlayer["playing"]then
      lighting=localPlayer
    end
  end
  local enemies=.5 task["wait"](enemies)local virtualInput=100 local virtualUser=rootPart["Network"]["ServerStatsItem"]local playerTeam=virtualUser["Data Ping"]:GetValueString()local runService=tonumber(playerTeam:match("(%d+)"))if runService>=virtualInput then
    localPlayer:TeleportToPlaceInstance(playerLevel,lighting["id"])
  else
  end
end
})cq["CreateBox"]({["Title"]="JobID",["Placeholder"]="Type something..."
["Default"]=""
["Number"]=false},function(players)
  _G["JobId"]=players
end
)task.spawn(function()
  while wait(T)do
    if _G["JobId"]then
      pcall(function()
        local players players=localPlayer["OnTeleport"]:Connect(function(localPlayer)
          if localPlayer==Enum["TeleportState"]["Failed"]then
            players:Disconnect()if workspace:FindFirstChild("Message")then
              workspace["Message"]:Destroy()
            end
          end
        end
        )
      end
      )
    end
  end
end
)cq["CreateButton"]({["Title"]="Teleport [Job ID]"
["Callback"]=function()
  replicatedStorage["__ServerBrowser"]:InvokeServer("teleport",_G["JobId"])
end
})cq["CreateButton"]({["Title"]="Copy JobID"
["Callback"]=function()
  setclipboard(tostring(game["JobId"]))
end
})local Hq=jz["CreateSection"]("Player Gui / Others")Hq["CreateButton"]({["Title"]="Open Awakenings Expert"
["Callback"]=function()
  localPlayer["PlayerGui"]["Main"]["AwakeningToggler"]["Visible"]=true
end
})Hq["CreateButton"]({["Title"]="Open Title Selection"
["Callback"]=function()
  replicatedStorage["Remotes"]["CommF_"]:InvokeServer("getTitles",true)localPlayer["PlayerGui"]["Main"]["Titles"]["Visible"]=true
end
})Hq["CreateToggle"]({["Title"]="Disable Chat GUI"
["Description"]="",["Default"]=false
["Callback"]=function(players)
  _G["Rechat"]=players local localPlayer=game:GetService("StarterGui")if _G["Rechat"]then
    localPlayer:SetCoreGuiEnabled(Enum["CoreGuiType"]["Chat"],false)
  else
    localPlayer:SetCoreGuiEnabled(Enum["CoreGuiType"]["Chat"],true)
  end
end
})Hq["CreateToggle"]({["Title"]="Disable Leader Board GUI"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  ReLeader=players local localPlayer=game:GetService("StarterGui")if ReLeader then
    localPlayer:SetCoreGuiEnabled(Enum["CoreGuiType"]["PlayerList"],false)
  else
    localPlayer:SetCoreGuiEnabled(Enum["CoreGuiType"]["PlayerList"],true)
  end
end
})Hq["CreateButton"]({["Title"]="Set Pirate Team"
["Callback"]=function()
  Pirates()
end
})Hq["CreateButton"]({["Title"]="Set Marine Team"
["Callback"]=function()
  Marines()
end
})Hq["CreateToggle"]({["Title"]="Unlock All Portals"
["Description"]="unlocked portal for who doesn't defeat rip_indra"
["Default"]=false,["Callback"]=function(players)
  _G["PortalUnLock"]=players
end
})task.spawn(function()
  while wait(T)do
    pcall(function()
      if _G["PortalUnLock"]then
        if f["Pos"](CstlePos_Miti,8)then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-12471.169921875,374.94024658203,-7551.677734375))
        elseif  f["Pos"](Man3Pos_Miti,8)then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-5072.08984375,314.5412902832,-3151.1098632812))
        elseif  f["Pos"](HydraPos_Miti,8)then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](5748.7587890625,610.44982910156,-267.81704711914))
        elseif  f["Pos"](HydratoCastle,8)then
          replicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance",Vector3["new"](-5072.08984375,314.5412902832,-3151.1098632812))
        end
      end
    end
    )
  end
end
)local Sq=jz["CreateSection"]("Graphics / Haki Stats")HakiSt={"State 0","State 1"
"State 2"
"State 3"
"State 4"
"State 5"}Sq["CreateDropdown"]({["Title"]="Select Haki States"
["Description"]=""
["Values"]=HakiSt
["Default"]=false,["Multi"]=false,["Callback"]=function(players)
  _G["SelectStateHaki"]=players
end
})Sq["CreateButton"]({["Title"]="ChangeBusoStage",["Callback"]=function()
  if _G["SelectStateHaki"]=="State 0"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ChangeBusoStage",0)
  elseif  _G["SelectStateHaki"]=="State 1"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ChangeBusoStage",1)
  elseif  _G["SelectStateHaki"]=="State 2"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ChangeBusoStage",2)
  elseif  _G["SelectStateHaki"]=="State 3"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ChangeBusoStage",3)
  elseif  _G["SelectStateHaki"]=="State 4"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ChangeBusoStage",4)
  elseif  _G["SelectStateHaki"]=="State 5"then
    replicatedStorage["Remotes"]["CommF_"]:InvokeServer("ChangeBusoStage",5)
  end
end
})Sq["CreateToggle"]({["Title"]="Turn on RTX Mode",["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["RTXMode"]=players local rootPart=game["Lighting"]local replicatedStorage=Instance["new"]("ColorCorrectionEffect",rootPart)local playerLevel=Instance["new"]("ColorCorrectionEffect",rootPart)local teleportService=rootPart["Ambient"]local tweenService=rootPart["Brightness"]local lighting=rootPart["ColorShift_Top"]local enemies=replicatedStorage["Brightness"]local virtualInput=replicatedStorage["Contrast"]local virtualUser=replicatedStorage["TintColor"]local playerTeam=playerLevel["TintColor"]task.spawn(function()
    while _G["RTXMode"]do
      wait()rootPart["Ambient"]=Color3["fromRGB"](33,33,33)rootPart["Brightness"]=.3 replicatedStorage["Brightness"]=.176 replicatedStorage["Contrast"]=.39 replicatedStorage["TintColor"]=Color3["fromRGB"](217,145,57)game["Lighting"]["FogEnd"]=999 if not localPlayer["Character"]["HumanoidRootPart"]:FindFirstChild("PointLight")then
        local players=Instance["new"]("PointLight")players["Parent"]=localPlayer["Character"]["HumanoidRootPart"]players["Range"]=15 players["Color"]=Color3["fromRGB"](217,145,57)
      end
    end
    rootPart["Ambient"]=teleportService rootPart["Brightness"]=tweenService rootPart["ColorShift_Top"]=lighting replicatedStorage["Contrast"]=virtualInput replicatedStorage["Brightness"]=enemies replicatedStorage["TintColor"]=virtualUser playerLevel["TintColor"]=playerTeam game["Lighting"]["FogEnd"]=2500 local players=localPlayer["Character"]["HumanoidRootPart"]:FindFirstChild("PointLight")if players then
      players:Destroy()
    end
  end
  )
end
})Sq["CreateButton"]({["Title"]="Turn on Fast Mode",["Callback"]=function()
  for players,localPlayer in next,workspace:GetDescendants()do
    if table["find"](t,localPlayer["ClassName"])then
      localPlayer["Material"]="Plastic"
    end
  end
end
})Sq["CreateButton"]({["Title"]="Turn on Low CPU",["Callback"]=function()
  LowCpu()
end
})Sq["CreateButton"]({["Title"]="Turn on increase Boats",["Callback"]=function()
  for players,rootPart in pairs(workspace["Boats"]:GetDescendants())do
    if table["find"](jF,rootPart["Name"])and tostring(rootPart["Owner"]["Value"])==tostring(localPlayer["Name"])then
      rootPart["VehicleSeat"]["MaxSpeed"]=350 rootPart["VehicleSeat"]["Torque"]=.2 rootPart["VehicleSeat"]["TurnSpeed"]=5 rootPart["VehicleSeat"]["HeadsUpDisplay"]=true
    end
  end
end
})Sq["CreateButton"]({["Title"]="Remove Sky Fog",["Callback"]=function()
  if lighting:FindFirstChild("LightingLayers")then
    lighting["LightingLayers"]:Destroy()
  end
  if lighting:FindFirstChild("SeaTerrorCC")then
    lighting["SeaTerrorCC"]:Destroy()
  end
  if lighting:FindFirstChild("FantasySky")then
    lighting["FantasySky"]:Destroy()
  end
end
})local oq=jz["CreateSection"]("Configure - God")oq["CreateButton"]({["Title"]="Rain Fruits (Client)"
["Callback"]=function()
  for players,rootPart in pairs((game:GetObjects("rbxassetid://3926305904"))[1]:GetChildren())do
    rootPart["Parent"]=game["Workspace"]["Map"]rootPart:MoveTo(localPlayer["Character"]["PrimaryPart"]["Position"]+Vector3["new"](math["random"](-50,50),100,math["random"](-50,50)))if rootPart["Fruit"]:FindFirstChild("AnimationController")then
      ((rootPart["Fruit"]:FindFirstChild("AnimationController")):LoadAnimation(rootPart["Fruit"]:FindFirstChild("Idle"))):Play()
    end
    rootPart["Handle"]["Touched"]:Connect(function(players)
      if players["Parent"]==localPlayer["Character"]then
        rootPart["Parent"]=localPlayer["Backpack"]localPlayer["Character"]["Humanoid"]:EquipTool(rootPart)
      end
    end
    )
  end
end
})oq["CreateToggle"]({["Title"]="Turn on Full Bright"
["Default"]=false
["Callback"]=function(players)
  bright=players if players then
    lighting["Ambient"]=Color3["new"](1,1,1)lighting["ColorShift_Bottom"]=Color3["new"](1,1,1)lighting["ColorShift_Top"]=Color3["new"](1,1,1)
  else
    lighting["Ambient"]=Color3["new"](0,0,0)lighting["ColorShift_Bottom"]=Color3["new"](0,0,0)lighting["ColorShift_Top"]=Color3["new"](0,0,0)
  end
end
})Cheat_DayNight={"Day"
"Night"}oq["CreateDropdown"]({["Title"]="Select Time",["Description"]="",["Values"]=Cheat_DayNight
["Default"]=false
["Multi"]=false
["Callback"]=function(players)
  _G["SelectDN"]=players
end
})oq["CreateToggle"]({["Title"]="Turn on Time"
["Description"]=""
["Default"]=false,["Callback"]=function(players)
  _G["daylightN"]=players
end
})task["spawn"](function()
  while task["wait"]()do
    if _G["daylightN"]then
      if _G["SelectDN"]=="Day"then
        lighting["ClockTime"]=12
      elseif  _G["SelectDN"]=="Night"then
        lighting["ClockTime"]=0
      end
    end
  end
end
)oq["CreateToggle"]({["Title"]="Turn on Walk on Water",
["Description"]="walk on water",
["Default"]=true,
["Callback"]=function(players)
  _G["WalkWater_Part"]=players local localPlayer=(game:GetService("Workspace"))["Map"]["WaterBase-Plane"]if _G["WalkWater_Part"]then
    localPlayer["Size"]=Vector3["new"](1000,112,1000)
  else
    localPlayer["Size"]=Vector3["new"](1000,80,1000)
  end
end
})oq["CreateToggle"]({["Title"]="Turn on Ice Walk",
["Description"]="Ice walk just like walk on water but have ice effect",
["Default"]=false,["Callback"]=function(players)
  _G["WalkWater"]=players
end
})task.spawn(function()
  while task["wait"]()do
    if _G["WalkWater"]then
      pcall(function()
        if localPlayer["Character"]and localPlayer["Character"]:FindFirstChild("LeftFoot")then
          local players=replicatedStorage["Assets"]["Models"]["IceSpikes4"]:Clone()players["Parent"]=workspace players["Size"]=Vector3["new"](3+math["random"](10,12),1.7,3+math["random"](10,12))players["Color"]=Color3["fromRGB"](128,187,219)players["CFrame"]=CFrame["new"](localPlayer["Character"]["Head"]["Position"]["X"],-3.8,localPlayer["Character"]["Head"]["Position"]["Z"])*CFrame["Angles"]((math["random"]()-.5)*.06,math["random"]()*7,(math["random"]()-.5)*.07)local rootPart={}rootPart["Size"]=Vector3["new"](0,.3,0)local playerLevel=tweenService:Create(players,TweenInfo["new"](2,Enum["EasingStyle"]["Quad"],Enum["EasingDirection"]["In"]),rootPart)playerLevel["Completed"]:Connect(function()
            players:Destroy()
          end
          )playerLevel:Play()
        end
      end
      )
    end
  end
end
)local Zq=game["Players"]["LocalPlayer"]local function Tq(players)
  if not players then
    return false
  end
  local localPlayer=players:FindFirstChild("Humanoid")return localPlayer and localPlayer["Health"]>0
end
local function kq(players,localPlayer)
  local rootPart=(game:GetService("Workspace"))["Enemies"]:GetChildren()local replicatedStorage=(game:GetService("Players")):GetPlayers()local playerLevel={}local teleportService=(players:GetPivot())["Position"]for players,rootPart in ipairs(rootPart)do
    local replicatedStorage=rootPart:FindFirstChild("HumanoidRootPart")if replicatedStorage and Tq(rootPart)then
      local players=(replicatedStorage["Position"]-teleportService)["Magnitude"]if players<=localPlayer then
        table["insert"](playerLevel,rootPart)
      end
    end
  end
  for players,rootPart in ipairs(replicatedStorage)do
    if rootPart~=Zq and rootPart["Character"]then
      local players=rootPart["Character"]:FindFirstChild("HumanoidRootPart")if players and Tq(rootPart["Character"])then
        local replicatedStorage=(players["Position"]-teleportService)["Magnitude"]if replicatedStorage<=localPlayer then
          table["insert"](playerLevel,rootPart["Character"])
        end
      end
    end
  end
  return playerLevel
end
function AttackNoCoolDown()
  local players=(game:GetService("Players"))["LocalPlayer"]local localPlayer=players["Character"]if not localPlayer then
    return
  end
  local rootPart=nil for players,localPlayer in ipairs(localPlayer:GetChildren())do
    if localPlayer:IsA("Tool")then
      rootPart=localPlayer break
    end
  end
  if not rootPart then
    return
  end
  local replicatedStorage=kq(localPlayer,60)if#replicatedStorage==0 then
    return
  end
  local playerLevel=game:GetService("ReplicatedStorage")local teleportService=playerLevel:FindFirstChild("Modules")if not teleportService then
    return
  end
  local tweenService=((playerLevel:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RE/RegisterAttack")local lighting=((playerLevel:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RE/RegisterHit")if not tweenService or not lighting then
    return
  end
  local enemies,virtualInput={},nil for players,localPlayer in ipairs(replicatedStorage)do
    if not localPlayer:GetAttribute("IsBoat")then
      local players={"RightLowerArm","RightUpperArm",
      "LeftLowerArm","LeftUpperArm",
      "RightHand",
      "LeftHand"}local rootPart=localPlayer:FindFirstChild(players[math["random"](#players)])or localPlayer["PrimaryPart"]if rootPart then
        table["insert"](enemies,{localPlayer
        rootPart})virtualInput=rootPart
      end
    end
  end
  if not virtualInput then
    return
  end
  tweenService:FireServer(0)local virtualUser=players:FindFirstChild("PlayerScripts")if not virtualUser then
    return
  end
  local playerTeam=virtualUser:FindFirstChildOfClass("LocalScript")while not playerTeam do
    virtualUser["ChildAdded"]:Wait()playerTeam=virtualUser:FindFirstChildOfClass("LocalScript")
  end
  local runService if getsenv then
    local players,localPlayer=pcall(getsenv,playerTeam)if players and localPlayer then
      runService=localPlayer["_G"]["SendHitsToServer"]
    end
  end
  local stats,energyValue=pcall(function()
    return(require(teleportService["Flags"]))["COMBAT_REMOTE_THREAD"]or false
  end
  )if stats and(energyValue and runService)then
    runService(virtualInput,enemies)
  elseif  stats and not energyValue then
    lighting:FireServer(virtualInput,enemies)
  end
end
CameraShakerR=require(game["ReplicatedStorage"]["Util"]["CameraShaker"])CameraShakerR:Stop()get_Monster=function()
  for players,rootPart in pairs(workspace["Enemies"]:GetChildren())do
    local replicatedStorage=rootPart:FindFirstChild("UpperTorso")or rootPart:FindFirstChild("Head")if rootPart:FindFirstChild("HumanoidRootPart",true)and replicatedStorage then
      if(rootPart["Head"]["Position"]-localPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]<=50 then
        return true,replicatedStorage["Position"]
      end
    end
  end
  for players,localPlayer in pairs(workspace["SeaBeasts"]:GetChildren())do
    if localPlayer:FindFirstChild("HumanoidRootPart")and(localPlayer:FindFirstChild("Health")and localPlayer["Health"]["Value"]>0)then
      return true,localPlayer["HumanoidRootPart"]["Position"]
    end
  end
  for players,localPlayer in pairs(workspace["Enemies"]:GetChildren())do
    if localPlayer:FindFirstChild("Health")and(localPlayer["Health"]["Value"]>0 and localPlayer:FindFirstChild("VehicleSeat"))then
      return true,localPlayer["Engine"]["Position"]
    end
  end
end
Actived=function()
  local players=game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")for players,localPlayer in next,getconnections(players["Activated"])do
    if typeof(localPlayer["Function"])=="function"then
      getupvalues(localPlayer["Function"])
    end
  end
end
task["spawn"](function()
  runService["Stepped"]:Connect(function()
    task["wait"](.05)pcall(function()
      if not _G["Seriality"]then
        return
      end
      AttackNoCoolDown()local tool=game["Players"]["LocalPlayer"]["Character"]:FindFirstChildOfClass("Tool")if not tool then
        return
      end
      local tooltip=tool["ToolTip"]local hasMonster,monsterPos=get_Monster()if tooltip=="Blox Fruit"and hasMonster then
        local leftClickRemote=tool:FindFirstChild("LeftClickRemote")if leftClickRemote then
          Actived()leftClickRemote:FireServer(Vector3["new"](.01,-500,.01),1,true)leftClickRemote:FireServer(false)
        end
      end
    end
    )
  end
  )
end
)
