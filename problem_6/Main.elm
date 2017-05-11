module Main exposing (..)

import Html exposing (..)
import List exposing (reverse)


{-
   Determine if a list is a palindrome, that is, the list is identical when read forward or backward.
-}


palindrome : List a -> Bool
palindrome list =
    reverse list == list



{-
   the following main function is being used as an example just to explore the
   output of the function above
-}


main : Html msg
main =
    text (toString (palindrome [ 1, 2, 1 ]))
