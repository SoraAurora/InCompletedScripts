local weapon1 = "Gun"
local weapon2 = "Knife"

function CheckCop(Player:Player)
	if Player:FindFirstChild("Backpack") and Player.Backpack:FindFirstChild(weapon1) then 
		filler1 = "Cop is "
		text1 = filler1..tostring(Player)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text1, "normalchat")
	end
end

function CheckMur(Player:Player)
	if Player:FindFirstChild("Backpack") and Player.Backpack:FindFirstChild(weapon2) then
		filler2 = "Murderer is "
		text2 = filler2..tostring(Player)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text2, "normalchat")
	end
end

for v, Player in pairs(game:GetService("Players"):GetPlayers()) do
	CheckCop(Player)
	CheckMur(Player)
end