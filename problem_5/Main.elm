module Main exposing (..)

import Html exposing (..)


{-
   Elm provides the function List.reverse to reverse the order
   of elements in a list. See if you can implement it.
-}


reverse list =
    case list of
        [] ->
            []

        x :: xs ->
            reverse xs ++ [ x ]



{-
   the following main function is being used as an example just to explore the
   output of the function above
-}


main =
    text (toString (reverse [ 1, 2, 3, 5, 5, 7, 8 ]))
