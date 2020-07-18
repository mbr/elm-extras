module Extras.List exposing (upsert)

{-| Convenience functions for working with lists.

This module is intended to extend
[List.Extra](https://package.elm-lang.org/packages/elm-community/list-extra/latest), which should be
the first place to look for extra functionality.

-}

import List.Extra as List


{-| Update or insert one item in a list.

Searches a list for the first matching element and replaces it. If no matches are found, appends the
element to the end of the rest.

    upsert (byKey .id newUser.id) newUser users

If you find yourself using this function often, consider using a
[Dict](https://package.elm-lang.org/packages/elm/core/latest/Dict) and
[insert](https://package.elm-lang.org/packages/elm/core/latest/Dict#insert) instead.

-}
upsert : (a -> Bool) -> a -> List a -> List a
upsert match item list =
    case List.findIndex match list of
        Just idx ->
            List.updateAt idx (always item) list

        Nothing ->
            item :: list
