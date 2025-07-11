local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Oblivion Hub | PetaPeta",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading Hub..",
   LoadingSubtitle = "Script Made by Faheem ✅",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "L", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = Lona, -- Create a custom folder for your hub/game
      FileName = "Fahewm"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "discord.gg/siffori", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Authencation | Key system Provide by Faheem",
      Subtitle = "Key System | Powered by boba.gg",
      Note = "Join discord!.. feel free to ask suggestion. | Key: Chrome", -- Use this to tell the user how to get a key
      FileName = "Chronoa", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Chrome"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Main = Window:CreateTab("Main", "house")

local Player = Tab:CreateSection("Player")

local Player = Tab:CreateToggle({
   Name = "Walkspeed",
   CurrentValue = false,
   Flag = "Walkspeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     local char = player.Character or player.CharacterAdded:Wait()
	local hum = char:FindFirstChildWhichIsA("Humanoid")
	if hum then
		hum.WalkSpeed = 48
	end
   end,
})

local Player = Tab:CreateToggle({
   Name = "Jump Changer",
   CurrentValue = false,
   Flag = "JumpPower2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     local char = player.Character or player.CharacterAdded:Wait()
local hum = char:FindFirstChildWhichIsA("Humanoid")

if hum then
    hum.JumpPower = 70
end  
  end,
})











