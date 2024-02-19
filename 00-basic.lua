#!/usr/local/bin/lua

print('hello lua!')
-- 输出：hello lua!

-- 全局变量
_VERSION = 0
print(_VERSION) -- 0
-- 删除全局变量
_VERSION = nil
print(_VERSION) -- nil

--[[
这个是多行注释1
这个是多行注释2
]]
