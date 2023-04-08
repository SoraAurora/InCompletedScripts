local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - MasterBlox", "Ocean")

local Players = game:GetService("Players")
local LocalPlayer = game.Players.LocalPlayer.Character
local ReplicatedStorage = game:GetService("ReplicatedStorage")

game:GetService("RunService").RenderStepped:Connect(function()
	local anticheatname = "scripts loader"
	for i1 , v2 in pairs(LocalPlayer:GetChildren()) do
		if tostring(v2) == anticheatname then
			v2:Destroy()
		end
	end
end)

-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	getgenv().killaura = false
	MainSection:NewToggle("KillAura - Range is Small","", function()
		getgenv().killaura = not getgenv().killaura
		while getgenv().killaura do
			for i1 , v1 in pairs(Players:GetPlayers()) do
				local target = game.Workspace:FindFirstChild(tostring(v1))
				if tostring(target) ~= tostring(LocalPlayer) and game.Players.LocalPlayer:DistanceFromCharacter(target.PrimaryPart.Position) < 16  then
					print(LocalPlayer , target , "hit?")
					game.ReplicatedStorage.GameRemotes.Attack:InvokeServer(target ,"G#M;IVT;#})jAkm*2De!")
					print("defo hit")
				end
			end
			wait(0.01)
		end
	end)

    MainSection:NewButton("Unnamed ESP by WeAreDevs" , "" , function()
        loadstring(game:HttpGet("https://pastebin.com/raw/n4VDYyrP"))()
    end)
--player
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Modification")

	getgenv().walkspeed = 20

	PlayerSection:NewDropdown("Select WalkSpeed", "18 is below anticheat", {18,25,30,40,50}, function(walkspeed)
		getgenv().walkspeed = walkspeed
	end)
	getgenv().enablewalkspeed = false
	PlayerSection:NewToggle("Toggle WalkSpeed", "Enable/Disable", function(walkspeed)
		getgenv().enablewalkspeed = not getgenv().enablewalkspeed
		while getgenv().enablewalkspeed do
			LocalPlayer.Humanoid.WalkSpeed = getgenv().walkspeed
			wait(3)
		end
	end)

-- Misc
	local Misc = Window:NewTab("Misc")
	local MiscSection = Misc:NewSection("Misc")

	MiscSection:NewButton("Enable Anti Afk ", "", function()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
    end)

    MiscSection:NewButton("Dex by WeAreDevs" , "" , function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))() --  Dex By wearedevs.net
    end)
 
    MiscSection:NewButton("Simple Spy" , "" , function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9vCepJBL"))() -- Remote Spy by veeb
    end)

	MiscSection:NewKeybind("Right Shift to Hide/Open GUI", "", Enum.KeyCode.RightShift, function()
		Library:ToggleUI()
	end)