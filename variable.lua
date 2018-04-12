--
-- Created by IntelliJ IDEA.
-- User: ouyang
-- Date: 2018/3/30
-- Time: 下午8:28
-- To change this template use File | Settings | File Templates.
-- 变量在使用前，必须在代码中进行声明，即创建该变量。
-- 即需要知道开辟多少空间
-- Lua 变量有三种类型：全局变量、局部变量、表中的域。
-- Lua 中的变量全是全局变量，那怕是语句块或是函数里，除非用 local 显式声明为局部变量。
-- 局部变量的作用域为从声明位置开始到所在语句块结束。
-- 变量的默认值均为 nil。
-- 应该尽量使用局部变量
-- 1.避免命名冲突
-- 2.访问局部变量比全局变量快

--a = 5                   -- 全局变量
--local b = 5             -- 局部变量
--
--function jake()
--    c = 5               -- 全局变量
--    local d = 6         -- 局部变量
--end
--
--print(c, d)     -- nil nil
--jake()
--print(c, d)     -- 5 nil
--
--do
--    local a = 6         -- 局部变量
--    b = 6               -- 全局变量
--    print(a, b)         -- 6 6
--end
--print(a, b)             -- 5 6

-- #####赋值语句
--a = "hello" .. "world"
--t.n = t.n + 1
-- -- 多个变量赋值
--a, b = 10, 2*x          -- <=> a = 10; b = 2*x
-- -- 遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作
--x, y = y, x             -- swap 'x' for 'y'
--a[i], a[j] = a[j], a[i] -- swap a[i] for a[j]
 -- 当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
 -- a. 变量个数 > 值的个数             按变量个数补足nil
 -- b. 变量个数 < 值的个数             多余的值会被忽略
--a, b, c = 0, 1
--print(a, b, c)              -- 0 1 nil
--a, b = a+1, b+1, b+2
--print(a, b)                 -- 1 2
--a, b, c = 0
--print(a, b, c)              -- 0 nil nil
-- 多值赋值经常用来交换变量，或将函数调用返回给变量：
-- a, b = f()   第一个返回值赋个a, 第二个赋个b

-- 索引
-- t[i] t.i => gettable_event(t, i)  采用索引访问本质上是一个类似这样的函数调用
site = {}
site["key"] = "www.w3cschool.cc"
print(site["key"])
print(site.key)

