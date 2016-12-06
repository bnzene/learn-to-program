def grandfather_clock(&dong)
  hours = Time.new.hour
  if hours > 12
    hours -= 12
  end
  puts "DONG! " * hours
end

grandfather_clock
