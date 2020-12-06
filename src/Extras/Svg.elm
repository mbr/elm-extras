module Extras.Svg exposing (nothing)

{-| Convenience functions for working with `Svg.Svg`

@docs nothing

-}

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
