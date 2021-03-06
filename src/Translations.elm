module Translations exposing (translate, translateWV, Keyword(..))
import I18Next exposing (t, tr, Delims(..), Translations, Replacements)

type Keyword
    = TellDDay
    | TopTitle
    | PageTitle
    | SaveTheDate
    | Lily
    | Heechul
    | HowFar
    | HowFars
    | AddToCal
    | WeddAddr
    | WeddAddrSub
    | Shuttle
    | Bus
    | Subway
    | Parking
    | Photo
    | Date
    | Map
    | Top

kToS : Keyword -> String
kToS keyword =
    case keyword of
       TellDDay -> "tellDDay"
       TopTitle -> "topTitle"
       PageTitle -> "pageTitle"
       SaveTheDate -> "saveTheDate"
       Heechul -> "heechul"
       Lily -> "lily"
       HowFars -> "howFars"
       HowFar -> "howFar"
       AddToCal -> "addToCal"
       WeddAddr -> "weddAddr"
       WeddAddrSub -> "weddAddrSub"
       Shuttle -> "shuttle"
       Bus -> "bus"
       Subway -> "subway"
       Parking -> "parking"
       Photo -> "photo"
       Date -> "date"
       Map -> "map"
       Top -> "top"

translate : Translations -> Keyword -> String
translate translations keyword =
    keyword
        |> kToS
        |> (t translations)

translateWV : Translations -> Keyword -> Replacements -> String
translateWV translations keyword tuples =
    (keyword
        |> kToS
        |> (tr translations Curly))
    <| tuples
