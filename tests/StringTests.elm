module StringTests exposing (suite)

{-| Tests for `Extras.String`.

@docs suite

-}

import Expect
import Extras.String exposing (fromBool, fromBoolLowercase)
import Test exposing (Test, describe, test)


{-| Tests the Boolean conversions.
-}
suite : Test
suite =
    describe "Extras.String"
        [ test "converts True to its Elm representation" <|
            \_ -> Expect.equal "True" (fromBool True)
        , test "converts False to its Elm representation" <|
            \_ -> Expect.equal "False" (fromBool False)
        , test "converts True to lowercase" <|
            \_ -> Expect.equal "true" (fromBoolLowercase True)
        , test "converts False to lowercase" <|
            \_ -> Expect.equal "false" (fromBoolLowercase False)
        ]
