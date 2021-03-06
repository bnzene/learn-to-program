M = 'land'
o = 'water'
world = [[o,o,o,o,M,o,o,o,o,o,o],
         [o,o,o,M,M,M,o,o,o,o,o],
         [o,o,o,M,o,o,o,o,M,M,o],
         [M,M,M,M,o,o,o,o,o,M,o],
         [M,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,o,M,M,M,M,M],
         [o,o,M,o,o,o,M,M,M,M,M],
         [M,M,o,o,o,M,o,o,o,M,M],
         [M,M,o,o,o,o,o,o,o,M,M]]
def continent_size world, x, y
  if x > 10 || x < 0 || y > 10 || y < 0
    return 0
  end
  if world[y][x] != 'land'
    return 0
  end
  size = 1
  world[y][x] = 'counted land'

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x, y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y)
  size = size + continent_size(world, x+1, y)
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x, y+1)
  size = size + continent_size(world, x+1, y+1)
end
puts continent_size(world, 5, 5)
puts continent_size(world, 1, 9)
puts continent_size(world, 10, 10)
