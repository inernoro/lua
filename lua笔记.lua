--[[
tonumber 判断该变量是否是数字
local a = {}
b =1; c = 2 ,d =3
a[b] =4
这里面用值类型索引，等值  a[1] = 4;
a.b = 1 这里面是用b这个字符串作为索引
]]
--[[
local b = {};
b.a ="c";
b.a =nil;
print(b);
]]

a =1;
b =2;
local x = a == b and a or b;print(w); 

