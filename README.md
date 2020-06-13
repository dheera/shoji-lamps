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

# Printing the roof, bars, base, and lockpins

These are all straightforward parts to print and presented no problem on my Prusa i3 MK3. The bars are the only required part for the lamp to stay together. It will hold together without the roof (although it may not look as nice), and the base is completely optional. The lockpins attach the rest of the lamp to the base, so you don't need those if you aren't printing the base.

I **highly suggest** you set your fill angle to 0 degrees instead of 45 degrees, so that the topmost layer will print like wood grain (in PrusaSlicer: Print Settings -> Infill -> Advanced -> Fill angle). Make sure you rotate the print to the correct orientation.

![fill angle direction](/images/fillangledirection-goodbad.png?raw=true "fill angle direction")

# Printing the Shoji screens

The Shoji screens require printing sequentially in multiple colors. You can do this with a single extruder setup and just change the color for different layer heights. The white screen is just a single layer thick, those that have drawings of e.g. bamboo or birds are in the 2nd layer in black, and the rest of the layers going up from there are the brown ("wood") only.

The trickiest part of printing the screens by far is making sure your bed level and Live Adjust Z is calibrated properly, since the white screen is only a single layer thick. If you are using a Prusa, please use the 7x7 bed level correction mode present in more recent firmware as it works **much** better than 3x3.

For the color changes, use PrusaSlicer 2.2.0 or later which allows you to insert a M600 color change code in the sliced layer view. For the screens that have no drawings, you only need white PETG (for the first layer) and one color change at the beginning of the second layer to brown PETG. For the screens with drawings, you need white for the first layer, black for the second layer, and brown for the rest of the layers.

When changing the colors have some tweezers handy because the printer will often drip some filament just before it starts printing the first layer with the new color so be ready to catch that.

![multicolor](/images/multicolor.png?raw=true "multicolor")

# Assembly

The assembly of these lanterns uses puzzle joints and needs no glue or screws.

There are 3 types of bars: X, Y, and Z. Note that Y has a rounded section while X has a square section:

![assembly0](/images/assembly0.jpg?raw=true "assembly0")

Begin by placing the Z bars into the roof, allowing the angled sections to lock into the cutouts. Make sure that the slots for the Shoji screen are all facing inwards. Place two Y bars (the rounded ones!) as pictured. Although not required, you may want to orient them such that the worst-looking face of your Y bar faces outward at this point, since it will eventually be rotated to not face outwards.

![assembly1](/images/assembly1.jpg?raw=true "assembly1")

Now fit two X bars carefully over both the Y and Z bars, as pictured. Pay close attention to how it is in the picture. The X bar should be snap into place flush with the Z bar. Make sure it is pushed in as far as possible.

![assembly2](/images/assembly2.jpg?raw=true "assembly2")

Now rotate the Y bar to lock the structure into place, being careful not to break your 3D printed parts.

![assembly3](/images/assembly3.jpg?raw=true "assembly3")

Do the exact same for the bottom part of the lantern as well, and the structure should now be fairly rigid and ready to install the Shoji panels.

![assembly4](/images/assembly4.jpg?raw=true "assembly4")

The Shoji panels are best inserted from the back. They should snap into place into the grooves on the Z bars.

![assembly5](/images/assembly5.jpg?raw=true "assembly5")

Completed assembly.

![assembly6](/images/assembly6.jpg?raw=true "assembly6")
