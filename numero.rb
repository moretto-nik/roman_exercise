class Numero
	attr_reader :value
	@@roman_hash= {1=>'I', 5=>'V', 10=>'X', 50=>'L', 100=>'C', 500=>'D', 1000=>'M'}

	def initialize(value)
		@value = value
	end

	def to_roman()
		result = ''
		
    number_array_string = @value.to_s.chars.to_a
    number_array_int = []
    index=0
    number_array_string.reverse.each do |cifra|
      number_array_int << ((cifra.to_i) * (10**index))
      index+=1
    end
    
    index = number_array_int.length-1
    number_array_int.reverse.each do |x|  
      if(x==0)
      elsif(@@roman_hash[x] != nil) 
        result << @@roman_hash[x]
      else
        near_key = more_near_key(x,index)
        if(near_key < x)
        	result << @@roman_hash[near_key] << @@roman_hash[(10**index)] * ((x-near_key)/(10**index))
        else
        	result << @@roman_hash[(10**index)] << @@roman_hash[near_key]
        end
      end
      index-=1
    end
    
		return result
	end

	def more_near_key(cifra,posizione)
		prekey = 1
    @@roman_hash.each_pair do |key,value|
      if key>cifra
        if key == (cifra + (10**posizione))
        	return key
        else
        	return prekey
        end
      end
      prekey=key
    end
    return 1000
	end
end