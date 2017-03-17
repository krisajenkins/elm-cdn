module CDN
    exposing
        ( bootstrap
        , skeleton
        , reset
        , foundation
        , fontAwesome
        , bulma
        , pure
        , bass
        , colors
        , tachyons
        , wing
        )

{-| CDN provides handy links to the web CSS frameworks you want at-hand.

To use, just put the stylesheet you want in your top-level view function, like so:

    import CDN exposing (bootstrap)

    rootView model =
        div []
            [ bootstrap.css
            , ...
            ]

# CSS Frameworks

These are frameworks that are more opinionated, meaning they tend to style things
for you in a default way and provide more structure.

@docs bootstrap
@docs skeleton
@docs pure
@docs foundation
@docs bulma
@docs wing

# CSS Libraries

These are more "mix and match" css libaraies.

@docs reset
@docs fontAwesome
@docs bass
@docs colors
@docs tachyons
-}

import Html exposing (..)
import Html.Attributes exposing (..)


{-| [Bootstrap 3](http://getbootstrap.com/)
Bootstrap is the most popular HTML, CSS, and JS framework for developing
responsive, mobile first projects on the web.
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


{-| [Skeleton 2](http://getskeleton.com/)
A dead simple, responsive boilerplate.
-}
skeleton : { css : Html msg }
skeleton =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css" }


{-| [Eric Meyer's CSS reset](http://meyerweb.com/eric/tools/css/reset/)
The goal of a reset stylesheet is to reduce browser inconsistencies in things
like default line heights, margins and font sizes of headings, and so on.
-}
reset : { css : Html msg }
reset =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" }


{-| [Foundation 6](http://foundation.zurb.com/)
A Framework for any device, medium, and accessibility. Foundation is a family of
 responsive front-end frameworks that make it easy to design beautiful responsive
  websites, apps and emails that look amazing on any device. Foundation is
  semantic, readable, flexible, and completely customizable. We’re constantly
  adding new resources and code snippets, including these handy HTML templates
  to help get you started!
-}
foundation :
    { css : Html msg
    , js : Html msg
    }
foundation =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/foundation/6.2.3/foundation.min.css"
    , js = script "https://cdnjs.cloudflare.com/ajax/libs/foundation/6.2.3/foundation.min.js"
    }


{-| [FontAwesome 4](http://fontawesome.io/)
The iconic font and CSS toolkit (font icons)
-}
fontAwesome : { css : Html msg }
fontAwesome =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" }




{-| [Bulma 0.3.2](http://bulma.io/)
A modern CSS framework based on Flexbox
-}
bulma : { css : Html msg }
bulma =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.3.2/css/bulma.min.css" }


{-| [Pure 0.6.0](http://purecss.io)
A set of small, responsive CSS modules that you can use in every web project.
-}
pure : { css : Html msg }
pure =
    { css = stylesheet "http://yui.yahooapis.com/pure/0.6.0/pure-min.css" }


{-| [Bass 8.0.2](http://basscss.com/)
Low-Level CSS Toolkit. (basically is an implementation of [functional CSS](https://marcelosomers.com/writing/rationalizing-functional-css/)).

    import CDN exposing (bass)

    rootView model =
        div []
            [ bass.css
            , bass.btnsCss
            , ...
            ]

Good to use with [colors](#colors) to style buttons and other things.
-}
bass : { css : Html msg, btnsCss : Html msg }
bass =
    { css = stylesheet "https://unpkg.com/basscss@8.0.2/css/basscss.min.css"
    , btnsCss = stylesheet "https://unpkg.com/basscss-addons@1.0.0/modules/btn/index.css"
    }


{-| [Tachyons 4.6.1](http://tachyons.io/)
Create fast loading, highly readable, and 100% responsive interfaces with as
little css as possible.

also is an implementation of [functional CSS](https://marcelosomers.com/writing/rationalizing-functional-css/).
-}
tachyons : { css : Html msg }
tachyons =
    { css = stylesheet "https://unpkg.com/tachyons@4.6.1/css/tachyons.min.css" }


{-| [Colors 2.2.0](http://clrs.cc/)
Skinning your prototypes just got easier - colors.css is a collection of skin
classes to use while prototyping in the browser.
-}
colors : { css : Html msg }
colors =
    { css = stylesheet "https://s3-us-west-2.amazonaws.com/colors-css/2.2.0/colors.min.css" }


{-| [Wing 0.1.9](http://usewing.ml)
Minimal CSS Framework
-}
wing : { css : Html msg }
wing =
    { css = stylesheet "https://cdnjs.cloudflare.com/ajax/libs/wingcss/0.1.9/wing.min.css" }



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
