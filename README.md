# 3D printable mini Shoji lamps

These are mini lampshades in the [Shoji](https://en.wikipedia.org/wiki/Shoji) style that are fully 3D printable. They make use of some ancient joinery techniques to fit together like a puzzle and can be assembled with **no glue or screws**. I highly recommend you use PETG if you plan to use them outdoors, as PLA will disintegrate in the sunlight.

# Filaments

These are the filaments I used, if you want to duplicate the look.

* [3D Universe PETG, Medium Brown](https://shop3duniverse.com/products/3d-universe-petg-filament-1-75mm-750g). I found this Medium Brown shade to look very much like wood when viewed from a distance and if the 3D print striations are aligned correctly.
* eSun White PETG for the back of the screens. Any white PETG will do.
* eSun Black PETG for the writing on the screens. Any black PETG will do.

# Printing the roof, base, bars, and lockpins

These are all straightforward parts to print and presented no problem on my Prusa i3 MK3. I **highly suggest** you set your fill angle to 0 degrees instead of 45 degrees, so that the topmost layer will print like wood grain (in PrusaSlicer: Print Settings -> Infill -> Advanced -> Fill angle). Make sure you rotate the print to the correct orientation.

![fill angle direction](/images/fillangledirection-goodbad.png?raw=true "fill angle direction")

# Printing the Shoji screens

Use PrusaSlicer 2.2.0 or later which allows you to insert a color change. For the screens that have no drawings, you only need white PETG (for the first layer) and one color change at the beginning of the second layer to brown PETG. For the screens with drawings, you need white for the first layer, black for the second layer, and brown for the rest of the layers.

When changing the colors have some tweezers handy because the printer will often drip some filament just before it starts printing the first layer with the new color so be ready to catch that.

![multicolor](/images/multicolor.png?raw=true "multicolor")

# Assembly
