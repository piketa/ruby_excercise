def diamond(width, padding=' ')
  return if width.zero?
  width += 1 if width.odd?
 
  puts("*".center(width))
  max = width - 2
  interval = 1
  interval.step(max, 2) do |i|
    puts("*#{padding * i}*".center(width))
  end
  max -= 3
  max.step(interval, -2) do |i|
    puts("*#{padding * i}*".center(width))
  end
  puts("*".center(width))
end
 
diamond(30)

