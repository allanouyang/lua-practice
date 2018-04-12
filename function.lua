--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/3/30
-- Time: 下午9:54
-- To change this template use File | Settings | File Templates.
-- Lua 函数
-- 1.完成指定的任务，这种情况下函数作为调用语句使用；
-- 2.计算并返回值，这种情况下函数作为赋值语句的表达式使用。

--optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
--function_body
--return result_params_comma_separated
--end
--[[
optional_function_scope: 设置函数为局部函数需要使用关键字 local
function_name: 函数名
argument1, argument2, argument3..., argumentn: 函数参数，多个参数以逗号隔开，函数也可以不带参数。
function_body: 函数体，函数中需要执行的代码语句块。
result_params_comma_separated: 函数返回值，Lua语言函数可以返回多个值，每个值以逗号隔开。
--]]

-- 多返回值
s, e = string.find("www.runoob.com", "runoob")
print(s, e)

function maximum(a)
    local mi = 1
    local m = a[mi]
    for k, v in ipairs(a) do
        if v > m then
            m = v
            mi = k
        end
    end
    return m, mi
end
print(maximum({8,10,23,12,5}))

-- 可变参数
function add(...)
    local sum = 0
    for k, v in ipairs{...} do
        sum = sum + v
    end
    print("arg count is:", #{...})
    return sum
end
print(add(3,4,5,6,7))

function average(...)
    local sum = 0
    for k, v in ipairs{...} do
        sum = sum + v
    end
    local num = select("#", ...)
    print("arg count is:", num)
    return sum/num
end
print(average(1,2,3,4,5,6,7,8,9))

function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...))
end
fwrite("runoob\n")
fwrite("%d%d\n", 1, 2)

function foo(...)
    for i=1, select("#", ...) do
        local arg = select(i, ...)
        print("arg", arg)
    end
end
foo(1,2,3,4,5)
io.write("abd")

