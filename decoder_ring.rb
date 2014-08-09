# very simplistic cipher/decipher
# converts string into numeric code based on alphabetic indexing 
# secret_code =  DecoderRing.new(s,m,"ehlo").encode("hello")
# secret = DecoderRing.new(s,m,"ehlo").decode(secret_code)


class DecoderRing
    def initialize(starter,multiplier,letterlist)
        @starter = starter     # starter = base number
        @multiplier = multiplier  # number to multipl 
        @letterlist = letterlist  # cypher alphabet, indexing secret letters
    end
    
    public 
    
    def valid?(code)
        # code.numeric? && 
        # valid if it's divisible by the base starter, and if at least one multiplier (e.g. one letter)
        (code % @starter == 0 ) && ( code / @starter >= @multiplier )
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
        @code = code/@starter
        while @code > @multipler
            @code = @secret.insert(0, pop!)
        end
        @secret        
    end  

    private
    
    def pop!       
        unless @code < @multiplier
            letter = @letterlist[@code % @multiplier] 
            @code = (@code - @code % @multiplier) / @multiplier #  unless @code < @multiplier
            letter
        end
    end   
    
end
