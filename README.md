# CornerRibbon [![Build Status](https://secure.travis-ci.org/css-recipes/corner-ribbon.png?branch=master)](http://travis-ci.org/css-recipes/corner-ribbon)

> Simple CSS corner ribbon.

## Getting Started

If you haven't used [css-recipes](http://css-recipes.putaindecode.io/) before, be sure to check out the [Getting Started](http://css-recipes.putaindecode.io/getting-started) guide, as it explains consume the recipes using Bower. Once you're familiar with that process, you may install this recipe with this command:

```shell
bower install css-recipe-corner-ribbon --save
```

Once the recipe has been installed (& assuming `bower_components` folder is in your Sass import paths), it may be enabled inside your Sass file with this line:

```scss
@import "css-recipe-corner-ribbon/index"
```

Read more below to find alternative way to use this recipe.


## Component purpose

This recipe is available as CSS & Sass (scss).
It's advised to use this one with Sass placeholder.


## Browser support

_This component use [transform](http://caniuse.com/#search=transform)._

Vendor prefixs are not included, so I advise you to use a tool like [autoprefixer](https://github.com/ai/autoprefixer) to do this job after you build your stylesheet (it use [CanIUse](http://caniuse.com/) database).
Eventually use [grunt-autoprefixer](https://github.com/nDmitry/grunt-autoprefixer) or a similar wrapper depending on your worflow.

## CSS classes

### `crp-CornerRibbon`

Default CSS corner ribbon, in the top right.

## Sass placeholder(s)

Same as classes.

## Sass mixin(s)

### `crp-CornerRibbon()`

#### Options

##### `$position` (default: 'top right')

Position of the ribbon. Can be `top left`, `top right`, `bottom left`or `bottom right`.

##### `$width` (default: 10em)

Width of the ribbon.

##### `$height` (default: 2em)

Height of the ribbon.

##### `$lines` (default: 1)

Number of line for text (used to compute line-height according to the height).

##### `$skin` (default: 'classic')

Skin you want to use. `classic` is the only one available for now (`github` "Fork me on Github" planned).

##### `$width-add` (default: 0)

Tiny width value to adjust total width with no effect on width. Mainly used to adjust skin effect. _`$skin` value can change this value._ 

##### `$height-add` (default: 0)

Tiny height value to adjust total width with no effect on height/line-height. Mainly used to adjust skin effect. _`$skin` value can change this value._

##### `$offset-v` (default: 0)

Vertical offset to move the ribbon.

##### `$offset-h` (default: )

Horizontal offset to move the ribbon.

### Usage examples

#### CSS use

```html
<div class="crp-CornerRibbon"></div>
```

This will render the defaut top right ribbon.

#### Sass use

_This recipes requires Sass `~3.2.0` or libsass `~0.?`_

##### Generating classes

Before importing the file, you can eventually enable css classes like this:

```sass
$crp--output: true
@import "css-recipe-corner-ribbon/index";
```

Just remember that placeholders should be available as well.

##### Mixins use

```sass
.org-Component {
    @include crp-CornerRibbon(...);
}
```

See `tests/tests.scss` for more example.

## Release History

 * 2013-09-16   v0.1.0   First release.

---

Recipe submitted by ["MoOx" Maxime Thirouin](http://moox.io)