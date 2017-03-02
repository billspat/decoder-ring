
## puzzleish.rb 
pat@billspat.com


[WTFPL license](https://en.wikipedia.org/wiki/WTFPL)

very simplistic cipher/decipher : converts string into numeric code based on alphabetic indexing.   Project to learn rspec and based on
a challenge issued to job applicants for StackOverflow many years ago.  

uses a starter or base number, a multiplier number, and a list of letters used for indexing that includes all of the letters in the secret

example

```
s = 8; m = 38; letters = "ehlo"
secret_code =  Puzzelish.new(s,m,letters).encode("hello")
secret = Puzzleish.new(s,m,letters).decode(secret_code)
```
