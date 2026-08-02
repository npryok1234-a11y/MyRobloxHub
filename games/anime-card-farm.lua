-- ===================================================
-- Auto Conveyor Roll Script (เวอร์ชันแก้ติด Gamepass)
-- ===================================================

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- ดึงเฉพาะ Remote กดปุ่มสุ่มปกติ (หลบระบบ Gamepass)
local ConveyorRE = Remotes:WaitForChild("ConveyorRE")

_G.AutoRollConveyor = true 

task.spawn(function()
    print("🚀 เริ่มต้นระบบ Auto Roll (ยิง Remote ตรง)...")
    
    while _G.AutoRollConveyor do
        pcall(function()
            ConveyorRE:FireServer()
        end)
        
        -- ความเร็วในการกดสุ่ม (0.1 วินาที)
        task.wait(0.1) 
    end
end)
