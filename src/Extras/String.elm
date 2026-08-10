module Extras.String exposing (fromBool, fromBoolLowercase)

{-| Conversions to strings that are missing from `elm/core`.

@docs fromBool, fromBoolLowercase

-}


{-| Convert a Boolean to its Elm representation.

    fromBool True == "True"

    fromBool False == "False"

-}
fromBool : Bool -> String
fromBool value =
    if value then
        "True"

    else
        "False"


{-| Convert a Boolean to its lowercase representation.

    fromBoolLowercase True == "true"

    fromBoolLowercase False == "false"

-}
fromBoolLowercase : Bool -> String
fromBoolLowercase =
    fromBool >> String.toLower
