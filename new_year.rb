p "New Year Chaos!"

def min_bribes q
	counter = 0

	for i in (q.size - 1).downto(0) 
		if q[i] - (i + 1) >= 3
	 		return "To Chaotic!"
	 	end	
	end	
	q.max
end

p min_bribes [1, 2, 3, 4, 6, 5, 7]