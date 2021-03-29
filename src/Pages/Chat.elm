module Pages.Chat exposing (Params,Model,Msg,page)

import Spa.Document exposing (Document)
import Spa.Url as Url exposing (Url)
import Browser exposing (sandbox)
import Dict exposing (..)
import Spa.Page as Page exposing (Page)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onSubmit)
import Html
import Data



page : Page Params Model Msg
page =
    Page.sandbox
        { init = init
        , view = view
        , update = update
        }


type alias Model =
    { searchString : String
    , searchResult : SearchResult
    }

type alias Params =
    ()


init : Url Params -> Model
init { params } =
    {searchString = ""
    , searchResult = NotSearched
    }

type Msg
    = TypedSearch String
    | Search

type SearchResult
    = NotSearched
    | Searched (Maybe Data.Answer)

update : Msg -> Model -> Model
update msg model =
    case msg of
        TypedSearch str ->
            { model | searchString = str }

        Search ->
            { model | searchResult = Searched <| findRelevantDict (model.searchString |> tokenize |> toHistogram) Data.data }


type alias Sentence =
    String


type alias Tokens =
    List String


type alias Histogram =
    Dict String Int


{-| This will make a dictionary from a sentence
-}
wordsDict : Tokens -> Histogram
wordsDict vocabulary =
    vocabulary
        |> List.concatMap tokenize
        |> toHistogram



{-| Finds the sentences with the most occurances from a search string
Returns all the words from the matched sentence as a dictionary, which you can later convert to Html msg.
-}
findRelevantDict : Dict String Int -> List Data.Answer -> Maybe Data.Answer
findRelevantDict firstDict answers =
    case List.foldl (score firstDict) Nothing answers of
        Just (Score answer _) ->
            Just answer

        Nothing ->
            Nothing


type Score
    = Score Data.Answer{ size : Int, matches : Int }


score : Histogram -> Data.Answer -> Maybe Score -> Maybe Score
score firstDict answer prevBest =
    let
        thisHistogram =
            answer.question|> tokenize |> toHistogram

        thisSize =
            Dict.size thisHistogram

        thisMatches =
            thisHistogram
                |> Dict.intersect firstDict
                |> Dict.size

        this =
            Score answer { size = thisSize, matches = thisMatches }
    in
    case prevBest of
        Nothing ->
            Just this

        Just (Score _ { size, matches }) ->
            if thisMatches > matches && thisMatches >=2 then
                Just this

            else if thisMatches == matches then
                if thisSize < size then
                    Just this

                else
                    prevBest

            else
                prevBest


tokenize : Sentence -> Tokens
tokenize =
    String.filter (\c -> c == ' ' || Char.isAlpha c)
        >> String.toLower
        >> String.words
        >> List.filter (\x -> not <| List.member x stopWords)

stopWords : Tokens
stopWords =
    [ "a"
    , "able"
    , "about"
    , "across"
    , "after"
    , "all"
    , "almost"
    , "also"
    , "am"
    , "among"
    , "an"
    , "and"
    , "any"
    , "are"
    , "as"
    , "at"
    , "be"
    , "because"
    , "been"
    , "but"
    , "by"
    , "can"
    , "cannot"
    , "could"
    , "dear"
    , "did"
    , "do"
    , "does"
    , "either"
    , "else"
    , "ever"
    , "every"
    , "for"
    , "from"
    , "get"
    , "got"
    , "had"
    , "has"
    , "have"
    , "he"
    , "her"
    , "hers"
    , "him"
    , "his"
    , "how"
    , "however"
    , "i"
    , "if"
    , "in"
    , "into"
    , "is"
    , "it"
    , "its"
    , "just"
    , "least"
    , "let"
    , "like"
    , "likely"
    , "may"
    , "me"
    , "might"
    , "most"
    , "must"
    , "my"
    , "neither"
    , "no"
    , "nor"
    , "not"
    , "of"
    , "off"
    , "often"
    , "on"
    , "only"
    , "or"
    , "other"
    , "our"
    , "own"
    , "rather"
    , "said"
    , "say"
    , "says"
    , "she"
    , "should"
    , "since"
    , "so"
    , "some"
    , "than"
    , "that"
    , "the"
    , "their"
    , "them"
    , "then"
    , "there"
    , "these"
    , "they"
    , "this"
    , "tis"
    , "to"
    , "too"
    , "twas"
    , "us"
    , "wants"
    , "was"
    , "we"
    , "were"
    , "what"
    , "when"
    , "where"
    , "which"
    , "while"
    , "who"
    , "whom"
    , "why"
    , "will"
    , "with"
    , "would"
    , "yet"
    , "you"
    , "your"
    ]

toHistogram : Tokens -> Histogram
toHistogram =
    List.foldl
        (\key dict ->
            case Dict.get key dict of
                Nothing ->
                    Dict.insert key 1 dict

                Just count ->
                    Dict.insert key (count + 1) dict
        )
        Dict.empty


view : Model -> Document Msg
view model =
    { title = "Main"
    , body = [div [ class "row py-5" ]
            [ div [ class "col-lg-12 mx-auto" ]
                [ div [ class "text-white p-5 shadow-sm rounded banner" ]
                    [ h1 [ class "display-4" ]
                        [ text "Ask our Agent" ]
                    , p [ class "lead" ]
                        [ text "Do you have any question, regarding our products?" ]
                        , div [ style "text-align" "center" ]
        [ Html.form[ onSubmit Search ][
         textarea [ style "width" "50%",style "margin" "auto", style "height" "150px", style "padding" "10px", onInput TypedSearch, value model.searchString ] []
        , br [][]
        , br [][]
        , button [class "btn btn-dark px-5 py-3 text-uppercase"] [ text "Ask me" ]]
        , br [][]
        , div [ style "width" "50%",style "background-color" "#32CD32",style "margin" "auto", style "height" "20%", style "padding" "40px" ]
            [ case model.searchResult of
                NotSearched ->
                    text ""

                Searched Nothing ->
                    text "Sorry, there is no words in the bag :)"

                Searched (Just answer) ->
                    text answer.answer
            ]
        ]
                    ]
                ]
            ]
        ]
    }
