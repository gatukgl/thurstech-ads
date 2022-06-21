module Main exposing (Msg(..), Speaker, init, main, update, view)

import Browser
import Html exposing (Html, div, h1, h2, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Speaker =
    { name : String
    , title : String
    , company : String
    , image : String
    }


init : Speaker
init =
    { name = ""
    , title = ""
    , company = ""
    , image = ""
    }



-- UPDATE


type Msg
    = Name String
    | Title String
    | Company String
    | Image String


update : Msg -> Speaker -> Speaker
update msg speaker =
    case msg of
        Name name ->
            { speaker | name = name }

        Title title ->
            { speaker | title = title }

        Company company ->
            { speaker | company = company }

        Image image ->
            { speaker | image = image }



-- VIEW


view : Speaker -> Html Msg
view speaker =
    div []
        [ h1 [] [ text "ThursTech Speakers" ]
        , div []
            [ h2 [] [ text "Speaker 1" ]
            , input [ placeholder "Speaker name", value speaker.name, onInput Name ] []
            , input [ placeholder "Job title", value speaker.title, onInput Title ] []
            , input [ placeholder "Company", value speaker.company, onInput Company ] []
            , input [ placeholder "Image", value speaker.image, onInput Image ] []
            ]
        , div []
            [ h2 [] [ text "Speaker 2" ]
            , input [ placeholder "Speaker name", value speaker.name, onInput Name ] []
            , input [ placeholder "Job title", value speaker.title, onInput Title ] []
            , input [ placeholder "Company", value speaker.company, onInput Company ] []
            , input [ placeholder "Image", value speaker.image, onInput Image ] []
            ]
        ]
