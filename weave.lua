local weave = {}

weave.enabled = true

function weave.enable(on)
  if on == nil then
    on = true
  end
  weave.enabled = on
end

setmetatable(weave, {
  __call = function(self, f)
    if weave.enabled then
      return f
    end
    return function() end
  end
})

return weave
