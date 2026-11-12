-- 引入游戏内置的玩家和事件模块
local player = require("devilutionx.player")
local events = require("devilutionx.events")

local timer = 0
local interval_ticks = 45 -- 约1.5秒触发一次

-- 监听游戏逻辑帧，每帧都会执行
events.GameTick.add(function()
    local p = player.self() -- 获取当前玩家
    if p == nil then return end -- 如果玩家不存在，直接返回
    
    -- 判断是否为你创建的秘术师职业
    if p:getClassName() == "Occultist" then
        timer = timer + 1 -- 计时器永远在走
        
        if timer >= interval_ticks then
            timer = 0 -- 计时归零，准备下一轮
            -- 核心判定：如果蓝量小于上限，就恢复1点
            if p.mana < p.maxMana then
                p.mana = p.mana + 1 
            end
        end
    end
end)
