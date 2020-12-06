module Extras.Svg.Attributes exposing (none)

{-| Convenience functions for working with `Svg.Attribute`.

@docs none

-}

import Svg exposing (Attribute)
import Svg.Attributes exposing (class)


{-| Empty attribute.

Useful if need to produce an SVG attribute that evaluates to nothing. Example:

    div
        [ if isHidden then
            style [ "display", "none" ]

          else
            none
        ]
        [ text "example" ]

The name is no conincidence, but was chosen to not clash with `Extras.Svg.nothing`.

-}
none : Attribute msg
none =
    class ""
