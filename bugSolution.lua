local function foo(...)
  local x = select(1, ...)
  if x == nil then return nil end
  return x + 1
end

local result = foo(nil)
print(result)  -- Output: nil

result = foo(10)
print(result)  -- Output: 11

result = foo()
print(result)  -- Output: nil