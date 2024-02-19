-- function为一等公民

-- 阶乘
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
