module CoreTests exposing (..)

import Expect exposing (Expectation)
import Extras.Core exposing (byKey, flip, unless)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "The Extras.Core module"
        [ describe "byKey"
            (let
                rec =
                    { foo = "foo", bar = "bar" }
             in
             [ test "works on simple record" <|
                \_ -> Expect.equal True (byKey .bar "bar" rec)
             , test "fails on wrong key" <|
                \_ -> Expect.equal False (byKey .bar "not-bar" rec)
             ]
            )
        , describe
            "flip"
            [ test "flips subtraction" <| \_ -> Expect.equal (flip (-) 5 2) -3
            , test "is self-inverting" <| \_ -> Expect.equal (flip (flip (-)) 5 2) 3
            ]
        , describe "unless"
            [ test "unless uses inverted logic" <| \_ -> Expect.equal (unless True 0 1) 1
            ]
        ]
