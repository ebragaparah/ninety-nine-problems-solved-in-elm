module Main exposing (..)

import Html exposing (..)
import Maybe
import List


{-
   Elm provides the function List.length.
   See if you can implement it yourself.
-}


countElements list =
    List.sum (List.map (\item -> 1) list)



{-
   it looks like a reasonable solution.
   the following main function is being used as an example just to explore the
   output of the function above
-}


main =
    text (toString (countElements [ 1, 2, 3, 5, 6, 6, 7, 5, 4 ]))
