-- Lua 中有 8 个基本类型分别为：nil、boolean、number、string、userdata、function、thread 和 table

print(type("hello lua")) -- string
print(type(10))          -- number
print(type(10.0))        -- number
print(type(type))        -- function
print(type(print))       -- function
print(type(true))        -- boolean
print(type(type(X)))     -- string，这里 X 未定义，返回的时字符串的 "nil"
print(nil)               -- nil


-- 没有key的元素，默认key为1
tab1 = { key1 = "val1", key2 = "val2", "val3"}
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
--[[
1 - val3
key2 - val2
key1 - val1
]]
-- 赋值 nil 可以删除 table 中的元素
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
--[[ 
1 - val3
key2 - val2
]]

-- bool, lua 中 0 为 true，nil 和 false 为 false
print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false")
end
-- false 和 nil 都为 false
if 0 then
    print("数字 0 是 true")
else
    print("数字 0 为 false")
end
-- 数字 0 是 true

print("==== 数字 ====")
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))
-- 上边全部输出 number

print("==== 字符串 ====")
string1 = "this is string1"
string2 = 'this is string2'
-- 用 [[]] 表示一个块字符串
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)

print("2" + 6) -- 8.0
print("2" + "6") -- 8.0
print("2 + 6") -- 2 + 6
print("-2e2" * "6") -- -1200.0
-- print("error" + 1) -- 出错，error不能转为数字

print("==== 字符串连接 ====")
print("a" .. 'b') -- ab
print(157 .. 428) -- 157428

len = "www.runoob.com"
print(#len) -- 14
print(#"www.runoob.com")

print("==== 表 ====")
-- 创建一个空的 table
local tbl1 = {}
-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}
print(tbl1)
print(tbl2)
-- 输出 tbl1和tbl2的地址，如0x600002330900

-- table 为关联数组，索引可以是数字或字符串
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end
--[[
key : value
10 : 33
]]
-- 没有key时，索引从1开始，依次递增
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print(key .. " : " .. val)
end
--[[
1 : apple
2 : pear
3 : orange
4 : grape
]]


-- function为一等公民

-- 阶乘
function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end
x = factorial(5)
print(x) -- 120
f = factorial
x = f(5)
print(x)
