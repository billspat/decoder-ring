# very simplistic cipher/decipher
# converts string into numeric code based on alphabetic indexing 
# secret_code =  DecoderRing.new(s,m,"ehlo").encode("hello")
# secret = DecoderRing.new(s,m,"ehlo").decode(secret_code)


class DecoderRing
    
    attr_writer :code, :secret
    
    def initialize(starter,multiplier,letterlist)
        @starter = starter     # starter = base number
        @multiplier = multiplier  # number to multipl 
        @letterlist = letterlist  # cypher alphabet, indexing secret letters
        @code = nil
        @secret = nil        
    end
    
    public 
    
    def valid?(code)
        # valid if at least one multiplier (e.g. one letter)
        ( code >= @starter * @multiplier )
        # ToDo: test code.numeric?        
    end
    
    def encode(secret)
        # convert secret string 
        @code = @starter
        secret.chars.each {|c| @code = @code * @multiplier + @letterlist.index(c) }
        @code
    end
        
    def decode(code)
        return if not valid?(code)
        @secret = ""
        @code = code
        while @code >=  @starter * @multiplier
            letter_index = @code % @multiplier
            @code = (@code - letter_index ) / @multiplier
            @secret.insert(0, @letterlist[letter_index])
        end
        @secret        
    end  

end
