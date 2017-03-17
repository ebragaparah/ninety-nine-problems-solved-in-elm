{- Implement the function penultimate to find the
   next to last element of a list.
-}


module Main exposing (..)

import Html exposing (..)
import Maybe


penultimate : List a -> Maybe a
penultimate list =
    case list of
        [] ->
            Nothing

        [ x ] ->
            Nothing

        x :: y :: [] ->
            Just x

        x :: xs ->
            penultimate xs



{- the following main function is being used as an example just to explore the
   output of the function above
-}


main =
    case penultimate [ 1, 2, 3, 4 ] of
        Just element ->
            text (toString (element))

        Nothing ->
            text ("No element found")
