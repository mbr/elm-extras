module Extras.Html.Attributes exposing (none)

{-| Html attribute extras

Convenience functions for working with `Html.Attribute`

@docs none

-}

import Html exposing (Attribute)
import Html.Attributes exposing (class)


{-| Empty attribute

Useful if need to produce an HTML attribute that evaluates to nothing. Example:

    div
        [ if isHidden then
            style [ "display", "none" ]

          else
            none
        ]
        [ text "example" ]

The name is no conincidence, but was chosen to not clash with `Extras.Html.nothing`.

-}
none : Attribute msg
none =
    class ""
