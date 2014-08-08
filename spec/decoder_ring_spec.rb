require './decoder_ring.rb'
require 'spec_helper.rb'

describe DecoderRing do
    before do
        @starter = 7
        @m = 37
        @letters = "abcdefg"        
        @decoder_ring = DecoderRing.new(@starter,@m,@letters)
    end
    

    it "can acutally run a test" do
        expect(true).to eq(true)
    end
    
    
    it "is valid with a starter, multipler and letter list" do
        expect(@decoder_ring).to_not be_nil
    end
    
    it "can decode a given message/hash" do
        starter = 7
        multiplier = 37
        letter_list = "acdegilmnoprstuw"
        decoder_ring = DecoderRing.new(starter,multiplier,letter_list)

        hash = 680131659347
        answer = "leepadg"

        expect(decoder_ring.decode(hash)).to eq(answer)
    end
    
    it "can encode a give message/hash" do
        starter = 7
        multiplier = 37
        letter_list = "acdegilmnoprstuw"
        decoder_ring = DecoderRing.new(starter,multiplier,letter_list)

        answer = "leepadg"        
        hash = 680131659347
                
        expect(decoder_ring.encode(answer)).to eq(hash)    
    end

    
    # things it should do

    it "can detect invalid hashes"           
    it "can decode a random message/hash"
    
    it "can solve the problem" do 
        hash = 680131659347
        starter = 7
        multiplier = 37
        answer = "leepadg"
        letter_list = "acdegilmnoprstuw"
        decoder_ring = DecoderRing.new(starter,multiplier,letter_list)
        expect(decoder_ring.encode(answer)).to eq(hash)    
    end
    
        
    
end


     