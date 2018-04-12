---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ouyang.
--- DateTime: 2018/4/2 下午8:03
---
-- /usr/local/bin/lua: error.lua:7: syntax error near '=='
-- a == 2

-- /usr/local/bin/lua: error.lua:11: 'do' expected near 'print'
--for a= 1,10
--print(a)
--end

function test_print()
    for a = 1, 10
    do
        print(a)
    end
end

function add(a, b)
    return a + b
end
-- /usr/local/bin/lua: error.lua:22: attempt to perform arithmetic on a nil value (local 'b')
--add(10)

function add_assert(a, b)
    assert(type(a) == "number", "a 不是一个数字")
    assert(type(b) == "number", "b 不是一个数字")
    return a + b
end
--/usr/local/bin/lua: error.lua:29: b 不是一个数字
-- error.lua:29: in function 'add_assert'
--add_assert(10)

function print_i(i)
    print(i)
end
-- 33
-- true
-- print(pcall(print_i, 33))

function test_error(i)
    error("error.. ")
end

-- false	error.lua:42: error..
--print(pcall(test_error, 33))

function f()
    return false, 2
end
function test_f()
    if f() then
        print('1')
    else
        print('0')
    end
end
--test_f()

function print_error(i)
    print(i)
    error("error... ")
end

function print_trace()
    print(debug.traceback())
end

function print_debug()
    print(debug.debug())
end

--print(xpcall(print_error, print_trace, 33))
--print(xpcall(print_error, print_debug, 33))

function test_method(n)
    n = n / nil
end

function throw_error()
    error("throw error message ... ")
end

function myerrorhandler(err)
    print("ERROR:", err)
end

-- ERROR:	error.lua:79: attempt to perform arithmetic on a nil value
status = xpcall(test_method, myerrorhandler, 30)
print(status)   -- false
-- ERROR:	error.lua:83: throw error message ...
status = xpcall(throw_error, myerrorhandler)
print(status)   -- false