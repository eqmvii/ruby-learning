# Terrible ideas using strings

a = "\u20ac"
b = %Q?"Well this'' is just great" he s#{a}aid```?

puts b
# => "Well this'' is just great" he s€aid```

c = "Hello Eric"
c["Eric"] = "Walrus"
puts c
# => "Hello Walrus"
