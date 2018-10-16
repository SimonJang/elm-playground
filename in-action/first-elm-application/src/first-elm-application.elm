-- Declare module, only exposing the value `main`
module PhotoGroove exposing (main)

import Html exposing (div, h1, img, text)
import Html.Attributes exposing (..)
 
view model =
    div [ class "content" ] -- Properties of the node
        [ h1 [] [ text "Photo Groove" ] -- First child of the node
        , div [ id "thumbnails" ] -- Second child of the node, the comma indicates the end of the data of the first child
            [ img [ src "http://elm-in-action.com/1.jpeg" ] [] -- List of children of the second child
            , img [ src "http://elm-in-action.com/2.jpeg" ] []
            , img [ src "http://elm-in-action.com/3.jpeg" ] []
            ]
        ]
 
-- Only this value is exposed.
main =
    view "no model yet"