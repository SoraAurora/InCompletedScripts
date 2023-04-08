local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sora Hub - SPTS", "Ocean")

game:GetService("RunService").RenderStepped:Connect(function()
	getgenv().Players = game:GetService("Players")
	getgenv().LocalPlayer = game.Players.LocalPlayer.Character
end)
-- Main
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")

	getgenv().farm = false
	MainSection:NewToggle("AutoFarm All Except Pysic","", function()
		getgenv().farm = not getgenv().farm
		while getgenv().farm do
			game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Add_FS_Request"})
			game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+BT1"})
			game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Add_MS_Request"})
			game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Add_JF_Request"})
			wait(0.1)
		end
	end)

-- Teleport
	local Teleport = Window:NewTab("TPs")
	local TeleportSection = Teleport:NewSection("Teleports")

	TeleportSection:NewButton("Teleport to Spawn","",function()
		print("TPed")
		getgenv().LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(472.209167, 249.415146, 892.996521, 0.997621536, 2.95755633e-08, 0.0689291134, -2.35157156e-08, 1, -8.87256135e-08, -0.0689291134, 8.68936709e-08, 0.997621536)
	end)

	TeleportSection:NewButton("Teleport to Psychic 1m+ ","",function()
		print("TPed")
		getgenv().LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-2531.78931, 5486.78516, -537.077087, -0.689188242, 9.54532897e-10, -0.724582314, 1.22171153e-08, 1, -1.03029834e-08, 0.724582314, -1.59530007e-08, -0.689188242)
	end)

	TeleportSection:NewButton("Teleport to WareHouse 100/10KBody Toughness ","",function()
		print("TPed")
		getgenv().LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(356.446136, 263.942291, -473.607605, -0.509757996, 4.8178034e-08, 0.860317826, 4.82966627e-08, 1, -2.73833951e-08, -0.860317826, 2.75915735e-08, -0.509757996)
	end)

	TeleportSection:NewButton("Teleport to IceBerg 100k Body Toughness ","",function()
		print("TPed")
		getgenv().LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(1631.57019, 260.363525, 2249.97729, -0.776582301, -7.30381302e-08, 0.63001579, -2.58854893e-08, 1, 8.40231564e-08, -0.63001579, 4.89426313e-08, -0.776582301)
	end)

	TeleportSection:NewButton("Teleport to Crystal (Strength) ","",function()
		print("TPed")
		getgenv().LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-2270.2063, 1943.5968, 1054.87646, 0.999394298, 7.87304018e-08, -0.0348006748, -7.7961225e-08, 1, 2.34592701e-08, 0.0348006748, -2.07319566e-08, 0.999394298)
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