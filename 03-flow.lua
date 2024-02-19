-- while 循环
a = 5
while (a < 8) do
    print(a)
    a = a + 1
end
--[[
5
6
7
]]

-- for 循环
-- 数值for循环
--[[
for var=exp1,exp2,exp3 do  
    <执行体>  
end  
var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次 "执行体"。exp3 是可选的，如果不指定，默认为1。
]]
-- 递增到5
for i=1,5 do
    print(i)
end
--[[
1
2
3
4
5
]]
-- 递减到1
for i=5,1,-1 do
    print(i)
end
--[[
5
4
3
2
1
]]
-- 如果for循环中调用函数，函数只会执行一次
function f(x)
    print("hello")
    return 2*x
end
--从1增加到4
for i=1,f(2) do
    print(i)
end
--[[
1
2
3
4
]]


-- 范型for循环
--[[
泛型 for 循环通过一个迭代器函数来遍历所有值，类似 java 中的 foreach 语句。
]]

--打印数组a的所有值  
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end
--[[
1 one
2 two
3 three
]]

-- repeat until
a = 10
repeat
    print("a的值为:", a)
    a = a + 1
until( a > 15 )


-- if 语句
a = 0
if (a) then
    print("0 is true")
else
    print("0 is false")
end
a = 1
if (a > 0) then
    print("a > 0")
elseif a == 0 then
    print("a = 0")
else
    print("a < 0")
end
