puzzelish
=========

Very very simple hash codec to answer challenge on the Internet.   Used it to learn how to make a gem.   

Converts string message into a integer secret code based on alphabetic indexing.  Really just an exercise. 

Example : 

<code>

  s = 8
  m = 31
  letter_list = "abcdehlox"
  
  p =  Puzzelish.new(s,m,letter_list)
  secret_code = p.encode("hello, there!")
  secret = p.decode(secret_code)
  print secret

</code>
