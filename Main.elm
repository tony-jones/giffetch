import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

main = Html.beginnerProgram { model = model,
                              view = view,
                              update = update }

type Message = AskedForCats | AskedForDogs | AskedForIceCream

catPicture = "https://media.giphy.com/media/ND6xkVPaj8tHO/giphy.gif"
dogPicture = "https://media.giphy.com/media/oJWx7MtpR2qdi/giphy.gif"
iceCreamPicture = "https://media.giphy.com/media/QjagU0ONoQwCc/giphy.gif" 

type alias Model = { title : String, picture : String }
model : Model
model = Model "cats" "https://media.giphy.com/media/ND6xkVPaj8tHO/giphy.gif"

view : Model -> Html Message
view model = div
  [ pageStyling ]
  [
    h1 [ headingStyling ] [ text model.title ],
    button [ buttonStyling, onClick AskedForCats ] [ text "cats" ],
    button [ buttonStyling, onClick AskedForDogs ] [ text "dogs" ],
    button [ buttonStyling, onClick AskedForIceCream ] [ text "ice cream" ],
    br [] [],
    br [] [],
    img [ imageStyling, src model.picture ] []
  ]

update : Message -> Model -> Model
update message model =
  case message of
    AskedForCats     -> { model | title = "cats",
                                  picture = catPicture }

    AskedForDogs     -> { model | title = "dogs",
                                  picture = dogPicture }

    AskedForIceCream -> { model | title = "ice cream",
                                  picture = iceCreamPicture }
-- Styling

pageStyling =
    style [ ( "text-align", "center" ) ]

headingStyling =
    style
    [
      ( "font-size", "2em" ),
      ( "color", "#333" ),
      ("padding-bottom", "30px")
    ]

buttonStyling =
    style
      [
        ( "padding", "10px" ),
        ( "background-color", "#99ddff" ),
        ( "border-radius", "2px" ),
        ( "border", "1px solid #99ddff" ),
        ( "color", "white" ),
        ( "font-size", "1.5em" ),
        ( "cursor", "pointer" ),
        ( "margin", "5px")
      ]

imageStyling =
    style
      [
        ( "border-radius", "2px" ),
        ( "box-shadow", "0 2px 4px rgba(0,0,0,0.12), 0 2px 3px rgba(0,0,0,0.24)")
      ]