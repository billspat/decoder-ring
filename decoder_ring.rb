class DecoderRing
    def initialize(starter,multiplier,letterlist)
        @starter = starter
        @multiplier = multiplier
        @letterlist = letterlist
    end
    
    public 
    
    def valid?(code)
         code >= @starter * @multiplier
    end
    
    def encode(secret)
        @code = 7
        secret.chars.each {|c| @code = @code * 37 + @letterlist.index(c) }
        @code
    end
        
    def decode(code)
        # raise InvalidCodeError if not valid?(code)
        @secret = ""
        @code = code
        until  @code < @starter * @multiplier
            @secret.insert(0, pop) 
        end
        
        # raise InvalideCodeError if @code != @starter
        @secret        
    end  

    private
    
    def pop
        return if @code == @starter    
        i = @code % @multiplier
        @code = (@code - i) / @multiplier
        @letterlist[i]       
    end    
    
end

     