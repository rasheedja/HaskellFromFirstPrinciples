module EqInstances where

-- Question 1
data TisAnInteger =
  TisAn Integer deriving Show

instance Eq TisAnInteger where
  (==) (TisAn int)
       (TisAn int') =
         int == int'

-- Question 2
data TwoIntegers =
  Two Integer Integer deriving Show

instance Eq TwoIntegers where
  (==) (Two int1 int2)
       (Two int1' int2') =
         int1 == int1' && int2 == int2'

-- Question 3
data StringOrInt =
  TisAnInt Int
  | TisAString String deriving Show

instance Eq StringOrInt where
  (==) (TisAnInt int1) (TisAnInt int2)           = int1 == int2
  (==) (TisAString string1) (TisAString string2) = string1 == string2
  (==) (TisAnInt _) (TisAString _)               = False
  (==) (TisAString _) (TisAnInt _)               = False

-- Question 4
data Pair a =
  Pair a a deriving Show

instance Eq a => Eq (Pair a) where
  (==) (Pair a1 a2) (Pair a1' a2') = a1 == a1' && a2 == a2'

-- Question 5
data Tuple a b =
  Tuple a b deriving Show

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple a' b') =
    a == a' && b == b'

-- Question 6
data Which a =
  ThisOne a
  | ThatOne a deriving Show

instance (Eq a) => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThisOne a) (ThatOne a') = a == a'
  (==) (ThatOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'

-- Question 7
data EitherOr a b =
  Hello a
  | Goodbye b deriving Show

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a')     = a == a'
  (==) (Goodbye b) (Goodbye b') = b == b'
  (==) (Hello _) (Goodbye _)    = False
  (==) (Goodbye _) (Hello _)    = False
