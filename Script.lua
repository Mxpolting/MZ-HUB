
-- MZ HUB FULL GUI with Rayfield UI
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

local Window = Rayfield:CreateWindow({
   Name = "MZ HUB | Blox Fruits",
   LoadingTitle = "MZ HUB Loading...",
   LoadingSubtitle = "by Mxpolting & ChatGPT",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MZ_HUB_Config",
      FileName = "MZ_HUB_Settings"
   },
   Discord = {
      Enabled = false
   },
   KeySystem = false
})

-- Tự Động Farm Tab
local AutoFarmTab = Window:CreateTab("Tự Động Farm", 4483362458)
AutoFarmTab:CreateToggle({ Name = "Tự động Farm Level", CurrentValue = false, Flag = "AutoFarmLevel", Callback = function(Value) getgenv().AutoFarmLevel = Value while AutoFarmLevel and task.wait() do print("Tự Động Farming Level...") end end })
AutoFarmTab:CreateToggle({ Name = "Tự động Sang Thế Giới Mới", CurrentValue = false, Flag = "AutoNewWorld", Callback = function(v) print("Tự động Sang Thế Giới Mới:", v) end })
AutoFarmTab:CreateToggle({ Name = "Tự động Sang Biển 3", CurrentValue = false, Flag = "AutoThirdSea", Callback = function(v) print("Tự động Sang Biển 3:", v) end })
AutoFarmTab:CreateToggle({ Name = "Tự động Săn Elite", CurrentValue = false, Flag = "AutoElite", Callback = function(v) print("Auto Elite:", v) end })

-- Tự động Đánh Boss Tab
local BossTab = Window:CreateTab("Tự động Đánh Boss", 4483362458)
BossTab:CreateToggle({ Name = "Tự động Đánh Boss", CurrentValue = false, Flag = "AutoBoss", Callback = function(v) print("Tự động Đánh Boss:", v) end })
BossTab:CreateToggle({ Name = "Tự động Boss Thế Giới", CurrentValue = false, Flag = "AutoWorldBoss", Callback = function(v) print("Tự động Boss Thế Giới:", v) end })

-- Tự động Kaigun Tab
local KaigunTab = Window:CreateTab("Tự động Kaigun", 4483362458)
KaigunTab:CreateToggle({ Name = "Tự động Kaigun", CurrentValue = false, Flag = "AutoKaigun", Callback = function(v) print("Tự động Kaigun:", v) end })
KaigunTab:CreateToggle({ Name = "Tự động Nâng Tộc", CurrentValue = false, Flag = "AutoRace", Callback = function(v) print("Tự động Nâng Tộc:", v) end })
KaigunTab:CreateToggle({ Name = "Tự động V2/V3", CurrentValue = false, Flag = "AutoV2V3", Callback = function(v) print("Tự động V2/V3:", v) end })

-- Tự Động Cộng Điểm Tab
local StatsTab = Window:CreateTab("Tự Động Cộng Điểm", 4483362458)
StatsTab:CreateToggle({ Name = "Tự động Melee", CurrentValue = false, Flag = "AutoMelee", Callback = function(v) print("Tự động Melee:", v) end })
StatsTab:CreateToggle({ Name = "Tự động Phòng Thủ", CurrentValue = false, Flag = "AutoDefense", Callback = function(v) print("Tự động Phòng Thủ:", v) end })
StatsTab:CreateToggle({ Name = "Tự động Kiếm", CurrentValue = false, Flag = "AutoSword", Callback = function(v) print("Tự động Kiếm:", v) end })
StatsTab:CreateToggle({ Name = "Tự động Súng", CurrentValue = false, Flag = "AutoGun", Callback = function(v) print("Tự động Súng:", v) end })
StatsTab:CreateToggle({ Name = "Tự động Trái Ác Quỷ", CurrentValue = false, Flag = "AutoFruit", Callback = function(v) print("Tự động Trái Ác Quỷ:", v) end })

-- Tự Động Bounty Tab
local BountyTab = Window:CreateTab("Tự Động Bounty", 4483362458)
BountyTab:CreateToggle({ Name = "Bật Tự động Bounty", CurrentValue = false, Flag = "AutoBounty", Callback = function(v) print("Tự Động Bounty:", v) end })
BountyTab:CreateToggle({ Name = "Ẩn Khỏi Người Chơi", CurrentValue = false, Flag = "HidePlayers", Callback = function(v) print("Ẩn Khỏi Người Chơi:", v) end })
BountyTab:CreateToggle({ Name = "Đánh Nhanh", CurrentValue = false, Flag = "FastAttack", Callback = function(v) print("Đánh Nhanh:", v) end })

-- Misc Tab
local MiscTab = Window:CreateTab("Misc", 4483362458)
MiscTab:CreateToggle({ Name = "Cảnh Báo Admin", CurrentValue = false, Flag = "AdminWarn", Callback = function(v) print("Admin Warning:", v) end })
MiscTab:CreateToggle({ Name = "Tự Động Đổi Server", CurrentValue = false, Flag = "HopServer", Callback = function(v) print("Auto Hop Server:", v) end })
MiscTab:CreateToggle({ Name = "Mở Rộng Hitbox", CurrentValue = false, Flag = "ExtendHitbox", Callback = function(v) print("Extend Hitbox:", v) end })
MiscTab:CreateToggle({ Name = "Tự Động Nhắm Kỹ Năng", CurrentValue = false, Flag = "AutoAim", Callback = function(v) print("Tự Động Nhắm Kỹ Năng:", v) end })
MiscTab:CreateButton({ Name = "Dịch Chuyển đến Biển 1", Callback = function() print("Teleporting to Sea 1...") end })
MiscTab:CreateButton({ Name = "Dịch Chuyển đến Biển 2", Callback = function() print("Teleporting to Sea 2...") end })
MiscTab:CreateButton({ Name = "Dịch Chuyển đến Biển 3", Callback = function() print("Teleporting to Sea 3...") end })

Rayfield:LoadConfiguration()
