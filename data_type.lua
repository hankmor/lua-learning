-- Lua 中有 8 个基本类型分别为：nil、boolean、number、string、userdata、function、thread 和 table

print(type("hello lua")) -- string
print(type(10))          -- number
print(type(10.0))        -- number
print(type(type))        -- function
print(type(print))       -- function
print(type(true))        -- boolean
print(type(type(X)))     -- string，这里 X 未定义，返回的时字符串的 "nil"
print(nil)               -- nil


tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

-- 赋值 nil 可以删除 table 中的元素
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

-- boolean, lua 中 0 为 true，nil 和 false 为 false
print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false")
end

if 0 then
    print("数字 0 是 true")
else
    print("数字 0 为 false")
end
