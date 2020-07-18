module Extras.Core exposing
    ( flip
    , unless
    , byKey
    )

{-| General convenience functions.

@docs flip
@docs unless

-}


{-| Create a predicate that matches on a specific extracted value.

    > let alice = { id = 1, name = "Alice" }
    |     bob = { id = 2, name = "Bob" }
    |     users =
    | in List.filter (byKey .id 2) users
    [{ id = 2, name = "Bob" }]

-}
byKey : (a -> b) -> b -> a -> Bool
byKey extract key =
    extract >> (==) key


{-| Change the order of the arguments of a two argument function.

    > flip (++) "Hello" "World"
    "WorldHello" : String

-}
flip : (a -> b -> c) -> (b -> a -> c)
flip f a b =
    f b a


{-| Negated, functional if-then-else.

Checks a condition and returns the respective value.

Allows writing more natural conditional atttributes, elements, etc:

    div [] [ unless isLoggedIn (text "not logged in") (a [] [ text "logout" ]) ]

-}
unless : Bool -> a -> a -> a
unless condition onFalse onTrue =
    if condition then
        onTrue

    else
        onFalse
