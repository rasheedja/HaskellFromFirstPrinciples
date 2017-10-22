## Multiple Choice
1. c
2. b
3. a
4. c
5. a

## Does it typecheck?
See doesItTypeCheck.hs for solutions

1. No because Person is not deriving show. Add a `deriving Show` to the
declaration to resolve.
2. No because mood is not a type being checked for equality. Add `Eq` to the
derived type to resolve this.
3.
  a) Blah or Woot.
  b) Error will be thrown because GHCi will not be able to check a Num and a
     Mood for equality.
  c) It will fail. `Blah > Woot` will does not derive Ord so they cannot be
     compared.

4. It will typecheck. s1 is an incomplete function so it will not print unless
   you give it another String, e.g. s1 "lots".

## Given a datatype declaration, what can we do?
Datatypes defined it datatypeDeclarations.hs

1. No, Papu accepts the types Rocks and Yeah, not a String and a Bool. You need
   to change the code to `phew = Papu (Rocks "Yeah") (Yeah True)`.
2. Typechecks.
3. Typechecks, Papu derives Eq.
4. No, Papu does not derive Ord which is where `>` is from.

## Match the types
Types in matchTypes.hs

1. Fails because we've said assigned i to the Num 1 and declared the type of i
   to be anything. GHC can now not infer the type for i as a Num so fails
2. Fails because 1.0 is a Fractional and a Num cannot be a fractional
3. Passes becase 1.0 is a Fractional
4. Passes. RealFrac accepts a Fractional and a Real number, which 1.0 is
5. Passes, now only Ord instance types will be able to be passed to x
6. Passes, it's like id but only for Ints
7. Fails because x has to be an Int because myX is an Int
8. Fails, because myX is an Int, the type for x must also be an int
9. Will work becase Int has an Ord instance
10. Will work because young does not specify a need for a string, you can just
    use Ord
11. Fails because mySort only works on strings. Whatever is being passed to
    mySort must also be a String, Ord is too general.
