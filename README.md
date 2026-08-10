# elm-extras

An experimental collection of small Elm utilities that do not have an established home elsewhere.
Expect breaking changes between releases.

## Migrating from 2.x

Version 3 removes the HTML modules, which duplicated
[`elm-community/html-extra`](https://package.elm-lang.org/packages/elm-community/html-extra/latest/).
Install that package and replace the removed APIs as follows:

| Removed | Replacement |
| --- | --- |
| `Extras.Html.nothing` | `Html.Extra.nothing` |
| `Extras.Html.when` | `Html.Extra.viewIf` |
| `Extras.Html.Attributes.none` | `Html.Attributes.Extra.empty` |
| `Extras.Html.Attributes.when` | `Html.Attributes.Extra.attributeIf` |

The SVG APIs now use the corresponding `elm-community/html-extra` names:

| 2.x | 3.x |
| --- | --- |
| `Extras.Svg.nothing` | `Extras.Svg.nothing` |
| `Extras.Svg.when` | `Extras.Svg.viewIf` |
| `Extras.Svg.Attributes.none` | `Extras.Svg.Attributes.empty` |
| `Extras.Svg.Attributes.when` | `Extras.Svg.Attributes.attributeIf` |

`Extras.Svg.viewMaybe` and `Extras.Svg.Attributes.attributeMaybe` provide SVG counterparts to the
HTML package's optional rendering helpers.
