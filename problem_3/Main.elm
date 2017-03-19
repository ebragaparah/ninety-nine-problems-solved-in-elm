{- Implement the function elementAt to return the n-th element of a list.
   The index is 1-relative, that is, the first element is at index 1.
-}


module Main exposing (..)

import Html exposing (..)
import List
import Maybe


dropOne list =
    List.drop 1 list


elementAt list position =
    case list of
        [] ->
            Nothing

        x :: xs ->
            if position == 1 then
                Just x
            else
                elementAt (dropOne list) (position - 1)



{- the following main function is being used as an example just to explore the
   output of the function above.

   it could be solved without the drop function, but it was suggested by the
   challenge.
-}


main =
    case (elementAt [ 1, 2, 3, 4 ] 3) of
        Just element ->
            text (toString (element))

        Nothing ->
            text ("No element found")
