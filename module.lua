--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/3/31
-- Time: 下午8:51
-- To change this template use File | Settings | File Templates.
--

-- 文件名为 module.lua
-- 定义一个名为 module 的模块
mod = {}

-- 定义一个常量
mod.constant = "这是一个常量"

-- 定义一个函数
function mod.func1()
    io.write("这是一个公有函数！\n")
end

local function func2()
    print("这是一个私有函数！")
end

function mod.func3()
    func2()
end

return mod

