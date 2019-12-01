file = File.open('input.txt')
weights = file.readlines.map(&:chomp)
sum = 0

def fuel_required(mass)
    (mass / 3).floor  - 2
end

weights.each do |weight|
    sum += fuel_required(weight.to_i)
end

puts sum

