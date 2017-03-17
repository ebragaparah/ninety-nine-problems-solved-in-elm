{- Write a function last that returns the last element of a list.
   An empty list doesn't have a last element, therefore last must return a Maybe.
-}


module Main exposing (..)

import Html exposing (text)
import Maybe


last : List a -> Maybe a
last list =
    case list of
        [] ->
            Nothing

        [ x ] ->
            Just x

        x :: xs ->
            last xs



{- the following main function is being used as an example just to explore the
   output of the function above
-}


main =
    case last [ 1, 2, 3, 4 ] of
        Just a ->
            text (toString a)

        Nothing ->
            text "No element found"
