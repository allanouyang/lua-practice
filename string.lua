--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/3/31
-- Time: 上午11:29
-- To change this template use File | Settings | File Templates.
-- 字符串
-- '' "" [[]]
print('Lua')
print("runoob.com")
print([[
  abc
  def
]])

print("\a")
print('aa\bcc')     -- acc
print('aa\fcc')     -- aa
                    --   cc
print('aa\nccccc')  -- aa
                    -- ccccc
print('aa\rccccc')  -- ccccc
print('aa\tccccc')  -- aa   ccccc
print('aa\vcc\vdd') -- aa       垂直制表
                    --   bb
                    --     cc
print('aa\\cc')     -- aa\cc
print('aa\'cc')     -- aa'cc
print('aa\"cc')     -- aa"cc
print('aa\0\0cc')     -- aacc
--print('aa\dd1cc')     --
print('aa\x65cc')     -- aa#cc

print(string.upper("abcd"))     -- ABCD
print(string.lower("ABCD"))     -- abcd
print(string.gsub("aaaa", "a", "z", 3))     -- zzza 3
print(string.find("Hello Lua user", "Lua", 1))  -- 7 9
print(string.reverse("Lua"))                    -- auL
print(string.format("the value is:%d",4))       -- the value is:4
print(string.char(97, 98, 99, 100))             -- abcd
print(string.byte("ABCD", 4))                   -- 68
print(string.byte("ABCD"))                      -- 65
print(string.len("abc"))                -- 3
print(string.rep("abcd", 2))            -- abcdabcd
print("www.runoob".."com")              -- www.runoobcom
for word in string.gmatch("Hello Lua user", "%a+") do print(word) end
for word in string.gmatch("1 2 3 45", "%d+") do print(word) end
for word in string.gmatch("I have questions 22 for you.", "%a+ %d+") do print(word) end  -- questions 22
for word in string.gmatch("I have questions 22 for you.", "(%a+) (%d+)") do print(word) end  -- questions
print(string.format("ab%xcd", 255))
date = 2; month = 1; year = 2014
print(string.format("%02d/%02d/%04d", date, month, year))
print(string.format("%-20sa", "monkey"))
print(string.format("%+d", 100))
