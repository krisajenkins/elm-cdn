module CDN exposing (bootstrap3CSS, skeleton2CSS)

{-| The main entry point for the app.

@docs bootstrap3CSS, skeleton2CSS
-}

import Html exposing (..)
import Html.Attributes exposing (..)


link : List (Attribute msg) -> List (Html msg) -> Html msg
link =
    node "link"


stylesheet : String -> Html msg
stylesheet url =
    link
        [ rel "stylesheet"
        , href url
        ]
        []


{-| Bootstrap 3 CSS file.
-}
bootstrap3CSS : Html msg
bootstrap3CSS =
    stylesheet "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"


{-| Skeleton 2 CSS file.
-}
skeleton2CSS : Html msg
skeleton2CSS =
    stylesheet "https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css"
