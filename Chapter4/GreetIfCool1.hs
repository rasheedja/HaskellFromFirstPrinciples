module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "eyyyyyy, what's shakin'?"
  else
    putStrLn "pshhhhhhh."
  where cool = coolness == "downright frosty yo"
