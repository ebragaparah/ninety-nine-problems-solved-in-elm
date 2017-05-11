module Main exposing (..)

import Html exposing (..)
import List exposing (reverse)


palindrome : List a -> Bool
palindrome list =
    reverse list == list


main : Html msg
main =
    text (toString (palindrome [ 1, 2, 1 ]))
