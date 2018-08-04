p "New Year Chaos!"

def min_bribes q
	counter = 0
	# Iterate through array starting from end
	for i in (q.size - 1).downto(0)
	 	# An integer cannot move more than two places
		# So if an integer minus its position in the array is 3 or greater
		# We know it bribed more than two people 
		if q[i] - (i + 1) >= 3
	 		return "To Chaotic!"
	 	end
	 	# From one index before the ORIGINAL index of the current integer,
		# all the way to where it currently is, check if any integers are greater
	 	for j in [0, q[i] - 2].max ... i
	 		# For each number greater than it that come before it, increment counter
	 		if q[j] > q[i]
	 			counter += 1
	 		end	
	 	end	
	end	
	counter
end

p min_bribes [2, 5, 1, 3, 4] # Too Chaotic!

p min_bribes [1, 2, 5, 3, 7, 8, 6, 4] # 7

p min_bribes [5, 1, 2, 3, 7, 8, 6, 4] # Too Chaotic!

p min_bribes [1, 2, 5, 3, 4, 7, 8, 6] # 4