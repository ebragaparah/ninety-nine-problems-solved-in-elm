module Main exposing (..)

import Html exposing (..)
import Array exposing (slice, toList, fromList)


{-
   Given a list, return the elements between (inclusively) two indices.
   Start counting the elements with 1.
   Indices outside of the list bounds (i.e. negative number, or beyond the
   length of the list) should be clipped to the bounds of the list.
-}


slice_ from until list =
    fromList (list)
        |> slice from until
        |> toList



{-
   the following main function is being used as an example just to explore the
   output of the function above
-}


main =
    text (toString (slice_ 3 7 [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]))
