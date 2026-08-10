module Extras.Svg.Attributes exposing (empty, attributeIf, attributeMaybe)

{-| Conditional rendering helpers for `Svg.Attribute`.

The names follow the corresponding functions in
[`Html.Attributes.Extra`](https://package.elm-lang.org/packages/elm-community/html-extra/latest/Html.Attributes.Extra).

@docs empty, attributeIf, attributeMaybe

-}

import Svg exposing (Attribute)
import Svg.Attributes exposing (class)


{-| Empty SVG attribute.
-}
empty : Attribute msg
empty =
    class ""


{-| Render an SVG attribute when the condition is true.

    attributeIf isActive (class "active")

-}
attributeIf : Bool -> Attribute msg -> Attribute msg
attributeIf condition svgAttribute =
    if condition then
        svgAttribute

    else
        empty


{-| Render a present value as an SVG attribute.

    attributeMaybe id selectedId

-}
attributeMaybe : (a -> Attribute msg) -> Maybe a -> Attribute msg
attributeMaybe render =
    Maybe.map render >> Maybe.withDefault empty
