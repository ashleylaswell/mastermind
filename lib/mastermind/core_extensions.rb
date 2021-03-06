class Array
	def all_empty?
		self.all? { |element| element.to_s.empty? }
	end
	def any_empty?
		self.any? { |element| element.to_s.empty? } ||
			self.all_empty?
	end
	def none_empty?
		!any_empty?
	end
	def uniq?
		self.length == self.uniq.length
	end
end
