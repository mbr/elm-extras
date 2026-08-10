module Extras.Svg.Attributes exposing (none, when)

{-| Convenience functions for working with `Svg.Attribute`.

@docs none, when

-}

import Extras.Core
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


{-| Return an attribute when the condition is true and an empty attribute otherwise.

    when isActive (class "active")

-}
when : Bool -> Attribute msg -> Attribute msg
when condition =
    Extras.Core.unless condition none
