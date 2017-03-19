module Main exposing (..)

import Html
import Html.Attributes

main = Html.div
  [ Html.Attributes.style [("text-align", "center")] ]
  [
    Html.h1
      [ Html.Attributes.style [("font-size", "2em"), ("color", "#333"), ("padding-bottom", "30px")] ]
      [Html.text "cats"],
    Html.button
      [
        Html.Attributes.style
          [
            ("padding", "10px"),
            ("background-color", "#99ddff"),
            ("border-radius", "2px"),
            ("border", "1px solid #99ddff"),
            ("color", "white"),
            ("font-size", "1.5em"),
            ("cursor", "pointer"),
            ("margin", "5px")
          ]
      ]
      [Html.text "cats"],
    Html.button
      [
        Html.Attributes.style
          [
            ("padding", "10px"),
            ("background-color", "#99ddff"),
            ("border-radius", "2px"),
            ("border", "1px solid #99ddff"),
            ("color", "white"),
            ("font-size", "1.5em"),
            ("cursor", "pointer"),
            ("margin", "5px")
          ]
      ]
      [Html.text "dogs"],
    Html.button
      [
        Html.Attributes.style
          [
            ("padding", "10px"),
            ("background-color", "#99ddff"),
            ("border-radius", "2px"),
            ("border", "1px solid #99ddff"),
            ("color", "white"),
            ("font-size", "1.5em"),
            ("cursor", "pointer"),
            ("margin", "5px")
          ]
      ]
      [Html.text "ice cream"],
    Html.br [] [],
    Html.br [] [],
    Html.img
      [
        Html.Attributes.style
          [
            ("border-radius", "2px"),
            ("box-shadow", "0 2px 4px rgba(0,0,0,0.12), 0 2px 3px rgba(0,0,0,0.24)")
          ],
        Html.Attributes.src "https://media.giphy.com/media/11s7Ke7jcNxCHS/giphy.gif"
      ]
      []
  ]
