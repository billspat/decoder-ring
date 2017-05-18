
## puzzleish.rb 
pat@billspat.com


[WTFPL license](https://en.wikipedia.org/wiki/WTFPL)

This is a very simplistic cipher/decipher written in Ruby: converts string into numeric code based on alphabetic indexing.   Project to learn rspec and based on
a challenge issued to job applicants to Trello.com many years ago.  

Requires Ruby 2.0 or greater ( does not work with Ruby 1.8.7)

Uses a starter or base number, a multiplier number, and a list of letters used for indexing that includes all of the letters in the secret

example

```ruby
s = 8; m = 38; letters = "ehlo"
secret_code =  Puzzelish.new(s,m,letters).encode("hello")
secret = Puzzelish.new(s,m,letters).decode(secret_code)
```

example 2, from job challenge  (see test.rb)

```ruby
#!/usr/bin/env ruby
require './puzzelish'
secret_code = 956446786872726
puzzle_decoder = Puzzelish.new( 7, 37, "acdegilmnoprstuw" )
print puzzle_decoder.decode(secret_code)
```
