module Enumerable
	def my_each
		i = 0
		if block_given?
      self_array = self.to_a
			while (i < (self_array.length))
				yield self_array[i]
				i += 1
			end
		else
			puts "#<Enumerator: #{self}:each"
		end
	end
	
	def my_each_with_index
		i = 0
		if block_given?
			while (i < (self.length))
				yield self[i], i
				
				i += 1
			end
		else
			puts "#<Enumerator: #{self}:each"
		end
	end
	
	def my_select
		answer = []
		self.my_each do |i|
			if yield i
				answer << i
			end
		end
		answer
	end
	
	def my_all?
		answer = true
		if block_given?
			self.my_each do |i|
				if !(yield i)
					answer = false
				end
			end
		elsif
			self.my_each do |i| 
				if (i == nil) || (i == false)
					answer = false
				end
			end
		else
			answer
		end
		answer
	end
	
	def my_any?
		answer = false
		if block_given?
			self.my_each do |i|
				if yield i
					answer = true
				end
			end
		else
			self.my_each do |i| 
				if i
					answer = true
				end
			end
		end
		answer
	end
	
	def my_none?
		answer = true
		if block_given?
			self.my_each do |i|
				if yield i
					answer = false
				end
			end
		else
			self.my_each do |i| 
				if i
					answer = false
				end
			end
		end
		answer
	end
	
	def my_count(para=nil)
		answer = 0
		if block_given?
			self.my_each do |i|
				if yield i
					answer += 1
				end
			end
		elsif para != nil
			self.my_each do |i|
				if i == para
					answer += 1
				end
			end
		else
			answer = self.length 
		end
		answer
	end
	#original my_map (takes block as argument)
	#def my_map
	#	answer = []
	#	if block_given?
	#		self.my_each do |i|
	#			answer << (yield i)
	#			
	#		end
	#	else
	#		answer = "#<Enumerator: #{self}:each"
	#	end
	#	answer
	#end
	
	#my_map - (Modify your #my_map method to take a proc instead.)
	
	def my_map(&proc)
		answer = []
		if block_given?
			self.my_each do |i|
				answer << proc.call(i)
			end
		else
			answer = "#<Enumerator: #{self}:each"
		end
		answer
	end
	
  def my_inject(arg=nil)
    self_array = self.to_a
		if arg != nil
			x = arg
			i = 0
		else
			i = 1
			x = self_array[0]
		end
		answer = 0
	 
		while i < self_array.length
			answer =  yield x, self_array[i]
			x = answer
			i += 1
		end
		answer
	end
    
    def multiply_els
      self.my_inject { |product, n| product * n }
    end
    	
end
