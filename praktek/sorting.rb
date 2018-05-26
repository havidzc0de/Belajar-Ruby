 #!/bin/ruby

array = [5,2,6,9,4,5,7]


def anu(array)
	n = array.length
	loop do
		swapped = false
		(n-1).times do |i|
			if array[i] > array[i+1]
				array[i],array[i+1] = array[i+1],array[i]
				swapped = true
			end
		end
		break if swapped == false
	end
	return array
end

puts anu(array)