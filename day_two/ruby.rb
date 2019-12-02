## Part 1
file = File.open('input.txt')

array = File.read("input.txt").split(",").map(&:strip)

array = array.map(&:to_i)
array[1] = 12
array[2] = 2

# array_one = [1,0,0,0,99]
# array_two = [2,3,0,3,99]
# array_three = [2,4,4,5,99, 0]
# array_four = [1,1,1,4,99,5,6,0,99]

def process_array(array)
    counter = 0
    while counter < array.length
        case array[counter]
        when 1
            a = array[counter+1]
            b = array[counter+2]
            x = array[counter+3]
            array[x] = array[a] + array[b]
            return 'found it!' if (100 * a + b == 19690720)
            counter += 4
        when 2
            a = array[counter+1]
            b = array[counter+2]
            x = array[counter+3]
            array[x] = array[a] * array[b]
            return 'found it!' if (100 * a + b == 19690720)
            counter += 4
        when 99
            counter += array.length
        else
            puts 'Something went wrong'
        end
    end
    array
end

# makes it back into one line
def present_solution(array)
    str = ""
    array.each do |num|
        str += num.to_s + ","
    end
    n = str.size
    str[0..n-2]
end

# array = process_array(array_one)
# solution = present_solution(array)
# puts solution

# array = process_array(array_two)
# solution = present_solution(array)
# puts solution

# array = process_array(array_three)
# solution = present_solution(array)
# puts solution

# array = process_array(array_four)
# solution = present_solution(array)
# puts solution

array = process_array(array)
solution = present_solution(array)
puts array[0]