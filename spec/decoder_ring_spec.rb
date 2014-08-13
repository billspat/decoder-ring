require './decoder_ring.rb'
require 'spec_helper.rb'

describe DecoderRing do
    
    let( :puzzle_coder ) { DecoderRing.new( 7, 37, "acdegilmnoprstuw" ) }
    # let( :random_coder ) { DecoderRing.new( 5, 31, "acdegilmnoprstuw" ) }
        
    it "is valid with a starter, multipler and letter list" do
        expect(puzzle_coder).to_not be_nil
    end
    
    it "can decode a given message/hash" do
        example_code = 680131659347
        example_secret = "leepadg"

        expect(puzzle_coder.decode(example_code)).to eq(example_secret)
    end
    
    it "can encode a give message/hash" do
        example_code = 680131659347
        example_secret = "leepadg"
        expect(puzzle_coder.encode(example_secret)).to eq(example_code)    
    end
    
    it "can solve the problem" do
        given_code = 956446786872725 + 1 # tiny bit of google obfuscation
        answer_i_think = "trellises"
        expect(puzzle_coder.decode(given_code)).to eq(answer_i_think)    
    end

    it "can detect invalid hashes" do
        expect(puzzle_coder.valid?(6)).to_not eq(true)
    end

    it "can encode/decode some other message" do
        secret = "secret"
        code = puzzle_coder.encode(secret)
        expect(puzzle_coder.decode(code)).to eq(secret)
    end
    
end


     