module Shared exposing
    ( Flags
    , Model
    , Msg
    , init
    , subscriptions
    , update
    , view
    )

import Browser.Navigation exposing (Key)
import Html exposing (..)
import Html.Attributes exposing (class, href)
import Spa.Document exposing (Document)
import Spa.Generated.Route as Route
import Url exposing (Url)
import Html exposing (..)
import Html.Attributes exposing (..)



-- INIT


type alias Flags =
    ()


type alias Model =
    { url : Url
    , key : Key
    }


init : Flags -> Url -> Key -> ( Model, Cmd Msg )
init flags url key =
    ( Model url key
    , Cmd.none
    )



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ReplaceMe ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view :
    { page : Document msg, toMsg : Msg -> msg }
    -> Model
    -> Document msg
view { page, toMsg } model =
    { title = page.title
    , body =
        [ div [ class "layout" ]
            [ header [ class "navbar" ]
                [ a [ class "logo", href (Route.toString Route.Top) ] [ text "electron" ]
                , a [ class "link", href (Route.toString Route.Top) ] [ text "Home" ]
                , a [ class "link", href (Route.toString Route.Models) ] [ text "Models" ]
                , a [ class "link", href (Route.toString Route.Contact) ] [ text "Contact" ]
                , a [ class "link", href (Route.toString Route.About) ] [ text "About" ]
                , a [ class "link", href (Route.toString Route.Chat) ] [ text "Chat" ]
                ]
            , div [ class "page" ] page.body
            , div[ class "site-footer"][ text "[ Built with "
        , a [ class "text-underline hoverable", Html.Attributes.target "_blank", href "https://elm-lang.org" ] [ text "Elm" ]
        , text " ]"
        ]
            ]
        ]

    }
