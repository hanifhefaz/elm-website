module Pages.Top exposing (Model, Msg, Params, page)

import Html exposing (..)
import Spa.Document exposing (Document)
import Spa.Page as Page exposing (Page)
import Spa.Url exposing (Url)
import Html.Attributes exposing (..)


type alias Params =
    ()


type alias Model =
    Url Params


type alias Msg =
    Never


page : Page Params Model Msg
page =
    Page.static
        { view = view
        }



-- VIEW


view : Url Params -> Document Msg
view { params } =
    { title = "Homepage"
    , body = [
    table [class "table"]
    [ tr []
        [ th [class "table-head"]
            [ text "Top" ]
        , th [class "table-head"]
            [ text "Best Price" ]
        , th [class "table-head"]
            [ text "Discount" ]
        ]
    , tr []
        [ td []
            [ img [ class " image", src "Img1.png", width 300, height 200] [] ]
        , td []
            [ img [ class " image", src "Img1.png", width 300, height 200] [] ]
        , td []
            [ img [ class " image", src "Img1.png", width 300, height 200] [] ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
    [ td [ class "tab-title" ]
     [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
        , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
        [ td []
            [ img [ class " image", src "Img1.png", width 300, height 200] [] ]
        , td []
            [ img [ class " image", src "Img1.png", width 300, height 200] [] ]
        , td []
            [ img [ class " image", src "Img1.png", width 300, height 200] [] ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
    [ td [ class "tab-title" ]
     [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
        , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    , tr []
        [ td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        , td [ class "tab-title" ]
    [ text "Model: "
    , span [ class "tab-content" ]
        [ text "Nokia 5540" ]
    ]
        ]
    ]
    ]
    }
