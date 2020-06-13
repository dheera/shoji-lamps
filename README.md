# 3D printable mini Shoji lamps

These are mini lampshades in the [Shoji](https://en.wikipedia.org/wiki/Shoji) style that are fully 3D printable. They make use of some ancient joinery techniques to fit together like a puzzle and can be assembled with **no glue or screws**. I highly recommend you use PETG if you plan to use them outdoors. PLA just all-around sucks and will disintegrate in the sunlight.

![shoji0](/images/shoji0.jpg?raw=true "shoji0")

# Lighting

You have multiple options for lighting. The simplest is to skip printing the base (it will hold together perfectly well without it) and just place the lamp over an electronic candle. (Don't use a real candle as your plastic is likely to melt, or worse, catch fire.) You can also make your own elaborate lighting setup -- the included base has a 5x5 grid of 10mm-spaced holes that you can use to screw in your PCB or other lighting design using M2.5 self-tapping plastic screws.

# Filaments

These are the filaments I used, if you want to duplicate the look.

* [3D Universe PETG, Medium Brown](https://shop3duniverse.com/products/3d-universe-petg-filament-1-75mm-750g). I found this Medium Brown shade to look very much like wood when viewed from a distance and if the 3D print striations are aligned correctly.
* eSun White PETG for the back of the screens. Any white PETG will do.
* eSun Black PETG for the writing on the screens. Any black PETG will do.

# Printing the roof, base, bars, and lockpins

These are all straightforward parts to print and presented no problem on my Prusa i3 MK3. I **highly suggest** you set your fill angle to 0 degrees instead of 45 degrees, so that the topmost layer will print like wood grain (in PrusaSlicer: Print Settings -> Infill -> Advanced -> Fill angle). Make sure you rotate the print to the correct orientation.

![fill angle direction](/images/fillangledirection-goodbad.png?raw=true "fill angle direction")

# Printing the Shoji screens

The Shoji screens require printing sequentially in multiple colors. You can do this with a single extruder setup and just change the color for different layer heights. The white screen is just a single layer thick, those that have drawings of e.g. bamboo or birds are in the 2nd layer in black, and the rest of the layers going up from there are the brown ("wood") only.

The trickiest part of printing the screens by far is making sure your bed level and Live Adjust Z is calibrated properly, since the white screen is only a single layer thick. If you are using a Prusa, please use the 7x7 bed level correction mode present in more recent firmware as it works **much** better than 3x3.

For the color changes, use PrusaSlicer 2.2.0 or later which allows you to insert a M600 color change code in the sliced layer view. For the screens that have no drawings, you only need white PETG (for the first layer) and one color change at the beginning of the second layer to brown PETG. For the screens with drawings, you need white for the first layer, black for the second layer, and brown for the rest of the layers.

When changing the colors have some tweezers handy because the printer will often drip some filament just before it starts printing the first layer with the new color so be ready to catch that.

![multicolor](/images/multicolor.png?raw=true "multicolor")

# Assembly

The assembly of these lanterns uses puzzle joints and needs no glue or screws.
