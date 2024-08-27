# Contributing to `solarized.nvim`

Thank you for your interest in contributing to Solarized!
Whether you're here to improve existing features, add new themes, fix bugs, or
enhance documentation, your contributions are highly valued.

## Usage & Development

Solarized flips between light and dark modes. In each mode, four monotones
form the core values (with an optional fifth for emphasized content).

### Manipulating colors

When it comes to manipulating colors, I recommend using the following online
tools. These resources are excellent for creating tints, shades, and blends,

- [maketintshade](https://maketintsandshades.com/)
- [pinetools](https://pinetools.com/blend-colors)
- [colordesigner](https://colordesigner.io/)
- [colorblender](https://github.com/maxmx03/colorblender)

Additionally, I provide custom functions for color manipulation within the
plugin. These functions are designed to give users more control over their
colorscheme.

### Solarized Dark

> [!NOTE]
> The normal relationship for
> background and body text is `base03:base0`, text can be highlighted using a
> combiation of `base02:base1`

| Name    | Hex     | Description                                |
| ------- | ------- | ------------------------------------------ |
| base03  | #002b36 | background                                 |
| base02  | #073642 | background highlight                       |
| base01  | #586e75 | comments / secondary comment               |
| base00  | #657b83 | none                                       |
| base0   | #839496 | body text / default code / primary content |
| base1   | #93a1a1 | optional emphasized content                |
| base2   | #eee8d5 | none                                       |
| base3   | #fdf6e3 | none                                       |
| yellow  | #b58900 | optional                                   |
| orange  | #cb4b16 | optional                                   |
| red     | #dc322f | optional                                   |
| magenta | #d33682 | optional                                   |
| violet  | #6c71c4 | optional                                   |
| blue    | #268bd2 | optional                                   |
| cyan    | #2aa198 | optional                                   |
| green   | #859900 | optional                                   |

#### Solarized Dark Extra colors

- [pinetool](https://pinetools.com/blend-colors)
- [colorblender](https://github.com/maxmx03/colorblender)

| Name        | Hex (balance 70 / 0.3) | Description                       |
| ----------- | ---------------------- | --------------------------------- |
| base04      | #00222b                | sidebar background / float window |
| mix_yellow  | #364725                | yellow + base03 / optional        |
| mix_orange  | #3c342c                | orange + base03 / optional        |
| mix_red     | #422d33                | red + base03 / optional           |
| mix_magenta | #3f2e4c                | magenta + base03 / optional       |
| mix_violet  | #204060                | violet + base03 / optional        |
| mix_blue    | #0b4764                | blue + base03 / optional          |
| mix_cyan    | #0c4e53                | cyan + base03 / optional          |
| mix_green   | #274c25                | green + base03 / optional         |
| mix_base1   | #2C4E56                | base1 + base03 / visual           |

### Selenized Dark

| Name    | Hex     | Description                                |
| ------- | ------- | ------------------------------------------ |
| base03  | #103c48 | background                                 |
| base02  | #184956 | background highlight                       |
| base01  | #72898f | comments / secondary comment               |
| base00  | #53676d | none                                       |
| base0   | #adbcbc | body text / default code / primary content |
| base1   | #cad8d9 | optional emphasized content                |
| base2   | #ece3cc | none                                       |
| base3   | #fbf3db | none                                       |
| yellow  | #dbb32d | optional                                   |
| orange  | #ed8649 | optional                                   |
| red     | #fa5750 | optional                                   |
| magenta | #f275be | optional                                   |
| violet  | #af88eb | optional                                   |
| blue    | #4695f7 | optional                                   |
| cyan    | #41c7b9 | optional                                   |
| green   | #75b938 | optional                                   |

#### Selenized Dark Extra colors

| Name        | Hex (balance 70 / 0.3) | Description                       |
| ----------- | ---------------------- | --------------------------------- |
| base04      | #0b2a32                | sidebar background / float window |
| mix_yellow  | #4c5f3f                | yellow + base03 / optional        |
| mix_orange  | #525248                | orange + base03 / optional        |
| mix_red     | #56444a                | red + base03 / optional           |
| mix_magenta | #534d6b                | magenta + base03 / optional       |
| mix_violet  | #3f5278                | violet + base03 / optional        |
| mix_blue    | #20567c                | blue + base03 / optional          |
| mix_cyan    | #1e6569                | cyan + base03 / optional          |
| mix_green   | #2e6143                | green + base03 / optional         |
| mix_base1   | #486B74                | green + base03 / optional         |

### Solarized Light

> [!NOTE]
> The normal relationship for
> background and body text is `base3:base00`, text can be highlighted using a
> combiation of `base2:base01`

| Name    | Hex     | Description                                |
| ------- | ------- | ------------------------------------------ |
| base03  | #002b36 | none                                       |
| base02  | #073642 | none                                       |
| base01  | #586e75 | optional emphasized content                |
| base00  | #657b83 | body text / default code / primary content |
| base0   | #839496 | none                                       |
| base1   | #93a1a1 | comments / secondary content               |
| base2   | #eee8d5 | background highlights                      |
| base3   | #fdf6e3 | background                                 |
| yellow  | #b58900 | optional                                   |
| orange  | #cb4b16 | optional                                   |
| red     | #dc322f | optional                                   |
| magenta | #d33682 | optional                                   |
| violet  | #6c71c4 | optional                                   |
| blue    | #268bd2 | optional                                   |
| cyan    | #2aa198 | optional                                   |
| green   | #859900 | optional                                   |

#### Solarized Light Extra colors

- [pinetool](https://pinetools.com/blend-colors)
- [colorblender](https://github.com/maxmx03/colorblender)

| Name        | Hex (balance 90, 0.1)     | Description                       |
| ----------- | ------------------------- | --------------------------------- |
| mix_yellow  | #f5ebcc                   | yellow + base3 / optional         |
| mix_orange  | #f8e4ce                   | orange + base3 /optional          |
| mix_red     | #f9e2d1                   | red + base3 / optional            |
| mix_magenta | #f8e2d9                   | magenta + base3 / optional        |
| mix_violet  | #eee8df                   | violet + base3 / optional         |
| mix_blue    | #e7ebe1                   | blue + base3 / optional           |
| mix_cyan    | #e7eddb                   | cyan + base3 / optional           |
| mix_green   | #f1eccc                   | green + base3 /optional           |
| base4       | #fbf3db (selenized base3) | sidebar background / float window |

### Selenized Light

| Name    | Hex     | Description                                |
| ------- | ------- | ------------------------------------------ |
| base03  | #103c48 | none                                       |
| base02  | #184956 | none                                       |
| base01  | #3a4d53 | optional emphasized content                |
| base00  | #53676d | body text / default code / primary content |
| base0   | #adbcbc | none                                       |
| base1   | #909995 | comments / secondary content               |
| base2   | #ece3cc | background highlights                      |
| base3   | #fbf3db | background                                 |
| yellow  | #ad8900 | optional                                   |
| orange  | #c25d1e | optional                                   |
| red     | #d2212d | optional                                   |
| magenta | #ca4898 | optional                                   |
| violet  | #8762c6 | optional                                   |
| blue    | #0072d4 | optional                                   |
| cyan    | #009c8f | optional                                   |
| green   | #489100 | optional                                   |

#### Selenized Light Extra colors

| Name        | Hex (balance 90) | Description                |
| ----------- | ---------------- | -------------------------- |
| mix_yellow  | #f3e8c5          | yellow + base3 / optional  |
| mix_orange  | #f5e4c8          | orange + base3 / optional  |
| mix_red     | #f6dec9          | red + base3 / optional     |
| mix_magenta | #f6e1d4          | magenta + base3 / optional |
| mix_violet  | #efe4d8          | violet + base3 / optional  |
| mix_blue    | #e1e6da          | blue + base3 / optional    |
| mix_cyan    | #e1ead3          | cyan + base3 / optional    |
| mix_green   | #e9e9c5          | green + base3 / optional   |

## Solarized & Selenized Website

- [ethanschoonover](https://ethanschoonover.com/solarized/)
- [jan-warchol](https://github.com/jan-warchol/selenized/blob/master/README.md)
