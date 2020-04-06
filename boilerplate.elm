import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL

type alias Model = ()

init : Model
init =
  ()


-- UPDATE

type Msg = Message

update : Msg -> Model -> Model
update msg model =
  case msg of
    _ ->
      model
      


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ text "Hello world!"
    ]