--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/4/1
-- Time: 下午6:27
-- To change this template use File | Settings | File Templates.
-- 协同程序只有一个协同程序在运行
co = coroutine.create(
    function(i)
        print(i)
    end
)
coroutine.resume(co, 1)    -- 1
print(coroutine.status(co))    -- dead
print("--------------")

co1 = coroutine.wrap(
    function(i)
        print(i)
    end
)
co1(1)
print(coroutine.running())
print("---------------")


co2 = coroutine.create(
    function(status)
        for i = 1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))
                print(coroutine.running())
            end
            if status == 'end' then
                coroutine.yield(10)
            end
        end
    end
)
print(coroutine.resume(co2))
print(coroutine.resume(co2, "end"))

--co3 = coroutine.create(
--    function()
--        for i=1, 10 do
--            print(i)
--            coroutine.yield()
--        end
--    end
--)
--coroutine.resume(co2)
--coroutine.resume(co3)
--coroutine.resume(co3)
--coroutine.resume(co2)
--coroutine.resume(co2)
--print(coroutine.status(co2))
--print(coroutine.running())
--print("---------------")
--
--
--
--function foo(a)
--    print("foo function output", a)
--    return coroutine.yield(2 * a)
--end
--co4 = coroutine.create(
--    function(a, b)
--        print("the first coroutine output", a, b)
--        local r, s = foo(a)
--
--        print("the second coroutine output", r, s)
--        local r1, s1 = coroutine.yield(a + b + r, a - b)
--
--        print("the third coroutine output", s, r1, s1)
--        return b, "the end"
--    end
--)
--print("main", coroutine.resume(co4, 3, 10))     -- 每次调用的参数都会传递下去
--print("------------")
--print("main", coroutine.resume(co4, 2, 5))
--print("------------")
--print("main", coroutine.resume(co4, "x", "y"))
--print("------------")
--print("main", coroutine.resume(co4, "x", "y"))
--print("------------")
-- ---------------
--the first coroutine output	3	10
--foo function output	3
--main	true	6
-- ------------
--the second coroutine output	2	5
--main	true	15	-7
-- ------------
--the third coroutine output	5	x	y
--main	true	10	the end
-- ------------
--main	false	cannot resume dead coroutine
-- ------------

-- coroutine.yield(arg) 传出  coroutine.resume(co, arg) 传入
local newProductor
function produce()
    local i = 0
    while i < 10 do
        i = i + 1
        send(i)
    end
end

function send(x)
    coroutine.yield(x)
end

function consumer()
    local i = 0
    while i < 11 do
        if(coroutine.status(newProductor) == 'suspended') then
            print(receive())
            i = i + 1
        else
            return 1
        end
    end
end

function receive()
    local status, value = coroutine.resume(newProductor)
    return value
end

newProductor = coroutine.create(produce)
consumer()
