--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/3/31
-- Time: 上午10:33
-- To change this template use File | Settings | File Templates.
--
-- 算术运算符
a = 21
b = 10
c = a + b       -- 31
print("Line1's value is:", c)
c = a - b       -- 11
print("Line2's value is:", c)
c = a * b       -- 210
print("Line3's value is:", c)
c = a / b       -- 2.1
print("Line4's value is:", c)
c = a % b       -- 1
print("Line5's value is:", c)
c = a^2         -- 441
print("Line6's value is:", c)
c = -a          -- -21
print("Line7's value is:", c)

-- 关系运算符
-- ~= 不等于

-- 逻辑运算符
-- and or not

-- 其他运算符
-- ..连接两个字符串  #一元运算符，返回字符串或表的长度
a = "Hello "
b = "World"
print(a .. b)
print(#a, #b)