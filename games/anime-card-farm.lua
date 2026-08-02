-- ===================================================
-- Auto Conveyor Roll Script (สำหรับ Anime Card Farm)
-- ===================================================

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- ดึง Remote Events ที่ส่องเจอจาก F9
local ConveyorRE = Remotes:WaitForChild("ConveyorRE")
local AutoConveyorRE = Remotes:FindFirstChild("AutoConveyorRE")

-- สวิตช์เปิด-ปิดการทำงาน
_G.AutoRollConveyor = true 

-- ฟังก์ชันรันลูปสุ่มสายพาน
task.spawn(function()
    print("🚀 เริ่มต้นระบบ Auto Roll Conveyor...")
    
    -- หากในเกมมีระบบ Auto สุ่ม ให้เปิดใช้งานด้วย
    if AutoConveyorRE then
        pcall(function()
            AutoConveyorRE:FireServer(true)
        end)
    end

    while _G.AutoRollConveyor do
        -- ยิง Remote เพื่อสั่งให้สายพานสุ่ม/หมุนทำงาน
        pcall(function()
            ConveyorRE:FireServer()
        end)
        
        -- ปรับเวลารอตามความเหมาะสม (0.1 - 0.5 วินาที)
        task.wait(0.1) 
    end
end)
