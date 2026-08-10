module Extras.Html exposing (nothing, when)

{-| Convenience functions for working with `Html.Html`

@docs nothing, when

-}

import Extras.Core
import Html exposing (Html, text)


{-| Empty element.

Useful if need to produce an HTML element that evaluates to nothing. Example:

    let
        optionalContent =
            Just (div [] [ text "hello " ])
    in
    Maybe.withDefault nothing optionalContent

-}
nothing : Html msg
nothing =
    text ""


{-| Return an element when the condition is true and an empty element otherwise.

    when showLabel (text "Label")

-}
when : Bool -> Html msg -> Html msg
when condition =
    Extras.Core.unless condition nothing
