def reverser
  # left = 0
  # right = yield.length
  # while left < right
  #   temp = yield[left]
  #   yield[left] = yield[right]
  #   yield[right] = temp

  #   right -= 1
  #   left += 1
  # end
  yield.reverse
end
