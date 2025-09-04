local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Drakonix V.1",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Drakonix V.1",
   LoadingSubtitle = "by Drakonix",
   ShowText = "Drakonix", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Drakonix V.1"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Drakonix Panel V.1",
      Subtitle = "Put the key to Enter!",
      Note = "Go to discord for key", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {https://pastebin.com/raw/pLpFr9j2} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local PlayerTab = Window:CreateTab(" Player Scripts", 4483362458) -- Title, Image

local PlayerSection = PlayerTab:CreateSection("Modify")


local SliderSpeed = PlayerTab:CreateSlider({
   Name = "Speed",
   Range = {1, 500},
   Increment = 10,
   Suffix = "Your Speed!",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local SliderJump = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {1, 200},
   Increment = 1,
   Suffix = "Your JumpPower!",
   CurrentValue = 6,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
 game.Players.LocalPlayer.Character.Humanoid.JumpPower= (Value)
   end,
})
local BloxfruitsTab = Window:CreateTab("🍉 Bloxfruits Scripts", 4483362458)

local PlayerSection = PlayerTab:CreateSection("Modify")

local SliderDashLength = PlayerTab:CreateSlider({
   Name = "DashLength",
   Range = {1, 300},
   Increment = 3,
   Suffix = "Your Dash!",
   CurrentValue = 16,
   Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})
