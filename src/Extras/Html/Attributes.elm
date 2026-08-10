module Extras.Html.Attributes exposing (none, when)

{-| Convenience functions for working with `Html.Attribute`.

@docs none, when

-}

import Extras.Core
import Html exposing (Attribute)
import Html.Attributes exposing (class)


{-| Empty attribute.

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


{-| Return an attribute when the condition is true and an empty attribute otherwise.

    when isActive (class "active")

-}
when : Bool -> Attribute msg -> Attribute msg
when condition =
    Extras.Core.unless condition none
