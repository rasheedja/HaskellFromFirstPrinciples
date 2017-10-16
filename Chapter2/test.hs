sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3
squareAndMultiplyByPi x = (x ^ 2) * pi

x = 7
y = 10
f = x + y
