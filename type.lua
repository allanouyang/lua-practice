#!/usr/local/bin/lua
--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/3/30
-- Time: 下午5:16
-- To change this template use File | Settings | File Templates.
--

--print(type("Hello world!"))
--print(type(4.3*10))
--print(type(type))
--print(type(print))
--print(type(true))
--print(type(nil))
--print(type(type(X)))

-- nil删除变量
--tab1 = { key1 = "val1", key2 = "val2", "val3", "val4" }
--for k, v in pairs(tab1) do
--    print(k .. "-" .. v)
--end
--tab1.key1 = nil
--for k, v in pairs(tab1) do
--    print(k .. "-" .. v)
--end

-- nil 作比较时应该加上双引号 "
--print(type(X) == nil)
--print(type(X) == "nil")

-- boolean类型
--print(type(true))   --boolean
--print(type(false))  --boolean
--print(type(nil))    --nil
--
--if false or nil then
--    print("至少有一个是 true")
--else
--    print("false 和 nil 都为 false!")
--end

-- number类型
--print(type(2))
--print(type(2.2))
--print(type(0.2))
--print(type(2e+1))
--print(type(0.2e-1))
--print(type(7.8263692594256e-06))
--print(2e+3)

-- string字符串
--string1 = "this is string1"
--string2 = "this is string2"
--print(string1)
--print(string2)
--html = [[
--<html>
--<head></head>
--<body>
--    <a href="http://www.runoob.com/">菜鸟教程</a>
--</body>
--</html>
--]]
--print(html)
--print("2" + 6)  --8
--print("2" + "6")    --8
--print("2 + 6")      --2 + 6
--print("-2e2" * "6") -- -1200
--print("a" .. 'b')   --ab
--print(157 .. 248)   --157248
-- --print("error" + 1)  --报错,字符串连接用 ..
-- -- 使用#计算字符串长度
--len = "www.runoob.com"
--print(#len)                 --14
--print(#"www.runoob.com")    --14

-- table(表) 初始化索引从1开始
--local tab1 = {}
--local tab2 = {"apple", "pear", "orange", "grape" }
--for key, val in pairs(tab2) do
--    print(key .. "-" .. val)
--end
-- -- 1-apple, 2-pear, 3-orange, 4-grape
--for key, val in pairs(tab2) do
--    print("Key", key, "Val", val)
--end
-- -- Key	1	Val	apple   Key	2	Val	pear  ...
--a = {}
--a["key"] = "value"
--key = 10
--a[key] = 22
--a[key] = a[key] + 11
--for key, val in pairs(a) do
--    print(key .. ":" .. val)
--end
-- -- key:value
--
a3 = {}
for i= 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
for key, val in pairs(a3) do
    akey = key
    aval = val
    print(key, val)
end
 -- 1 1   2 2   3 3 ....
print(akey, aval)
print(a3["none"])
 -- nil

-- function(函数)
--function factorial1(n)
--    if n <= 0 then
--        return 1
--    else
--        return n * factorial1(n - 1)
--    end
--end
--print(factorial1(5))  -- 15
--factorial2 = factorial1
--print(factorial2(5))  -- 15
--
--function testFun(tab, fun)
--    for key, val in pairs(tab) do
--        print(fun(key, val))
--    end
--end
--tab = {key1 = "val1", key2 = "val2" }
--testFun(tab, function(key, val)
--    return key .. "=" .. val
--end)

-- thread（线程）
--在 Lua 里，最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，
--可以跟其他协同程序共享全局变量和其他大部分东西。
--
--线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）
--时才会暂停。

--userdata（自定义类型）
--userdata 是一种用户自定义数据，用于表示一种由应用程序或 C/C++ 语言库所创建的类型，
--可以将任意 C/C++ 的任意数据类型的数据（通常是 struct 和 指针）存储到 Lua 变量中调用。