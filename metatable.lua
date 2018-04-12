--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/4/1
-- Time: 上午8:18
-- To change this template use File | Settings | File Templates.
-- Lua元素(Metatable)

other = {foo = 3 }
t = setmetatable({}, {__index = other})
other.bar = "bar-val"
print(t.foo)    -- 3
print(t.bar)    -- bar-val

mytable = setmetatable({key1 = "value1", key2 = "key2-value2"}, {
    __index = function(mytable, key)
        if key == "key2" then
            return "value2"
            elseif key == "key3" then
            return "value3"
        else
            return nil
        end
    end
})

print(mytable.key1, mytable.key2, mytable.key3, mytable.key4)       -- value1 key2-value2 value3 nil

mymetatable = {}
mytable = setmetatable({key1 = "value1"}, {__newindex = mymetatable})
print(mytable.key1)                                 -- value1
mytable.newkey = "new-value2"
print(mytable.newkey, mymetatable.newkey)           --  nil new-value2
mytable.key1 = "new-value1"
print(mytable.key1, mymetatable.key1)               -- new-value1 nil

mytable2 = setmetatable({key1 = "value1"}, {
    __newindex = function(tab, key, value)
        rawset(tab, key, "\""..value .. "\"")
    end
})
mytable2.key2 = 4
print(mytable2.key1, mytable2.key2)     -- value1 "4"

-- 取最大序号,非序号报错
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

addtable = setmetatable({1, 2, 3}, {
    __add = function(ftable, stable)
        for i = 1, table_maxn(stable) do
           table.insert(ftable, table_maxn(ftable) + 1, stable[i])
        end
        return ftable
    end
})
secondtable = {4, 5, 6}
rtable = addtable + secondtable
for k, v in pairs(rtable) do
    print(k, v)
end

-- __add -> +(加), __sub -> -, __mul -> *, __div -> /, __mod -> %, __unm -> -(负),
-- __concat -> .., __eq -> ==, __lt -> <, __le -> <=

sumtable = setmetatable({10}, {
    __call = function(current, arg)
        sum = 0
        for i = 1, table_maxn(current) do
            sum = sum + current[i]
        end
        for i = 1, table_maxn(arg) do
            sum = sum + arg[i]
        end
        return sum
    end
})

result = sumtable({10, 20, 30})
print(result)

stringtable = setmetatable({10, 20, 30}, {
    __tostring = function(current)
        rstring = "all elements is:"
        for k, v in pairs(current) do
            rstring = rstring .. " " .. v
        end
        return rstring
    end
})
print(stringtable)

