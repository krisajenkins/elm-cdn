module CDN exposing (bootstrap, skeleton, reset, foundation, fontAwesome)

{-| CDN provides handy links to the web CSS frameworks you want at-hand.

To use, just put the stylesheet you want in your top-level view function, like so:

    import CDN exposing (bootstrap)

    rootView model =
        div []
            [ bootstrap.css
            , ...
            ]

@docs bootstrap, skeleton, reset, foundation, fontAwesome
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


{-| Foundation 6.
-}
foundation :
    { css : Html msg
    , js : Html msg
    }
foundation =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/foundation/6.2.3/foundation.min.css"
    , js = script "https://cdnjs.cloudflare.com/ajax/libs/foundation/6.2.3/foundation.min.js"
    }


{-| FontAwesome 4.
-}
fontAwesome : { css : Html msg }
fontAwesome =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" }



-- TODO https://github.com/timcreative/material-kit
-- TODO http://demos.creative-tim.com/material-kit/index.html#
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
