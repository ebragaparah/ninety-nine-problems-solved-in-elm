module Main exposing (..)

import Html exposing (text)
import List exposing (take, drop, concat)


{-
   Remove the nth element from a list.

   Use List.take and List.drop and the append operator (++) or
   List.append to remove an element from a list.
-}


dropAt : Int -> List a -> List a
dropAt position list =
    let
        realPosition =
            (position - 1)
    in
        concat [ (take realPosition list), (drop position list) ]



{-
   the following main function is being used as an example just to explore the
   output of the function above
-}


main : Html.Html msg
main =
    text (toString (dropAt 3 [ 1, 2, 3, 4 ]))
