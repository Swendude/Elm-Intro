module Main exposing (..)

import Browser exposing (sandbox)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- sandbox :
--     { init : model
--     , view : model -> Html msg
--     , update : msg -> model -> model
--     }
--     -> Program () model msg

main: Program () Int String
main =
  sandbox { init = init
           , view = view 
           , update = update
            } 
           

init : Int
init = 0

-- div : List (Attribute msg) -> List (Html msg) -> Html msg
-- text : String -> Html msg

-- onClick : msg -> Attribute msg
-- button : List (Attribute msg) -> List (Html msg) -> Html msg
view : Int -> Html String
view counter = div [] [ text (String.fromInt counter)
                        , button [onClick "Increment"] [text "+"]
                        , button [onClick "Decrement"] [text "-"]]

update : String -> Int -> Int
update message counter = 
            case message of
                "Increment" ->
                    counter + 1
                "Decrement" ->
                    counter - 1
                _ ->
                    counter