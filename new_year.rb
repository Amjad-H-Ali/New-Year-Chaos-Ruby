p "New Year Chaos!"

def min_bribes q
	counter = 0

	for i in (q.size - 1).downto(0) 
		if q[i] - (i + 1) >= 3
	 		return "To Chaotic!"
	 	end

	 	for j in [0, q[i] - 2].max ... i
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