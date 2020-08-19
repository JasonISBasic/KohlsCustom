--[[
Kohls Admin Jasons Customs
Script Created by Jason, Blake
Command idea credits;
Blake

v1.0.0
]]--


--[[

	if message:sub(1,6) == "preset" then
		print("Preset")
	end

	-- sub 7 for plr's name
]]

--Variable's

largeText = game:HttpGetAsync("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Games/Kohls%20Admin%20House/LongText.txt")

prefix = "."

crashgear = "94794847"

-- Notifications

local notif = function(main, desc)

	game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Notification - "..main;
    Text = desc;
	})


end


-- Commands

crash = function()

	print("Command -Crash- has been ran.")
	wait()
	game.Players:Chat("gear me "..crashgear)
	wait(0.4)
	hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
  hum:EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher"))
	wait()
	game.Players:Chat("size me 0.3")
	wait()
	game.Players:Chat("size me 0.3")
	wait()
	game.Players:Chat("size me 0.3")
	wait()
	game.Players:Chat("size me 0.3")
	wait()
	game.Players:Chat("size me 0.3")
	wait()
	game.Players:Chat("size me 0.3")
	wait()
	game.Players:Chat("size me 0.3")

end

tpo = function()

	print("Command -TPO- has been ran.")
	wait()
	game.Players:Chat("tp me me me")

end

pmove = function()

		wait()
		game.Players:Chat("sit me")
		wait(1)
		game.Players:Chat("punish me")
		wait(1)
		game.Players:Chat("unpunish me")
		print("Command -PMOVE- has been ran.")

end

annoyall = function()

	print("Command -ANNOY ALL- has been ran.")
	game.Players:Chat("tp all random random")
	wait()
	game.Players:Chat("tp all random random")
	wait()
	game.Players:Chat("tp all random random")
	wait()
	game.Players:Chat("tp all random random")
	wait()

end

ospamui = function()

	notif("Spam Interface", "Interface opened.")
	wait()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DisBlake/Blacke/master/Script",true))()


end

cspamui = function()

	notif("Spam Interface", "Interface exited.")
	wait()
	game.CoreGui.cmdspam:Destroy()


end

hspamui = function()

	notif("Spam Interface", "Interface is now hidden.")
	wait()
	game.CoreGui.cmdspam.Main.Visible = false


end

sspamui = function()

	notif("Spam Interface", "Interface is now showing.")
	wait()
	game.CoreGui.cmdspam.Main.Visible = true


end

rejoin = function()

	print("Rejoining...")
	wait()
	game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)


end

trashCan = function(user)

	notif("Command Ran", user.." is a trash can")
	wait()
	game.Players:Chat("char"..user.." 999999999")
	game.Players:Chat("h The trash can has arrived.")

end

ew = function()

	print("Command -ew- has been ran.")
	  game.Players:Chat("music off")
		game.Players:Chat("fix")
		game.Players:Chat("h Ew, What was that.")

end

gay = function(user)

	print("Command -gay- has been ran.")
	  game.Players:Chat("swag"..user)
	  wait()
	  game.Players:Chat("music 4823019744")

end

boomer = function(user)

	notif("Command Ran", user.." is a boomer")
	wait()
	game.Players:Chat("char"..user.." 1")
	game.Players:Chat("h The boomer is here.")

end

hell = function()

	print("Command -hell- has been ran.")
	wait()
	game.Players:Chat("ambient -600 -100 -400")
	wait()
	game.Players:Chat("outdoorambient -600 -100 -400")
	wait()
	game.Players:Chat("colorshifttop -600 -100 -400")
	wait()
	game.Players:Chat("colorshiftbottom -600 -100 -400")
	wait()
	game.Players:Chat("music 4960029619")

end

-- Command Caller

game.Players.LocalPlayer.Chatted:connect(function(msg)

	if msg:sub(1,1)==prefix then
		if #msg==1 then

			notif("Error!", "No command given.")

		else

			if msg:sub(2,5)=="tpo" then
				tpo()
			end

			if msg:sub(2,7)=="pmove" then
				pmove()
			end

			if msg:sub(2,11)=="annoy all" then
				annoyall()
			end

			if msg:sub(2,11)=="openspamui" or msg:sub(2,6)=="osui" then
				ospamui()
			end

			if msg:sub(2,11)=="exitspamui" or msg:sub(2,6)=="esui" then
				cspamui()
			end

			if msg:sub(2,8)=="rejoin" or msg:sub(2,4)=="rj" then
				rejoin()
			end

			if msg:sub(2,7)=="crash" or msg:sub(2,4)=="cg" then
				crash()
			end

			if msg:sub(2,11)=="showspamui" or msg:sub(2,6)=="ssui" then
				sspamui()
			end

			if msg:sub(2,10)=="hidespamui" or msg:sub(2,5)=="hsui" then
				hspamui()
			end

			if msg:sub(2,6) == "trash" then
				user = msg:sub(7)
				trashCan(user)
			end

			if msg:sub(2,3) == "ew" then
					ew()
			end

			if msg:sub(2,4) == "gay" then
			    user = msg:sub(5)
					gay(user)
			end

			if msg:sub(2,7) == "boomer" then
				user = msg:sub(8)
				boomer(user)
			end

			if msg:sub(2,5) == "hell" then
				hell()
			end

		end
	end
end)

notif("initialisation", "Commands Loaded")
wait(0.3)
notif("initialisation", "Made by Jason, Blake")
