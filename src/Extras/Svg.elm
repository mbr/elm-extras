module Extras.Svg exposing (nothing, when)

{-| Convenience functions for working with `Svg.Svg`

@docs nothing, when

-}

import Extras.Core
import Svg exposing (Svg, text)


{-| Empty element.

Useful if need to produce an SVG element that evaluates to nothing. Example:

    let
        optionalContent =
            Just (g [] [ text "hello " ])
    in
    Maybe.withDefault nothing optionalContent

-}
nothing : Svg msg
nothing =
    text ""


{-| Return an element when the condition is true and an empty element otherwise.

    when showLabel (text "Label")

-}
when : Bool -> Svg msg -> Svg msg
when condition =
    Extras.Core.unless condition nothing
