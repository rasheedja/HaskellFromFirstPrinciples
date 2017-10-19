module DoesItCompile where

-- Question 1
bigNum = (^) 5 $ 10
wahoo = (^) bigNum $ 10

-- Question 2
x = print
y = print "woohoo!"
z = x "hello world"

-- Question 3
a = (+)
b = 5
c = a b 10
d = a c 200

-- Question 4
a4 = 12 + b4
b4 = 10000 * c4
c4 = 10
