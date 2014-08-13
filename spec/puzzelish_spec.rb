require './lib/puzzelish.rb'
require 'spec_helper.rb'


describe Puzzelish do
    
    let ( :random_letters ) do 
        'a' + 'cdeinoprstuw' + 'x'
        # TODO: collect random list of letters
    end
    
    def random_secret(letters=random_letters, max_length = 15)
        "secret"
        # TODO: build random colleciton of letters from secret
        # also dependency on random letters no quite right
    end
     
    let( :puzzle_coder ) { Puzzelish.new( 7, 37, "acdegilmnoprstuw" ) }

    let( :random_coder ) do 
        b = rand(11)
        m = rand(30) + 20
        Puzzelish.new( b, m, random_letters )
    end
    
        
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
    
    it "works with other encoding params" do 
        secret = "secret"
        code = random_coder.encode(secret)
        expect(random_coder.decode(code)).to eq(secret)
    end
    
    it "works with starting and ending letters in list" do
        secret = "ax"
        expect(random_coder.decode(random_coder.encode(secret))).to eq(secret)
        secret = "xa"
        expect(random_coder.decode(random_coder.encode(secret))).to eq(secret)        
    end
        
    
end


     