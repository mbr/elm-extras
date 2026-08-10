module Extras.Svg exposing (nothing, viewIf, viewMaybe)

{-| Conditional rendering helpers for `Svg.Svg`.

The names follow the corresponding functions in
[`Html.Extra`](https://package.elm-lang.org/packages/elm-community/html-extra/latest/Html.Extra).

@docs nothing, viewIf, viewMaybe

-}

import Svg exposing (Svg, text)


{-| Empty SVG content.
-}
nothing : Svg msg
nothing =
    text ""


{-| Render SVG content when the condition is true.

    viewIf showLabel (text "Label")

-}
viewIf : Bool -> Svg msg -> Svg msg
viewIf condition svg =
    if condition then
        svg

    else
        nothing


{-| Render a present value as SVG content.

    viewMaybe viewIcon selectedIcon

-}
viewMaybe : (a -> Svg msg) -> Maybe a -> Svg msg
viewMaybe render =
    Maybe.map render >> Maybe.withDefault nothing
