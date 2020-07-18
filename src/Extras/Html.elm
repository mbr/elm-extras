module Extras.Html exposing (nothing)

{-| Html extras

Convenience functions for working with `Html.Html`

@docs nothing

-}

import Html exposing (Html, text)


{-| Empty element

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
