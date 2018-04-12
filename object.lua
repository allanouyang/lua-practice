---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ouyang.
--- DateTime: 2018/4/3 下午7:23
---
Account = {balance = 0}
function Account.withdraw(v)
    Account.balance = Account.balance - v
end
Account.withdraw(100)
print(Account.balance)

-- Meta class
--Rectangle = {area = 0, length = 0, breadth = 0}
--
---- 派生类的方法 new
--function Rectangle:new(o, length, breadth)
--    o = o or {}
--    setmetatable(o, self)
--    self.__index = self
--    self.length = length or 0
--    self.breadth = breadth or 0
--    self.area = length * breadth
--    return o
--end
--
---- 派生类的方法 printArea
--function Rectangle:printArea()
--    print("矩形面积为", self.area)
--end
--
--r = Rectangle:new(nil, 10, 20)
--print(r.length)
--r:printArea()

-- Meta class
Shape = {area = 0}
-- 基础类方法 new
function Shape:new(o, side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    side = side or 0
    self.area = side * side
    return o
end

function Shape:printArea()
    print("面积为 ", self.area)
end

--myshape = Shape:new(nil, 10)
--myshape:printArea()

Square = Shape:new()
function Square:new(o, side)
    o = o or Shape:new(o, side)
    setmetatable(o, self)
    self.__index = self
    return o
end

-- 派生类方法 printArea
function Square:printArea ()
    print("正方形面积为 ",self.area)
end

-- 创建对象
mysquare = Square:new(nil,10)
mysquare:printArea()

Rectangle = Shape:new()
function Rectangle:new(o, length, breadth)
    o = o or Shape:new(o)
    setmetatable(o, self)
    self.__index = self
    self.area = length * breadth
    return o
end

-- 派生类方法 printArea
--function Rectangle:printArea()
--    print("矩形面积为 ", self.area)
--end

myrectangle = Rectangle:new(nil, 10, 20)
myrectangle:printArea()