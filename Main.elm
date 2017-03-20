module Main exposing (..)

import Html
import Html.Attributes

main = view model

model = ("cats", "https://media.giphy.com/media/ND6xkVPaj8tHO/giphy.gif")

view model = Html.div
  [ pageStyling ]
  [
    Html.h1 [ headingStyling ] [ Html.text (Tuple.first model) ],
    Html.button [ buttonStyling ] [Html.text "cats"],
    Html.button [ buttonStyling ] [Html.text "dogs"],
    Html.button [ buttonStyling ] [Html.text "ice cream"],
    Html.br [] [],
    Html.br [] [],
    Html.img [ imageStyling, Html.Attributes.src (Tuple.second model) ] []
  ]

pageStyling = Html.Attributes.style [ ("text-align", "center") ]
headingStyling =
  Html.Attributes.style
    [
      ("font-size", "2em"),
      ("color", "#333"),
      ("padding-bottom", "30px")
    ]

buttonStyling =
  Html.Attributes.style
    [
      ("padding", "10px"),
      ("background-color", "#99ddff"),
      ("border-radius", "2px"),
      ("border", "1px solid #99ddff"),
      ("color", "white"),
      ("font-size", "1.5em"),
      ("margin", "5px"),
      ("cursor", "pointer")
    ]

imageStyling =
  Html.Attributes.style
    [
      ("border-radius", "2px"),
      ("box-shadow", "0 2px 4px rgba(0,0,0,0.12), 0 2px 3px rgba(0,0,0,0.24)")
    ]
