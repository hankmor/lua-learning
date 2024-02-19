-- lua 变量：局部变量、全局变量、表中的变量

-- 声明全局变量, 其他文件也可以引用
GLOBAL_VAR = 1
-- 声明局部变量，只在当前文件有效
local b = 2
print(GLOBAL_VAR)
print(b) -- 2

local function fn()
    local c = 3 -- 只在方法作用域中
    print(c) -- 3
end

print(c)
do
    local d = 4
    b = 5 -- 更改了局部变量的值
    print(d, b) -- 4 5
end
fn()

-- 多个变量可以同时赋值
local a, b, c = 0, 1
print(a, b, c) -- 0 1 nil
a, b = a+1,b+1,b+2
-- 由于b, c没有赋值，相当于赋值给他们了nil
a, b, c = 0
print(a, b, c) -- 0 nil nil
print(a, b) -- 1 nil

-- 赋值语句
a = "hello" .. " world"
print(a) -- hello world
-- 可以给多个变量赋值，没有对应的为nil
a, b, c = 0, 2
print(a, b, c) -- 0 2 nil


-- 索引，获取 table 的索引于 javascript 类似
tbl = {}
tbl["key"] = "value"
print(tbl["key"])
print(tbl.key)
