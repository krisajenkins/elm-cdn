module CDN exposing (bootstrap, skeleton, reset)

{-| CDN provides handy links to the web CSS frameworks you want at-hand.

To use, just put the stylesheet you want in your top-level view function, like so:

    import CDN exposing (bootstrap)

    rootView model =
        div []
            [ bootstrap.css
            , ...
            ]

@docs bootstrap, skeleton, reset
-}

import Html exposing (..)
import Html.Attributes exposing (..)


{-| Bootstrap 3.
-}
bootstrap :
    { css : Html msg
    , theme : Html msg
    , js : Html msg
    }
bootstrap =
    { css = stylesheet "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
    , theme = stylesheet "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
    , js = script "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
    }


{-| Skeleton 2.
-}
skeleton : { css : Html msg }
skeleton =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css" }


{-| Eric Meyer's CSS reset.
-}
reset : { css : Html msg }
reset =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" }



------------------------------------------------------------
-- Utilities.
------------------------------------------------------------


script : String -> Html msg
script url =
    node "script"
        [ src url
        ]
        []


stylesheet : String -> Html msg
stylesheet url =
    node "link"
        [ rel "stylesheet"
        , href url
        ]
        []
