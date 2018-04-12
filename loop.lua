--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/3/30
-- Time: 下午9:10
-- To change this template use File | Settings | File Templates.
--

-- lua while循环
--while(condition)
--    do
--    statements
--    end

--a = 10
--while(a < 20)
--    do
--    print("a is :" .. a)
--    a = a + 1
--end

-- lua for 循环
-- 数值for循环
-- var从exp1变化到exp2，每次变化以exp3为步长递增var，并执行一次"执行体"。exp3是可选的，如果不指定，默认为1。
-- for的三个表达式在循环开始前一次性求值，以后不再进行求值。
--for var = exp1, exp2, exp3 do
--    <执行体>
--end
--function f(x)
--    print("function")
--    return x * 2
--end
--for i = 1, f(5) do
--    print(i)
--end
--for i = 10, 1, -1 do
--    print(i)
--end

-- 泛型for循环
-- 打印数组a的所有值
--for i,v in ipairs(a)
--do print(v)
--end
--days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday" }
--for i, v in ipairs(days)
--    do
--    print(v)
--end


-- lua repeat...until 循环
--repeat
--    statements
--    until( condition )
a = 10
repeat
    print("a is:", a)
    a = a + 1
    until a > 15

-- 嵌套循环

tab = {key1 = "value1", "value2" }
for i, v in pairs(tab) do       -- 1 value2
    print(i, v)                 -- key1 value1
end

tab = {key1 = "value1", "value2" }
for i, v in ipairs(tab) do      -- 1 value2
    print(i, v)
end

function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

print(table_maxn({"value1", "value2"}))
print(table_maxn({6,3,1,2,3,5}))

