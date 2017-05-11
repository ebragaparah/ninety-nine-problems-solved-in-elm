module Main exposing (..)

import Html exposing (..)
import List exposing (take, drop)


{-
   Split a list into two lists. The length of the first part is specified by the caller.
   Use List.take and List.drop to split a list into two lists. The second parameter of the
   split function will the the size of the first list.
-}


split : List a -> Int -> ( List a, List a )
split list firstPartLenght =
    ( take firstPartLenght list, drop firstPartLenght list )



{-
   the following main function is being used as an example just to explore the
   output of the function above
-}


main : Html msg
main =
    text (toString (split [ 1, 2, 3, 4, 5, 6 ] 3))
