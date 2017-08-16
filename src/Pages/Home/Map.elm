module Pages.Home.Map exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)

view =
    div [] [ iframe iframeAttrs []
           ]

iframeAttrs =
    [ src mapUrl
    -- , width 600
    , height 450
    , style iframeStyle
    ]

iframeStyle =
    [ ("border", "0")
    , ("width", "100%")
    ]

mapUrl = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.1469923794966!2d127.00032935131836!3d37.55160047970161!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca306cb20ef5f%3A0x45d36b95856891f4!2z64Ko7IKw7KCc7J206re4656c7ZWY7Jqw7Iqk!5e0!3m2!1sko!2skr!4v150284562343"