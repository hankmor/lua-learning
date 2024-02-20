-- function为一等公民

-- 阶乘, local 为局部函数，不加默认为全局函数
local function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end
local x = factorial(5)
print(x) -- 120
local f = factorial
local x = f(5)
print(x)

-- 匿名函数作为参数
local function useTable(tbl, fn)
    for k,v in pairs(tbl) do
        fn(k, v)
    end
end
local tbl = {key1 = "v1", k2 = "v2"}
useTable(tbl, function (k, v) do
    return k .. " = " .. v
end
end)

-- 函数可以返回多个值
pstart, pend = string.find("string", "in")
print(pstart, pend) -- 4 5


-- 获取table的最大值
function max(t)
    local idx = 1 -- 最大值索引
    local max_ele = t[1] -- 最大值
    for i, value in ipairs(t) do
        if (value > max_ele) then
            idx = i
            max_ele = value
        end
    end
    return idx, max_ele
end
print(max({1, -1, 2, 10})) -- 4 10


-- 可变参数，lua 使用 ... 表示可变参数
local function sum(...)
    local r = 0
    for i, v in ipairs{...} do -- {...} 表示传入的全部可变参数的数组
        r = r + v
    end
    return r
end
print(sum(1,2,3,4,5)) -- 15 注意这里传递的不是table，是多个参数
