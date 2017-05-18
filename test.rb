#!/usr/bin/env ruby
require './puzzelish'
secret_code = 956446786872726
puzzle_decoder = Puzzelish.new( 7, 37, "acdegilmnoprstuw" )
print puzzle_decoder.decode(secret_code)
