--- 
title: "Flight Test Engineering Reference Handbook"
author: "Society of Flight Test Engineers"
date: "2013"
site: "bookdown::bookdown_site"
cover-image: "media/media/image1.jpg"
output:
  bookdown::gitbook:
    config:
      toc_depth: 1
      toc:
        collapse: section
documentclass: book
bibliography: []
biblio-style: apalike
link-citations: yes
---

# Preface {-}

![][00001]

**Flight Test Engineering Reference Handbook**

Third (2013) Edition


Corporate support supplied by

McDonnell Douglas/Boeing (2nd Edition CD's)

and

The National Test Pilot School

## Contributors {-}


| Contributing Authors  | Sections |
|-----------------------|----------|
| Al Lawless | 1-8, 10-12, 15, 18|
| Greg Lewis | 2.6 |
| Bill Norton | 9, 13|
| Dan Hrehov | 14|
| Steven Arney | 16|
| John Minor | 19|
| David Kidman, Christopher Moulder, Craig Stevens |17|

## Editors {-}

|Editors| Tenure |
|-------|--------|
|Lee Gardner & Darcy Painter | 1998-2006 |
|Harold Weaver | 2006-2013 |

## Feedback {-}

The SFTE Technical Council continually seeks comments and new content.

Contact <edir@sfte.org>


## Publication Policy {-}

Copyright ©2013 by Society Of Flight Test Engineers

All rights reserved. This Technical Handbook is for the exclusive use of the Society of Flight Test Engineers individual and corporate members. The technical information contained herein may not be reproduced by any other individual or organization in any form without written permission from the Society of Flight Test Engineers. The Society reserves the exclusive right of publication. For further information concerning the publication policy, contact:


> Society of Flight Test Engineers    
> 44814 N. Elm Avenue    
> Lancaster, California 93534 USA    
> Phone: (661) 949-2095    
> Fax: (661) 949-2096    
> <http://www.sfte.org>


## Section Index {-}

  Section                     Title
  --------------------------- ----------------------------------------
  1                           General Information
  2                           Mathematics
  3                           Earth and Atmosphere
  4                           Pitot Statics
  5                           Aerodynamics
  6                           Axis Systems and Transformations
  7                           Mass Properties
  8                           Motion/Vibration Analysis
  9                           Material Strength (Loads)
  10                          Reciprocating Engines
  11                          Propellers
  12                          Fixed-Wing Performance Standardization
  13                          Acoustics
  14                          Electromagnetic Compatibility
  15                          Handling Qualities
  16                          Rotary Wing
  17                          Gas Turbine Propulsion
  18                          Radio Communications
  19                          The Electromagnetic Spectrum

  [00001]: media/index/image1.jpg {width="5.333333333333333in" height="3.6366666666666667in"}

<!--chapter:end:index.Rmd-->

# General Information

## Unit Conversions^[Common FTE conversions in boldface]

(references 1.1, 1.2)



Table: Prefix Multipliers

Exponent  Prefix  Abbreviation
--------- ------- -------------
10^18^    exa     E
10^15^    peta    P
10^12^    tera    T
10^9^     giga    G
10^6^     mega    M
10^3^     kilo    k
10^2^     hecto   h
10        deka    da
10^-1^    deci    d
10^-2^    centi   c
10^-3^    milli   m
10^-6^    micro   \(\mu\) 
10^-9^    nano    n
10^-12^   pico    p
10^-15^   femto   f
10^-18^   atto    a

|                          | Multiply       | by             | To Obtain                            |
|--------------------------|:---------------|:---------------|:-------------------------------------|
| **Angles**               | circles        | 1              | circumferences                       |
|                          | circles        | 12             | signs                                |
|                          | circles        | 21,600         | minutes                              |
|                          | circles        | 2\(\pi\)             | radians                              |
|                          | circles        | 360            | degrees                              |
|                          | degrees        |  0.011 11         | quadrants                            |
|                          | degrees        | 3600           | seconds                              |
|                          | degrees        | 60             | minutes                              |
|                          | mils (Army)    | 0.056 25        | degrees                              |
|                          | mils (Navy)    | 0.057 29        | degrees                              |
|                          | quadrants      | 90             | degrees                              |
|                          | radians        | 57.2958        | degrees                              |
|                          | revolutions    | 360            | degrees                              |
|^[solid angle measurement]| sphere         | 4\(\pi\)         | steradians |
|                          |                |                |                                      |
| **Angular Acceleration** | rev/min^2^     | 0.001 745       | rad/sec^2^                           |
|                          |                |                |                                      |
| **Angular Velocity**     | **cycles/sec** | **6.2814**     | **rads/sec**                         |
|                          | **rads/sec**   | **0.1592**     | **rev/sec (cycles/sec)**             |
|                          | rads/sec       | 9.549          | rpm                                  |
|                          | **rad/sec**    | **57.296**     | **deg/sec**                          |
|                          | rpm            | 0.016 67        | rev/sec                              |
|                          |                |                |                                      |
| **Area**                 | acres          | 43,560         | ft^2^                                |
|                          | ares           | 100            | m^2^                                 |
|                          | barn           | 10^-28^        | m^2^                                 |
|                          | centares       | 1              | m^2^                                 |
|                          | circular mils  | 7.854 x 10^-7^ | in^2^                                |
|                          | cm^2^          | 100            | mm^2^                                |
|                          | **ft^2^**      | **144**        | **in^2^**                            |
|                          | **ft^2^**      | **0.092 903 04** | **m^2^**                             |
|                          | in^2^          | 6.452          | cm^2^                                |
|                          | in^2^          | 10^6^          | mils^2^                              |
|                          | m^2^           | 10.76          | ft^2^                                |
|                          | section        | 2,589,988.1    | m^2^                                 |
|                          | st. mile^2^    | 27,780,000     | ft^2^                                |
|                          | st. mile^2^    | 2.590          | km^2^                                |
|                          | township       | 93,239,572     | m^2^                                 |
|                          | yd^2^          | 9              | ft^2^                                |
|                          | yd^2^          | 0.8361         | m^2^                                 |
|                           |                  |               |                    |
| **Density**               | grams/cm^3^      | 0.036 13       | pounds/in^3^       |
|                           | grams/cm^3^      | 62.43         | pounds/ft^3^       |
|                           | kg/m^3^          | 16.018 463     | pounds/ft^3^       |
|                           | **slugs/ft^3^**  | **515.4**     | **kg/m^3^**        |
|                           | **pounds/in^3^** | **1728**      | **pounds/ft^3^**   |
|                           | slugs/ft^3^      | 1.94          | grams/cm^3^        |
|                           |                  |               |                    |
| **Electrical Quantities** | amperes          | 0.1           | abamperes          |
|                           | amperes          | 1.0365x10^-5^ | faradays/sec       |
|                           | amperes          | 2.998x10^9^   | statamperes        |
|                           | amperes.cicmil   | 1.973x10^5^   | amperes/cm^2^      |
|                           | ampere-hours     | 3,600         | coulombs           |
|                           | ampere-hours     | 1.079x10^13^  | statcoulombs       |
|                           | ampere turn/cm   | 1.257         | gilberts/cm        |
|                           | ampere turn/cm   | 1.257         | oersteds           |
|                           | coulombs         | 0.1           | abcoulombs         |
|                           | coulombs         | 6.243x10^18^  | electronic charges |
|                           | coulombs         | 1.037x10^-5^  | faradays           |
|                           | coulombs         | 2.998x10^9^   | statcoulombs       |
|                           | faradays         | 26.8          | ampere-hours       |
|                           | farads           | 10^-9^        | abfarads           |
|                           | farads           | 10^6^         | microfarads        |
|                           | farads           | 8.986x10^11^  | statfarads         |
|                           | gausses          | 1             | maxwells/cm^2^     |
|                           | gausses          | 6.452         | lines/in^2^        |
|                           | gilberts         | 0.7958        | ampere turns       |
|                           | henries          | 10^9^         | abhenries          |
|                           | henries          | 1.113x10^-12^ | stathenries        |
|                           | maxwells         | 1             | lines              |
|                           | oersteds         | 2.998x10^10^  | statoersteds       |
|                           | ohms             | 10^9^         | abohms             |
|                           | ohms             | 1.113x10^12^  | statohms           |
|                           | ohm-cm           | 6.015x10^6^   | circ mil-ohms/ft   |
|                           | volts            | 10^8^         | abvolts            |
|                           | volts            | 0.003 336      | statvolts          |
|                           |                  |               |                    |
| **Energy & Work** | Btu                | 1.055x10^10^  | ergs             |
|                   | Btu                | 1055.1        | Joules (N-m)     |
|                   | Btu                | 2.9302x10^-4^ | kilowatt-hours   |
|                   | Btu                | 251.99        | calories (gram)  |
|                   | Btu                | 778.03        | foot-pounds      |
|                   | calories           | 4.1868        | watt-seconds     |
|                   | calories           | 3.088         | foot-pounds      |
|                   | electron volt      | 1.519x10^-22^ | Btu              |
|                   | ergs               | 1             | dyne-centimeters |
|                   | ergs               | 7.376x10^8^   | foot-pounds      |
|                   | **foot-pounds**    | **1.3558**    | Joules (N-m)**   |
|                   | foot-pounds        | 3.766x10^-7^  | kilowatt-hours   |
|                   | foot-pounds        | 5.051x10^-7^  | horsepower-hours |
|                   | hp-hours           | 0.7457        | kilowatt-hours   |
|                   | hp-hours           | 2546.1        | Btu              |
|                   | Joules             | 0.238 89       | calories         |
|                   | Joules             | 1             | Newton-meters    |
|                   | Joules             | 1             | watt-seconds     |
|                   | Joules             | 10^7^         | ergs             |
|                   | **kilowatt-hours** | **3.6x10^6^** | **Joules**       |
|                   | thermies           | 4.1868x10^6^  | Joules           |
|                   | watt-seconds       | 0.737 56       | foot-pounds      |
|                   |                    |               |                  |
| **Force**^[Converting between force and mass (e.g. kg force to kg mass or pound force to pound mass) uses \(g = 32.174 \frac{ft}{s^2}\)] | dynes                 | 3.597x10^-5^    | ounces       |
|                   | **kilograms-force**   | **9.806 65**     | **Newtons**  |
|                   | kiloponds             | 9.806 65         | Newtons      |
|                   | kip (kilopound-force) | 4,448.221       | Newtons      |
|                   | **Newtons**           | **0.224 808 931** | **pounds**   |
|                   | Newtons               | 100,000         | dynes        |
|                   | ounces                | 20              | pennyweights |
|                   | ounces (troy)         | 480             | grains       |
|                                                     |                   |           |                       |
| **Fuel**^[Fuel densities are temperature dependent] | **gal**           | **5.8**   | **lbs (U.S. AV gas)** |
|                                                     | **gal**           | **7.5**   | **lbs ( U.S. oil)**   |
|                                                     | **Liter (jet A)** | **0.812** | **kilograms**         |
|                                                     | **Liter (jet A)** | **1.794** | **pounds**            |
|                                                     |                   |           |                       |
| **Illumination**                                    | candles           | 1         | lumens/steradian      |
|                                                     | candles/cm^2^     | \(\pi\)     | lamberts              |
|                                                     | candlepower       | 12.566    | lumens                |
|                                                     | foot-candles      | 1         | lumens/ft^2^          |
|                                                     | foot-candles      | 10.764    | lux                   |
|                                                     | foot-lamberts     | 1         | lumen/ft^2^           |
|                                                     | lamberts          | 295.72    | candles/ft^2^         |
|                                                     | lamberts          | 929.03    | lumens/ft^2^          |
|                                                     | lumens            | 0.001 496  | watts                 |
|                                                     | lumens/in^2^      | 1         | fots                  |
|                                                     | lumens/m^2^       | 1         | lux                   |
|                                                     | lux               | 1         | meter-candles         |
|                                                     | lux               | 0.0001    | fots                  |
|                                                     | meter-candles     | 1         | lumens/m^2^           |
|                                                     | millilamberts     | 0.2957    | candles/ft^2^         |
|                                                     | millilamberts     | 0.929     | foot-lamberts         |
|                                                     | milliphots        | 0.929     | foot-candles          |
|                                                     | milliphots        | 0.929     | lumens/ft^2^          |
|                                                     | milliphots        | 10        | meter-candles         |
|                                                                                                                 |                    |                  |                    |
| **Length**                                                                                                      | ångströms          | 10^-10^          | meters             |
|                                                                                                                 | astronomical units | 1.496x10^11^     | meters             |
|                                                                                                                 | cable lengths      | 120              | fathoms            |
|                                                                                                                 | caliber            | 0.01             | inches             |
|                                                                                                                 | cubit              | 0.4572           | meters             |
|                                                                                                                 | fermi              | 10^-15^          | meters             |
|                                                                                                                 | fathoms            | 6                | feet               |
|                                                                                                                 | feet               | 12               | inches             |
| ^[The foot is defined as exactly 0.3048 meters <https://www.nist.gov/pml/us-surveyfoot>]                        | **feet**           | **0.3048**       | **meters**         |
|                                                                                                                 | furlongs           | 40               | rods               |
|                                                                                                                 | hands              | 4                | inches             |
|                                                                                                                 | **inches**         | **2.54**         | **cm**             |
|                                                                                                                 | **kilometers**     | **3281**         | **feet**           |
|                                                                                                                 | **kilometers**     | **0.539 96**      | **nautical miles** |
|                                                                                                                 | leagues (U.S.)     | 3                | nautical miles     |
|                                                                                                                 | light years        | 5.88x10^12^      | statute miles      |
|                                                                                                                 | links (engnr's)    | 12               | inches             |
|                                                                                                                 | links (srvyr's)    | 7.92             | inches             |
|                                                                                                                 | **meters**         | **3.280 84**      | **feet**           |
|                                                                                                                 | **meters**         | **39.370 079**    | **inches**         |
|                                                                                                                 | microns            | 10^-6^           | meters             |
|                                                                                                                 | mils               | 10^-3^           | inches             |
|                                                                                                                 | **nautical miles** | **1.150 78**      | **statute miles**  |
| ^[The SI defines the nautical mile as exactly 1852 meters. <https://www.bipm.org/en/publications/si-brochure/>] | **nautical miles** | **1,852**        | **meters**         |
|                                                                                                                 | **nautical miles** | **6,076.115 486** | **feet**           |
|                                                                                                                 | paces              | 0.762            | meters             |
|                                                                                                                 | parsec             | 1.9163x10^13^    | statute miles      |
|                                                                                                                 | perch              | 5.0292           | meters             |
|                                                                                                                 | pica (printers)    | 0.004 217 5176     | meters             |
|                                                                                                                 | point (printers)   | 0.000 351 4598     | meters             |
|                                                                                                                 | pole (=rod)        | 5.0292           | meters             |
|                                                                                                                 | skein              | 109.728          | meters             |
|                                                                                                                 | **statute miles**  | **5,280**        | **feet**           |
|                                                                                                                 | **statute miles**  | **1.609 344**     | **kilometers**     |
|                                                                                                                 | statute miles      | 8                | furlongs           |
|                                                                                                                 | yards              | 3                | feet               |
|                                                                                                                 |                    |                  |                    |
|                         |                |               |                   |
| **Linear Acceleration** | feet/sec^2^    | 1.097 28       | kilometers/hr/sec |
|                         | feet/sec^2^    | 0.3048        | meters/sec^2^     |
|                         | feet/sec^2^    | 0.6818        | mph/sec           |
|                         | **g**          | **32.174 049** | **feet/sec^2^**   |
|                         | **g**          | **9.806 65**   | **meters/sec^2^** |
|                         | gals (Galileo) | 0.01          | meters/sec^2^     |
|                         | knots/sec      | 1.6878        | feet/sec^2^       |
|                         | meters/sec^2^  | 3.6           | kilometers/hr/sec |
|                         | mph/sec        | 0.447         | meters/sec^2^     |
|                         | mph/sec        | 1.609         | kilometers/hr/sec |
|          |                                  |                 |                   |
| **Mass** | carats                           | 200             | milligrams        |
|          | grams                            | 0.035 274        | ounces            |
|          | grains                           | 6.479 891x10^-5^ | kilograms         |
|          | hundredweight (long or Imperial) | 50.80           | kilograms         |
|          | hundredweight (short)            | 45.359 237       | kilograms         |
|          | **kilograms**                    | **0.068 52**     | **slugs**         |
|          | kilograms                        | 6.024x10^26^    | atomic mass units |
|          | **kilograms**                    | **2.2046**      | **pounds**        |
|          | ounces (avd)                     | 28.349 523 125    | grams             |
|          | ounces (troy)                    | 31.103 4768      | grams             |
|          | pounds (mass)                    | 1               | pounds (force)    |
|          | **pounds (mass)**                | **0.453 592 37**  | **kilograms**     |
|          | **pounds (mass)**                | **0.031 081**    | **slugs**         |
|          | scruples (apoth)                 | 0.001 295 9782    | kilograms         |
|          | **slugs**                        | **32.174**      | **pounds**        |
|          | **slugs**                        | **14.594**      | **kilograms**     |
|          | tons (long)                      | 1016.047        | kilograms         |
|          | tons (assay)                     | 0.029 16         | kilograms         |
|          | tons (metric)                    | 1000            | kilograms         |
|          | tons (short)                     | 907.1847        | kilograms         |
|                        |                |              |                   |
| **Moments of Inertia** | gram-cm^2^     | 0.737x10^-7^ | slug-ft^2^        |
|                        | pound-ft^2^    | 0.031 081     | slug-ft^2^        |
|                        | slug-in^2^     | 0.006 9444    | slug-ft^2^        |
|                        | **slug-ft^2^** | **1.3546**   | **kg-m^2^**       |
|                        | **slug-ft^2^** | **32.174**   | **pound-ft^2^**   |
|                        | slug-ft^2^     | 12.00        | pound-inch-sec^2^ |
|                        | slug-ft^2^     | 192.00       | ounce-inch-sec^2^ |
|           |                         |              |                         |
| **Power** | btu/min                 | 0.017 58      | kilowatts               |
|           | calories(kg)/min        | 3087.46      | foot-pounds/min         |
|           | ergs/sec                | 7.376x10^-8^ | foot-pounds/sec         |
|           | ft(lbs)/min             | 2.260x10-^5^ | kilowatts               |
|           | ft(lbs)/sec             | 0.077 12      | btu/min                 |
|           | ft(lbs)/sec             | 1.356        | watts                   |
|           | **horsepower**          | **550**      | **ft(lb)/sec**          |
|           | **horsepower**          | **33,000**   | **ft(lbs)/min**         |
|           | horsepower              | 10.69        | calories (kg)/min       |
|           | **horsepower**          | **745.7**    | **watts **              |
|           | **horsepower (metric)** | **735.5**    | **watts**               |
|           | **horsepower**          | 1.1014       | **horsepower (metric)** |
|           | **kilowatts**           | **1.341**    | **horsepower**          |
|           | watts                   | 10^7^        | ergs/sec                |
|           | watts                   | 1            | Joules/sec              |
|              |                     |                |                  |
| **Pressure** | **atmospheres**     | **14.696**     | **pounds/in^2^** |
|              | **atmospheres**     | **29.92**      | **inches of Hg** |
|              | atmospheres         | 760            | mm of Hg         |
|              | bars                | 10^6^          | dynes/cm^2^      |
|              | **bars**            | **29.52**      | **inches of Hg** |
|              | **barye**           | **0.1**        | **Newtons/m^2^** |
|              | dynes/cm^2^         | 10             | Newtons/m^2^     |
|              | **inches of H~2~O** | **5.202 37**    | **pound/ft^2^**  |
|              | **inches of Hg**    | **70.726 19**   | **pounds/ft^2^** |
|              | inches of Hg        | 0.491 154       | pounds/in^2^     |
|              | inches of Hg        | 13.595         | inches of H~2~O  |
|              | **kiloPascals**     | **100**        | **bars**         |
|              | **hectoPascals**    | **1**          | **millibars**    |
|              | **millibars**       | **0.029 53**    | **inches of Hg** |
|              | mm of Hg            | 0.019 337       | pounds/in^2^     |
|              | mm of Hg            | 133.32         | Newtons/m^2^     |
|              | **Pascals**         | **1**          | **Newton/m^2^**  |
|              | pieze               | 1000           | Newtons/m^2^     |
|              | **pounds/ft^2^**    | **0.014 14**    | **inches of Hg** |
|              | **pounds/ft^2^**    | **47.88**      | **Newtons/m^2^** |
|              | **pounds/in^2^**    | **2.036**      | **inches of Hg** |
|              | pounds/in^2^        | 27.681         | inches of H~2~O  |
|              | **pounds/in^2^**    | **6894.757 28** | **Pascal**       |
|              | torrs               | 133.32         | Newtons/m^2^     |
|                 |                   |                                  |                 |
| **Temperature** | **Kelvin**        | **Celsius + 273.15**             |                 |
|                 | **Rankine**       | **Fahrenheit + 459.67**          |                 |
|                 | **Celsius**       | (**Fahrenheit - 32**) \* **5/9** |                 |
|                 | **Fahrenheit**    | (**9/5** \* **Celsius) + 32**    |                 |
|                 |                   |                                  |                 |
| **Time**        | days (solar)      | 24                               | hours           |
|                 | days (sidereal)   | 23.934                           | hours           |
|                 | days (solar)      | 1.0027                           | days (sidereal) |
|                 | hours             | 60                               | minutes         |
|                 | minutes           | 60                               | seconds         |
|                 | months (sidereal) | 27d + 7hr + 43min + 11.47sec     |                 |
|                 | months (lunar)    | 29d + 12hr + 44min + 2.78sec     |                 |
|                 | year              | 365.242 198 79                     | days            |
|            |                 |            |                   |
| **Torque** | **foot-pounds** | **1.3558** | **Newton-meters** |
|            | foot-pounds     | 0.1383     | kilogram-meters   |
|            | ounce-inches    | 72.008     | gram-centimeters  |
|            | pound-inches    | 1129800    | dyne-centimeters  |
|              |                 |              |                |
| **Velocity** | inches/sec      | 0.0254       | meters/sec     |
|              | **km/hr**       | **0.621 371** | **mph**        |
|              | **km/hr**       | **0.9113**   | **feet/sec**   |
|              | **knots**       | **1.687 81**  | **feet/sec**   |
|              | **knots (kts)** | **1.150 78**  | **mph**        |
|              | **knots (kts)** | **1.852**    | **km/hr**      |
|              | **knots (kts)** | **0.514 44**  | **meters/sec** |
|              | meters/sec      | 3.281        | ft/sec         |
|              | **meters/sec**  | **3.6**      | **km/hr**      |
|              | **meters/sec**  | **196.85**   | **feet/min**   |
|              | mph             | 1.466 667     | feet/sec       |
|               |                  |           |                    |
| **Viscosity** | centistokes      | 10^-6^    | m^2^/sec           |
|               | ft^2^/sec        | 0.0929    | m^2^/sec           |
|               | pound sec/ ft^2^ | 47.880 258 | Newton secs/m^2^   |
|               | poise            | 0.1       | Newton secs/m^2^   |
|               | rhe              | 10        | m^2^/Newton second |
|            |                     |                |                 |
| **Volume** | acre-feet           | 43,560         | ft^3^           |
|            | acre-feet           | 1,233          | m^3^            |
|            | acre-feet           | 3.259x10^5^    | gals (U.S.)     |
|            | barrels             | 31.5           | gals (U.S.)     |
|            | board-feet          | 144            | in^3^           |
|            | bushels             | 1.244          | ft^3^           |
|            | bushels             | 32             | quarts (dry)    |
|            | bushels             | 4              | pecks           |
|            | cm^3^               | 0.001          | liters          |
|            | cm^3^               | 0.033 81        | fluid ounces    |
|            | cm^3^               | 0.061 02        | in^3^           |
|            | cord-feet           | 4x4x1          | ft^3^           |
|            | cords               | 128            | ft^3^           |
|            | cups                | 0.5            | pints (liquid)  |
|            | dram (fluid)        | 3.696 69x10^-6^ | m^3^            |
|            | **ft^3^**           | **0.028 3167**  | **m^3^**        |
|            | ft^3^               | 1728           | in^3^           |
|            | ft^3^               | 28.32          | liters          |
|            | **ft^3^**           | **7.481**      | **gals (U.S.)** |
|            | **gals (Imperial)** | **1.2009**     | **gals (U.S.)** |
|            | gals (Imperial)     | 277.42         | in^3^           |
|            | gals (U.K.)         | 4546.1         | cm^3^           |
|            | **gals (U.S.)**     | **231**        | **in^3^**       |
|            | **gals (U.S.)**     | **0.003 785**   | **m^3^**        |
|            | **gals (U.S.)**     | **3.785**      | **liters**      |
|            | gals (U.S.)         | 4              | quarts (liquid) |
|            | gals (U.S.)         | 0.023 8095      | barrels (U.S.)  |
|            | gills               | 7.219          | in^3^           |
|            | hogshead            | 2              | barrels         |
|            | in^3^               | 16.39          | cm^3^           |
|            | liters              | 0.028 38        | bushels         |
|            | liters              | 0.9081         | quarts (dry)    |
|            | liters              | 1.057          | quarts (liquid) |
|            | liters              | 1000           | cm^3^           |
|            | liters              | 61.03          | in^3^           |
|            | m^3^                | 1.308          | yd^3^           |
|            | m^3^                | 1000           | liters          |
|            | m^3^                | 264.2          | gals (U.S.)     |
|            | **m^3^**            | **35.314 667**  | **ft^3^**       |
|            | mil-feet (circ.)    | 0.000 1545      | cm^3^           |
|            | ounces (U.K.)       | 28.413         | cm^3^           |
|            | ounces (U.S.)       | 29.574         | cm^3^           |
|            | pecks               | 8              | quarts (dry)    |
|            | pecks               | 8.81           | liters          |
|            | perches             | 0.7008         | m^3^            |
|            | perches             | 24.75          | ft^3^           |
|            | pints (dry)         | 33.60          | in^3^           |
|            | pints (liquid)      | 28.88          | in^3^           |
|            | pints (liquid)      | 4              | gals            |
|            | quarts (dry)        | 1.164          | quarts (liquid) |
|            | quarts              | 2              | pints           |
|            | register tons       | 100            | ft^3^           |
|            | shipping ton (U.S.) | 40             | ft^3^           |
|            | shipping ton (Br.)  | 42             | ft^3^           |
|            | steres              | 1000           | liters          |
|            | tablespoons         | 0.0625         | cups            |
|            | teaspoons           | 0.3333         | tablespoons     |

## Greek Alphabet

| Uppercase                   | \(\LaTeX{}\) Command          | Lowercase                   |   \(\LaTeX{}\) Command       | Name    | Say         |
|-----------------------------|---------------------------|-----------------------------|---------------------------|---------|-------------|
| \(Α\)                         | Α                         | \(\alpha\)                    | \\alpha                   | Alpha   | æl-fə       |
| \(Β\)                         | Β                         | \(\beta\)                     | \\beta                    | Beta    | bei-tə      |
| \(\Gamma\) or \(\varGamma\)     | \\Gamma or \\varGamma     | \(\gamma\)                    | \\gamma                   | Gamma   | gæ-mə       |
| \(\Delta\) or \(\varDelta\)     | \\Delta or \\varDelta     | \(\delta\)                    | \\delta                   | Delta   | del-tə      |
| \(Ε\)                         | Ε                         | \(\epsilon\) or \(\varepsilon\) | \\epsilon or \\varepsilon | Epsilon | eps-ill-aan |
| \(Ζ\)                         | Ζ                         | \(\zeta\)                     | \\zeta                    | Zeta    | zei-tə      |
| \(Η\)                         | Η                         | \(\eta\)                      | \\eta                     | Eta     | ei-tə       |
| \(\Theta\) or \(\varTheta\)     | \\Theta or \\varTheta     | \(\theta\) or \(\vartheta\)     | \\theta or \\vartheta     | Theta   | thei-tə     |
| \(Ι\)                         | Ι                         | \(\iota\)                     | \\iota                    | Iota    | aai-oh-tə   |
| \(Κ\)                         | Κ                         | \(\kappa\) or \(\varkappa\)     | \\kappa or \\varkappa     | Kappa   | kæ-pə       |
| \(\Lambda\) or \(\varLambda\)   | \\Lambda or \\varLambda   | \(\lambda\)                   | \\lambda                  | Lambda  | læm-də      |
| \(M\)                         | M                         | \(\mu\)                       | \\mu                      | Mu      | myoo        |
| \(Ν\)                         | Ν                         | \(\nu\)                       | \\nu                      | Nu      | nyoo        |
| \(\Xi\) or \(\varXi\)           | \\Xi or \\varXi           | \(\xi\)                       | \\xi                      | Xi      | ksaai       |
| \(Ο\)                         | Ο                         | \(ο\)                         | ο                         | Omicron | oh-mə-kraan |
| \(\Pi\) or \(\varPi\)           | \\Pi or \\varPi           | \(\pi\) or \(\varpi\)           | \\pi or \\varpi           | Pi      | paai        |
| \(P\)                         | P                         | \(\rho\) or \(\varrho\)         | \\rho    or \\varrho      | Rho     | roh         |
| \(\Sigma\) or \(\varSigma\)     | \\Sigma or \\varSigma     | \(\sigma\) or \(\varsigma\)     | \\sigma or \\varsigma     | Sigma   | sig-mə      |
| \(Τ\)                         | Τ                         | \(\tau\)                      | \\tau                     | Tau     | taa’u       |
| \(\Upsilon\) or \(\varUpsilon\) | \\Upsilon or \\varUpsilon | \(\upsilon\)                  | \\upsilon                 | Upsilon | oops-ill-on |
| \(\Phi\) or \(\varPhi\)         | \\Phi or \\varPhi         | \(\phi\) or \(\varphi\)         | \\phi   or \\varphi       | Phi     | faai        |
| \(Χ\)                         | Χ                         | \(\chi\)                      | \\chi                     | Chi     | kaai        |
| \(\Psi\) or \(\varPsi\)         | \\Psi or \\varPsi         | \(\psi\)                      | \\psi                     | Psi     | psaai       |
| \(\Omega\) or \(\varOmega\)     | \\Omega or \\varOmega     | \(\omega\)                    | \\omega                   | Omega   | oh-meg-ə    |

## Greek Symbols Used for Aircraft

|Symbol|Used For|
|:-|:-|
|\(\alpha\)       |angle of attack (degrees or radians)|
|\(\alpha_{\tau}\)    |tail angle of attack|
|\(\beta\)       |angle of sideslip (degrees)|
|\(\gamma\)       |flight path angle relative to horizontal|
|\(\gamma\)       |specific heat ratio (1.4 for air)|
|\(\delta\)       |relative pressure ratio ( \(\frac{P_a}{P_0}\))|
|\(\delta_a\)    |aileron deflection angle|
|\(\delta_r\)    |rudder deflection angle|
|\(\delta_e\)    |elevator deflection angle|
|\(\varepsilon\)       |downwash angle at tail (degrees)|
|\(\zeta\)       |damping ratio|
|\(\eta\)       |efficiency|
|\(\theta\)       |body axis/pitch angle|
|\(\theta\)       |relative temperature ratio, \(T_a / T_0\)|
|\(\iota\)       |angle of incidence|
|\(\iota_F\)  |thrust angle of incidence|
|\(\iota_T\)*  |horizontal tail angle of incidence|
|\(\lambda\)       |pressure lag constant|
|\(\Lambda\)       |wing sweep angle|
|\(\mu\)   |coefficient of absolute viscosity =\(\rho \nu\)|
|\(\mu\)   |Mach cone angle|
|\(\nu\)       |kinematic viscosity =\(\mu / g\)|
|\(\pi\)   |nondimensional parameter|
|\(\rho\)       |density|
|\(\rho_a\)  |ambient air density|
|\(\rho_0\)  |standard atmospheric density (slugs/ft^3 )|
|\(\sigma\)       |air density ratio \((\rho_{\alpha} / \rho_0)\)|
|\(\sigma_{\mathrm{cr}}\)   |critical density|
|\(\tau\)       |shear stress (pounds per square inch) psi|
|\(\tau_R\)    |Roll Mode Time Constant (sec)|
|\(\phi\)       |bank angle (degrees)|
|\(\psi\)       |aircraft heading (degrees)|
|\(\omega\)       |frequency|
|\(\omega\)       |rotational velocity (radians per second)|
|\(\omega_d\) |damped natural frequency|
|\(\omega_n\)  |natural undamped frequency|

## Common Subscripts

|Subscript|Meaning|
|:-|:-|
|*a* |aileron|
|*a* |ambient|
|\(\mathrm{alt}\) |at test altitude|
|\(\mathrm{avg}\) |average|
|*c* |calibrated|
|*e* |elevator|
|*e* |equivalent|
|*E* |endurance leg of mission|
|*F* |final|
|*I* |initial|
|*i* |inbound leg of mission|
|*i* |indicated|
|\(\mathrm{ic}\) |instrument corrected|
|*l* |subscript for coefficient of rolling moment|
|*m* |mission conditions|
|*m* |pitching moment|
|*n* |yawing moment|
|*O* |outbound leg of mission|
|*0* |sea-level standard day|
|*0* |sea level|
|*r* |reserve leg of mission|
|*r* |rudder|
|*S* |standard day|
|*s* |standard day at altitude|
|\(\mathrm{SL}\) |sea level|
|*T* |True|
|*t* |test day|

## Common Abbreviations

|Abbreviation|Meaning|
|:-|:-|
|\(a\) |lift curve slope|
|\(a\) |linear acceleration (ft/sec^2^ or m/sec^2^)|
|\(a\) |speed of sound|
|A/A |air-to-air|
|a/c |aircraft|
|AAA |anti aircraft artillery|
|AC |aerodynamic center|
|ac |alternating current|
|ACM |air combat maneuvering|
|A/D |analog to digital|
|ADC |air data computer|
|ADC |analog-to-digital converter|
|ADF |automatic direction finder|
|ADI |attitude direction indicator|
|AFMC |Air Force Materiel Command|
|AFOTEC |Air Force Operational Test and Evaluation Center|
|A/G |air-to-ground|
|AGL |above ground level|
|AHRS |attitude heading reference system|
|AM |amplitude modulation|
|AOA |angle of attack|
|AOED |age of ephemeris data|
|APU |auxiliary power unit|
|AR |air refuel (mode of flight)|
|AR |aspect ratio = b^2^ / S|
|ARDP |advanced radar data processor|
|ARSP |advanced radar signal processor|
|ASPJ |airborne self protection jammer|
|ATC |air traffic control|
|avg |average|
|\(a_x\) |longitudinal acceleration|
|\(a_y\) |lateral acceleration|
|AZ |azimuth|
|\(b\) |span of wing (feet)|
|B/N |bombardier/navigator|
|bbl |barrel|
|BHP |brake horsepower|
|BICOMS |bistatic coherent measurement system|
|BID |bus interface device|
|BIT |built-in test|
|BSFC |brake specific fuel consumption|
|Btu |British thermal unit|
|BW |bandwidth|
|°C |degrees centigrade (see T) |
|\(c\) |brake specific fuel consumption (BSFC)|
|\(c\) |speed of light in a vacuum (186,282 miles/sec = 299,792,500 [m/s])|
|\(c\) |mean aerodynamic chord (MAC) of a wing|
|C/A |coarse acquisition|
|\(C/N_0\) |carrier to noise ratio|
|CADC |central air data computer|
|CARD |cost analysis requirement document|
|\(C_D\) |coefficient of drag|
|\(C_{D_i}\) |induced drag coefficient|
|\(C_{D_0}\) |zero lift drag coefficient (also parasitic drag coefficient for symmetric wing)|
|CDI |course deviation indicator|
|CDMA |code division multiplex access|
|CDR |critical design review|
|CDRL |contracts data requirement list|
|CDU |control display unit|
|CEA |circular error average|
|CEP |circular error probable|
|\(C_f\) |coefficient of friction|
|CFE |contractor furnished equipment|
|CFT |conformal fuel tank|
|cg |center of gravity (normally in % MAC)|
|\(C_H\) |hinge moment coefficient|
|cine |cinetheodolite|
|\(C_l\) |rolling moment coefficient, airfoil section lift coefficient|
|\(C_L\) |lift coefficient|
|CLHQ |closed loop handling qualities|
|\(C_{\mathrm{lp}}\) |roll damping coefficient|
|\(C_{\mathrm{lr}}\) |roll moment due to yaw rate coefficient|
|\(C_m\) |pitching moment coefficient|
|\(C_M\) |moment coefficient|
|cm |centimeters|
|cos |cosine|
|cot |cotangent|
|\(C_{l_{\beta}}\) |(dihedral) rolling moment due to sideslip|
|\(C_{l_{\delta_a}}\) |aileron power coefficient|
|\(C_{m_q}\) |pitch damping coefficient|
|\(C{m_{\alpha}}\) |longitudinal static stability coefficient|
|\(C{m_{\delta e}}\) |elevator power coefficient|
|\(C_n\) |yawing moment coefficient|
|\(C_{n_r}\) |yaw damping coefficient|
|cnst |constant|
|\(C_{n_{\beta}}\) |directional stability coefficient|
|\(C_{n_{\delta a}}\) |adverse yaw coefficient|
|\(C_{n_{\delta r}}\) |rudder power coefficient|
|COTS |commercial, off--the-shelf|
|CP |center of pressure|
|\(C_P\) |propeller power coefficient|
|CPU |central processing unit|
|\(c_r\) |wing root chord|
|CRM |crew resource management|
|\(c_t\) |wing tip chord|
|CTF |combined test force|
|CY |calendar year|
|\(C_Y\) |side force coefficient|
|\(C_{Y_{\beta}}\) |side force due to sideslip coefficient|
|\(C_{Y_{\delta r}}\) |side force due to rudder coefficient|
|D |diameter|
|D |drag|
|D/A |digital/analog|
|DAC |digital to analog converter|
|DAPS |data acquisition and processing system|
|DARPA |Defense Advanced Research Projects Agency|
|db |decibel|
|DC |direct current|
|deg |degrees|
|DG |directional gyro|
|DGPS |differential GPS|
|DMA |Defense Mapping Agency|
|DME |distance measuring equipment|
|DoD |Department of Defense|
|DOP |dilution of precision|
|DSN |defense switched network|
|DT |development test|
|DTC |data transfer cartridge|
|DTIC |Defense Technical Information Center|
|\(e\) |Oswald efficiency factor|
|\(\mathrm{e}\) |natural mathematical constant = 2.718 281 828 459|
|E |energy|
|E |lift-to-drag ratio ( \(C_L / C_D\) , \(L/D\) )|
|EAS |equivalent airspeed|
|EC |electronic combat|
|ECCM |electronic counter countermeasures|
|ECM |electronic countermeasures|
|ECP |engineering change proposal|
|ECS |environmental control system|
|EGT |exhaust gas temperature|
|EL |elevation|
|ELINT |electronic intelligence|
|ELV |expendable launch vehicle|
|EM |electromagnetic|
|\(E_{\mathrm{max}}\) |maximum lift-to-drag ratio|
|EMC |electromagnetic compatibility|
|EMI |electromagnetic interference|
|EMP |electromagnetic pulse|
|EO |electro optical|
|EOM |equations of motion|
|EPR |engine pressure ratio|
|EPROM |electrically programmable read only memory|
|\(E_s\) |specific energy|
|ESA |European Space Agency|
|ESD |Electronic Systems Division|
|ESHP |equivalent shaft horsepower|
|ETA |estimate time of arrival|
|ETE |estimate time en-route|
|EW |early warning|
|EW |electronic warfare|
|°F |degrees Fahrenheit|
|\(f\) |frequency...hertz (originally cycles per second)|
|F.S. |fuselage station|
|\(F_a\) |aileron force|
|FAA |Federal Aviation Administration|
|FAR |Federal Aviation Regulation|
|FCF |functional check flight|
|FDC |flight data computer|
|\(F_e\) |elevator force|
|\(F_{\mathrm{ex}}\) |excess thrust|
|\(F_g\) |gross thrust|
|FL |flight level|
|FLIP |flight information publication|
|FLIR |forward-looking infrared|
|FM |frequency modulation|
|FMC |fully mission capable|
|FMS |flight management system|
|FMS |foreign military sales|
|\(F_n\) |net thrust|
|\(F_n / \delta\) |corrected thrust parameter|
|FOM |figure of merit|
|FOT&E |follow-on test & evaluation|
|FOUO |for official use only|
|FOV |field of view|
|fpm |feet per minute|
|fps |feet per second|
|FQT |formal qualification test|
|\(F_r\) |rudder force|
|FRD |functional requirements document|
|FRL |fuselage reference line|
|FRL |force, rudder, left|
|FRR |force, rudder, right|
|FRR |flight readiness review|
|FSD |full scale development|
|FSI |full scale integration|
|ft |feet|
|ft-lb |English unit of work\...foot-pound\...|
|fwd |forward|
|FY |fiscal year|
|\(g\) |acceleration due to gravity at altitude|
|\(G\) |gravitational constant = 6.6732x10^-11^ [N m^2^/kg^2^]|
|GAO |Government Accounting Office|
|GCA |ground control approach|
|GCI |ground controlled intercept|
|GDOP |geometric dilution of precision|
|GMT |Greenwich mean time|
|\(g_0\) |standard acceleration due to gravity (sea level, 46 deg latitude)|
|GPS |global positioning system|
|GS |ground speed|
|GSI |glide slope indicator|
|\(h\) |% MAC|
|\(H\) |altitude|
|HARM |high-speed anti-radiation missile|
|\(H_c\) |calibrated altitude (assumed to be pressure altitude in flight test)|
|\(H_D\) |density altitude|
|HDDR |high density digital recorder|
|HDOP |horizontal dilution of precision|
|HF |high frequency|
|Hg |mercury|
|\(H_i\) |indicated altitude|
|\(h_m\) |stick-fixed maneuver point (%MAC)|
|\(h_{'m}\) |stick-free maneuver point (%MAC)|
|\(h_n\) |stick-fixed neutral point (%MAC)|
|\(h_{'n}\) |stick-free neutral point (%MAC)|
|hp |horsepower|
|hr |hour|
|hrs |hours|
|HSI |horizontal situation indicator|
|HUD |head-up display|
|HV |host vehicle|
|Hz |hertz|
|I/O |input/output|
|IAS |indicated airspeed|
|IAW |in accordance with|
|ICAO |International Civilian Aviation Organization|
|ICU |interface computer unit|
|ICBM |intercontinental ballistic missile|
|IFF |identification friend or foe|
|IFR |instrument flight rules|
|ILS |instrument landing system|
|IMC |instrument meteorological conditions|
|IMN |indicated Mach number|
|IMU |inertial measuring unit|
|in |inch|
|INS |inertial navigation system|
|INU |inertial navigation unit|
|IOC |initial operational capability|
|IOT&E |initial operational test & evaluation|
|IUGG |International Union of Geodesy and Geographics|
|\(I_x \text{, } I_x\text{, } I_z\) |moments of inertia|
|\(I_{xy}\text{, }I_{xz}\text{, } I_{yz}\) |products of inertia|
|J |joules energy, (Newton-Meter)|
|J |propeller advance ratio|
|J&S |jamming and spoofing|
|JCS |Joint Chiefs of Staff|
|K |Kelvin (absolute temperature)|
|K |temperature probe recovery factor|
|\(K\text{, }k\) |constants|
|KCAS |knots calibrated airspeed|
|KEAS |knots equivalent airspeed|
|kg |kilogram, metric unit of mass|
|KIAS |knots indicated airspeed|
|KISS |keep it simple, stupid|
|km |kilometer|
|KTAS |knots true airspeed|
|kt |knots|
|\(L\) |Lift (lbs)|
|\(l\) |length|
|\(L\) |rolling moment|
|L/D |Lift-to-drag ratio|
|LANTIRN |low altitude navigation and targeting IR for night|
|lat |lateral|
|lb |pound|
|lb~f~ |English unit of force, often just lb (pound)|
|lb~m~ |English unit of mass, often just lb (slug)|
|LCC |life cycle cost|
|LCD |liquid crystal display|
|LED |light emitting diode|
|LLH |latitude, longitude, height|
|\(\ln\) |natural log, log to the base \(\mathrm{e}\)|
|LO |low observables|
|Log |common log, to the base 10|
|LOS |line of sight|
|\(l_t\) |distance from \(cg\) to tail's aerodynamic cent|
|\(L_{\delta a}\) |rolling moment due to aileron deflection|
|\(M\) |moment (ft-lbs)|
|\(M\) |Mach number|
|\(m\) |mass|
|m |meter (length)|
|\(M\) |pitching moment|
|MAG |magnetic|
|MAP |manifold pressure|
|mb |millibar|
|MCA |minimum crossing altitude|
|\(M_{\mathrm{cr}}\) |critical Mach number|
|\(M_d\) |drag divergence Mach number|
|\(M_{\mathrm{ac}}\) |mean aerodynamic cord|
|\(M_{\mathrm{GC}}\) |mean geometric chord|
|MHz |megahertz|
|mHZ |millihertz|
|\(M_{\mathrm{ic}}\) |instrument-corrected Mach number|
|MilSpec |military specification|
|MIL-STD |military standard (publication)|
|min |minute (time)|
|mm |millimeter|
|MOA |memorandum of agreement|
|MOE |measure of effectiveness|
|MOP |measures of performance|
|MOU |memorandum of understanding|
|MP |manifold pressure|
|MSL |mean sea level|
|MTBF |mean time between failures|
|MTTR |mean time to repair|
|MX |maintenance|
|N |newton (force)|
|\(N\) |rotational speed (RPM)|
|\(n\) |load factor (g\'s)|
|\(N\) |yawing moment|
|\(N_1\) |low pressure compressor speed|
|\(N_2\) |high pressure compressor speed|
|NACA |National Advisory Committee for Aeronautics|
|NADC |Naval Air Development Center|
|NASA |National Aeronautics and Space Administration|
|NAV |navigation|
|NED |North, East, Down|
|NM, nm |nautical mile (6080 feet)|
|NOE |nap-of-the-earth|
|NOFORN |not releasable to foreign nationals|
|NOTAM |notice to airmen|
|NRC |National Research Council (Canada)|
|NWC |Naval Weapons Center|
|\(N_x\) |longitudinal load factor (g\'s)|
|\(N_y\) |lateral load factor (g\'s)|
|\(N_z\) |normal load factor (g\'s)|
|OAT |outside air temperature|
|OAT |on aircraft test|
|OEI |One engine inoperative|
|OPR |Office of Primary Responsibility|
|OSD |Office of the Secretary of Defense|
|OT&E |operational test & evaluation|
|\(p\) |aircraft roll rate (degrees/sec)|
|\(P\) |pressure (N/m^2^ ,pounds per square inch)|
|\(P_a\) |ambient pressure|
|PCM |pulse code modulation
|P-code |precision code|
|PD |pulse Doppler|
|PDM |pulse duration modulation|
|PGM |precision guided munitions|
|PIO |pilot induced oscillations|
|\(P_{\mathrm{iw}}\) |total thrust horsepower required|
|Pk |probability of kill|
|PLF |power for level flight|
|\(P_0\) |standard atmospheric pressure (2116.22 lb/ft^2^ )|
|POC |point of contact|
|\(P_p\) |pitot pressure|
|ppm |parts per million|
|Prop |propeller|
|\(P_s\) |specific power|
|\(P_s\) |static pressure|
|PS |pulse search|
|psf |pounds per square foot|
|psi |pounds per square inch|
|\(P_T\) |total pressure|
|PW |pulse width|
|\(Q\) or \(q\) |dynamic pressure = \(0.5 \rho V^2\) |
|q |aircraft pitch rate|
|Q |engine torque|
|\(q_c\) |impact pressure (\(P_t − P_a\))|
|°R |degrees Rankine = °F + \(459.67\)|
|R |perfect gas constant = \( 8314.34 \left[ \text{J/kmol K} \right] \)|
|r |aircraft yaw rate (degrees/sec)|
|R |earth radius|
|R |range|
|R&D |research and development|
|R&M |reliability and maintainability|
|R/C |rate of climb|
|rad |radians|
|Radar |radio detection and ranging|
|RAF |resultant aerodynamic force|
|RAM |radar absorbing material|
|RAT |ram air turbine|
|RCS |radar cross section|
|Re |Reynolds number (dimensionless)|
|REP |range error probable|
|RF |range factor|
|RLG |ring laser gyro|
|rms |root mean square|
|RNG |range|
|ROC |rate of climb|
|ROC |required obstacle clearance|
|RPM |revolutions per minute (a.k.a. N)|
|R/T |receiver/transmitter|
|RTO |Rejected/refused takeoff|
|RTO |responsible test organization|
|\(S\) |wing area (ft^2^ or m^2^)|
|\(S_a\) |horizontal distance between liftoff and specified height or between specified height and touch down|
|SA |selective availability|
|SA |situational awareness|
|SE |specific endurance|
|sec |seconds (time or angle)|
|SFC |specific fuel consumption|
|\(S_g\) |ground roll distance|
|SHP |shaft horsepower|
|SI |international system of units|
|SIGINT |signal intelligence|
|sin |sine|
|SL |sea level|
|SLAM |standoff land attack missile|
|SLR |side-looking radar|
|S/N |serial number|
|S/N |signal -to-noise ratio|
|SOF |special operations forces|
|SOW |stand-off weapon|
|SR |specific range|
|SRB |safety review board|
|\(S_T\) |tail area|
|std |standard|
|\(S_T\) |total takeoff or landing distance \(S_a + S_g\))|
|STOL |short takeoff and landing|
|STOVL |short takeoff and vertical landing|
|\(T\) |period of oscillation|
|\(T\) |temperature|
|\(t\) |thickness|
|\(T\text{, }t\) |time (sec)|
|t/c |thickness-to-chord ratio|
|\(T_a\) |ambient temperature|
|TACAN |tactical air navigation|
|tan |tangent|
|\(T_{\mathrm{as}}\) |standard temperature at altitude|
|TAS |true airspeed|
|TBD |to be determined|
|TD |touchdown|
|TED |trailing edge down|
|TEL |trailing edge left|
|TEMP |test and evaluation master plan|
|TER |trailing edge right|
|TEU |trailing edge up|
|TF |terrain following|
|\({\mathrm{THP}}\) |Thrust Horsepower|
|\({\mathrm{THP}}_{\mathrm{alt}}\) |horsepower available at altitude|
|\({\mathrm{THP}}_{\mathrm{max}}\) |maximum horsepower available|
|\({\mathrm{THP}}_{\mathrm{min}}\) |minimum horsepower required|
|\({\mathrm{THP}}_{\mathrm{SL}}\) |horsepower required at sea level|
|TIT |turbine inlet temperature|
|TM |telemetry|
|TMN |true Mach number|
|T/O |takeoff|
|\(T_0\) |standard sea level temperature ( \(59.0°\)F, \(15°\)C)|
|TO |technical order|
|TRB |technical review board|
|TRD |technical requirements document|
|TRP |technical resources plan|
|TSFC |thrust specific fuel consumption|
|TSPI |time, space, position information|
|\(T_t\) |total temperature|
|TV |television|
|T/W |thrust to weight ratio|
|TWT |track while scan|
|TWT |traveling wave tube|
|\(u\) |velocity along aircraft\'s x-axis|
|UAV |uninhabited aerial vehicle|
|UHF |ultra high frequency|
|UPT |undergraduate pilot training|
|USA |US Army|
|USAF |US Air Force|
|USCG |US Coast Guard|
|USMC |US Marine Corps|
|USN |US Navy|
|UT |universal time|
|UV |ultraviolet|
|\(v\) |velocity along aircraft\'s lateral axis|
|\(V_H\) |horizontal tail volume coefficient|
|\(V_V\) |vertical tail volume coefficient|
|\(V_1\) |takeoff decision speed|
|\(V_2\) |takeoff safety speed|
|\(V_A\) |design maneuvering speed|
|VAC |volts AC|
|\(V_b\) |buffet airspeed|
|\(V_B\) |design speed for max gust intensity|
|\(V_{\mathrm{br}}\) |velocity for best range|
|\(V_c\) |calibrated airspeed|
|\(V_D\) |design diving speed|
|VDC |volts DC|
|VDOP |vertical dilution of precision|
|\(V_e\) |equivalent velocity|
|\(V_{\mathrm{FE}}\) |maximum flap extended speed|
|VFR |visual flight rules|
|\(V_g\)| ground speed|
|VHF |very high frequency|
|\(V_i\) |indicated airspeed|
|\(V_{\mathrm{ic}}\) |indicated airspeed corrected for instrument error|
|\(V_{\mathrm{iw}}\) |velocity at sea level std day and std weight|
|VLE |max speed with landing gear extended|
|\(V_{\mathrm{LO}}\) |max speed while operating landing gear|
|\(V_{\mathrm{LOF}}\) |lift off speed|
|VLSIC |very large scale integrated circuit|
|\(V_{\mathrm{mc}}\) |minimum directional control speed|
|VMC |visual meteorological conditions|
|\(V_{\mathrm{mca}}\) |minimum directional control speed in the air|
|\(V_{\mathrm{mcg}}\) |minimum directional control speed on the ground|
|\(V_mo/M_mo\) |maximum operating limit speed|
|\(V_{\mathrm{mu}}\) |minimum unstick speed|
|\(V_{\mathrm{NE}}\) |never exceed velocity|
|\(V_{\mathrm{no}}\) |max structural cruising speed|
|\(V_{\mathrm{opt}}\) |optimum velocity for endurance flight|
|VOR |VHF omni-directional range|
|VORTAC |VOR + TACAN|
|\(V_{P_{\mathrm{min}}}\) |velocity for minimum power|
|\(V_{P_{\mathrm{min}_{\mathrm{SL}}}}\) |velocity for minimum power at sea level|
|\(V_R\) |rotation speed|
|\(V_S\) |stall speed|
|\(V_{S_0}\) |stall speed in landing configuration|
|\(V_{S_1}\) |stall speed in some defined configuration|
|VSTOL |vertical/short takeoff and landing|
|\(V_T\) |true airspeed|
|VTOL |vertical takeoff & landing|
|VVI |vertical velocity indicator|
|\(V_W\) |wind velocity|
|\(V_X\) |speed for best angle of climb|
|\(V_Y\) |speed for best rate of climb|
|\(W\) |weight|
|\(w\) |component of velocity along aircraft\'s Z-axis|
|WDL |weapon data link|
|\(W / \delta\) |weight-to-pressure ratio|
|\(W_f\) |fuel weight|
|WGS-84 |World Geodetic System, 1984|
|WI |watch item|
|WIT |watch item|
|WOD |word of day|
|WOW |weight on wheels|
|WPT |waypoint|
|wrt |with respect to|
|\(\frac{\dot{W_f}}{\delta \sqrt{\theta}}\) |corrected fuel flow parameter|
|W/S |wing loading|
|\(W_f\) |fuel flow (lb/hr)|
|\(x\) |aircraft longitudinal axis, a line running through the nose & tail|
|\(X_{\mathrm{ac}}\) |distance from leading edge to aerodynamic center|
|Xlink |cross link|
|\(y\) |aircraft lateral axis, a line running the wingtips|
|\(Y\) |force along y-axis|
|Y-code |encrypted P-code|
|\(z\) |aircraft vertical or yaw axis, a line perpendicular to the longitudinal and lateral axes|
|\(\Delta H_{\mathrm{ic}}\) |altimeter instrument correction|
|\(\Delta H_{\mathrm{pc}}\) |altimeter position error correction|
|\(\Delta P_{p}\) |pitot pressure error|
|\(\Delta P_{s}\) |static pressure error|
|\(\Delta V_{c}\) |scale attitude correction to airspeed|
|\(\Delta V_{\mathrm{ic}}\) |instrument correction to airspeed indicator|
|\(\Delta V_{\mathrm{pc}}\) |correction for airspeed position error|
|\(\infty\) |infinity, or freestream conditions|

## Sign Conventions

(reference 1.8)

**Editor's note** There is near unanimous agreement on most sign conventions except for pilot inputs and control surface deflections. Although individual organizations generally are consistent in-house, confusion often arises when trying to mathematically translate inputs & deflections from one organization to another. This section documents the generally accepted "body axes" sign conventions then discusses the rationale for several viewpoints addressing the "inputs & deflections" debate. Below is the SFTE sign convention.

**Wind Axes Sign Convention**

Winds are listed according to the direction they are coming from. Airports refer winds to magnetic North while winds at altitude are typically referred to true North. Headwind is true airspeed minus ground speed. (\(V_w =V_T - V_g\)).


**Body Axes Sign Convention**

The generally accepted body axes sign convention is based on the establishment of a three-dimensional axis system with the following properties:

1. It is right-handed orthogonal

2. Its origin is at the vehicle\'s reference center of gravity (defined by builder).

3. The axis system moves with the airframe.

![][01002]

Translational displacements, rates, accelerations, & forces are positive along the positive body axes directions. In spite of the simplicity of this logic, it is important to recognize that lift and normal load factor are positive in the *negative z* direction and the drag is positive in the *negative x* direction.

Angular displacements, rates, accelerations & moments, are positive according to the "right hand rule" (a clockwise rotation while looking in the direction of the positive axis) as shown in the figure.

The body axes, forces & translations along them, and moments & rotations about them are shown with arrows indicating the positive direction.

Angular displacements, rates, accelerations & moments, are positive according to the "right hand rule" (a clockwise rotation while looking in the direction of the positive axis) as shown in the figure.

The body axes, forces & translations along them, and moments & rotations about them are shown with arrows indicating the positive direction.

![][01003]

Angle of attack is positive clockwise from the projection of the velocity vector on the *xz* plane to the reference *x* body axis. The angle of sideslip is positive clockwise from the *xz* plane to the velocity vector (wind in the pilot's right ear).

Aircraft *true* heading is the angle between *true* North and the projection of the x-body axis onto the horizontal plane. Mag. heading refers to mag North

The velocity vector is measured relative to the air mass while the flightpath is measured relative to the ground. They are equivalent only when winds are zero.

Flightpath heading angle (ground track heading) \(\sigma_g\), is the horizontal angle between true North and the projection of the flightpath on the horizontal plane. Positive rotation is from north to east.

Flightpath elevation angle; *γ*, is the vertical angle between the flightpath and the horizontal plane. Positive rotation is up. During a descent, this parameter is commonly known as glide path angle.

Flightpath bank angle; \(\mu\), is the angle between the plane formed by the velocity vector and the lift vector and the vertical plane containing the velocity vector. Positive rotation is clockwise about the velocity vector, looking forward.

Fuselage reference station (FRS), Water line (WL), and Buttock line (BL) are reference coordinates established by the design group.

  **Summary of Generally Accepted Body Axes Sign Convention**                
  ------------------------------------------------------------- ------------ --------------------------------------------------------
  **Parameter Name**                                            **Symbol**   **Positive Direction**
  Translational Measurements                                                 
  Longitudinal axis                                             x            from ref *cg* towards nose
  Lateral axis                                                  y            from reference *cg* towards right wing tip
  Vertical axis                                                 z            from reference *cg* towards vehicle bottom (body axis)
  Longitudinal velocity                                         u            along +x axis
  Lateral velocity                                              v            along +y axis
  Vertical velocity                                             w            along +z axis
  Long. acceleration                                            a~x~         along + x axis
  Lateral acceleration                                          a~y~         along +y axis
  Vertical acceleration                                         a~z~         along +z axis
  Longitudinal load factor                                      N~x~         along +x axis
  Lateral load factor                                           N~y~         along +y-axis
  Normal load factor                                            N~z~         along --z axis
  Longitudinal force                                            F~x~         along the +x axis
  Lateral force                                                 F~y~         along the +y axis
  Normal force                                                  F~z~         along the + z axis
  Drag force                                                    D            along the --x axis
  Side force                                                    Y            along the + y axis
  Lift Force                                                    L            along the --z axis

+-------------------------------------------------------------+------------+-------------------------+
| **Summary of Generally Accepted Body Axes Sign Convention** |            |                         |
+=============================================================+============+=========================+
| **Parameter Name**                                          | **Symbol** | **Positive Direction**  |
+-------------------------------------------------------------+------------+-------------------------+
| Angular Measurements                                        |            |                         |
+-------------------------------------------------------------+------------+-------------------------+
| Bank angle                                                  | *φ*        | right wing down         |
+-------------------------------------------------------------+------------+-------------------------+
| Pitch angle                                                 | *θ*        | nose-up                 |
+-------------------------------------------------------------+------------+-------------------------+
| Heading                                                     | *ψ*        | 0 North, +Eastward      |
+-------------------------------------------------------------+------------+-------------------------+
| Angle of attack                                             | *α*        | normal flight attitude  |
+-------------------------------------------------------------+------------+-------------------------+
| Angle of sideslip                                           | *β*        | "wind in the right ear" |
+-------------------------------------------------------------+------------+-------------------------+
| Roll rate                                                   | p          | right wing down         |
+-------------------------------------------------------------+------------+-------------------------+
| Pitch rate                                                  | q          | nose up                 |
+-------------------------------------------------------------+------------+-------------------------+
| Yaw rate                                                    | r          | nose right              |
+-------------------------------------------------------------+------------+-------------------------+
| Roll moment                                                 | *L*        | right wing down         |
+-------------------------------------------------------------+------------+-------------------------+
| Pitch moment                                                | *M*        | nose up                 |
+-------------------------------------------------------------+------------+-------------------------+
| Yaw moment                                                  | *N*        | nose right              |
+-------------------------------------------------------------+------------+-------------------------+
| Flightpath bank angle                                       | *$\mu$*        | right wing down         |
+-------------------------------------------------------------+------------+-------------------------+
| Flightpath elevation                                        | *γ*        | climb                   |
+-------------------------------------------------------------+------------+-------------------------+
| Flightpath heading                                          | *σ~g~*     | 0 true North, + East-   |
|                                                             |            |                         |
|                                                             |            | ward                    |
+-------------------------------------------------------------+------------+-------------------------+

Discussion of "Input & Deflection" Conventions

The debate regarding proper inputs and deflections stems from the user's viewpoint. From the body axis convention above, flight testers recognize that a climbing right turn generates positive angular measurements. Logically then, pull, right roll and right yaw pilot inputs and subsequent surface deflections should also be positive. The traditional flight tester's convention follows as "All input forces & displacements, surface deflections, and motions that cause a climbing right turn are positive."

Due to differential nature of aileron deflections, they require more discussion. The flight tester's logic implies (but does not dictate) positive deflections are right aileron up and left aileron down. It is, however, equally acceptable to assign downward (or upward) deflection as positive for [both]{.underline} ailerons and calculate the difference between the two as a measure of rolling moment.

The rationale within the wind tunnel community is also logical: any control surface deflection that increases lift is positive. From this, positive deflections are trailing edge down (TED) for each: trailing edge flap, stabilizer, elevator, stabilator, rollervator, ruddervator, canard, aileron, flaperon, and all their tabs. Leading edge flap down is also positive. Similarly, since side force is positive to the right, then positive rudder and rudder tab deflections are trailing left (TEL). The only exception to this straightforward logic is for spoilers and speed brakes that extend only in one direction: this deflection is positive even though it might decrease the lift.

Since the above rationale defines downward deflection as positive for both ailerons, a measurement of rolling moments requires calculation of the differential aileron deflection. This rationale does not, however, specifically dictate whether a "positive" differential deflection should generate right wing down (RWD) or left wing down (LWD) moments. Differential aileron can be calculated as either.

\( \delta_{a} = \frac{\delta_{\mathrm{a_R}} - \delta_{\mathrm{a_L}}}{2}\) or \(\delta_{a} = \frac{\delta_{\mathrm{a_L}} - \delta_{\mathrm{a_R}}}{2}\)

Selection of the RWD convention is obvious from the flight tester's viewpoint since deflections that generate right rolls are positive. An alternative interpretation is that a positive differential aileron deflection is one that lifts the positive (right) wing lifts more than the left (LWD).

Another common convention for ailerons is one that gives the same sign to both ailerons for any input. The "right hand screw" convention is opposite to the flight tester's convention, but may be more common:

\( \delta_{a_R} = +\mathrm{TED}\), \(\delta_{a_L} = +\mathrm{TEU}\).

The above wind tunnel rationale dictates only the polarity for individual control surface deflections, and leaves open the sign convention debate about controller (inceptor) input forces & displacements. One approach is that positive inputs should generate positive *motions* while an alternate approach is that positive inputs generate positive *surface deflections*. Only the flight tester's convention states that positive inputs yield positive motions *and* deflections. All approaches are mathematically connected to the hinge moment sign convention discussed below.

The simplest control surface hinge moment convention is that *all* positive hinge moments (generated by the pilot and the aerodynamics) move the surface in a positive direction, i.e., positive input forces yield positive deflections. This has different implications for the different sign conventions:

• According to the above flight tester's sign convention, a positive pull force is required to generate a positive (TEU) elevator deflection (positive stick force generates a climb).

• According to wind tunnel sign convention, a positive *push* force is required to generate a positive (*TED*) elevator deflection (positive stick force generates a *dive*).

The alternate viewpoint defines a positive inceptor hinge moment as one that *opposes* the aerodynamic moments. In other words, a positive inceptor hinge moment moves the surface to a position which generates positive aerodynamic hinge moments or "positive input forces & displacements generate negative surface deflections."

Based on the above background, the SFTE technical council proposes the following standard convention for inceptor & surface forces & deflections:

• Due to its widespread use and its simple & robust nature, use the wind tunnel convention for control surface deflections.

• Due to widespread test pilot & FTE familiarity and logical nature, use the flight tester's convention that positive inceptor forces & displacements generate a climbing right turn.

• A fallout from these conventions is that positive inceptor hinge moments generate positive aerodynamic hinge moments (negative surface deflections).

• Consistent use of the above logic requires that the calculated value for aileron deflection be negative for right wing down moments. Similarly, differential ruddervator deflections generating nose right yawing moments should have negative values.

** **

**Conventions for Positive Control Surface Deflections**

+---------------------------------+--------------------+---------------------------+-------------------------+
| **Parameter**                   | **Symbol**         | **Flight Test**           | **SFTE/**               |
|                                 |                    |                           |                         |
|                                 |                    |                           | **Wind Tunnel**         |
+=================================+====================+===========================+=========================+
| Horizontal Stabilizer           | δ*~i~*             | TEU                       | TED                     |
+---------------------------------+--------------------+---------------------------+-------------------------+
| Elevator                        | δ*~e~*             | TEU                       | TED                     |
+---------------------------------+--------------------+---------------------------+-------------------------+
| Elev. Tab                       |  δ*~et~*           | TED                       |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
| Stabilators or Rollervators,    | δ*~eL\ ,~* δ*~eR~* | TEU                       | TED                     |
|                                 |                    |                           |                         |
| average:                        |                    |                           |                         |
|                                 |                    |                           |                         |
| differential:                   |                    |                           |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
|                                 | δ*~e~*             | = (δ*~eR~* + δ*~eL~* )/2  |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
|                                 | ∆δ*~e~*            | = (δ*~eR~* - δ*~eL~*)/2   |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
| Elevons                         | δ*~vL\ ,~* δ*~vR~* | TEU                       | TED                     |
|                                 |                    |                           |                         |
| average:                        |                    |                           |                         |
|                                 |                    |                           |                         |
| differential                    |                    |                           |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
|                                 | δ*~v~*             | = (δ*~vR~* + δ*~vL~*)/2   |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
|                                 | ∆δ*~v~*            | = (δ*~vR~* - δ*~vL~*)/2   |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
| Flaperons or trailing edge flap | δ~*fR*\ ,~ δ*~fL~* | TED                       |                         |
|                                 |                    |                           |                         |
| average:                        |                    |                           |                         |
|                                 |                    |                           |                         |
| differential:                   |                    |                           |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
|                                 | δ*~f~*             | = (δ*~fR~* + δ*~fL~*)/2   |                         |
+---------------------------------+--------------------+---------------------------+-------------------------+
|                                 | ∆δ*~f~*            | = - (δ*~fR~* - δ*~fL~*)/2 | = (δ*~fR~* - δ*~fL~*)/2 |
+---------------------------------+--------------------+---------------------------+-------------------------+

+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| **Conventions for Positive Control Surface Deflections (Cont'd)** |                        |                                                 |                           |
+===================================================================+========================+=================================================+===========================+
| **Parameter**                                                     | **Symbol**             | **Flight Test**                                 | **SFTE/**                 |
|                                                                   |                        |                                                 |                           |
|                                                                   |                        |                                                 | **Wind Tunnel**           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| Canards                                                           | δ*~cL\ ,~* δ*~cR~*     | TED                                             |                           |
|                                                                   |                        |                                                 |                           |
| average:                                                          |                        |                                                 |                           |
|                                                                   |                        |                                                 |                           |
| differential                                                      |                        |                                                 |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | δ*~c~*                 | = (δ*~cR~* + δ*~cL~*)/2                         |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | ∆δ*~c~*                | = - (δ*~cR~* - δ*~cL~*)/2                       | = (δ*~cR~* - δ*~cL~*)/2   |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| Leading edge flap                                                 | δ*~lefL\ ,~* δ*~lefR~* | TED                                             |                           |
|                                                                   |                        |                                                 |                           |
| Average:                                                          |                        |                                                 |                           |
|                                                                   |                        |                                                 |                           |
| Differential:                                                     |                        |                                                 |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | δ*~lef~*               | = (δ*~cR~* + δ*~cL~*)/2                         |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | ∆δ*~lef~*              | = - (δ*~cR~* - δ*~cL~*)/2                       | = - (δ*~cR~* - δ*~cL~*)/2 |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| Ruddervators                                                      | δ*~rvL\ ,~* δ*~rvR~*   | TEU                                             | TED                       |
|                                                                   |                        |                                                 |                           |
| Average:                                                          |                        |                                                 |                           |
|                                                                   |                        |                                                 |                           |
| Differential:                                                     |                        |                                                 |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | δ *~rv~*               | = (δ*~rvR~* + δ*~rvL~*)/2                       |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | ∆δ *~rv~*              | = - (δ*~rvR~* - δ*~rvL~*)/2                     |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | δ*~aL\ ,~* δ*~aR~*     | δ*~aR~*TEU, δ~*aL*~ TEDor {δ*~aR~*, δ*~aL~*TED} | δ*~aR,~* δ*~aL~ TED*      |
|                                                                   |                        |                                                 |                           |
| Ailerons                                                          |                        |                                                 |                           |
|                                                                   |                        |                                                 |                           |
| Aileron Tab                                                       |                        |                                                 |                           |
|                                                                   |                        |                                                 |                           |
| Average:                                                          |                        |                                                 |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | δ*~at~*                | = (δ*~aR~* +δ*~aL~*)/2                          | δ*~at~* TED               |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | δ*~a~*                 | = - (δ*~aR~* -δ*~aL~*)/2}                       | = (δ*~aR~* -δ*~aL~*)/2 \* |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| Spoilers average:                                                 | *δ~sL~ , δ ~sR~*       | Extended                                        |                           |
|                                                                   |                        |                                                 |                           |
| Differential:                                                     |                        |                                                 |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | *δ~s~*                 | = (δ*~sR~* +δ*~sL~*)/2                          |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | ∆*δ~s~*                | = (δ*~sR~* -δ*~sL~*)/2                          | = - (δ*~sR~* -δ*~sL~*)/2  |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| Rudders                                                           | *δ~rR\ ,~ δ~rL~*       | TER                                             | TEL                       |
|                                                                   |                        |                                                 |                           |
| Average:                                                          |                        |                                                 |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
|                                                                   | *δ~r~*                 | = (δ*~rR~* +δ *~r~* *~L~*)/2                    |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| Rudder tab                                                        | *δ~rt~*                | TEL                                             |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+
| Speed brake                                                       | δ*~sb~*                | Extended                                        |                           |
+-------------------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------+

+-------------------------------------------------------+------------------+----------------------+---------------------+
| **Conventions for Positive Inputs and Hinge Moments** |                  |                      |                     |
+=======================================================+==================+======================+=====================+
| **Parameter**                                         | **Symbol**       | **Flight Test**      | **SFTE/**           |
|                                                       |                  |                      |                     |
|                                                       |                  |                      | **Wind Tunnel**     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Stick/Wheel                                           | F~e~             | Pull                 |                     |
|                                                       |                  |                      |                     |
| Long Force                                            |                  |                      |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Stick/Wheel                                           | F~a~             | Right                |                     |
|                                                       |                  |                      |                     |
| Lateral Force                                         |                  |                      |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Pedal Force                                           | F~r~             | Right pedal push     |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Stick/Wheel                                           | δs~e~            | Aft                  |                     |
|                                                       |                  |                      |                     |
| Long. deflectn                                        |                  |                      |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Stick/wheel                                           | δs~a~            | Right                |                     |
|                                                       |                  |                      |                     |
| Lat. deflection                                       |                  |                      |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Pedal deflection                                      | δ~*pR*,~ δ*~pL~* | Right pedal push     |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Aerodynamic Hinge Moments                             | C~hδ~            | positive moments     |                     |
|                                                       |                  |                      |                     |
|                                                       | C~hα~            | generate             |                     |
|                                                       |                  |                      |                     |
|                                                       | C~hδο~           | positive deflections |                     |
|                                                       |                  |                      |                     |
|                                                       | C~hδtab~         |                      |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+
| Inceptor                                              | C~hFe~           | \+ moments generate  | \+ moments generate |
|                                                       |                  |                      |                     |
| Hinge Moments                                         | C~hFa~           | \+ deflections       | \- deflections      |
|                                                       |                  |                      |                     |
|                                                       | C~hFr~           |                      |                     |
+-------------------------------------------------------+------------------+----------------------+---------------------+

\*The wind tunnel rationale does not inherently define the polarity for control surface differential deflections.

\#The wind tunnel rationale does not specify a convention for positive inputs or hinge moments. Historically, Dutch, U.S. and some British aircraft use a climbing right turn, while it is a diving left turn for Canadian, Australian, and some British aircraft.

*The SFTE Technical Council recognizes that several combinations of the above possibilities are currently in use around the world, and invites comments, additions, or corrections to the above summary and proposal. Although SFTE does not expect all organizations to adopt this standard, it still **provides a cornerstone for reference purposes***

## Thermodynamics Relations

(references 1.3, 1.4, 1.5, 1.6)

### Thermodynamic Definitions

A **Process** is an event with a redistribution of energy within a system.

A **Reversible** process is one that can be reversed such that the system returns to its original state (form, location & amount).

An **Irreversible** process cannot return to its original state due to heat flow from higher to lower temperatures, fluid turbulence, friction, or inelastic deformation. The change in entropy is non-zero.

An **Isothermal** process is one in which the temperature of the fluid is constant.

An **Adiabatic** process is one in which heat is not transferred to or from the fluid.

**Work** is the energy *transfer* by way of changing mechanical energy.

**Heat** is the energy *transfer* from one body to another by virtue of a temperature difference between them.

An **Isentropic** process has constant entropy.

**Conduction** is the energy transfer from a warmer body by tangible contact (transfer of some internal molecular kinetic energy).

**Convection** is the repositioning the energy of a fluid without state changes or energy transformations (e.g. heated air moving from one room to another room).

**Radiation** is the energy transmission through space.

### Thermodynamic Symbols

| Symbol | Use |
|:-------|:----|
|\(A\) | area|
|\(C\) | compressibility factor |
|\(c\) | speed of sound|
|\(E = u\) | specific internal energy (e.g. Btu/lb)|
|\(H\) | specific **enthalpy**  (e.g. Btu/lb)|
|\(J\) | Joule |
|\(Q\) | energy supplied to a system or region as heat (e.g. Btu/lb)|
|\(P\) | absolute pressure (e.g. lbs/ft^2^)|
|\(V\) | specific volume (e.g. ft^3^/lb)|
|\(W\) | work (+ if entering)|
|\(\overline{V}\)| velocity|
|\(\Delta\) | change ( final - initial value)|
|\(Z\) | altitude|
|\(S\) | specific entropy  |
|\(R\) | gas constant for each gas (for air = 287 J/kg/K = 53.35 ft-lb/lb~m~R)|
|\(\overline{R}\) |  universal gas constant = 8.314 kJ/kmol/K = 1545 ft lb/lbmol/R|
|\(M\) | molar mass (for air = 28.97 kg/kmol)|
|\(N\) | number of moles|
|\(\rho\) | density|

### Thermodynamic Laws

The **First Law of Thermodynamics** shows that the net amount of energy added to a system equals the net change in energy within the system (Principle of Conservation of Energy): \(W + Q = (E_2 - E_1)\) 

The **Second Law of Thermodynamics** states that entropy increases during any irreversible process: \(S_2 > S_1\) 

**Ideal Gas Equation of State** (a.k.a. Perfect gas law): 

\[
\begin{align}
PV&=RT\\
P &= \rho RT\\
PV &= mRT\\
PV &= nRT
\end{align}\]

\[\delta = \sigma \theta\]  
where   
\[
\begin{align}
\delta &= \frac{P_a}{P_0}\\
\sigma &= \frac{\rho_a}{\rho_0}\\
\theta &= \frac{T_a}{T_0}
\end{align}\]

**Boyle's Law** states that when the temperature of a given mass of gas is held constant, then the volume and pressure vary inversely.

\[P_1 V_1 = P_2 V_2\]

where \[T_1 = T_2\]

**Charles' Law** states that when a volume of a given mass is held constant, then the change in pressure of the gas is proportional to the change in temperature.

\[\frac{P_1}{T_1} = \frac{P_2}{T_2}\] 

where \[V_1 = V_2\]

**Real Gas** Relation: 

\[PV = CRT\]

For reversible processes:

\[
\begin{align}
W &= −\int_{}^{}{PdV}\\
Q &= \int_{}^{}{TdS}
\end{align}
\]

For reversible adiabatic processes:

\[
\begin{align}
\frac{P_1}{P_2} &= \Bigg[ \frac{V_2}{V_1} \Bigg]^{\gamma} \\
\frac{T_1}{T_2} &= \Bigg[ \frac{V_2}{V_1} \Bigg]^{\gamma - 1} \\
\frac{T_1}{T_2} &= \Bigg[ \frac{P_1}{P_2} \Bigg]^{\frac{\gamma - 1}{\gamma}} \\
\frac{P_1}{P_2} &= \Bigg[ \frac{\rho_1}{\rho_2} \Bigg]^{\gamma} \\
\end{align}
\]

Steady Flow Energy Equation

\[
Q + H_1 + \frac{\overline{V}_1^2}{2g} + Z_1 = W + H_2 + \frac{\overline{V}_2^2}{2g} + Z_2
\] 

Bernoulli Equation:

\[
\frac{\Delta P}{\rho g} + \frac{\overline{V}_2^2 - \overline{V}_1^2}{2g} + \Delta Z = 0
\]

Flow per Unit Area:

\[
\frac{W}{A} = \sqrt{\frac{\gamma}{R} \frac{P}{\sqrt{T}} \frac{M}{
  \Big( 1 + \frac{\gamma - 1}{2} M^2 \Big) \frac{\gamma + 1}{2 (\gamma - 1)}
}}
\]

Velocity of sound in a perfect gas:

\[
c = \sqrt{\gamma g R T}
\]

Development of **Specific Heat Relations**:

Specific heat at constant pressure (for air = 1004.76 J/kg/K)
\[
c_p \equiv \frac{\partial H}{\partial T} \Bigg\rvert_{P}
\]
  
Specific heat at constant volume (for air = 717.986 J/kg/K)
\[
c_v \equiv \frac{\partial u}{\partial T} \Bigg\rvert_{V}
\]

Ratio of specific heats
\[
\kappa = \gamma \equiv \frac{c_p}{c_v}
\]

Enthalpy equation in differential form is: \[dH = du + d(PV)\]

Substituting definitions and ideal gas law gives

\[
\begin{align}
c_p \, dT &= c_v \, dT + R \, dt\\
&\;\;\mathrm{or} \\
c_p &= c_v + R
\end{align}
\]

Rearranging gives

\[
\begin{align}
c_p &= R \frac{\kappa}{\kappa - 1}\\
&\;\;\mathrm{and} \\
c_v &= R \frac{1}{\kappa - 1}
\end{align}
\]

Development of **Poisson's Equation**:

1) From the 1st law: \[W+Q = E_2-E_1\]

2) Substitution for each term gives: \[T\,dS - P\,dV = du\]

3) Divide through by T: \[dS = \frac{du}{T} + \frac{P\,dV}{T}\]

4) Recall: \[du = c_v\,dT\] and \[PV = RT\]

5) Substitution gives: \[dS = c_v\frac{dT}{T} + R \frac{dV}{V}\]

6) Assume constant specific heat and integrate: \[s_2 - s_1 = c_v\,\ln \frac{T_2}{T_1} + R\,\ln \frac{V_2}{V_1}\]

7) Assuming a reversible adiabatic process: \[c_v\,\ln \frac{T_2}{T_1} = - R\,\ln \frac{V_2}{V_1}\]

8) Substitute \[c_v = R\frac{1}{\kappa - 1}\] to get: \[\frac{T_2}{T_1} = \Big( \frac{V_1}{V_2} \Big)^{\kappa -1}\]

9) Differentiate H: \[dH = du + P\,dV + V\,dP\]

10) Substitution into step \#2: \[T\,dS = dH - V\,dP\]

11) Integrate: \[s_2 - s_1 = c_p\,\ln \frac{T_2}{T_1} + R\,\ln \frac{P_2}{P_1}\]

12) Assuming a reversible adiabatic process: \[c_p\,\ln \frac{T_2}{T_1} = - R\,\ln \frac{P_2}{P_1}\]

13) Substitute \[c_v = R\frac{\kappa}{\kappa - 1}\] to get: \[\frac{T_2}{T_1} = \Big( \frac{P_2}{P_1} \Big)^{\frac{\kappa -1}{\kappa}}\]

14) Combine steps \#8, \#13 to get: \[\frac{P_2}{P_1}=\Big( \frac{V_1}{V_2} \Big)^{\kappa}\] or \[(PV)^{\kappa} = \mathrm{const}\]

## Mechanics Relations 

### Mechanics Symbols

| Symbol   | Use                                                             |
|:-------|:----|
| \(a\)        |  linear acceleration                                |
| \(a_r\)     | centripetal (radial) acceleration                               |
| \(a_T\)     | tangential acceleration                                         |
| \(F\)        | force                                                           |
| \(g\)        | acceleration due to gravity |
| \(G\)        | moment                                                          |
| \(H\)        | angular momentum                                          |
| \(H\)        | height                                                          |
| \(Hp\)       | horsepower                                 |
| \(I\)        | rotational moment of inertia (see section 10)                   |
| \(J\)        | impulse = change in momentum                                    |
| \(k\)        | radius of gyration                                              |
| \(m\)        | mass                                                            |
| \(N_r\)     | radial load factor                                     |
| \(P\)        | power                                                |
| \(L\)        | linear momentum                                             |
| \(Q\)        | moment (a.k.a. torque)                                          |
| \(r\)        | radius                                                          |
| \(S\)        | distance, displacement                                          |
| \(s\)        | seconds                                                         |
| \(t\)        | time                                                            |
| \(V\)        | true inertial velocity                                          |
| \(V_0\)     | initial inertial velocity                                       |
| \(W\)        | work                                 |
| \(q\)        | angular displacement                                            |
| \(\mathrm{Vol}\)    | volume                                                          |
| \(\omega\)        | angular velocity (radians/second)                               |
| \(\dot{\omega}\)        | angular acceleration                                            |

### Newton's Laws

**1^st^ law** (law of inertia):

"Every body persists in its state of rest or uniform motion in a straight line unless it is compelled to change that state by forces impressed on it."

**2^nd^ Law**:

"The change in motion is proportional to the motive force impressed and is made in the direction of the straight line in which that force is impressed" (motion defined as velocity *x* quantity of matter or linear momentum, \(m\,V\) ).

\[
dF = \frac{d(mV)}{dt}
\]

For constant mass in rectilinear motion: \[F = ma\]

For constant mass distribution in curvilinear motion: \[G = \dot{\omega} I\]

**3^rd^ Law**:

"Every action has an equal and opposite reaction; or, the mutual attraction of two bodies upon each other are always equal and directed to contrary parts.(opposite directions)"

### Planar Kinetics, Work, Power and Energy

| Rectilinear motion |                         | Curvilinear motion   |                                     |
|:-------------------|:------------------------|:---------------------|:------------------------------------|
| displacement       | \[S\]                     | angular displacement | \[\theta\]                            |
| velocity           | \[V = \frac{dS}{dt}\]     | angular velocity     | \[\omega = \frac{d\theta}{dt}\]       |
| acceleration       | \[a = \frac{dV}{dt}\]     | angular acceleration | \[\dot{\omega} = \frac{d\omega}{dt}\] |
| inertia            | \[m\]                     | rotational inertia   | \[I = \int_{}^{}{r^2 dm}\]            |
| momentum           | \[L = m\,V\]              | angular momentum     | \[H = I \omega\]                      |
| force              | \[F = m\,a\]              | torque               | \[Q = I \dot{\omega}\]                |
| work               | \[W = \int_{}^{}{F\,dS}\] | work                 | \[W = \int_{}^{}{Qd\theta}\]          |
| power              | \[P = F\,V\]              | power                | \[P = Q \omega\]                      |
| kinetic energy     | \[\frac{1}{2} mV^2\]      | kinetic energy       | \[\frac{1}{2} I \omega^2\]            |
| potential energy   | \[mgH\]                   | n/a                  |                                     |

### Planar Kinematics at Constant Acceleration

| Rectilinear motion                                      | Curvilinear motion                                                                    |
|---------------------------------------------------------|---------------------------------------------------------------------------------------|
| \[V = V_0 + at\]                                          | \[\omega = \omega_0 + \dot{\omega} t\]                                                  |
| \[V^2 = V_0^2 + 2aS\]                                     | \[\omega^2 = \omega_0^2 + 2 \dot{\omega}\theta\]                                        |
| \[S = V_0 t + \frac{1}{2} a t^2\]                         | \[\theta = \omega_0 t + \frac{1}{2} \dot{\omega} t^2\]                                  |
| \[S = \frac{1}{2}(V + V_0) t\]                            | \[\theta = \frac{1}{2}(\omega + \omega_0)t\]                                            |
| \[S = \frac{\left( V^{2} - V_{0}^{2} \right)}{2a}\]       | \[\theta = \frac{\left( \omega^{2} - \omega_{0}^{2} \right)}{2\dot{\omega}}\]           |
| \[t = \frac{- V_{0} + \sqrt{V_{0}^{2} + 2\text{aS}}}{a}\] | \[t = \frac{- \omega_{0} + \sqrt{\omega_{0}^{2} - 2\dot{\omega}\theta}}{\dot{\omega}}\] |
| \[a = \frac{2\left( S - V_{0}t \right)}{t^{2}}\]          | \[\dot{\omega} = \frac{2(\theta - \omega_{0}t)}{t^{2}}\]                                |

### Curvilinear motion with constant acceleration and radius

|                                                                   |
|:---------------------------------------------------------------------------------------:|
| \[r = \frac{V^2}{g N_r}\]                                                  |
| \[V = \omega r\]                                        |
| \[N_r = \frac{a_r}{g}\]                                  |
| \[\omega = \frac{g N_r}{V}\]                                            |
| \[\dot{\omega} = \frac{\dot{V}}{R}\]           |
| \[a_r = r \omega^2 = \frac{V^2}{r}\] |
| \[a_{r} = \dot{\omega}r\]                                |

### Aircraft in level turn

|                                                                   |
|:---------------------------------------------------------------------------------------:|
| \(N_{z_w}\) = load factor normal to flight path                                                  |
| \(r\) = turn radius                                       |
| \(\Omega\) = turn rate (rad/sec)                                 |
| \[r = \frac{V^{2}}{g\sqrt{N_{\mathrm{zw}}^{2} - 1}}\]                                            |
| \[\omega = \frac{g\sqrt{N_{\mathrm{zw}}^{2} - 1}}{V}\]           |
| \[N_{z_w} = \sqrt{\frac{\omega V}{g} + 1}\] |
| \[V = \mathrm{inertial velocity} \]                               | 

### Level Turn Kinematics Character

 ![][01004]

### Gyroscopic Motion

(reference 1.7)

For bodies spinning about an axisymmetric axis

| |
|:-|
|\(\dot{\psi}\) = spin rate |
|\(\dot{\phi}\) = precession rate |
|\(\dot{\theta}\) = nutation rate |
||
|\(I_z\) = moment of inertia about spin axis |
|\(I_t\) = transverse moment of inertia about the spin point (perpendicular to spin axis) |
|\(I_{\mathrm{cg}}\) = moment of inertia about the \(\mathrm{cg}\) (perpendicular to spin axis) |
|\(M_x\) = moment about spin point (acting along plane that defines \(\theta\) ) |

For steady precession (constant \(\dot{\theta}\), \(\dot{\phi}\) , \(\dot{\psi}\) )

\[ \sum M_{x} = - I_{t}\dot{\phi^{2}}\sin\theta\cos\theta + I_{z}\dot{\theta}\sin\theta\left( \dot{\phi}\cos\theta + \dot{\psi} \right) \]

For torque free motion (gravity is only external force)

\[\dot{\psi} = \frac{I_{\mathrm{cg}} - I_{z}}{I_{z}}\dot{\phi}\cos\theta\]

note that \(I_{\mathrm{cg}} > I_z\) yields regular precession

while \(I_{\mathrm{cg}} < I_z\) yields retrograde precession

## International Phonetic Alphabet and Morse Code

|Character| Say | Morse Code |
|:--------|:----|:-----------|
|  A|   Alpha      |• ▬|
|  B|   Bravo      |▬ • • •|
|  C|   Charlie    |▬ • ▬ •|
|  D|   Delta      |▬ • •|
|  E|   Echo       |●|
|  F|   Foxtrot    |• • ▬ •|
|  G|   Golf       |▬ ▬ •|
|  H|   Hotel      |• • • •|
|  I|   India      |• •|
|  J|   Juliet     |• ▬ ▬ ▬|
|  K|   Kilo       |▬ • ▬|
|  L|   Lima       |• ▬ • •|
|  M|   Mike       |▬ ▬|
|  N|   November   |▬ •|
|  O|   Oscar      |▬ ▬ ▬|
|  P|   Papa       |• ▬ ▬ •|
|  Q|   Quebec     |▬ ▬ • ▬|
|  R|   Romeo      |• ▬ •|
|  S|   Sierra     |• • •|
|  T|   Tango      |▬|
|  U|   Uniform    |• • ▬|
|  V|   Victor     |• • • ▬|
|  W|   Whiskey    |• ▬ ▬|
|  X|   X-ray      |▬ • • ▬|
|  Y|   Yankee     |▬ • ▬ ▬|
|  Z|   Zulu       |▬ ▬ • •|
||||
|  1|   One        |• ▬ ▬ ▬ ▬|
|  2|   Two        |• • ▬ ▬ ▬|
|  3|   Tree       |• • • ▬ ▬|
|  4|   Four       |• • • • ▬|
|  5|   Fife       |• • • • •|
|  6|   Six        |▬ • • • •|
|  7|   Seven      |▬ ▬ • • •|
|  8|   Eight      |▬ ▬ ▬ • •|
|  9|   Niner      |▬ ▬ ▬ ▬ •|
|  0|   Zee-ro     |▬ ▬ ▬ ▬ ▬|

## References

<http://www.onlineconversion.com/>

| | |
|-|--------------|
|1.1 |Anon., "Weight Engineers Handbook", Society of Weight Engineers, P.O.Box 60024 Los Angeles, CA 90060,1976.|
|1.2 |Anon., "Aeronautical Vestpocket Handbook", United Technologies Pratt & Whitney Canada, 1000 Marie Victorin Blvd. E. P.O.B. 10 Longueuil, Quebec Canada J4K 4X9.|
|1.3 |Jones, J. P., Hawkins, G.A., "Engineering Thermodynamics" John Wiley & Sons, 1960.|
|1.4 |Esbach, Ovid W., "Handbook of Engineering Fundamentals", John Wiley and Sons Inc., 1963.|
|1.5 |Potter, M.C., Somerton, C.W., "Engineering Thermodynamics" Shaum's Outline Series, McGraw-Hill, Inc.,1993.|
|1.6 |Abbott, M. M., Van Ness, H. C., "Thermodynamics", Shaum's Outline Series, McGraw-Hill, Inc., 1989.|
|1.7 |Halliday, D., Resnick, R., "Fundamentals of Physics", John Wiley & Sons, New York, 1981.|
|1.8 |Roberts, S.C., *Chapter 3 Aircraft Control Sytems* , "Aircraft Flying Qualities Testing", National Test Pilot School, 1997. P.O.B. 658, Mojave, CA, 93501.|
|1.9 |Unit Conversion Website Link <http://www.digitaldutch.com/atmoscalc/>.|

  [01002]:  media/01/image2.png {width="6.5in" height="3.4063156167979in"}
  [01003]:  media/01/image3.png {width="6.5in" height="4.874305555555556in"}
  [01004]:  media/01/image24.jpeg {width="6.08125in" height="8.9375in"}

<!--chapter:end:01-general.Rmd-->

# Mathematics

## Algebra

(reference 2.1)

### Laws

| | |
|:-|:-|
|Commutative| \[\begin{align} a+b &= b+a\\ ab &= ba \end{align}\]|
|Associative| \[a+(b+c) = (a+b)+c\]|
|Distributive| \[a(b+c) = ab+ac\]|

### Identities

|Exponents|Logarithms^[If M, N,b are positive]|
|:-:|:-:|
|\[a^x a^y = a^{x+y}\]| \[\log_b{b} = 1\]|
|\[\left( ab \right) ^x = a^x b^x \]|\[\log_b{1} = 0\]|
|\[\left( a^x \right) y = a^xy \]|\[ \log_b \left( MN \right) = log_b{M} + log_b{N}\]|
|\[a^{mn}  = \left( a^m \right) ^n \]|\[\log_b \left( \frac{M}{N} \right) = \log_b{M} - \log_b{N}\]|
|\[a^0 = 1\] If \(a \neq 0\) |\[\log_b \left( M^p \right)   = p \log_b{M}\]|
|\[a^{-x} = \frac{1}{a^x} \]|\[\log_b \left( \frac{1}{M} \right) = -\log_b{M} \]|
|\[ \frac{a^x}{a^y} = a^{x-y} \]|\[ \log_b{\sqrt[q]{M}} = \frac{1}{q} \log_b{M} \]|
|\[ \sqrt[x]{ab} = \left( \sqrt[x]{a} \right) \left( \sqrt[x]{b} \right) \]|\[ \log_b{M} = \left(\log_c{M} \right) \left(\log_b{c} \right)= \frac{\log_c{M}}{\log_c{b}} \]|
|\[ a^{\frac{x}{y}} = \sqrt[y]{a^x} = \left( \sqrt[y]{a} \right)^x \]| |
|\[ a^{\frac{1}{y}} = \sqrt[y]{a} \]||
|\[ \left( \sqrt[x]{a} \right) \left( \sqrt[y]{a} \right) = a^{\left( \frac{1}{x} + \frac{1}{y} \right)} = \sqrt[xy]{a^{x+y}} \]||
|\[ \sqrt{a} + \sqrt{b} = \sqrt{a + b + 2\sqrt{ab}}\]||

Examples:
\[
\begin{array}{lllll}
\log (6.54) =  0.8156 &&&&\\
& \log (6540) &= \log (6.54 \times 10^3 ) &=  0.8156 + 3 &= \fbox{3.8156}&\\
& \log ( 0.6540) &= \log (6.54 \times 10^{-1}) &=  0.8156 - 1 &= \fbox{9.8156 - 10}&\\
& \log ( 0.000 6540) &= \log (6.54 \times 10^{-4}) &=  0.8156 - 4 &= \fbox{6.8156 - 10}&
\end{array}
\]

\[
\begin{array}{lllll}
\text{calculate } 68.31 \times  0.2754 &&&&\\
&log (68.31) &= 1.8354&&\\
&log ( 0.2754) &= - 0.56&&\\
&1.8354 +(- 0.56) &= 1.2745&&\\
&log^{-1} (1.2745) &= \fbox{18.81}&&
\end{array}
\]

\[
\begin{array}{lllll}
\text{calculate } ( 0.6831)^{1.53} &&&&\\
& log ( 0.6831) &= - 0.1655&&\\
& 1.53 \times - 0.1655 &= - 0.253&&\\
& log^{-1} (- 0.253) &= \fbox{ 0.5582}&&
\end{array}
\]

\[
\begin{array}{lllll}
\text{calculate } ( 0.6831)^{\frac{1}{5}} &&&&\\
& log ( 0.6831) &= - 0.1655&&\\
& \frac{1}{5} \times - 0.1655 &= - 0.0331&&\\
& log^{-1} (- 0.0331) &= \fbox{ 0.9266}&&
\end{array}
\]

\[
\begin{array}{lllll}
\text{solve for \(x\) in \( 0.6931^x = 27.54\) }&&&&\\
& log ( 0.6931^x) &= log (27.54)&&\\
& x log ( 0.6931) &= log (27.54)&&\\
& x &= \frac{log (27.54 )}{log ( 0.6931)}&&\\
& x &= \frac{1.44}{- 0.1655} &= \fbox{-8.701}
\end{array}
\]

### Equations

#### Quadratic Equation {-}

\[ax^2 + bx + c =0\]

Two roots, both real or both complex

\[x_{1,2} = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}\]

#### Cubic Equation {-}

\[y^3 + py^2 + qy + r = 0\]

Three roots, all real or one real & two complex

Let \(y = x - \frac{p}{3}\) to rewrite equation in form of \(x^3 + ax + b = 0\)

where \(a = \frac{3q - p^2}{3}\) and \(b = \frac{2p^3 - 9pq - 27r}{27}\)

let

\[ A = \sqrt[3]{-\frac{b}{2} + \sqrt{\frac{b^2}{4} + \frac{a^3}{27}}}\]

and

\[B =\sqrt[3]{-\frac{b}{2} - \sqrt{\frac{b^2}{4} + \frac{a^3}{27}}} \]

then

\[
\begin{align}
x_1 &= A + B\\
x_2 &= \frac{-(A + B)}{2} + \frac{\sqrt{-3}}{2} (A - B)\\
x_3 &= \frac{-(A + B)}{2} - \frac{\sqrt{-3}}{2} (A - B)
\end{align}
\]

Special cases:

If \(\frac{b^2}{4} + \frac{a^3}{27} < 0\) , then the real roots are

\[x_{1,2,3} = 2 \sqrt{\frac{-a}{3}} cos \left( \frac{\phi}{3} + 120° k \right)\]

where \(k = 0,1,2\)

and

\[cos\phi = + \sqrt{\frac{ \frac{b^2}{4} }{ \frac{-a^3}{27} }} \;\;\;\text{if}\; b < 0\]

or

\[cos\phi = - \sqrt{\frac{ \frac{b^2}{4} }{ \frac{-a^3}{27} }} \;\;\;\text{if}\; b > 0\]

If \(\frac{b^2}{4} + \frac{a^3}{27} > 0\) and \(a > 0\) , the single real root is

\[x = 2 \sqrt{\frac{a}{3}} cot \left( 2\phi \right)\]

where \(tan\phi = \sqrt[3]{tan\psi}\)

and

\[ cot \left( 2\psi \right) = + \sqrt{\frac{ \frac{b^2}{4} }{ \frac{-a^3}{27} }} \;\;\;\text{if}\; b < 0\]

or

\[ cot \left( 2\psi \right) = - \sqrt{\frac{ \frac{b^2}{4} }{ \frac{-a^3}{27} }} \;\;\;\text{if}\; b < 0\]

If \( \frac{b^2}{4} + \frac{a^3}{27} = 0 \), the three real roots are

\[ x_{1} = -2 \sqrt{\frac{-a}{3}}, \; x_{2,3} = +\sqrt{\frac{-a}{3}} \;\;\; \text{if} \; b > 0 \]

or

\[ x_{1} = +2 \sqrt{\frac{-a}{3}}, \; x_{2,3} = -\sqrt{\frac{-a}{3}} \;\;\; \text{if} \; b < 0 \]

#### Quartic (biquadratic) Equation {-}

For

\[y^4 + py^3 + qy^2 + ry + s = 0\]

let \(y = x - \frac{p}{4}\) to rewrite equation as

\[x^4 + ax^2 + bx + c = 0\]

let \(l\), \(m\), \(n\) denote roots of the following resolvent cubic:

\[ t^3 + \frac{1}{2} at^2 +  \frac{1}{16} \left( a^2 - 4c \right) t -  \frac{1}{64}b^2 = 0 \]

The roots of the quartic are

\[ x_{1} = + \sqrt{l} + \sqrt{m} + \sqrt{n} \]
\[ x_{2} = + \sqrt{l} - \sqrt{m} - \sqrt{n} \]
\[ x_{3} = - \sqrt{l} + \sqrt{m} - \sqrt{n} \]
\[ x_{4} = - \sqrt{l} - \sqrt{m} + \sqrt{n} \]

### Interest And Annuities

(reference 2.3)

Amount:

\(P\) principal at \(i\) interest for \(n\) time accumulates to amount \(A_{n}\).

Simple interest:

\[A_{n} = P(1 + ni)\]

at interest compounded each \(n\) interval:

\[A_{n} = P(1 + i)^n \]

at interest compounded \(q\) times per \(n\) interval:

\[A_{n} = P(1 + \frac{r}{q})^{nq} \]

where \(r\) is the nominal (quoted) rate of interest

Effective Interest:

The rate per time period at which interest is earned during each period is called the effective rate \(i\).

\[i = \left( 1 + \frac{r}{q} \right)^q -1\]

Solve above equations for \(P\) to determine investment required now to accumulate to amount \(A_{n}\)

True discount,

\[D = A_{n} - P\]

Annuities:

rent \(R\) is consistent payment at each period \(n\)

let

\[s_n \equiv \frac{\left( 1 + i \right)^n - 1}{i}\]

and let

\[r_n \equiv \frac{1 - \left( 1 + i \right)^{-n}}{i} \]

then \(A_n = R\,s_{n}\)

or

\[n = \frac{\log \left( A_n + R \right) - \log R }{\log \left(1 + i \right)} \]

Present value of an annuity, \(A\) is the sum of the present values of all the future payments. \(A = R\,r_{n}\)

Monthly interest rate = \(\mathrm{MIR} = \frac{ \text{annual interest rate} }{12} \)

Month Term = \# months in loan

Monthly payment = \( \left[ \text{amount financed} \right] \left[ \frac{\mathrm{MIR}}{1 - \left( 1 + \mathrm{MIR} \right)^{-\#months}} \right] \)

Final value (\(FV\)) of an investment is a function of the initial principal invested (P), interest rate (\(r\) expressed as \( 0.05\) for \(5%\), \( 0.1\) for \(10%\), etc.), time invested (\(Y\) typically years), and compounding periods per year (\(n\) typically \(n = 1\) for yearly or \(n = 12\) for monthly).

\[FV   =   P (1  +  \frac{r}{n})^{Y_n}\]

## Geometry

(references 2.1, 2.2)

### General definitions {-}

| Symbol       | Definition                                   |
|:-------------|:---------------------------------------------|
| \(A\)        | area                                         |
| \(a\)        | side length                                  |
| \(b\)        | base length                                  |
| \(C\)        | circumference                                |
| \(D\)        | diameter                                     |
| \(h\)        | height                                       |
| \(n\)        | number of sides                              |
| \(R\)        | radius                                       |
| \(V\)        | volume                                       |
| \(x, y, z \) | distances along orthogonal coordinate system |
| \(\beta\)    | interior vertex angle                        |

#### Triangle {-}

\[
\begin{align}
A &= \frac{bh}{2}\\
\text{sum of interior angles} &= 180°
\end{align}
\]

#### Rectangle {-}

\[
\begin{align}
A &= bh\\
\text{sum of interior angles} &= 360°
\end{align}
\]

#### Parallelogram (opposite sides parallel) {-}

\[ A = ah = ab \sin \beta \]

#### Trapezoid (4 sides, 2 parallel) {-}

\[ A = \frac{h \left(a + b \right)}{2} \]

#### Pentagon, Hexagon, and other \(n\)-sided Polygons {-}

\begin{align}
A &= \frac{1}{4} n a^2 \cot \left( \frac{180°}{n} \right) \\
R &= \text{radius of circumscribed circle} = \frac{1}{2} a^2 \csc \left( \frac{180°}{n} \right) \\
r &= \text{radius of inscribed circle} = \frac{1}{2} a \cot \left( \frac{180°}{n} \right) \\
\beta &= 180° - \frac{360°}{n} \\
\text{sum of interior angles} &= n 180° - 360° \\
\end{align}

#### Circle  {-}

\begin{align}
A &= \pi R^2 \\
C &= 2 \pi R = \pi D \\
\text{perimeter of n-sided polygon inscribed within a circle} &= 2 n R \sin \left(\frac{\pi}{n} \right) \\
\text{area of circumscribed polygon} &= n R^2 \tan \left( \frac{\pi}{n} \right) \\
\text{area of inscribed polygon} &= \frac{1}{2} n R^2 \sin \left( \frac{2\pi}{n} \right) \\
\text{equation for a circle with center at (h,k):} \\
R^2  &= \left(x-h \right)^2  + \left(y-k \right)^2 \\
\end{align}

#### Ellipse {-}

\begin{align}
f &= \text{semimajor axis} \\
g &= \text{semiminor axis} \\
e &= \text{eccentricity} = \frac{ \sqrt{f^2 -g^2} }{f} \\
A &= \pi e f \\
\text{equation for ellipse with center at (h,k):} \\
\frac{(x-h)^2 }{f^2}  + \frac{(y-k)^2}{g^2}  &= 1 \text{ if major axis along x-axis} \\
\text{or } \frac{(y-k)^2 }{f^2}  + \frac{(x-h)^2}{g^2}  &= 1 \text{ if major axis along y-axis} \\
\text{distance from center to either focus} &= \sqrt{f^2 -g^2} \\
\text{latus rectum} &= \frac{2g^2}{a} \\
\end{align}

#### Parabola {-}

\begin{align}
p &= \text{distance from vertex to focus} \\
e &= \text{eccentricity} = 1 \\
\text{equation for parabola with vertex at (h,k), focus at (h+p,k):} \\
(y-k)^2  = 4j(x-h) \text{ if } j > 0 \\
\text{equation for parabola with vertex at (h,k), focus at (h,k+p):} \\
(x-h)^2  = 4j(y-k) \text{ if } j < 0 \\
\end{align}

![Parabola Diagram][02021]

#### Hyperbola {-}

\begin{align}
p &= \text{distance between center and vertex} \\
q &= \text{distance between center and conjugate axis} \\
e &= \text{eccentricity} = \frac{ \sqrt{p^2 +q^2} }{p} \\
\text{equation for hyperbola centered at (h, k):} \\
\frac{(x-h)^2}{p^2} - \frac{(y-k)^2}{q^2} &= 1 \text{ if asymptotes slopes} = \pm \frac{q}{p} \\
\text{or } \frac{(y-k)^2}{p^2} - \frac{(x-h)^2}{q^2} &= 1 \text{ if asymptotes slopes} = \pm \frac{p}{q} \\
\end{align}

![Hyperbola Diagram][02022]

#### Sphere {-}

\begin{align}
A &= 4 \pi R^2 \\
V &= \frac{4}{3} \pi R^3 \\
\text{equation for sphere centered at origin:} \\
x^2 + y^2 + z^2 &= R^2 \\
\end{align}

#### Torus {-}

\begin{align}
\rho &= \text{smaller radius} \\
A &= 4 \pi ^2 R \rho \\
V &= 2 \pi ^2 R \rho^2 \\
\end{align}

## Trigonometery

(references 2.1, 2.2)

![Right Triangle][02023]

For any right triangle with hypotenuse \(h\), an acute angle \(\alpha\), side length \(o\) opposite from \(\alpha\), and side length \(a\) adjacent to \(\alpha\), the following terms are defined:

\[
\begin{align}
\text{sine } \alpha &= \sin{\alpha} = \frac{o}{h} \\
\text{cosine } \alpha &= \cos{\alpha} = \frac{a}{h} \\
\text{tangent } \alpha &= \tan{\alpha} = \frac{o}{a} = \frac{\sin{\alpha}}{cos{\alpha}} \\
\text{cotangent } \alpha &= \cot{\alpha} = \text{ctn } \alpha = \frac{a}{o} = \frac{1}{\tan{\alpha}} = \frac{\cos{\alpha}}{\sin{\alpha}} \\
\text{secant } \alpha &= \sec{\alpha} = \frac{h}{a} = \frac{1}{\cos{\alpha}} \\
\text{cosecant } \alpha &= \csc{\alpha} = \frac{h}{o} = \frac{1}{\sin{\alpha}} \\
\text{exsecant } \alpha &= \text{exsec } \alpha = \sec{\alpha} - 1 \\
\text{versine } \alpha &= \text{vers } \alpha = 1 - \cos{\alpha} \\
\text{coversine } \alpha &= \text{covers } \alpha = 1 - \sin{\alpha} \\
\text{haversine } \alpha &= \text{hav } \alpha = \frac{\text{vers } \alpha}{2} \\
\end{align}
\]

also defined are the following...

\[
\begin{align}
\text{hyperbolic sine of } x &= \sinh{x} = \frac{\mathrm{e}^x - \mathrm{e}^{-x}}{2} \\
\text{hyperbolic cosine of } x &= \cosh{x} = \frac{\mathrm{e}^x + \mathrm{e}^{-x}}{2} \\
\text{hyperbolic tangent of } x &= \tanh{x} = \frac{\sinh{x}}{\cosh{x}} = \frac{\mathrm{e}^x - \mathrm{e}^{-x}}{\mathrm{e}^x + \mathrm{e}^{-x}} \\
\text{csch } x &= \frac{1}{\sinh{x}} \\
\text{sech } x &= \frac{1}{\cosh{x}} \\
\text{coth } x &= \frac{1}{\tanh{x}} \\
\end{align}
\]

### Identities {-}

#### Pythagorean Identities: {-}

\[
\begin{align}
\sin^2{\alpha} + \cos^2{\alpha} &= 1 \\
1 + \tan^2{\alpha} &= \sec^2{\alpha} \\
1 + \cot^2{\alpha} &= \csc^2{\alpha} \\
\end{align}
\]

#### Half Angle Identities: {-}

\[
\begin{align}
\sin{\frac{\alpha}{2}} &= \pm \sqrt{\frac{1 - \cos{\alpha}}{2}} \text{ (negative if } \frac{\alpha}{2} \text{ is in quadrant III or IV)}\\
\cos{\frac{\alpha}{2}} &= \pm \sqrt{\frac{1 + \cos{\alpha}}{2}} \text{ (negative if } \frac{\alpha}{2} \text{ is in quadrant II or III)}\\
\tan{\frac{\alpha}{2}} &= \pm \sqrt{\frac{1 - \cos{\alpha}}{1 + \cos{\alpha}}} \text{ (negative if } \frac{\alpha}{2} \text{ is in quadrant II or IV)}\\
\end{align}
\]

#### Double-Angle Identities: {-}

\[
\begin{align}
\sin{2\alpha} &= 2\sin{\alpha}\cos{\alpha}\\
\cos{2\alpha} &= 2\cos^2{\alpha} - 1 = 1 - 2\sin^2{\alpha} = \cos^2{\alpha} - \sin^2{\alpha}\\
\tan{2\alpha} &= \frac{2\tan{\alpha}}{1 - \tan^2{\alpha}}\\
\end{align}
\]

#### n-Angle Identities: {-}

\[
\begin{align}
\sin{3\alpha} &= 3\sin{\alpha} - 4\sin^3{\alpha}\\
\cos{3\alpha} &= 4\cos^3{\alpha} - 3\cos{\alpha}\\
\sin{n\alpha} &= 2\sin\big(\left(n-1\right)\alpha\big) \cos{\alpha} - \sin(n-2)\alpha\\
\cos{n\alpha} &= 2\cos\big(\left(n-1\right)\alpha\big) \cos{\alpha} - \cos\left(n-2\right)\alpha\\
\end{align}
\]

#### Two-Angle Identities: {-}

\[
\begin{align}
\sin\left(\alpha + \beta\right) &= \sin{\alpha}\cos{\beta} + \cos{\alpha}\sin{\beta}\\
\cos\left(\alpha + \beta\right) &= \cos{\alpha}\cos{\beta} - \sin{\alpha}\sin{\beta}\\
\tan\left(\alpha + \beta\right) &= \frac{\tan{\alpha} + \tan{\beta}}{1 - \tan{\alpha}\tan{\beta}}\\
\sin\left(\alpha - \beta\right) &= \sin{\alpha}\cos{\beta} - \cos{\alpha}\sin{\beta}\\
\cos\left(\alpha - \beta\right) &= \cos{\alpha}\cos{\beta} + \sin{\alpha}\sin{\beta}\\
\tan\left(\alpha - \beta\right) &= \frac{\tan{\alpha} - \tan{\beta}}{1 + \tan{\alpha}\tan{\beta}}\\
\end{align}
\]

#### Sum and Difference Identities: {-}

\[
\begin{align}
\sin{\alpha} + \sin{\beta} &=  2\sin{\frac{\alpha + \beta}{2}}\cos{\frac{\alpha - \beta}{2}}\\
\sin{\alpha} - \sin{\beta} &=  2\cos{\frac{\alpha + \beta}{2}}\sin{\frac{\alpha - \beta}{2}}\\
\cos{\alpha} + \cos{\beta} &=  2\cos{\frac{\alpha + \beta}{2}}\sin{\frac{\alpha - \beta}{2}}\\
\cos{\alpha} - \cos{\beta} &= -2\cos{\frac{\alpha + \beta}{2}}\sin{\frac{\alpha - \beta}{2}}\\
\tan{\alpha} + \tan{\beta} &=  \frac{\sin\left(\alpha + \beta\right)}{\cos{\alpha}\cos{\beta}}\\
\cot{\alpha} + \cot{\beta} &=  \frac{\sin\left(\alpha + \beta\right)}{\sin{\alpha}\sin{\beta}}\\
\tan{\alpha} - \tan{\beta} &=  \frac{\sin\left(\alpha - \beta\right)}{\cos{\alpha}\cos{\beta}}\\
\cot{\alpha} - \cot{\beta} &= -\frac{\sin\left(\alpha - \beta\right)}{\sin{\alpha}\sin{\beta}}\\
\sin^2{\alpha} - \sin^2{\beta} &=  \sin\left(\alpha + \beta\right) \sin\left(\alpha - \beta\right)\\
\cos^2{\alpha} - \cos^2{\beta} &= -\sin\left(\alpha + \beta\right) \sin\left(\alpha - \beta\right)\\
\cos^2{\alpha} - \sin^2{\beta} &=  \cos\left(\alpha + \beta\right) \cos\left(\alpha - \beta\right)\\
\end{align}
\]

#### Power Identities: {-}

\[
\begin{align}
\sin{\alpha}\sin{\beta} &= \frac{\cos\left(\alpha - \beta\right) - \cos\left(\alpha + \beta\right)}{2}\\
\cos{\alpha}\cos{\beta} &= \frac{\cos\left(\alpha - \beta\right) + \cos\left(\alpha + \beta\right)}{2}\\
\sin{\alpha}\cos{\beta} &= \frac{\sin\left(\alpha + \beta\right) + \sin\left(\alpha - \beta\right)}{2}\\
\cos{\alpha}\sin{\beta} &= \frac{\sin\left(\alpha + \beta\right) - \sin\left(\alpha - \beta\right)}{2}\\
\tan{\alpha}\cot{\alpha} &= \sin{\alpha}\csc{\alpha} = \cos{\alpha}\sec{\alpha} = 1\\
\sin^2{\alpha} &= \frac{1 - \cos{2\alpha}}{2}\\
\cos^2{\alpha} &= \frac{1 + \cos{2\alpha}}{2}\\
\sin^3{\alpha} &= \frac{3\sin{\alpha} - \sin{3\alpha}}{4}\\
\cos^3{\alpha} &= \frac{3\cos{\alpha} + \cos{3\alpha}}{4}\\
\sin^4{\alpha} &= \frac{3 - 4\cos{2\alpha} + \cos{4\alpha}}{8}\\
\cos^4{\alpha} &= \frac{3 + 4\cos{2\alpha} + \cos{4\alpha}}{8}\\
\sin^5{\alpha} &= \frac{10\sin{\alpha} - 5\sin{3\alpha} + \sin{5\alpha}}{16}\\
\cos^5{\alpha} &= \frac{10\cos{\alpha} + 5\cos{3\alpha} + \cos{5\alpha}}{16}\\
\end{align}
\]

#### OBLIQUE TRIANGLES {-}

(no right angle, angles A,B,C are opposite of legs a,b,c)

![Oblique Triangle][02024]

##### Law of Sines:  {-}

\[\frac{a}{\sin{A}} = \frac{b}{\sin{B}} = \frac{c}{\sin{C}}\]

##### Law of Cosines: {-}

\[
\begin{align}
a^2  &= b^2  + c^2  - 2bc\cos{A}\\
b^2  &= a^2  + c^2  - 2ac\cos{B}\\
c^2  &= a^2  + b^2  - 2ab\cos{C}\\
\cos{C} &= \frac{a^2 +b^2 -c^2}{2ab}\\
\end{align}
\]

##### Law of Tangents: {-}

\[\frac{a-b}{a+b} = \frac{\tan\frac{a-b}{2}}{\tan\frac{a+b}{2}}\]

##### Projection Formulas: {-}

\[
\begin{align}
a &= b\cos{C} + c\cos{B}\\
b &= c\cos{A} + a\cos{C}\\
c &= a\cos{B} + b\cos{A}\\
\end{align}
\]

##### Mollweide's Check Formulas: {-}

\[
\begin{align}
\frac{a-b}{c} = \frac{\sin\frac{A-B}{2}}{\cos\frac{C}{2}}\\
\frac{a+b}{c} = \frac{\cos\frac{A-B}{2}}{\sin\frac{C}{2}}\\
\end{align}
\]

## Matrix Algebra 

### Fundamentals

(reference 2.5)

Given two matrices, \(A, B\) where \(A\) is an \(i \times m\) matrix and \(B\) is an \(m \times j\) matrix, that is, the numbers of columns of the first matrix equals the number of rows of the second matrix, we define matrix multiplication as follows:
\[A \times B = A B = C\] where the entry in the *i*th row and *j*th column is given by \(c_{ij}\) where:
\[c_{ij} = \sum_{k=1}^m (a_{ik}b_{kj}).\]
In other words, we take the dot product of the *i*th row and the *j*th column.

For example, the product of a pair of, \(2 \times 2\) matrices is: 

\[
\begin{bmatrix} 
a_{11} & a_{12} \\ 
a_{21} & a_{22} 
\end{bmatrix} 
\begin{bmatrix} 
b_{11} & b_{12} \\ 
b_{21} & b_{22} 
\end{bmatrix} 
= 
\begin{bmatrix} 
a_{11}b_{11}+a_{12}b_{21} & a_{11}b_{12}+a_{12}b_{22} \\ 
a_{21}b_{11}+a_{22}b_{21} & a_{21}b_{12}+a_{22}b_{22} 
\end{bmatrix} 
\]

The *identity* matrix \(I\) occupies the same position in matrix algebra that the value of unity does in ordinary algebra. It is a square matrix consisting of ones on the principle diagonal and zeros everywhere else:
\[I =
\begin{bmatrix}
1 & 0 & \dots & 0 \\
0 & 1 & \dots & 0 \\
\vdots & \vdots & \ddots & \vdots\\
0 & 0 & \dots & 1
\end{bmatrix}
\]

For any matrix \(A\), \(A I = I A = A\).

The *inverse* matrix \(A^{-1}\), if it exists, is the multiplicative inverse under matrix multiplication. That is, 
\[A A^{-1} = A^{-1}A = I.\]

### Cofactors and Determinants

We denote the *determinant* of a square matrix by \(|A|\). For a two-by-two matrix, the determinant is as follows:
\[
\begin{vmatrix}
a & b \\
c & d
\end{vmatrix} = ad - bc.
\]

Formally, for any \(n \times n\) matrix, the determinant is:
\[|A| = \sum_{i=1}^{k}a_{ij} C_{ij} \] where
\[C_{ij} = (-1)^{i+j}M_{ij}\] where
the minor matrix \(M_{ij}\) is in the \((n-1) \times (n-1)\) matrix resulting when the *i*th row and *j*th column are removed from \(A\).  This holds when the sum above is taken over any row, \(i\), or column \(j\). The *cofactor* is \(C_{ij}\) above.

Arbitrarily expanding about the first row of a 3 x 3 matrix gives the determinant:

\[|A| = (-1)^{1+1} a_{11} \begin{vmatrix}
a_{22} & a_{23} \\
a_{32} & a_{33}
\end{vmatrix} 
+ (-1)^{1+2}a_{12} \begin{vmatrix}
a_{21} & a_{23} \\
a_{22} & a_{33}
\end{vmatrix} 
+ (-1)^{1+3}a_{13}\begin{vmatrix}
a_{21} & a_{22} \\
a_{22} & a_{23}
\end{vmatrix}.\]

### Computing the Inverse of a Matrix

There is a straightforward (but computationally inefficient and intensive) four-step method for computing the *inverse* of a matrix \(A\).

**Step 1** Compute the determinant of \(A\).   If the determinant is zero or does not exist, the matrix is said to be *singular* and an inverse does not exist.

**Step 2** Transpose matrix \(A\), denoted \(A^T\).

**Step 3** Replace each element \(a_{ij}\) of the transposed matrix by its *cofactor*, \(A_{ij}\). The resulting matrix is called the *adjoint* matrix, \(adj\left[A\right]\).

**Step 4** Divide the adjoint matrix by the determinant.

*Example.* Solve the following set of simultaneous equations.
\[
3x_1 + 2x_2 - 2x_3 = y_1 \\
-x_1 +x_2 +4x_3 = y_2 \\
2x_1 -3x_2 +4x_3 = y_3
\]
We can express this as \(Ax = y\). If the matrix is invertible, then the solution of the system is given by \(x = A^{-1} y\).

**Step 1.** Compute the determinant: \(|A| = 70\).

**Step 2.** Transpose the matrix.
\[
A^T = \begin{bmatrix} 
3 & -1 & -2 \\ 
2 & 1 & -3 \\
-2 & 4 & 4
\end{bmatrix} 
\]

**Step 3.** Determine the adjoint matrix by replacing each element in \(A^T\) by its Cofactor.

\[
  adj\left[A\right] =
\begin{bmatrix}
\begin{vmatrix} 1 & -3 \\ 4 & 4 \end{vmatrix} 
& - \begin{vmatrix} 2 & -3 \\ -2 & 4 \end{vmatrix}  
& \begin{vmatrix} 2 & 1 \\ -2 & 4 \end{vmatrix} \\
- \begin{vmatrix} -1 & 2 \\ 4 & 4 \end{vmatrix} 
& \begin{vmatrix} 3 & 2 \\ -2 & 4 \end{vmatrix}  
& - \begin{vmatrix} 3 & -1 \\ -2 & 4\end{vmatrix} \\
\begin{vmatrix} -1 & 2 \\ 1 & -3 \end{vmatrix} 
& - \begin{vmatrix} 3 & 2 \\ 2 & -3 \end{vmatrix}  
& \begin{vmatrix} 3 & -1 \\ 2 & 1\end{vmatrix} \\
\end{bmatrix}
=
\begin{bmatrix}
16 & -2 & 10 \\
12 & 16 & -10 \\
1 & 13 & 5 \\
\end{bmatrix}
\]

**Step 4.** Divide by the determinant.

\[
\left[ A \right]^{-1} = \frac{1}{70}
\begin{bmatrix}
16 & -2 & 10 \\
12 & 16 & -10 \\
1 & 13 & 5 \\
\end{bmatrix}
\]

Then, if \(y_1 = 1, y_2 = 13\), and \(y_3 = 8\):

\[
\begin{bmatrix} x_1 \\ x_2 \\ x_3 \end{bmatrix} = \frac{1}{70}
\begin{bmatrix}
16 & -2 & 10 \\
12 & 16 & -10 \\
1 & 13 & 5 \\
\end{bmatrix}
\begin{bmatrix}
1 \\ 13 \\ 8
\end{bmatrix} 
\]

\[
\begin{align}
x_1 &= \frac{1}{70} \left( 16 - 26 + 80 \right) = \frac{70}{70} &= 1 \\
x_2 &= \frac{1}{70} \left( 12 0 208 - 80 \right) = \frac{140}{70} &= 2 \\
x_3 &= \frac{1}{70} \left( 1 + 169 + 40 \right) = \frac{210}{70} &= 3 \\
\end{align}
\]

### Cramer's Rule

Given a matrix, \(A\) and vectors, \(x, b\), we have a system of equations \(A x = b\).  If the determinant of the matrix exists, then let \(A_r\) be the matrix obtained from \(A\) by replacing the \(r\)th column with the vector \(b\).  Then the system of equations has a unique solution:
\[x_r = \det(A)/ \det(A_r).\]

Example of Cramer's Rule

\[
\begin{bmatrix}
1 & 0 & 2\\
-3 & 4 & 6 \\
-1 & -2 & 3 \\
\end{bmatrix}
\begin{bmatrix}
x_1 \\ x_2 \\ x_3
\end{bmatrix}
=
\begin{bmatrix}
6 \\ 30 \\ 8
\end{bmatrix}
\]

\[
\begin{align}
A = \begin{bmatrix} 1 & 0 & 2 \\ -3 & 4 & 6 \\ -1 & -2 & 3 \end{bmatrix} & A_1 = \begin{bmatrix} 6 & 0 & 2 \\ 30 & 4 & 6 \\ 8 & -2 & 3 \end{bmatrix} \\
A_2 = \begin{bmatrix} 1 & 6 & 2 \\ -3 & 30 & 6 \\ -1 & 8 & 3 \end{bmatrix} & A_3 = \begin{bmatrix} 1 & 0 & 6 \\ -1 & 4 & 30 \\ -3 & -2 & 8 \end{bmatrix} \\
\end{align}
\]

\[
\begin{align}
x_1 &= \frac{\det\left( A_1 \right)}{\det\left( A \right)} = \frac{-40}{44} = \frac{-10}{11} \\
x_2 &= \frac{\det\left( A_2 \right)}{\det\left( A \right)} = \frac{72}{44} = \frac{18}{11} \\
x_3 &= \frac{\det\left( A_3 \right)}{\det\left( A \right)} = \frac{152}{44} = \frac{38}{11} \\
\end{align}
\]

## Vector Algebra

(reference 2.5)

### Addition

Given vectors \(\bar{A}\) and \(\bar{B}\), where the \(i\)th component of \(\bar{A}\) is given by \(a_i\), we define addition \(\bar{A} + \bar{B}\) component-wise, such that the \(i\)th component of \(\bar{A} + \bar{B}\) is given by \(a_i + b_i\).

![Vector Addition][02038]

### Subtraction

We define vector subtraction just as we defined vector addition above.

![Vector Subtraction][02039]

### Scalar Multiplication

Given a real number, \(m\), and vectors \(\bar{A}\) and \(\bar{B}\), where the *i*th component of \(\bar{A}\) is given by \(a_i\), we define scalar multiplication \(m \bar{A}\) component-wise, such that the *i*th component of \(m \bar{A}\) is given by \(m a_i\).

When \(m\) and \(a+i\) are real numbers, the usual properties apply:

**Commutative** \(m \bar{A} = \bar{A} m\).

**Associative** \(m (n \bar{A}) = (mn) \bar{A}\).

**Distributive** \((m + n) \bar{A} = m \bar{A} + n \bar{A}\).

When \(a+i\) are real numbers, we have the following properties that apply to *vectors*:

**Commutative** \(\bar{A} + \bar{B} = \bar{B} + \bar{A}\).

**Associative** \(\bar{A} + (\bar{B} + \bar{C}) = (\bar{A} + \bar{B}) + \bar{C}\).

**Distributive** \(m (\bar{A} + \bar{B}) = m \bar{A} + m \bar{B}\).

### Dot Product

Given vectors \(\bar{A}\) and \(\bar{B}\), where the \(i\)th component of \(\bar{A}\) is given by \(a_i\) and the vectors have the same dimension, \(n\), we define the dot product \(\bar{A} \cdot \bar{B}\) as follows:
\[\bar{A} \cdot \bar{B} = \sum_{i=1}^{n}a_i b_i .\]
For example, given three-dimensional vectors, we have:
\[\bar{A} \cdot \bar{B} = a_1 b_1 + a_2 b_2 + a_3 b_3 .\]
The terms dot product, scalar product, and inner product usually mean the same thing.

### Norm

The norm or vector norm, denoted
\[ \left| \bar{A} \right|,\]
is the magnitude of the vector. We compute it thus:
\[ \left| \bar{A} \right| = \sqrt{\sum_{i=1}^{n} a_i^2} .\].
For example, given a three-dimensional vector in the \(xyz\) plane, we have:
\[ \left| \bar{A} \right| = \sqrt{a_x^2 + a_y^2 + a_z^2} .\]
The two types of notation, \(| \bar{A} |\) and \(||\bar{A}||\) are equivalent.

With this additional notation, we can also define the **dot product** this way:
\[\bar{A} \cdot \bar{B} = \left| \bar{A} \right| \left| \bar{B} \right| \cos{\theta} ,\]
where \(\theta\) is the angle between the vectors.

### Vector Cross Product

The cross product is an operation on vectors in three dimensional space denoted \(\bar{A} \times \bar{B} .\) We can define it in terms of matrix determinants in the following way.
\[ \bar{A} \times \bar{B} = \begin{vmatrix}
\hat{i} & \hat{j} & \hat{k}\\
a_x & a_y & a_z\\
b_x & b_y & b_z
\end{vmatrix}
.\]

Expanding this expression gives us:
\[ \bar{A} \times \bar{B} = \begin{vmatrix}
a_y & a_z\\
b_y & b_z
\end{vmatrix} \hat{i}
+ \begin{vmatrix}
a_x & a_z\\
b_x & b_z
\end{vmatrix} \hat{j}
+ \begin{vmatrix}
a_x & a_y\\
b_x & b_y
\end{vmatrix} \hat{k}
.\]

![Cross Product][02048]

\[\hat{i} \times \hat{i} = \hat{j} \times \hat{j} = \hat{k} \times \hat{k} = 0 \]
\[\hat{i} \times \hat{j} = \hat{k} \quad \hat{j} \times \hat{k} = \hat{i} \quad \hat{k} \times \hat{i} = \hat{j} \]
\[\hat{j} \times \hat{i} = -\hat{k} \quad \hat{k} \times \hat{j} = -\hat{i} \quad \hat{i} \times \hat{k} = -\hat{j} \]

### Vector Differentiation

Let \(\vec{r}(t)\) be a vector-valued function, denoted in this way: \(\vec{r}(t) = (x(t),y(t))\), which is an example of a function that returns a position vector.  A similar and equivalent notation is as follows: \(\vec{r}(t) = x(t)\hat{i} + y(t)\hat{j}\).

The first derivative of \(\vec{r}(t)\) with respect to time, \(t\), is a vector-valued function that denotes velocity. This function returns a vector tangential to the trajectory with a magnitude equal to the speed of the particle.

The second derivative of \(\vec{r}(t)\) with respect to time, \(t\), is a vector-valued function that denotes acceleration. This function returns a vector tangential to the velocity vector with a magnitude equal to the acceleration of the particle.

With this notation, the normal differenation operations hold for vector-valued *functions* along with the following.

**Derivative of a Sum**
\[\frac{d}{dt}\left( \vec{r}(t) + \vec{s}(t) \right) = \frac{d}{dt}\vec{r}(t) + \frac{d}{dt}\vec{s}(t).\]

**Derivative of a Dot Product**
\[\frac{d}{dt}\left( \vec{r}(t) \cdot \vec{s}(t) \right) = \vec{r}(t) \cdot \frac{d}{dt}\vec{s}(t) + \frac{d}{dt}\vec{r}(t) \cdot \vec{s}(t).\]

**Derivative of a Cross Product**
\[\frac{d}{dt}\left( \vec{r}(t) \times \vec{s}(t) \right) = \vec{r}(t) \times \frac{d}{dt}\vec{s}(t) +  \frac{d}{dt}\vec{r}(t) \times \vec{s}(t).\]

**Derivative of a Scalar Product**
If \(f(t)\) is a scalar-valued function, then
\[\frac{d}{dt}\left( f(t)\vec{r}(t) \right) = f(t)\frac{d}{dt}\vec{r}(t) + \left(\frac{d}{dt} f(t)\right) \vec{r}(t).\]

### Motion of a point using two reference systems

Reference A can be considered the inertial frame while Rotation of the B reference relative to the A reference must be considered when observing motion with respect to the A reference system.

![Trajectory with Two Reference Systems][02051]

Note: Unit vectors are along the B system axes. Subscripts denote reference system. Reference B can be equivalent to a maneuvering aircraft.

\[\bar{\rho} = x \hat{i} + y \hat{j} + z \hat{k}\]

\[\left( \frac{d \bar{\rho}}{dt} \right)_B = \dot{x} \hat{i} + \dot{y} \hat{j} + \dot{z} \hat{k}\]

\[\left( \frac{d \bar{\rho}}{dt} \right)_A = \left( \dot{x}\hat{i} + \dot{y}\hat{j} + \dot{z}\hat{k} \right) + \left( x \dot{\hat{i}} + y \dot{\hat{j}} + z \dot{\hat{k}} \right)\]

\[\left( \frac{d \bar{\rho}}{dt} \right)_A = \left( \frac{d \bar{\rho}}{dt} \right)_B + \bar{\omega} \times \bar{\rho}\]

The velocities of the particle \(P\) relative to the \(A\) and to the \(B\) references, respectively, are as follows:

\[\bar{V}_A = \left( \frac{d\bar{r}}{dt} \right)_A\]

\[\bar{V}_B = \left( \frac{d\bar{\rho}}{dt} \right)_B\]

These velocities can be related by noting that \(\bar{r} = \bar{R} + \bar{\rho}\).

Taking the derivative with respect to time for the \(A\) reference:
\[\bar{V}_A = \left(\frac{d \bar{r}}{dt}  \right)_A = \left( \frac{d \bar{R}}{dt} \right)_A + \left( \frac{d \bar{\rho}}{dt} \right)_A\]

The term \(\left(\frac{d \bar{r}}{dt}  \right)_A \) is the velocity of the origin of \(B\) reference relative to the \(A\) reference.  We denote
\[\left(\frac{d \bar{r}}{dt}  \right)_A = \dot{\overline{R}}.\]

Substituting for \(\left( \frac{d \bar{\rho}}{dt} \right)_A\) gives the following:
\[\bar{V}_A  = \dot{\overline{R}} + \bar{V}_B + \bar{\omega} \times \bar{\rho}.\]

The term is the "transport velocity" and is the only velocity if point P is rigidly attached to reference B.

A similar derivation for acceleration gives the following:
\[\bar{a}_A = \bar{a}_B + 2(\bar{\omega} \times \bar{V}_B) + \ddot{\overline{R}} + (\dot{\bar{\omega}} \times \bar{\rho}) + \bar{\omega} \times (\bar{\omega} \times \bar{\rho}).\]

Here \(\bar{\omega} \times (\bar{\omega} \times \bar{\rho})\) is the centripetal acceleration,  \(2(\bar{\omega} \times \bar{V}_B) \) is the Coriolis acceleration, and the transport acceleration, which is the only acceleration if point P is rigidly attached to reference B, is given by the following:
\[\ddot{\overline{R}} + (\dot{\bar{\omega}} \times \bar{\rho}) + \bar{\omega} \times (\bar{\omega} \times \bar{\rho}).\]

### Motion of a point using one reference system

Reference A can be considered the inertial frame while the body can be equivalent to a maneuvering aircraft.

![Motion with One Reference System][02064]

A derivation similar to the previous gives us the following for
velocity:
\[\dot{\bar{\rho}} = \bar{\omega} \times \bar{\rho},\]

and acceleration:
\[\bar{a}_b = \bar{a}_a + (\dot{\bar{\omega}} \times \bar{\rho}) + \bar{\omega} \times (\bar{\omega} \times \bar{\rho}).\]

## Probability and Statistics

(reference 2.6)

***Definitions:***

Population: The set of all possible observations

Sample: Any subset of a population

Homogeneous Sample: The sample comes from 1 population only

Random Sample: Equal probability of selecting any member of the population 

Independence (of events A and B): P(A and B) = P(A)\*P(B)

Sample and Population Mean (Average value):
\[\mu = \bar{x} = \frac{1}{N} \sum_{i=1}^N{x_i} \]

Mode (Most commonly occurring value in a sample)

Median (middle value, 50th percentile. Half of the sample values are greater and half are smaller)

Deviation:
\[d_i = x_i - \bar{x} \]

Population Variance:
\[\sigma^2 =  \frac{1}{N} \sum_{i=1}^N{(x_i - \bar{x}})^2 = \frac{1}{N} \sum_{i=1}^N{d_i^2}\]

Population Standard Deviation (square root of variance):
\[\sigma = \sqrt{\frac{1}{N} \sum_{i=1}^N{(x_i - \bar{x}})^2} \]

Sample Standard Deviation:
\[s = \sqrt{\frac{1}{N-1} \sum_{i=1}^N{(x_i - \bar{x}})^2} \]

***Discrete Probability Distributions:***

***Uniform***
The probability of any outcome in a given set is the same.  If there are \(N\) possible outcomes in a set, then the probability of a given outcome is \(p=1/N\). For example, when rolling a fair dice with \(N=6\) sides, the probability that the toss will result in any given side is \(p = 1/6\).

***Binomial***
The probability that the random variable \(X = x\) in \(N\) independent events, each having probability \(p\) of success, and \(1-p\) of failure.
\[P(X = k) = \binom{N}{k}p^x (1-p)^{N-x}\] where
\[\binom{N}{k} = \frac{N!}{k!(N-k)!}.\]

For example, tossing a fair coin N times where \(p = 1/2\) is the probability of getting a head on any toss.  If \(X\) indicates the number of heads in \(N\) tosses, then we have  \(P(X = x) = (1/2)^x (1/2)^{N-x}\). For \(N = 4\) we have the following table:

|x |P(X=x)|
|:-:|:-:|
|\(0\)| \(1/16\)|
|\(1\)| \(1/4\)|
|\(2\)| \(3/8\)|
|\(3\)| \(1/4\)|
|\(4\)| \(1/16\)|

**Continuous Distributions**
Continuous distributions are defined for all \(x \in [a,b]\), where \(a, b \in \mathbb{R}\) or for all \(x \in (-\infty, \infty)\), that is, the whole real number line. The probability for any single point is zero; that is, \(P(X=x) = 0\). Instead, one must work with probability on an interval, e.g., \(P(0 < x)\) or \(P(a < x < b)\).

**The Normal Distribution**
The probability density function of the Normal Distribution is given by:
\[f(x) = \frac{1}{\sqrt{2 \pi \sigma}}\mathrm{e}^{\frac{-(x-\mu)^2}{2\sigma^2}}\]

**The Standard Normal Distribution**
The Standard Normal Distribution is simply the Normal Distribution with \(\mu = 0\) and \(\sigma=1\).

**Error Probable**
An interval centered at the mean that contains one-half of the distribution.

**Circular Error Probable**
A circle centered at the mean, in a bivariate normal distribution, that contains one-half of the distribution.

**Confidence Intervals**
An interval estimate of a statistic.

**Central Limit Theorem**
The sample mean of data sampled from a normally distributed population is itself normally distributed with mean, \(\mu\), and variance, \(\sigma^2/\sqrt{n}\), where the population distribution is \(N(\mu,\sigma^2)\) and \(n\) is the sample size and usually \(n \geq 30\).

**Hypothesis Testing** Begins with an assumption (hypothesis), usually about the underlying population distribution of some measured quantity or computed error. Select values for the hypothesis and alternate hypothesis(es) that partition the sample space. Collect N samples of the population test statistic or parameter. There are two types of errors: Type 1 errors reject the hypothesis when it is true; Type II accept the hypothesis when it is false.

## Standard Series

(reference 2.4)

A *Taylor Series* is the expansion of a function about a point, \(a\), given only the value of the function and all of its derivatives at that point.  It is used to estimate functions when other analytical techniques will not work.
\[f(x) = \sum_{i=0}^{\infty} \frac{{f(a)(x-a)^i}}{i!} = f(a) + f'(x-a) + \frac{f''(a)(x-a)^2}{2} + \dots + \frac{f^{(n)}(a)(x-a)^n}{n!} + \dots\]

The *Maclaurin Series* is a Taylor Series with \(a = 0\).

The *Binomial Series* is a Taylor Series with \(f(x)=(a + x)^n\). When n is a natural number, the result is a polynomial as follows:
\[(a+x)^n = a^n + na^{n-1}x + \frac{n(n-1)a^{n-2}x^2}{2} + \frac{n(n-1)(n-2)a^{n-3}x^3}{3!} + \dots + x^n\]

The Taylor Series expansion of an *Exponential* function gives the following:
\[a^x = 1 + x \ln a + \frac{(x \ln a)^2}{2} + \frac{(x \ln a)^3}{3!} + \dots\]

In the special case when \(a = e\):
\[\mathrm{e}^x = 1 + x + \frac{x^2}{2} + \frac{x^3}{3!}+ \dots\]

Hyperbolic \(\sin\) and \(\cos\) functions are another special case:
\[\cosh x = \frac{(\mathrm{e}^x + \mathrm{e}^{-x})}{2} = 1 + \frac{x^2}{2} + \frac{x^4}{4!}+ \dots\]
\[\sinh x = \frac{(\mathrm{e}^x - \mathrm{e}^{-x})}{2} = x + \frac{x^3}{3!} + \frac{x^5}{5!}+ \dots\]

The Taylor Series expansion of an *Logarithmic* function gives the following. When \(0 < x < 2\):
\[\ln x = (x-1) - \frac{(x-1)^2}{2} + \frac{(x-1)^3}{3} + \dots\]
When \(x > 1/2\):
\[\ln x = \frac{(x-1)}{x} - \frac{(x-1)^2}{2x^2} + \frac{(x-1)^3}{3x^3} + \dots\]
When \(0 < x\):
\[\ln x = 2 \left[ \frac{(x-1)}{x+1} - \frac{(x-1)^3}{3(x+1)^3} + \frac{(x-1)^5}{5(x-1)^5} + \dots \right]\]

The following are Taylor Series expansion of *Trigonometric* functions:
\[\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} -\frac{x^7}{7!}+ \dots\]
\[\cos x = x - \frac{x^2}{2!} + \frac{x^4}{4!} -\frac{x^6}{6!}+ \dots\]
\[\tan x = x + \frac{x^3}{3} + \frac{2x^5}{15} + \frac{17x^7}{315}+ \dots \text{ whenever } (x^2 < \pi^2/4)\]
\[\sin^{-1} x = x + \frac{1}{2}\frac{x^3}{3} + \frac{1}{2}\frac{3}{4}\frac{x^5}{5} + \frac{1}{2}\frac{3}{4}\frac{5}{6}\frac{x^7}{7!} + \dots \text{for } |x|<1\]
\[\cos^{-1} x = \frac{\pi}{2} - \sin^{-1}x \text{ for } |x|<1\]
\[\tan^{-1} x = x - \frac{x^3}{3!} + \frac{x^5}{5!} -\frac{x^7}{7!} + \dots\text{ for } |x|<1\]
\[\ln(\sin x) = \ln x - \frac{x^2}{6} - \frac{x^4}{180} - \frac{x^6}{2835}- \dots \text{for } x^2 < \pi^2\]
\[\ln(\cos x) = - \frac{x^2}{s} - \frac{x^4}{12} - \frac{x^6}{45} - \frac{x^8}{2520} \dots \text{for } x^2 < \frac{\pi^2}{4}\]
\[\ln(\tan x) = \ln x + \frac{x^2}{3} - \frac{7x^4}{90} - \frac{62x^6}{2835}+ \dots \text{for } x^2 < \frac{\pi^2}{4}\]
\[\mathrm{e}^{\sin x} = 1 + x + \frac{x^2}{2!} - \frac{3x^4}{4!} -\frac{8x^5}{5!} + \frac{3x^2}{6!} + \dots\]
\[\mathrm{e}^{\cos x} = e \left(1 - \frac{x^2}{2!} +\frac{4x^2}{4!} - \frac{31x^6}{6!} + \dots \right)\]
\[\mathrm{e}^{\tan x} = 1 + x + \frac{x^2}{2!} + \frac{3x^3}{3!} + \frac{9x^4}{4!} + \frac{37x^5}{5!} + \dots \text{for } x^2 < \frac{\pi^2}{4}\]

## Derivative Table 

(references 2.2, 2.3)

* \(x\) is the independent variable
* \(u\) and \(v\) are dependent on \(x\)
* \(w\) is dependent on \(u\)
* \(a\) and \(n\) are constants
* \(\log{x}\) is the common logarithm to base 10, \(\log_{10}{x}\)
* \(\ln{x}\) is logarithm to the base \(e\), \(\log_e{x}\)

------
*Fundamental Derivatives*
\[\frac{da}{dx} = 0\]
\[\frac{d\left(ax\right)}{dx} = a\]
\[\frac{dx^n}{dx} = nx^{n-1}\]
\[\frac{d\left(u + v \right)}{dx} = \frac{du}{dx} + \frac{dv}{dx}\]
\[\frac{d\left(uv \right)}{dx} = u\frac{dv}{dx} + v\frac{du}{dx}\]
\[\frac{d\left(\frac{u}{v} \right)}{dx} = \frac{1}{v^2} \left( v\frac{du}{dx} - u\frac{dv}{dx} \right)\]
\[\frac{dw}{dx} = \frac{dw}{du}\frac{du}{dx}\]
\[\frac{du^n}{dx} = nu^{n-1}\frac{du}{dx}\]
*Expressions Containing Exponential and Logarithmic Functions*
\[\frac{d \ln{x}}{dx} = \frac{1}{x}\]
\[\frac{d \ln{u}}{dx} = \frac{1}{u}\frac{du}{dx}\]
\[\frac{d \log{u}}{dx} = \frac{\log{e}}{u}\frac{du}{dx}\]
\[\frac{d\mathrm{e}^x}{dx} = \mathrm{e}^x\]
\[\frac{da^x}{dx} = a^x \ln{a}\]
\[\frac{da^u}{dx} = a^u \ln{a}\frac{du}{dx}\]
\[\frac{du^v}{dx} = vu^{v-1}\frac{du}{dx} + u^v \ln{u}\frac{dv}{dx}\]
*Expressions Containing Trigonometric Functions*
\[\frac{d \sin{x}}{dx} = \cos{x} \text{ or } \frac{d \sin{u}}{dx} = \cos{u}\frac{du}{dx}\]
\[\frac{d \cos{x}}{dx} = -\sin{x} \text{ or } \frac{d \cos{u}}{dx} = -\sin{u}\frac{du}{dx}\]
\[\frac{d \tan{x}}{dx} = \sec^2{x} \text{ or } \frac{d \tan{u}}{dx} = \sec^2{u}\frac{du}{dx}\]
\[\frac{d \sec{x}}{dx} = \sec{x}\tan{x} \text{ or } \frac{d \sec{u}}{dx} = \sec{u}\tan{u}\frac{du}{dx}\]
\[\frac{d \cot{x}}{dx} = -\csc^2{x} \text{ or } \frac{d \cot{u}}{dx} = -\csc^2{u}\frac{du}{dx}\]
\[\frac{d \sin^{-1}{x}}{dx} = \frac{1}{\sqrt{1-x^2}} \text{ or } \frac{d \sin^{-1}{u}}{dx} = \frac{1}{\sqrt{1-u^2}}\frac{du}{dx}\]
\[\frac{d \cos^{-1}{x}}{dx} = -\frac{1}{\sqrt{1-x^2}} \text{ or } \frac{d \cos^{-1}{u}}{dx} = -\frac{1}{\sqrt{1-u^2}}\frac{du}{dx}\]
\[\frac{d \tan^{-1}{x}}{dx} = \frac{1}{1+x^2} \text{ or } \frac{d \tan^{-1}{u}}{dx} = \frac{1}{1+u^2}\frac{du}{dx}\]
\[\frac{d \cot^{-1}{x}}{dx} = -\frac{1}{1+x^2} \text{ or } \frac{d \cot^{-1}{u}}{dx} = -\frac{1}{1+u^2}\frac{du}{dx}\]
-----

## Integral Table

(references 2.2, 2.3)



* \(x\) is any variable
* \(u\) is any function of \(x\)
* \(w\) is dependent on \(u\)
* \(a\) and \(b\) are arbitrary constants
* \(C\), the constant of integration, has been omitted from this table, but
should be added to the result of every integration

---------------------
*Fundamental Integrals*
\[ \int_{}{} a \, dx = ax \]
\[ \int_{}{} a \, f\left(x\right) dx = a \int_{}{} f\left(x\right) dx \]
\[ \int_{}{} \left(u+v\right) dx = \int_{}{} u\,dx + \int_{}{}v\,dx \]
\[ \int_{}{} u\,dv = uv - \int_{}{}v\,du \]
\[ \int_{}{} \frac{u\,dv}{dx} dx = uv - \int_{}{} v \frac{du}{dx} dx\]
\[ \int_{}{} x^n dx = \frac{x^{n+1}}{n+1} \text{, } n \neq -1\]
\[ \int_{}{} x^{-1} dx = \ln{x}  \]
\[ \int_{}{} w \left( u \right) dx = \int_{}{} w\left( u \right) \frac{dx}{du} u \]
\[ \int_{}{} \frac{dx}{a^2 + x^2} = \frac{1}{a} \tan^{-1} \frac{x}{a} \]
\[ \int_{}{} \frac{dx}{\sqrt{a^2 - x^2}} = \sin^{-1} \frac{x}{a} \]
\[ \int_{}{} \frac{dx}{\sqrt{a^2 \pm x^2}} = \ln \left( x - \sqrt{a^2 \pm x^2} \right) \]
\[ \int_{}{} \sqrt{a^2 - u^2} = \frac{1}{2} \left( u \sqrt{a^2 - x^2} + a^2 \sin^{-1} \frac{u}{a} \right) \]
\[ \int_{}{} \frac{du}{a^2 + u^2} = \frac{1}{a} \tan^{-1} \frac{u}{a} \text{, } a \gt 0 \]
*Expressions Containing Exponential and Logarithmic Functions*
\[ \int_{}{} \frac{dx}{x} = \ln{x} \]
\[ \int_{}{} \mathrm{e}^{x} dx = \mathrm{e}^{x} \]
\[ \int_{}{} \mathrm{e}^{ax} dx = \frac{\mathrm{e}^{ax}}{a} \]
\[ \int_{}{} b^{ax} dx = \frac{b^ax}{a \ln{b}} \]
\[ \int_{}{} \ln{x} dx = x \ln{x} - x \]
\[ \int_{}{} b^{u} du = \frac{b^u}{\ln{u}} \]
\[ \int_{}{} x \mathrm{e}^{ax} dx = \frac{\mathrm{e}^ax}{a^2} \left( ax - 1 \right) \]
\[ \int_{}{} x b^{ax} dx = \frac{x b^{ax}}{a \ln{b} } - \frac{b^{ax}}{a^2 \left( \ln{b} \right) } \]
\[ \int_{}{} x^2 \mathrm{e}^{ax} dx = \frac{\mathrm{e}^{ax}}{a^3} \left(a^2 x^2 - 2ax + 2 \right) \]
\[ \int_{}{} \ln{ax} dx = x \ln{ax} - x \]
\[ \int_{}{} x \ln{ax} dx = \frac{x^2}{2} \ln{ax} - \frac{x^2}{4} \]
\[ \int_{}{} x^2 \ln{ax} dx = \frac{x^3}{3} \ln{ax} - \frac{x^3}{9} \]
\[ \int_{}{} \left( \ln{ax} \right)^2 dx = x \left( \ln{ax} \right)^2 - 2x \ln{ax} + 2x \]
\[ \int_{}{} \frac{dx}{x \ln{ax}} = \ln{\left( \ln{ax} \right)} \]
\[ \int_{}{} \frac{x^n}{\ln{ax}} dx = \frac{1}{a^{n+1}} \int_{}{} \frac{\mathrm{e}^{y} dy}{y} \text{, where } y = \left(n + 1\right) \ln{ax} \]
*Expressions Containing Trigonometric Functions*
\[ \int_{}{} \sin{x} dx = -\cos{x} \]
\[ \int_{}{} \cos{x} dx = \sin{x} \]
\[ \int_{}{} \tan{x} dx = -\ln{ \left( \cos{x} \right)} \]
\[ \int_{}{} \cot{x} dx = \ln{\left( \sin{x} \right)} \]
\[ \int_{}{} \sec{x} dx = \ln{ \left( \sec{x} + \tan{x} \right)} \]
\[ \int_{}{} \csc{x} dx = \ln{ \left( \csc{x} - \cot{x} \right)} \]
\[ \int_{}{} \sin^2{u} du = \frac{1}{2} u - \frac{1}{2} \sin{u} \cos{u} \]
\[ \int_{}{} \cos^2{u} du = \frac{1}{2} u + \frac{1}{2} \sin{u} \cos{u} \]
\[ \int_{}{} \csc^2{u} du = -\cot{u} \]
\[ \int_{}{} \tan^2{u} du = \tan{u} - u \]
\[ \int_{}{} \cot^2{u} du = -\cot{u} - u \]
\[ \int_{}{} \sin{ax} dx = -\frac{1}{a} \cos{ax} \]
\[ \int_{}{} \sin^2{ax} dx = \frac{x}{2}-\frac{\sin{2ax}}{4a}  \]
\[ \int_{}{} \frac{dx}{\sin{ax}} = \frac{1}{a} \ln{ \tan{\frac{ax}{2}}} \]
\[ \int_{}{} \frac{dx}{\sin^2{ax}} = -\frac{1}{a} \cot{ax} \]
\[ \int_{}{} \frac{dx}{1 \pm \sin{ax}} = \mp \frac{1}{a} \tan{\left( \frac{\pi}{4} \mp \frac{ax}{2} \right) } \]
\[ \int_{}{} \sin{x} \cos{x} dx = \frac{1}{2} \sin^2{x} \]
---------------------

## Laplace Table

(references 2.2, 2.3)

Time Domain \(f(t) = \mathcal{L}^{-1} \left\{ F \left( s \right) \right\} \)      | Frequency Domain \(F\left( s \right) = \mathcal{L} \left\{ f \left( t \right) \right\}\)
---------------------------|---------------------------------
\[1 \text{ (step function)}\]      | \[\frac{1}{s} \text{, where } \left(s\gt 0\right) \]
\[t\]                         | \[\frac{1}{s^2} \text{, where } \left(s\gt 0\right) \]
\[t^{n-1}\]                | \[\frac{\left( n-1 \right)!}{s^n} \text{, where } \left(s\gt 0\right) \]
\[\sqrt{t}\]                  | \[\frac{{\sqrt \pi  }}{{2{s^{\frac{3}{2}}}}} \text{, where } \left(s\gt 0\right) \]
\[\frac{1}{\sqrt{t}}\]         | \[\frac{{\sqrt \pi  }}{{{s^{\frac{1}{2}}}}} \text{, where } \left(s\gt 0\right) \]                            
\[{t^{n - \frac{1}{2}}},\,\,\,\,\,n = 1,2,3, \ldots\]     | \[\frac{{1 \cdot 3 \cdot 5 \cdots \left( {2n - 1} \right)\sqrt \pi  }}{{{2^n}{s^{n + \frac{1}{2}}}}} {, where } \left(s\gt 0\right) \]
\[\mathrm{e}^{at}\]                     | \[ \frac{1}{s-a} \text{, where } \left(s\gt a \right) \]
\[t\mathrm{e}^{at}\]                    | \[\frac{1}{{\left( {s - a} \right)}^{2}} \text{, where } \left(s\gt a \right) \]
\[{t^n}{{e}^{at}},\,\,\,\,\,n = 1,2,3, \ldots\] | \[\frac{{n!}}{{{{\left( {s - a} \right)}^{n + 1}}}} \text{, where } \left(s\gt a \right) \]
\[\sin{at} \]                   | \[\frac{a}{s^2 + a^2} \text{, where } \left(s\gt 0 \right) \]
\[\cos{at}\]                    | \[\frac{s}{s^2 + a^2} \text{, where } \left(s\gt 0 \right) \]
\[\mathrm{e}^{bt} \sin{at}\]              | \[\frac{a}{\left(s - b \right)^2 + a^2} \text{, where } \left(s\gt b \right) \]
\[\mathrm{e}^{bt} \cos{at}\]              | \[\frac{s-b}{\left(s - b \right)^2 + a^2} \text{, where } \left(s\gt b \right) \]
\[t \sin{at}\]                  | \[\frac{2as}{\left(s^2  - a^2\right)^2} \text{, where } \left(s\gt a \right) \]
\[t \cos{at}\]                  | \[\frac{s^2  - a^2}{\left(s^2  + a^2\right)^2} \text{, where } \left(s\gt 0 \right) \]
\[\sinh{at}\]                   | \[\frac{a}{\left(s^2  - a^2\right)^2} \text{, where } \left(s\gt \lvert a \rvert \right) \]
\[\cosh{at}\]                      |           \[\frac{s}{\left(s^2  - a^2\right)^2} \text{, where } \left(s\gt \lvert a \rvert \right) \]
\[\sin \left(at + b\right)\]                 |   \[\frac{s\sin{b} + a \cos{b}}{\left(s^2  + a^2\right)^2} \]
\[\cos \left(at + b\right)\]                 |   \[\frac{s\cos{b} - a \sin{b}}{\left(s^2  + a^2\right)^2} \]
\[\frac{\mathrm{e}^{at} - \mathrm{e}^{bt}}{a - b}\] | \[\frac{1}{\left(s-a\right)\left(s-b\right)} \]
\[\frac{a\mathrm{e}^{at} - b\mathrm{e}^{bt}}{a - b}\] | \[\frac{s}{\left(s-a\right)\left(s-b\right)} \]
\[\delta \text{ (impulse function)}\]         | \[1\]
\[\text{square wave, period }=2c\]      | \[\frac{1}{s \left( 1 + \mathrm{e}^{-cs} \right)} \]
\[\text{triangular wave, period }=2c\]      | \[\frac{1 - \mathrm{e}^{-cs}}{s^2 \left( 1 + \mathrm{e}^{-cs} \right)} \]
\[ \begin{align} at \text{ for } 0 \leq t \lt c \\ \text{sawtooth wave, period } = c \end{align}\]   | \[ \frac{a \left( 1 + cs - \mathrm{e}^{-cs} \right) }{s^2 \left( 1 - \mathrm{e}^{-cs} \right) } \]
\[\sin{at} \sin{bt} \]           |      \[ \frac{2abs}{\left( s^2 + \left(a+b\right)^2\right) \left( s^2 + \left(a-b\right)^2\right)} \]
\[\frac{1 - \cos{at}}{a^2}  \]                   | \[ \frac{1}{s \left( s^2 + a^2 \right) } \]
\[\frac{at - \sin{at}}{a^3}  \]                   | \[ \frac{1}{s^2 \left( s^2 + a^2 \right) } \]
\[\frac{\sin{at} - at\cos{at}}{2a^3}  \]                   | \[ \frac{1}{\left( s^2 + a^2 \right)^2 } \]

## References

|||
|-|---------------|
|2.1 |Burington, Richard S., "Handbook of Mathematical Tables and Formulas", McGraw-Hill Inc., 1973.|
|2.2 |Ayers, F., Moyer, R., "Trigonometry", Schaum's Outline series, McGraw-Hill Inc., 1990.|
|2.3 |Esbach, Ovid W., "Handbook of Engineering Fundamentals", John Wiley and Sons Inc., 1963.|
|2.4 |Hudson, Ralph G., "The Engineers' Manual", John Wiley and Sons Inc., 1944.|
|2.5 |Jones, G., *Chapter 14, Vectors and Matrices*, from "Flying Qualities Testing, Vol II" , National Test Pilot School, P.O. Box 658, Mojave CA, 93501.|
|2.6 |"Flying Qualities Testing, Vol II", 1997, National Test Pilot School, P.O. Box 658, Mojave CA, 93501.|
|2.7 |Lewis, G., *Chapter 2, Data Analysis*, from "Crew station Evaluation and Data Analysis, Vol IV", 1997, National Test Pilot School, P.O. Box 658, Mojave CA, 93501.|

  [02021]: media/02/image22.png
  [02022]: media/02/image23.png
  [02023]: media/02/image24.png
  [02024]: media/02/image25.png
  [02025]: media/02/image26.png
  [02026]: media/02/image27.png
  [02027]: media/02/image28.png
  [02028]: media/02/image29.png
  [02029]: media/02/image30.png
  [02030]: media/02/image31.png
  [02031]: media/02/image32.png
  [02032]: media/02/image33.png
  [02033]: media/02/image34.png
  [02034]: media/02/image35.png
  [02035]: media/02/image36.png
  [02036]: media/02/image37.png
  [02037]: media/02/image38.png
  [02038]: media/02/image39.png
  [02039]: media/02/image40.png
  [02040]: media/02/image41.svg
  [02041]: media/02/image42.png
  [02042]: media/02/image43.png
  [02043]: media/02/image44.png
  [02044]: media/02/image45.png
  [02045]: media/02/image46.png
  [02046]: media/02/image47.png
  [02047]: media/02/image48.png
  [02048]: media/02/image49.png
  [02049]: media/02/image50.png
  [02050]: media/02/image51.png
  [02051]: media/02/image52.png
  [02052]: media/02/image53.png
  [02053]: media/02/image54.png
  [02054]: media/02/image55.png
  [02055]: media/02/image56.png
  [02056]: media/02/image57.png
  [02057]: media/02/image58.png
  [02058]: media/02/image59.png
  [02059]: media/02/image60.png
  [02060]: media/02/image61.png
  [02061]: media/02/image62.png
  [02062]: media/02/image63.png
  [02063]: media/02/image64.png
  [02064]: media/02/image65.png
  [02065]: media/02/image66.png
  [02066]: media/02/image67.png
  [02067]: media/02/image68.png
  [02068]: media/02/image69.png
  [02069]: media/02/image70.png
  [02070]: media/02/image71.png
  [02071]: media/02/image72.png
  [02072]: media/02/image73.png
  [02073]: media/02/image74.png
  [02074]: media/02/image75.png
  [02075]: media/02/image77.png
  [02076]: media/02/image78.png
  [02077]: media/02/image79.png
  [02078]: media/02/image80.png
  [02079]: media/02/image81.png
  [02080]: media/02/image82.svg
  [02081]: media/02/image83.svg
  [02082]: media/02/image84.svg
  [02083]: media/02/image85.svg
  [02084]: media/02/image86.svg
  [02085]: media/02/image87.svg
  [02086]: media/02/image88.svg
  [02087]: media/02/image89.svg
  [02088]: media/02/image90.svg
  [02089]: media/02/image91.svg
  [02090]: media/02/image92.png
  [02091]: media/02/image93.svg
  [02092]: media/02/image94.svg
  [02093]: media/02/image95.svg
  [02094]: media/02/image96.svg
  [02095]: media/02/image97.svg
  [02096]: media/02/image98.svg
  [02097]: media/02/image99.svg
  [02098]: media/02/image100.svg
  [02099]: media/02/image101.svg
  [02100]: media/02/image102.svg
  [02101]: media/02/image103.svg
  [02102]: media/02/image104.svg
  [02103]: media/02/image105.svg
  [02104]: media/02/image106.svg
  [02105]: media/02/image107.svg
  [02106]: media/02/image108.svg
  [02107]: media/02/image109.svg
  [02108]: media/02/image110.svg
  [02109]: media/02/image111.svg
  [02110]: media/02/image112.svg
  [02111]: media/02/image113.svg
  [02112]: media/02/image114.svg
  [02113]: media/02/image115.svg
  [02114]: media/02/image116.svg
  [02115]: media/02/image117.svg
  [02116]: media/02/image122.svg
  [02117]: media/02/image123.svg
  [02118]: media/02/image124.svg
  [02119]: media/02/image125.svg
  [02120]: media/02/image126.svg
  [02121]: media/02/image127.svg
  [02122]: media/02/image128.svg
  [02123]: media/02/image129.svg
  [02124]: media/02/image130.svg
  [02125]: media/02/image131.svg
  [02126]: media/02/image132.svg
  [02127]: media/02/image133.svg
  [02128]: media/02/image134.svg
  [02129]: media/02/image135.svg
  [02130]: media/02/image140.svg
  [02131]: media/02/image141.svg
  [02132]: media/02/image142.svg
  [02133]: media/02/image143.svg
  [02134]: media/02/image144.svg
  [02135]: media/02/image145.svg
  [02136]: media/02/image146.svg
  [02137]: media/02/image147.svg
  [02138]: media/02/image148.svg
  [02139]: media/02/image149.svg
  [02140]: media/02/image150.svg

<!--chapter:end:02-math.Rmd-->

# Universe Earth Atmospheric

## Recurring Nomenclature {-}

| Symbol                   | Definition                                                                             |
|--------------------------|----------------------------------------------------------------------------------------|
| \(H_p\)                  | pressure altitude. The pressure associate with geopotential altitude on a standard day |
| \(a_0\)                  | speed of sound at std day sea level temperature                                        |
| \(P\)                    | ambient pressure                                                                       |
| \(P_0\)                  | standard day seal level ambient pressure                                               |
| \(T\)                    | absolute temperature (Rankine or Kelvin)                                                |
| \(T_0\)                  | standard day seal level absolute temperature                                           |
| \(T_R\)                  | absolute temperature, Rankine scale                                                     |
| \(\rho_ο\)               | standard day seal level ambient density                                                |
| \(rho\)                  | ambient density                                                                        |
| \(g\)                    | acceleration due to gravity                                                            |
| \(g_0\)                  | standard earth acceleration due to gravity                                             |
| \(\delta = P/P_0\)       | atmospheric pressure/std day sea level pressure                                        |
| \(\theta = T/T_0\)       | atmospheric absolute temp/std day sea level absolute temp                              |
| \(\sigma = \rho/\rho_ο\) | atmospheric density/std day sea level density                                          |

## Universal Constants

(reference 3.1)

| Constant                               | Symbol  | Value                                |  Units |
|----------------------------------------|---------|--------------------------------------|--------|
| Avogadros number                       | \(N_0\) | \(6.022\,169 \times 10^{23}\) | molecules/mole |
| Boltzmann constant                     | \(k\)   | \(1.380 \times 10^{-23}\) | J/K           |
| electron charge                        | \(e\)   | \(1.602 \times 10^{-19}\) | Coulomb          |
| electron mass                          | \(m_e\) | \(9.109 \times 10^{-31}\) | kg               |
| gas constant                           | \(R\)   | \(8.314\,34\) | J/K mole              |
| gravitational constant                 | \(G\)   | \(6.673 \times 10^{-11}\) | Nm^2^/kg^2^      |
| neutron mass                           | \(m_n\) | \(1.674 \times 10^{-27}\) | kg               |
| Planck constant                        | \(h\)   | \(6.625 \times 10^{-34}\) | J sec            |
| proton mass                            | \(m_p\) | \(1.672 \times 10^{-27}\) | kg               |
| speed of light in a vacuum             | \(c\)   | \(2.998 \times 10^8\) | m/sec              |
| unified atomic mass constant           | \(m_u\) | \(1.660 \times 10^{-27}\) | kg               |
| volume of ideal gas (std temp & press) | \(V\)   | \(2.241 \times 10\) | m^3^/mol              |

### Newtonian Gravity {-}

The gravitational field (\(g\)) near any mass can be calculated as
\[ g = \frac{GM}{R_A^2} \]

where \(G\) is the universal gravitational constant and \(R_A\) is the absolute distance from the center of mass \(M\)

## Earth Properties

(references 3.9.2, 3.9.3 )

| Property                                                               | Symbol      | Value                                                                                        | Units     |
|------------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------------------|-----------|
| Std Earth gravitational acceleration                                   | \(g_0\)     | 9.8066                                                                                       | m/s^2^    |
|                                                                        |             | 32.174                                                                                       | ft/s^2^   |
| mass                                                                   |             | \(5.9722 \times 10^{24}\)                                                                    | kg        |
|                                                                        |             | \(13.22 \times 10^{24}\)                                                                     | lb        |
| rotation rate                                                          | \(\omega\)  | \(7.292\,115 \times 10^{−5}                                                                    | rad/sec   |
| average density                                                        |             | \(5.522\)                                                                                    | g/cm^3^   |
|                                                                        |             | \(344.7\)                                                                                    | lb/ft^3^  |
| radius average                                                         | \(R_{\mathrm{avg}}\) | \(6\,367\,444\)                                                                                | m         |
|                                                                        |             | \(3956.538\)                                                                                 | st. miles |
|                                                                        |             | \(20\,890\,522\)                                                                               | ft        |
| radius at the equator                                                  | \(R_e\)     | \(6\,378\,137\)                                                                                | m         |
| radius at the poles                                                    | \(R_p\)     | \(6\,356\,752\)                                                                                | m         |
| radius as a function of latitude, \(\phi\) (assumes perfect ellipsoid) |             | \[R = \sqrt{\left(\frac{\cos{\phi}}{R_e}\right)^2 + \left(\frac{\sin{\phi}}{R_p}\right)^2} \] |           |

### Centrifugal Relief from Gravity {-}

The earth's "normal" gravity field includes both the Newtonian Law and a correction for the centrifugal force caused by the earth's rotation. The centrifugal relief correction is
\[
\Delta C R = -\frac{V^2}{R_x} = -\frac{\left( R_x \omega \right)^2}{R_x} = R_x \omega^2
\]

where \(\omega\) is the earth's rotation rate and \(R_x\) is the perpendicular distance from the earth\'s axis to the surface and can be calculated as \(R_x =R \cos{\phi}\) (see figure below).

![Rx determination][03004]

For any centrifugal relief calculations associated with aircraft performance, it is sufficiently exact (g ±0.000 04 [m/s^2^]) to use the average earth radius. An aircraft flying eastward contributes to centrifugal relief while a westbound aircraft diminishes it.

The International Association of Geodesy publishes the following equation (accurate to 0.005%) to calculate \(local sea level gravity including the effects of centrifugal relief for* *any point fixed to the earth\'s surface*

\[
g_{\mathrm{lsl}} = 9.780 327 \left( 1 + 0.005 300 224 \sin^2{\phi} - 0.000\,058 \sin^2{2 \phi} \right) \left[ \frac{m}{s^2} \right]
\]

The above equation is tabulated below for quick reference.

  ---------------------------------------------------------
  **Latitude\   **Normal**
  (deg)**       \(g_{\mathrm{local}}\)
  ------------- ----------------------- -------------------
                \((m/s^2)\)             \((ft/s^2)\)

  **0**         9.780 327                32.088

  **15**        9.783 659                32.098

  **30**        9.792 866                32.188

  **45**        9.805 689                32.171

  **60**        9.818 795                32.214

  **75**        9.828 569                32.249

  **90**        9.832 185                32.258
  ---------------------------------------------------------

The standard acceleration (\(g_0\)) corresponds to a latitude of \(46.0625°\).

\(g_{\mathrm{lsl}}\)* at the equator and the poles varies ±0.27% from \(g_0\).

### Altitude Effect on Gravitational Acceleration {-}

\(R_A\) is the sum of the earth's local radius and the geometric distance, \(h_G\) above the surface: \(R_A = R + h_G\)

\[
g_{\mathrm{alt}} = g_{\mathrm{lsl}}\left( \frac{R}{R + h_G} \right)^2
\]

Gravitational acceleration at any geometric altitude:

+-----------+-------------------+
| \(h_G\)   |\(g_{\mathrm{alt}}/g_{\mathrm{lsl}}\)|
| (1000 ft) |                   |
+===========+===================+
| 0         | 1                 |
+-----------+-------------------+
| 10        | 0.999 04           |
+-----------+-------------------+
| 20        | 0.998 09           |
+-----------+-------------------+
| 40        | 0.996 18           |
+-----------+-------------------+
| 60        | 0.994 28           |
+-----------+-------------------+
| 80        | 0.992 38           |
+-----------+-------------------+
| 100       | 0.990 49           |
+-----------+-------------------+

### Actual Gravitational Pull on an Aircraft {-}

Adding a centrifugal relief correction due to the aircraft's velocity, a complete calculation for its gravitational acceleration is
\[
g_{A/C} = \left[ g_{\mathrm{lsl}} + \omega^2 R \cos{\phi} \right] \left[ \frac{R}{R + h_G} \right]^2 - \left( \omega + \frac{V_G \sin{\sigma}}{R + h_G} \right)^2 \left(R + h_G\right) \cos{\phi}
\]

where \(V_G\) = ground speed and \(\sigma\) = ground track angle (\(0°\) = true North, \(90°\) = East, etc.).

### Gravity Influence on Aircraft Cruise Performance {-}

Even at the same altitude, changes in gravity due to latitude or centrifugal relief directly alter the required lift, drag, and fuel flow. For example, with sufficiently precise instrumentation, data collected heading West could show about 0.5% more drag and fuel flow than data collected heading East (centrifugal relief effect). After determining test and standard (or mission) values for \(g\), flight test values for *C_L, *C_D, drag, and fuel flow can be corrected to standard as follows:

\[C_{L_{\mathrm{std}}} = C_{L_i} \frac{N_{z_{\omega_{\mathrm{std}}}}}{N_{Z_{\omega_i}}} \left[\frac{g_{\mathrm{std}}}{g_{A/C}} \right] \]

\[C_{D_{\mathrm{std}}} = \frac{C^2_{L_{\mathrm{std}}}}{\pi A \text{Re}} \]

\[\Delta D = D_{\mathrm{std}} - D_t = qS\left[C_{D_{i_{\mathrm{std}}}} - C_{D_{i_t}} \right] \]

\[\dot{W}_{f_{\mathrm{std}}} = \dot{W}_{f_i} + \Delta D \cdot TFSC \]

where \(N_z\) = normal load factor,

\(C_L\) = lift coefficient, \(C_D\) = drag coefficient,

\(AR\) = aspect ratio, \(e\) = Oswald efficiency factor,

\(\Delta D\) = change in drag force,

\(TSFC\) = thrust specific fuel consumption, and
\(\dot{W}_{f_{\mathrm{std}}}\) = standard day fuel flow

## General Properties of Air

(reference 3.9.1)

| Property                                     | Symbol                | Value                | Unit                |
|----------------------------------------------|-----------------------|----------------------|---------------------|
| Gas constant                                 | \(R\)                 | 53.35                | ft lb/R lbm         |
|                                              |                       | 287.074              | J/kg K              |
|                                              |                       | 1716                 | lb(ft)/slgs(R)    |
|                                              |                       | 3089.7               | lb(ft)/slgs(K)    |
| Speed of sound                               | \(a_0 \sqrt{\theta}\) | 49.02 \(\sqrt{T_R}\) | ft/sec              |
|                                              |                       | 33.42 \(\sqrt{T_R}\) | miles/hr            |
|                                              |                       | 29.04 \(\sqrt{T_R}\) | knots               |
|                                              |                       | 20.05 \(\sqrt{T_R}\) | m/sec               |
| Density                                      | \(\rho\)              | 0.002 3769             | slug/ft^3^          |
|                                              |                       | 1.225                | kg/m^3^ (at \(15°\)C) |
| Specific weight                              | \(g_\rho\)            | 0.076 47               | sec^2^/ft^4^        |
| Specific heat capacity at \(59°\)F (=\(T_0\)) |                       |                      |                     |
| at constant pressure                         | \(c_p\)               | 0.240                 | BTU/lb R            |
|                                              |                       | 1004.76              | J/kg K              |
| at constant volume                           | \(c_v\)               | 0.1715                | BTU/lb R            |

### Normal Composition of clean, dry atmospheric air near sea level, by volume {-}

| Gas            | Symbol | Proportion |
|----------------|--------|------------|
| Nitrogen       | N~2~   | 78.084 %   |
| Oxygen         | O~2~   | 0.948 %    |
| Argon          | A      | 0.934 %    |
| Carbon Dioxide | CO~2~  | 0.031 %    |
| Neon           | Ne     | 0.002 %    |
| **TOTAL**      |        | 99.9988 %  |

plus traces of helium, kryton, xenon, hydrogen, methane, nitrous oxide, ozone, sulfur dioxide, nitrogen dioxide, ammonia, carbon monoxide, and iodine.

### Viscosities of Air {-}

Coefficient of Viscosity
\[ \mu_c = \frac{7.3025 \times 10^{-7} \left(T_R \right)^{3/2}}{T_R + 198.72} \text{ lb/ft sec}\]

Kinematic viscosity
\[ \nu = \frac{\mu_c}{g\rho} \text{ ft}^{2}\text{/sec} \]

Absolute Viscosity
\[ \mu = \rho\nu = \left[ 0.317 \left(T_R\right)^{3/2} \left( \frac{734.7}{T_R + 216} \right) \right] \times 10^{-10} \text{ lb sec/ft}^{2} \]

### Atmospheric Viscosity (U.S. Standard Atmosphere) {-}

+-------------------+---------------------+--------------------+
| Pressure Altitude | Kinematic Viscosity | Absolute Viscosity |
|                   |                     |                    |
| *ft*              | *υ (* *ft^2^/sec)*  | *μ (lb sec/ft^2^)* |
+===================+=====================+====================+
| 0                 | 1.572 x 10^-4^      | 3.737 x 10^-7^     |
+-------------------+---------------------+--------------------+
| 5000              | 1.776               | 3.638              |
+-------------------+---------------------+--------------------+
| 10 000            | 2.013               | 3.538              |
+-------------------+---------------------+--------------------+
| 15 000            | 2.293               | 3.435              |
+-------------------+---------------------+--------------------+
| 20 000            | 2.625               | 3.330              |
+-------------------+---------------------+--------------------+
| 25 000            | 3.019               | 3.224              |
+-------------------+---------------------+--------------------+
| 30 000            | 3.493               | 3.115              |
+-------------------+---------------------+--------------------+
| 35 000            | 4.065               | 3.004              |
+-------------------+---------------------+--------------------+
| 40 000            | 5.074               | 2.981              |
+-------------------+---------------------+--------------------+
| 45 000            | 6.453               | 2.982              |
+-------------------+---------------------+--------------------+
| 50 000            | 8.206               | 2.983              |
+-------------------+---------------------+--------------------+
| 55 000            | 10.44               | 2.985              |
+-------------------+---------------------+--------------------+
| 60 000            | 13.27               | 2.986              |
+-------------------+---------------------+--------------------+
| 70 000            | 21.69               | 3.005              |
+-------------------+---------------------+--------------------+
| 80 000            | 35.75               | 3.043              |
+-------------------+---------------------+--------------------+
| 90 000            | 58.53               | 3.080              |
+-------------------+---------------------+--------------------+
| 100 000           | 95.19               | 3.118              |
+-------------------+---------------------+--------------------+
| 150 000           | 1066                | 3.572              |
+-------------------+---------------------+--------------------+
| 200 000           | 6880                | 3.435              |
+-------------------+---------------------+--------------------+

### Psychrometric Chart for Seal Level Barometric Pressure {-}

![][03016]

![][03017]

## Standard Atmosphere

### Divisions of the Atmosphere {-}

![Divisions of the Atmosphere][03018]

Constantly changing atmospheric conditions cannot be duplicated at will to provide the exact environment in which a flight takes place. A standard atmosphere provides a common basis to relate all flight test, wind tunnel results, aircraft design and general performance. Several models of "standard atmosphere" exist with minor differences based on mathematical constants used in the calculations.

| Type of Altitude | Symbol  | Definition                                                                                                                                                                                                              |
|------------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Geometric        | \(h_G\) | The height of an aircraft above sea level (also called **tapeline** altitude)                                                                                                                                           |
| Absolute         | \(h_a\) | The height of an aircraft above the center of the earth: (geometric altitude + radius of the earth)                                                                                                                     |
| Geopotential     | \(h\)   | Required because \(g\) changes with height. If potential energy is calculated using sea level weight ( \(W_{\mathrm{SL}} = mg_0\)) instead of actual weight (\(W = mg\)), then the altitude must be lower. \(h = W/W_{\mathrm{SL}} h_G \) |
| Pressure         | \(H_p\) | The altitude, on a standard day, at which the test day pressure would be found                                                                                                                                          |
| Density          | \(H_D\) | The altitude, on a standard day, at which the test day density would be found                                                                                                                                           |
| Temperature      |         | The altitude, on a standard day, at which the test day temperature would be found                                                                                                                                       |

### Assumptions on which the standard atmosphere is built {-}

1. The air is dry (only 0.4% per volume of water vapor)
1. The air is a perfect gas and obeys the equation of state, \(P = \rho gRT\), where \(R = 53.35 \text{ft lb/°R lbm}\)
1. The gravitational field decreases with altitude
1. Hydrostatic equilibrium exists (\(\Delta p = −\rho g_0 \Delta h\))

### Standard Day Sea Level Atmospheric Conditions {-}

| Parameter                            | Symbol       | Value           | Unit              |
|--------------------------------------|--------------|-----------------|-------------------|
| Pressure                             | \(P_0\)      | \(2116.22\)     | lb/ft^2^          |
|                                      |              | \(14.696\)      | lb/in^2^          |
|                                      |              | \(29.921\)      | in Hg             |
|                                      |              | \(1013.25\)     | HPa (mb)          |
|                                      |              | \(101,325\)     | Pa                |
| Temperature                          | \(T_0\)      | \(288.15\)      | K                 |
|                                      |              | \(518.67\)      | R                 |
|                                      |              | \(59\)          | °F              |
|                                      |              | \(15\)          | °C              |
| Density                              | \(\rho_0\)   | \(0.002\,3769\) | slgs/ft^3^        |
| (at \(15°\)C)                        |              | \(0.076\,47\)   | lbm/in^3^         |
|                                      |              | \(1.255\)       | kg/m^3^           |
| Speed of Sound                       | \(a_0\)      | \(1116.45\)     | ft/sec            |
|                                      |              | \(661.478\)     | KTAS              |
|                                      |              | \(761.14\)      | mph               |
|                                      |              | \(340.294\)     | m/sec             |
| Acceleration Due to Gravity          | \(g_0\)      | \(32.174\)      | ft/sec^2^         |
|                                      |              | \(9.806,65\)    | m/sec^2^          |
| Temperature Lapse Rate               | \(L\)        | \(1.98\)        | K/kft or °C/kft |
| (up to \(36\,000\) ft or \(11\) km)  |              | \(3.56\)        | °F/kft          |
|                                      |              | \(6.49\)        | K/km              |

### 1976 U.S Standard Atmosphere Equations {-}

#### Troposphere {-}

Below \(36\,089\) ft (\(11\,000\) m) and pressure less than \(22\,636\) Pa

\[
\begin{align}
\theta &= 1 − \left( L/Τ_ο \right) h = 1 - \left( 6.875\,5856 \times 10^{-6} \right) h \\
\sigma &= \theta^{n-1} \\
\delta &= \theta^n \\
\end{align}
\]

where \(n = 5.255\,876\), \(h\) = geopotential altitude [ft]

#### Stratosphere {-}

Between \(36\,089\) ft and \(65\,616\) ft (\(11\,000\) m and \(20\,000\) m) the standard day temperature is a constant \(216.65\) K, therefore:

\[
\begin{align}
\theta &= 0.751\,865 \\
\sigma &= 0.297\,076\, \mathrm{e}^{0.000\,048\,063 \left[ h - 36\,089 \right]} \\
\delta &= 0.223\,361\, \mathrm{e}^{0.000\,048\,063 \left[ h - 36\,089 \right]} \\
\end{align}
\]

The above relations characterize the standard atmosphere table in this handbook.
They may be re-written to solve for pressure altitude (\(H_p\)) for any ambient pressure. 

Below the tropopause (ambient pressure greater than \(472.683\) psf or \(22\,632\) Pa)

\[
H_p \left[ \text{ft} \right] = \frac{ 1-\left( \frac{P_a}{P_0} \right)^{0.190\,2632} }{6.875\,5856 \times 10^{-6}}
\]

In the troposphere (ambient pressure between \(114.347\) and \(472.683\) psf or between \(5475\) and \(22\,632.1\) Pascal)

\[
H_p \left[ \text{ft} \right] = 36\,089+ \frac{ \ln \left( \frac{P_a}{P_0} \right) + 1.498\,966 }{ 0.000\,048\,063 }
\]

#### 1976 U.S. Standard Atmosphere Graph {-}

![1976 US Standard Atmosphere Graph][03021]

![][03022]

![][03023]

![][03024]

![][03025]

Standard Atmosphere Calculator Website Link <http://www.digitaldutch.com/atmoscalc/>

## Sea States

(ref 3.3) 

### Sea Scale {-}

+------+----------------------------------------------+----------------------+
| Code | Sea                                          | Wave Height,         |
|      |                                              |                      |
|      |                                              | Crest to Trough [ft] |
+======+==============================================+======================+
| 0    | Calm                                         | 0                    |
+------+----------------------------------------------+----------------------+
| 1    | Smooth                                       | Less than 1          |
+------+----------------------------------------------+----------------------+
| 2    | Slight                                       | 1-3                  |
+------+----------------------------------------------+----------------------+
| 3    | Moderate                                     | 3-5                  |
+------+----------------------------------------------+----------------------+
| 4    | Rough                                        | 5-8                  |
+------+----------------------------------------------+----------------------+
| 5    | Very rough                                   | 8-12                 |
+------+----------------------------------------------+----------------------+
| 6    | High                                         | 12-20                |
+------+----------------------------------------------+----------------------+
| 7    | Very high                                    | 20-40                |
+------+----------------------------------------------+----------------------+
| 8    | Mountainous                                  | 40+                  |
+------+----------------------------------------------+----------------------+
| 9    | Confused, Used as additional description 1-8 |                      |
+------+----------------------------------------------+----------------------+

### International Swell Scale {-}

  Code   Swell                                          In Open Sea
  ------ ---------------------------------------------- -----------------
  0      None                                           low
  1      Short or average
  2      Long
  3      Short                                          Moderate height
  4      Average
  5      Long
  6      Short                                          heavy
  7      Average
  8      Long
  9      Confused, Used as additional description 1-8


## Sunrise Sunset Times

![Sunrise Sunset Times][03026]

## Crosswind Components

![Crosswind Components][03027]

## Geodetic Measurements

### Acronyms, Abbreviations and Symbols {-}

| Notation | Definition |
|----------|------------|
|DGPS| Differential Global Positioning System|
|ECEF| Earth Centered Earth Fixed coordinate system|
|GPS| Global Positioning System|
|INS| Inertial Navigation System|
|WGS84| World Geodetic System 1984|
|\(a\) | Earth's semi-major axis radius|
|\(b\) | Earth's semi-minor axis radius|
|\(D\) | Great circle distance between two points|
|\(e\) | eccentricity of the Earth square|
|\(f\) | Earth's flatness factor|
|\(h\) | geodetic height|
|\(N\) | radius of curvature in prime vertical|
|\(P\) | radius of curvature in prime vertical|
|\(\overset{\rightarrow}{P}\)|  Vector from earth center extending to coordinates|
|\(r\) | Earth's radius|
|\(X\) | ECEF x coordinate|
|\(Y\) | ECEF y coordinate|
|\(Z\) | ECEF z coordinate|
|\(\phi\)| Geodetic latitude|
|\(\varphi\)| Angle between the two \(\overset{\rightarrow}{P}\) vectors originating at the Earth's center and extending to their respective coordinates at the start and end points.|
|\(\lambda\)| Geodetic longitude|
|\(\psi\)| Runway heading with respect to true North.|

### Earth Modeling {-}

The Geodetic System defines the location of any point relative to the earth using latitude, longitude and height (Figure 3.8-1, point P). Longitude and latitude are expressed in degrees, minutes, seconds. Longitude lines extend \(\pm\) 180 degrees from the Prime Meridian, run north to south, and converge at the poles. Latitude lines are parallel to the equator and extend \(\pm\) 90°.

![][03100]

`http://www.colorado.edu/geography/gcraft/notes/coordsys/gif/latlon2.gif`

**Figure 3.8-1 Geodetic Coordinate System**

The 1984 world geodetic system, WGS84, models the earth's surface as an oblate spheroid - an ellipsoid rotated about its semi-minor axis. In this model, used by global positioning systems, the earth's semi-major axis, \(a\) is 6 378 137.0 meters and the semi-minor axis, *b is* 6 356 752.314 meters.

The flatness factor (\(f\)) is defined as:

\[f = \frac{a - b}{a}\]

For the WGS84 model, \(f = \frac{1}{298.257\,223\,563}\)

Because the earth is not perfectly spherical, there are various methods for defining latitude. Unlike the geocentric latitude which uses the earth's center for determining a point's latitude, the **geodetic latitude** (used herein) is the angle between the equatorial plane and a line *normal to the reference ellipsoid*. Figure 3.8-1 exaggerates this with a normal line being well offset from the earth's center. This definition leads to a degree of latitude being longer at the pole than at the equator: 111 694 m (60.3 nm) vs. 110 574 m (59.7 nm).

The **geodetic longitude** of a point is the angle between a reference plane and a plane passing through the point, both planes being perpendicular to the equatorial plane.

Mathematically, the geodetic surface is a smooth ellipsoid modeling the earth's surface. Clearly, the topography (actual surface height) deviates from this model whenever land is above or below sea level. Less evident is that the actual sea level also deviates from the geodetic model due to local changes in the earth's gravity. Specifically, mass variations caused by changes in earth density and topography, such as mountains or trenches, change local gravity vectors and therefore sea level relative to the ellipsoid.

Reference to **Mean Sea Level** (MSL) served as the traditional way to express topographic or bathymetric height. Geodesists once considered the sea in balance with the earth\'s gravity and formed a perfectly regular figure. MSL is usually described as a tidal datum that is the arithmetic mean of hourly water elevations observed over a 19-year (Metonic) cycle. This definition averages out tidal highs and lows caused by the changing effects of the gravitational forces from the moon and sun. MSL defines the zero elevation (vertical datum) for a local area. Because the sea surface conforms to the earth\'s gravitational field, MSL also has slight hills and valleys similar to the land surface but much smoother. Zero elevation as defined by one nation is often not the same zero elevation defined by another, thus locally defined vertical datums differ from each other.

The **Geoid** is the equipotential surface in the earth's gravity field that coincides most closely with the mean sea level extended continuously under the continents. In other words, it approximates the level of any non-flowing water connected (actually or theoretically) to the seas by waterway or via trenches or tunnels. The geoid surface undulates relative to the geodetic ellipsoid and is perpendicular to the local gravity vector -- as seen with a plumb line. Similarly, a spirit level defines the local surface parallel to the geoid, which is tangent to the local horizon. Because the geoid is an equipotential surface, it is the best datum for measuring potential energy and is the true zero surface for measuring elevations. Previously, there was no way to accurately measure the geoid, so heights were measured relative to the similar MSL. **EGM96** (Earth Gravity Model 1996) represents the best geoid model currently available and shows smoothly changing surface undulations ranging from +85 to -107 meters relative to the WGS84 ellipsoid.

The geoid surface cannot be directly observed, thus heights above or below it can\'t be directly measured. Instead the geoid surface is modeled mathematically using gravitational measurements. Although for practical purposes, at the coastline the geoid and MSL surfaces are assumed to be essentially the same, at some spots the geoid can actually differ from MSL by several meters.

![][03101]

`http://principles.ou.edu/earth\_figure\_gravity/geoid/geoid-ellipsoidal-orthometric\_height.jpg`

**Figure 3.8-2 Height Comparisons**

**Ellipsoidal height (h)** is the same as geodetic height and is the geometric distance between an object and the earth ellipsoid (Figure 3.8-2). This may be a GPS output.

**Geoid height (N)** is the height of the geoid above or below the ellipsoid. Some GPS devices output this undulation value in the data stream.

**Orthometric height (H)** is the geometric distance along a gravitational force line from a given point P to the geoid. This is essentially the conventional height measurement because the geoid approximates MSL- the traditional method for determining height.

Modern GPS units typically include a geoid model (e.g. EGM-96) that provides N (geoid height over the WGS ellipsoid) at the current position. Such a unit can provide the height above geoid. If GPS height output is only available relative to the ellipsoid (h), then traditional Orthometric height (H) above the geoid can be obtained by subtracting the geoid height above the ellipsoid. \[http://www.esri.com/news/arcuser/0703/geoid1of3.html\]

### ECEF Transformations {-}

For the purpose of performance, navigation, or noise analysis, flight testers may require distances between two points (the shortest being along the great circle arc) and the average heading of that arc. Calculating these from typical Geodetic System Lat/Long inputs requires conversion to the Earth Centered Earth Fixed (ECEF) coordinate system as shown in Figure 3.8-3.

![][03028]

**Figure 3.8-3 Earth Centered Earth Fixed Coordinate System**

The ECEF coordinate system is a Cartesian system with the origin at the earth's center. In this system, the X-axis is defined by the intersection of the Prime Meridian and equatorial planes. The Z-axis goes through the North Pole. The Y-axis completes a right-handed orthogonal system by a plane 90 degrees east of the X-axis and its intersection with the equator.

Geodetic System (lat/long/height) data converts to ECEF as follows:

\[
\begin{align}
x &= \left(N + h \right)\cos{\varphi}\cos{\lambda} \\
y &= \left(N + h \right)\cos{\varphi}\sin{\lambda} \\
z &= \left(N \left[ 1-e^2 \right] + h \right) \sin{\varphi} \\
\end{align}
\]

where,

\(x\) = ECEF coordinate parallel to the X-axis

\(y\) = ECEF coordinate parallel to the Y-axis

\(z\) = ECEF coordinate parallel to the Z-axis

\(\varphi\) = geodetic latitude

\(\lambda\) = geodetic longitude

\(h\) = height above geodetic (ellipsoid) surface

\(N\) = Normal radius of curvature; distance from earth axis to any point on the geodetic surface at that latitude (extension of r to axis shown in Figure 3.8-3).

\[N = \frac{a}{\sqrt{ \left(1 - e^2 \right) \sin^{2}{\phi}}}\]

where,

\(a\) = semi-major axis radius (\(6\,378,137\) m; \(20\,925\,647\) ft)

\(e^2\) = eccentricity squared; \(e^{2} = 1 - \left( \frac{a}{b} \right)^{2} = 2f - f^{2}\) = 0.006 694 380 02290 (Earth, per WGS84).

Also useful is

\(M\) = Meridian radius of curvature; distance from earth axis to any point on the geodetic surface at that longitude.

\[M = \frac{a \left(1 - e^{2} \right)}{\left\lbrack \left( 1 - e^{2} \right)  \sin^{2}(\phi) \right\rbrack^{1.5}}\]

### Great Circle Calculations {-}

Any plane passing through the center of a spheroid traces a **Great Circle** around the perimeter of that spheroid. The shortest distance between two points on the surface is that portion of the great circle arc encompassing both points (Figure 3.8-3).

![][03029]

**Figure 3.8-3 Great Circle Arc**

Except when moving around the equator, navigating along a great circle route has the characteristic of intercepting longitude lines at different angles. In other words, the heading (or bearing) changes along the route. Analysis shows bearing [change]{.underline} along a great circle route:

* Is never greater than the longitude difference between the end points.
* Approaches the value of the longitude change as the final latitude approaches a pole (regardless of initial latitude).
* Is smallest when the final latitude is at the equator (for this case, bearing change ≈ longitude change x initial latitude/100).

Calculate the **great circle distance (D)** between points (subscripts 1 and 2) as

\[
\begin{align}
P_{1} &= \sqrt{x_{1}^{2} + y_{1}^{2} + z_{1}^{2}} \\
P_{2} &= \sqrt{x_{2}^{2} + y_{2}^{2} + z_{2}^{2}} \\
\overset{\rightarrow}{P}_{1}  \overset{\rightarrow}P_{2} &= P_{1} P_{2}\cos{\varphi} = x_{1} \cdot x_{2} + y_{1} \cdot y_{2} + z_{1} \cdot z_{2} \\
\varphi &= \arccos\left( \frac{x_{1} \cdot x_{2} + y_{1} \cdot y_{2} + z_{1} \cdot z_{2}}{P_{1} \cdot P_{2}} \right) \\
D &= P_{\mathrm{avg}} \cdot \varphi
\end{align}
\]

where
\(P\) = distance from earth center to any point (including height above the spheroid surface).

$\overset{\rightarrow}{P}$ = Vector from the Earth's center to point P.

ϕ = Angle between the two $\overset{\rightarrow}{P}$ vectors

<http://www.movable-type.co.uk/scripts/latlong.html> provides equations an online tool for calculating great circle initial & final bearings (headings).

For shorter distances typical of local flight testing, the Great Circle model matches the following two-dimensional approximations.

---------------------------------------------------- ------------------------------------------------
Distance North-South (Northing)                      \(dy = N \cdot \sin\left( \Delta\phi \right)\)
Earth’s radius East-West                             \(r = N \cdot \cos{\phi}\)
Distance East-West (Easting)                         \(dx = r \cdot \sin\left(\Delta\lambda\right)\)
2-D distance between two points                      \(D = \sqrt{dx^2 + dy^2}\)
Heading between two points (relative to true north)  \(\Phi = \arctan \left( dy/dx \right) \)
---------------------------------------------------- ------------------------------------------------

An error analysis of the above 2-D **heading** approximation shows it consistently lies between the initial and final headings transpiring during great circle navigation and is closest to the final heading.
This occurs when considering up to \(10\) degrees longitude change and is therefore sufficiently accurate for lesser changes that arise in flight testing (e.g. radial from a navigation transmitter).

An error analysis of the above 2-D **distance** approximation shows accuracy within \(0.6\%\) of the great circle distance when changing latitude and longitude \(1\) degree, and within \(3\%\) when changing latitude and longitude \(10\) degrees.
It is accurate to within \(0.4\%\) when changing only latitude or longitude \(10\) degrees.

### Local Distance Transformation {-}

Latitude \(\phi\), longitude \(\lambda\), and height (typical GPS output data) can be transformed into rectangular (X,Y,Z) coordinates. The following presents a method for applying this to two different coordinate systems, both with the X-Y axes defining the horizontal plane. This is useful when working with local distances associated with typical flight testing such as noise measurement, local navigation, or field performance.

Figure 3.8-4a shows a case where the X-Y coordinate system aligns with the latitude & longitude grid. Figure 3.8-4b shows a case where the X-Y coordinate system aligns with a runway, with Y=0 defining the centerline. In both cases, a designated primary reference datum \(\phi_0, \lambda_0\), such as the runway centerline threshold, coincides with X=0, Y=0. With the example shown in Figure 3.8-4b, the opposite end of the runway centerline \(\phi_1, \lambda_1\), coincides with X = runway length and Y = 0.

![][03030]

**Figure 3.8-4: Local X-Y Coordinate System Aligned with (a) \(\phi\), \(\lambda\) Grid; (b) Runway**

Because each degree of latitude change is not always exactly \(60\) nm and because the spacing between degrees of longitude changes markedly with latitude, converting from degrees latitude & longitude change to distance requires scaling factors.
First select equatorial distances for each degree change

\[
\begin{align}
\phi_{\mathrm{scale}} \left\{ \phi = 0 \right\} &= 110\,574 \text{m} = 362\,776.6 \text{ft} = 59.705\,18 \text{nm} \\
\lambda_{\mathrm{scale}} \left\{ \phi = 0 \right\} &= 111\,319.5 \text{m} = 365\,221.4 \text{ft} = 60.107\,72 \text{nm} \\
\end{align}
\]

Use average latitude to calculate latitude and longitude scaling factors

\[
\begin{align}
\phi_{\mathrm{scale}} &= \frac{\phi_{\mathrm{scale}} \left\{ \phi = 0 \right\} }{ \left\lbrack \left( 1 - e^{2} \right)  \sin^{2}(\phi) \right\rbrack^{1.5} } \\
\\
\lambda_{\mathrm{scale}} &= \frac{\lbrack \lambda_{\mathrm{scale}} \left\{ \phi = 0 \right\} \rbrack \cdot \cos{\phi}}{\sqrt{ \left(1 - e^2 \right) \sin^{2}{\phi}}} \\
\end{align}
\]

Calculate X and Y components of distances aligned with the latitude & longitude grid (Figure 3.8-4a)

\[
\begin{align}
Y = \phi_{\mathrm{scale}} \left(\phi_1 - \phi_0 \right) \\
X = \lambda_{\mathrm{scale}} \left(\lambda_1 - \lambda_0 \right) \\
\end{align}
\]

The 2-D *local* (vice great circle) distance between any two points on the X-Y plane is

\[D = \sqrt{X^2 + Y^2} \]

For field performance work, it is preferable to align X & Y with the runway as shown in Figure 3.8-4b. To convert from grid-aligned to runway-aligned coordinates, apply a rotation matrix that ensures X remains positive when going from point \(\phi_0, \lambda_0\) towards \(\phi_1, \lambda_1\). The rotation angle, \(\psi\), is positive counter-clockwise from true East to the direction of the runway. [Note: do not confuse \(\psi\) with runway heading measured relative to magnetic north]. 

The function \(\psi = \mathrm{atan2} \left( X,Y \right) \) returns rotation angles from \(-\pi\) to \(\pi\), so that rotating to headings between \(90°\) and \(270°\) results in negative rotation angles.

For any point (\(\phi, \lambda\)), calculate runway-aligned X & Y distances using

\[
\begin{align}
X &= \phi_{\mathrm{scale}} \left(\phi - \phi_0 \right)\sin{\psi} + \lambda_{\mathrm{scale}} \left(\lambda - \lambda_0 \right)\cos{\psi} \\
Y &= \phi_{\mathrm{scale}} \left(\phi - \phi_0 \right)\cos{\psi} - \lambda_{\mathrm{scale}} \left(\lambda - \lambda_0 \right)\sin{\psi} \\
\end{align}
\]

This provides a right-handed rectangular coordinate system where X is positive from (\(\phi_0, \lambda_0\)) towards (\(\phi_1, \lambda_1\)) and Y is positive left of the runway centerline (Figure 3.8-4b).

Calculating aircraft height Z above the X-Y plane requires defining where the X-Y plane lies. An analyst may define Z=0 at some arbitrary height (i.e. GPS altitude at the beginning of a maneuver) and consider only changes from that reference.

For field performance, it is typical to use the runway altitude as the reference. Because runway altitudes vary however, height should be surveyed and modeled or tabulated as a function runway centerline position, H{X}. For best accuracy, the runway survey accounts for GPS antenna height above the surface. Airplane height above the X-Y plane (Z) is then

\[Z = \zeta - H\{X\}\]

where \(\zeta\) is the test GPS antenna's altitude.

Note: Analysts can determine Z using either Orthometric height above the geoid (H) or above the geodetic surface (h) – as long as the runway surface model H{X} uses the same reference.

## Temperature Compensated Barometric Altitude

**Background:** Pressure altitude is the geopotential height above mean sea level (MSL) associated with atmospheric pressure on a theoretical standard day. Geopotential height is almost identical to geometric (a.k.a. tapeline) altitude, as seen in page 03-5. Altimeters set at 29.92 in Hg (or 1013 HPa) display pressure altitude. An altimeter's baro-set knob allows pilots to bias the pressure vs. altitude relation so it matches sea level pressure for non-standard conditions. Matching the local altimeter setting (known as setting QNH in many parts of the world) adjusts the altimeter so it displays nearly the same altitude above MSL for non-standard pressure conditions. The correct setting is critical for terrain & obstacle clearance when the pilot's visibility is low.

Note: When operating well above terrain and obstacles, it is more critical to ensure all aircraft use the same altimeter setting so they de-conflict with each other. Because chances are high that pilots might not know of or properly re-set the altimeter numerous times during high altitude flights, aviation authorities established transition altitudes. When climbing above the transition altitude, all pilots must set altimeters to read pressure altitude (baro setting at 29.92 or 10113 HPa, known as QNE or standard baro setting). Different countries use different transition altitudes (e.g. 18,000 ft MSL in U.S. and Canada; 14,000 ft MSL in Japan; 3,000 ft MSL in The Netherlands). Regardless of the transition altitude, pilots and air traffic controllers refer to altitudes above it as a “Flight Level.” Flight level is abbreviated as FL and is quoted in hundreds of feet above MSL. For example operating at 36,000 ft (always pressure altitude above MSL) is abbreviated as FL360. 

Although the long-used practice of matching the local altimeter setting has been sufficiently safe in the vast majority of operations, it in fact does not account for temperature deviation from standard conditions. Extreme temperature deviations cause a classic mechanical altimeter to display an MSL altitude erring by hundreds of feet. Modern technology allows calculating and displaying a more accurate altitude that corrects for temperature deviations. The following equation yields temperature-compensated altitude which better estimates geometric altitude above MSL, \(h_G. Calculations require knowledge of aircraft's baro and pressure altitudes and the terminal airport's temperature and pressure altitude. In lieu of pressure altitudes, calculations allow for implementing the field elevation (depicted on airport approach plates, etc.) and so-called baro bias. Baro bias is the displayed altitude shift when switching from local to standard altimeter setting.

\[h_G = H_b + \frac{T_{\mathrm{apt}} - T_0}{L - Hp_{\mathrm{apt}} } \ln \left[ 1 + \frac{L \left( H_p - H_{p_{\mathrm{apt}}} \right) }{T_0 + L H_{p_{\mathrm{apt}}}} \right]\]

where
\(h_G\) = temperature-compensated altitude

\(H_b\) = baro altitude (displayed when altimeter is set to local value)

\(T_{\mathrm{apt}}\) = airport temperature (Kelvin)

\(T_0\) = standard day sea level temperature = 15 deg C = 288.15 K

\(L\) = standard temperature lapse rate = -0.0065 K/m = -0.001 9812 K/ft

\(H_{p_{\mathrm{apt}}}\) = airport pressure altitude ( = airport field elevation - baro bias)

\(H_p\) = aircraft pressure altitude ( = H_b - baro bias)

Note: ensure altitude units are consistent with lapse rate units.

In lieu of the pilot adjusting the baro set knob to determine baro bias, it may be calculated using

Baro bias = \(H_b - H_p = H_b - \frac{29.92^{0.1903} - PA^{0.1903}}{0.000\,013\,13}\) [ft]

where

PA = ambient pressure = {altimeter setting [in Hg]^0.1903^ - \(H_b\)(0.000 013 13)}^1/0.1903^

Flight testers can use the above to verify the aircraft's temperature compensation system is working correctly. Data analysts can use these equations to more precisely determine geometric height above the ground--potentially useful for performance or pitot-static flyby testing.

## References

|||
|-|--------------|
|3.1 |Anon., "Aeronautical Vestpocket Handbook" ,Part No. P&W 079500, United Technologies Pratt & Whitney, Canada, 1990.|
|3.2 |Lawless, Alan. R. et al, "Aerodynamics for Flight Testers", National Test Pilot School, P.O. Box 658, Mojave CA, 93501, 1999.|
|3.3 |Denno, Richard R., et al "AIAA Aerospace Design Engineers Guide" ISBN 0-930403-21-5, AIAA, 1987.|
|3.4 |Global Positioning System Overview, Peter H. Dana, Department of Geography, University of Texas at Austin, 1994. [[www.colorado.edu/geography/gcraft/notes/gps/gps_f.html](www.colorado.edu/geography/gcraft/notes/gps/gps_f.html)]|
|3.5 |Charles D Ghilani, Penn State College of Engineering, 2008 [[http://surveying.wb.psu.edu/sur351/georef/Ellip4.htm](http://surveying.wb.psu.edu/sur351/georef/Ellip4.htm)] [[www.colorado.edu/geography/gcraft/notes/gps/gps_f.html](www.colorado.edu/geography/gcraft/notes/gps/gps_f.html)]|
|3.6 |Standard Atmosphere Calculator Website Link [[http://www.digitaldutch.com/atmoscalc/](http://www.digitaldutch.com/atmoscalc/)].|
|3.7 |Movable Type Scripts. [[http://www.movable-type.co.uk/scripts/latlong.html](http://www.movable-type.co.uk/scripts/latlong.html)]. [Calculate distance, bearing and more between Latitude/Longitude points]|

  [03001]: media/03/image1.svg {width="0.6673611111111111in" height="0.4583333333333333in"}
  [03002]: media/03/image2.svg {width="1.7416666666666667in" height="0.6805555555555556in"}
  [03003]: media/03/image3.svg {width="1.945138888888889in" height="0.4722222222222222in"}
  [03004]: media/03/image5.png {width="2.0729166666666665in" height="1.375in"}
  [03005]: media/03/image6.svg {width="4.0375in" height="0.2916666666666667in"}
  [03006]: media/03/image7.svg {width="1.2597222222222222in" height="0.5277777777777778in"}
  [03007]: media/03/image8.svg {width="4.1305555555555555in" height="0.5263888888888889in"}
  [03008]: media/03/image9.svg {width="2.075in" height="0.2638888888888889in"}
  [03009]: media/03/image10.svg {width="0.9819444444444444in" height="0.4861111111111111in"}
  [03010]: media/03/image11.svg {width="1.5375in" height="0.5277777777777778in"}
  [03011]: media/03/image12.svg {width="1.575in" height="0.2638888888888889in"}
  [03012]: media/03/image13.svg {width="0.31527777777777777in" height="0.2777777777777778in"}
  [03013]: media/03/image14.svg {width="1.4375in" height="0.4284722222222222in"}
  [03014]: media/03/image15.svg {width="0.48125in" height="0.4375in"}
  [03015]: media/03/image16.svg {width="2.1590277777777778in" height="0.4375in"}
  [03016]: media/03/image17.jpg {width="6.986805555555556in" height="9.0in"}
  [03017]: media/03/image18.jpg {width="6.986805555555556in" height="9.0in"}
  [03018]: media/03/image19.svg {width="7.0in" height="8.25in"}
  [03019]: media/03/image20.svg {width="2.2708333333333335in" height="0.21944444444444444in"}
  [03020]: media/03/image21.svg {width="2.3381944444444445in" height="0.2465277777777778in"}
  [03021]: media/03/image22.png {width="5.334027777777778in" height="5.334027777777778in"}
  [03022]: media/03/image23.jpeg {width="6.6402777777777775in" height="7.991666666666666in"}
  [03023]: media/03/image24.jpeg {width="6.4319444444444445in" height="9.0in"}
  [03024]: media/03/image25.jpeg {width="1.98125in" height="9.0in"}
  [03025]: media/03/image26.jpeg {width="6.990277777777778in" height="8.995138888888889in"}
  [03026]: media/03/image27.png {width="6.999305555555556in" height="8.748611111111112in"}
  [03027]: media/03/image28.png {width="6.999305555555556in" height="6.999305555555556in"}
  [03100]: media/03/image29.gif {width="4.71665135608049in" height="3.3229166666666665in"}
  [03101]: media/03/image30.jpeg {width="4.69963145231846in" height="2.632075678040245in"}
  [03028]: media/03/image31.svg {width="4.3740780839895015in" height="4.462264873140858in"}
  [03029]: media/03/image32.svg {width="3.3050623359580054in" height="3.3113199912510938in"}
  [03030]: media/03/image33.png {width="6.0in" height="2.441666666666667in"}
  [[www.colorado.edu/geography/gcraft/notes/gps/gps\_f.html]{.underline}]: http://www.colorado.edu/geography/gcraft/notes/gps/gps_f.html
  [[http://www.digitaldutch.com/atmoscalc/]{.underline}]: http://www.digitaldutch.com/atmoscalc/

<!--chapter:end:03-earth-atmosphere.Rmd-->

# Pitot Statics

*Editor's Note*

*In an effort to reduce confusion and conflict regarding pitot and static pressure nomenclature, SFTE has elected to change two definitions and symbols since the first edition of this handbook was released. Henceforth, \(\Delta Ps\) shall indicate static pressure ERROR (\(\Delta P_s = P_s - P_a)\) and \(\Delta P_T\) shall indicate total (i.e. pitot) pressure ERROR (\(\Delta P_T = P_p - P_T\)). This nomenclature eliminates the \(\Delta P_p\) symbol and confusion as to whether it indicates position error or pitot error.*

## Common Nomenclature {-}

| Symbol       | Definition                                   |
|:-------------|:---------------------------------------------|
| \(a\)             | speed of sound                                                                                                   |
| \(a_0\)           | speed of sound at sea level on a standard day                                                                    |
| \(M\)             | Mach number                                                                                                      |
| \(P_a\)           | ambient pressure                                                                                                 |
| \(P_0\)           | ambient pressure at sea level on a standard day (\(=2116.2 lb/ft^2 = 29.92 in Hg \))                             |
| \(P_p\)           | pitot pressure corrected for instrument error only                                                               |
| \(P_s\)           | static pressure (indicated at static port)                                                                       |
| \(P_T\)           | total pressure                                                                                                   |
| \(q\)             | incompressible dynamic pressure                                                                                  |
| \(q_c\)           | compressible dynamic pressure (\(=P_T-P_a\))                                                                     |
| \(q_{\mathrm{cic}}\)       | instrument corrected differential pressure (\(=P_p-P_s\))                                                        |
| \(T_a\)           | ambient temperature (absolute scale)                                                                             |
| \(T_0\)           | ambient temperature at sea level on a standard day (\(=288.15 K = 15° C = 518.7°R=59.0°F\)) |
| \(T_T\)           | total temperature (absolute scale)                                                                               |
| \(V_c\)           | calibrated airspeed                                                                                              |
| \(V_e\)           | equivalent airspeed                                                                                              |
| \(V_g\)           | ground speed                                                                                                     |
| \(V_i\)           |indicated airspeed                                                                                                |
| \(V_T\)           | true airspeed                                                                                                    |
| \(\Delta H_{\mathrm{ic}}\) | altimeter instrument correction                                                                                  |
| \(\Delta H_{\mathrm{pc}}\) | altimeter position error correction                                                                              |
| \(\Delta P_D\)    | dynamic pressure error (\(=P_T-\Delta P_s\))                                                                     |
| \(\Delta P_T\)    |total (pitot) pressure error (\(=P_P-P_T\))                                                                       |
| \(\Delta P_s\)    | static pressure error (\(=P_s-P_a\))                                                                             |
| \(\Delta V_{\mathrm{ic}}\) | airspeed instrument correction                                                                                   |
| \(\Delta V_{\mathrm{pc}}\) | airspeed position error correction                                                                               |
| \(\delta\)        | pressure ratio between ambient and sea level std (\(=P_a/P_0\))                                                  |
| \(\theta\)        | temperature ratio between ambient and sea level std (\(=T_a/T_0\))                                               |
| \(\rho_0\)        | ambient density at sea level on a std day (\(=0.002 377 slg/ft^3\))                                               |
| \(\sigma\)        | density ratio between ambient and sea level std (\(=P_a/P_0\))                                                   |
| \(\gamma\)        | ratio of specific heats (\(=1.4\) for air)                                                                       |


## Subsonic Airspeed and Mach Equation

True Airspeed

\[V_{T} = \left\lbrack \frac{2\gamma}{\gamma-1} \frac{P_a}{\rho_a} \left( \left\lbrack \frac{P_T - P_a}{P_a} + 1 \right\rbrack^\frac{\gamma-1}{\gamma} - 1 \right) \right\rbrack ^{1/2}\]

Equivalent Airspeed

(= \(V_T\) equation with assumption of std day sea level density)

\[V_{e} = \sqrt{7\frac{P_{a}}{\rho_0}\left( \left\lbrack \frac{P_{T} - P_{a}}{P_{a}} + 1 \right\rbrack^{\frac{2}{7}} - 1 \right)} = V_{T}\sqrt{\frac{\rho_{a}}{\rho_0}} = V_{T}\sqrt{\sigma}\]

Calibrated Airspeed

(= \(V_e\) equation with assumption of std day sea level pressure)

\[V_{c} = \left\lbrack \frac{2\gamma}{\gamma - 1}\frac{P_0}{\rho_0}\left( \left\lbrack \frac{P_{T} - P_{a}}{P_0} + 1 \right\rbrack^{\frac{\gamma - 1}{\gamma}} - 1 \right) \right\rbrack^{\frac{1}{2}}\]


\[\sqrt{7 \frac{P_0}{\rho_0}\left( \left\lbrack \frac{q_c}{P_0} + 1 \right\rbrack^{\frac{2}{7}} - 1 \right)}\]

Applying British units (\(lb/ft^2\)) and converting from *ft/sec* to knots yields

\[ V_{c} = 1479\sqrt{\left\lbrack \frac{P_{T} - P_{a}}{2116} + 1 \right\rbrack^{\frac{2}{7}} - 1} ~(kts)\]

Mach Number

\[M = \frac{V_{T}}{a} = \sqrt{\frac{2}{\gamma - 1}\left\lbrack \left( \frac{P_{T} - P_{a}}{P_{a}} + 1 \right)^{\frac{\gamma - 1}{\gamma}} - 1 \right\rbrack} = \sqrt{5\left( \left\lbrack \frac{q_{c}}{P_{a}} + 1 \right\rbrack^{\frac{2}{7}} - 1 \right)}\]


## Scale Altitude (Compressibility ) Correction

The name comes from the fact that although the equivalent airspeed equation does correct for compressibility, the sea level pressure assumption used for calibrated airspeed makes the compressibility correction valid only for that (sea level) pressure. Above sea level, the calibrated airspeed must be re-scaled for pressure effects on compressibility. The mathematical method for determining \(V_e\) from \(V_c\) is to first solve the calibrated airspeed equation for \(q_c\).

\[q_c = P_0  \left\lbrack \left( \frac{\rho_0}{P_0} \frac{V_c^2}{7} + 1 \right)^{3.5} - 1 \right\rbrack\]

Next, substitute this value and the ambient pressure (\(P_a\)) into the equivalent airspeed equation. (\(q_c = P_T - P_a\))

\[V_e = \sqrt{7 \frac{P_a}{\rho_0} \left( \left\lbrack \frac{q_c}{P_a}+1 \right\rbrack^{2/7} - 1 \right) } \]

The adjacent chart does this graphically for all subsonic airspeeds.

\[V_e = V_c + \Delta V_c\]

![][04003]


## Subsonic Relations Between Compressible and Incompressible Dynamic Pressure

For constant density (incompressible) flow Bernoulli's equation reduces to

\[V_T = \sqrt{\frac{2}{\rho_a}(P_T - P_a)} = \sqrt{\frac{2q}{\rho_a}} \]

Where incompressible dynamic pressure \(q\) is defined as \(P_T-P_a\).

As airflow speed increases, its density at the stagnation point increases thereby increasing the sensed pressure. The ratio between compressible & incompressible dynamic pressure can be written as a function of Mach number

\[q_c = q \left\lbrack 1 + \frac{M^2}{4} + \frac{M^4}{40} + \frac{M^6}{1600} + ... \right\rbrack \]

True dynamic pressure \(q\) (as used in modeling) is defined in dimensional analysis as:

\[q = \frac{1}{2} \rho_a V_T^2 = \frac{1}{2}\rho_0V_e^2\]

This value for \(q\) should not be confused with compressible (a.k.a. impact or differential) pressure, \(q_c (= P_T - P_a) \)

![][04008]


## Supersonic Airspeed and Mach Equations

\(P_T'\) denotes pitot pressure behind shock wave

True Airspeed

\[ \frac{P_T' - P_a}{P_a} = \frac{q_c}{P_a} = \left[ \frac{\gamma + 1}{2} \left(  \frac{V}{a} \right)^2  \right]^\frac{\gamma}{\gamma-1} \left[ \frac{1}{ \frac{2\gamma}{\gamma+1} \left( \frac{V}{a} \right)^2 - \frac{\gamma-1}{\gamma+1} }  \right]^\frac{1}{\gamma-1} - 1 \]

Equivalent Airspeed (valid if \(q_c/P_a > 0.892 929 158 \))

\[ \frac{q_c}{P_a} = \frac{166.92 \left[ \frac{V_e}{a_0 \sqrt{\sigma}} \right]^7} {\left( 7 \left[ \frac{V_e}{a_0 \sqrt{\sigma}} \right]^2 - 1 \right)^{2.5}} - 1 \]

Calibrated Airspeed (valid if \(V_c > a_0 \))

\[ \frac{q_c}{P_0} = \frac{166.92 \left[ \frac{V_c}{a_0} \right]^7} {\left( 7 \left[ \frac{V_c}{a_0} \right]^2 - 1 \right)^{2.5}} - 1\]

Mach Number

\[ \frac{q_c}{P_a} = \frac{166.92 M^7} {\left( 7 M^2 - 1 \right)^{2.5}} -1 \]


## Total Temperature Equation

Since stagnation exists at the probe, it absorbs the energy of the air

![][04013]

Apply Bernoulli:

\[ \frac{V^2}{2} + \frac{\gamma}{\gamma - 1}  \frac{P_s}{\rho_s} = \frac{\gamma}{\gamma - 1} \frac{P_p}{\rho_p} \]

Also \(\frac{P}{\rho} = RT \) and \(a^2 = \gamma RT \) therefore

\[ \frac{T_T}{T_a} = 1 + \left[ \frac{\gamma - 1}{2} \right] M^2 \]

Use *K* (probe recovery factor) to account for heat losses:

\[ \frac{T_T}{T_a} = 1 + \left[ \frac{K(\gamma - 1)}{2} \right] M^2 \]

During position error flight testing, measure \(T_i\).  From \(V_c\) and \(H_{\mathrm{pc}}\) determine M

\[ T_i + \Delta T_{\mathrm{ic}} = T_T = T_a + T_aKM^2 \]

Plot \(T_i\) vs \(M^2\)

![][04014]


## Altimeter Equation

\(P_a = P_0 \left(1-6.875 35 \times 10^{-6} H\right)^{5.256}\) below 36,089 ft

\(P_a = P_0 \left(0.223 35 \right) \textrm{e}^{-0.000 048 06[H-36089]}\) above 36,089 ft

<!--- FIXME: This figure really tells you nothing --->
![][04015]

<!--- FIXME: The following equations aren't really referenced anywhere in this section.  Some are defined at the section beginning --->
| Symbol       | Definition                                   |
|:-------------|:---------------------------------------------|
| \(H_i\)                     | indicated pressure altituide (29.92" Hg)     |
| \(\Delta H_{\mathrm{ic}}\)           | instrument error correction                  | <!--- already defined at the beginning of the section --->
| \(H_{\mathrm{ic}}\)                  | altimeter corrected of instrument error      |
| \(\Delta H_{\mathrm{pc}}\)           | position error correction                    | <!--- already defined at the beginning of the section --->
| \(H_c\)                     | calibrated pressure altitude                 |


## Position Error Test Methods

### Fly-by

As depicted below, the flyby method originally used some sort of viewing platform with surveyed distances and a grid or other device for determining the aircraft's relative angle above the platform's altimeter. This information combined to give the aircraft's actual pressure altitude. Modern methods replace the tower system with a radar altimeter or GPS unit to determine tapeline height above the flyby line (\(H_g\)). This geometric height is converted to a pressure altitude change using a temperature correction. When added to the aircraft's pressure altitude on the runway, this change provides the actual pressure altitude during the flyby (\(\textrm{Actual } H_c = \textrm{runway pressure altitude} + H_g (T_s/T_t)\)). <!--- This nomenclature is inconsistent with the rest of the section --->

![][04017]

\[\text{Actual } H_{c} = H_{c_{\mathrm{tower}}} + \left( D\tan\theta \cdot \frac{T_{s}}{T_{t}} \right) \]

\[ \Delta H_{\mathrm{pc}} = \text{Actual } H_c - \left( H_i + \Delta H_{\mathrm{ic}} \right) \]

<!--- Changing capital subscript 's' to lower-case to make more consistent with rest of the handbook --->
\[ \Delta P_s = \rho g \Delta H_{\mathrm{pc}} \]

\[ \Delta P_{S} = q_{c} - q_{\mathrm{cic}} \]

\[ \Delta P_{S} = \frac{1}{2}\rho_{0}{V_{c}^{2} - \frac{1}{2}\rho_{0}{V_{\mathrm{ic}}}^{2} \text{ (low Mach only)}} \]

Solve for \(V_c\)

\[ \Delta V_{\mathrm{pc}} = V_c - V_{\mathrm{ic}} \]

<!--- FIXME: What flow chart is this referring to??? --->
See flowchart for high mach or \(P_T \ne 0\) cases.

![][04018]

Note: A check on basic instrument calibration is easily accomplished using a "ground block" where a parked test aircraft compares altimeters with tower. Any error can be treated as a bias.

This altitude-based test method determines altimeter corrections and therefore static error directly. Accurately converting this static source error to an airspeed correction also requires knowledge of the test pitot tube's total pressure error (\(\Delta P_T\) ).  This can be determined either through direct comparison with a calibrated noseboom pitot pressure or from one of the airspeed-based methods that directly yield airspeed corrections (pace, ground course, GPS). In lieu of these options, the pitot error may assumed to be zero, but this will reduce confidence in the calculated value for airspeed correction.

### Ground Course Method

<!--- This figure doesn't add much value --->
![][04019]

Fly known course at constant \(V_i\)

Elapsed time = \(\Delta T\), therefore \(V_T = \frac{\Delta S}{\Delta T} \)

Use \(H_i\) and \(T_i\) to compute \(V_e = V_T \left(\sqrt{\sigma} \right) = V_c\) for low altitude

Correct \(V_i\) for instrument error corrections (\(\Delta V_{\mathrm{ic}} \)) using

\[V_{\mathrm{ic}} = V_i + \Delta V_{\mathrm{ic}} \]

\[\Delta V_{\mathrm{pc}} = V_c - V_{\mathrm{ic}} \]

To determine altimeter error assume \(\Delta P_T = 0\)

\[\frac{1}{2} \rho_0 \left[ V_c^2 - V_{\mathrm{ic}}^2 \right] = +\Delta P_s \]

\[\Delta P_s = +\rho g \Delta H \]

If \(\Delta P_T \ne 0\), then \(\Delta H_{\mathrm{pc}} = + \frac{\Delta P_s - \Delta P_T}{\rho g} \)

<!--- FIXME: This is a poor place to label a figure --->
Error resulting from a \(\frac{1}{2}\) sec timing error

<!--- FIXME: This image should probably be split into two with consistent axes and font sizes --->
![][04021]

This airspeed-based test method determines airspeed corrections directly. Accurately converting this airspeed error to a static source error requires knowledge of the test pitot tube's total pressure error (\(\Delta P_T\)). This can be determined using one of the altitude-based methods that directly yield altitude corrections (tower fly-by, trailing cone or bomb). In lieu of these options, the pitot error may assumed to be zero, but this will reduce confidence in the calculated values for static pressure error and altimeter correction.


### Trailing Cone/Bomb Method

![][04023]

1. Measure \(P_s\) (ref) away from pressure field of aircraft
2. Cone is used to stabilize static line
3. No speed limitations
4. Inexpensive---can be trailed on landing
5. Consider lag effects during rapid altitude changes

\(\Delta P_s = \Delta P_{s_{\mathrm{A/C}}} - \Delta P_{s_{\mathrm{REF}}} \)

\(\Delta H_{\mathrm{pc}} = +\frac{\Delta P_s}{\rho g} = \textrm{altimeter correction} \)  <!--- Probably not needed to define this here again --->

\(\Delta P_T - \Delta P_s = \Delta P_D = q_{\mathrm{ic}} - q_c \text{ assuming } \Delta P_T = 0 \text{ , } M < 0.2 \)  <!--- Unclear --->

If pitot errors do exist, then they must be included in calculations for \(\Delta V_{\mathrm{pc}}\) (see flowchart). <!--- which one??? --->

Using a trailing cone during stall testing may give airspeed errors due to lag errors during the deceleration.

This altitude-based test method determines altimeter corrections and therefore static error directly. Accurately converting this static source error to an airspeed correction also requires knowledge of the test pitot tube's total pressure error (\(\Delta P_T\)). This can be determined either through direct comparison with a calibrated noseboom pitot pressure or from one of the airspeed-based methods that directly yield airspeed corrections (pace, ground course, GPS). In lieu of these options, the pitot error may assumed to be zero, but this will reduce confidence in the calculated value for airspeed correction.

### GPS Methods
<!--- FIXME: This whole subsection needs to be reworked to make more consistent with the rest of the Section and handbook.  Particularly formatting and use of unordered lists to introduce each chapter --->

<!--- The following list should probably be turned into a paragraph rather than a bullet list --->
The attraction

  * no aircraft modifcations required
    * no trailing cone or aircraft plumbing mod
    * no flight test boom
  * no limitation on speed or altitude
    * can be done down to near stall
    * any altitude
  * easy data reduction
    * no correlation with pace aircraft, ground radar, or other references required

Various methods available, all assume **steady** winds and ambient temperature. You must determine wind speed and direction to calculate \(V_T\) and \(T_0\) and to ensure steady winds existed during test series.

GPS accuracies are variable. Know tolerances before accepting GPS as a truth model.

If exact (\(\pm 10°\)) winds are calculated inflight, you can fly one pass directly into/away from the wind

\[V_T = V_G + V_{Headwind}\]

This airspeed-based test method determines airspeed corrections directly. Accurately converting this airspeed error to a static source error requires knowledge of the test pitot tube's total pressure error (\(\Delta P_T\)). This can be determined using one of the altitude-based methods that directly yield altitude corrections (tower fly-by, trailing cone or bomb). In lieu of these options, the pitot error may assumed to be zero, but this will reduce confidence in the calculated values for static pressure error and altimeter correction.

<!--- FIXME: set up cross-reference to Section 4.11 and the "last chart on Page 04-29" below.  Also there is no Page 04-29 in the handbook--->
*Graphs in Section 4.11 separately show the effect of measurement errors in \(\Delta P_T\), air temperature, or true airspeed on \(\Delta V_c\) calculations . The last chart of this Section shows how each knot of accumulated \(\Delta V_c\) uncertainty affects the \(\Delta H_c\) uncertainty at various altitudes and temperatures.*

Flying four legs instead of three allows four separate calculations of wind speed & direction to confirm stable winds at that test airspeed. If several real-time calculations of winds confirm constant direction and velocity, then testing may be shortened by flying only one pass directly into or away from the wind. If this is done, an end-of-test wind calibration must be performed to confirm steady winds throughout the test series. To minimize temperature and wind variations, testing should be accomplished within a relatively small area.

#### Horseshoe Track GPS Method {-}

  * Horseshoe track method
    * fly three legs with each perpedicular ground tracks, noting GPS ground speed on each
    * determine true airspeed by solving three equations in three unknowns
  * Practical problem
    * need to fly close to the ground, tracking perpendicular ground references

![][04028]

True airspeed: \(V_T = \frac{1}{2} \sqrt{V_1^2 + V_2^2 + V_3^2 + V_1^2 \times \frac{V_3^2}{V_2^2}}\)

Wind velocity: \(V_W = \sqrt{\left( \frac{V_1 - V_3}{2} \right)^2 + \left( \frac{V_2 - V_1 \times V_3 / V_2}{2} \right) ^2 } \)

Wind direction: \(\psi_W = \tan^{-1} \frac{V_2 - V_1 \times V_3 / V_2}{V_1 - V_3} \)

#### Horseshoe Heading GPS Method {-}

  * Horseshoe Heading Method
    * Fly three legs with perpendicular headings, noting GPS ground speed on each
    * Determine true airspeed by solving three equations in three unknowns

![][04031]

<!--- FIXME: the wind direction (psi) below doesn't use the "W" subscript as it did above.  Intentional? --->
Wind direction: \(\psi = \tan^{-1} \frac{-V_{G1}^2 + 2V_{G2}^2 - V_{G3}^2}{V_{G3}^2 - V_{G1}^2} \)

Wind velocity: \(V_W = \frac{1}{2} \left[ V_{G3}^2 + V_{G1}^2 \pm \sqrt{ \left(V_{G3}^2 + V_{G1}^2 \right)^2 \pm \left( \frac{-V_{G1}^2 + 2V_{G2}^2 - V_{G3}^2}{\sin{\psi}} \right)^2 } \right]^{1/2} \)

True airspeed: \(V_T = \sqrt{\frac{V_{G3}^2 + V_{G1}^2}{2} - V_W^2} \)

The "Windbox" method consists of flying four legs instead of three. The extra leg provides a fourfold increase in wind calculations to improve result confidence. The "Orbis" method extends this advantage by collecting data at every heading throughout a level turn.

#### Cloverleaf Method {-}

(Microsoft Excel spreadsheet adapted from Doug Gray, NSW Australia)

  * Fly three legs with approximately 90-120 degree difference between headings.
    * Can be accomplished in a broad turn as with the horseshoe method, or
    * Directly over a single point (cloverleaf maneuver).
  * Accurate results require
    * Identical values for indicated airspeed (and TAS) for all legs.
    * Constant winds throughout data collection (single W/S vector in figure).
    * Approx. 10 seconds stable ground speed, Vg, (G/S in figure) during each leg.
  * Aircraft heading results for each leg entail an airborne compass swing.

<!--- FIXME: The following is mean to represent Excel spreadsheet formulas, but they either need to copy-and-pastable for Excel, or the basic formulas consistent with the rest of the Handbook should be presented --->
| Inputs for each 3-leg data set|
|:-------------|
| \(V_{g_1}\)    \(V_{g_2}\)    \(V_{g_3}\)  |
| \(Trk_{1}\)    \(Trk_{2}\)    \(Trk_{3}\)  |

| Intermediate calculations     |
|:-----------------------|
| \(X_1 = V_{g_1} * \sin(\pi * (360 - Trk_1) / 180) \) |
| \(Y_1 = V_{g_1} * \cos(\pi * (360 - Trk_1) / 180) \) |
| \(X_2 = V_{g_2} * \sin(\pi * (360 - Trk_2) / 180) \) |
| \(Y_2 = V_{g_2} * \cos(\pi * (360 - Trk_2) / 180) \) |
| \(X_3 = V_{g_3} * \sin(\pi * (360 - Trk_3) / 180) \) |
| \(Y_3 = V_{g_3} * \cos(\pi * (360 - Trk_3) / 180) \) |
| \(M_1 = -(X_2 - X_1) / (Y_2 - Y_1) \) |
| \(M_2 = -(X_3 - X_1) / (Y_3 - Y_1) \) |
| \(B_1 = (Y_1 + Y_2)/2 - M_1 * (X_1 + X_2) / 2 \) |
| \(B_2 = (Y_1 + Y_3)/2 - M_2 * (X_1 + X_3) / 2 \) |
| \(V_{W_x} = (B_1 - B_2) / (M_2 - M_1) \) |
| \(V_{w_y} = M_1 * V_{W_x} + B_1 \) |

![][04032]

| Results     |
|:-----------------------|
| Aircraft true airspeed \(= V_T = \left[\left(X_1 - V_{W_x}\right)^2 + \left(Y_1 - V_{W_y}\right)^2 \right]^{0.5} \) |
| Total wind speed \(= V_W = \left[\left(V_{W_x}^2 + V_{W_y}^2\right)\right]^{0.5} \)  |
| Wind direction \(= \psi_W = Psi_W = \mod(540 - (180/\pi * \textrm{ATAN2}(V_{W_y}, V_{W_x})), 360) \) |
| 1^st^ leg a/c heading \(= \psi_1 = Psi_1 = \mod(540 - (180/\pi * \textrm{ATAN2}(V_{W_y}-Y_1, V_{W_x}-X_1)), 360) \) |
| 2^nd^ leg a/c heading \(= \psi_2 = Psi_2 = \mod(540 - (180/\pi * \textrm{ATAN2}(V_{W_y}-Y_2, V_{W_x}-X_2)), 360) \) |
| 3^rd^ leg a/c heading \(= \psi_3 = Psi_3 = \mod(540 - (180/\pi * \textrm{ATAN2}(V_{W_y}-Y_3, V_{W_x}-X_3)), 360) \) |


## Position Error FAR 23/25.1323 and .1325/JAR Certification

![][04047]

<!--- FIXME: This should be defined elsewhere --->
  * Requirements
    * Maximum error at sea level must be less than \(\pm 30 \text{ft}/100 \text{kts}\) between \(1.3 V_{\mathrm{SO}}\) and \(1.8 V_{S1}\) 
    * \(V_{S0} = \) Full flap, gear down, power off, stall speed \)
    * \(V_{S1} = \) Stall speed in a specific configuration \)

![][04048]

Errors must be equal to or less than \(\pm3\%\) of \(V_c\) or \(\pm5\text{kts}\) whichever is greater

#### Mil Spec P-26292 C (USAF) {-}

Landing configuration: \(\Delta H_{\mathrm{pc}} \pm 30\) ft.

![][04034]

## PEC Correction Process Flow Chart

![][04036]



## Airspeed/Altitude/Mach Graphic Relation

![][04037]

![][04038]



## Effect of Errors on Calibrated Airspeed and Altitude

![][04039]

![][04040]

![][04041]

![][04042]

[04001]: media/04/image1.svg {width="1.792361111111111in" height="0.6111111111111112in"}
[04002]: media/04/image2.svg {width="1.8131944444444446in" height="0.7222222222222222in"}
[04003]: media/04/image3.svg {width="8.915277777777778in" height="6.207638888888889in"}
[04004]: media/04/image4.svg {width="1.7715277777777778in" height="0.5277777777777778in"}
[04005]: media/04/image5.svg {width="2.5006944444444446in" height="0.5277777777777778in"}
[04006]: media/04/image6.svg {width="2.7631944444444443in" height="0.5in"}
[04007]: media/04/image7.svg {width="1.9166666666666667in" height="0.6333333333333333in"}
[04008]: media/04/image8.png {width="8.998611111111112in" height="5.290972222222222in"}
[04009]: media/04/image9.svg {width="4.271527777777778in" height="1.2666666666666666in"}
[04010]: media/04/image10.svg {width="1.7715277777777778in" height="1.1388888888888888in"}
[04011]: media/04/image11.svg {width="1.542361111111111in" height="1.0833333333333333in"}
[04012]: media/04/image12.svg {width="1.4590277777777778in" height="0.5138888888888888in"}
[04013]: media/04/image13.png {width="5.0in" height="0.82in"}
[04014]: media/04/image14.svg {width="4.3125in" height="3.0in"}
[04015]: media/04/image15.png {width="4.2034722222222225in" height="4.113194444444445in"}
[04016]: media/04/image16.svg {width="4.4375in" height="1.375in"}
[04017]: media/04/image17.png {width="5.2868055555555555in" height="1.7604166666666667in"}
[04018]: media/04/image18.svg {width="5.1875in" height="3.15in"}
[04019]: media/04/image19.svg {width="4.5625in" height="4.0625in"}
[04020]: media/04/image20.svg {width="5.3125in" height="3.9611111111111112in"}
[04021]: media/04/image21.svg {width="5.5125in" height="6.4625in"}
[04022]: media/04/image22.svg {width="3.145138888888889in" height="0.24513888888888888in"}
[04023]: media/04/image23.svg {width="5.9375in" height="3.0in"}
[04024]: media/04/image24.svg {width="3.513888888888889in" height="0.6875in"}
[04025]: media/04/image25.svg {width="1.4375in" height="0.28125in"}
[04026]: media/04/image26.svg {width="4.5in" height="3.45in"}
[04027]: media/04/image27.svg {width="3.4375in" height="1.6625in"}
[04028]: media/04/image28.svg {width="2.7in" height="2.495138888888889in"}
[04029]: media/04/image29.svg {width="5.375in" height="2.1875in"}
[04030]: media/04/image30.svg {width="6.951388888888889in" height="2.3125in"}
[04031]: media/04/image31.svg {width="5.0625in" height="2.6875in"}
[04032]: media/04/image32.png {width="5.0in" height="3.40in"}
[04033]: media/04/image49.svg {width="2.9in" height="0.5097222222222222in"}
[04034]: media/04/image50.svg {width="5.75in" height="2.6875in"}
[04035]: media/04/image51.svg {width="2.8in" height="0.4986111111111111in"}
[04036]: media/04/image52.svg {width="8.630718503937008in" height="6.446496062992126in"}
[04037]: media/04/image53.png {width="8.686111111111112in" height="6.311805555555556in"}
[04038]: media/04/image54.svg {width="9.316666666666666in" height="6.4215277777777775in"}
[04039]: media/04/image55.png {width="8.6875in" height="5.738194444444445in"} 
[04040]: media/04/image56.svg {width="9.0in" height="5.7444444444444445in"}
[04041]: media/04/image57.png {width="9.0in" height="5.338888888888889in"}
[04042]: media/04/image58.svg {width="9.0in" height="6.511111111111111in"}
[04047]: media/04/image47.svg
[04048]: media/04/image48.svg

<!--chapter:end:04-pitot-statics.Rmd-->

# Aerodynamics

<!--- FIXME: This section header should be made consistent with the rest of the document (Section 4 uses "Common Nomenclature") --->
## Recurring Terminology {-}

<!--- FIXME: not very consistent with these definitions.  Sometimes full sentences with periods, sometimes not --->
<!--- FIXME: MAC definition could use some work.  Total aero force concentrated without changing pitching moment as f(AOA)? --->
<!--- FIXME: Should 'P' for pressure be lower case? Confusing with Power. --->
| Symbol       | Definition                                   |
|:-------------|:---------------------------------------------|
| \(a\)                  | slope of lift curve, \(dC_L/d\alpha\)                                                                         |
| \(\mathrm{ac}\)               | aerodynamic center, location along the chord where pitching moments about this center do not change with angle of attack (25% \(\mathrm{MAC}\) for airfoils in subsonic flow, 50% \(\mathrm{MAC}\) for airfoils in supersonic flow)  |
| \(\mathrm{AOA}\)                | angle of attack                                                                                               |
| \(\mathrm{AR}\)                 | aspect ratio \(= [\text{wing span}]^2 / [\text{reference wing area}] = b^2/S \)                           |
| \(B\)                  | wing span                                                                                                     |
| \(b_t\)                | horizontal tail span                                                                                          |
| \(C\)                  | coefficient, a non-dimensional representation of an aerodynamic property                                      |
| \(c\)                  | wing chord length Camber maximum curvature of an airfoil, measured at maximum distance between chord line and amber line, expressed in % of \(\mathrm{MAC}\).  Camber line theoretical line extending from an airfoil's leading edge to the trailing edge, located halfway between the upper and lower surfaces. |
| \(C_D\)                | drag coefficient                                                                                              |
| \(C_{D_i}\)             | induced drag coefficient                                                                                      |
| \(C_{D_0}\text{, }C_{D_{\mathrm{PE}}}\) | parasitic drag coefficient                                                                                    |
| \(c_f\)                | friction coefficient                                                                                          |
| Chord             | straight-line distance from an airfoil's leading edge to its trailing edge                                    |
| \(C_L\)                | lift coefficient                                                                                              |
| \(C_p\)                | pressure coefficient = \(\Delta p/q\)                                                                         |
| \(e\)                  | Oswald efficiency factor                                                                                      |
| \(l\)                  | distance traveled by flow, or characteristic length of surface                                                |
| \(M\)                  | Mach number                                                                                                   |
| \(\mathrm{MAC}\)       | mean aerodynamic chord, chord length of location on wing where total aerodynamic forces can be concentrated.  |
| \(\mathrm{MGC}\)       | mean geometric chord, the average chord length, derived only from a plan form view of a wing (similar to \(\mathrm{MAC}\) if wing has no twist and constant cross section & thickness-to-chord ratio).  |
| \(P\)                  | pressure                                                                                                      |
| \(P_\text{req'd}\)     | power required                                                                                                |
| \(q\)                  | dynamic pressure = \(\frac{1}{2} \rho_a V_T^2 = \frac{1}{2} \rho_0 V_T^2\)                                    |
| \(R\)                  | gas constant                                                                                                  |
| \(\mathrm{Rn},\mathrm{Re}\)            | Reynolds number                                                                                               |
| \(S\)                  | reference wing area, includes extension of wing to fuselage centerline.                                       |
| \(S_t\)                | horizontal tail surface area                                                                                  |
| \(S_W\)                | wetted area of surface                                                                                        |
| \(T\)                  | temperature                                                                                                   |
| \(V\)                  | true velocity                                                                                                 |
| \(V_e\)                | equivalent velocity                                                                                           |
| \(\alpha\)             | angle of attack                                                                                               |
| \(\alpha_i\)           | induced angle of attack                                                                                       |
| \(\delta\)             | depth of boundary layer, or surface wedge angle                                                               |
| \(\mu\)                | viscosity, or wave angle                                                                                      |
| \(\nu\)                | flow turning angle                                                                                            |
| \(\theta\)             | shock wave angle                                                                                              |
| \(\rho\)               | density                                                                                                       |

* Perfect Fluid
    * incompressible, inelastic, and non-viscous
    * used in flow outside of boundary layers at \(M\) < .7
* Incompressible, inelastic, viscous
    * used for boundary layer studies at \(M\) < .7
* Compressible, non-viscous, elastic fluid
    * used outside boundary layers up to \(M\) = 5

<!--- FIXME: Reference should be replaced with linked cross reference --->
## Dimensional Analysis Interpretations 

(ref 5.2)

Aerodynamic force = \(F\)

<!--- Fixme: what is the second bullet point referring to?  What is K? --->
* \(F = f \left( \rho \text{, } \mu, T \text{, } V \text{, shape, orientation, size, roughness, gravity} \right) \)
* For aircraft ignore \(R\), \(K\) & hypersonic effects

![][05001]

<!--- TODO: align the non-dimensional parameters (align equals sign) --->
* Initially assume similar body orientations, shapes & roughness.
* Dimensional Analysis reveals four non-dimensional (\(\pi\)) parameters:
    * Force Coefficient  \(\pi_1 = \frac{F}{\rho V^2 l^2} \)
    * Reynolds Number \(\pi_2 = \frac{\rho V l}{\mu} \)
    * Mach Number \(\pi_3 = \frac{V}{a} \)
    * Froude Number \(\pi_4 = \frac{V}{\sqrt{lg}} \)

A closer look at the force coefficient:

<!--- This force coefficient should probably be defined at the beginning of the section --->
\[C_F = \frac{F}{\rho V^2 l^2} => \frac{F}{\frac{1}{2} \rho V^2 S} \]

<!--- This doesn't really make sense.  What is "S" the same as? --->
where \(\frac{1}{2} \rho_a V_T^2 = \frac{1}{2} \rho_0 V_e^2 = \text{dynamic pressure}\text{, }q \)

Dimensions of reference wing area, \(S\) are the same

<!--- FIXME: m is not defined --->
<!--- FIXME: q doesn't need quotes --->
**A feel for \(q\)**

* Kinetic energy of a moving object = \(\frac{1}{2} m V_T^2 \)
* Block of moving air kinetic energy = \(\frac{1}{2} \rho \text{ (volume) } V_T^2 \)
* Dividing through by volume yields \(\mathrm{KE}\) per volume of moving air = \(\frac{1}{2} \rho V_T^2 \)
* "Dynamic pressure" or "\(q\)" = potential for converting each cubic foot of the airflow's kinetic energy into frontal stagnation pressure
* Feel \(q\) by extending your hand out the window of a moving car

**A feel for coefficients**

* \(C_F = (F/S)/q\) = the ratio between the total force pressure and the flow's dynamic pressure
* Lift is the component of the total force perpendicular to the free stream flow
* Drag is the component along the flow
* Break total into lift and drag coefficients:
    * \(C_L = (L/S)/q\)
    * \(C_D = (D/S)/q\)
* Increasing dynamic pressure generates a larger total force, lift and drag

![][05005]

* Froude number is not significant in aerodynamic phenomena
* Recall that forces are also a function of angle of attack, shape & surface roughness, therefore

\[C_L,C_D = f \left[ M \text{, } \mathrm{Re} \text{, } \alpha \right] \text{ for a given shape, roughness} \]

![][05007]

*Note in the figure above the Reynolds effects are exaggerated*

<!--- FIXME: I don't like the inconcistent use of \mathrm{Rn} and \mathrm{Re} for Reynolds number --->
To compare test day and standard day aircraft or to match wind tunnel \(C_F\) data to actual aircraft; the shape, roughness, \(M\), \(\mathrm{Rn}\) and \(\alpha\) must be equal for both aircraft

![][05009]

<!--- FIXME: Define these subscripts --->
\[\frac{L_A}{q_A S_A} = C_L = \frac{L_M}{q_M S_M} \]


<!--- FIXME: update references to dynamic cross references--->
## General Aerodynamic Relations 

(refs 5.1, 5.2, 5.10)

Lift & Drag forces can be described using two approaches:

1. Change in momentum of airstream, \(F=d[mv]/dt\)
2. "Bernoulli" approach which requires the continuity and conservation of energy equations

**Continuity Equation**

Fluid Mass in = Fluid Mass out

\[\rho_1 V_1 A_1 = \rho_2 V_2 A_2\]

<!--- FIXME: Subsonic doesn't equate to incompressible --->
For subsonic (incompressible) flow \(\rho_1 = \rho_2\)

\[V_1 A_1 = V_2 A_2\]

**Conservation of Energy** (Bernoulli) **Equation:**

Potential + Kinetic + Pressure = constant (changes in Potential energy are negligible)

Energy per unit volume is pressure then Dynamic Pressure + Static Pressure = Total Pressure

\[\frac{1}{2}\rho V^2 + p_s = \text{constant} \]
\[\frac{1}{2}\rho V^2 + p_s = p_t \]

* This classic approach only applies in the "potential flow" region and not in the boundary layer where energy losses occur
* Pressures around a surface can be calculated or measured from tests and converted into pressure coefficients,

\[c_p = \left( p_{\mathrm{local}} - p_{\mathrm{ambient}} \right) / \text{dynamic pressure} = \Delta p/q \]

* \(c_p\) values can be mapped out for all surfaces

![][05011]

* Summation of all pressures perpendicular to surface yield the pitching moments and the "**Resultant Aerodynamic Force**" which is broken into lift and drag components

![][05012]

* Lift & drag forces are referred to the aerodynamic center (\(\mathrm{ac}\)) where the pitching moment is constant for reasonable angles of attack.
* Pitching moments increase with airfoil camber, are zero if symmetric.
* Aerodynamic center is located at 25% \(\mathrm{MAC}\) for fully subsonic flow and at 50% \(\mathrm{MAC}\) for fully supersonic flow.


## Wing Design Effects on Lift Curve Slope 

(refs 5.1, 5.2, 5.10)

### Aspect Ratio Effect {-}

* Pressure differential at wingtip causes tip vortex

![][05013]

![][05014]

* Vortex creates flow field that reduces \(\mathrm{AOA}\) across wingspan

![][05015]

* Local \(\mathrm{AOA}\) reductions decrease average lift curve slope

![][05016]

*2D wing = wind tunnel airfoil extending to walls (infinite aspect ratio).*

\(a_0 = \text{Lift curve slope for an infinite wing} \)

\(a = \text{Lift curve slope for a finite wing}\)

* Above relationship estimated as \(\alpha = \frac{dC_L}{d \alpha} = \frac{a_0}{1+\frac{57.3 a_0}{\pi \mathrm{AR}}} \)

### Trailing Edge Flap Effects {-}

![][05018]

![][05019]

### Leading Edge Flap Effects {-}

![][05020]

![][05021]

### Boundary Layer Control Effects {-}

![][05022]

![][05023]


## Elements of Drag 

(refs 5.1, 5.2, 5.10)

![][05024]

* Skin friction shear stress is a function of velocity profile at surface

   
![][05025]

<!--- Tau needs to be defined at the beginning of the section --->
Shear stress \(\tau_w = \mu \left( \frac{dv}{dy} \right)_{y=0} \)

* Viscosity \(\mu\) increases with temperature (ref 5.9)

Sutherland law: \(\mu = \mu_0 \frac{\left( \frac{T}{T_0} \right)^{1.5} \left( T_0 + S \right)}{\left( T + S \right)} \)

Power law: \(\mu = \mu_0 \left( \frac{T}{T_0} \right)^n \)

<!--- TODO: check to make sure the unit formatting is consistent with the style guide --->
Where \(T_0 = 273.15 \text{K} = 518.67 \text{R} \)

For air: \(S = 110.4 \text{K} = 199 \text{R} \text{; n=0.67} \) 

For air at \(273\) K : \(\mu_0 = 1.717 \times 10^{-5} \left[\text{kg/m s}\right] = 3.59 \times 10^{-7} \left[\text{slug/ft s}\right] \)

Inserting air values (\(T_K=\)Kelvin and \(T_R=\)Rankin) into Sutherland law gives

\[\mu = 1.458 \times 10^{-6} \frac{T_K^{1.5}}{T_K+110.4} \left[\frac{\text{kg}}{\text{s m}}\right] = 2.2 \times 10^{-8} \frac{T_R^{1.5}}{T_R+199} \left[\frac{\text{slug}}{\text{s ft}}\right]\]

### Reynolds Number Effects 

(ref 5.10)

* Laminar boundary layers have more gradual change in velocity near surface than turbulent boundary layers.
* High Reynolds numbers help propagate turbulent flow.

   
![][05031] 

Shearing stress: \(\tau_w = \mu \left(\frac{dv}{dy}\right)_{y=0}\)

Skin friction coefficient: \(C_f = \frac{\tau_w}{\frac{1}{2}\rho_{\infty} V_{\infty}^2} = \frac{\tau_w}{q_{\infty}} \)

Laminar boundary layer: \(\text{Total } C_f = \frac{1.328}{\left(\mathrm{Re}_L \right)^{1/2}} \)

Turbulent boundary layer: \(\text{Total } C_f = \frac{0.455}{\left(\log(\mathrm{Re}_L)\right)^{2.58}} \approx \frac{0.074}{\left(\mathrm{Re}_L\right)^{1/5}} \) 

![][05033]

\(\mathrm{Re}_L\) based on total length of flat plate

* Depth of boundary layer \((\delta)\) depends on local Reynolds number \((\mathrm{Re}_x)\) and whether the flow is turbulent or laminar.

\[\mathrm{Re}_x = \frac{\rho_{\infty} V_{\infty} x}{\mu_{\infty}} \equiv \frac{\text{Intertia Forces}}{\text{Viscous Forces}} \]

\(x = \) distance traveled to point in question

\[\delta_{\mathrm{lam}} = \frac{5.2x}{\sqrt{\mathrm{Re}_x}} \]

\[\delta_{\mathrm{turb}} = \frac{0.37x}{\mathrm{Re}_x^{0.2}} \]

### Pressure Drag

* Ideal frictionless flow has no losses and leads to zero pressure drag
* Real fluids have friction and energy losses along surface
* Energy losses negate total pressure recovery, lead to decreasing total pressure along surface

![][05036]

* Imbalance of pressures on surfaces causes pressure drag

  

![][05037]

![][05038]

* Profile streamlining reduces pressure drag

![][05039]

### Interference Drag

* Occurs with multiple surfaces approximately parallel to flow
* Caused by flow's interference with itself or by excessive adverse pressure gradient due to rapidly decreasing vehicle cross section
* Most severe with surfaces at acute angles to each other
* Effects often reduced by fillets around contracting surfaces

![][05040]

### Induced Drag

* Wingtip vortex reduces local \(\mathrm{AOA}\) at each station along wing
* Local lift vector is perpendicular to local \(\mathrm{AOA}\)
* Local lift vector is therefore tilted back relative to freestream lift
* Induced drag defined as rearward component of local lift vector

<!--- This image has an equation in it that should be cropped and put into the text --->
![][05041]

Induced Drag \[\left(D_i\right)=L\left(\alpha_i\right)\]

For elliptical lift distributions \(\alpha_i = \frac{C_L}{\pi \mathrm{AR}} \)

\[\therefore D_i = L \left(\frac{C_L}{\pi \mathrm{AR}}\right) \text{ but } L=qSC_L \]

\[C_{D_i} = \frac{D_i}{qS} = \frac{C_L^2}{\pi \mathrm{AR}}\]

Oswald efficiency factor, \(e\), accounts for losses in excess of those predicted above (due to uneven downwash and changing interference drag effects).

\[\therefore C_{D_i} = \frac{C_L^2}{\pi \mathrm{AR} e}\]

## Aerodynamic Compressibility Relations 

(ref 5.8)

  

**Prandtl/Glauert Approximation**

Approximates Mach effects on aerodynamics below critical Mach

\[C_{P_{\mathrm{compressible}}} = \frac{1}{\sqrt{1-M^2}}C_{P_{\mathrm{incompressible}}} \]

**Total vs Ambient Property Relations for Adiabatic Flow**

\[\frac{T_T}{T} = 1 + \frac{\gamma -1}{2}M^2 \text{   Isentropic flow not required}\]
\[\frac{P_T}{P} = \left[1 + \frac{\gamma - 1}{2}M^2 \right]^{\frac{\gamma}{\gamma-1}} \text{   Isentropic (shockless) flow required}\]
\[\frac{\rho_T}{\rho} = \left[1 + \frac{\gamma - 1}{2} M^2 \right]^{\frac{1}{\gamma -1}} \text{   Isentropic flow required} \]


**Normal Shock Relations**

Assumes isentropic flow on each side of the shock
Assumes flow across shock is adiabatic
Property changes occur in a constant area (throat)

\[\frac{P_2}{P_1} = \frac{1 - \gamma + 2\gamma M_1^2}{1+\gamma} \]
<!--- Check this exponent in the following equation --->
\[\frac{\rho_2}{\rho_1} = \left[\frac{2 + \left(\gamma - 1\right) M_1^2}{\left(\gamma+1\right) M_1^2} \right]^{-1} \]
\[\frac{T_2}{T_1} = \left[\frac{1 - \gamma + 2\gamma M_1^2}{1 + \gamma} \right]\left[\frac{2 + \left(\gamma - 1\right) M_1^2}{\left(1 + \gamma\right) M_1^2} \right] \]
\[M_2^2 = \frac{M_1^2 + \frac{2}{\gamma - 1}}{\frac{2\gamma}{\gamma-1} M_1^2-1} \]

Normal shock summary
  
\(P_{T_1} > P_{T_2}\)

\(P_{1} < P_{2}\)

\(\rho_{T_1} > \rho_{T_2}\)

\(\rho_{1} < \rho_{2}\)

\(T_{T_1} > T_{T_2}\)

\(T_{1} < T_{2}\)

\(M_1 > M_2 \)

\(s_1 < s_2 \)


### Oblique Shocks

**Oblique Shock Description**

![][05048]

\[\delta = \text{surface turning angle}\]

\[\theta = \text{shock wave angle}\]

\[\text{Subscript 1 denotes upstream conditions}\]

\[\text{Subscript 2 denotes downstream conditions}\]

**Oblique Shock Relations**

* Calculate \(P_2/P_1\), \(T_2/T_1\), and \(\rho_2/\rho_1\) across oblique shocks by using normal shock equations and substituting \(M_1 \sin\theta\) in place of \(M_1\)
* Calculate total pressure loss across oblique shock as

\[\frac{P_{T_2}}{P_{T_1}} = \left[\left[\frac{\gamma - 1}{\gamma + 1} + \frac{2}{{\left(\gamma + 1\right)M_1^2\sin^2\theta}}\right]^{\gamma} \left[\frac{2\gamma}{\gamma+1} M_1^2\sin^2\theta - \frac{\gamma - 1}{\gamma + 1} \right]\right]^{\frac{1}{1 - \gamma}}  \]

* Calculate relation between Mach number and angles as

\[M_2^2\sin^2\left(\delta - \theta\right) = \frac{M_1^2 \sin^2\theta + \frac{2}{\gamma-1}}{\frac{2\gamma}{\gamma - 1} M_1^2\sin^2\theta - 1} \]

**Oblique Shock Turning Angle as a Function of Wave Angle**

![][05051]

* Two \(\theta\) solutions exist for every \(M_1\) & \(\delta\) combination
    * These represent the strong and weak shock solutions
    * Weak shocks normally occur in nature
* There is a minimum Mach number for each turning angle
* The wave angle of a weak shock decreases with increased Mach
* For a given Mach number, \(\theta\) approaches \(\mu\) as \(\delta\) decreases

**Mach Cone Angle**

![][05052]

Minimum Wave Angle: \(\mu = \sin^{-1}\left(1/M\right) \)

### Supersonic Isentropic Expansion Relation

![][05053]

* The wave angle \(\mu\) determines where the lower pressure can be felt and thus where the flow can be accelerated
* As the flow accelerates, a new wave angle forms and the subsequent lower pressure further accelerates the flow
* Results in a series of Mach waves forming a "fan" until the flow turns and accelerates so that it is parallel to the new boundary

**Prandtl-Meyer Function**

Shows flow's required turning angle (\(\nu\)) to accelerate from one Mach number to another

\[\nu_M = \sqrt{\frac{\gamma + 1}{\gamma - 1}} \left[\tan^{-1}\sqrt{\frac{\gamma - 1}{\gamma + 1} \left(M^2 - 1\right)} \right] - \tan^{-1}\sqrt{M^2-1} \]

* If upstream Mach \((M_1) = 1\), then \(\nu_1 = 0\), and equation directly relates downstream Mach (\(M_2\)) to surface turning angle (\(\Delta \nu\))
* If \(M_1 > 1\), determine \(M_2\) as follows:
    * Calculate upstream ν~1~ from above equation
    * Calculate \(\nu_2 = \nu_1 + \Delta \nu \)
    * Reverse above equation to obtain corresponding \(M_2\)
* Above equation is tabulated in NACA TR 1135 and is plotted below

![][05055]

Example: Flow initially at \(M_1 = 2.0\) accelerates through an expansion corner of 24 deg. Exit Mach number is 3.0

### Two-Dimensional Supersonic Airfoil Approximations

* Determine surface static pressures by calculating changes through obliques shocks and expansion fans

![][05056]

* Ackert approximations for thin wings are based on

   

\[C_p = \frac{\Delta P}{q} \cong \pm\frac{2 \delta}{\sqrt{M^2 - 1}} \]

* Double wedge airfoil approximations

![][05058]

\[C_L \cong \frac{4 \alpha}{\sqrt{M^2 - 1} }\]

\[C_D \cong \frac{4 \alpha^2}{\sqrt{M^2 - 1}} + \frac{4}{\sqrt{M^2 - 1}}\left(\frac{t}{c}\right)^2\]

* Biconvex wing approximations

![][05061]

\[C_L \cong \frac{4 \alpha}{\sqrt{M^2 - 1} }\]

\[C_D \cong \frac{4 \alpha^2}{\sqrt{M^2 - 1}} + \frac{5.33}{\sqrt{M^2 - 1}}\left(\frac{t}{c}\right)^2\]


## Drag Polars 

(ref 5.2)

### Drag Polar Construction and Terminology

   
\(C_L = \text{lift coefficient}\)

\(C_D = \text{drag coefficient}\)

\(C_{D_i} = \text{induced drag coefficient}\)

\(C_{D_0} = \text{parasitic drag coefficient}\)

\(\mathrm{AR} = \text{aspect ratio}\)

\(e = \text{Oswald efficiency factor}\)

\(l = \text{length flow has traveled}\)

\(S_{\mathrm{wet}} = \text{wetted area of surface}\)

\(S = \text{reference wing area}\)

**Simple Drag Polar Equation Limitations**

* No separated flow losses
* Symmetric Camber
* Applies at one Mach, Altitude, \(\mathrm{cg}\)

\[C_D = C_{D_0} + \frac{C_L^2}{\pi \mathrm{AR} e} = C_{D_0} + C_{D_i}\]

"Polar" form of simple drag polar:

![][05062]

Linearized form of simple drag polar:

![][05064]

### Complicating Factors

#### Airflow Separation Effects {-}

![][05065]

Drag Polar Equation Accounting for Flow Separation:

\[C_D = C_{D_{\mathrm{min}}} + \frac{\left(C_L - C_{L_{\mathrm{min}}}\right)^2}{\pi \mathrm{AR} e} +k_2\left(C_L - C_{L_{\mathrm{break}}}\right)\]

* Delete last term if \(C_L < C_{L_{\mathrm{break}}} \)
* Determine \(k_2\) from flight test

#### Reynolds Number Effects {-}

(refs 5.4, 5.11)

* Calculate length \(\mathrm{Re}_L\) and friction coefficient (\(c_f\)) for each surface as

\[\mathrm{Re}_L = \frac{\rho Vl}{\mu} = 7.101 \times10^6 \left[\frac{\delta}{\theta^2} \right]\left[\frac{T_K + 110}{398}\right] l \]

\(T_K = \text{Kelvin} \)

\(l = \text{total length, ft}\)

\[c_f = \left[\frac{1.328}{\sqrt{\mathrm{Re}_L}}\right] \left[1 + 0.1305 M^2 \right]^{-0.12} \text{ laminar}\]
or
\[c_f = \left[\frac{0.074}{\left(\mathrm{Re}_L\right)^2} - \frac{1700}{\mathrm{Re}_L}  \right] \text{ transition}\]
or
\[c_f = 0.455\left[\log \mathrm{Re}_L\right]^{-258} \left[1 + 0.144 M^2\right]^{-0.65} \text{ turbulent}\]

   
* In general, \(c_f\) decreases as \(\mathrm{Rn}\) increases (unless transitioning from laminar to turbulent flow)
* Friction drag \(= c_f q S_{\mathrm{wet}}\) for each component (\(S_{\mathrm{wet}} = \text{wetted area}\))
* Correct from test day to standard day aircraft drag coefficient by summing differences of each component's drag change

\[\Delta C_D = \frac{\sum\left(c_{f_s} - c_{f_t} \right) S_{\mathrm{wet}}}{S} \]

#### Wing Camber or Incidence Angle Effects {-}

Note slight increase in drag as lift decreases towards zero

![][05069]

Linearized drag polar for aircraft with wing camber and/or incidence

![][05070]

Revised drag polar equation accounting for wing camber or incidence

\[C_D = C_{D_{\mathrm{min}}} + \frac{\left(C_L - C_{L_{\mathrm{min}}} \right)^2}{\pi \mathrm{AR} e} \]

* Generally not necessary since most flight occurs above \(C_{L_{\mathrm{min}}}\)

#### Mach Number Effects {-}

* Aircraft with low parasitic drag coefficients and high fineness ratios pay a relatively small "wave drag" penalty.

![][05072]

* With external stores, same aircraft pays larger Mach penalty

![][05073]

#### Propeller Slipstream Effects {-}

* a.k.a "scrubbing" drag
* Propwash increases flow speed over surface within slipstream
* More drag is created by higher \(q\) and vorticity.
* Function of prop speed and power absorbed (\(C_p\)) or thrust (\(C_T\))
* Problem should be addressed in airframe or propeller models

#### Trim Drag Effects {-}

(ref 5.4)

   
\(e = \text{wing Oswald efficiency factor} \)

\(e_t = \text{tail Oswald efficiency factor} \)

\(b = \text{span} \)

\(b_t = \text{tail span} \)

\(x = \text{wing ac-to-cg distance} \)

\(l = \text{wing ac to tail ac distance} \)

\(S = \text{Area} \)

![][05074]

\[C_{D_{\mathrm{trim}}} = \frac{W^2}{\pi q^2 Sb^2e} \left[\frac{2}{lW}\left[x_0 - x_1\right] + \frac{1}{l^2} \left[1 + \frac{S}{S_t} \frac{e}{e_t} \left(\frac{b}{b_t}\right)^2\right] \left[x_0^2 - x_1^2\right] \right]\]

Trim drag change relative to total induced drag:

\[\frac{\Delta C_{D_{\mathrm{trim}}}}{\Delta C_{D_i}} = \frac{x}{l} \left[\frac{x}{l} \left(\frac{b}{b_t}\right)^2 \frac{e}{e_t} - 2 \right] \]

Plot of above equation

![][05077]

### Drag Polar Analysis

\[D = \bar{q}SC_D = \bar{q}S \left[C_{D_0} + \frac{C_L^2}{\pi \mathrm{AR} e} \right] = \frac{1}{2}\rho_0 V_e^2 S\left[C_{D_0} + \frac{W^2}{\pi \mathrm{AR} e \left(\frac{1}{2} \rho_0 V_e^2 S \right)^2} \right]\]

* For a given configuration (\(C_{D_0} \text{, } S \text{, } \mathrm{AR} \text{, } e\))

\[D = k_1 V_e^2 + k_2 \frac{W^2}{V_e^2} \]

first term = parasitic drag, second term = induced drag

* For any given weight, \(D = f(\text{equivalent airspeed})\) only

![][05080]

* Minimum total drag occurs when \(D_{\mathrm{induced}} = D_{\mathrm{parasitic}}\)
    * same as speed where \(C_{D_i} = C_{D_0}\)
    * occurs at max \(C_L/C_D\) ratio (same as max \(L/D\) ratio)
* Minimum drag/velocity occurs at min slope of Drag vs V curve
    * same as speed where \(3C_{D_i} = C_{D_0}\)
    * occurs at max \(C_L^{1/2}/C_D\) ratio

Power required = drag x true airspeed

\[P_{\mathrm{req}} = DV_T = D\frac{V_e}{\sqrt{\sigma}} = k_1\frac{V_e^3}{\sqrt{\sigma}} + k_2\frac{W^2}{\sqrt{\sigma}V_e} \]

   

Minimum total \(P_{\mathrm{req'd}}\) occurs when \(P_{\mathrm{induced}} = P_{\mathrm{parasitic}}\)

*  same as speed where \(C_{D_i} = 3C_{D_0} \)
*  occurs at max \(C_L^{3/2}/C_D\) ratio

Minimum power/velocity occurs at min slope of \(P_{\mathrm{req'd}}\) vs \(V\) curve

*  same as speed where \(C_{D_i} = C_{D_0}\)
*  occurs at max \(C_L /C_D\) ratio

**Optimum Aerodynamic Flight Conditions**

*Gliders/ Engine-Out Flight*

* Max range (minimum glide slope) occurs at max \(C_L/C_D\)
    * same as condition where \(C_{D_0} = C_{D_i}\) *if* drag polar is parabolic
* Min sink rate (minimum power req'd) occurs at max \(C_L^{3/2} /C_D\) ratio same as condition where \(3C_{D_0} = C_{D_i}\) *if* drag polar is parabolic

*Reciprocating Engine Aircraft (assuming constant \(\mathrm{BSFC}\) & prop \(\eta\))*

* Max range (minimum power/velocity) occurs at max \(C_L/C_D\) ratio
    * same as condition where \(C_{D_0} = C_{D_i}\) *if* drag polar is parabolic
* Max endurance (minimum power req'd) occurs at max \(C_L^{3/2} / C_D\)
    * same as condition where \(3C_{D_0} = C_{D_i}\) *if* drag polar is parabolic

*Turbine Jet Engine Aircraft (assuming constant \(\mathrm{TSFC}\))*

* Max range at constant altitude (minimum drag/velocity)
    * occurs at max \(C_L^{1/2} / C_D\) ratio
    * same as condition where \(C_{D_0} = 3C_{D_i}\) *if* drag polar is parabolic
* Best cruise/climb range (maximum \( \left[M \times L/D \right]\) ratio)
    * occurs at max \(C_L/C_D^{3/2}\) ratio
    * same as condition where \(C_{D_0} = 2C_{D_i}\) *if* drag polar is parabolic
* Best endurance (minimum drag)
    * occurs at max \(C_L/C_D\) ratio
    * same as condition where \(C_{D_0} = C_{D_i}\) *if* drag polar is parabolic

![][05082]

To calculate optimum speed \(V_2\) for configuration~2~ & weight~2~ based on optimum speed \(V_1\) at configuration~1~ & weight~1~

## References

|||
|-|---------------|
|5.1 |Roberts, Sean "Aerodynamics for Flight Testers" *Chapter 3, Subsonic Aerodynamics*, National Test Pilot School, Mojave, CA, 1999|
|5.2 |Lawless, Alan R., et al, "Aerodynamics for Flight Testers" *Chapter 4, Drag Polars*, National Test Pilot School, Mojave ,CA, 1999|
|5.3 |Hurt Hugh H., "Aerodynamics for Naval Aviators", University of Southern California, Los Angeles, CA, 1959.|
|5.4 |McCormick, Barnes W., "Aerodynamics, Aeronautics, and Flight Mechanics", Wilet &Sons, 1979|
|5.5 |Stinton, Darryl, "The Design of the Aeroplane", BSP Professional Books, Oxford, 1983|
|5.6 |Roskam, Jan Dr., "Airplane Design, Part VI", Roskam Aviation and Engineering Corp. 1990|
|5.7 |Anon, "Equations, Tables, and Charts for Compressible Flow" NACA Report 1135, 1953|
|5.8 |Lewis, Gregory, "Aerodynamics for Flight Testers" *Chapter 6, Supersonic Aerodynamics*, National Test Pilot School, Mojave CA, 1999|
|5.9 |White, Frank M. "Fluid Mechanics" pg 29, McGraw-Hill, 1979, ISBN 0-07-069667-5.|
|5.10| Anderson, John D. Jr, "Introduction to Flight" pg 142, Mcraw-Hill, 1989, ISBN 0-07-001641-0.|
|5.11| Twaites, Bryan, Editor, "Incompressible Aerodynamics: An Account of the steady flow of incompressible Fluid Past Aerofoils, Wings, and Other Bodies," Dover Publications, 1960.|

  [05001]: media/05/image1.svg {width="5.800in" height="3.481in"}
  [05005]: media/05/image5.svg {width=3.460in" height="2.750in"}
  [05006]: media/05/image6.svg {width="4.4in" height="1.25in"}
  [05007]: media/05/image7.svg {width="5.854in" height="3.863in"}
  [05009]: media/05/image9.svg {width="8.8in" height="2.250in"}
  [05011]: media/05/image11.svg {width="5.333in" height="4.625in"}
  [05012]: media/05/image12.svg {width="7.1in" height="3.440in"}
  [05013]: media/05/image13.svg {width="4.231in" height="2.375in"}
  [05014]: media/05/image14.svg {width="3.875in" height="2.249in"}
  [05015]: media/05/image15.svg {width="8.8in" height="2.882in"}
  [05016]: media/05/image16.svg {width="5.715in" height="5.024in"}
  [05018]: media/05/image18.svg {width="7.0in" height="3.438in"}
  [05019]: media/05/image19.svg {width="5.3in" height="5.3in"}
  [05020]: media/05/image20.svg {width="6.385in" height="1.393in"}
  [05021]: media/05/image21.svg {width="5.4in" height="5.290in"}
  [05022]: media/05/image22.svg {width="6.294in" height="2.349in"}
  [05023]: media/05/image23.svg {width="4.625in" height="3.738in"}
  [05024]: media/05/image24.svg {width="8.8in" height="3.5in"}
  [05025]: media/05/image25.svg {width="7.825in" height="3.250in"}
  [05026]: media/05/image33.svg {width="7.811in" height="3.250in"}
  [05031]: media/05/image38.svg {width="4.033in" height="1.625in"}
  [05033]: media/05/image43.svg {width="6.699in" height="3.906in"}
  [05036]: media/05/image46.svg {width="8.8in" height="2.875in"}
  [05037]: media/05/image47.svg {width="5.5in" height="2.644in"}
  [05038]: media/05/image48.svg {width="5.192in" height="2.750in"}
  [05039]: media/05/image49.svg {width="8.8in" height="6.0in"}
  [05040]: media/05/image50.svg {width="5.563in" height="2.500in"}
  [05041]: media/05/image51.svg {width="8.8in" height="4.250in"}
  [05048]: media/05/image59.svg {width="7.124in" height="4.500in"}
  [05051]: media/05/image62.svg {width="8.8in" height="7.0in"}
  [05052]: media/05/image63.svg {width="5.163in" height="4.068in"}
  [05053]: media/05/image64.svg {width="7.2in" height="5.311in"}
  [05055]: media/05/image66.svg {width="8.8in" height="7.5in"}
  [05056]: media/05/image67.svg {width="5.075in" height="4.250in"}
  [05058]: media/05/image69.svg {width="3.531in" height="1.0in"}
  [05061]: media/05/image72.svg {width="4.596in" height="1.444in"}
  [05062]: media/05/image73.svg {width="4.203in" height="3.513in"}
  [05064]: media/05/image75.svg {width="4.272in" height="3.725in"}
  [05065]: media/05/image76.svg {width="4.750in" height="3.460in"}
  [05069]: media/05/image80.svg {width="5.271in" height="6.875in"}
  [05070]: media/05/image81.svg {width="6.325in" height="3.274in"}
  [05072]: media/05/image83.svg {width="5.851in" height="6.075in"}
  [05073]: media/05/image84.svg {width="6.528in" height="6.229in"}
  [05074]: media/05/image86.svg {width="7.750in" height="2.844in"}
  [05077]: media/05/image89.svg {width="6.5in" height="7.507in"}
  [05080]: media/05/image95.svg {width="6.7143in" height="3.875in"}
  [05082]: media/05/image97.svg {width="5.750in" height="4.174in"}

<!--chapter:end:05-aero.Rmd-->

# Axis Systems and Transformations

## Earth Axis Systems
(Reference 6.6.1)

Both fixed-earth and moving-earth axis systems keep constant *orientation* with respect to the Earth. The \(z\)-axis point towards the center of the Earth.
*The origin of a fixed-earth system does not move relative to the Earth (such as a ground radar site).
*The origin of a moving-earth system does not move relative to its host (such as an aircraft inertial reference unit).

![][06001]

## Aircraft Axis Systems
(Reference 6.6.2)

### Body Axis System
The *body axis* system, denoted by a subscript \(b\), originates at the aircraft center of gravity. The positive direction of the \(x_b\)-axis is towards the front. The positive direction of the \(y_b\)-axis is towards the right wing tip, and the positive direction of the \(z_b\)-axis is towards the bottom of the aircraft. 

![][06002]

### Stability Axis System
The *stability axis* system is similar to the body axis system except that it is rotated about the \(y\)-axis through the angle of attack \(\alpha\).

![][06003]

Forces, velocities or accelerations along the stability axes are related to the body axes as follows.
\[
\begin{align}
x_b =& x_s \cos \alpha − z_s \sin \alpha \\
y_b =& y_s \\
z_b =& z_s \cos \alpha + x_s \sin \alpha
\end{align}
\]

For cases where the z axis is defined positive upward (typical for normal-axis accelerometers), we have the following.
\[
\begin{align}
x_b =& x_s \cos \alpha + z_s \sin \alpha \\
z_b =& z_x \cos \alpha - x_s \sin \alpha
\end{align}
\]

### Wind Axis System
The *wind axis* system is similar to the stability axis system except it is rotated about the \(z_s\)-axis through the angle of sideslip, \(\beta\).

The term "wind" refers to the fact that the freestream relative wind approaches the aircraft directly along the \(x_w\)-axis. This dictates that the true airspeed also lies along the same axis.

![][06004]

Forces, velocities, or accelerations along the wind axes are related to the stability axes as follows
\[
\begin{align}
x_s =&x_w \cos \beta - y_w \sin \beta \\
y_s =& y_w \cos \beta + x_w \sin \beta \\
z_s =& z_w
\end{align}
\]

The geometric relations between body, stability and wind axis velocities are defined and illustrated here. In general,
\[ \sin \alpha = \frac{w}{V_T \cos \beta}\] and
\[\sin \beta = \frac{V}{V_T}.\]
If \(\beta\) is small, then \(\sin \alpha = w/V_T\) and \(\beta = V / V_T\). If \(alpha\) is small, then \(\alpha = w/V_T\).

![][06005]

Most aircraft sideslip vanes do not measure \(\beta\) directly. They measure the flanking angle, which is the projection of the relative wind into the aircraft's \(x-y\) plane. The difference between these two angles increases with angle of attack.  Ignoring upwash, boom bending, and body axis rate corrections, calculate true sideslip as a function of vane \(\alpha\) and \(\beta\) as follows:
\[\beta_{\mathrm{true}} = \tan^{-1} (an\beta_{\mathrm{vane}})).\]

### Wind-Body Axis Transformations
(Reference 6.6.1)

Combining the two previous transformations, we see that forces, velocities, or accelerations along the wind axes are related to the body axes as follows.
\[
\begin{bmatrix}
x_b \\
y_b \\
z_b
\end{bmatrix} = 
\begin{bmatrix}
\cos \alpha & 0 & -\sin \alpha \\
0 & 1 & 0 \\
\sin \alpha & 0 & \cos \alpha
\end{bmatrix}
\begin{bmatrix}
\cos \beta & -\sin \beta & 0 \\
\sin \beta & \cos \beta & 0 \\
0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
x_w \\
y_w \\
z_w 
\end{bmatrix}
\]

After expansion,
\[
\begin{align}
x_b =& \cos \alpha (x_w \cos \beta - y_w \sin \beta) - z_w \sin \alpha \\
y_b =& x_w \sin \beta + y_w \cos \beta \\
z_b =& \sin \alpha (x_w \cos \beta - y_w \cos \beta) + z_w \cos \alpha 
\end{align}
\] 

The inverse transform, converting from the body to the wind axis system is as follows.
\[
\begin{bmatrix}
x_w \\
y_w \\
z_w
\end{bmatrix} = 
\begin{bmatrix}
\cos \beta & \sin \beta & 0 \\
-\sin \beta & \cos \beta & 0 \\
0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
\cos \alpha & 0 & \sin \alpha \\
0 & 1 & 0 \\
-\sin \alpha & 0 & \cos \alpha
\end{bmatrix}
\begin{bmatrix}
x_b \\
y_b \\
z_b 
\end{bmatrix}
\]

After expansion,
\[
\begin{align}
x_w =& \cos \beta (x_b \cos \alpha + z_b \sin \alpha) + y_b \sin \beta \\
y_w =& -\sin \beta(x_b \cos \alpha + z_b \sin \alpha) + y_b \cos \beta \\
z_w =& -x_b \sin \alpha + z_b \cos \alpha 
\end{align}
\] 

Note that these equations apply to the sign convention with z+ down. If sign convention (and instrumentation calibration) use z+ upward, then the above equations become:
\[
\begin{align}
x_w =& \cos \beta (x_b \cos \alpha - z_b \sin \alpha) + y_b \sin \beta \\
y_w =& -\sin \beta(x_b \cos \alpha + z_b \sin \alpha) + y_b \cos \beta \\
z_w =& x_b \sin \alpha + z_b \cos \alpha 
\end{align}
\]

### Principle Axes
The *principle axes* are those about which the products of inertia are zero. They can be equated to the axis of "dumbells" which represent concentrated mass elements.  Neglecting aerodynamic and gyroscopic effects, an aircraft rotating about one of its principle axes will not tend to cross-couple into motion about any other axis.

![][06010]

## Euler Angles
(Reference 6.6.1)

*Euler angles* are expressed as yaw, pitch, and roll.  The sequence--first yaw, then pitch, then roll--must be maintained to arrive at the proper orientation angles.  The Euler angles are defined as follows:

Yaw Angle
: \(\psi\) - The angle between the projection of the vehicle \(x_b\)-axis onto the horizontal reference plane and some initial reference position of the Earth \(x\)-axis.  Yaw angle equals the vehicle heading only if the initial reference is North.

Pitch Angle
: \(\theta\) - The angle in the vertical plane between \(x_b\) and the horizon.

Bank Angle
: \(\phi\) - The angle measured in the \(y-z\) plane of the body-axis system between the \(y\)-axis and the horizontal reference plane.  Also known as the roll angle, it is a measure of the rotation about the \(x\)-axis.

![][06011]

## Flight Path Angles

(Reference 6.6.3)

Just as the Euler angles define the attitude of the aircraft with respect to the Earth, three flight path angles describe the vehicle's *cg* trajectory relative to the Earth, not the air mass.

Flight path heading angle
: \(\sigma\) - This angle, also known as ground track heading, is the horizontal angle between some reference direction (usually North) and the projection of the velocity vector on the horizontal plane.  Positive rotation is clockwise, from North to East.

Flight path elevation angle
: \(\gamma\) - The vertical angle between the flightpath and the horizontal plane.  Positive angle is above the horizon. During a descent, this is commonly referred to as *glide path angle*.

Flight path bank angle
: \(\mu\) - The angle between the plane formed by the velocity vector and the lift vector and the vertical plane containing the velocity vector. Positive angle is clockwise about the velocity vector, looking forward.

The first two angles above are easily measured using ground-based radar, onboard GPS, or inertial reference systems.  If only \(\alpha, \beta\), andthe Euler angles are available, then we can calculate the flightpath angles, assuming zero wind, as follows.
\[
\begin{align}
\gamma =& \arcsin [(\sin\theta  \cos\alpha - \cos\theta  \cos\phi  \sin\alpha) \cos\beta - \cos\theta  \sin\phi  \sin\beta] \\
\sigma =& \psi + \arcsin \left[\frac{\cos\phi \sin\beta - \sin\phi \sin\alpha \cos\beta}{\cos\gamma} \right]\\
\mu =& \arcsin\left[ \frac{\cos\theta \sin\phi \cos\beta + 
(\sin\theta \cos\alpha -\cos\theta \cos\phi \sin\alpha)}{\cos\gamma}  \right]
\end{align}
\]

Technically, the above equations describe the *velocity vector*, that is, the angles relative to the air mass. If the air mass is moving relative to the Earth, as is usually the case, the above equations *do not* describe the true flight path.

Ignorance of the difference between flight path and velocity vector angles can cause considerable confusion when analyzing data from different sources.

## Axis System Transformations

(Reference 6.6.2)

Transformation matrix for converting forces, velocities or accelerations from *earth axis system*, also known as inertial, \([X, Y, Z]\), to body coordinates \( [x, y, z] \).
\[
\begin{bmatrix}
x_b \\
y_b \\
z_b
\end{bmatrix} = 
\begin{bmatrix}
1 & 0 & 0 \\
0 & \cos\phi & \sin\phi \\
0 & -\sin\phi & \cos\phi
\end{bmatrix}
\begin{bmatrix}
\cos\theta & 0 & -\sin\theta \\
0 & 1 & 0 \\
\sin\theta & 0 & \cos\theta
\end{bmatrix}
\begin{bmatrix}
\cos\psi & \sin\psi & 0 \\
-\sin\psi & \cos\psi & 0 \\
0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
X \\
Y \\
Z 
\end{bmatrix}
\]

This yields
\[
\begin{bmatrix}
x_b \\
y_b \\
z_b
\end{bmatrix} = 
\begin{bmatrix}
\cos\theta \cos\psi & \cos\theta \sin\psi & -\sin\theta \\
-\cos\theta \sin\psi + \sin\phi \sin\theta \cos\psi & \cos\phi \cos\psi + \sin\phi \sin\theta \sin\psi  & \sin\phi \cos\theta \\
\sin\phi \sin\psi + \cos\phi \sin\theta \cos\psi & -\sin\phi \cos\psi + \cos\phi \sin\theta \sin\psi & \cos\phi \cos\theta
\end{bmatrix}
\begin{bmatrix}
X \\
Y \\
Z 
\end{bmatrix}
\]

The inverse of the above transform matrix converts from the body axis to the inertial axis coordinate system.
\[
\begin{bmatrix}
X \\
Y \\
Z
\end{bmatrix} = 
\begin{bmatrix}
\cos\theta \cos\psi & - \cos\phi \sin\psi + \sin\phi \sin\theta \cos\psi & \sin\phi \sin\psi + \cos\phi \sin\theta \cos\psi \\
\cos\theta \sin\psi & \cos\phi \cos\psi + \sin\phi \sin\theta \sin\psi & -\sin\phi \cos\psi + \cos\phi \sin\theta \sin\psi  \\
-\sin\theta & \sin\phi \cos\theta & \cos\phi \cos\theta
\end{bmatrix}
\begin{bmatrix}
x_b \\
y_b \\
z_b 
\end{bmatrix}
\]

### Acceleration Transformations

First, we convert body-axis angular rates and linear accelerations into total accelerations along the body axes.
\[
\begin{align}
a_x =& \dot{u} + qw - rv \\
a_y =& \dot{v} + ru -pw \\
a_z =& \dot{w} + pv - qu
\end{align}
\]

We also convert the location and rates of mass elements, \(m_1\), into specific angular momentum.
\[
\begin{align}
\frac{H}{m_1} =& \, \bar{r_1} \times [\bar{\omega} \times \bar{r_1}] \\
\left[ \frac{H}{m_1} \right]\hat{i} =& \, p(y^2 + z^2) - q(xy) - r(xz)\\
\left[ \frac{H}{m_1} \right]\hat{j} =& \, q(x^2+z^2) - r(yz) - p(xy)\\
\left[ \frac{H}{m_1} \right] \hat{k} =& \, r(x^2+y^2) - p(xz) - q(yz)
\end{align}
\]

### Transformations between body axis rates and Euler angle rates
\[
\begin{align}
p =& \, \dot{\phi} -\dot{\psi} \sin\theta\\
q =& \, \dot{\theta} \cos\phi + \dot{\psi} \cos{\theta} \sin{\phi}\\
r =& \, \dot{\psi} \cos\theta \cos\phi - \dot{\theta} \sin\phi\\
\dot{\phi} =& \, p + \tan\theta(q \sin\phi + r\cos\phi) \\
\dot{\theta}=& \, q \cos\phi - r\sin\phi\\
\dot{\psi} =& \frac{q \sin\phi + r \cos\phi}{\cos\theta} \, 
\end{align}
\]

### Transformations from aerodynamic angles to aircraft stability axis angular rates
Subscripts \(b, s,\) and \(w\) denote the body, stability and wind axis systems.
\[
\begin{align}
p_s =& p_b \cos\alpha + r_b \sin\alpha\, \\
q_s =& \, q_b\\
r_s =& \, r_b \cos\alpha - p_b \sin\alpha
\end{align}
\]

### Transformations from aerodynamic angles to the aircraft wind axis angular rates
Subscripts \(b, s,\) and \(w\) denote the body, stability and wind axis systems.
\[
\begin{align}
p_w =& p_s \cos\beta + q_s \sin\beta\, \\
q_w =& \, q_s \cos\beta - p_s\sin\beta\\
r_w =& \, r_s
\end{align}
\]

### Transformations from Euler angles to aircraft body axis angular rates
(Reference 6.6.3)
\[
\begin{align}
\dot{p_b} =& \, \ddot{\phi} - \ddot{\psi}\sin\theta - \dot{\psi} \, \dot{\theta} \cos\theta  \\
\dot{q_b} =& \, \ddot{\theta} \cos\phi - \dot{\theta} \, \dot{\phi} \sin{\phi} + \ddot{\phi} \cos\theta \sin\phi - \dot{\psi} \, \dot{\theta} \sin\theta \sin\phi + \dot{\psi} \, \dot{phi} \cos\theta \cos\phi \\
\dot{r_b} =& \, \ddot{\psi} \cos\theta \cos\phi - \dot{\psi} \, \dot{\theta} \sin\theta \cos\phi - \dot{\psi} \, \dot{\theta} \cos\theta \sin\phi - \ddot{\theta} \sin\phi - \dot{\theta} \, \dot{\phi} \cos\phi
\end{align}
\]

### Transformations from aerodynamic angles and body axis angular rates to aircraft stability axis angular rates
\[
\begin{align}
\dot{p_s} =& \, \dot{p_b} \cos\alpha + \dot{\alpha} \, p_b \sin\alpha + \dot{r_b}\sin\alpha + \dot{\alpha} \, r_b \cos\alpha  \\
\dot{q_s} =& \, \dot{q_b} \\
\dot{r_s} =& \, \dot{r_b} \cos\alpha - \dot{\alpha} \, r_b \sin\alpha - \dot{p_b}\sin\alpha - \dot{\alpha} \, p_b \cos\alpha
\end{align}
\]

### Transformations from aerodynamic angles and aircraft stability axis to aircraft wind axis angular rates
\[
\begin{align}
\dot{p_w} =& \, \dot{p_b} \cos\beta + \dot{\beta} \, p_s \sin\beta + \dot{q_s}\sin\beta + \dot{\beta} \, q_s \cos\beta  \\
\dot{q_w} =& \,  \dot{q_s} \cos\beta - \dot{\beta} \, q_s \sin\beta - \dot{p_s} \sin\beta - \dot{\beta} \, p_s \cos\beta\\
\dot{r_w} =& \, \dot{r_s}
\end{align}
\]

## References

|||
|-|---------------|
|6.6.1| Lawless, Alan R., *Math and Physics for Flight Testers* "Chapter 7, Axis Systems and Transformations", National Test Pilot School, Mojave CA, 1998.|
|6.6.2| Anon., *Aircraft Flying Qualities, Chapter 4, Equations of Motion*, USAF TestPilot School notes, AFFTC Edwards AFB CA, March 1991.|
|6.6.3| Kalviste, Juri, *Flight Dynamics Reference Handbook*, Northrop Corp. Aircraft Division, April 1988.|


  [06001]: media/06/image1.svg {width="4.709027777777778in" height="3.839583333333333in"}
  [06002]: media/06/image2.svg {width="3.65625in" height="3.03125in"}
  [06003]: media/06/image4.svg {width="4.5in" height="1.625in"}
  [06004]: media/06/image5.svg {width="1.6993055555555556in" height="2.0701388888888888in"}
  [06005]: media/06/image6.svg {width="2.4590277777777776in" height="2.21875in"}
  [06006]: media/06/image7.svg {width="1.8416666666666666in" height="0.44583333333333336in"}
  [06007]: media/06/image8.svg {width="2.588888888888889in" height="0.8777777777777778in"}
  [06008]: media/06/image9.svg {width="3.277083333333333in" height="0.6652777777777777in"}
  [06009]: media/06/image10.svg {width="3.3229166666666665in" height="0.6895833333333333in"}
  [06010]: media/06/image11.svg {width="4.5in" height="2.375in"}
  [06011]: media/06/image12.svg {width="4.0in" height="4.125in"}
  [06012]: media/06/image13.svg {width="4.342361111111111in" height="0.4583333333333333in"}
  [06013]: media/06/image14.svg {width="3.0in" height="0.75in"}
  [06014]: media/06/image15.svg {width="4.5125in" height="0.29791666666666666in"}
  [06015]: media/06/image16.svg {width="4.860416666666667in" height="0.6236111111111111in"}
  [06016]: media/06/image17.svg {width="5.6194444444444445in" height="0.6284722222222222in"}
  [06017]: media/06/image18.svg {width="5.06875in" height="0.6152777777777778in"}
  [06018]: media/06/image19.svg {width="1.7083333333333333in" height="1.2708333333333333in"}
  [06019]: media/06/image20.svg {width="2.3993055555555554in" height="0.7125in"}
  [06020]: media/06/image21.svg {width="2.5625in" height="0.7527777777777778in"}
  [06021]: media/06/image22.svg {width="1.0541666666666667in" height="0.7215277777777778in"}
  [06022]: media/06/image23.svg {width="2.286111111111111in" height="1.4118055555555555in"}
  [06023]: media/06/image24.svg {width="1.6590277777777778in" height="0.75in"}
  [06024]: media/06/image25.svg {width="2.8006944444444444in" height="0.25in"}
  [06025]: media/06/image26.svg {width="1.5923611111111111in" height="0.75in"}
  [06026]: media/06/image27.svg {width="4.592361111111111in" height="0.2638888888888889in"}
  [06027]: media/06/image28.svg {width="4.534027777777778in" height="0.8194444444444444in"}
  [06028]: media/06/image29.svg {width="3.092361111111111in" height="0.75in"}
  [06029]: media/06/image30.svg {width="3.267361111111111in" height="0.7916666666666666in"}

<!--chapter:end:06-axis-systems.Rmd-->

# Mass Properties

## Abbreviations and Terminology Abbreviations

| Symbol            | Definition                                                                                    | Unit         |
|-------------------|-----------------------------------------------------------------------------------------------|--------------|
| \(\Delta I_{\mathrm{am}}\) | equivalent moment of inertia contribution of the air                                          | [slug-ft^2^] |
| \(\Delta I_{\mathrm{te}}\) | correction for test equipment mass                                                            | [slug-ft^2^] |
| \(\delta\)        | tilt of spring assembly (measured positive if tilted nose-down relative to local horizontal). |              |
| \(\varepsilon\)      | inclination of principle axis (positive if tilted down).                                      |              |
| \(\omega_d\)      | damped frequency of oscillation                                                               | [rad/sec]    |
| \(\omega_n\)      | natural frequency of oscillation                                                              | [rad/sec]    |
| \(\phi\)          | angle between aircraft y-axis and line connecting aircraft \(\mathrm{cg}\) with spring attach points.  |              |
| \(a\)             | perpendicular distance from the spring line of action to the oscillation axis                 | [ft]         |
| \(\mathrm{cg}\)            | center of gravity                                                                             |              |
| \(f\)             | measured frequency of oscillation                                                             | [cycles/sec] |
| \(g\)             | Earth's acceleration due to gravity                                                           |              |
| \(h\)             | vertical component of the perpendicular distance from the \(\mathrm{cg}\) to the oscillation axis.     |              |
| \(I_{\mathrm{cg}}\)        | moment of inertia any axis passing through the \(\mathrm{cg}\)                                         |              |
| \(I_{x_b}\)        | moment of inertia about aircraft body x-axis                                                  |              |
| \(I_{xz}\)        | product of inertia in aircraft body x-z plane                                                 |              |
| \(I_{y_b}\)        | moment of inertia about aircraft body y-axis                                                  |              |
| \(I_{z_b}\)        | moment of inertia about aircraft body z-axis                                                  |              |
| \(I_o\)           | moment of inertia about oscillation axis                                                      |              |
| \(K_{\mathrm{tot}}\)       | total radius of gyration (includes effect of offset pivot)                                    |              |
| \(K_o\)           | component of spring stiffness perpendicular to vehicle motion                                 |              |
| \(k\)             | spring constant                                                                               | [lb/ft]      |
| \(L\)             | rolling moment                                                                                |              |
| \(l_{\mathrm{eff}}\)       | effective pendulum length                                                                     |              |
| \(m\)             | mass                                                                                          |              |
| \(\mathrm{MAC}\)           | mean aerodynamic chord                                                                        |              |
| \(\mathrm{METO}\)          | maximum power (except for takeoff)                                                            |              |
| \(N\)             | yawing moment                                                                                 |              |
| \(p\)             | roll rate                                                                                     |              |
| \(r\)             | yaw rate                                                                                      |              |
| \(T\)             | period of oscillation                                                                         |              |

### Terminology {-}

| Term                      | Definition                                                                                                                                                                                                  |
|---------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| allowable \(\mathrm{cg}\) range    | Documented on Type Certificate Data Sheet. May be different for takeoff vs landing. Forward limit usually determined by control power limitations, aft limit usually determined by stability requirements. |
| datum                     | The manufacturer defined reference plane used for distance calculations.                                                                                                                                    |
| empty weight              | Basic aircraft weight with only equipment on board. (without crew, passengers, or fuel). This weight may or may not include oil weight, depending on civil certification date.                              |
| empty weight \(\mathrm{cg}\) range | The allowable \(\mathrm{cg}\) locations for an empty aircraft. This is defined by the manufacturer to help assure that a normally loaded aircraft will have an acceptable total \(\mathrm{cg}\) location.                     |
| lateral                   | Along the aircraft y-axis.                                                                                                                                                                                  |
| longitudinal              | Along the aircraft x-axis                                                                                                                                                                                   |
| maximum weight            | Maximum allowable weight. Usually implies takeoff weight, but may apply to landing or in-flight weight. conditions after aerial refueling.                                                                  |
| minimum fuel              | A calculated value that represents the minimum amount of fuel any airplane should have while retaining appropriate flight reserves. Calculated as: min fuel [lbs] = \(0.5 \, \mathrm{METO}\) [hp]                    |
| moment arm                | Distance between datum plane and \(\mathrm{cg}\) of object                                                                                                                                                           |
| moment                    | Product of moment arm and force (weight)                                                                                                                                                                    |
| tare                      | The bias in weight scales due to test equipment weight or due to scale calibration errors                                                                                                                   |
| useful load               | Maximum takeoff weight minus empty weight                                                                                                                                                                   |
| weighing point            | Location where aircraft is supported during the \(\mathrm{cg}\) measurement.                                                                                                                                         |

## Longitudinal & Lateral Center of Gravity Measurement

### Test set-up procedures for empty weight \(\mathrm{cg}\) determination {-}

1. Clean aircraft including any mud or water seepage.
1. Ensure all aircraft equipment in place.
1. Drain to only residual oil (for older aircraft that include only residual oil as part of empty weight calculations) or fill to full oil (newer aircraft include full oil for calculations).
1. Drain to residual fuel only.
1. Rig all equipment in a closed building to eliminate wind effects.
1. Calibrate scales.
1. Record tare (bias in scale readings, may be due to wheel chocks, jack stands, or other test equipment)
1. Place aircraft on scales and level according to manufacturer's specifications.
1. Measure longitudinal and lateral distances between scale centers and datum. NOTE: distances behind datum are positive, distances ahead of datum are negative.
1. Record each scale weight

### Calculating longitudinal center of gravity {-}

11. Subtract the tare from each scale reading to get the correct weight.
1. Multiply each scale's corrected weight by its distance to the datum. This product is the moment for each scale.
1. Sum the moments in step 12.
1. Sum the corrected weights.
1. Divide the total moment by the total weight,step 13/step 14, to obtain the distance from the datum to the \(\mathrm{cg}\). Some aircraft use this distance for all \(\mathrm{cg}\) references (typically presented in inches).
1. Other aircraft refer \(\mathrm{cg}\) location to a percent of the mean aerodynamic chord, \(\mathrm{MAC}\). In this case, subtract the distance between the datum and the leading edge of the \(\mathrm{MAC}\) from the distance in step 15.
1. Divide the distance in step 16 by the length of the \(\mathrm{MAC}\). This number is the fraction of the \(\mathrm{cg}\) location along the \(\mathrm{MAC}\).
1. To present the above fraction in terms of % \(\mathrm{MAC}\), multiply by 100.

#### Example \(\mathrm{cg}\) calculations {-}

![Example \(\mathrm{cg}\) calculations][07001]

Scales read:

* \(320\) lbs @ Nose wheel
* \(816\) lbs @ Right main 
* \(810\) lbs @ Left main

##### Example Using Datum at Main Landing Gear {-}

| Item | Weight | \(\times\) | Arm | \(=\) | Moment |
|------|-------:|-----------:|----:|------:|-------:|
| Right Wheel | \(816\) lbs | \(\times\) | \(0\) in | \(=\) | \(0\) in-lb |
| Left  Wheel | \(810\) lbs | \(\times\) | \(0\) in | \(=\) | \(0\) in-lb |
| Nose  Wheel | \(320\) lbs | \(\times\) | \(-75\) in | \(=\) | \(-24\,000\) in-lb |
| **Total** | **\(1946\) lbs** |  | |  | **\(-24\,000\) in-lb** |

\[\frac{-24\,000 \text{ in-lb}}{1946 \text{ lbs}} = 12.33 \text{ in (Forward of Main Wheel Centerline)} \]

##### Example Using Datum at Prop Spinner {-}

| Item | Weight | \(\times\) | Arm | \(=\) | Moment |
|------|-------:|-----------:|----:|------:|-------:|
| Right Wheel | \(816\) lbs | \(\times\) | \(115\) in | \(=\) | \(93\,840\) in-lb |
| Left  Wheel | \(810\) lbs | \(\times\) | \(115\) in | \(=\) | \(93\,150\) in-lb |
| Nose  Wheel | \(320\) lbs | \(\times\) | \(40\) in | \(=\) | \(12\,800\) in-lb |
| **Total** | **\(1946\) lbs** |  | |  | **\(199\,790\) in-lb** |

\[\frac{199\,790 \text{ in-lb}}{1946 \text{ lbs}} = 102.67 \text{ in (Aft of Prop Spinner)} \]

##### Example Lateral \(\mathrm{cg}\) Calculation {-}

| Item | Weight | \(\times\) | Arm | \(=\) | Moment |
|------|-------:|-----------:|----:|------:|-------:|
| Right Wheel | \(816\) lbs | \(\times\) | \(+70 \) in | \(=\) | \(57\,120\) in-lb |
| Left  Wheel | \(810\) lbs | \(\times\) | \(-70\) in | \(=\) | \(-56\,700\) in-lb |
| Nose  Wheel | \(320\) lbs | \(\times\) | \(0\) in | \(=\) | \(0\) in-lb |
| **Total** | **\(1946\) lbs** |  | |  | **\(420\) in-lb** |

\[\frac{420 \text{ in-lb}}{1946 \text{ lbs}} = 0.216 \text{ in (Right of Centerline)} \]

### Correcting empty weight \(\mathrm{cg}\) for changes in fuel, passengers, equipment or stores. {-}

1. Note aircraft empty weight & empty weight \(\mathrm{cg}\). Multiply these values to obtain the empty weight moment.
1. Note the weight and moment arm for each item added to or subtracted from the aircraft (items subtracted are listed as negative weights).
1. Multiply each item's weight and arm to determine its moment.
1. Sum each item's moment in step 3 with the aircraft empty weight moment.
1. Sum each item's weight with the aircraft empty weight.
1. Calculate the new \(\mathrm{cg}\), step 4/step 5.

#### Example \(\mathrm{cg}\) corrections {-}

Given aircraft with empty weight = \(1075\) lbs and \(\mathrm{cg}\) @ \(84\) inches. Add pilot (\(170\) lbs @ \(85.5\)"), fuel ( \(75\) lbs @ \(94\)"), and oil (\(15\) lbs @ \(31.7\)").

| Item | Weight | \(\times\) | Arm | \(=\) | Moment |
|------|-------:|-----------:|-----:|------:|-------:|
| Airplane~(empty)~ | \(1075\) lbs  | \(\times\) | \(84.0\) in    | \(=\) | \(90\,300.0\) in-lb |
| Pilot             | \(170\) lbs   | \(\times\) | \(85.5\) in  | \(=\) | \(14\,535.0\) in-lb |
| Fuel              | \(75\) lbs    | \(\times\) | \(94.0\) in    | \(=\) | \(7050.0\) in-lb |
| Oil               | \(15\) lbs    | \(\times\) | \(31.7\) in  | \(=\) | \(475.5\) in-lb |
| **Total** | **\(1335\) lbs** |  | |  | **\(112\,360.5\) in-lb** |

\[\frac{112\,360.5 \text{ in-lb}}{1335 \text{ lbs}} = 84.16 \text{ in} \]

Given aircraft with empty weight = \(1220\) lbs and \(\mathrm{cg}\) @ 25 inches. Add radio (\(15\) lbs @ \(65\)"), and replace \(11\) lb generator with \(14\) lb generator at same \(21.5\)" location (in front of datum-located on firewall).

| Item | Weight | \(\times\) | Arm | \(=\) | Moment |
|------|-------:|-----------:|-----:|------:|-------:|
| Airplane~(empty)~     | \(1220\) lbs | \(\times\) | \(25.0\) in    | \(=\) | \(30\,500.0\) in-lb |
| Pilot                 | \(15\) lbs   | \(\times\) | \(65.0\) in  | \(=\) | \(975.0\) in-lb |
| Generator~(removed)~  | \(-11\) lbs  | \(\times\) | \(-21.5\) in    | \(=\) | \(236.5\) in-lb |
| Generator~(installed)~| \(+14\) lbs  | \(\times\) | \(-21.5\) in  | \(=\) | \(-294.0\) in-lb |
| **Total** | **\(1238\) lbs** |  | |  | **\(31\,417.5\) in-lb** |

\[\frac{31\,417.5 \text{ in-lb}}{1238 \text{ lbs}} = 25.38 \text{ in} \]

## Vertical Center of Gravity Measurement

1. Drain or block landing gear struts to keep distances \(G\), \(J\), and \(V\) constant.
1. Level the fuselage and measure the weight on the nose wheel (\(F_o\)).
1. Tilt the aircraft at various (\(\theta\)) measure nose wheel weight (\(F\)).

 ![][07007]

The change in nose wheel force can be written as

\[ F_0 - F = \left[ V + \frac{B G}{C} \right] \left( \frac{W}{C \cot \theta + G}  \right)\]

4. Plot (\(F_o-F\)) vs the term in parenthesis.
1. Slope of line equals term in brackets.
1. Solve for \(V\) after measuring \(B\), \(C\), \(G\), and the slope.
   * This method applies to "gear down" \(\mathrm{cg}\).
   * For "gear up" add the manufacturer's prediction of the \(\mathrm{cg}\) shift to this result.
 
![][07009]

## Moment & Product of Inertia Measurement 

The moment of inertia about any axis of a body is the summation of the product of every element's mass and distance squared. Moments of inertia represent the resistance to rotational momentum changes.

![][07010]

\[
\begin{align}
I_{x_b} &\equiv \int \left( y^2 + z^2 \right) dm \\
I_{y_b} &\equiv \int \left( x^2 + z^2 \right) dm \\
I_{z_b} &\equiv \int \left( x^2 + y^2 \right) dm \\
\end{align}
\]

Products of inertia are also calculated about any body axes. They represent the symmetry of mass distribution (comparing opposing quadrants).

![][07013]

\[
\begin{align}
I_{xy} &= I_{yx} \equiv \int xy dm \\
I_{yz} &= I_{zy} \equiv \int yz dm \\
I_{zx} &= I_{xz} \equiv \int zx dm \\
\end{align}
\]


* Aircraft moments and products of inertia are calculated using body axes as the reference system.
* Careful documentation can yield inertial predictions within about 1-5% of actual.

![][07014]

### Radius of Gyration

* Dimensions of all \(I\) terms are [slugs-ft^2^]
* Aircraft moments & products of inertia are generally assumed to be constant.
* For moments of inertia, mathematically replace \(I\) with the product of total mass times some constant with the dimensions of square feet.
* This constant is called the "radius of gyration" (\(k\)).
* If all the mass were concentrated at this radius, it would have the same moment of inertia as the actual body.

\[ I_x \equiv \int \left( y^2 + z^2 \right) dm = mk^2_{yz} \]

**Aircraft moment of inertia summary**

\(I_{z_b}\) is always the largest value.

\(I_{y_b} \gt I_{x_b}\) for fuselage-loaded aircraft.

\(I_{x_b} \gt I_{y_b}\ \)for wing-loaded aircraft.

![][07016]

* Vehicle mass distribution can be represented with concentrated "dumbbell" masses.
* The lines connecting the opposing dumbbells are the **principle axes**.
* When the principle axis lies along some line different from the body axis, the products of inertia are non-zero.
* If the orientation of the principle axes and the moments of inertia about theses axes are known, then the moments of inertia about any other axis system can be calculated.

### Parallel Axis Theorem Applications

Shows how to **determine modified moment of inertia** after some component alterations. 

Example: Correct original aircraft roll inertia, \(I_{x_b}\), to a modified value that accounts for the addition of wingtip fuel tanks.

\[ I_{x_{b_{\text{mod}}}} = I_{x_{b_{\text{orig}}}} + \Delta I_{x_{\text{comp}}} \]

* \( \Delta I_{x_{\text{comp}}} \) is composed of two components

\[ \Delta I_{x_{\text{comp}}} = I_{x_{\text{comp}}} + m_{\text{comp}} r^2 \]

![][07018] 

* \( I_{x_{\text{comp}}} \) is the moment of inertia of just the new component about an axis which is parallel to the aircraft axis in question (this axis should run through the component's \(\mathrm{cg}\)).
* \( I_{x_{\text{comp}}} \) can be determined analytically by summing the inertias of every mass element throughout the component (documented for simple shapes in various engineering handbooks).
* \( I_{x_{\text{comp}}} \) can be determined experimentally by "swinging." ([Swing Method])
* \( I_{x_{\text{comp}}} \) is usually much smaller than \( m_{\text{comp}} r^2 \) and can often be omitted.
* \( m_{\text{comp}} \) is the component's mass
* \(r\) is the distance from the axis in question to the component's \(\mathrm{cg}\).

Similarly, the parallel axis theorem shows how to **determine modified products of inertia** after some component alterations.

\[ I_{xz_{\text{mod}}} = I_{xz_{\text{orig}}} + \left[ I_{xz_{\text{comp}}} + m_{\text{comp}} xz \right] \]

\(x\) and \(z\) are the distances from the component \(\mathrm{cg}\) to the reference axes.

Moments of inertia are calculated about a set of reference axes which all intersect at the reference \(\mathrm{cg}\). In general, however, the actual \(\mathrm{cg}\) does not lie exactly at this reference \(cg\). The parallel axis theorem shows how to **correct the moment of inertia to the actual \(\mathrm{cg}\) axis**. As an example, the rolling moment of inertia about the actual \(\mathrm{cg}\) ( \( I_{x_{\mathrm{cg}}} \) ) is calculated from the reference \(I_{x_b}\) as follows.

\[ I_{x_{\mathrm{cg}}} = I_{x_b} - m \left[ y^2 + z^2 \right] \]

where 

* \(m\) = total mass
* \(y\) = lateral distance between \(\mathrm{cg}\) and aircraft x-axis.
* \(z\) = vertical distance between \(\mathrm{cg}\) and aircraft x-axis.

### Measuring Roll Inertia, \(I_{x_b}\) (spring oscillation method)
1. Balance aircraft on prism-like "knife edges" that support wooden cradles that conform to aircraft shape.
1. Attach springs (tension springs illustrated here) so they are parallel to line \(a\) as shown.

![][07021] 

![][07022] 

3. Allow aircraft to oscillate freely in roll after a small disturbance.
1. Use **automatic recording** to determine period of oscillations (\(T\)).
1. Calculate damped frequency as

\[ \omega_d = \frac{2\pi}{T} \]

6. Record peak magnitude of each oscillation.
1. Calculate \(\zeta\) using transient peak ratio method (see [Motion and Vibration Analysis]).
1. Calculate natural frequency as

\[ \omega_n = \frac{\omega_d}{\sqrt{1 - \zeta^2}} \]

9. Measure the spring's stiffness (\(K_0\))
1. Calculate inertia about oscillation axis (\(I_0\)) as

\[ I_o = \frac{K_o}{\omega_n^2} \]

11. Use parallel axis theorem to correct \(I_o\) to a parallel axis passing through the \(cg\).
1. Springs, cradles and attachments hardware will change the moment of inertia. Sum their total into a combined "test equipment inertia" (\Delta\(I_{\mathrm{te}}\)) and subtract this from the above result.

Combining steps 10-12 gives the complete **moment of inertia equation**

\[ I_{\mathrm{cg}} = \frac{K_o a^2 - mgh}{\omega_n^2} - md^2 - \Delta I_{\mathrm{te}} \]

where \(h\) is the vertical distance between the \(\mathrm{cg}\) and axis of oscillation and \(d\) is the total distance between the \(\mathrm{cg}\) and the axis of oscillation (\(d\) = \(h\) in the illustrated roll inertia test setup).

**If automatic recording is not available\...**

Accomplish steps 1-3 as described for automatic recording case.

4. Use a stopwatch to time several oscillations and calculate \(\omega_d\) as before
1. Measure the spring's rotational stiffness (\(K_o\))
1. Approximate inertia using the damped frequency using

\[ I_o \approx \frac{K_o}{\omega_d^2}  \]

7. Use parallel axis theorem to correct \(I_o\) to a parallel axis passing through the \(cg\).
1. Correct for effects of test hardware moment of inertia (\(\Delta I_{\mathrm{te}}\)).
1. To correct for errors in the \(I_o\) approximation, apply an \"additional mass correction\" (\(\Delta I_{\mathrm{am}}\)) which equates the flate plate area damping effect to additional inertia. This correction is detailed in ref. 7.5.3.

Combining steps 6-9 gives

\[ I_{\mathrm{cg}} = \frac{K_o a^2 - mgh}{\omega_d^2} - md^2 - \left(\Delta I_{\mathrm{te}} + \Delta I_{\mathrm{am}} \right) \]

Above methods can also be used to determine \(I_{y_b}\) and \(I_{z_b}\)

### Measuring Pitch Inertia, \(I_{y_b}\) (spring oscillation method)

1. Balance aircraft on knife edges as shown.
1. Attach spring perpendicular to line \(a\). Only one spring is required since the aircraft \(\mathrm{cg}\) is off-center. Spring must be stiff enough to hold the aircraft in equilibrium as well as provide a restoring moment during oscillations.

![][07029]

![][07030]

Repeat steps 3-12 and apply the moment of inertia equation to determine \(I_{y_b}\)

\[ I_{\mathrm{cg}} = \frac{K_o a^2 - mgh}{\omega_n^2} - md^2 - \Delta I_{\mathrm{te}} \]

or, for an uninstrumented aircraft,

\[ I_{\mathrm{cg}} = \frac{K_o a^2 - mgh}{\omega_d^2} - md^2 - \left(\Delta I_{\mathrm{te}} + \Delta I_{\mathrm{am}} \right) \]

### Measuring Yaw Inertia, \(I_{z_b}\) (spring oscillation method)

1. Suspend aircraft as shown: fuselage reference line parallel with floor, \(z\)-body axis coincides with the oscillation axis (\(h = d = 0\)). For \(I_{z_b}\) test, set spring assembly tilt angle parallel to floor (\(\delta = 0\)).

![][07033] 

2. Ideal case is where the wing attach points are in line with the aircraft \(\mathrm{cg}\) as shown. Springs are perpendicular to the AB line and are parallel.

![][07034]

If not possible to rig wing attach points in line with the \(\mathrm{cg}\), then keep the springs parallel to each other and measure the angle \(\phi\).  

• Calculate \(K_o = k \cos{\phi}\), where \(k\) is the actual spring constant

![][07035]

Repeat steps 3-12 and apply the moment of inertia equation to determine \(I_{z_b}\). Note that distances \(h\) and \(d\) are zero for a properly suspended aircraft.

\[ I_{\mathrm{cg}} = \frac{K_o a^2 - mgh}{\omega_n^2} - md^2 - \Delta I_{\mathrm{te}} \]

or, for an uninstrumented aircraft,

\[ I_{\mathrm{cg}} = \frac{K_o a^2 - mgh}{\omega_d^2} - md^2 - \left(\Delta I_{\mathrm{te}} + \Delta I_{\mathrm{am}} \right) \]

### Measuring Axis of Inclination and \(I_{xz}\)

<!-- FIXME The inconsistency in unordered and ordered lists is disruptive -->
<!-- FIXME The inconsistency in narrative and nonnarrative content is disruptive -->

* Inclination of principle axis (\(\varepsilon\)) is positive if it lies in the \(+xz\) plane as shown.
* \(I_{xz}\) positive if \(\varepsilon\) is positive.

![][07038]

* From equations of motion

\[ 
\begin{align}
L &= I_x \dot{p} - I_{xz} \left( \dot{r} + pq \right) + \left( I_z - I_y \right) qr \text{and} \\
N &= I_z \dot{r} - I_{xz} \left( \dot{p} - qr \right) + \left( I_y - I_x \right) pq \\
\end{align}
\]

* When forcing small motions about only the yaw axis, \(pq\) and \(qr\) are negligible, giving

\[ 
\begin{align}
L &= I_x \dot{p} - I_{xz} \dot{r} \text{and} \\
N &=  I_z \dot{r} - I_{xz} \dot{p} \\
\end{align}
\]

* If \(\varepsilon\) (and therefore \(I_{xz}\)) is positive, then yawing to the right will generate a left rolling moment.
* If \(\varepsilon\) and \(I_{xz}\) are negative, a right yaw will generate a *right* moment.

<!-- FIXME "Use instrumentation to note for each delta" ??? -->
1. Determine \(I_{xz}\) and \(\varepsilon\) by repeating yaw experiment for different spring angles (\(\delta\)). Use instrumentation to note for each \(\delta\).
1. Graphically determine the angle \(\delta_0\) at which the restoring vector produced by the springs completely counteracts the roll motion.

Plot \(\tan{\delta}\) vs \(\frac{\dot{p}}{\dot{r}} \) as shown.
![][07044] 

3. Determine the point where \(\frac{\dot{p}}{\dot{r}} \) equals zero. This occurs at \( \tan{\delta_0} \).
1. Calculate the product of inertia using

\[ I_{xz} = I_z \tan{\delta_0} \]

5. Calculate the inclination of the principle axis using

\[ \tan{2\varepsilon} = \frac{2I_{xz}}{I_{z_b} - I_{x_b}} \]

Note: Since the \(I_{xz}\) test objective is to interpolate to a condition where \(\frac{\dot{p}}{\dot{r}} \) equals zero, only the ratio is necessary and the absolute magnitudes of the accelerations are not required. In other words, the roll acceleration sensitivity can be increased to allow for easier measurement of the ratio.

### Guidelines for Spring Oscillation Method

* Use only small magnitude oscillations.
* Keep size and radius of knife edges as small as practical.
* Springs are typically linear except around zero load. Best results occur if springs are pre-loaded.
* Choose spring stiffness so oscillation frequency will be within instrumentation limits.
* If using a hand recorded stopwatch, best spring stiffness gives about one cycle per second (\(f = 1\)).
* Estimate the desired spring rate using

\[ k = \frac{ \left( I_{\mathrm{cg}} + md^2 \right) \left( 2 \pi f \right)^2 + hmg}{a^2} \]

* The purpose of instrumentation is to provide a means for measuring frequency and magnitude. Any of several parameters will be sufficient, including angular displacement, rate or acceleration, or linear acceleration.

### Swing Method

1. Suspend component as shown.

![][07051] 

2. Measure pendulum length (\(l\)), component mass (\(m\) ), and the period of oscillation (\(T\)).
 
 * The observed period is a function of the effective pendulum length.

\[ \omega = \sqrt{\frac{g}{l_{\mathrm{eff}}}} \;\;\;\;\text{and}\;\;\;\; T = \frac{2 \pi}{\omega} = 2 \pi \sqrt{\frac{l_{\mathrm{eff}}}{g}} \;\;\;\;\text{or}\;\;\;\; l_{\mathrm{eff}} = \left( \frac{T}{2 \pi} \right)^2 g \]

* This effective length is the total radius of gyration \(l_{\mathrm{eff}} = K_{\mathrm{tot}} \)
* The total moment of inertia about the pivot point is the product of mass and radius of gyration squared. The parallel axis theorem states that this also is the sum of the component's moment of inertia about its \(\mathrm{cg}\) plus its mass times the distance between the pivot and the component's \(\mathrm{cg}\).

\[ I_{\mathrm{eff}} = m K_{\mathrm{tot}}^2 = I_{\mathrm{cg}} + ml^2 \]

3. Solving for the component's moment of inertia about its own \(\mathrm{cg}\) gives

\[ I_{\mathrm{cg}} = m K_{\mathrm{tot}}^2 - ml^2 = m \left( K_{\mathrm{tot}}^2 - l^2 \right) = m \left( \left[ \left( \frac{T}{2 \pi} \right)^2 g \right]^2 - l^2 \right) \]

## References

|||
|-|-----------------|
|7.5.1 |Lawless, Alan R. et al, "Special Topics and Aircraft Subsystems Flight Testing," *Chapter 1, Mass Properties*, National Test Pilot School, Mojave, CA, 1999.|
|7.5.2 |Bradfield, Edward N., "Experimental Determination of the Moments of Inertia, Product of Inertia, and Inclination of the Principle Axis of Conventional Aircraft by the Spring Oscillation Method" FTC-TIM-1001, AFFTC, Edwards AFB, CA, 1971.|
|7.5.3 |Malvestuto, S. F., et al, "Formulas for Additional Mass Corrections to the Moments of Inertia of Airplanes" TN 1187, Langley Memorial Aeronautical Laboratory, Langley Field Virginia, 1947.|
|7.5.4 |Lawless, Alan R., "Fixed Wing Flying Qualities Flight Testing" *Chapter 7, Equations of Motion*, National Test Pilot School Mojave CA, 1998.|

**Additional Reading**

|||
|-|-----------------|
|7.5.5 |Tanner H.L., "Measurement of the Moments of Inertia of an Airplane by a Simplified Method" NACA2201, Ames Aeronautical Laboratory, Moffet Field, CA, 1950.|
|7.5.6 |Woodward, C.R., et al "Handbook of Instructions for Experimentally Determining the Moments of Inertia of Aircraft by the Spring Oscillation Method" TB-822-F-2, ASTIA AD97104, Cornell Aeronautical Laboratory, Buffalo, New York, 1955.|
  
  [07001]: media/07/image1.svg {width="3.388888888888889in" height="1.7708333333333333in"}
  [07002]: media/07/image2.svg {width="2.842361111111111in" height="1.398611111111111in"}
  [07003]: media/07/image3.svg {width="2.959722222222222in" height="1.4479166666666667in"}
  [07004]: media/07/image4.svg {width="2.9479166666666665in" height="1.4430555555555555in"}
  [07005]: media/07/image5.svg {width="2.825in" height="1.6305555555555555in"}
  [07006]: media/07/image6.svg {width="3.2916666666666665in" height="1.7215277777777778in"}
  [07007]: media/07/image7.png {width="6.5in" height="2.5854166666666667in"}
  [07008]: media/07/image8.svg {width="2.0375in" height="0.41597222222222224in"}
  [07009]: media/07/image9.svg {width="3.1708333333333334in" height="2.6979166666666665in"}
  [07010]: media/07/image13.svg {width="2.1645833333333333in" height="1.2826388888888889in"}
  [07011]: media/07/image14.svg {width="1.2034722222222223in" height="0.9270833333333334in"}
  [07012]: media/07/image15.svg {width="1.2291666666666667in" height="0.9791666666666666in"}
  [07013]: media/07/image16.svg {width="1.792361111111111in" height="1.0708333333333333in"}
  [07014]: media/07/image17.svg {width="3.3722222222222222in" height="2.3368055555555554in"}
  [07015]: media/07/image18.svg {width="1.8854166666666667in" height="0.3402777777777778in"}
  [07016]: media/07/image19.svg {width="4.5in" height="2.375in"}
  [07017]: media/07/image20.svg {width="1.6840277777777777in" height="0.2861111111111111in"}
  [07018]: media/07/image21.svg {width="2.0902777777777777in" height="0.3284722222222222in"}
  [07019]: media/07/image22.svg {width="2.4506944444444443in" height="0.2722222222222222in"}
  [07020]: media/07/image23.svg {width="1.4340277777777777in" height="0.2513888888888889in"}
  [07021]: media/07/image24.svg {width="4.479166666666667in" height="1.5284722222222222in"}
  [07022]: media/07/image25.svg {width="4.4527777777777775in" height="1.69375in"}
  [07023]: media/07/image26.svg {width="0.6263888888888889in" height="0.4236111111111111in"}
  [07024]: media/07/image27.svg {width="0.9076388888888889in" height="0.5034722222222222in"}
  [07025]: media/07/image28.svg {width="2.529166666666667in" height="0.4895833333333333in"}
  [07026]: media/07/image29.svg {width="0.6388888888888888in" height="0.5173611111111112in"}
  [07027]: media/07/image30.svg {width="1.5in" height="0.375in"}
  [07028]: media/07/image31.svg {width="0.5972222222222222in" height="0.48333333333333334in"}
  [07029]: media/07/image32.svg {width="4.5in" height="1.6666666666666667in"}
  [07030]: media/07/image33.svg {width="4.5in" height="1.5833333333333333in"}
  [07031]: media/07/image34.svg {width="1.836111111111111in" height="0.4270833333333333in"}
  [07032]: media/07/image35.svg {width="2.529166666666667in" height="0.4895833333333333in"}
  [07033]: media/07/image36.svg {width="4.5in" height="2.5729166666666665in"}
  [07034]: media/07/image37.svg {width="3.8319444444444444in" height="3.0833333333333335in"}
  [07035]: media/07/image38.svg {width="3.15625in" height="3.0833333333333335in"}
  [07036]: media/07/image39.svg {width="1.367361111111111in" height="0.4895833333333333in"}
  [07037]: media/07/image40.svg {width="1.9819444444444445in" height="0.5076388888888889in"}
  [07038]: media/07/image41.svg {width="4.5in" height="2.6770833333333335in"}
  [07039]: media/07/image42.svg {width="2.1381944444444443in" height="0.2513888888888889in"}
  [07040]: media/07/image43.svg {width="2.145138888888889in" height="0.24930555555555556in"}
  [07041]: media/07/image44.svg {width="1.1958333333333333in" height="0.2326388888888889in"}
  [07042]: media/07/image45.svg {width="1.0354166666666667in" height="0.2652777777777778in"}
  [07043]: media/07/image46.svg {width="0.125in" height="0.2722222222222222in"}
  [07044]: media/07/image47.svg {width="4.5in" height="2.5in"}
  [07045]: media/07/image48.svg {width="0.18194444444444444in" height="0.3993055555555556in"}
  [07046]: media/07/image49.svg {width="0.1486111111111111in" height="0.3263888888888889in"}
  [07047]: media/07/image50.svg {width="0.875in" height="0.2388888888888889in"}
  [07048]: media/07/image51.svg {width="1.132638888888889in" height="0.4548611111111111in"}
  [07049]: media/07/image52.svg {width="0.125in" height="0.25in"}
  [07050]: media/07/image53.svg {width="1.9048611111111111in" height="0.4423611111111111in"}
  [07051]: media/07/image54.svg {width="2.982638888888889in" height="2.15625in"}
  [07052]: media/07/image55.svg {width="0.7138888888888889in" height="0.5208333333333334in"}
  [07053]: media/07/image56.svg {width="1.2847222222222223in" height="0.5in"}
  [07054]: media/07/image57.svg {width="0.9583333333333334in" height="0.49375in"}
  [07055]: media/07/image58.svg {width="1.7083333333333333in" height="0.27847222222222223in"}
  [07056]: media/07/image59.svg {width="3.3645833333333335in" height="0.5291666666666667in"}

<!--chapter:end:07-mass-properties.Rmd-->

# Motion & Vibration Analysis

## Recurring Abbreviations

|                     |                                                                   |
|-|-------------------------------------------------------------------|
| \(C_{\frac{1}{x}}\) | number of cycles to achieve \(\frac{1}{x}\) amplitude             |
| \(D\)               | damping                                                           |
| \(D_1,D_2\)         | peak-to-peak displacement (subsequent)                            |
| \(\mathrm{FV}\)     | final value                                                       |
| \(F(t)\)            | forcing function                                                  |
| \(f\)               | frequency, cycles/sec = \(\omega / \left( 2\pi \right) \)         |
| \(\mathrm{HCAR}\)   | half cycle amplitude ratio (i.e., \(x_2/x_1\), \(x_3/x_2\), etc.) |
| \(\mathrm{Im}\)     | imaginary axis                                                    |
| \(M\)               | mass                                                              |
| \(\mathrm{MP}\)     | peak overshoot                                                    |
| \(\mathrm{Re}\)     | real axis                                                         |
| \(\mathrm{rms}\)    | root mean square                                                  |
| \(s_1\), \(s_2\)    | equation roots of second order                                    |
| \(T\)               | period = \(1/f\) = \(2\pi/\omega_d\) (seconds)                    |
| \(T_d\)             | delay time (i.e., time to 50% of \(\mathrm{FV}\) )                |
| \(T_r\)             | rise time (i.e., time from 10% to 90% of \(\mathrm{FV}\) )        |
| \(T_p\)             | time to peak amplitude                                            |
| \(\mathrm{TPR}\)    | transient peak ratio                                              |
| \(T_s\)             | settling time (time to settle within \(x\%\) of \(\mathrm{FV}\) )  |
| \(T_{\frac{1}{x}}\)         | time to achieve \(\frac{1}{x}\) amplitude                                 |
| \(x\)               | displacement                                                      |
| \(x_1\), \(x_2\)    | peak displacements (subsequent)                                   |
| \(v\)               | velocity                                                          |
| \(v_0\)             | peak velocity                                                     |
| \(\varepsilon\)     | \(= \zeta \omega_n / \omega_d = \zeta / \sqrt{1 - \zeta^2} \)     |
| \(\phi\)            | phase lag (radians)                                               |
| \(\zeta\)           | damping coefficient (non-dimensional)                             |
| \(\sigma\)          | damping rate \(=\zeta \omega_n = 1/\tau\)                         |
| \(\tau\)            | time constant \(=1/\zeta \omega_n\)                               |
| \(\omega\)          | frequency, radians/sec                                            |
| \(\omega_d\)        | damped natural frequency (rad/sec)                                |
| \(\omega_n\)        | natural frequency (rad/sec)                                       |

## First Order Motion

Found in classical aircraft roll and spiral modes. Named first-order because the motions are described by mathematics using the first derivative of a parameter.

### Elements of First Order Motion

Mechanical analogy contains elements of mass, damping and sometimes a forcing function.

**Example 1:** Determine the vertical velocity of a diver as she hits the water at \(10\) ft/s (assume constant body position & neutral buoyancy)

Summing vertical forces gives

\[ 
\begin{align}
\sum F_{\mathrm{vert}} : &M \frac{dV}{dt} + DV = 0 \\
&\frac{dV}{V} + \frac{D}{M} dt = 0 \\
&\int{}{} \frac{dV}{V} = -\int{}{} \frac{D}{M} dt
\end{align}
\]

Since \(D\) & \(M\) are constant

\[ 
\begin{align}
\ln V &= -\frac{D}{M} t + C =  -\frac{D}{M} t + \ln c\\
V_c &= c e^{-\frac{D}{M} t} \;\;\text{complementary solution}\\
\end{align}
\]
 
Apply initial condition

\[ 
\begin{align}
V(t=0) &= 10 \mathrm{ft/s} \Rightarrow \\
10 &= C \\
V_T &= 10 e^{-\frac{D}{M} t}
\end{align}
\]

Plot response over time

![][08005]

Exponential rate of decay described by \(\frac{D}{M}\) ratio

 

**Example 2:** Diver with \(20\) lb submerged weight releases from zero velocity at top of pool (quiescent condition).

Solve using Laplace analysis methods:

\[
\begin{align}
M\dot{V} + DV &= 20 \;\;\text{step input} \\
M\left[ sV(s) - V(0) \right] + D V(s) &= \frac{20}{s} \\
sV(s) - V(0) + \frac{D}{M} V(s) &= \frac{20}{M} \frac{1}{s} \\
V(s) \left(s + \frac{D}{M} \right) &= \frac{20}{M} \frac{1}{s} + V(0) \\
V(s) &= \frac{ \frac{20}{M} \frac{1}{s} + V(0) }{s + \frac{D}{M} } \\
&= \left\{
          \frac{
                \frac{20}{M}
                }
                {s \left(
                          s + \frac{D}{M}
                        \right)
                } 
  \right\} + \frac{V(0)}{s + \frac{D}{M}} \\
\end{align}
\]

Use partial fraction:

\[
\begin{align}
\frac{ \frac{20}{M} }{s \left( s + \frac{D}{M} \right) } &= \frac{A}{s} + \frac{B}{s + \frac{D}{M}}\\
&= \frac{A \left( s + \frac{D}{M} \right)}{s \left( s + \frac{D}{M} \right) } + \frac{B s}{s \left( s + \frac{D}{M} \right) }\\
&= \frac{A \left( s + \frac{D}{M} \right) + B s}{s \left( s + \frac{D}{M} \right) }\\
\therefore \frac{20}{M} &= A \left( s + \frac{D}{M} \right) + B s
\end{align}  
\]

let \(s = -\frac{D}{M}\):

\[\frac{20}{M} = 0 + B \left(-\frac{D}{M}\right) \Rightarrow B = -\frac{20}{D} \]

let \(s = 0\):

\[\frac{20}{M} = A \left( 0 + \frac{D}{M} \right) + 0 \Rightarrow A = \frac{20}{D} \]

\[
\begin{align}
V(s) &= \left\{ \frac{A}{s} + \frac{B}{s + \frac{D}{M}} \right\} + \frac{V(0)}{s + \frac{D}{M}} \\
&= \left\{ \frac{\frac{20}{D}}{s} + \frac{-\frac{20}{D}}{s + \frac{D}{M}} \right\} + \frac{V(0)}{s + \frac{D}{M}} \\
V(t) &= \left\{ \frac{20}{D} -\frac{20}{D}e^{-\frac{D}{M}t} \right\} + V(0)e^{-\frac{D}{M}t} \\
\end{align}
\]

since \(V(0) = 0\) then

\[ V(t) = \frac{20}{D} \left[ 1  -e^{-\frac{D}{M}t} \right] \]

Note that the steady state value, \(V_{\mathrm{ss}} = \frac{20}{D}\), i.e.

\[ V(t) = V_{\mathrm{ss}} \left[1  -e^{-\frac{D}{M}t} \right] \]

This "force/damping" ratio is merely a scaling factor for the steady state.

![][08009]

Several methods can be used to describe the quickness of convergence toward steady state (e.g., time to \(99.999\%\) of \(V_{\mathrm{ss}}\), time to \(1/2\) \(V_{\mathrm{ss}}\)).

By convention, we use a \(\%\) that directly reflects the exponent.

Establish a time constant \(\tau\) based on \(\frac{D}{M}\).

\[\frac{D}{M} \equiv \frac{1}{\tau} \]

so 

\[e^{-\frac{D}{M}t} = e^{-\frac{t}{\tau}}\]

when 

\[t = \tau\]

then

\[e^{-\frac{t}{\tau}} = e^{-\frac{\tau}{\tau}} = e^{-1} = 0.36788\]

so, after \(\frac{M}{D}\) seconds have elapsed, \(V =  V_{\mathrm{ss}} \left[1  0.36788 \right] = 63.212\% V_{\mathrm{ss}} \)

\(\tau =\) time constant (time for parameter to reach \(~63\%\) of it's steady state value)


### First Order Motion Descriptive Parameters

\[ x(t) = e^{-\zeta \omega_n t} = e^{-\frac{t}{\tau}} \]

![][08012]

||||
|-|-|-|
|when \(t = 0.6931\tau\): |\(x = e^{−0.6931}\) |\(= 0.5 \)  (time to half amplitude)|
|when \(t = \tau\):       |\(x = e^{−1}     \) |\(= 0.37\)|
|when \(t = 3\tau\):      |\(x = e^{−3}     \) |\(= 0.05\)|
|when \(t = 4\tau\):      |\(x = e^{−4}     \) |\(= 0.02\)|

If exponent \(\gt 0\), then motion is divergent.

\[x(t) = ce^{mt}\]

where \(m \gt 0\)

![][08015]

\(\tau\) again describes the exponential rate of divergence.

By convention, the "time to double amplitude" (\(t_2\)) is usually applied as the evaluation metric.

\(x_{t_2} = 2x_0\) where \(x_0 = ce^{m\cdot 0}\)

Therefore

\[
\begin{align}
x_2 &= 2c \\
2c &= ce^{mt_2} \\
2 &= e^{mt_2} \\
\ln 2 &= mt_2 \\
\therefore \text{Time to double amplitude } \frac{0.6931}{m} = t_2 = 0.693\tau \\
\end{align}
\]

### Determining \(\tau\) from Step Input Time History

**Method \#1**

\(\tau\) = time to reach \(0.632 x_{\mathrm{ss}}\)

![][08018]

**Method \#2**

1. Define \(x_{\mathrm{ss}}\)
1. Measure \(x_1\) at some time \(t_1\)
1. Calculate \(x_2 = 0.632 \left( x_{\mathrm{ss}} + 0.58 x_1 \right) \) 
1. Find \(t_2\) corresponding to \(x_2\)
1. \(t_2 - t_1 = \tau \)

<!-- x_2 is mislabeled in figure -->
![][08021]

**Method \#3**

1. Pick any time \(t_1\).
1. Draw tangent at \(t_1\).
1. Note \(t_2\) where tangent intercepts \(x_{\mathrm{ss}}\).
1. \( \tau = t_2 -t_1 \)

![][08022]

**Method \#4** 

<!-- Why do we suddenly switch to caps? -->
When \(X_{\mathrm{SS}}\) is unknown use

\[\tau = \frac{\Delta t}{\ln \left( \frac{A_1}{A_2} \right)} \]

![][08024]

**Method \#5** 

When \(X_{\mathrm{SS}}\) is known, use

\[\tau = \frac{-\Delta t}{\ln \left[ \frac{X_{\mathrm{SS}} - X_1}{X_{\mathrm{SS}} - X_2} \right]} \]

**Linearity check:**

Note parameter change between even time increments.

Plot parameter changes vs elapsed time on semi-log scale

![][08026]

Slope of line equals \(\tau\)

![][08027]

## Second Order Motion

Found in classical aircraft phugoid, Dutch roll and short period modes as well as noise filter and vibration testing. Named second-order because the motions are described by mathematics using the second derivative of a parameter.

### Elements of Second Order Motion

Mechanical systems have elements of spring, mass, and usually damping. Forcing functions can be included (see illustration).

![][08028]

| | |
|-|----------------------------------------|
|\(K\) | spring stiffness ( \(F/x\) ) |
|\(x\) | displacement from equilibrium |
|\(M\) | mass|
|\(F\left(t\right)\)| forcing function|
|\(D\)| damping|

\[\sum{}{} F_{\mathrm{vert}} : M\ddot{x} + D\dot{x} + Kx = F(t) \]

Natural character is observed when system is allowed to move with no external input [\(F(t) = 0 \)] 

\[\sum{}{} F_{\mathrm{vert}} : M\ddot{x} + D\dot{x} + Kx = 0 \]

Apply operator technique:

Let 

\[
x = e^{st} \text{, } \dot{x} = s e^{st} \text{, } \ddot{x} = s^2 e^{st} \\
\Rightarrow e^{st} \left( M s^2 + D s + K \right) = 0 \\
\]

Divide out \(e^{st}\), since it never equals zero, the characteristic equation remains:

\[
M s^2 + D s + K = 0 \text{ or } s^2 + \frac{D}{M} s + \frac{K}{M} = 0\\
\]

The values of \(s\) that satisfy this equation are called the roots

\[ x = c_1 e^{s_1 t} + c_2 e^{s_2 t} \]

Solve for the roots using the quadratic equation

### Second Order Motion Descriptive Parameters

Solution (\(x\)) calculated as

\[
x = c_1 e^{\tau_1 t} + c_2 e^{\tau_2 t} \text{ where } s_1\text{, } s_2 = -\frac{D}{2M} \pm j \sqrt{ \frac{K}{M} - \left( \frac{D}{2M} \right)^2 }  
\]

Apply Euler's identity for complex conjugate roots

\[
x = A e^{-\frac{D}{2M} t} \sin \left( \sqrt{\frac{K}{M} - \left(\frac{D}{2M} \right)^2} t + \phi  \right)
\]

* \(\phi\) defines the **phase shift**.
* \(A\) defines the **initial amplitude**.
* The real part of the root \( \frac{D}{2M} \) defines the **envelope** of the motion.
* The imaginary part of the root identifies the **damped frequency** of the oscillations, \(\omega_d\) [rad/sec].

\[
\omega_d = \sqrt{\frac{K}{M} - \left(\frac{D}{2M} \right)^2}
\]

* If damping is reduced to \( D= 0 \) then only \( \sqrt{\frac{K}{M}} \) remains.
* This is the undamped or **"natural" frequency** ( \(\omega_n\) ).

\[
\omega_n \equiv \sqrt{\frac{K}{M}}
\]

* If \( \left( \frac{D}{2M} \right)^2 = \frac{K}{M} \) then \(D\) is considered to be critical (just enough to prevent oscillations)

\[
D_{\mathrm{crit}} = \sqrt{\frac{K}{M}} 2M = 2 \sqrt{KM}
\]

* For oscillatory motion, actual system damping is typically expressed as a fraction critical damping. Define **damping ratio** as

\[
\zeta \equiv \frac{D}{ D_{ \mathrm{crit} } } = \frac{D}{ 2 \sqrt{KM} }
\]

Combining 

\[
\omega_d \equiv \sqrt{\frac{K}{M} - \left(\frac{D}{2M} \right)^2}
\]

with 

\[
\omega_n \equiv \sqrt{\frac{K}{M}}
\]

and

\[
\zeta = \frac{D}{ 2 \sqrt{KM} }
\]

gives

\[
\omega_d \equiv \omega_n \sqrt{1 - \zeta^2}
\]

and

\[
\frac{D}{2M} = \zeta \omega_n
\]

The values can be substituted to gives

\[
\begin{align}
x &= A e^{-\frac{D}{2M} t} \sin \left( \sqrt{\frac{K}{M} - \left(\frac{D}{2M} \right)^2} t + \phi  \right) \\
&= A e^{-\zeta \omega_n t} \sin \left( \omega_d t + \phi  \right) \\
&= A e^{-\zeta \omega_n t} \sin \left( \omega_n \sqrt{1 - \zeta^2} t + \phi  \right) \\
\text{where } \phi &= \tan^{-1} \frac{\omega_d}{\zeta \omega_n} =  \tan^{-1} \frac{\omega_n \sqrt{1 - \zeta^2}}{\zeta \omega_n} =  \tan^{-1} \frac{\sqrt{1 - \zeta^2}}{\zeta} \\
\end{align}
\]

<!-- Don't think we need this labeled equation...? -->
![][08043]

![][08044]

![][08045]

\[\text{Roots } s_{1,2} = -\frac{D}{2M} \pm j \sqrt{\frac{K}{M} - \left( \frac{D}{2M} \right)^2} = -\zeta \omega_n \pm j\omega_n\sqrt{1 - \zeta^2} \]

Possible Solutions:

<!-- Eventually convert to an actual table -->
![][08047]

• The various combination of \(K\), \(M\), and \(D\) and their effects on system response can be related to damping ratio \(\zeta\) as follows:

| | | |
|-|---|---|
| \(+1 \lt \zeta\)        | Real & unequal roots: exponential, convergent | \[ x\left(t\right) = c_1 e^{-\omega_n \left( \zeta + \sqrt{\zeta^2 - 1} \right)t} + c_2 e^{-\omega_n \left( \zeta - \sqrt{\zeta^2 - 1} \right)t} \] |
| \(\zeta = +1\)          | Real & equal roots: exponential, convergent   | \[ x\left(t\right) = c_1 e^{-\omega_n \zeta t} + c_2 t e^{-\omega_n \zeta t} \] |
| \(0 \lt \zeta \lt +1 \) | Complex pair roots: sinusoidal, convergent    | \[ x\left(t\right) =  A e^{-\zeta \omega_n t} \sin \left( \omega_d + \phi \right) \] |
| \(\zeta = 0 \)          | Imaginary pair roots: sinusoidal, neutral     | \[\begin{align} x\left(t\right) &=  A \sin \left( \omega_n t + \phi \right) \\ &= A \cos \left( \omega_n t \right) \end{align} \] |
| \(-1 \lt \zeta \lt 0 \) | Complex pair roots: sinusoidal, divergent     | \[ x\left(t\right) =  A e^{-\zeta \omega_n t} \sin \left( \omega_d + \phi \right) \] |
| \(\zeta = -1 \)         | Real & equal roots: exponential, divergent    | \[ x\left(t\right) = c_1 e^{-\omega_n \zeta t} + c_2 t e^{-\omega_n \zeta t} \] |
| \(\zeta \lt -1 \)       | Real & unequal roots: exponential, divergent  | \[ x\left(t\right) = c_1 e^{-\omega_n \left( \zeta + \sqrt{\zeta^2 - 1} \right)t} + c_2 e^{-\omega_n \left( \zeta - \sqrt{\zeta^2 - 1} \right)t} \] |

**Damping ratio effect on second order system**

Response of various second order systems to an impulse input.

Second-order systems are oscillatory if \( -1 \lt \zeta \lt +1 \).

Motion typically described by \(\omega_n\) and \(\zeta\)

\(T\), \(\omega_d\), \(\omega_n\), and \(\zeta\) are linked such that knowledge of any two will yield the other two.

![][08050]

![][08051]

![][08052]

2nd order system response to **unit step input** for **underdamped systems** ( \(0 \lt \zeta \lt +1 \) )

![][08053]

**Decay rates (for \(0 \lt \zeta \lt +1\) ) and Useful Insights**

| | |
|-|:--|
|**Time to decay** | \[\zeta \omega_n = \frac{\ln \frac{x_1}{x_2} }{t_2 - t_1} \Rightarrow \Delta t = \frac{\ln \frac{x_1}{x_2}}{\zeta \omega_n} \] |
|Time to \(\frac{1}{2}\) amplitude | \[ \equiv \Delta t_{\frac{1}{2}} = \frac{\ln \frac{2}{1}}{\zeta \omega_n} = \frac{0.6931}{\zeta \omega_n}  \] |
|Time to \(\frac{1}{10}\) amplitude | \[ \equiv \Delta t_{\frac{1}{10}} = \frac{\ln \frac{10}{1}}{\zeta \omega_n} = \frac{2.3026}{\zeta \omega_n}  \] |
|Time to \(\frac{1}{x}\) amplitude | \[ \equiv \Delta t_{\frac{1}{x}} = \frac{\ln x }{\zeta \omega_n}  \] |
|**\# cycles to decay** | \[\text{# cycles} = \frac{\Delta t }{T} = \frac{\Delta t \omega_d}{2 \pi} \] |
|\# cycles to \(\frac{1}{2}\) amplitude  | \[\equiv C_{\frac{1}{2}} = \frac{0.6931}{\zeta \omega_n}\frac{\omega_d}{2 \pi} = \frac{0.6931}{2 \pi  }\frac{\omega_d}{\zeta \omega_n} = \frac{0.1103}{\varepsilon} \] |
|\# cycles to \(\frac{1}{10}\) amplitude  | \[\equiv C_{\frac{1}{10}} = \frac{2.3026}{\zeta \omega_n}\frac{\omega_d}{2 \pi} = \frac{2.3026}{2 \pi  }\frac{\omega_d}{\zeta \omega_n} = \frac{0.3665}{\varepsilon} \] |
|\# cycles to \(\frac{1}{x}\) amplitude  | \[\equiv C_{\frac{1}{x}} = \frac{\ln x }{2 \pi }\frac{\omega_d}{\zeta \omega_n} \] |

Same analysis applies for exponential growth

For same \(\Delta t \)

\[ \frac{x_1}{x_2} = \frac{x_2}{x_3} = \frac{x_3}{x_4} = \dots \]

Therefore

\[ \frac{x_1}{x_3} = \frac{x_1}{x_2} \frac{x_2}{x_3} = \left( \frac{x_1}{x_2} \right)^2 \Rightarrow \mathrm{HCAR} = \sqrt{\text{full cycle amplitude ratio}}\]

\[
\begin{align}
\mathrm{HCAR} &\equiv \frac{x_1}{x_2} =  e^{\zeta \omega_n \left( t_2 - t_1 \right)} =  e^{\zeta \omega_n \left( \Delta t \right)} =  e^{\zeta \omega_n \left( \frac{T}{2} \right)} =  e^{\zeta \omega_n \left( \frac{2\pi}{2\omega_d} \right)} \\
&=  e^{\zeta \omega_n \left( \frac{\pi}{\omega_n \sqrt{1 - \zeta^2}} \right)} =  e^{\zeta \omega_n \left( \frac{\pi \zeta}{ \sqrt{1 - \zeta^2}} \right)} \\
&\Rightarrow \ln \frac{x_1}{x_2} = \frac{\pi \zeta}{ \sqrt{1 - \zeta^2}} \Rightarrow \zeta = \sqrt{\frac{\left( \ln \frac{x_1}{x_2} \right)^2}{\pi^2 + \left( \ln \frac{x_1}{x_2} \right)^2}} \\
\end{align}
\]

This can be applied in graphical form (transient peak ratio method)

### Determining Descriptive Parameters

Time domain metrics

![][08055]

||||
|-|-|-|
|Peak Value   | \(\mathrm{MP}\)  | largest value |
|Final Value  | \(\mathrm{FV}\)  | steady state value|
|Delay Time   | \(T_d\) | \(50%\) of final value|
|Rise Time    | \(T_r\) | \(10% - 90%\) of FV|
|Peak Time    | \(T_p\) | time to MP|
|\% Overshoot | \(\mathrm{PO}\)  | \( \frac{\mathrm{MP} - 1}{1} \times 100% \text{target value} = \text{unity} \) *target value = unity*|

**Method \#1** Basic Analysis

Note

\[ x\left(t\right) = A e^{-\zeta \omega_n t} \sin \left( \omega_d t + 0 \right) \]

\(\zeta \omega_n \) and \(\omega_d\) describe a time history

![][08058]

\[f_d = \frac{1}{T}\]

\[\omega_d = \frac{2\pi}{T} \]

\[\zeta \omega_n = \frac{\ln \frac{x_1}{x_2}}{\left(t_2 - t_1 \right)} \]

Easily measured values: can use any points on envelope

Define

\[\varepsilon \equiv \frac{\zeta \omega_n}{\omega_d} = \frac{\frac{\ln \frac{x_1}{x_2}}{\left(t_2 - t_1 \right)} }{\frac{2\pi}{T}} = \frac{T\ln \frac{x_1}{x_2}}{2\pi \left(t_2 - t_1 \right)} \]

where

\[ \left(t_2 - t_1 \right) = \frac{T}{2} \Rightarrow \frac{\zeta \omega_n}{\omega_d} = \frac{\ln \frac{x_1}{x_2}}{\pi} = \varepsilon = \ln \left[ x_1 / x_2 \right] / \pi \]

recall

\[\omega_d = \omega_n \sqrt{1 - \zeta^2} \]

\[\varepsilon = \frac{\zeta \omega_n}{\omega_n \sqrt{1 - \zeta^2}} =  \frac{\zeta}{ \sqrt{1 - \zeta^2}} \Rightarrow \varepsilon^2 = \frac{\zeta^2}{ 1 - \zeta^2} \Rightarrow \varepsilon^2 \left( 1 - \zeta^2 \right) = \zeta^2 \Rightarrow \varepsilon^2 = \zeta^2 \left[ 1 + \varepsilon^2 \right] \]

\[ \zeta = \sqrt{\frac{\varepsilon^2}{1 + \varepsilon^2}} \]

\[\omega_n = \frac{\zeta \omega_n}{\zeta} = \frac{\omega_d}{\sqrt{1 - \zeta^2}} \]

\[ \left| \frac{x_1}{x_2} \right| = \text{Half-Cycle Amplitude Ratio } \left( \mathrm{HCAR} \right) = e^{\zeta \omega_n \left(t_2 - t_1\right)}\]

**Method \#2** Transient Peak Ratio Analysis

1. Measure either *\(D\) or \(x\) distances as shown.

![][08067]

Example Calculation

![][08068]

2. Note ratio of adjacent peak values (transient peak ratios).

|||
|-:|:---|
| First \(\mathrm{TPR}\) | \[\frac{D_2}{D_1} = \frac{117-86}{117-80}=\frac{31}{37}=0.8378\] |
| Second \(\mathrm{TPR}\) | \[\frac{D_3}{D_2} = \frac{112-86}{117-86}=\frac{26}{31}=0.8387\] |
| Third \(\mathrm{TPR}\) | \[\frac{D_4}{D_3} = \frac{112-90}{112-86}=\frac{22}{26}=0.8462\] |

3. Average several TPRs.

Average \(\mathrm{TPR} = 0.8409\)

4. Use equation to find \(\zeta\):

\[ \zeta = \sqrt{\frac{\left( \ln \frac{x_1}{x_2} \right)^2}{\pi^2 + \left( \ln \frac{x_1}{x_2} \right)^2}} \] 

   a. Can use \(D_1/D_2\) or \(x_1/x_2\) ratios in above equation.

   b. In lieu of equation, use adjacent look-up curve to find \(\zeta\).

   c. Time ratio method works better with heavy damping.

![][08071]

**Method \#3** Multiple *TPR* Analysis

![][08072]

To determine damping ratio

* Use the \(m = 1 \) line when comparing the next ratio.

\[
\begin{align}
\frac{\Delta x_1}{\Delta x_0} &= \frac{2.5}{4.5} = 0.56 & \zeta = 0.16 \\
\frac{\Delta x_2}{\Delta x_1} &= \frac{1.5}{2.5} = 0.60 & \zeta = 0.14 \\
\end{align}
\]

* Use the \(m = 2 \) line for comparing every other peak ratio.

\[
\begin{align}
\frac{\Delta x_2}{\Delta x_0} &= \frac{1.5}{4.5} = 0.33 & \zeta = 0.16 \\
\frac{\Delta x_3}{\Delta x_1} &= \frac{1.0}{2.5} = 0.40 & \zeta = 0.14 \\
\end{align}
\]

**Method #4** Time Ratio Analysis

* If the damping ratio is between \(0.5\) and \(1.0\) (two or less overshoots), then the time ratio method can be used to determine frequency and damping ratio. Select a peak where the response if free.
* Note times for amplitude to reduce to \(73.6%\), \(40.9%\), and \(19.9%\) of the peak value.

![][08075]

* Form the time ratios \( \frac{t_2}{t_1} \), \( \frac{t_3}{t_1} \), and \( \frac{t_3 - t_2}{t_2 - t_1} \)
* Enter the next figure at the time ratio side to find \(\zeta\) for each time ratio.
* This technique is valid if the system transfer function has no zeros.
* If recorded measurements are not available and if the number of overshoots is between \(2\) and \(6\), then

\[
\zeta \approx \frac{7 - \mathrm{#overshoots}}{10}
\]
 
Time Ratio

![][08078]
**Frequency Time Products (\(\omega_n \Delta t_3\)), (\(\omega_n \Delta t_2\)), (\(\omega_n \Delta t_1\))**

**Method #5** Maximum Slope Analysis

![][08079]

![][08080]

* Calculation of \(\zeta\) somewhat sensitive to \(\Delta x_1\) measurement
* \(\omega_n = \frac{\omega_n \Delta t}{\Delta t}\) not too sensitive to \(\Delta x_1\)
* Best if \(0.5 \leq \zeta \leq 1.4\)
* Initial overshoot approximation: let (step inputs only) \( \mathcal{K} \equiv \frac{x_{\mathrm{peak}}}{x_{\mathrm{ss}}} - 1 \)

\[
\zeta = \sqrt{\frac{\left( - \frac{\ln \mathcal{K}}{\pi} \right)^2}{1 + \left( - \frac{\ln \mathcal{K}}{\pi} \right)^2}}
\]

**Method #6** Separated Real Root Analysis (when \(\zeta \gt 1\))

1. Determine several steady state \(\Delta X \left(t\right)\) values from time history

![][08084]

2. Plot \(\Delta X \) vs \(t\) on semi-log scale

![][08085]

3. After the faster root has decayed, the semi-log plot will be a straight line whose slope determines the slower root \(\left( \frac{1}{\tau_1} \right)\)

\[
\tau_1 = \frac{t_1 - t_2}{\ln \left(\frac{\Delta X_1}{\Delta X_2} \right)}
\]

4. Determine by extrapolating the straight line portion of the response to establish the values \(\left( \frac{1}{\tau_1} \right)\), \(\Delta\overline{X}_0\), & \(\Delta X_0^{\prime}\)

\[
\tau_2 = \tau_1 \left( \frac{\Delta\overline{X}_0}{\Delta X_0^{\prime}} \right)
\]

\[
\omega_n = \sqrt{\frac{1}{\tau_1}\frac{1}{\tau_2}} \text{ and } \zeta = - \frac{\left(\frac{1}{\tau_1} + \frac{1}{\tau_2} \right)}{2 \omega_n} = - \frac{\left( \frac{1}{\tau_1} + \frac{1}{\tau_2} \right)}{2 \sqrt{\frac{1}{\tau_1}\frac{1}{\tau_2}}}
\]

**Method #7** Modified Separated Real Root Analysis

* Method #6 is sensitive to errors in determining steady state values
* Alternate method is to avoid need for steady state value
* Define \( \Delta X \left(t \right) \equiv \left[ x \left(t + \Delta T \right) - x \left(t \right) \right] \) where \(\Delta T \) is a time increment

1. From time history, measure \(\Delta X \) values according to definition

![][08091]

\[
\Delta T = \left( t_1 - t_0 \right) = \left( t_2 - t_1 \right) \text{ , etc.}
\]

2. Plot\(\Delta X \left(t \right) \) vs time on semi-log scale

![][08092]

3. Use previous method to determine roots and characteristics

* Gross error will result if \(\zeta\) is actually \(\lt 1\)
* If \(\zeta\) is near \(1\), check results using time ratio or slope method

**Method \#8** Frequency Sweep Analysis

Determine \(\omega_n\) and \(\zeta\) using sinusoidal inputs.

* This "forced response" method is most useful when damping is heavy.
* For a second order system, output/input amplitude ratio and phase shift are a function of input frequency.

![][08093]

* Amplitude ratio peaks at "resonant" frequency, \(\omega_r\).
* Resonant peaks increase as \(\zeta\) decreases below \(0.707\).
* Peak amplitude ratio "rolls off" as \(\zeta\) increases above \(0.707\).
* Resonant frequency approaches natural frequency as damping decreases:

\[
  \omega_r = \omega_n \sqrt{ 1 - 2 \zeta^2 }
\]

* Phase shift = \(90°\) if excited at \(\omega_n\), regardless of damping ratio.

\[
  \zeta = \frac{1}{2} \frac{ \left( \omega_2 - \omega_1 \right) }{\omega_n}
\]

![][08094]

1. Using sinusoidal inputs excite system at \( \omega \) near \( \omega_n \)
2. Measure phase lag \( \left( \phi \right) \) of \( \frac{\text{output}}{\text{input}} \)

![][08096]

3. Excite system at another \( \omega \) near \( \omega_n \)
4. Again measure phase lag \( \left( \phi \right) \)

![][08097]

5. Plot \( \phi \) vs input frequency

![][08098]

6. \( \omega_n \) occurs at \( \phi = 90° \)

**Linearity Check /Accuracy Improvement**

1. On semi-log scale, plot ratio of initial amplitude to subsequent peak amplitudes at each half cycle \( \left( \text{points } a-e \right) \).
2. Fair straight line \( \left( f \right) \) through these points.

![][08099]

3. Draw line \( \left( g \right) \) parallel \( \left( f \right) \) intercepting the ordinate at \(\mathrm{TPR} = 1 \)
4. Average \(\mathrm{TPR}\) occurs at \( \frac{T}{2} \) on line \( \left( g \right) \)

## Complex Plane

Begin with sum of forces in spring-mass-damper example

\[
\begin{align}
  M \ddot{x} + D \dot{x} + K x &= f \left( t \right) \\
  \text{let } x &= e^{st}, \;\; \text{find transient solution} \\
  \left( Ms^2 + Ds + K \right) e^{st} &= 0  \\
\end{align}
\]

Apply quadratic equation to solve for roots

\[
  s_{1,2} = -\frac{D}{2M} \pm \sqrt{ \left( \frac{D}{2M} \right)^2 - \frac{K}{M} }
\]

Recall previous analogy

\[
  s_{1,2} = -\zeta \omega_n \pm j \omega_n \sqrt{ 1 - \zeta^2 }
\]

\[
  \tau = \frac{1}{\zeta \omega_n}
\]

\[
  - \frac{1}{\tau} \pm j \omega_d
\]

![][08104]

Location of Roots on Complex Plane

1. Line of constant damping ratio \(\zeta\), varying \(C_{\frac{1}{n}} \) and \(\omega_n\)
2. Line of constant \(\omega_n\), varying \(\zeta\)
3. Line of constant \(\omega_d\) and period \( \left( T \right) \)
4. Line of constant real part \( \left( \zeta\omega_n \right) \) and time to damp \( \left( T_{\frac{1}{n}} \right) \)

\[
  \sigma = \zeta \omega_n = \frac{1}{\tau} = \text{ damping rate}
\]

![][08106]

**Sample second order root plots and corresponding time histories**
(time histories represent trends only)

Examples of "two real roots"

![][08107]

**More sample second order root plots and corresponding time histories**

Examples of "imaginary roots"

![][08108]

## Parameter Conversions

For conversion of accelerometer measurements.

* For magnitude conversion substitute \( 2 \pi f \) for \( j \omega \) .
* Assumes linear spectra.
* Conversion factor should be squared for power spectra.

*Acceleration to velocity*

|to convert from | to | multiply by |
|:---------------|:---|:------------|
|\( \frac{\text{ft}}{\text{s}^2} \text{rms} \) | \( \frac{\text{ft}}{\text{s}} \text{rms} \) | \( \frac{1}{j\omega} \) |
|\( \frac{\text{ft}}{\text{s}^2} \text{rms} \) | \( \frac{\text{in}}{\text{s}} \text{rms} \) | \( \frac{12}{j\omega} \) |
|\( \frac{\text{ft}}{\text{s}^2} \text{rms} \) | \( \frac{\text{in}}{\text{s}} \text{peak} \) | \( \frac{16.97}{j\omega} \) |
|\( \text{g rms} \) | \( \frac{\text{in}}{\text{s}} \text{rms} \) | \( \frac{386}{j\omega} \) |
|\( \text{g rms} \) | \( \frac{\text{in}}{\text{s}} \text{peak} \) | \( \frac{545.8}{j\omega} \) |
|\( \frac{\text{m}}{\text{s}^2} \text{rms} \) | \( \frac{\text{mm}}{\text{s}} \text{rms} \) | \( \frac{1000}{j\omega} \) |
|\( \frac{\text{m}}{\text{s}^2} \text{rms} \) | \( \frac{\text{mm}}{\text{s}} \text{rms} \) | \( \frac{1414}{j\omega} \) |
|\( \text{g rms} \) | \( \frac{\text{mm}}{\text{s}} \text{peak} \) | \( \frac{13865.7}{j\omega} \) |


*Acceleration to Displacement*

|to convert from | to | multiply by |
|:---------------|:---|:------------|
|\( \frac{\text{ft}}{\text{s}^2} \text{rms} \) | \( \text{in rms} \) | \( \frac{12}{ \left( j\omega \right)^2} \) |
|\( \frac{\text{ft}}{\text{s}^2} \text{rms} \) | \( \text{in p-p} \) | \( \frac{33.9}{ \left( j\omega \right)^2} \) |
|\( \frac{\text{ft}}{\text{s}^2} \text{rms} \) | \( \text{mil p-p} \) | \( \frac{33.9\mathrm{E}03}{ \left( j\omega \right)^2} \) |
|\( \text{g rms} \) | \( \text{in rms} \) | \( \frac{386}{ \left( j\omega \right)^2} \) |
|\( \text{g rms} \) | \( \text{in p-p} \) | \( \frac{1091.6\mathrm{E}03}{ \left( j\omega \right)^2} \) |
|\( \text{g rms} \) | \( \text{mil p-p} \) | \( \frac{1091.6\mathrm{E}06}{ \left( j\omega \right)^2} \) |
|\( \frac{\text{m}}{\text{s}^2} \text{rms} \) | \( \text{mm rms} \) | \( \frac{1000}{ \left( j\omega \right)^2} \) |
|\( \frac{\text{m}}{\text{s}^2} \text{rms} \) | \( \text{mm p-p} \) | \( \frac{2828}{ \left( j\omega \right)^2} \) |
|\( \frac{\text{m}}{\text{s}^2} \text{rms} \) | \( \text{micron p-p} \) | \( \frac{2828\mathrm{E}03}{ \left( j\omega \right)^2} \) |

\(\mathrm{E} = \text{engineering exponent} \left(\times 10 \_\_ \right) \)

\(\text{g} = 32.174 \frac{\text{ft}}{\text{s}^2} \)

\(\text{in} = \text{inches} \)

\(\text{mil} = \text{thousandths of an inch} \)

\(\text{mm} = \text{millimeters} \)

\(\text{p-p} = \text{peak-to-peak} \)

\(\text{rms} = \text{root mean square} \)

## Vibration Nomographs

**Vibration Nomograph equations**

**For British** [\(V\) in \( \frac{\text{inches}}{\text{sec}} \) ], [\(d\) in \( \text{inches} \)]

\[
\begin{align}
V &= \frac{386 g}{2 \pi f} \\
d &= \frac{386 g}{\left( 2 \pi f \right)^2} \\
&\text{where } 386 = \text{earth's gravitational pull} \left[ \frac{\text{in}}{\text{sec}^2}  \right] \\
\end{align}
\]

**For metric** [\(V\) in \( \frac{\text{mm}}{\text{sec}} \) ], [\(d\) in \( \text{mm} \)] 

\[
\begin{align}
V &= \frac{9800 g}{2 \pi f} \\
d &= \frac{9800 g}{\left( 2 \pi f \right)^2} \\
&\text{where } 9800 = \text{earth's gravitational pull} \left[ \frac{\text{mm}}{\text{sec}^2}  \right] \\
\end{align}
\]

**Nomograph - British Units**

![][08109]

**Nomograph - Metric Units**

![][08110]

## References

|||
|-|---------------|
|8.7.1 |Lawless, Alan R., *Math and Physics for Flight Testers*, "Chapter 9, Motion Analysis," National Test Pilot School, Mojave CA, 1999.|
|8.7.2 |Ward, Don, *Introduction to Flight Testing*, Texas A&M, Elsevier, 1993.|
|8.7.3 |Lang, George F., *Understanding Vibration Measurements*, Application Note 9, Rockland Scientific Corporation, Rockleigh, New Jersey, December 1978.|
|8.7.4 |*The Fundamentals of Modal Testing*, Application Note 243-3, Hewlett-Packard Company,|

**Additional Reading**

||
|-|
|Hartog, J.P. Den, *Mechanical Vibrations*, Dover Publications, New York, New York, 1984.|
|Jacobsen, Ludik S. and Ayre, Robert S., *Engineering Vibrations*, McGraw-Hill Book Company, New York, New York, 1958.|
|Meirovitch, Leonard, *Elements of Vibration Analysis*, McGraw-Hill Book Company, New York, New York, 1986.|
|Meirovitch, Leonard, *Analytical Methods in Vibrations*, Macmillan Publishing Company, New York, New York, 1967.|
|Myklestad, N.O., *Vibration Analysis*, McGraw-Hill Book Company, New York, New York, 1944.|

  [08001]: media/08/image1.svg
  [08002]: media/08/image2.svg
  [08003]: media/08/image3.png
  [08004]: media/08/image4.png
  [08005]: media/08/image5.png
  [08006]: media/08/image6.png
  [08007]: media/08/image7.png
  [08008]: media/08/image8.png
  [08009]: media/08/image9.png
  [08010]: media/08/image10.png
  [08011]: media/08/image11.png
  [08012]: media/08/image12.png
  [08013]: media/08/image13.svg
  [08014]: media/08/image14.png
  [08015]: media/08/image15.png
  [08016]: media/08/image16.png
  [08017]: media/08/image17.png
  [08018]: media/08/image18.png
  [08019]: media/08/image19.png
  [08020]: media/08/image20.png
  [08021]: media/08/image21.png
  [08022]: media/08/image22.png
  [08023]: media/08/image23.png
  [08024]: media/08/image24.png
  [08025]: media/08/image25.png
  [08026]: media/08/image26.png
  [08027]: media/08/image27.png
  [08028]: media/08/image28.png
  [08029]: media/08/image29.png
  [08030]: media/08/image30.png
  [08031]: media/08/image31.png
  [08032]: media/08/image32.png
  [08033]: media/08/image33.png
  [08034]: media/08/image34.png
  [08035]: media/08/image35.png
  [08036]: media/08/image36.png
  [08037]: media/08/image37.png
  [08038]: media/08/image38.png
  [08039]: media/08/image39.png
  [08040]: media/08/image40.png
  [08041]: media/08/image41.png
  [08042]: media/08/image42.png
  [08043]: media/08/image43.png
  [08044]: media/08/image44.png
  [08045]: media/08/image45.png
  [08046]: media/08/image46.png
  [08047]: media/08/image47.png
  [08048]: media/08/image48.svg
  [08049]: media/08/image49.png
  [08050]: media/08/image50.png
  [08051]: media/08/image51.png
  [08052]: media/08/image52.png
  [08053]: media/08/image53.png
  [08054]: media/08/image54.png
  [08055]: media/08/image55.png
  [08056]: media/08/image56.png
  [08057]: media/08/image57.png
  [08058]: media/08/image58.png
  [08059]: media/08/image59.png
  [08060]: media/08/image60.png
  [08061]: media/08/image61.png
  [08062]: media/08/image62.png
  [08063]: media/08/image63.png
  [08064]: media/08/image64.png
  [08065]: media/08/image65.png
  [08066]: media/08/image66.png
  [08067]: media/08/image67.png
  [08068]: media/08/image68.png
  [08069]: media/08/image69.png
  [08070]: media/08/image70.png
  [08071]: media/08/image71.png
  [08072]: media/08/image72.png
  [08073]: media/08/image73.png
  [08074]: media/08/image74.png
  [08075]: media/08/image75.png
  [08076]: media/08/image76.png
  [08077]: media/08/image77.png
  [08078]: media/08/image78.png
  [08079]: media/08/image79.png
  [08080]: media/08/image80.png
  [08081]: media/08/image81.png
  [08082]: media/08/image82.png
  [08083]: media/08/image83.png
  [08084]: media/08/image84.png
  [08085]: media/08/image85.png
  [08086]: media/08/image86.png
  [08087]: media/08/image87.png
  [08088]: media/08/image88.png
  [08089]: media/08/image89.png
  [08090]: media/08/image90.png
  [08091]: media/08/image91.png
  [08092]: media/08/image92.png
  [08093]: media/08/image93.png
  [08094]: media/08/image94.png
  [08095]: media/08/image95.png
  [08096]: media/08/image96.png
  [08097]: media/08/image97.png
  [08098]: media/08/image98.png
  [08099]: media/08/image99.png
  [08100]: media/08/image100.png
  [08101]: media/08/image101.png
  [08102]: media/08/image102.png
  [08103]: media/08/image103.png
  [08104]: media/08/image104.png
  [08105]: media/08/image105.png
  [08106]: media/08/image106.png
  [08107]: media/08/image107.png
  [08108]: media/08/image108.png
  [08109]: media/08/image109.png
  [08110]: media/08/image110.png

<!--chapter:end:08-motion-analysis.Rmd-->

# Material Strength
 

**Abbreviations**

| | |
|:-|:----------|
|\(A\)| cross-sectional area \(\left[\text{ft}^2\right]\)|
|\(\mathrm{DLL}\)| design load limit|
|\(E\)| modulus of elasticity or Young's Modulus \(\left[\frac{\text{lb}}{\text{ft}^2}\right]\)|
|\(e\)| strain (non-dimensional)|
|\(\mathrm{EK}\)| gage factor|
|\(\mathrm{GW}\)| gross weight|
|\(\mathrm{KU}\)| effective gust velocity \(\left[\frac{\text{ft}}{\text{sec}}\right]\)|
|\(L\)| length \(\left[\text{ft}\right]\)|
|\(L\)| lift force|
|\(N_{zb}\)| normal load factor, along aircraft z-axis|
|\(P\)| applied load \(\left[\text{lb}\right]\)|
|\(R\)| unstrained resistance|
|\(\Delta R\)| change in resistance due to load|
|\(S\)| wing area \(\left[\text{ft}^2\right]\)|
|\(V\)| flight speed|
|\(V_e\)| equivalent airspeed|
|\(V_s\)| stall speed|
|\(W\)| aircraft weight|
|\(\frac{W}{S}\)| wing loading|
|\(\sigma\)| air density \(\left[\frac{\text{slugs}}{\text{ft}^3}\right]\)|
|\(\sigma\)| stress \(\left[\frac{\text{lb}}{\text{ft}^2}\right]\)|
|\(\nu\)| Poisson's ratio|

## Loads Terminology

| | |
|:-|:----------|
|Annealing |A heat treatment that eliminates the effects of cold working.|
|Brittleness| Measure of a material's lack of ductility (by one definition breakage at five percent or less strain implies brittleness).|
|Cold Working| Deformation of a metal below its recrystallization temp., thereby strengthening and reshaping it.|
|Creep Rate| The rate at which a material continues to stretch when stress is applied at high temperature.|
|Design Load Limit | Maximum loads expected in normal service.|
|Ductility| Ability of a material to deform without breaking.|
|Durability| Ability to resist cracking, corrosion, thermal degradation, delamination, wear, and the effects of foreign object damage over time.|
|Elastic Deformation| Deformation of the material that is recovered when the applied load is removed.|
|Elasticity| Ability of a material to return to its undeformed shape after all loads have been removed.|
|Endurance Limit| The stress below which a material will not fail in a fatigue test.|
|Factor of Safety| Ratio of the predicted failure stress to the maximum stress anticipated in normal operation (\(\mathrm{DLL}\)). For aircraft, the Factor of Safety is typically 1.5 \(\mathrm{DLL}\).|
|Fatigue| The failure of a material when subjected to repeated loads less than the ultimate sustainable load. This effect is presented in an \(S-N\) diagram such as ![][09001]|
|Fatigue Life| The number of cycles at a particular stress before a material fails by fatigue.|
|Hardness| Resistance to plastic deformation resulting from impact loads.|
|Impact Energy| The energy required to fracture a specimen when the load is suddenly applied.|
|Limit Stress| The maximum stress where the Modulus of Elasticity remains constant (proportional limit).|
|Margin of Safety| Any load-bearing capability greater that the ultimate load, calculated as \( \frac{\text{Failure load as a factor of } \mathrm{DLL}}{1.5 \mathrm{ DLL}}  - 1 \)|
|Notch Sensitivity| Measure the effect of a notch on impact energy|
|Plastic Deformation | Permanent deformation of a material applied load. Plasticity Material deformation characteristics beyond its elastic limit.|
|Resilience| A measure of the amount of energy a material can absorb elastically in a unit volume of the material. |
|Rupture Time| The time required for a specimen to fail by creep at a particular temperature and stress.|
|Stiffness| A qualitative of the elastic deformation produced.|
|Strain (\(e\))| The deformation of a material under an applied load.|
|Strength| Ability to withstand external loads without failure.|
|Stress (\(\sigma\)) | The ability of a material to react a force distributed over some area.|
|Tempering| A low-temperature heat treatment which reduces hardness.|
|Tensile Strength |The stress that corresponds to the maximum load in a tensile test.|
|Thermal Stress| Stress resulting from expansion (strain) of a material subjected to heating.|
|Toughness |Total energy absorbed before failure occurs (area under the stress-strain curve).|
|Transition| Temperature The temperature below which a material behaves in a brittle manner in an impact test.|
|True Strain| The actual strain produces when a load is applied.|
|Ultimate Stress| The stress point at which additional load cannot be reacted.|
|Wing Loading| Aircraft weight per wing area, \(\frac{W}{S}\), a ready measure of air loads for steady level flight.|
|Yield Stress| The stress applied to a material that just causes permanent plastic deformation.|

## Material Stress & Strain

**Stress** (\(\sigma\)) is the ability of a material to react a force distributed over some area. In the simple axial load case this can be presented as

\[
  \sigma = \frac{P}{A}
\]

\[
  \begin{align}
  \text{where } \sigma &= \text{the applied axial load} \\
  A &= \text{cross-sectional area over which the load is applied} \\
  \end{align}
\]

**Strain** (\(e\)) is the deformation of a material under an applied load. In the basic form this can be presented as

\[
  e = \frac{\Delta L}{L}
\]

where \(\Delta L\) is the change in dimension due to some load, and \(L\) is the original dimension

The **stress-strain relationship** is linear (proportional) for a large percentage of the applied load to the maximum, as expressed by the **Modulus of Elasticity** (**Young's Modulus**)

\[
  E = \frac{\sigma}{e}
\]

A typical stress & strain relationship for a material is illustrated as

![][09002]

## V-n Diagram

**Flight Path Normal Load Factor** \( \left(N_{zw} \right) \) can be expressed during level flight, as

\[
  \begin{align}
  N_{zw} &= \frac{1}{\cos \phi} = \frac{L}{W} \\
  \text{where } C_L &= \text{lift coefficient} \\
  F_n &= \text{net thrust} \\
  L &= \text{lift force} = \text{wing lift} + \text{thrust lift} = C_L qS + F_n \sin \alpha_F \\
  q &= \text{dynamic pressure} \\
  S &= \text{wing area} \\
  W &= \text{gross weight} \\
  \alpha_F &= \text{incidence angle between thrust line and relative wind} \\
  \phi &= \text{angle of bank}
  \end{align}
\]


**Body Axis Normal Load Factor**  \( \left(N_{zb} \right) \) is calculated as

\[
  \begin{align}
  N_{zb} &= \frac{N_{zw} - N_{xb} \sin \alpha}{\cos \alpha} \\
  \text{where } N_{xb} &= \text{load factor along aircraft body x-axis} \\
  \alpha &= \text{angle of attack} \\
  \end{align}
\]

For the simplified case of negligible thrust lift, the maximum achievable \( N_{zb} \) at any flight speed can be calculated as

\[
  \begin{align}
  N_{zb} &= \left( \frac{V}{V_s} \right)^2 \\
  \text{where } &\text{both speeds must be the same units} \\
  &\text{(i.e., true, equivalent, calibrated)} \\
  V &= \text{flight airspeed} \\
  V_s &= \text{stall airspeed} \\
  \end{align}
\] 

A general normal load flight envelope (V-n diagram) would appear as

* The envelope typically varies with:
  * asymmetric loading
  * aircraft configuration
  * for air loads other than along the normal axis
  * and other structural, system, and safety considerations.

![][09003]

* It is frequently desirable to correct measured (test) \( N_{zb} \) data to a standard weight or design gross weight ( \( \mathrm{GW} \) ) using the relationship

\[
  \begin{align}
  N_{zb} &= N_{zw_{\text{test}}} \frac{W_t}{W_s} \\
  \text{where } W_t &= \text{test weight} \\
  W_s &= \text{standard weight} \\
  \end{align}
\]

* The increase in load factor due to a vertical gust \( \Delta n \) is calculated as

\[
  \begin{align}
  \Delta n &= \frac{0.155 m V_e \left( \mathrm{KU} \right) }{\frac{W}{S}} \\
  \text{where } m &= \text{slope of } C_{L_{\alpha}} \text{ curve} \\
  V_e &= \text{equivalent airspeed (knots)} \\
  \mathrm{KU} &= \text{effective gust velocity (fps)} \\
  \frac{W}{S} &= \text{wing loading (psf)} \\
  \end{align}
\]

## Strain Gages

The three strain gage configurations most commonly used are

![][09004]

Strain \( \left( e \right) \) is measured using the electrical resistance measured via the strain gage in a material subject to load. For the uniaxial gauge

\[
  \begin{align}
  K &= \frac{ \left( \frac{\Delta R}{R} \right) }{e} \\
  \text{where } K &= \text{gage factor (provided by manufacturer)} \\
  R &= \text{unstrained resistance} \\
  \Delta R &= \text{change in resistance due to load} \\
  & + \Delta R \text{ for tension} \\
  \end{align}
\]

* For the bi-axial gage oriented coincident with the principal axes (maximum strain), each leg of the gage is analyzed as a uniaxial gage using the above equation for the principle strains. The associated stresses are

\[
  \begin{align}
  \sigma_{\text{max}} &= E \frac{e_{\text{max}} + \nu e_{\text{min}}}{1 - \nu^2} \\
  \sigma_{\text{min}} &= E \frac{e_{\text{min}} + \nu e_{\text{max}}}{1 - \nu^2} \\
  \text{where } & e_{\text{max}} \text{ and } e_{\text{min}} \text{ are the measured principal strains in the appropriate legs of the bi-axial gage} \\
  E &= \text{Young's Modulus of the material} \\
  \nu &= \text{Poisson's ratio for the material (ratio of compression and tension strains)} \\
  \end{align}
\]

* For the Rosette gage, the principal strains and stresses are derived as

\[
  \begin{align}
  e_{\text{max,min}} &= 0.5 \left(e_a + e_c \right) \pm 0.5 \sqrt{\left(e_a - e_c \right)^2 + \left(2e_b - e_a - e_c \right)^2  } \\
  \sigma_{\text{max,min}} &= 0.5 E \left[ \frac{e_a + e_c}{1 - \nu} \right] \pm 0.5 \frac{\sqrt{\left(e_a - e_c \right)^2 + \left(2e_b - e_a - e_c \right)^2  }}{1 - \nu} \\
  \text{where } & e \text{ denotes the strain in each of the three legs of the Rosette} \\
  &\text{(+ is used for the maximum and - for the minimum)} \\
\end{align}
\]

To accurately measure the very small resistance changes in a strain gage, a *Wheatstone Bridge* is typically used

![][09007]

## References

| | |
|-|---------------|
|9.1| Dole, Charles E., *Fundamentals of Aircraft Material Factors*, University of Southern California, Los Angeles, California, 1987.|
|9.2| Norton, William J., *Structures Flight Test Handbook*, AFFTC-TIH-90-001, Air Force Flight Test Center, Edwards AFB, California, November 1990.|

**Additional Reading**

||
|-|
|*Military Specification Airplane Strength and Rigidity - General Specification*, MIL-A-8860.|
|*Military Specification Airplane Strength and Rigidity, Sonic Fatigue*, MIL-A-008893.|

 

  [09001]: media/09/image1.png {width="2.9055555555555554in" height="1.6041666666666667in"}
  [09002]: media/09/image2.png {width="4.395138888888889in" height="2.5729166666666665in"}
  [09003]: media/09/image3.png {width="4.520138888888889in" height="2.8118055555555554in"}
  [09004]: media/09/image4.png {width="4.363888888888889in" height="2.0208333333333335in"}
  [09007]: media/09/image7.png {width="4.499305555555556in" height="2.3125in"}

<!--chapter:end:09-material-strength.Rmd-->

# Reciprocating Engines

## Recurring Abbreviations and Terminology

**Abbreviations**

| | |
|:-|:-----------|
|\(\mathrm{BHP}_{\text{alt}}\)|brake horsepower at maximum altitude where test RPM and MP can be maintained.|
|\(\mathrm{BHP}\)|brake horsepower (measured at engine crankshaft)|
|\(\mathrm{BHP}_{c}\)|chart brake horsepower|
|\(\mathrm{BHP}_{s}\)|brake horsepower at standard conditions|
|\(\mathrm{BHP}_{\text{sl max}}\)|maximum brake horsepower at standard sea level conditions (for any given RPM)|
|\(\mathrm{BHP}_{t}\)|brake horsepower at test conditions|
|\(\mathrm{BSFC}\)|brake specific fuel consumption (fuel flow/horsepower/ hour)|
|\(\mathrm{HP}\)|horsepower \( \left( = 550 \frac{\text{ft-lb}}{\text{sec}} \right) \)|
|\(M\)|freestream Mach number|
|\(\mathrm{MP}\)|manifold pressure, also \(\mathrm{MAP}\)|
|\(P\)|power output \( \left[ \frac{\text{ft-lb}}{\text{sec}} \text{ or HP} \right] \)|
|\(P_a\)|ambient pressure|
|\(P_{ts}\)|standard day total (ram) pressure|
|\(P_{tt}\)|test day total (ram) pressure|
|\(q\)|dynamic pressure|
|\(Q\)|torque \( \left[ \frac{\text{ft-lb}}{\text{sec}} \right] \)|
|\(\mathrm{SHP}\)|shaft horsepower (measured at propeller shaft)|
|\(T_{as}\)|standard day ambient temperature (absolute)|
|\(T_{at}\)|test day ambient temperature (absolute)|
|\(T_{cs}\)|standard day carburetor temperature (absolute)|
|\(T_{ct}\)|test day carburetor temperature (absolute)|
|\(V_T\)|freestream true velocity|
|\(\eta_r\)|carburetor ram inlet efficiency|
|\(\rho_a\)|ambient density|
|\(\Delta \mathrm{BHP}_{\text{cat}}\)|change in brake horsepower due to carb. temp. change|
|\(\Delta \mathrm{BHP}_{\text{mp}}\)|change in brake horsepower due to manifold pressure change|
|\(\Delta \mathrm{MP}_{\Delta t}\)|change in manifold pressure due to temperature change|
|\(\Delta t\)|change between test and standard temperature \(\left( T_{at} - T_{as} \right)\) |
|\(C\)|manifold pressure correction factor|
|\(\text{In Hg}\)|inches of mercury (manifold pressure)|
|\(\mathrm{RPM}\)|revolutions per minute|

 

**Terminology**

| | |
|:-|:------|
|Bore |Piston diameter|
|Critical Altitude|The altitude at which a supercharged (or turbocharged) engine can no longer: a) maintain sea level manifold pressure, or b) maximum allowable horsepower.|
|Detonation|An operating condition where combinations of excessive temperature, high manifold pressure, and low RPM cause explosive fuel burn, large internal pressure pulses, and subsequent engine damage.|
|Displacement|Total volume swept by all cylinders, measured in either cubic inches or liters.|
|Manifold Pressure|Pressure of fuel-air mixture passing through intake manifold, typically measured in absolute gauge pressure \( \left( \text{In Hg or } \frac{\text{lb}}{\text{in}^2} \right) \).|
|Mixture Ratio|Ratio of \( \left[ \frac{\text{fuel weight}}{\text{air weight}} \right] \) passing through the intake manifold. This ratio must be between \(0.05\) and \(0.125\) to burn. Best power typically occurs at mixture ratio of \(0.075\) to \(0.08\). Best economy typically occurs at a ratio of \(0.0625\). To provide sufficient cooling, the mixture ratio is usually greatly increased from best economy when operating at very high or very low power settings (a.k.a. auto rich). |
|Reduction Gear|Gearing between the engine crankshaft and propeller shaft that reduces the rotation speed going to the propeller.|
|Stroke |Linear distance traveled by piston.|
|Supercharger|A mechanically driven compressor that boosts the ambient air pressure to provide the engine with higher power output.|
|Turbocharger|Also known as a turbo supercharger, it is similar to a super charger except that the compressor is driven by engine exhaust pressure.|

## Reciprocating Engine Modeling
For any given engine design, power output is primarily a function of the product of engine speed \( \left( \mathrm{RPM} \right)\) and intake manifold pressure \( \left( \mathrm{MP} \right)\). 
Smaller but significant effects are due to the fuel/air density \( \left( \rho_{f/a} \right)\) and exhaust back pressure (which is essentially ambient pressure, \(P_a\) ). 
Less significant effects are due to the condition of the engine itself and include such factors as ignition quality & timing, piston ring leakage, fuel grade, and oil viscosity.
Engine models have various levels of sophistication which can account for the four most significant factors listed above. 
These models can be presented graphically or analytically. 
Figure 10.2a shows a typical **graphic power model** for determining reciprocating engine \(\mathrm{BHP}\).

1. The left-hand chart shows the fundamental relation between \(\mathrm{BHP}\) and the product of \(\mathrm{RPM}\) and \(\mathrm{MP}.\) Enter with \(\mathrm{MP}\) and \(\mathrm{RPM}\) to obtain point \(B\) and the associated "base brake horse power" \( \left( \mathrm{BHP}_B \right)\) at sea level standard day pressure and temperature.
2. Transfer this \( \left( \mathrm{BHP}_B \right)\) value to point \(B^1\) on the ordinate of the right hand chart.
3. Enter the right hand chart with the same \(\mathrm{MP}\) & \(\mathrm{RPM}\) to obtain point \(A\) and the associated brake horsepower at altitude \( \left( \mathrm{BHP}_A \right)\).
4. Connect points \(B^1\) and \(A\) with a straight line.
5. Enter the abscissa at the test pressure altitude, locate point \(C\), and read the corresponding "chart horsepower" \( \left( \mathrm{BHP}_C \right)\). \(\mathrm{BHP}_C\) is the sea level power corrected to the reduced back pressure conditions at altitude. It does not account for non-standard temperatures.
6. To correct for non-standard air temperature, subtract \(1%\) from \(\mathrm{BHP}_C\) for each \(6°\text{C}\) warmer than test altitude standard temperature. Conversely, add \(1%\) to \(\mathrm{BHP}_\text{C}\) for each \(6°\text{C}\) cooler than standard. For convenience, the lower right hand chart of Figure 10.2a illustrates standard temperature as a function of pressure altitude.

![][10001]

Figure 10.2a Engine Performance Chart for Continental IO360D

An **analytic power model** of a reciprocating engine should match the graphic model.
Its principle application is in automating the power determination process rather than manually performing graphic lookups.

1. The left hand chart shows that \(\mathrm{BHP}_B\) is a linear function of \(\mathrm{MP}\), but it is not necessarily a linear function of \(\mathrm{RPM}\). 
Extrapolating the \(\mathrm{RPM}\) curves towards low manifold pressure illustrates their convergence to a common point. 
This left hand chart can be summarized with the equation.

\[
\mathrm{BHP}_B = \left[ a \left( \mathrm{RPM} \right)^2 + b \left( \mathrm{RPM} \right) + c \right] \left[ \mathrm{MP} - e \right] + d
\]

\(a\) through \(e\) are determined from the graph or from separate engine tests.

2. In a similar fashion, calculate

\[
\mathrm{BHP}_A = \left[ a \left( \mathrm{RPM} \right)^2 + b \left( \mathrm{RPM} \right) + c \right] \left[ \mathrm{MP} \right]
\]

3. Based on the direct relation between available power and density, calculate chart horsepower as

\[
\mathrm{BHP}_C = \mathrm{BHP}_B \left[\mathrm{BHP}_A + \mathrm{BHP}_B \right] \left[ \frac{1 - \sigma_A}{1 - \sigma_D} \right] 
\]

where \(\sigma_D\) is the standard atmosphere density ratio at the operating pressure altitude \(\left(H_c\right)\).
For convenience, this calculation is presented below for flight in the tropopause, with \(H_c\) in feet

\[
\sigma_D = \left[ 1 - 6.876 \times 10^{-6} H_c \right]^{4.2558}
\]

\(\sigma_A\) is the density ratio corresponding to point \(A\) and is calculated as

\[
\sigma_A = 0.117 + \frac{\mathrm{BHP}_A}{\mathrm{BHP}_{\text{sl max}}}
\]

where \(\mathrm{BHP}_{\text{sl max}}\) is the full-throttle sea level power at the \(\mathrm{RPM}\) in question. 
This value is located towards the right side of the \(\mathrm{BHP}_B\) chart.

4. The final step in determining test day power \( \left( \mathrm{BHP}_t \right) \) is to correct for non-standard ambient absolute temperature \(\left( T_a \right)\)

\[
\mathrm{BHP}_t = \mathrm{BHP}_C \sqrt{ \frac{T_{as}}{T_{at}} }
\]

where \( T_{as} \) is the standard absolute ambient temperature at the test altitude, and, below the tropopause, is calculated as \( T_{as} = 288.15 - 0.001\,9812 H_c  \).

The **fuel flow model** is centered around the brake specific fuel consumption \( \left( \mathrm{BSFC} \right) \) defined as

\[
\mathrm{BSFC} \equiv \frac{\text{fuel flow}}{\text{power}} \left( \frac{ \frac{\text{lb}}{\text{hr}} }{\mathrm{BHP}} \right)
\]

Figure 10.2b shows the basic effect of \(\mathrm{RPM}\) and \(\mathrm{BHP}\) on \(\mathrm{BSFC}\) (ref 10.5.4).

* At any given \(\mathrm{BHP}\), operating at lower \(\mathrm{RPM}\)s reduces mechanical friction and therefore \(\mathrm{BSFC}\).
* At any given \(\mathrm{RPM}\), operating at very low \(\mathrm{BHP}\) increases the percentage of piston work overcoming friction and therefore increases \(\mathrm{BSFC}\).
* Operation at high \(\mathrm{BHP}\) also increases \(\mathrm{BSFC}\), but this is due to the fuel enrichment required to prevent detonation at high loads.

![][10009]

Figure 10.2b Effect of \(\mathrm{RPM}\) and \(\mathrm{BHP}\) on \(\mathrm{BSFC}\)

The same effects can be modeled as shown in Figure 10.2c (ref 10.5.5).

* Not shown on these figures are the possible altitude and temperature effects. Flight testers rarely need to validate these models throughout the engine's working range. Instead, testers typically evaluate \(\mathrm{BSFC}\) only at the combinations of \(\mathrm{RPM}\) and \(\mathrm{MP}\) recommended by the manufacturer to give the desired power output.

![][10010]

Figure 10.2c \(\mathrm{BSFC}\) Curves for a Typical Supercharged Airplane Engine

## Reciprocating Engine Power Standardization (ref 10.5.4)

Correcting from test day to standard day power available uses one of several methods, depending on the test conditions.

Some useful insights are summarized below.

* **In all cases, test day \(\mathrm{RPM}\) must equal standard day \(\mathrm{RPM}\).** There are no corrections if this requirement is violated.
* The effect of density on power output at wide open throttle has been empirically shown to be, (ref. 10.5.6)

\[
\mathrm{BHP}_{\text{alt}} = \mathrm{BHP}_{\text{sl max}} \left( 1.1324 \sigma - 0.1324 \right)
\]

* The above correction is not typically applied to test data since test and standard day pressure altitudes \( \left( H_c \right) \) are usually the same. Instead, most standardization requirements center around correcting to standard temperature.
* Engine power is actually related to the carburetor air temperature. The difference between test and standard day carburetor temperature equals the difference between test and standard day ambient temperature \( \left( T_{ct} - T_{cs} = T_{at} - T_{as} \right) \).
* With proper design, most of the freestream dynamic pressure \( \left( q \right) \) is converted into additional pressure at the carburetor and is known as "ram" effect. Above the critical altitude (where full throttle operation does not generate maximum manifold pressure), ram effect can be used to increase manifold pressure and therefore power output.

The different power standardization methods are described below.

**Partial Throttle Standardization.** If the test engine is set at some partial throttle setting to achieve a specific manifold pressure, then the same \(\mathrm{MP}\) should be achievable on standard day with a slightly different throttle setting. Calculate standard day power \( \left( \mathrm{BHP}_s \right) \) as

\[
\mathrm{BHP}_s = \mathrm{BHP}_t \left( \frac{T_{ct}}{T_{cs}} \right)^n
\]

* \( T_{cs} \) is the standard day carburetor absolute temperature, \( T_{cs} = T_{as} - T_{at} + T_{ct} \)
* \(n\) is the power exponent, usually \(0.5\)

This correction does not address changes in back pressure, so \( H_{c \text{ test}} = H_{c \text{ std}} \)

**Full Throttle Standardization** applies only if test and standard pressure altitude are equal. If the engine is operated full throttle on a test day, then the change in ambient temperature would generate a power change due to carburetor air temperature \( \left( \Delta \mathrm{BHP}_{\mathrm{cat}} \right) \) and manifold pressure changes \( \left( \Delta \mathrm{BHP}_{\mathrm{mp}} \right) \). Calculate standard day power \( \left( \Delta \mathrm{BHP}_s \right) \) as

\[
\mathrm{BHP}_s = \mathrm{BHP}_t + \mathrm{BHP}_{\mathrm{cat}} + \mathrm{BHP}_{\mathrm{mp}}
\]

The first correction is another form of the previous constant \(\mathrm{MP}\) correction

\[
\mathrm{BHP}_{\mathrm{cat}} = \mathrm{BHP}_t \left[ \left( \frac{T_{ct}}{T_{cs}} \right)^n - 1 \right]
\]

The second (manifold pressure) correction accounts for two effects:

1. For supercharged engines, correct for the change in pressure ratio of the supercharger due to inlet temperature changes.
2. For all engines operating below maximum \(\mathrm{MP}\), correct for the change in air inlet ram pressure ratio due to flight Mach number changes.

\[
\mathrm{BHP}_{\mathrm{mp}} = \mathrm{BHP}_t \left( \frac{\mathrm{MP}_s}{\mathrm{MP}_t} -1 \right)
\]

\(\mathrm{MP}_t\) is the test manifold pressure.

\(\mathrm{MP}_s\) is the manifold pressure corrected to standard temperature and flight Mach number:

\[
\mathrm{MP}_s = \mathrm{MP}_{\Delta t} \frac{P_{ts}}{P_{tt}}
\]

\(\mathrm{MP}_{\Delta t}\) is the correction of manifold pressure due to changes in ambient temperature and is approximated as

\[
\mathrm{MP}_{\Delta t} = \mathrm{MP}_t C \Delta t
\]

\(C\) is a constant depending upon the pressure ratio\( \left( \frac{P_2}{P_1} \right) \), carburetor air inlet temperature, and whether or not the fuel is vaporized during process.

* If only the air is compressed, or if the inlet temperature is measured *after* fuel vaporization, then determine \(C\) using Figure 10.3a.
* If the fuel is injected after the temperature is taken but *before* the charge is compressed, then determine \(C\) using Figure 10.3b.
* By use of Figures 10.3a and 10.3b, any combination of induction processes for air only or for a fuel air mixture may be evaluated.

\(\Delta t\) is the difference between test and standard day carburetor air temperature and was previously described as the change in ambient air temperature

\[
\Delta t = T_{at} - T_{as} 
\]

\(\frac{P_{ts}}{P_{tt}}\) is the ratio between standard and test day total (ram) inlet pressures at the standard and test Mach numbers. The first step in determining this ratio is to recognize

\[
\frac{P_{ts}}{P_{tt}} = \frac{ \frac{P_{ts}}{P_{a}} }{ \frac{P_{tt}}{P_{a}} }
\]

\(P_a\) is the pressure altitude and must be the same for test and standard days. Calculate \(\frac{P_{tt}}{P_{a}}\) using test Mach number and the equation

\[
\frac{P_{tt}}{P_{a}} = \eta_r \left[ \left( 1 + 0.2 M^2 \right)^{3.5} -1 \right] +1
\]

\(\eta_r\) is the carburetor inlet ram efficiency and is usually between \(0.7\) and \(0.75\). A more exact value may be calculated as

\[
\eta_r = \frac{ P_{t \left( \text{actual} \right)} - P_a }{ P_{t \left( \text{theoretical} \right)} - P_a }
\]

Calculate \(\frac{P_{ts}}{P_{a}}\) using the same equations and standard Mach number.

* This last calculation may be iterative because standard Mach number cannot be exactly determined from the drag polar until power output is known.
* This correction is not normally made unless the flight Mach number is above \(0.6\) and the power change causes a speed change of more than \(3\) knots.
* To get a feel for the dynamic pressure change (and therefore ram effect change) due to Mach number change, recall

\[
q \left[ \frac{\text{lb}}{\text{ft}^2} \right] = \frac{1}{2} \rho_a V_T^2 = 1481 \delta M^2
\]

![][10021]

The final standard day power curves are presented in a form similar to that shown in Figure 10.3c

![][10022]

Figure 10.3a Manifold Pressure Correction When Temperature is Measured After Fuel Vaporization

![][10023]

Figure 10.3b Manifold Pressure Correction When Temperature is Measured Before Fuel Injection

![][10024]

Figure 10.3c Example Standard Day Supercharged Engine Performance Data

## FAA Approved Engine Temperature Corrections

The intent is to ensure that the critical engine parts, (i.e., cylinder head and cylinder barrel) do not exceed the engine manufacturer's specified limits during worst-case climb operating conditions on a \(100° \text{F}\) hot day.

Test procedures are detailed in AC 23-A. The basic idea is best illustrated with the single-engine airplane procedure:

1. Trim in level flight at the lowest practical altitude with at least \(75%\) maximum continuous power. Allow temperatures to stabilize.
2. Increase engine power to takeoff rating and climb at a speed not greater than \(V_y\) (best climb speed). Maintain takeoff power for one minute.
3. At the end of one minute, reduce engine power to maximum continuous and continue climb for at least five minutes after temperatures peak or the maximum operating altitude is reached. Flight manual lean ing procedures should be used.

Correct the peak test day cylinder barrel temperature \( \left( T_{bt} \right) \) to hot day conditions \( \left( T_{bh} \right) \) as follows

\[
T_{bh} = T_{bt} +0.7 \left[ 100 - 0.0036 H_c - T_{at} \right]
\]

Correct the peak test day cylinder head or other temperature \( \left( T_{ht} \right) \) to hot day conditions \( \left( T_{hh} \right) \) as follows

\[
T_{hh} = T_{ht} + 100 - 0.0036 H_c - T_{at}
\]

\(H_c\) is the pressure altitude in feet
\(T_{at}\) is the outside air temperature in degrees \(\text{F}\)

This method is known to be quite conservative. More satisfactory temperatures may be achieved by actually testing during hot weather.

## References

|||
|-|---------------|
|10.5.1 |Roberts, Sean C. "Light Aircraft Performance," Flight Research Inc. Mojave, CA, 1982.|
|10.5.2 |Lawless, Alan R, "Fixed Wing Aircraft Performance Testing" Chapters 3 and 4, National Test Pilot School, Mojave CA, 1996.|
|10.5.3 |Baughn, J. W., "A Method for computing Brake Horsepower from the Performance Charts of Reciprocating Aircraft Engines," AIAA- 94-2148-CP, from 7th Biennial AIAA Flight Test Conf., 1994.|
|10.5.4 |Herrington, R. M. Major, USAF, et al, "Flight Test Engineering Handbook," USAF Technical report No. 6273, AFFTC, Edwards AFB, CA, May 1951.|
|10.5.5 |Chatfield, C. H., et al, "The Airplane and its Engine," McGraw Hill, 1949.|
|10.5.6 |Gagg, R.F., and Farrar, E.V., "Altitude Performance of Aircraft Engines Equipped with Gear-Driven Superchargers," SAE Transcripts, Vol 29, pg 217-223, 1934.|
|10.5.7 |anon., "Flight Test Guide for Certification of Part 23 Air planes," U.S. Department of Transportation Advisory Circular 23-8A, 1989.|

**Additional Reading and Second Generation References**

|||
|-|---------------|
|10.5.8| Smith, H. C., and Dreier M. E., "A computer Technique for the Determination of Brake Horsepower Output of Normally Aspirated Reciprocating Aircraft Engines," SAE paper No. 770465, March 1977.|
|10.5.9| Hamlin, B., "Flight Testing Conventional and Jet-Propelled Airplanes," The Macmillan Co., New York, NY, 1946.|
|10.5.10| Operators Manual for Series IO-360 Aircraft Engines, form No. X-30032, FAA Approved March 1979.|

 

  [10001]: media/10/image1.png {width="4.895138888888889in" height="8.686111111111112in"}
  [10002]: media/10/image2.png {width="3.113888888888889in" height="0.21875in"}
  [10003]: media/10/image3.png {width="2.5416666666666665in" height="0.20833333333333334in"}
  [10004]: media/10/image4.png {width="3.176388888888889in" height="0.22916666666666666in"}
  [10005]: media/10/image5.png {width="2.1145833333333335in" height="0.25in"}
  [10006]: media/10/image6.png {width="1.6770833333333333in" height="0.4791666666666667in"}
  [10007]: media/10/image7.png {width="1.28125in" height="0.4375in"}
  [10008]: media/10/image8.png {width="1.6979166666666667in" height="0.4479166666666667in"}
  [10009]: media/10/image9.png {width="4.499305555555556in" height="3.2284722222222224in"}
  [10010]: media/10/image10.png {width="5.749305555555556in" height="8.561111111111112in"}
  [10011]: media/10/image11.png {width="2.4270833333333335in" height="0.22916666666666666in"}
  [10012]: media/10/image12.png {width="1.8020833333333333in" height="0.59375in"}
  [10013]: media/10/image13.png {width="2.0729166666666665in" height="0.2708333333333333in"}
  [10014]: media/10/image14.png {width="1.8541666666666667in" height="0.5833333333333334in"}
  [10015]: media/10/image15.png {width="1.4583333333333333in" height="0.46875in"}
  [10016]: media/10/image16.png {width="0.96875in" height="0.4270833333333333in"}
  [10017]: media/10/image17.png {width="1.2708333333333333in" height="0.22916666666666666in"}
  [10018]: media/10/image18.png {width="0.9166666666666666in" height="0.6875in"}
  [10019]: media/10/image19.png {width="1.8125in" height="0.4375in"}
  [10020]: media/10/image20.png {width="1.6354166666666667in" height="0.4375in"}
  [10021]: media/10/image21.png {width="1.9895833333333333in" height="0.4895833333333333in"}
  [10022]: media/10/image22.png {width="4.520138888888889in" height="3.707638888888889in"}
  [10023]: media/10/image23.png {width="6.874305555555556in" height="4.374305555555556in"}
  [10024]: media/10/image24.png {width="6.249305555555556in" height="8.623611111111112in"}

<!--chapter:end:10-reciprocating-engines.Rmd-->

# Propellers

## Abbreviations and Terminology

 

**Abbreviations**

|||
|:-|:----------|
|\(\mathrm{AF}\)| \[ \text{activity factor } = \frac{100\,000}{16} \int_{0.15}^{1.00} \left( \frac{b}{D} \right) x^3 dx \]|
|\(b\)|blade section width \( \left[ \text{feet} \right] \)|
|\(B\)|number of blades|
|\(\mathrm{BHP}\)|brake horsepower (measured at engine crankshaft)|
|\(C_{L_D}\)|blade section design lift coefficient|
|\(C_{L_i}\)|\[ \text{integrated design lift coefficient } = 4 \int_{0.15}^{1.00} \left( C_{L_D} \right) x^3 dx \]|
|\(C_P\)|power (absorbed) coefficient|
|\(C_T\)|thrust coefficient|
|\(D\)|propeller diameter \( \left[ \text{feet} \right] \)|
|\(f_c\)|ratio of speed of sound at standard day sea level to speed of sound at operating condition \[ f_c = \frac{1}{\sqrt{\theta}} \]|
|\(\mathrm{GR}\)|gear ratio, propeller speed/engine speed|
|\(\mathrm{HP}\)|horsepower  \( \left (1\mathrm{HP} = 550 \text{ ft-lb/sec} \right) \) |
|\(J\)|\[ \text{Propeller advance ratio } = \frac{V_T}{nD} \left[ \text{nondimensional} \right] \]|
|\(M\)|aircraft Mach number|
|\(\Delta M\)|Mach number adjustment for effect of blade camber|
|\(N\)|propeller speed, revolutions per minute \( \left[ \text{RPM} \right] \)|
|\(n\)|propeller speed, revolutions per second|
|\(N_e\)|engine speed \( \left[ \text{RPM} \right] \)|
|\(P\)|power output \( \left[ \frac{\text{ft-lb}}{\text{sec}} \right] \)|
|\(P_a\)|ambient pressure|
|\(q\)|dynamic pressure|
|\(Q\)|torque \( \left[ \text{ft-lb} \right] \)|
|\(R\)|blade radius at propeller tip \( \left[ \text{feet} \right] \)|
|\(r\)|radius at blade element \( \left[ \text{feet} \right] \)|
|\(\mathrm{SHP}\)|shaft horsepower (measured at propeller shaft)|
|\(T\)|propeller thrust \( \left[ \text{pounds} \right] \)|
|\(T\)|thrust|
|\(T_a\)|absolute ambient temperature|
|\(V_K\)|freestream velocity \( \left[ \text{knots} \right] \)|
|\(V_R\)|resultant velocity|
|\(V_T\)|freestream velocity \( \left[ \frac{\text{ft}}{\text{sec}} \right] \)|
|\(V_{\text{tan}}\)|tangential velocity|
|\(V_{\text{tip}}\)|tip speed|
|\(x\)|fraction of propeller tip radius, \(\frac{r}{R}\)|
|\(\alpha\)|local angle of attack|
|\(\beta\)|local blade twist angle, measured between chord and plane of rotation, same as \(\theta \left[ \text{degrees} \right] \).|
|\(\eta\)|isolated propeller efficiency.|
|\(\eta_{\text{comp}}\)|composite prop efficiency (includes tip and blockage corrections)|
|\(\theta^{\frac{3}{4}}\)|propeller blade twist angle at \(x = \frac{3}{4} \, \left[ \text{degrees} \right] \), same as \(\beta^{\frac{3}{4}}\)|
|\(\sigma\)|ratio of operating density to sea level standard density, \( \frac{\rho_a}{\rho_0} \)|
|\(\phi\)|propeller disk angle of attack|
|\(\omega\)|propeller rotation speed \( \left[ \frac{\text{rad}}{\text{sec}} \right] \)|

**Terminology**

|||
|:----|:----------|
|blade aspect ratio|measured as \( \frac{R}{\text{max blade width}} \).|
|effective pitch | actual advance per revolution.|
|experimental pitch| necessary advance to generate zero thrust.|
|geometric pitch \( \left( p \right) \) | advance per revolution if blade element moves according to \(\beta\) (i.e., with no slip).|
|reduction gear| gearing between the engine crankshaft and prop shaft that reduces the propeller rotation speed .|
|right-handed| moves clockwise (viewed from the slipstream).|
|solidity| fraction of prop disk covered by blade area, \( \frac{2\pi R}{Bb} \).|
|total width ratio \( \left( \mathrm{TWR} \right) \)| measured as \( \textrm{WR} \times B \).|
|thickness ratio \( \left( \mathrm{TR} \right) \)| blade thickness measured locally or at  \(0.75 R\) to represent entire prop.|
|width ratio \( \left( \mathrm{WR} \right) \)| calculated as \( \frac{ \left\{ b \text{ @ }  0.75 R \right\} }{D} \) |

## Propeller Geometry

![][11004]

* \(\delta_r\) is the width of any element along blade radius.
* \(x = \frac{r}{R}\), the local fraction of prop tip radius

![][11005]

* Prop blade chord extends from leading edge to trailing edge.
* Blade twist angle, \(\theta\), measured between rotation plane and local chord.
* Relative wind is the resultant velocity, \(V_R\), comprised of aircraft forward speed and tangential speed at radial location along blade.

\[
V_R = \sqrt{V_T^2 + \left( 2 \pi r n \right)^2}
\]

\[
\phi = \tan^{-1} \frac{V_T}{r \omega} = \tan^{-1} \frac{V_T}{r 2 \pi n} = \tan^{-1} \frac{V_T}{x D \pi n} : \phi_{\text{tip}} = \tan^{-1} \frac{1}{\pi} \frac{V_T}{nD}
\]

* Angle \(\phi\) is measured between plane of rotation and local \(V_R\)

\[
\alpha^x = \theta^x - \phi = \theta^x - \tan^{-1} \frac{V_T}{r 2 \pi n} = \theta^x - \tan^{-1} \frac{1}{\pi} \frac{V_T}{nD} = \theta^x - \tan^{-1} \frac{J}{\pi x}
\]

* Αdvance ratio, \(J\), is defined as \(J = \frac{V_T}{nD} \).
* Local angle of attack at any fraction of radius, \(\alpha^x\), is measured between the local chord line and relative wind.
* Lift and drag are perpendicular and parallel to \(V_R\), respectively
* Thrust, \(T\), and torque, \(Q\), are perpendicular and parallel to the plane of rotation, respectively.

## Propeller Coefficients

Integrating lift and drag along a blade gives the thrust, \(T\), and torque, \(Q\). 
Multiply by number of blades, \(B\), to determine total \(T\) and \(Q\).

\[
\begin{align}
T &= qB \int_{R_1}^{R_2} \frac{c}{\sin^2 \phi} \left( C_L \cos \phi - C_D \sin \phi \right) dr \\
Q &= qB \int_{R_1}^{R_2} \frac{cr}{\sin^2 \phi} \left( C_L \sin \phi - C_D \cos \phi \right) dr \\
\text{Thrust Coefficient, } C_T &\equiv \frac{T}{\rho n^2 D^4} \\
\text{Torque Coefficient, } C_Q &\equiv \frac{Q}{\rho n^2 D^5} \\
\text{Power Coefficient, } C_P &\equiv \frac{P}{\rho n^3 D^5} = \frac{Q \times \omega}{\rho n^3 D^5} = \frac{Q \times 2 \pi n}{\rho n^3 D^5} = 2 \pi \frac{Q}{\rho n^2 D^5} = 2 \pi C_Q \\
\end{align}
\]

Typical effect of advance ratio on thrust and torque coefficients

![][11013]

## Propeller Efficiency and States

Propeller efficiency (\(\eta\))

\[
\eta \equiv \frac{P_{\text{out}}}{P_{\text{in}}} = \frac{\text{Thrust} \times V_T}{Q \times \omega} = \frac{C_T \rho n^2 D^4 \times V_T}{C_Q \rho n^2 D^5 \times 2 \pi n} = \frac{1}{2 \pi} \frac{C_T}{C_Q} \frac{V_T}{nD} = \frac{C_T}{C_P} J
\]

![][11015]

Propeller state: positive thrust & efficiency, power supplied by engine.

Brake state: negative thrust & efficiency, power supplied by engine.

Windmill state: negative thrust & \(\eta\), power supplied by freestream.

![][11016]

## Propeller Theory

Simple momentum theory describes pressure jump,  \(\Delta P\), across propeller disk.

* The downstream velocity increment, \(v_1\), is twice the velocity increment at the disk, \(v\).
* Thrust \( \left( \Delta P \right) = \Delta P \times \text{ disk area} \)
* Froude's momentum theory: 

\[
\text{efficiency} = \eta \equiv \frac{T V_T}{T \left( V_T + v \right)} = \frac{V_T}{V_T + v}
\]

![][11018]

Blade element theory tends to be more complex and may include corrections for tip swirl losses, Mach effects, nacelle blockage, etc. Below is a comparison of typical calculated and measured thrust distribution.

![][11019]

## Propeller Modeling

* For a specified propeller geometry; \(C_T\) , \(C_P\), \(J\), and blade angle, \(\theta\), are interrelated such that knowledge of any two defines the other two.
* Calculate propeller efficiency as 

\[
\eta = \frac{J C_T}{C_P}  
\]

* Models assume isolated conditions, i.e., without nacelle blockage.
* Models assume negligible Mach effects at propeller tips.
* Different models required for static and "in-flight" conditions.

Determine static \(C_T\) and \(C_P\) using "**Static Thrust Chart**" (ref 11.2)

Vertical axis is \( \frac{C_T}{C_P} \)

![][11021]

* Separate charts exist for each combination of \(\mathrm{AF}\) and \# of blades, \(B\).
* Enter chart at appropriate \(J\) & \(C_{L_i}\)

Static Thrust = 

\[
T_{\text{static}} = \frac{C_T}{C_P} \frac{\mathrm{SHP}}{ND} 33\,000
\]

where \(N\) = Propeller \(\text{RPM}\)

Determine isolated propeller in-flight efficiency, \(\eta\), from the appropriate **"Flight Charts."** They are typically presented in one of two forms.

![][11023]

Above example for AiResearch TPE331-3U-303G engines and Hartzell T10282HDB-4R 3-blade, constant speed, feathering propellers.

The other "in-flight \(\eta\)" format also requires calculation of \(C_P\) and \(J\). Below is a typical flight chart published by Hamilton Standard (Ref 11.2). This applies to a propeller with 2 blades, \(\mathrm{AF} = 80\), and \(C_{L_i} = 0.5 \)

![][11024]

A **body correction factor**, \(F_{\mathrm{BC}}\), should be applied to account for reduced efficiency due to body flow blockage immediately behind the propeller. Two examples follow.

![][11025]

Hamilton Standard also publishes a generalized nacelle blocking correction for typical scoop and annual inlet nacelles used on typical turboprops.

![][11026]

To determine if tip compressibility corrections are appropriate, find the maximum integrated design lift coefficient, \(C_{L_i \text{max}} \), from the graph below.

* Enter at flight Mach number, and move across at appropriate \(NDf_c\).

\[
f_c = \frac{1}{\sqrt{\theta}}
\]

* If \(C_{L_i \text{max}} \) is below calculated \(C_{L_i}\), then corrections are required.

![][11027]

If tip compressibility corrections are necessary, then the first step is to

* Determine the **Mach number adjustment for the effect of blade camber**, \(\Delta M\), from the figure below.

![][11028]

* Next, add \(\Delta M\) from above to flight Mach number to get \(M_{\text{eff}}\).
* Enter adjacent **generalized compressibility correction chart** to determine propeller efficiency tip factor, \(F_t\)
* Calculate composite propeller efficiency as

\[
\eta_{\text{comp}} = \eta \times F_t \times F_{\mathrm{BC}}
\]

* Calculate in-flight thrust as

\[
T = \frac{\eta_{\text{comp}} \mathrm{SHP}}{V_T} = \frac{326 \eta_{\text{comp}} \mathrm{SHP}}{\mathrm{KTAS}}
\]

![][11030]

## Propeller Flight Test

The best method for determining \(\eta_{\text{comp}}\) is to instrument the prop shaft and/or engine mounts to measure thrust and torque.

![][11031]

Calculate efficiency as

\[
\eta_{\text{comp}} = \frac{T V_T}{Q \omega}
\]

As an alternate, the **incremental drag method** requires an accurate engine power model, a load cell and a small drag device.

* Trim the aircraft at test \(\text{RPM}\), \(V_T\) , & altitude. Note \(\mathrm{SHP}\) required.
* Repeat above test with drag device and load cell attached. Note the power requirement change, \(\Delta \mathrm{SHP}\), and load cell drag, \(\Delta D\).

\[
\begin{align}
\eta_p \cdot \mathrm{BHP}_{\mathrm{AC}} &= \frac{V_T}{550}D \\
\eta_p \cdot \mathrm{BHP}_{\mathrm{AC} + \Delta D} &= \frac{V_T}{550} \left(D + \Delta D \right) \\
\end{align}
\]

![][11034]

* Calculate aircraft drag and prop efficiency as

\[
D = \frac{\Delta D \left( \mathrm{SHP} \right)}{\Delta  \mathrm{SHP} } \;\;\; \eta = \frac{V_T D}{550 \mathrm{SHP}} 
\]

* This technique assumes the same \(\eta\) for both tests and is valid if \(J\) is constant and the \(C_P\) change is small. The drag device must therefore be small enough to not violate this assumption, yet large enough for the change in \(\mathrm{SHP}\) to be measurable on engine instruments.

## References

| | |
|:-|:---------------|
|11.8.1| Roberts, Sean, "Light Aircraft Performance for Test Pilots and Flight Test Engineers," Flight Research Inc., Mojave CA, 1982.|
|11.8.2| anon., Hamilton Standard Propeller Efficiency Charts (a.k.a.Redbook), PDB 6101.|
|11.8.3| Von Mises, Richard, "Theory of Flight," McGraw-Hill, 1945.|

 

  [11001]: media/11/image1.png {width="1.6041666666666667in" height="0.4166666666666667in"}
  [11002]: media/11/image2.png {width="1.375in" height="0.3645833333333333in"}
  [11003]: media/11/image3.png {width="0.53125in" height="0.3541666666666667in"}
  [11004]: media/11/image4.png {width="2.8118055555555554in" height="1.0416666666666667in"}
  [11005]: media/11/image5.png {width="2.801388888888889in" height="1.5729166666666667in"}
  [11006]: media/11/image6.png {width="1.53125in" height="0.3125in"}
  [11007]: media/11/image7.png {width="4.040972222222222in" height="0.3958333333333333in"}
  [11008]: media/11/image8.png {width="3.6972222222222224in" height="0.375in"}
  [11009]: media/11/image9.png {width="2.7083333333333335in" height="0.8645833333333334in"}
  [11010]: media/11/image10.png {width="0.9270833333333334in" height="0.4583333333333333in"}
  [11011]: media/11/image11.png {width="0.9479166666666666in" height="0.4583333333333333in"}
  [11012]: media/11/image12.png {width="3.051388888888889in" height="0.3645833333333333in"}
  [11013]: media/11/image13.png {width="4.499305555555556in" height="3.6243055555555554in"}
  [11014]: media/11/image14.png {width="4.155555555555556in" height="0.53125in"}
  [11015]: media/11/image15.png {width="4.499305555555556in" height="2.9784722222222224in"}
  [11016]: media/11/image16.png {width="4.499305555555556in" height="1.875in"}
  [11017]: media/11/image17.png {width="1.3333333333333333in" height="0.46875in"}
  [11018]: media/11/image18.png {width="4.499305555555556in" height="2.125in"}
  [11019]: media/11/image19.png {width="4.009722222222222in" height="1.59375in"}
  [11020]: media/11/image20.png {width="0.6354166666666666in" height="0.375in"}
  [11021]: media/11/image21.png {width="4.363888888888889in" height="4.103472222222222in"}
  [11022]: media/11/image22.png {width="1.4166666666666667in" height="0.4270833333333333in"}
  [11023]: media/11/image23.png {width="6.999305555555556in" height="8.311805555555555in"}
  [11024]: media/11/image24.png {width="6.624305555555556in" height="8.311805555555555in"}
  [11025]: media/11/image25.png {width="6.499305555555556in" height="8.561111111111112in"}
  [11026]: media/11/image26.png {width="5.874305555555556in" height="8.436111111111112in"}
  [11027]: media/11/image27.png {width="6.249305555555556in" height="7.561805555555556in"}
  [11028]: media/11/image28.png {width="6.999305555555556in" height="5.936805555555556in"}
  [11029]: media/11/image29.png {width="2.09375in" height="0.46875in"}
  [11030]: media/11/image30.png {width="5.759722222222222in" height="8.727777777777778in"}
  [11031]: media/11/image31.png {width="3.2284722222222224in" height="1.8854166666666667in"}
  [11032]: media/11/image32.png {width="1.2083333333333333in" height="0.53125in"}
  [11033]: media/11/image33.png {width="2.1458333333333335in" height="1.1666666666666667in"}
  [11034]: media/11/image34.png {width="4.374305555555556in" height="1.75in"}
  [11035]: media/11/image35.png {width="0.9479166666666666in" height="0.3958333333333333in"}
  [11036]: media/11/image36.png {width="1.1875in" height="0.40625in"}

<!--chapter:end:11-propellers.Rmd-->

# Fixed-Wing Performance Standardization

## Recurring Abbreviations

(references 10.5.1-10.5.5)

|||
|:-|:----------|
|\(a\) |acceleration|
|\(\mathrm{BHP}\) |brake horsepower|
|\(\mathrm{BSFC}\) |brake specific fuel consumption (fuel flow per horsepower per hour)|
|\(C_D\) |drag coefficient|
|\(C_{D_i \mathrm{IGE}}\) |induced drag coefficient in ground effect|
|\(C_{D_i \mathrm{OGE}}\) |induced drag coefficient out of ground effect|
|\(C_L\) |lift coefficient|
|\(C_{L_i \mathrm{IGE}}\) |lift coefficient in ground effect|
|\(C_{L_i \mathrm{OGE}}\) |lift coefficient out of ground effect|
|\(\mathrm{cg}\) |center of gravity|
|\(D\) |drag|
|\(\frac{F}{\delta}\) |corrected thrust|
|\(F_e\) |ram thrust|
|\(F_{\text{e}}\) |excess thrust|
|\(F_g\) |gross thrust|
|\(F_n\) |net thrust|
|\(g\) |reference acceleration due to gravity \( \left( 32.174 \frac{\text{ft}}{\text{sec}^2} \right) \)|
|\(\mathrm{GE}_{C_D}\) |ground effect correction factor for drag coefficient|
|\(\mathrm{GE}_{C_L}\) |ground effect correction factor for lift coefficient|
|\(H\), \(h\) |geopotential altitude|
|\(H_c\) |pressure altitude|
|\(L\) |lift|
|\(L_W\) |lift of the wing|
|\(M\) |Mach number|
|\(m\) |mass|
|\(N_{x_w}\) |longitudinal load factor along flight path (wind axis)|
|\(N_{z_w}\), \(n_z\) |load factor normal to flight path|
|\(P\) |power output|
|\(P_0\) |standard ambient pressure sea level \( \left( 2116.22 \frac{\text{lb}}{\text{ft}^2} = 29.921 \text{ in Hg} \right) \)|
|\(P_a\) |ambient pressure|
|\(P_{iw}\) |standard day sea-level power required|
|\(P_m\) |mission-day power required|
|\(P_s\) |standard power required|
|\(P_s\) |specific excess power|
|\(P_t\) |test-day power required|
|\(q\) |dynamic pressure|
|\(R\) |range|
|\(R/C\) |rate of climb|
|\(R_n\) |Reynolds number|
|\(\mathrm{RF}\) |range factor|
|\(S\) |reference wing area|
|\(S_a\) |horizontal air distance|
|\(S_g\) |ground roll|
|\(S_{\mathrm{LD}}\) |total landing distance|
|\(S_{\mathrm{TO}}\) |total takeoff distance|
|\(\mathrm{SR}\) |specific range|
|\(T\) |ambient air temperature (absolute)|
|\(T\) |thrust|
|\(T_0\) |ambient temperature sea level standard \( \left( 288.15\text{ K} = 15.0°\text{C} \right) \)|
|\(V\) |inertial speed|
|\(V_c\) |calibrated airspeed|
|\(V_e\) |equivalent airspeed|
|\(V_{iw}\) |standard day sea-level true airspeed|
|\(V_T\) |true airspeed|
|\(V_{T_s}\) |test true airspeed|
|\(V_{T_t}\) |test true airspeed|
|\(\dot{W}_f\) |Fuel Flow|
|\(\dot{W}_{f_{iw}}\) |standard day sea-level fuel flow|
|\(W_s\) |weight standard|
|\(W_t\) |test weight|
|\(\alpha\) |angle of attack|
|\(\beta\)  |sideslip angle|
|\(\gamma\) |flightpath angle|
|\(\delta\) |ambient air pressure ratio|
|\(\iota_T\) |thrust incidence angle|
|\(\mu\) |rolling coefficient of friction|
|\(\sigma\) |ambient air density ratio|
|\(\phi\) |bank angle|
|\(\omega\)  |turn rate (rad/sec)|

## Standardization Techniques

(ref 12.5)

Performance data is usually corrected to "standard" conditions which are specified values of weight, altitude, \(\mathrm{cg}\) and Mach number. 
The process also corrects data to some standard ambient air temperature, usually defined by the \(1976\) U.S. Standard Atmosphere. 
In some cases the data is corrected to "standard hot" day or "standard cold" day conditions which are a specified increment relative to the true standard conditions.

The standardization process usually relies on models of drag, thrust (or power), fuel flow, and propeller efficiency if appropriate. 
The overall principle is to collect test data as near as practical to standard conditions \( \left( \pm 10\% \right) \) and correct the results to standard using the models. 
Even with a \(10\%\) modeling error, correcting test data that is \(10\%\) from standard leads to only \(1\%\) total error in the standardized results.

The most common of the two standardization methods is the **difference or increment method** which adds a correction to the test day parameter. 
This correction is the difference between the model predictions for standard and test conditions:

\[
P_s = P_t + \left( P_s' - P_t' \right)
(\#eq:increment)
\]

where

* \(P_s\) = standardized parameter
* \(P_t\) = test day parameter
* \(P_s'\) = standard day parameter predicted by models
* \(P_t'\) = test day parameter predicted by models

The parameter of interest can be one of the basic modeling values such as thrust, drag, power, or fuel flow.
The parameter can also be the end result of the predictive process, and may include values like takeoff/landing distance, climb/sustained turning capability, or cruise range.

The **ratio method** is the other standardization process. It corrects to standard conditions by multiplying the test values by a correction factor. 
This factor is the ratio of the model predictions for standard and test conditions.

\[
P_s = P_t  \left( \frac{P_s'}{P_t'} \right)
(\#eq:ratio)
\]

The preferred approach is whichever gives the lowest total error.
If the prediction models are in error by approximately a constant percentage, then the ratio method yields the least error.
If the models are in error by approximately a constant magnitude, then the increment method yields the least error.
Less exact empirical methods can also be used.

## Takeoff Distance

(refs 12.1, 12.2, 12.5)

The total takeoff distance, \(S_{\mathrm{TO}}\), is the sum of the ground roll distance, \(S_g\), from brake release to main wheel liftoff, and the horizontal component of the air distance, \(S_a\), from liftoff to main gear reaching either \(35\) or \(50\) feet altitude-depending on the requirements.

\[
S_{\mathrm{TO}} = S_g + S_a
(\#eq:tot-takeoff)
\]

Both \(S_g\) and \(S_a\)  can be standardized using the increment or ratio method, or by empirical relations.
The empirical methods are useful when detailed aircraft models are not available. 
The more exact process of predicting takeoff distance using models is described in section \@ref(takeoff-distance-prediction).

### Empirical Standardization Method

First correct for the effects of the test day wind. 
Define headwind velocity as \(V_w\), liftoff true airspeed as \(V_{\mathrm{LO}}\), and test day ground roll as \(S_{g_w}\).
With a typical variation of thrust per headwind, estimate the test day zero-wind ground roll, \(S_{g_{zw}}\), using the following empirical equation:

\[
S_{g_{zw}} = S_{g_w} \left( \frac{V_{\mathrm{LO}}}{V_g} \right)^{1.85}
(\#eq:zero-wind-gnd-dist)
\]

If the average thrust is not appreciably affected by velocity, then the exponent should be \(2.0\) in lieu of \(1.85\). The zero-wind air distance, \(S_{a_t}\), correction is

\[
S_{a_t} = S_{a_w} + V_w t
(\#eq:zero-wind-air-dist)
\]

where \(t\) is the time from liftoff to \(35\) (or \(50\)) feet altitude.

The second correction is for the effect of runway slope (\(\theta\), positive *uphill*) and therefore applies only to the ground roll.
Correct the above zero-wind distance, \(S_{g_{zw}}\), to the test day zero-slope distance, \(S_{g_t}\), as follows:

\[
S_{g_t} = S_{g_{zw}} \left[ 1 - \frac{W \sin \theta}{\left[ F_{\text{ex}} \right]_{\text{avg}}} \right]
(\#eq:zero-slope-air-dist)
\]

If the average excess thrust is not known, then approximate \(F_{\text{ex}}\) as that at \(70\%\) of the liftoff airspeed or from the zero-wind ground roll distance:

\[
\left[ F_{\text{ex}} \right]_{\text{avg}} \approx \frac{m V_{\mathrm{LO}^2}}{2 S_{g_{zw}}}
(\#eq:approx-fex-lo)
\]

After correcting the test day distance to zero wind and slope, use the following empirical equations to correct for non-standard weight, density, and temperature.
Any desired values can be treated as the "standard" conditions.

| **Aircraft Propulsion Type**  | **Standard Day Distance**  |
|:------------------------------|:---------------------------|
| Fixed pitch propellers^[Neglect temp correction for constant rpm evaluation] | \[\begin{align} S_{gs} &= S_{gt} \left( \frac{W_s}{W_t} \right)^{2.4} \left( \frac{\sigma_s}{\sigma_t} \right)^{-2.4} \left( \frac{T_{as}}{T_{at}} \right)^{0.5} \\ S_{as} &= S_{at} \left( \frac{W_s}{W_t} \right)^{2.2} \left( \frac{\sigma_s}{\sigma_t} \right)^{-2.2} \left( \frac{T_{as}}{T_{at}} \right)^{0.6} \end{align} \] |
| Turbo-propeller aircraft^[For heavy aircraft, replace \(2.3\) & \(-1.2\) with \(2.6\) & \(-1.5\), respectively] | \[\begin{align} S_{gs} &= S_{gt} \left( \frac{W_s}{W_t} \right)^{2.6} \left( \frac{\sigma_s}{\sigma_t} \right)^{-1.7} \left( \frac{N_s}{N_t} \right)^{-0.7} \left( \frac{P_s}{P_t} \right)^{-0.9} \\ S_{gs} &= S_{gt} \left( \frac{W_s}{W_t} \right)^{2.3} \left( \frac{\sigma_s}{\sigma_t} \right)^{-1.2} \left( \frac{N_s}{N_t} \right)^{-0.8} \left( \frac{P_s}{P_t} \right)^{-1.1} \end{align} \] |
| Large jet aircraft^[For light jets, replace \(2.3\) & \(-0.7\) with \(2.6\) & \(-1.0\), respectively] | \[\begin{align} S_{gs} &= S_{gt} \left( \frac{W_s}{W_t} \right)^{2.3} \left( \frac{\sigma_s}{\sigma_t} \right)^{-1.0} \left( \frac{F_{ns}}{F_{nt}} \right)^{-1.3}  \\ S_{gs} &= S_{gt} \left( \frac{W_s}{W_t} \right)^{2.3} \left( \frac{\sigma_s}{\sigma_t} \right)^{-0.7} \left( \frac{F_{ns}}{F_{nt}} \right)^{-1.6} \end{align}\] |

where

* \(P_t\) = Test day brake power at the propeller
* \(P_s\) = Standard day brake power at the propeller
* \(N_t\) = Test day propeller \(\text{RPM}\)
* \(N_s\) = Standard day propeller \(\text{RPM}\)
* \(F_{nt}\) = \(T_{at}\) = Average test net thrust (approx \(0.94 \times \)static thrust @ test conditions)
* \(F_{ns}\) = \(T_{as}\) = Average standard net thrust (approx \(0.94 \times \)static thrust @ standard conditions)

### Takeoff Distance Prediction

(refs 12.1, 12.5)

**Estimating takeoff ground roll without numerical methods**

Define

* \(V\) = airspeed
* \(V_{\mathrm{TO}}\) = liftoff airspeed
* \(S_g\) = ground roll distance
* \(S_w\) = reference wing area
* \(F_{\text{ex}}\) = excess thrust
* \(F_n\) = net thrust
* \(C_{L_{\mathrm{IGE}}}\) = lift coefficient in ground effect
* \(C_{D_{\mathrm{IGE}}}\) = drag coefficient in ground effect
* \(W\) = aircraft weight
* \(m\) = rolling friction
* \(g\) = acceleration due to gravity
* \(A\) = acceleration = g\*Fex/

Assuming zero initial speed for takeoff run, ground roll distance

\[
S_g = \frac{V_{\mathrm{TO}}^2 \cdot W}
{2 \cdot g \cdot 
  \left( 
        T_{\text{avg}} 
        - \mu \cdot W 
        + \frac{1}{6} \cdot \rho \cdot S_w \cdot V_{\mathrm{TO}}^2 \cdot 
        \left( \mu \cdot C_{L_{\mathrm{IGE}}} 
              - C_{D_{\mathrm{IGE}}} 
        \right) 
  \right)
}
(\#eq:gnd-roll-dist-to)
\]

Where 

* \(F_{n_{\text{avg}}}\) may be estimated as the average of static thrust and net thrust at liftoff airspeed. If the initial airspeed is non-zero, its value should be inserted into Equation \@ref(eq:zero-wind-gnd-dist) in place of \(V_{\mathrm{LO}}\) and the answer subtracted from the zero-wind case.
* \(\mu\) is the rolling friction coefficient (typically between \(0.015\) and \(0.025\) for hard dry runways), and
* \(C_{L_{\mathrm{IGE}}}\) is the lift coefficient in ground effect while at ground roll attitude.

Estimate \(C_{L_{\mathrm{IGE}}}\) by determining the out-of-ground-effect lift coefficient, \(C_{L_{\mathrm{OGE}}}\), at the ground roll angle of attack and correcting it as follows:

\[
C_{L_{\mathrm{IGE}}} = C_{L_{\mathrm{OGE}}} \mathrm{GE}_{C_L}
(\#eq:est-c-l-ige)
\]

where

* the ground effect factor, \(\mathrm{GE}_{C_L} = 0.8609 - 0.6282 \log_{10} \left( \frac{h}{b} \right) \) and 
* \(h\) is the wing height above the surface and 
* \(b\) is the wingspan. 

The above correction is *not used* above the height that predicts

\[
\mathrm{GE}_{C_L} \lt 1
\]

\(C_{D_{\mathrm{IGE}}}\) is the induced drag coefficient while in ground effect. Estimate this by determining the out-of-ground-effect drag coefficient, \(C_{D_{\mathrm{OGE}}}\), at the appropriate angle of attack and correcting it as follows:

\[
C_{D_{\mathrm{IGE}}} = C_{D_{\mathrm{OGE}}} \mathrm{GE}_{C_D}
(\#eq:est-c-d-ige)
\]
 
where the ground effect factor, \(\mathrm{GE}_{C_D} = 0.2412 \ln \left( \frac{h}{b} \right) + 1.0829 \) 

The above correction is *not used* above the height that predicts

\[
\mathrm{GE}_{C_D} \gt 1
\]

A **direct approximation of takeoff air distance** requires the desired speeds at liftoff and at 50 feet (typically \(1.1 V_s\) and \(1.2 V_s\), respectively).
It also requires an estimate of the average excess thrust as the aircraft climbs out of ground effect.

\[
S_a = \frac{W}{\left( T - D \right)_{\text{avg}}} \left[ \frac{V_{50}^2 - V_{\mathrm{LO}}^2}{2g} + 50 \right]
(\#eq:direct-to-air)
\]

A **direct approximation of the total takeoff distance**, \(S_{\mathrm{TO}}\) can be calculated as the sum of the ground and air distances or can be estimated by multiplying the ground roll distance by a "planform factor," \(F_{\text{pl}}\).

\[
S_{\mathrm{TO}} = S_g F_{\text{pl}}
(\#eq:s-to-fpl)
\]

\(F_{\text{pl}}\) combines the effects of wing type, thrust-to-weight ratio, and pilot technique.
The following values characterize the typical aircraft.

* straight wing: \(F_{\text{pl}} = 1.15\)
* swept wing: \(F_{\text{pl}} = 1.36\)
* delta wing: \(F_{\text{pl}} = 1.58\)

A more **exact prediction of takeoff performance** (ref 12.5) requires accurate thrust and drag models and an integration of the aircraft's velocity over the takeoff time.
This is equivalent to a double integration of the aircraft's acceleration or its specific excess thrust.

\[
S_{\mathrm{TO}} = \int V_T \mathop{dt} = \iint a \mathop{dt} = \iint \frac{F_{\text{ex}}}{m} \mathop{dt} = \frac{1}{m} \iint F_{\text{ex}} \mathop{dt}
(\#eq:s-to-fpl)
\]

This double integration can be performed numerically or graphically.
Alternately, use planar kinematics and sum the distances required to accelerate between incremental true airspeeds from brake release, \(V_0\), to the true airspeed when the aircraft reaches the takeoff altitude, \(V_{50'}\).

\[
S_{\mathrm{TO}} = \frac{m}{2} \sum_{V_0}^{V_{50'}} \frac{V_2^2 - V_1^2}{F_{\text{ex}}}
(\#eq:to-dist)
\]

Both methods above are typically split into pre-rotation ground roll, rotation/post-rotation ground roll, and airborne segments.
Both methods require calculation of the excess thrust, addressed below.

Solving for the excess net thrust *during the ground roll* for either takeoff or landing cases requires a simultaneous solution of the three equations of motion along the aircraft's longitudinal & vertical axes and about the pitch axis.
These equations (in the above order) are as follows:

\[
F_{\text{ex}}+ \mu_{\text{nw}} R_{\text{nw}} + \mu_m R_m = F_g \cos \iota_T + F_e - D_{\text{wb}} - D_t - W \sin \theta_{\text{rw}}
(\#eq:eom-x)
\]

\[
R_{\text{nw}} + R_m = W \cos \theta_{\text{rw}} - L_w - L_t
(\#eq:eom-z)
\]

\[
\begin{split}
\left( X_1 + X_2 \right) R_{\text{nw}} = W& \cos \theta_{\text{rw}} X_2 \\
&+ W \sin \theta_{\text{rw}} Z_1 \\
&+ \left( F_g \cos \left( \theta + \iota_T \right) - F_e \right) Z_1 \\
&+ L_t \left( X_3 + X_4 - X_2 \right) \\&- L_w \left( X_2 - X_3 \right) \\
&- D_t \left( Z_1 + Z_2 \right)
\end{split}
(\#eq:eom-pitch)
\]

where

* \(F_{\text{e}}\) = excess net thrust
* \(\mu_{\text{nw}}\) = nose wheel coefficient of friction (about \(0.02\) for takeoff, \(0.50\) for maximum dry runway braking)
* \(R_{\text{nw}}\) = reaction force (weight) on nose wheel (positive)
* \(\mu_m\) = main wheel coefficient of friction (positive)
* \(R_m\) = reaction force (weight) on main wheel (positive)
* \(F_g\) = gross engine thrust (positive, aligned with engine axis)
* \(\iota_T\) = thrust incidence angle (positive denotes thrust that generates lift)
* \(F_e\) = ram thrust (or drag) due to momentum change of the air outside the engine, measured along drag axis- aligned with relative wind (typically negative at low speed, positive at high speed)
* \(D_{\text{wb}}\) = aerodynamic drag of wing and body (excludes horizontal tail drag)
* \(D_t\) = aerodynamic drag of horizontal tail (positive aft)
* \(W\) = aircraft weight (positive)
* \(\theta_{\text{rw}}\) = runway slope (positive denotes uphill)
* \(L_w\) = main wing lift (positive denotes up)
* \(L_t\) = horizontal tail (positive denotes up)
* \(X_1\) = distance from nose gear to aircraft cg (positive)
* \(X_2\) = distance from the main gear to aircraft cg (positive)
* \(Z_1\) = distance from the ground plane to the aircraft body axis (positive)
* \(\theta\) = aircraft pitch attitude (positive denotes nose up)
* \(X_3\) = horizontal distance from the wing's aerodynamic center to aircraft \(\mathrm{cg}\) (positive)
* \(X_4\) = horizontal distance from the wing's aerodynamic center to the horizontal tail's aerodynamic center (positive)
* \(Z_2\) = vertical distance from the horizontal tail's aerodynamic center to the aircraft body axis (positive)

The previous equations were arranged so that the right hand side of each can be abbreviated as \(A_1\), \(A_2\), and \(A_3\) respectively.
This step allows for a compact matrix form of the equations using a \(3 \times 3\) matrix.

\[
\begin{bmatrix}
1 & \mu_{\text{mw}} & \mu_m \\
0 & 1 & 1 \\
0 & X_1 + X_2 & 0
\end{bmatrix}
\begin{bmatrix}
F_{\text{ex}} \\
R_{\text{mw}} \\
R_m
\end{bmatrix}
=
\begin{bmatrix}
A_1 \\
A_2 \\
A_3
\end{bmatrix}
\]

Solve for \(F_{\text{ex}}\) by pre-multiplying both sides by the inverse of the first matrix.

\[
\begin{bmatrix}
F_{\text{ex}} \\
R_{\text{mw}} \\
R_m
\end{bmatrix}
=
\begin{bmatrix}
1 & \mu_{\text{mw}} & \mu_m \\
0 & 1 & 1 \\
0 & X_1 + X_2 & 0
\end{bmatrix}^{-1}
\begin{bmatrix}
A_1 \\
A_2 \\
A_3
\end{bmatrix}
\]

Although wheel reaction forces are not required for takeoff distance prediction, they are useful for accurate calculation of rotation capability and for braking effectiveness during landing ground rolls.
For takeoff calculations, several simplifying assumptions can be made such as:

\[
\begin{align}
\mu_{\text{nw}} &= \mu_m = 0.02 \\
F_g &\gg F_e \\
D_t &= 0
\end{align}
\]

This above approach can be repeated for the segment between rotation and liftoff.
This is slightly more complicated because the changing angle of attack alters drag and acceleration.

Precise **predictions of the takeoff air distance** can be made by applying Equation \@ref(eq:direct-to-air) in small increments using accurate models that describe thrust as a function of airspeed and the lift & drag changes due to climbing out of ground effect.

Along with the incremental \(S_g\) and \(S_a\) calculations, the time to accelerate between the corresponding incremental velocities can be calculated as

\[
\Delta t = m \frac{V_2 - V_1}{F_{\text{ex}}}
\]

## Landing Distance

(refs 12.1, 12.2)

The total landing distance, \(S_{\mathrm{LD}}\), is the sum of the ground roll distance (\(S_g\), from touchdown to full stop) and the horizontal component of the air distance (\(S_a\), from the screen height to touchdown).
The screen height can be either \(35\) or \(50\) feet above the surface, depending on the requirements

\[
S_{\mathrm{LD}} = S_g + S_a
\]

Both \(S_g\) and \(S_a\) can be standardized according to the increment or ratio methods described by Equations \@ref(eq:increment) and \@ref(eq:ratio), or by empirical relations.
The empirical methods are useful when detailed aircraft models are not available.
The more exact process of predicting landing distance using models is described in section 12.4.2.

### Empirical Standardization Method

First correct for the effects of the test day wind.
Define headwind velocity as \(V_w\), touchdown true airspeed as \(V_{\mathrm{TD}}\), and test day ground roll as \(S_{g_w}\).
With a typical variation of thrust per headwind, estimate the test day zero-wind ground roll, \(S_{g_{zw}}\), using the approach applied to takeoff ground roll:

\[
S_{g_{zw}} = S_{g_w} \left( \frac{V_{\mathrm{LO}}}{V_g} \right)^{1.85}
(\#eq:emp-zero-wind-gnd-roll-dist-land)
\]

If the average thrust is not appreciably affected by velocity, then the exponent should be \(2.0\) in lieu of \(1.85\).

Apply Equation \@ref(eq:zero-wind-air-dist) to correct to the zero-wind air distance (where \(t\) is the time to descend from the screen height to touchdown).

To **correct to a zero-slope runway**, apply Equation \@ref(eq:zero-slope-air-dist) to the zero-wind ground roll distance (note that \(F_{\text{ex}}\) is negative).
If the average excess thrust is not known, then approximate \( \left[ F_{\text{ex}} \right]_{\text{avg}} \) as that at \(70\%\) of the touchdown airspeed.
Alternately, approximate \( \left[ F_{\text{ex}} \right]_{\text{avg}} \)  from the zero-wind ground roll distance using

\[
\left[ F_{\text{ex}} \right]_{\text{avg}} \approx \frac{m V_{\mathrm{TD}}^2}{2 S_{g_{zw}}}
(\#eq:approx-fex-td-land)
\]

After correcting the test day distance to zero wind and slope, use the following empirical equations to correct the ground roll to standard weight and air density.

\[
S_{g_s} = S_{g_t} \left[ \frac{Ws}{Wt} \right]^2 \frac{\sigma_t}{\sigma_s}
(\#eq:std-gnd-roll-dist-land)
\]

Any desired values can be treated as the "standard" conditions.

Correct the air distance to standard weight and air density using the zero-wind air distance as follows (for a \(50\)-foot screen height)

\[
S_{a_s} = S_{a_t} \left[ \frac{Ws}{Wt} \right]^{2 + \frac{h_v}{h_v + 50}} \left[ \frac{\sigma_t}{\sigma_s} \right]^{2 + \frac{h_v}{h_v + 50}}
(\#eq:std-air-dist-land)
\]

where \(h_v\) is the specific kinetic energy change during the air phase.
For the case of a \(50\text{-foot}\) screen height, this term is calculated as

\[
h_v = \frac{V_{50'}^2 - V_{\mathrm{TD}}^2}{2g}
(\#eq:spec-ke-chg)
\]

### Landing Distance Prediction

With reasonably precise models available, the landing distance can be predicted 
through calculation. Test distances can then be standardized using either the 
increment or ratio method, Equations \@ref(eq:increment) and \@ref(eq:ratio).

A **direct approximation of landing ground roll** can be obtained by applying the 
same equation used for the takeoff case, Equation \@ref(eq:gnd-roll-dist-to). This method requires a value for 
the average net thrust, \(T_{\text{avg}}\) across the landing roll speed range and 
reasonable values for the wheel braking friction coefficient, 
\( 0.35 \lt \mu \lt 0.50 \) for typical dry runway max braking. The same equations 
for estimating ground effect also apply.

A **direct approximation of takeoff air distance** including the flare requires 
the desired lift and associated drag coefficients, the thrust, and the applied 
normal load factor during the landing flare, \( n = 1.15 \).

\[
S_a = \frac{50}{\left( \frac{C_D}{C_L} - \frac{T}{W} \right)} + \frac{ \frac{W}{S} \left( \frac{C_D}{C_L} \frac{T}{W} \right) }{T \rho_0  g \left( n - 1 \right) C_L }
(\#eq:approx-air-dist-land)
\]

A more **exact prediction of landing performance** requires accurate thrust and 
drag models and an integration of the aircraft's velocity across the landing 
time. This is equivalent to a double integration of the aircraft's acceleration 
as shown in Equation \@ref(eq:s-to-fpl). This double integration can be performed
numerically or graphically. Similarly, Equation \@ref(eq:to-dist) can be adapted 
for landing as follows:

\[
S_{\mathrm{LD}} = \frac{m}{2} \sum_{V_0}^{V_{50'}} \frac{V^2_2 - V^2_1}{F_{\text{ex}}}
(\#eq:land-dist)
\]

As with the takeoff case, this equation is usually broken into the air phase and 
the ground roll phase. Calculation of excess thrust during the ground roll needs 
to consider the changing weight on the wheels and associated braking force. This 
requires a simultaneous solution of the three equations of motion along the 
aircraft's longitudinal & vertical axes and about the pitch axis, previously 
shown as Equations \@ref(eq:eom-x), \@ref(eq:eom-z), and \@ref(eq:eom-pitch).

Precise calculation of excess thrust during the air phase must consider the 
change in normal and longitudinal load factor during the flare and the changes 
in lift and drag coefficients due to entering ground effect (previously 
described).

If the desired flare technique is some schedule of flight path angle, 
\(\gamma\), versus altitude, then the normal load factor can be calculated from 
\(\gamma\) and the rate of \(\gamma\) using

\[
N_z = \cos \gamma + \frac{\dot{\gamma} V_T}{g}
\]

The longitudinal load factor can be calculated as

\[
N_x = \frac{\dot{H}}{V_T} + \frac{\dot{V_T}}{g}
\]

where

\[
\sin \gamma = \frac{\dot{H}}{V_T}
\]


An alternate method of calculating distance is the **fixed time increment approach**. 
The following air distance example is based on a *constant angle of attack* 
landing technique (ref 12.5).


| Fixed inputs | Initial inputs |
|:-----------------|:-----------|
| angle of attack, \(\alpha\) | initial ground speed, \( V_{g_0} \) |
| wing area, \(S\) | initial air distance, \( S_{a_0} = 0 \) |
|air density, \(\rho\) | initial altitude, \( h_0 \) |
|weight, \(W\) | initial sink rate, \( \dot{h}_0 \) |
|wingspan, \(b\) | initial lift coefficient, \( C_{\mathrm{LOGE}} \)|
|head wind, \( V_w \) | wing aspect ratio, \(\mathrm{AR}\) |
|net thrust, \( F_n \left( F_n = F_g \cos \alpha - F_e \right) \) | wing Oswald efficiency factor, \(e\) |
|time increment, \(\Delta t \) (\(0.05 \text{ sec} \) works well) | |
|height of wing above ground when on gear, \(h_{\text{wing}}\) | |

| Initial calculations |
|-|
| initial true airspeed, \(V_{T_0} = V_{g_0} + V_w \) |
| initial glide slope, \( \gamma_0 = \sin^{-1} \frac{ \dot{h}_0 }{V_{T_0}} \) |
| initial load factor, \( N_z = \cos \gamma_0 \) (assumes \( \frac{d \gamma_0}{dt} = 0  \)) |
| initial trim speed, \( V_T =\left[ \frac{2 N_z W}{\rho C_L S} \right]^{\frac{1}{2} } \) |

[Incremental calculations]{.underline}

(values with prime symbols represent the result of the previous iteration)

1. \(C_L = C_{\mathrm{LOGE}} \mathrm{GE}_{\mathrm{CL}} = C_{\mathrm{LOGE}} \left[0.8609 - 0.6282 \log_{10} \left( \frac{h}{b} \right) \right] \)
2. \(L = 0.5 N_z W \rho C_L S V_T^2 \)
3. \(N_z = \frac{L}{W} \)
4. \(\dot{\gamma} = \frac{g \left(N_z - \cos \gamma \right)}{V_T} \)
5. \(\gamma = \dot{\gamma}' \Delta t + \gamma' \)
6. \(\dot{h} = V_T \sin \gamma \)
7. \(h = \left( \dot{h} + \dot{h}' \right) \frac{\Delta t}{2} + h' \)
8. \(C_{D_i \mathrm{IGE}} = C_{D_i \mathrm{OGE}} \mathrm{GE}{C_D} = \left[ \frac{C_L^2}{\pi \mathrm{AR} e} \right] \left[0.2412 \ln \left( \frac{h}{b} \right) + 1.0829 \right] \)
9. \(C_D = C_{D_0} + C_{D_i \mathrm{IGE}}\)
10. drag, \( D = \frac{C_D \rho S V_T^2}{2} \)
11. \( F_{\text{ex}} = F_n - D \)
12. \(N_x = \frac{F_{\text{ex}}}{W} \)
13. \(\dot{V} = g \left( N_x - \sin \gamma \right) \)
14. \(V_g = V_g' + \dot{V} \Delta t \)
15. \(S_a = \left(V_g + V_g' \right) \frac{\Delta t}{2} + S_a' \)

## Climb/Descent/Level Acceleration

(ref 12.4)

Standard performance can be determined either by *predicting* results using 
(flight test validated) models or by *correcting* individual flight test 
climb/acceleration results to standard conditions.

Performance predictions require accurate net thrust and aerodynamic models. Net 
thrust is the sum of the gross thrust and ram drag, while the aero model 
includes the drag polar and lift curve.

Corrections to individual climb/accelerations tests require models that only 
show the *change* in thrust & drag between test and standard conditions. The 
following sections address both the prediction and correction approaches.

### Climb/Descent/Acceleration Prediction

According to basic energy theory, an aircraft's specific excess power, \(P_s\),
is related to the change in kinetic and potential energy as follows:

\[
P_s = \frac{P_{\text{ex}}}{W} = \frac{\left( F_n - D \right) V}{W} = \frac{dH}{dt} + \frac{H}{W} \frac{d W}{dt} + \frac{V}{g}\frac{dV}{dt} + \frac{V^2}{2Wg} \frac{dW}{dt}

(\#eq:p-sub-s)
\]

where \(V\) is technically inertial speed. True airspeed and an assumption of 
zero wind is usually used instead of inertial speed. Since aircraft typically 
have negligible weight change during a maneuver, the above reduces to:

\[
P_s = \frac{\left( F_n - D \right) V}{W} = \frac{dH}{dt} + \frac{V}{g}\frac{dV}{dt}
(\#eq:p-sub-s-redux)
\]

This shows not only how climb rate *or* acceleration performance can be 
predicted, but also shows how the climb and acceleration capabilities can be 
*exchanged* at any given specific excess power. Dividing this equation through 
by \(V\) shows the relation between specific excess thrust and **climb angle**, 
**\(\gamma\)**.

\[
\frac{P_s}{V} = {F_n - D}{W} = \frac{\dot{H}}{V} + \frac{1}{g} \frac{dV}{dt} = \sin \gamma
(\#eq:p-sub-s-over-v)
\]

When predicting climb performance capability using this approach, iterations may 
be required because the resulting climb angle affects the normal load factor,
\( N_z = \cos \gamma \), and therefore the induced drag.

### Correcting to Standard Climb Rate

*The below sequence corrects results at the test q and (usually) pressure altitude*

*(i.e. \(V_{e_{\text{test}}} = V_{e_{\text{std}}} \), and \( H_{\text{test}} = H_{\text{std}} \))*

1. If the test day vertical velocity is measured by timing pressure altitude 
changes, then first correct the altimeter readings for instrument error and 
then convert the indicated pressure altitude rate to geometric (tapeline) climb 
rate as follows

\[
\left. \frac{dH}{dt} \right|_t = \left( \frac{T_t}{T_s} \right) \left. \frac{dH}{dt} \right|_{\text{indicated}} 
\]

2. Equation \@ref(eq:p-sub-s-redux) yields the climb rate correction that 
accounts for the change in power (or thrust) between test and standard days 
(at the test weight and velocity)

\[
\left. \Delta \dot{H} \right|_P = \Delta P_s = \frac{\Delta P}{W} = \frac{\Delta F_n V}{W}
\]

where \(\Delta P\) or \(\Delta F_n\) comes from engine models. For reciprocating 
engines without models that can predict this power change, estimate the 
correction using only a standard day power chart and the following equation

\[
\left. \Delta \dot{H} \right|_P = \frac{500 \eta B H P_s}{W_t} \left[ 1 - \sqrt{\frac{T_s}{T_t} } \right] = \frac{\Delta F_n V}{W}
\]

3. A changing horizontal headwind with altitude will alter climb results. If 
this change, \( \frac{d V_w}{dH} \) is known, then add the following 
correction to the tapeline climb rate

\[
\left. \Delta \dot{H} \right|_{\text{hw}} = \frac{V}{g} \left( \frac{dV}{dH} \right) \left( \frac{dH}{dt} \right)_s 
\]

Usually the exact wind shear profile is unknown. In this case, fly perpendicular
to the known crosswind direction and repeat each climb speed at the reciprocal 
heading. After completing the remaining corrections listed below, average the 
reciprocal results to obtain a standard climb rate.

4. If the climb is flown at constant indicated airspeed or Mach, then true 
airspeed will change with air density. Correct for any change in true airspeed 
with the following "acceleration factor" correction

\[
\left. \Delta \dot{H} \right|_{\text{AF}} = \frac{V}{g} \frac{dV}{dt} = \frac{V}{g} \left( \frac{V_{\text{final}} - V_{\text{initial}}}{\text{time to climb}} \right)
\]

5. Combine the previous corrections then multiply this by the "inertial 
correction" factor that accounts for the inertial effects of changing the 
weight from test to standard conditions

\[
\left. \dot{H} \right|_I = \frac{W_t}{W_s}
\]

6. To the above result, add a correction for the change in induced drag due to 
weight change.

\[
\left. \dot{H} \right|_{\text{Ind}} = \frac{2}{\pi \mathrm{AR} e \rho_{\text{alt}} V_T S} \left[ \frac{W_t^2 - W_s^2}{W_s} \right]
\]

**Summary of climb rate corrections**

\[
\left. \dot{H} \right|_{\text{std}} = 
\left\{
      \left( \frac{T_t}{T_s}  \right)
      \left. \frac{dH}{dt} \right|_{\text{indicated}} +
      \left. \Delta \dot{H} \right|_P + 
      \left. \Delta \dot{H} \right|_{\text{hw}} +
      \left. \Delta \dot{H} \right|_{\text{AF}}   
\right\}
\left. \dot{H} \right|_I + 
\Delta \left. \dot{H} \right|_{\text{Ind}}
(\#eq:climb-rate-corr)
\]

Equation \@ref(eq:climb-rate-corr) can also be used to correct descents, level accelerations, and level decelerations to a standard climb rate. The primary difference is that for level accelerations, the accelerations factor is the dominant term while the indicated climb rate is near zero.

### Weight/Altitude/Temperature (WAT) Limits

To ensure safety, aviation authorities specify minimum climb gradients,
\(\gamma_{\text{req'd}} \), for many aircraft operations. The most straight 
forward way to comply with the specified gradients is to document the maximum 
allowable weight at various pressure altitude/temperature combinations.

Assuming the test day \(C_L\) for best \(\gamma\) equals that for any other day,
calculate the maximum allowable weight by applying the following correction to 
the best test \(\gamma\) results.

\[
W_{\text{max}} = \frac{ \left[  \sin \gamma_t + \frac{C_{D_0}}{C_L} + \frac{C_L}{\pi \mathrm{AR} e} \right] W_t + \Delta F_n}{ \sin \gamma_{\text{req'd}} + \frac{C_{D_0}}{C_L} + \frac{C_L}{\pi \mathrm{AR} e}  }
\]

where \( \Delta F_n = F_{n_{\text{std}}} - F_{n_{\text{test}}} \) comes from the 
engine model. To ensure accuracy, the test configuration (i.e., one engine 
inoperative) must equal the standard configuration. Level acceleration results 
are not an acceptable substitute for actual climb data. 

## Level Turn Performance

(ref 12.1)

Standard level turn performance can be determined either by *predicting* results 
using (flight test validated) models or by *correcting* individual turn results 
to standard conditions. It is possible to predict turn performance using climb 
or level acceleration data, but this approach is not always accurate and should 
be validated with actual turn results.

Performance predictions require accurate net thrust and aero models (drag polar 
and lift curve). Corrections to test day turn results require models that only 
show the *change* in thrust & drag between test and standard conditions.

The following sections address both the prediction and correction approaches. 
For either approach, load factor, \(n_{\text{zw}} \), is usually determined first, 
then the corresponding turn rate, \(\omega \left[ \frac{\text{radians}}{\text{sec}} \right] \), 
and radius, \(R \left[ \text{ft} \right] \), are calculated using the equations 
below.

\[
\begin{align}
R &= \frac{V_T^2}{g \sqrt{n_{\text{zw}}^2 - 1}} \\
\\
\omega &= \frac{g \sqrt{n_{\text{zw}}^2 - 1}}{V_T} \\
\\
n_{\text{zw}} &= \sqrt{ \left( \frac{\omega V}{g} \right)^2 + 1  } \\
\end{align}
(\#eq:r-omega-n-zw)
\]

### Sustained Level Turn Performance Prediction

1. At the desired speed, altitude, temperature, and throttle setting use the
engine model to determine the gross thrust, \(F_g\). Sophisticated models may 
show this to be a function of the inlet angle of attack as well.

2. At the same conditions, use the engine and airframe models to determine the 
ram drag, \(F_e\).

3. Calculate net thrust as \(F_n = F_g \cos \alpha_F + F_e\) where 
\(\alpha_F = \left(\alpha + \iota_T \right) \) and \(\iota_T\) is the incidence angle of 
the thrust line (TED positive).

4. The total lift is the sum of the wing lift and the thrust lift:

\[
L = L_W + F_g \sin \alpha_F
\]

Since \(L = n_{\text{zw}} W \), then \(L_W = n_{\text{zw}} W - F_g \sin \alpha_F\)

5. For any sustained turn, the net thrust equals the drag

\[
F_n = D = qSC_D = 
qS \left[ 
      C_{D_0} + 
      \frac{\left( \frac{L_W}{qS} \right)^2}{\pi \mathrm{AR}e} 
   \right] =
qS \left[
      C_{D_0} + 
      \frac{\left( n_{\text{zw}} W - F_g \sin \alpha_F \right)^2}
           {\left(qS\right)^2 \pi \mathrm{AR}e} 
   \right]
\]

Solving for load factor gives

\[
n_{\text{zw}} = \frac{1}{W}
      \left(
            \left\{
                  \left[
                        \frac{F_g \cos \left(\alpha + \iota_T \right)+F_e}
                             {qS} -
                        C_{D_0}
                  \right]
                  \left(
                        qS
                  \right)^2
                  \pi \mathrm{AR} e
            \right\}^{\frac{1}{2}} +
            F_g \sin \left(\alpha + \iota_T \right)
      \right)
(\#eq:load-factor-sus-turn)
\]

For any combination of weight, altitude, and airspeed, calculation of the 
standard sustained load factor requires knowledge of the gross thrust, ram 
drag, drag polar (\(C_{D_0},\,e\)), and angle of attack.

6. To determine the standard angle of attack, start with the lift curve slope 
model

\[
C_L = C_{L_{\alpha = 0}} + \frac{dC_L}{d\alpha} \alpha = C_{L_{\alpha = 0}} + C_{L_{\alpha}}\alpha
\]

Rearrange to solve for \(\alpha\)

\[
\alpha = \frac{C_L - C_{L_{\alpha = 0}}}{C_{L_{\alpha}}} =
      \frac{\left(
                  \frac{n_{\text{zw}}W - F_g \sin \left(\alpha + \iota_T \right)}
                       {qS}
            \right)^2 - C_{L_{\alpha = 0}}}
           {C_{L_{\alpha}}}
(\#eq:alpha-std)
\]

Because \(\alpha\) cannot be solved for explicitly, calculate it using 
successive iterations of Equations \@ref(eq:load-factor-sus-turn) and \@ref(eq:alpha-std).

In cases where

\[
\frac{F_g}{W} \sin \alpha_F \lt \frac{n_{\text{zw}}}{10}
\]

the angle of attack can be roughly estimated without significant error to the 
final result.

### Sustained Level Turn Performance Correction

The best method for obtaining standardized sustained level turn data is to 
correct actual level turn results to standard conditions. It is also possible 
to correct level acceleration or climb data to give standard level turn results. 
This approach may not work as well since any drag polar or engine model errors 
will be magnified. Additionally, inlet distortion that accompanies actual turn 
thrust is different during (low angle of attack) climbs and accelerations.

The equation below corrects any combination of test day climb, turn, and 
acceleration to a load factor for a sustained turn at the same dynamic pressure 
but at standard conditions.

\[
\begin{align}
n_{\text{zw}_{\text{std}}} = \frac{F_{g_{\text{std}}}}{W_s} \sin \alpha_{F_s} + 
\left\{ 
      \left(
              n_{\text{zw}_t} \frac{W_t}{W_s} -
                  \frac{F_{g_t}}{W_s} \sin \alpha_{F_t}
        \right)^2 + \\
        \frac{\pi \mathrm{AR}eqS}{W_s^2}
        \left[
              \frac{W_t \dot{V}_{T_t}}{g} + 
              \frac{W_t \dot{H}_t}{V_{T_t}} + 
              F_{g_{\text{std}}} \cos \alpha_{F_{\text{std}}} -
              F_{g_t} \cos \alpha_{F_t}
        \right]
  \right\}^{\frac{1}{2}}
\end{align}
(\#eq:load-factor-corr)
\]

then the above equation can be closely approximated as

\[
\text{If } \frac{F_g}{W} \sin \alpha_F \lt \frac{n_{\text{zw}}}{10}
\]

\[
n_{\text{zw}_{\text{std}}} = \frac{1}{W_S}
\sqrt{ 
      \left(
            n_{\text{zw}_t} W_t 
      \right)^2 + \pi \mathrm{AR}eqS 
      \left[
            \frac{\dot{V}_{T_t} W_t}{g} +
            \frac{\dot{H}_t W_t}{V_T} +
            \Delta F_{\text{ex}}
      \right]
 }
(\#eq:load-factor-std)
\]

where \( \Delta F_{\text{ex}} = F_{g_{\text{std}}} \cos \left( \alpha_{F_{\text{std}}} \right) - F_{g_t} \cos \left( \alpha_{F_t} \right) \)

The primary difference between using turn, accel, or climb test data is the 
dominant term in the above corrections. In all cases, the test and standard day 
thrust values come from engine models.

### Level Limit Turn Performance Correction

A limit turn is one in which the aircraft performs a level turn beginning from 
maximum speed and maximum load factor and continues to decelerate at the 
\( N_{z_b} \) limit until reaching the maximum \(C_L\). At this point, the 
aircraft continues its level turning deceleration at the lift limit. This 
maneuver is also known as a "slow-down" turn.

Test day limit turn data is corrected to a standard specific excess power, 
\(P_s\), for each given combination of altitude, Mach number, and load factor
(or AOA) limit. The following correction accounts for changes in trim drag, 
weight, and atmospheric affects on thrust.

\[
P_{s_s} = P_{s_t} + \Delta P_s
(\#eq:std-p-sub-s)
\]

where

\[
P_{s_t} = 
\frac{F_{\text{ex}_t} V_{T_t}}{W_t} = 
\frac{m_t a_{xw_t} V_{T_t}}{W_t} =
\frac{\frac{W_t}{g} a_{xw_t} V_{T_t}}{W_t} = 
N_{xw_t} V_{T_t} =
M a_0 \sqrt{\theta_t} N_{xw_t}
\]

and

\[
\begin{align}
\Delta P_s = M a_0 
\left\{
      \left(
            F_{g_s} \cos \alpha_{F_s} + F_e
      \right) \frac{\sqrt{\theta_s}}{W_s} - 
      \left(
            F_{g_t} \cos \alpha_{F_t} + F_e
      \right) \frac{\sqrt{\theta_t}}{W_t} + \\
      SC_{D_0} \left[
                     \frac{q_t \sqrt{\theta_t}}{W_t} -
                     \frac{q_s \sqrt{\theta_s}}{W_s}
               \right] + \\
      \frac{S q_t \sqrt{\theta_t}}{W_t} 
      \left(
            m \left[
                  \frac{N_{\text{zw}_t} W_t - Fg_{n_t} \sin \alpha_{F_t}}{q_t S}
            \right]^2 +
            \Delta C_{D_{\text{trim}_t}}
      \right) - \\
      \frac{S q_s \sqrt{\theta_s}}{W_s} 
      \left(
            m \left[
                  \frac{N_{\text{zw}_s} W_s - Fg_{n_s} \sin \alpha_{F_s}}{q_s S}
            \right]^2 +
            \Delta C_{D_{\text{trim}_s}}
      \right)
\right\}
\end{align}
\]

where

\[
\alpha_{F_t} = \iota_{T_t} - \frac{C_{L_{0_\alpha}}}{a} + \frac{N_{\text{zw}_t} W_t - F{g_t} \sin \alpha_{F_t}}{a q_t S}
\]

and

\[
\alpha_{F_s} = \iota_{T_s} - \frac{C_{L_{0_\alpha}}}{a} + \frac{N_{\text{zw}_s} W_s - F{g_s} \sin \alpha_{F_s}}{a q_s S}
\]

As with the sustained level turn case, one cannot solve explicitly for 
\(\alpha_F\), so either assume an approximate value or iterate until a solution 
converges.

In the simplified case where \(\delta_t = \delta_s\), \(cg_t = cg_{\text{std}} \),
and \( \sin \alpha_F = 0 \), then the above equation reduces to

\[
\begin{align}
\Delta P_s = M a_0 
\left\{
      \frac{\sqrt{\theta_s}}{W_s}
      \left[
            F_{n_s} - qSC_{D_0} -
            \frac{\left(
                        N_{\text{zw}_s W_s}
                  \right)^2}{
                  qS\pi \mathrm{AR} e      
                  }
      \right] - \\
      \frac{\sqrt{\theta_t}}{W_t}
      \left[
            F_{n_t} - qSC_{D_0} -
            \frac{\left(
                        N_{\text{zw}_t W_t}
                  \right)^2}{
                  qS\pi \mathrm{AR} e      
                  }
      \right]
\right\}
\end{align}
(\#eq:delta-p-sub-s)
\]

## Reciprocating Engine Cruise Performance

(ref 12.1)

Cruise performance standardization consists of correcting test day range and 
endurance results to standard conditions. Standard conditions are typically the 
standard aircraft weight & \(\mathrm{cg}\) location, the nearest 
\(5\,000 \text{ft}\) increment of pressure altitude, and standard ambient 
temperature at that altitude. Although not included in this section, additional 
corrections can be made to adjust fuel flow to a standard heating value and to 
adjust the thrust and fuel flow for the slight gravity effects due to changes 
in latitude and centrifugal relief (see section 3.2). #TODO

Although any weight can be called "standard," several are quite common. General 
aviation aircraft typically have the test data corrected to the maximum takeoff 
weight. Transport aircraft often use a mid-mission weight (maximum payload and 
one-half fuel) as standard, and fighter/attack aircraft typically use full 
ordnance and half internal fuel as standard for any given configuration.

Once standard cruise results are documented, mission planning can be conducted 
by reversing the standardization equations to the desired "mission" conditions. 
If desired, test day results can be directly corrected to mission conditions by 
simply treating the mission conditions as standard. These options are shown 
below.

It is common practice to correct test data for only minor changes in altitude & 
temperature conditions. Because large changes in Mach and Reynolds numbers alter 
drag polars and engine efficiency, it is not common practice to correct results 
across altitude differences of more than 5,000 feet. This leads to a series of 
results separated by altitude.

### Power Standardization

If fuel flow is directly proportional to power output only, the power and 
optimal velocity for cruise performance can be determined from a power required 
curve as shown below.

![](media/12/power-speed-curve.png){width="2.3854166666666665in" height="1.3354166666666667in"}

To correct the power required curve to any standard altitude/weight condition, the usual approach is to treat the lift coefficient as the anchor (*C~L\ test\ ~*= *C~L\ std~*). This leads to the following power and velocity standardization equations

\[
\begin{align}
P_s = P_t \left( \frac{W_s}{W_t} \right)^{\frac{3}{2}} \left( \frac{\sigma_t}{\sigma_s} \right)^{\frac{1}{2}} \\
\\
V_{T_s} = V_{T_t} \left( \frac{W_s}{W_t} \frac{\sigma_t}{\sigma_s} \right)^{\frac{1}{2}}\\
\end{align}
(\#eq:pwr-vel-std)
\]

Because the drag polar of low performance propeller aircraft generally collapses 
(generalizes) well to a single curve, it is often acceptable to correct 
[all]{.underline} power required data to a single standard altitude/weight 
condition. When this condition is chosen to be standard day sea level at maximum 
weight, the above correction simplifies to what is known as the 
"\(P_{\text{iw}} \sim V_{\text{iw}}\)" values.

\[
\begin{align}
P_m = P_{\text{iw}} = P_t \left( \frac{W_s}{W_t} \right)^{\frac{3}{2}} \left( \sigma_t \right)^{\frac{1}{2}}  \\
\\
V_{T_s} = V_{\text{iw}}= V_{e_t} \left( \frac{W_s}{W_t} \right)^{\frac{1}{2}} \\
\end{align}
(\#eq:pwr-vel-std-max-wt)
\]

Although all points along the test day power curve can be standardized, the most 
useful points are those for best range and endurance. When corrected to standard 
conditions, the performance of the test aircraft can be fairly compared to that 
of another aircraft which has also been corrected to the same flight conditions.

Additionally, once the standard power and velocity are known and documented, the 
required power and airspeed for any "mission" conditions can be predicted by 
reversing Equations \@ref(eq:pwr-vel-std-max-wt) as follows

\[
\begin{align}
P_m = P_{\text{iw}} \left( \frac{W_m}{W_s} \right)^{\frac{3}{2}} \left( \frac{1}{\sigma_m} \right)^{\frac{1}{2}} \\
\\
V_{T_m} = V_{\text{iw}} \left( \frac{W_s}{W_t} \right)^{\frac{1}{2}} \left( \frac{1}{\sigma_m} \right)^{\frac{1}{2}}\\
\end{align}
(\#eq:pwr-vel-msn)
\]

The power & optimal speed for best mission range (and mission endurance) are 
determined by applying the above equations to correct the points noted on the 
above figure. To correct directly from test conditions to mission conditions, 
apply Equation \@ref(eq:pwr-vel-std) and substitute mission weight and density 
in lieu of standard values.

### Fuel Flow Standardization

Because reciprocating engine fuel flow is essentially proportional to power 
output, Equations \@ref(eq:pwr-vel-std) and \@ref(eq:pwr-vel-std-max-wt) can 
be modified to correct the test fuel flow to standard values. For the following 
standardization equations to be accurate, the propeller efficiency and brake 
specific fuel consumption, \(\mathrm{BSFC}\), must be the same for test and 
standard days.

\[
\begin{align}
\dot{W}_{f_s} = \dot{W}_{f_t} \left( \frac{W_s}{W_t} \right)^{\frac{3}{2}} \left( \frac{\sigma_t}{\sigma_s} \right)^{\frac{1}{2}} \\
\\
\text{or} \\
\\
\dot{W}_{f_{\text{iw}}} = \dot{W}_{f_t} \left( \frac{W_s}{W_t} \right)^{\frac{3}{2}} \left( \sigma_t \right)^{\frac{1}{2}} \\
\end{align}
(\#eq:fuel-flow-std)
\]

Because \(\mathrm{BSFC}\) is affected by engine \(\mathrm{RPM}\) (due to 
friction losses), fuel flow results at one engine \(\mathrm{RPM}\) are never 
corrected to another \(\mathrm{RPM}\). Separate tests must be performed for each 
engine speed of interest. \(\mathrm{BSFC}\) [may]{.underline} also be affected 
by ambient air pressure and temperature. If the relation between fuel flow and 
power can be represented with a model as shown, then the fuel flow is a linear 
function of \(\mathrm{BSFC}\).

![](media/12/fuel-flow-power-curve.png){width="2.3854166666666665in" height="1.3354166666666667in"}

\[
\dot{W}_f = b + \mathrm{BSFC} \cdot \mathrm{BHP}
\]

If the values for \(b\) and \(\mathrm{BSFC}\) are known for both the test and 
standard conditions, then test fuel flow can be more exactly corrected to 
standard weight and density conditions as follows

\[
\dot{W}_{f_s} = b_s + \left( \dot{W}_{f_t} - b_t \right) \frac{\eta_t}{\eta_s} \frac{\mathrm{BSFC}_s}{\mathrm{BSFC}_t} \left( \frac{W_s}{W_t} \right)^{\frac{3}{2}} \left( \frac{\sigma_t}{\sigma_s} \right)^{\frac{1}{2}}
(\#eq:fuel-flow-std-bsfc)
\]

Note that this correction requires only a knowledge of the *ratio* of test and 
standard \(\mathrm{BSFC}\) values. If both values have the same percent error, 
then the effect is self-canceling. The above equation also corrects for changes 
in fuel flow due to changing propeller efficiency.

### Endurance Optimization and Prediction

To determine the optimum endurance flight profile and time aloft for any 
condition (at the same \(\mathrm{RPM}\) as the test condition), plot the test day 
specific endurance parameter, \(\mathrm{SEP}\), versus the test day lift 
coefficient, \(C_L\)

![](media/12/sep-c-sub-l-curve.png){width="4in"}

The maximum endurance occurs at the peak of the \(\mathrm{SEP}\) curve. The 
associated lift coefficient is the optimum endurance condition for the aircraft 
(at that same \(\mathrm{RPM}\)). The results of this test change with engine 
speed. If the aircraft operates at this optimum \(C_L\) or any other constant 
\(C_L\), then the total endurance time, \(T\), while *at constant altitude* can 
be calculated from this test day data using

\[
t = \mathrm{SEP} \left( \frac{\sigma_s}{\sigma_t} \right)^{\frac{1}{2}} \left[ \frac{2}{\sqrt{W_F}} - \frac{2}{\sqrt{W_I}} \right]
(\#eq:tot-endur-time)
\]

where the \(\mathrm{SEP}\) comes from the above test day curve at whatever 
\(C_L\) is chosen. \(W_I\) is the total aircraft weight at the start of the 
endurance segment and \(W_F\) is the final weight of the endurance segment. 

This equation accounts for the effect of how a change in air density alters the 
power required and the subsequent fuel flow, but does not account for changes in 
propeller efficiency, \(\mathrm{BSFC}\), or the fuel flow intercept, \(b\). 
For endurance at a constant \(C_L\) and \(V_T\), use the following equation and 
the \(\mathrm{SEP}\) and test weight associated with the lift coefficient at the 
start of the endurance segment.

\[
t = \frac{\mathrm{SEP}}{\sqrt{W_t}} \ln \frac{W_I}{W_F}
(\#eq:tot-endur-time-const-sep-cl)
\]

### Range Optimization and Prediction

(ref 12.1)

To determine the optimum range flight profile and distance for any condition (at 
the same \(\mathrm{RPM}\) as the test condition), plot the test day range 
factor, \(\mathrm{RF}\), versus the test day lift coefficient, \(C_L\)

![](media/12/rng-factor-cl-curve.png){width="4in"}

The maximum range occurs at the peak of the \(\mathrm{RF}\) curve. The 
associated lift coefficient is the optimum range condition for the aircraft 
(at that same \(mathrm{RPM}\)). The results of this test change with engine 
speed. If the aircraft operates at this optimum \(C_L\) or any other constant 
\(C_L\), then the range at constant *altitude* can be calculated from this test 
day data using

\[
R = \mathrm{RF} \ln \frac{W_I}{W_F}
(\#eq:const-alt-rng)
\]

where the \(\mathrm{RF}\) comes from the above test day curve at whatever 
\(C_L\) is chosen. \(W_I\) is the total aircraft weight at the start of the 
range segment and \(W_F\) is the final weight of the range segment. Although not 
explicitly shown in this equation, the correction does account for changes in 
air density, but does not account for changes in propeller efficiency, 
\(\mathrm{BSFC}\), or the fuel flow intercept, \(b\).

For cruise at constant *airspeed and altitude*, use the following equation and 
the \(\mathrm{RF}\) associated with the lift coefficient at the start of the 
cruise segment.

\[
R = \mathrm{RF} \cdot \tan^{-1} \left[ \frac{1 - \frac{W_F}{W_I}}{1 + \frac{W_F}{W_I}} \right]
(\#eq:const-as-alt-rng)
\]

## Jet Aircraft Cruise Performance

(ref 12.1)

Refer to section \@ref(reciprocating-engine-cruise-performance) for a general 
discussion of cruise performance standardization.

### Thrust Standardization

If fuel flow is directly proportional to net thrust output only, the thrust and 
optimal velocity for cruise performance can be determined from a thrust required 
curve as shown below.

![](media/12/thrust-speed-curve.png){width="4in"}

Because jet aircraft typically cruise at speeds where changes in Mach number 
affect the drag polar, it is customary to treat both the lift coefficient and 
Mach numbers as anchors, \(C_{L_{\text{test}}} = C_{L_{\text{std}}}, M_{\text{test}} = M_{\text{std}} \). 
In terms of Mach number, cruise (\(n_z = 1\)) lift coefficient is calculated as

\[
C_L = \frac{ \frac{W}{\delta} }{1481 M^2 S}
(\#eq:cruise-cl-in-mach)
\]

From this relation, the only way to match test & standard values for both 
\(C_L\) and \(M\) is to match test & standard values for \(\frac{W}{\delta}\).
In this case, the test day net thrust required curve can be corrected to 
standard conditions as follows

\[
\begin{align}
F_{n_s} = F_{n_t} \frac{W_s}{W_t}\\
\\
V_{T_s} = V_{T_t} \sqrt{\frac{\theta_s}{\theta_t}}\\
\end{align}
(\#eq:net-thrust-speed-std)
\]

Although all points along the test day thrust curve can be standardized, the 
most useful points are those for best range and endurance. When corrected to 
standard conditions, the performance of the test aircraft can be fairly compared 
to that of another aircraft which has also been corrected to the same flight 
conditions. Additionally, once the standard thrust and velocity are known and 
documented, the required power and airspeed for any "mission" conditions can be 
predicted by reversing Equations \@ref(eq:net-thrust-speed-std).

### Fuel Flow Standardization

Both the thrust and fuel flow of a simple (fixed-geometry turbojet) turbine 
engine are functions of engine speed, \(N\), Mach number, \(M\), ambient 
pressure, \(\delta\), and ambient temperature, \(\theta\). Dimensional analysis 
and experimental results show these parameters to be related approximately as 
illustrated in the figures below.

![](media/12/corr-fuel-flow-thrust-rpm-m.png){width="8in"}

Thrust specific fuel consumption, \(\mathrm{TSFC}\), is defined as the fuel flow 
per thrust. At any given level of corrected fuel flow, the above figures can be 
cross-plotted onto a single figure that relates corrected thrust, 
\(\frac{F}{\delta}\), to corrected fuel flow at various Mach numbers.

![](media/12/corr-thrust-m.png){width="4in"}

The slopes of the above figure exaggerate the typical case where 
\(\mathrm{TSFC}\) changes with Mach number. If, at any given Mach number, steady 
increments of corrected fuel flow are evenly spaced vertically, then

\[
\frac{\mathrm{TSFC}}{\sqrt{\theta}} \approx \text{ constant at that Mach number}
\]

Standard fuel flow can be determined from these relations. If flight test data 
is to be corrected from test to standard conditions at the same \(C_L\) and 
\(M\), then the \(C_D\) will also be the same for both test & standard 
conditions. Because thrust equals drag during cruise, the following relations 
show that corrected thrust, \(\frac{F}{\delta}\), must be the same for test and standard conditions

\[
C_D = \frac{\frac{D}{\delta}}{1481 M^2 S} = \frac{\frac{F}{\delta}}{1481 M^2 S}
\]

Technically \(F_n = \cos \left( \alpha + \iota_T \right) + F_e = D\), where 
\(F_n\) = net thrust, \(F_e\) = ram thrust, and \(\iota_T\) is the thrust 
incidence angle.

If Mach number and \(\frac{F}{\delta}\) are equal for both test & standard 
conditions, then the previous cross plot shows that corrected fuel flow must 
also be the same for both conditions.

\[
\frac{\dot{W}_{f_t}}{\delta_t \sqrt{\theta_t}} = \frac{\dot{W}_{f_s}}{\delta_s \sqrt{\theta_s}}
\]

This relation allows standard fuel flow to be calculated as

\[
\begin{align}
\dot{W}_{f_s} = \dot{W}_{f_t} \frac{\delta_s \sqrt{\theta_s}}{\delta_t \sqrt{\theta_t}} \\
\\
\text{if } C_{L_{\text{test}}} = C_{L_{\text{std}}}, M_{\text{test}} = M_{\text{std}} \\
\end{align}
(\#eq:std-fuel-flow)
\]

### Endurance Optimization and Prediction

Test day results are corrected to standard results at the same Mach, \(C_L\) 
(and therefore the same \(\frac{W}{\delta}\), according to Equation 
\@ref(eq:cruise-cl-in-mach)) as the test condition. For each \(\frac{W}{\delta}\) 
ratio tested, plot the test day corrected fuel flow versus the test Mach number.

![](media/12/test-corr-fuel-flow-m-curve.png){width="4in"} 

At any given \(\frac{W}{\delta}\), the maximum endurance occurs at the Mach 
corresponding to the bottom of the curve. This optimal Mach and 
\(\frac{W}{\delta}\) define the optimum lift coefficient for endurance 
(Equation \@ref(eq:net-thrust-speed-std)).

The corrected fuel flow for any desired Mach & \(\frac{W}{\delta}\) combination 
can be interpolated from the above figure. Calculate the actual fuel flow using 
Equation \@ref(eq:std-fuel-flow).

Even with simple turbojets, experience has shown that the above curves do not 
generalize well if the desired standard altitudes are more than about 
\(5\,000 \text{ ft}\) away from the test altitude.

If the aircraft maintains flight at any combination of constant Mach & 
\(\frac{W}{\delta}\), then the corrected fuel flow will be constant. For flight 
at a constant \(C_L\), endurance time can be calculated using

\[
t = \frac{1}{\sqrt{\theta}} \frac{\sqrt{\theta}}{c} \frac{C_L}{C_D} \ln \frac{W_I}{W_D}
(\#eq:endur-time-cl)
\]

where \(c\) is the thrust specific fuel consumption at sea level standard 
conditions. \(W_I\) is the total aircraft weight at the start of the endurance 
segment and \(W_F\) is the final weight of the endurance segment. Although not 
explicitly shown in this equation, the correction process does account for 
changes in aircraft weight, and ambient pressure & temperature.

### Range Optimization and Prediction

As with endurance analysis, test day range results are standardized at a common 
Mach & \(\frac{W}{\delta}\). Using the same corrected fuel flow versus Mach test 
data illustrated in section \@ref(endurance-optimization-and-prediction), create 
a cross plot of range factor, \(\mathrm{RF}\), versus Mach number for each 
\(\frac{W}{\delta}\) tested.

![](media/12/rng-factor-m-curve.png){width="3in"}

where range factor can be calculated as

\[
\mathrm{RF} = \mathrm{SR}_t \cdot W_t = \frac{V_{T_t}}{\dot{W}_{f_t}} W_t = \frac{M}{ \frac{\dot{W}_{f_t}}{\delta_t \sqrt{\theta_t}} } \frac{W_t}{\delta_t} a_0
(\#eq:rng-factor-w-delta)
\]

The optimum \(C_L\) for range at any given \(\frac{W}{\delta}\) occurs at the 
Mach corresponding to the top of the curve. The best overall \(\frac{W}{\delta}\) 
is the highest. These curves do not usually generalize well if the desired 
standard altitudes are more than about \(5\,000 \text{ft}\) away from the test 
altitudes.

If the aircraft cruises at any combination of constant Mach & \(\frac{W}{\delta}\), 
then the range factor will be constant, and range is calculated as

\[
R = \mathrm{RF} \ln \frac{W_I}{W_F}
(\#eq:rng-factor-const-M-w-delta)
\]

where \(\mathrm{RF}\) comes from the above test day figure at whatever Mach & 
\(\frac{W}{\delta}\) is chosen. It is often reasonable to interpolate the above 
test data to define a \(\mathrm{RF}\) for the desired standard conditions. 
\(W_I\) and \(W_F\) are the total aircraft weights at the start and end of the 
range segment.

For cruise at constant *altitude*, fly at a constant \(C_L\) by allowing the 
airspeed to decrease with weight. Calculate range from test day results using

\[
R = 2 \sqrt{W_t} \frac{V_{T_t}}{\dot{W}_{f_t}} \left( \sqrt{W_I} - \sqrt{W_F} \right)
(\#eq:rng-const-alt)
\]

For this equation to be valid, use the \(V_{T_t}\) and fuel flow corresponding 
to the same \(C_L\) and altitude of the desired standard conditions. Both of the 
above correction equations account for changes in aircraft weight and ambient 
temperature.

## References

|||
|-|---------------|
|12.1| Lawless, Alan R, "Fixed Wing Aircraft Performance Testing," Volume III, Professional Textbook Series, National Test Pilot School, Mojave CA, 1998.|
|12.2| anon, "Performance Flight Testing Phase" notes, USAF TPS , Edwards AFB, CA, 1991.|
|12.3| Lush, Kenneth J "Standardization of Take-Off Performance Measurements for Airplanes," AFFTC Technical Note R-12, USAF Air Research and Development Command, Edwards AFB, CA, circa 1955.|
|12.4| Roberts, S.C., "Light Aircraft Performance for Test Pilots and Flight Test Engineers," Flight Research, Inc., 1980.|
|12.5| Olson, Wayne, "Performance Testing Handbook," AFFTC-TIH-99-01, AFFTC, Edwards AFB, CA, 1999.|

 

  [12001]: media/12/image1.svg {width="0.27291666666666664in" height="0.28055555555555556in"}
  [12002]: media/12/image2.svg {width="0.27291666666666664in" height="0.28055555555555556in"}
  [12003]: media/12/image3.svg {width="3.1770833333333335in" height="0.7083333333333334in"}
  [12004]: media/12/image5.svg {width="2.9006944444444445in" height="0.2604166666666667in"}
  [12005]: media/12/image7.svg {width="3.125in" height="0.5631944444444444in"}
  [12006]: media/12/image9.svg {width="3.2125in" height="0.5208333333333334in"}
  [12007]: media/12/image11.svg {width="2.1666666666666665in" height="1.09375in"}
  [12008]: media/12/image12.svg {width="2.692361111111111in" height="1.0506944444444444in"}
  [12009]: media/12/image13.svg {width="2.0506944444444444in" height="1.0395833333333333in"}
  [12010]: media/12/image14.svg {width="3.9791666666666665in" height="0.7347222222222223in"}
  [12011]: media/12/image15.svg {width="3.4479166666666665in" height="0.5in"}
  [12012]: media/12/image17.svg {width="3.9166666666666665in" height="0.4305555555555556in"}
  [12013]: media/12/image19.svg {width="3.095833333333333in" height="0.4777777777777778in"}
  [12014]: media/12/image21.svg {width="2.25in" height="0.7784722222222222in"}
  [12015]: media/12/image22.svg {width="2.3881944444444443in" height="0.8048611111111111in"}
  [12016]: media/12/image23.svg {width="0.8993055555555556in" height="0.46875in"}
  [12017]: media/12/image24.svg {width="1.9270833333333333in" height="0.6361111111111111in"}
  [12018]: media/12/image25.svg {width="1.8958333333333333in" height="0.6041666666666666in"}
  [12019]: media/12/image26.svg {width="1.4069444444444446in" height="0.5833333333333334in"}
  [12020]: media/12/image27.svg {width="2.1770833333333335in" height="0.65625in"}
  [12021]: media/12/image28.svg {width="1.4715277777777778in" height="0.5076388888888889in"}
  [12022]: media/12/image29.svg {width="1.9277777777777778in" height="0.8645833333333334in"}
  [12023]: media/12/image30.svg {width="1.6659722222222222in" height="0.59375in"}
  [12024]: media/12/image31.svg {width="1.1145833333333333in" height="0.5215277777777778in"}
  [12025]: media/12/image32.svg {width="0.90625in" height="0.5270833333333333in"}
  [12026]: media/12/image33.svg {width="1.8125in" height="0.5430555555555555in"}
  [12027]: media/12/image35.svg {width="3.01875in" height="0.4166666666666667in"}
  [12028]: media/12/image36.svg {width="1.7395833333333333in" height="0.43125in"}
  [12029]: media/12/image37.svg {width="0.25in" height="0.5in"}
  [12030]: media/12/image38.svg {width="2.0729166666666665in" height="0.5104166666666666in"}
  [12031]: media/12/image39.svg {width="1.7916666666666667in" height="0.48819444444444443in"}
  [12032]: media/12/image40.svg {width="1.6458333333333333in" height="0.4375in"}
  [12033]: media/12/image41.svg {width="1.8541666666666667in" height="0.5375in"}
  [12034]: media/12/image42.svg {width="1.323611111111111in" height="0.40625in"}
  [12035]: media/12/image43.svg {width="2.3666666666666667in" height="0.56875in"}
  [12036]: media/12/image44.svg {width="0.7708333333333334in" height="0.4479166666666667in"}
  [12037]: media/12/image45.svg {width="2.0590277777777777in" height="0.4895833333333333in"}
  [12038]: media/12/image46.svg {width="3.734722222222222in" height="0.5361111111111111in"}
  [12039]: media/12/image47.svg {width="2.4791666666666665in" height="0.8048611111111111in"}
  [12040]: media/12/image48.svg {width="4.822916666666667in" height="0.5416666666666666in"}
  [12041]: media/12/image50.svg {width="4.5in" height="0.9986111111111111in"}
  [12042]: media/12/image51.svg {width="4.5in" height="0.6354166666666666in"}
  [12043]: media/12/image52.svg {width="2.7576388888888888in" height="0.4375in"}
  [12044]: media/12/image53.svg {width="3.473611111111111in" height="0.80625in"}
  [12045]: media/12/image54.svg {width="1.29375in" height="0.4479166666666667in"}
  [12046]: media/12/image55.svg {width="1.375in" height="0.45555555555555555in"}
  [12047]: media/12/image56.svg {width="4.5in" height="0.625in"}
  [12048]: media/12/image57.svg {width="1.21875in" height="0.4111111111111111in"}
  [12049]: media/12/image58.svg {width="4.247916666666667in" height="0.6333333333333333in"}
  [12050]: media/12/image59.svg {width="3.9118055555555555in" height="1.0208333333333333in"}
  [12051]: media/12/image60.svg {width="4.5in" height="0.8645833333333334in"}
  [12052]: media/12/image61.svg {width="2.46875in" height="0.9458333333333333in"}
  [12053]: media/12/image62.svg {width="4.5in" height="0.5in"}
  [12054]: media/12/image63.svg {width="2.3854166666666665in" height="1.3354166666666667in"}
  [12055]: media/12/image65.svg {width="4.442361111111111in" height="0.6145833333333334in"}
  [12056]: media/12/image69.svg {width="4.2965277777777775in" height="0.6458333333333334in"}
  [12057]: media/12/image73.svg {width="4.514583333333333in" height="0.6354166666666666in"}
  [12058]: media/12/image77.svg {width="4.3902777777777775in" height="0.5729166666666666in"}
  [12059]: media/12/image81.svg {width="4.108333333333333in" height="1.3256944444444445in"}
  [12060]: media/12/image85.svg {width="3.8125in" height="0.5472222222222223in"}
  [12061]: media/12/image87.svg {width="1.0625in" height="0.47708333333333336in"}
  [12062]: media/12/image88.svg {width="1.5847222222222221in" height="1.2291666666666667in"}
  [12063]: media/12/image90.svg {width="0.875in" height="0.4701388888888889in"}
  [12064]: media/12/image91.svg {width="3.296527777777778in" height="0.5833333333333334in"}
  [12065]: media/12/image93.svg {width="2.9166666666666665in" height="0.4583333333333333in"}
  [12066]: media/12/image95.svg {width="3.0in" height="1.9076388888888889in"}
  [12067]: media/12/image99.svg {width="3.03125in" height="0.4986111111111111in"}
  [12068]: media/12/image101.svg {width="3.2604166666666665in" height="0.8229166666666666in"}
  [12069]: media/12/image103.svg {width="2.7604166666666665in" height="0.4305555555555556in"}
  [12070]: media/12/image105.svg {width="3.625in" height="0.5097222222222222in"}
  [12071]: media/12/image109.svg {width="4.65625in" height="1.9930555555555556in"}
  [12072]: media/12/image113.svg {width="2.6569444444444446in" height="1.4993055555555554in"}
  [12073]: media/12/image115.svg {width="2.90625in" height="0.4048611111111111in"}
  [12074]: media/12/image117.svg {width="1.9895833333333333in" height="0.49930555555555556in"}
  [12075]: media/12/image118.svg {width="1.61875in" height="0.53125in"}
  [12076]: media/12/image119.svg {width="4.127777777777778in" height="0.5722222222222222in"}
  [12077]: media/12/image121.svg {width="2.2222222222222223in" height="1.5944444444444446in"}
  [12078]: media/12/image122.svg {width="3.1875in" height="0.5104166666666666in"}
  [12079]: media/12/image124.svg {width="4.533333333333333in" height="1.5166666666666666in"}
  [12080]: media/12/image128.svg {width="2.7604166666666665in" height="0.4513888888888889in"}
  [12081]: media/12/image130.svg {width="3.0388888888888888in" height="0.49583333333333335in"}

<!--chapter:end:12-standardization.Rmd-->

# Acoustics

## Abbreviations and Terminology

**Abbreviations**

| | |
|:-|:--|
|ANSI | American National Standards Institute|
|\(\text{dB}\) | decibels|
|\(f\) | frequency, cycles/sec|
|\(p\) | pressure|
|\(\text{pW}\) | \(10^{-12}\) Watts|
|\(x\) | \(\mathrm{RMS}\) value of quantity|
|\(x_0\) | reference value of quantity|
|\(\mu Pa\) | \(10^{-6}\) Pascals|
|\(\text{Hz}\) | Hertz|
|\(nm\) | \(10^{-9}\) meters|
|\(P\) | sound power |

**Terminology**

| | |
|:-|:------|
|decade | band with the upper frequency x10 that of the lower|
|decibels | measure of a magnitude, \(\text{dB} = 10 \log_{10}\) (mag)|
|far field | beyond the near field (region where sound level drops \(-6\,\text{dB}\) as distance from the source doubles).|
|Hertz | frequency in cycles/second|
|narrow band | band whose width is less than one-third octave but less than \(1\%\) of the center frequency near field range within a distance equal to the wavelength of the lowest frequency emitted or twice the greatest dimension of the subject|
|octave | a band with the upper frequency exactly twice the lower frequency[^1] |
|pink noise | has equal energy in each octave from \(20\) to \(20\,000\) Hz, or with an energy content inversely proportional to frequency|
|random noise | does not have a uniform frequency spectrum and has an amplitude, as a function of time, consistent with a Gaussian distribution curve|
|third-octave | highest frequency \(= 1.26\) x lower frequency (ratio \(= 2^{\frac{1}{3}}\))|
|white noise | has a constant spectrum level over the entire band of audible frequencies (need not be random)|

## Acoustic Velocities, Spectrum, and Reference Levels

**Acoustic Velocity (speed of sound)**

| Medium                 | Approximate Velocity, \(\frac{\text{m}}{\text{s}}\) |
|------------------------|----------------------------------------------------:|
| Air (\(20° \text{C}\)) | \(343\)                                             |
| Fresh water            | \(1\,480\)                                          |
| Aluminum               | \(5\,150\)                                          |
| Concrete               | \(3\,600\)                                          |
| Glass                  | \(5\,300\)                                          |
| Steel                  | \(6\,000\)                                          |

\[
\text{Wavelength, } \lambda = \frac{\text{acoustic velocity}}{\text{frequency}}
\]

Human hearing range is approximately \(20\) to \(20\,000 \text{ Hz}\) 

![](media/13/image1.png)

* Ultrasound lies above \(20\,000 \text{ Hz}\) 
* Infrasound lies below \(20 \text{ Hz}\) 

**Acoustic Reference Levels**

| Quantity | Formula | Reference |
|:--|:-|:-|
| Velocity \( \left( L_v \right) \)  | \(20 \log \left( \frac{v}{v_0} \right) \) | \(v_0 = 10 \frac{\text{nm}}{\text{s}^2} \) |
| Intensity \( \left( L_I \right) \) | \(10 \log \left( \frac{I}{I_0} \right) \) | \(I_0 = 1 \frac{\text{pW}}{\text{m}^2} \) |
| Sound Power Level \( \left( L_W \right) \) | \(10 \log \left( \frac{P}{P_0} \right) \) | \(P_0 = 1 \text{ pW} \) |
| Sound Pressure Level, \(\mathrm{SPL}\) \( \left( L_p \right) \) | \(20 \log \left( \frac{p}{p_0} \right) \) | \(P_0 = 1\,\mu\text{Pa (air)} \) |
| Pressure Spectrum Level \( \left( \mathrm{PSL} \right) \)[^2] | \(\mathrm{SPL} - 10 \log \Delta f \) | \(\text{dB}\) |
| Pressure Band Level \( \left( \mathrm{PBL} \right) \) | \(\mathrm{PSL} + 10 \log \Delta f \) | \(\text{dB}\) |
| Overall SPL \( \left( \mathrm{OASPL} \right) \) | \(10 \log_{10} \sum 10^{\frac{\mathrm{SPL}}{10}} \) | \(20\,\mu\text{Pa (air)}\)|

## Acoustic Pressure and Intensity

**Sound Pressure from Sound Power**

| | |
|-|-|
| Transmission Environment | \(L_p\) |
| Free Field | \(L_W + \log Q - 20 \log r - 10.8 \text{ dB}\) |
| Reflecting Plane | \(L_W + \log Q - 20 \log r - 7.8 \text{ dB}\) |
| Reverberant Room | \(L_W + \log Q - 20 \log R - 6.2 \text{ dB}\) |

where 

\[
\begin{align}
r &= \text{distance from source}\\
Q &= \text{directivity index of source}\\
R &= \text{room constant}\\
\end{align}
\]

**Acoustic Intensity**

\[
I - \frac{\text{Imaginary} \left[ G_{yx} \left( f \right) \right]}{4 \pi \rho_0 \Delta r f} = \frac{\text{Im} \left[ G_{yx} \left( f \right) \right]}{16.25 \Delta r f} \left( \text{for air} \right)
\]

where 

\[
\begin{align}
\rho_0 &= \text{fluid density} = 1.293 \frac{\text{kg}}{\text{m^3}} \text{ for air}\\
\Delta r &= \text{microphone spacing (meters)}\\
f &= \text{frequency}\\
\end{align}
\]

**Intensity Spectrum Level (ISL)**

Intensity level of a sound contained within a band 1 \(\text{Hz}\) wide

\[
\mathrm{ISL} = 10 \log \frac{I}{I_0 \Delta f} = \mathrm{IL} - 10 \log \Delta f \left( \text{dB} \right)
\]

where

\[
\begin{align}
f &= \text{center frequency of band} \\
I &= \text{sound intensity} \left( \frac{\text{watts}}{\text{m}^2} \right) \\
I_0 &= 10^{-12} \frac{\text{watt}}{\text{m}^2} \text{reference intensity} \\
\Delta f &= \text{bandwidth} \left( \text{Hz} \right) \\
\end{align}
\]

## Acoustic Weighting Curves

(ANSI S1.4 1983)

Weighting for SPL


| Nominal Freq | Exact Freq | A | B | C |
|-----:|-----:|--:|--:|--:|
| \(\text{Hz}\) |\(\text{Hz}\) | \(\text{dB}\) | \(\text{dB}\) | \(\text{dB}\) |
| \(10.0\)    | \(10.00\)    | \(-70.4\) | \(-38.2\) | \(-14.3\) |
| \(12.5\)    | \(12.59\)    | \(-63.6\) | \(-33.3\) | \(-11.3\) |
| \(16.0\)    | \(15.85\)    | \(-56.4\) | \(-28.3\) | \(-8.4\)  |
| \(20.0\)    | \(19.95\)    | \(-50.4\) | \(-24.2\) | \(-6.2\)  |
| \(25.0\)    | \(25.12\)    | \(-44.8\) | \(-20.5\) | \(-4.4\)  |
| \(31.5\)    | \(31.62\)    | \(-39.5\) | \(-17.1\) | \(-3.0\)  |
| \(40.0\)    | \(39.81\)    | \(-34.5\) | \(-14.1\) | \(-2.0\)  |
| \(50.0\)    | \(50.12\)    | \(-30.3\) | \(-11.6\) | \(-1.3\)  |
| \(63.0\)    | \(63.10\)    | \(-26.2\) | \(-9.4\)  | \(-0.8\)  |
| \(80.0\)    | \(79.43\)    | \(-22.4\) | \(-7.3\)  | \(-0.5\)  |
| \(100.0\)   | \(100.00\)   | \(-19.1\) | \(-5.6\)  | \(-0.3\)  |
| \(125.0\)   | \(126.90\)   | \(-16.2\) | \(-4.2\)  | \(-0.2\)  |
| \(160.0\)   | \(158.50\)   | \(-13.2\) | \(-2.9\)  | \(-0.1\)  |
| \(200.0\)   | \(199.50\)   | \(-10.8\) | \(-2.0\)  | \(0.0\)   |
| \(250.0\)   | \(251.20\)   | \(-8.7\)  | \(-1.4\)  | \(0.0\)   |
| \(315.0\)   | \(316.20\)   | \(-6.6\)  | \(-0.9\)  | \(0.0\)   |
| \(400.0\)   | \(398.10\)   | \(-4.8\)  | \(-0.5\)  | \(0.0\)   |
| \(500.0\)   | \(501.20\)   | \(-3.2\)  | \(-0.3\)  | \(0.0\)   |
| \(630.0\)   | \(631.00\)   | \(-1.9\)  | \(-0.1\)  | \(0.0\)   |
| \(800.0\)   | \(794.30\)   | \(-0.8\)  | \(0.0\)   | \(0.0\)   |
| \(1\,000.0\)  | \(1\,000.00\)  | \(0.0\)   | \(0.0\)   | \(0.0\)   |
| \(1\,250.0\)  | \(1\,259.00\)  | \(0.6\)   | \(0.0\)   | \(0.0\)   |
| \(1\,600.0\)  | \(1\,585.00\)  | \(1.0\)   | \(0.0\)   | \(-0.1\)  |
| \(2\,000.0\)  | \(1\,995.00\)  | \(1.2\)   | \(-0.1\)  | \(-0.2\)  |
| \(2\,500.0\)  | \(2\,512.00\)  | \(1.3\)   | \(-0.2\)  | \(-0.3\)  |
| \(3\,150.0\)  | \(3\,162.00\)  | \(1.2\)   | \(-0.4\)  | \(-0.5\)  |
| \(4\,000.0\)  | \(3\,981.00\)  | \(1.0\)   | \(-0.7\)  | \(-0.8\)  |
| \(5\,000.0\)  | \(5\,012.00\)  | \(0.6\)   | \(-1.2\)  | \(-1.3\)  |
| \(6\,300.0\)  | \(6\,310.00\)  | \(-0.1\)  | \(-1.9\)  | \(-2.0\)  |
| \(8\,000.0\)  | \(7\,943.00\)  | \(-1.1\)  | \(-2.9\)  | \(-3.0\)  |
| \(10\,000.0\) | \(10\,000.00\) | \(-2.5\)  | \(-4.3\)  | \(-4.4\)  |
| \(12\,500.0\) | \(12\,589.00\) | \(-4.3\)  | \(-6.1\)  | \(-6.2\)  |
| \(16\,000.0\) | \(15\,849.00\) | \(-6.7\)  | \(-8.5\)  | \(-8.6\)  |
| \(20\,000.0\) | \(19\,953.00\) | \(-9.3\)  | \(-11.2\) | \(-11.3\) |

 

## 1/3 Octave Center Frequencies

(ANSI S1.6 1984)

| Band No. | Nominal Center | Exact Center | Octave Center |
|-----:|--------:|------:|-------:|
|   \#    | \(\text{Hz}\) | \(\text{Hz}\) | \(\text{Hz}\) | \(\text{Hz}\) |
| \(1\)  | \(1.25\)     | \(1.26\)     |           |
| \(2\)  | \(1.60\)     | \(1.58\)     |           |
| \(3\)  | \(2.00\)     | \(2.00\)     | \(2\)     |
| \(4\)  | \(2.50\)     | \(2.51\)     |           |
| \(5\)  | \(3.15\)     | \(3.16\)     |           |
| \(6\)  | \(4.00\)     | \(3.98\)     | \(4\)     |
| \(7\)  | \(5.00\)     | \(5.01\)     |           |
| \(8\)  | \(6.30\)     | \(6.31\)     |           |
| \(9\)  | \(8.00\)     | \(7.94\)     | \(8\)     |
| \(10\) | \(10.00\)    | \(10.00\)    |           |
| \(11\) | \(12.50\)    | \(12.59\)    |           |
| \(12\) | \(16.00\)    | \(15.58\)    | \(16\)    |
| \(13\) | \(20.00\)    | \(19.95\)    |           |
| \(14\) | \(25.00\)    | \(25.12\)    |           |
| \(15\) | \(31.50\)    | \(31.62\)    | \(32\)    |
| \(16\) | \(40.00\)    | \(39.81\)    |           |
| \(17\) | \(50.00\)    | \(50.12\)    |           |
| \(18\) | \(63.00\)    | \(63.10\)    | \(63\)    |
| \(19\) | \(80.00\)    | \(79.43\)    |           |
| \(20\) | \(100.00\)   | \(100.00\)   |           |
| \(21\) | \(125.00\)   | \(125.89\)   | \(125\)   |
| \(22\) | \(160.00\)   | \(158.49\)   |           |
| \(23\) | \(200.00\)   | \(199.53\)   |           |
| \(24\) | \(250.00\)   | \(251.19\)   | \(250\)   |
| \(25\) | \(315.00\)   | \(316.23\)   |           |
| \(26\) | \(400.00\)   | \(398.11\)   |           |
| \(27\) | \(500.00\)   | \(501.19\)   | \(500\)   |
| \(28\) | \(630.00\)   | \(630.96\)   |           |
| \(29\) | \(800.00\)   | \(794.33\)   |           |
| \(30\) | \(1\,000.00\)  | \(1\,000.00\)  | \(1\,000\)  |
| \(31\) | \(1\,250.00\)  | \(1\,258.90\)  |           |
| \(32\) | \(1\,600.00\)  | \(1\,584.90\)  |           |
| \(33\) | \(2\,000.00\)  | \(1\,995.30\)  | \(2\,000\)  |
| \(34\) | \(2\,500.00\)  | \(2\,511.90\)  |           |
| \(35\) | \(3\,150.00\)  | \(3\,162.30\)  |           |
| \(36\) | \(4\,000.00\)  | \(3\,981.10\)  | \(4\,000\)  |
| \(37\) | \(5\,000.00\)  | \(5\,011.90\)  |           |
| \(38\) | \(6\,300.00\)  | \(6\,309.60\)  |           |
| \(39\) | \(8\,000.00\)  | \(7\,943.30\)  | \(8\,000\)  |
| \(40\) | \(10\,000.00\) | \(10\,000.00\) |           |
| \(41\) | \(12\,500.00\) | \(12\,589.30\) |           |
| \(42\) | \(16\,000.00\) | \(15\,848.90\) | \(16\,000\) |
| \(43\) | \(20\,000.00\) | \(19\,952.60\) |           |

 

## References

|||
|-|---------------|
|13.1| Beranek, Leo L., "Acoustic Measurements," John Wiley & Sons, New York, New York, 1956.|
|13.2| Peterson, Arnold P.G. and Gross, Ervin E., Jr., "Handbook of Noise Measurement," GenRag Incorporated, Concord, Massachusetts, 1978.|
|13.3| "Measuring Sound," (Pamphlet), Bruel & Kjaer, Naerum, Denmark, September 1984.|
|13.4| "Pocket Handbook, Noise, Vibration, Light, Thermal Comfort," Bruel & Kjaer, Naerum, Denmark, 1986.|

**Additional Reading**

||
|-|
|Hunter, Joseph L., "Acoustics," Prentice-Hall Incorporated, Englewood Cliffs, New Jersey, 1957.|

[^1]: Common octaves include, in \(\text{kHz}\) \[\begin{align} 0.0375&-0.0750\\0.075&-0.15\\0.15&-0.30\\0.30&-0.60\\0.6&-1.2\\1.2&-2.4\\2.4&-4.8\\4.8&-9.6\end{align} \]
[^2]: The \(\mathrm{SPL}\) contained within a band \(1 \text{ Hz}\) wide

<!--chapter:end:13-acoustics.Rmd-->

# Electromagnetic Compatibility

## Electromagnetic Compatibility (EMC)

This section gives the Flight Test Engineer a basic introduction to terms and 
concepts used by EMC engineers and insight into good testing philosophy and 
appropriate practices thus improving the interaction between the EMC and Flight 
Test engineers.

## Abbreviations

| | | |
|-|-|-|
| \(A\) | Area | \(\text{m}^2\) |
| \(c\) | Speed of Light | \(3.0\times 10^8 \frac{\text{m}}{\text{s}} \) |
| \(E\) | Electric Field Intensity | Volts/meter, \( \frac{\text{V}}{\text{m}} \) |
| \(f\) | Frequency | Hertz, \(\text{Hz}\) |
| \(H\) | Magnetic Field Intensity | Ampere/meter, \( \frac{\text{A}}{\text{m}} \) |
| \(I\) | Current | Ampere, \(\text{A}\) |
| \(L\) | Inductance | Henries, \(\text{H}\) |
| \(Q\) | Charge | Coulomb, \(\text{C}\) |
| \(V\) | Electric Potential | Volt, \(\text{V}\) |
| \(X_C\) | Capacitive Impedance | Ohms, \(\Omega\) |
| \(X_L\) | Inductive Impedance | Ohms, \(\Omega\) |
| \(\lambda\) | Wavelength | meter, \(\text{m}\) |

## Terms

| | |
|-|-|
| AC | Alternating Current |
| DC | Direct Current |
| EMC | Electromagnetic Compatibility |
| EMI | Electromagnetic Interference |
| Far Field | Distance beyond \(10 \lambda\) |
| HIRF | High Intensity Radiated Fields |
| RF | Radio Frequency |

Decibel Logarithmic (base 10) expression for amplitude ratios.

\[
\begin{align}
\text{dB(power)} &= 10 \log_10 \left( \frac{P_1}{P_2} \right) \\
\text{dB(voltage)} &= 20 \log_10 \left( \frac{V_1}{V_2} \right) \\
\text{dB(current)} &= 20 \log_10 \left( \frac{I_1}{I_2} \right) \\
\end{align}
\]

Commonly used decibels for EMC:

|||
|-|-|
| \(\text{dBm}\) | decibels relative to \(1 \text{ milliwatt}\) |
| \(\text{dBW}\) | decibels relative to \(1 \text{ watt}\) |
| \(\text{dB}\mu\text{V}\) | decibels relative to \(1 \text{ microvolt}\) |
| \(\text{dBi}\) | antenna gain relative to an isotropic antenna |

  -------- ---------- -----------
  **dB**   **Power\   **V or I\
           Ratio**    Ratio**

  0        1          1

  3        2.0        1.4

  6        4          2

  10       10         3.2

  20       100        10

  30       1000       32
  -------- ---------- -----------

**Common Decibel Values**

The sensitivity of a radio receiver can be on the order of 
\(1 \frac{\mu \text{V}}{\text{m}}\), while RF field strengths for 
HIRF can be \(1\,000 \frac{\text{V}}{\text{m}}\), a factor of a 
billion or \(180 \frac{\text{dB}\mu\text{V}}{\text{m}}.

## Fundamentals

### Electric and Magnetic Fields

A static charge \(Q\), creates a static electric field, \(E\).

![](media/14/charge-field.png){width="2in"}

A common magnet produces a static magnetic field, \(H\).

![](media/14/bar-magnet-field.png){width="4in"}

Transferring charge \(Q\), i.e. DC current on a wire creates both a constant 
magnitude electric and magnetic field.

![](media/14/varying-fields.png){width="5in"}

An amplitude varying charge, i.e. changing current (AC), will generate a time 
varying electric and magnetic Field in different planes.

![](media/14/em-wave.png){width="5in"}

Plane waves that are self sustaining electric and magnetic Fields and combine 
in the far field, are commonly called an electromagnetic wave.

![](media/14/em-wave-combined.png){width="3in"}

### Antennas

Antennas can transmit and/or Receive RF equally well. Electrical length 
determines effectiveness.

\(\frac{\lambda}{2}\) is an efficient antenna element length

where:

\[
\lambda = \frac{c}{f}
\]

  -------------------- ---------------------------
  **Frequency, \(f\)** **Wavelength, \(\lambda\)**
  3 MHz                100m
  30 MHz               10 m
  150 MHz              2 m
  300 MHz              1 m
  3 GHz                0.10 m
  -------------------- ---------------------------

**Common Wavelengths**

**Slots** that have favorable electrical lengths are effective antenna elements 
also, i.e. hatches, doors, avionics metal enclosure seams and ventilation holes.

**Loop Area** is the area encapsulated between the signal line and its return 
path that can be an effective antenna. The larger the loop (capture) area, the 
better the antenna effectiveness is.

#### Spectra 

Spectra are the frequency content of the electronic signals and are an important 
consideration in understanding EMI issues. Periodic signals contain energy at 
various frequencies and as such, a frequency domain approach is needed. How much 
energy at what frequency depends largely on the type of periodic signal, (i.e. 
square wave or sine wave), initial frequency and rise/fall times of the signal. 
The faster the rise/fall times are, the more spectral content will be developed 
in the signal, most of which will be unintentional and unwanted. This is 
mathematically demonstrated by the use of a trigonometric Fourier series.

#### Non-Ideal behavior of components

Non-ideal behavior of components can exists in discrete components such as 
resistors, capacitors, inductors and even wire when operated at off nominal 
conditions, for example temperature. Another condition is frequency. For 
example, a short grounding wire from a DC perspective is a dead short, 
neglecting the extremely small inductance. But at some frequency, this 
inductance gets large enough to be a factor, for example on a bonding strap for 
lightning protection. A \(26 \text{ gauge}\) wire, \(1 \text{ inch}\) above a 
ground plane will have \(0.028 \mu\text{H}\) per inch of inductance, \(L\).

where:

\(X_L = 2\pi f L\)

For \(f = 150 \text{ MHz}\), \(X_L = 26.4 \frac{\Omega}{\text{inch}}\) of wire 
which can be significant. To reduce this, replace the ground wire with a wide 
strap.

## Electromagnetic Interference (EMI)

**Electromagnetic Compatibility (EMC)** is defined as systems that:

1. don't interfere with other systems;
2. are tolerant of interference from other systems;
3. don't interfere with itself.

**Broadband Interference** is interfering signals over a large range of 
frequencies. These can be associated with spark producing equipment like motors 
that can create signals with lots of spectral content.

**Narrowband Interference** is interfering signals that have a limited range of 
frequencies, usually a single frequency along with it's harmonics. These can be 
associated with digital devices that have periodic characteristics like clocks.

### Interference Model

The classic interference model is:

Source -> Path -> Victim

To reduce the interference you can:

* Reduce the emissions from the ***Source***
* Disrupt the ***Path***
* Harden the ***Victim***

**Sources** of interference can be clocks, switching power supplies, CPUs, data 
buses, network systems, relays, local oscillators, and transmitter harmonics.

**Coupling Paths** can be signal and power lines, radiating wires, apertures or 
slots on LRUs, windows, door and hatch openings or antennas themselves.

**Front Door Coupling** is meant to be interference coming in the normal path to 
the system, i.e. through the antenna ports to the radio, and can cause 
interference at extremely low power levels \(‑100 \text{ dBm}\).

**Back Door Coupling** is interference coming into the system with the wires 
leading to the system and is of relatively higher power.

**Capacitive Coupling** primarily involves electric waves in the near field and 
is due to voltages on wires.

**Inductive Coupling** primarily involves magnetic waves in the near field and 
is due to current on either wires or chassis.

The aircraft fuselage is sometimes incorrectly thought of as a Faraday Cage 
encapsulating the RF energy inside or preventing it from entering because of its 
aluminum structure, but actually it is not. All of the windows, doors and 
hatches allow RF energy to travel through quite easily.

**Victims** of interference can be radio receivers, VHF, HF, VOR, ILS, ADF, 
Display systems, Audio and Passenger Address system, smoke and fire detection 
circuits, fuel quantity systems. Typically, low energy systems can be 
susceptible.

The reduction or elimination of EMI can be done in three areas; the systems end; 
by modifying the emissions and/or susceptibility requirements; or at the 
aircraft end by modifying the aircraft's wiring or structure.

### Conducted Emissions

Current/signal on wires that are not the intended or primary signal is 
considered conducted emissions. This 'extra' current will be passed along to 
other systems and/or can radiate on those wires acting like antennas.

**Differential Mode** current is made up of the intended signal or information 
and/or noise that goes out on the signal wires and comes back on the return 
lines.

**Common Mode** current is usually just noise that goes out on two or more 
signal/return lines and returns via some other path. This is usually the most 
troublesome in terms of emissions and should be eliminated whenever possible.

### Radiated Emissions

RF energy emanating from the unit/LRU itself through holes, slots and apertures 
or from the interconnecting wires is considered radiated emissions.

### Aviation Frequency Spectrum

The table below lists the frequency spectrum of interest to the aviation 
community. The range is from \(100 \text{ kHz}\) to \(10 \text{ GHz}\), a 
factor of \(10^8\), \(\left(90 \text{ dB}\right)\). The primary interest is 
with equipment that is sensitive to RF energy, i.e. radio receivers, which are 
primarily intended to detect small signals \( \left(-105 \text{ dBm}\right)\). 
Emission requirements are set at a low level that will still allow proper 
operation of the radio receivers. For EMI purposes, emissions from equipment 
should stay clear of these frequencies.

**Aviation Frequencies of Interest**

  **Band**         **Frequency**
  ---------------- -----------------------
  ADF              \(190-1750 \text{ kHz}\)
  HF               \(2-30 \text{ MHz}\)
  Marker Beacon    \(75 \text{ MHz}\)
  VHF Nav          \(108-118 \text{ MHz}\)
  VHF Comm         \(118-138 \text{ MHz}\)
  Glideslope       \(328-335 \text{ MHz}\)
  DME, ATC, TCAS   \(960-1220 \text{ MHz}\)
  GPS              \(1227, 1558, 1575 \text{ MHz}\)
  Glonass          \(1609 \text{ MHz}\)
  Radio Altitude   \(4.2-4.4 \text{ GHz}\)
  MLS              \(5.0-5.25 \text{ GHz}\)
  WXR              \(5.4, 8.8, 9.0-9.3 \text{ GHz}\)



## Testing

### Regulations and Industry Guidance

The following references are regulations and industry guidelines that address 
procedures and acceptable limits for interference testing.

* RTCA DO160D, Chapter 21
* FARs Part 25.1353 and 25.1431
* MIL STD 461
* CISPR
* FCC Part 15
* Aircraft manufacturers own standards

### Lab Testing

Lab testing of the unit using established standards and practices is the first 
and best means of testing. Not only is this where you will find the trouble 
spots (i.e. frequencies) but also is a place where some troubleshooting could 
alleviate potential problem areas. Contracts with LRU vendors should be written 
to require the equipment pass these tests, identified above, before delivery. A 
list of frequencies that exceed an established limit is the result.

### Aircraft Ground Testing

After lab testing, the unit should be installed in the airplane and be tested 
with the installed shops wiring. Testing will consist of measuring conducted 
emissions with current probes on wire bundles associated with the new equipment.

Radiated emissions are tested by using the aircraft's antennas hooked to test 
equipment to determine how much RF energy is getting into these sensitive 
systems. Again, a list of frequencies that exceed an established limit is the 
result.

### Aircraft Flight Testing

Only after both lab and ground testing is accomplished can a meaningful flight 
test occur. The results of the ground test should produce a list of frequencies 
of some exceedance or observed interference. It is usually only these 
frequencies that need to be cleared in flight. The appropriate systems should be 
tuned to those frequencies and with the equipment to be tested in its' operating 
mode, determine if there is objectionable interference, (usually a pilots 
subjective opinion). Pilots can evaluate systems only if adequate lab/ground 
testing has been done beforehand. EMI issues that are found in flight test are 
very difficult and expensive to fix at this stage, and can typically only reduce 
or mask the problem.

### Avionics changes and EMI testing

Changes in the hardware/wiring of a piece of avionics that could affect EMI 
testing are:

* Processor speeds
* Power Supply changes
* Frequency sensitive components, capacitors and inductors
* Circuit card layout and repackaging changes

Software changes typically don't affect EMI unless software controls/switches 
hardware related functions, i.e. speeds, options, peripherals etc.

## Lightning

Lightning is a very large electrical transient that can impart thousands of 
Amperes of current through an aircraft structure. The structure needs to present 
a low impedance path for the lightning current so that no damage causing arcing 
and/or over-heating occurs. Additionally nearby wiring needs to be shielded to 
protect against the induced current produced by the ever changing magnetic 
fields.

### Aircraft Lightning Zones

The aircraft is divided into different areas that relate to the probability of a 
lightning attachment. The nose, tail, wingtips and engine nacelles (extremities) 
are more likely areas.

### Direct Effects

Direct effects of a lightning attachment can be in the form of heating, arcing 
and acoustic issues. Designing the structure to handle the current flow and 
providing a low impedance path for the lightning current will greatly minimize 
these effects.

### Indirect Effects

Indirect effects considers the current that is induced by the transient and 
coupled onto aircraft wiring that is parallel to the main lightning current 
flow. The protection is two fold. Systems are designed and tested to handle 
these types of transients as well as the wiring is addressed to minimize the 
induced transient to these systems. Shielding and good grounding with short 
pigtails at both ends is a good method to reduce the induced current.

### Instrumentation Precaution

Any flight test instrumentation wiring that lies outside the protective fuselage 
needs to be evaluated for both direct and indirect effects of a nearby lightning 
attachment. The sensor itself must be protected from the direct attachment and 
the wiring must be protected from induced current onto that wiring. This current 
may damage the data system equipment and/or, other aircraft systems that are 
also instrumented. Good shielding and grounding techniques will minimize these 
effects. For more information see the 14.6 Reference at the end of this handbook 
section.

## High Intensity Radiated Fields (HIRF)

Aircraft can be exposed to large RF energy produced by high powered radio 
transmitters or military/airport surveillance radars. These RF fields can 
penetrate the aircraft fuselage through windows and doors/slots which could 
couple with aircraft wiring and/or systems and potentially interfere. This 
threat is addressed by both the aircraft and systems approach.

The systems themselves are designed and tested to be immune to a particular 
level of RF. These levels are determined by the criticality of the systems and 
are specified in regulatory material. Testing is usually done in a laboratory 
environment.

From the aircraft side, the internal wiring for critical systems is protected 
with appropriate shielding and grounding. Aircraft ground testing is done at 
special facilities that can radiate the vehicle with large RF fields with 
instrumentation inside to measure the penetration and to verify correct system 
operation.

## Precipitation Static (P-static)

This occurs due to a buildup of static charges that discharge by noisy arcing 
from/to various parts of the aircraft. The static buildup is caused by 
tribo-electric charging from the aircraft impacting snow/rain/ash particles in 
the air while flying. This charge should gracefully exit the aircraft through 
static wicks installed on the wingtips and empennage tips. If it doesn't the 
problem shows up as broad banded noise (white noise) heard on receivers such as 
ADF, HF and to some extent VHF as the aircraft flies through the precipitation.

Typical causes are access panels (composite and metal), cowling and fairings 
that are not properly grounded. Ground straps do a good job of not isolating 
parts. (Note: these straps should not be used for lightning protection as they 
usually are not sized to handle the current).

## Reference Material

|||
|-|---------------|
|14.1| Paul, C. R., "Introduction to Electromagnetic Compatibility", John Wiley & Sons Publishing, 1992|
|14.2| Ott, H. W, "Noise Reduction Techniques in Electronic Systems", John Wiley & Sons Publishing, 1988|
|14.3| Hrehov, D. W. and Walen, D. B., "What Flight Test Crews Need to Know About EMI/EMC", *34^th^ Annual SFTE Symposium Workshop,* 2003|
|14.4| Federal Aviation Regulations, Part 25|
|14.5| RTCA DO160D, "Environmental Conditions and Test Procedures for Airborne Equipment", 1997|
|14.6| Hrehov, D. W., "What Instrumentation Engineers Need to Know About Lightning", *31^st^ Annual SFTE Symposium,* 2000|
|14.7| Fisher, F. A., Perala, F. A., and Plumer, J A., "Lightning Protection for Aircraft", Lightning Technologies Inc., 1990|

<!--chapter:end:14-emc.Rmd-->

# 15 Handling Qualities**

** **

**15.1 Cooper-Harper Rating Related Figures**

![][15001]** **

** **

** **

 

**Figure 15.1-1 Elements of Closed-Loop Handling Qualities**

 

![][15002]

**Figure 15.1-2 Undesirable step input responses and pilot compensation to achieve**

**desired response**

**a) Lag compensation, b) lead-lag compensation.**

** **

**a) Lag compensation, b) lead-lag compensation.**

 

![][15003]

**Figure 15.1-3 Optimum Short Period Frequency and Damping Based on Pilot Opinion**

 

![][15004]

**Figure 15.1-4 General Pilot Ratings for Handling Qualities**

 

**Closed Loop Handling Qualities Test Requirements**

1) Explicit **mission definition:** what the pilot must accomplish. Identify the circumstances and operating conditions.

 

2\) Define mission **tasks**. Tasks should be repeatable, require sufficient control input frequency to stress the system, and they should be of adequate duration to differentiate transient from steady state responses.

 

3\) Establish **desirable** and **acceptable** criteria for task performance. Criteria established should be quantifiable, recordable, and realistic. Desirable criteria specify a satisfactory level of performance. Acceptable criteria specify the level of performance that is marginally adequate.

 

4\) Test should include realistic typical **distractions and disturbances**.

 

5\) Record task **performance** relative to the criteria established (comments, video, audio, pipper movement, etc.)

 

6). Measuring & record pilot **workload** and compensation.

 

![][15005]

**Figure 15.1-5 Cooper Harper Workload and Handling Qualities Rating Scale**

 

![][15006]

**Figure 15.1-6 Pilot Induced Oscillations Rating Scale**

 

  [15001]: media/15/image1.png {width="6.5in" height="2.8444444444444446in"}
  [15002]: media/15/image2.png {width="6.809027777777778in" height="2.033333333333333in"}
  [15003]: media/15/image3.png {width="6.5in" height="5.274305555555555in"}
  [15004]: media/15/image4.png {width="7.0in" height="3.033333333333333in"}
  [15005]: media/15/image5.jpeg {width="8.486805555555556in" height="6.973611111111111in"}
  [15006]: media/15/image6.png {width="6.058333333333334in" height="8.629861111111111in"}

<!--chapter:end:15-handling-qualities.Rmd-->

# 16 Rotary Wing**

> **16.1 Principal Aeroderivatives**
>
> **16.2 Forward Flight Static And Dynamic Stability**

 

**16.1 PRINCIPAL AERODERIVATIVES**

 

+----------------------+---------------------------------------------------+----------------------------+------------------+
| **Derivative**       | **Common Name**                                   | **Principal Contributors** | **Typical Sign** |
+======================+===================================================+============================+==================+
| **CONTROL POWER**    |                                                   |                            |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16001]               | Pitch control power                               | MR Thrust vector           | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Mast bending moment        |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Control gearing            |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Rotor type                 |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Effective hinge offset     |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16002]               | Roll control power                                | MR Thrust vector           | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Mast bending moment        |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Control gearing            |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Rotor type                 |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Effective hinge offset     |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16003]               | Yaw control power                                 | TR thrust                  | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | TR moment arm              |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Control gearing            |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16004]               | Heave control power                               | MR thrust                  | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Control gearing            |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| **STATIC STABILITY** |                                                   |                            |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16005]               | Speed stability                                   | MR flap back               | \+               |
|                      |                                                   |                            |                  |
|                      |                                                   | Mast bending moment        |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Horizontal tailplane       |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16006]               | Static/Incidence/Angle of Attack stability        | MR flap back               |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Mast bending moment        |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Horizontal tailplane       |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Fuselage                   |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16007]               | Lateral static stability (dihedral effect)        | MR 'flap back'             | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | TR vertical moment arm     |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Fuselage                   |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16008]               | Directional static stability (weathercock effect) | TR thrust                  | \+               |
|                      |                                                   |                            |                  |
|                      |                                                   | Vertical tailplane         |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Fuselage                   |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| **DAMPING**          |                                                   |                            |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16009]               | Drag damping                                      | Rotor drag                 | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Fuselage drag              |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16010]              | Side force                                        | Rotor drag                 | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Fuselage drag              |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16011]              | Heave damping                                     | MR characteristics         | \-               |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16012]              | Roll damping                                      | Main rotor                 | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Effective hinge offset     |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16013]              | Pitch damping                                     | Main rotor                 | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Effective hinge offset     |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Horizontal tailplane       |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+
| ![][16014]              | Yaw damping                                       | Tail rotor                 | \-               |
|                      |                                                   |                            |                  |
|                      |                                                   | Vertical tailplane         |                  |
|                      |                                                   |                            |                  |
|                      |                                                   | Fuselage                   |                  |
+----------------------+---------------------------------------------------+----------------------------+------------------+

**16.1 PRINCIPAL AERODERIVATIVES (Continued)**

 

  ---------------- ----------------- ---------------------------- ------------------
  **Derivative**   **Common Name**   **Principal Contributors**   **Typical Sign**
  ---------------- ----------------- ---------------------------- ------------------

+--------------------+-------------------------+------------------------------+----+
| **CROSS COUPLING** |                         |                              |    |
+====================+=========================+==============================+====+
| ![][16015]            | Tail rotor roll         | Tail rotor vertical position | \+ |
+--------------------+-------------------------+------------------------------+----+
| ![][16016]            | Pitch change with power | Forward speed                | \+ |
|                    |                         |                              |    |
|                    |                         | Main rotor                   |    |
+--------------------+-------------------------+------------------------------+----+
| ![][16017]            | Torque reaction         | Torque                       |    |
+--------------------+-------------------------+------------------------------+----+
| ![][16018]            | Tail rotor drift        | Tail rotor                   |    |
+--------------------+-------------------------+------------------------------+----+

**16.2 FORWARD FLIGHT STATIC AND DYNAMIC STABILITY**

 

+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| **Stability Characteristic**                                                               | **Principal Influences** | **Typical Test**                                                  | **Role Relation**                                                 |
+============================================================================================+==========================+===================================================================+===================================================================+
| Longitudinal Static Stability                                                              | -   -   -   -            | -   Trimmed flight control positions                              | -   Control margins                                               |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          | -   Trimmed flight control positions - collective                 | -   Control inputs progressive, predictable, and in correct sense |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
|                                                                                            | -                        | -   Apparent static stability                                     | -   Speed selection                                               |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
|                                                                                            | -                        | -   Collective fixed static stability                             | -   Speed maintenance                                             |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| Manoeuvre Stability                                                                        | -   -   -                | -   Apparent manoeuvre stability                                  | -   Aggressive turning and manoeuvring flight                     |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          | -   Collective fixed manoeuvre stability                          |                                                                   |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          | -   Pull-ups/push-overs                                           |                                                                   |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| Longitudinal Dynamic Stability                                                             | -   -   -                | -   Excitation of dynamic long term mode                          | -   IMC flight                                                    |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          | -   Natural turbulence, release to trim, pulse input              | -   Transit                                                       |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          |                                                                   | -   Nuisance mode                                                 |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| Lateral-Directional Static Stability                                                       | -   -                    | -   Trimmed flight control positions                              | -   Control margins                                               |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          |                                                                   | -   Control inputs progressive, predictable, and in correct sense |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
|                                                                                            | -                        | -   Steady heading sideslip (SHSS)                                | -   Sideforce cues                                                |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          |                                                                   | -   Maintaining balanced flight                                   |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| Lateral Static Stability (Dihedral)                                                        | -                        | -   SHSS                                                          | -   Transit                                                       |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          | -   Turns on one control -- pedal                                 | -   Lateral and out-of-wind transitions                           |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          |                                                                   | -   Instrument approaches                                         |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| Directional Static Stability                                                               | -                        | -   SHSS                                                          | -   Transit                                                       |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          | -   Turns on one control - cyclic                                 | -   Instrument approaches                                         |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| Lateral-Directional Dynamic Stability -- Lateral-Directional Oscillations (Dutch Roll Mode | -   -                    | -   Excitation of LDO via doublet, pulse, or SHSS release to trim | -   IMC flight                                                    |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          |                                                                   | -   Transit                                                       |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          |                                                                   | -   Nuisance mode                                                 |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+
| Lateral-Directional Dynamic Stability -- Spiral Stability                                  | -   -   -   -            | -   Turns on one control -- cyclic                                | -   IMC flight                                                    |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          | -   Time to half/double bank angle                                | -   Turns                                                         |
|                                                                                            |                          |                                                                   |                                                                   |
|                                                                                            |                          |                                                                   | -   Lateral gust response                                         |
+--------------------------------------------------------------------------------------------+--------------------------+-------------------------------------------------------------------+-------------------------------------------------------------------+

**16.3 References:**

||
|-|
|Cooke, A., Fitzpatrick, E., (2002), *Helicopter Test and Evaluation*, Wiley Blackwell, UK.|
|Leishman, J.G., (2006), *Principles of Helicopter Aerodynamics*, 2^nd^ Edition, Cambridge University Press, UK.|
|Padfield, G.D., (2007), *Helicopter Flight Dynamics*, 2^nd^ Edition, Blackwell Publishing, UK.|

 

  [16001]: media/16/image1.svg {width="0.325in" height="0.25833333333333336in"}
  [16002]: media/16/image2.svg {width="0.25in" height="0.25833333333333336in"}
  [16003]: media/16/image3.svg {width="0.3333333333333333in" height="0.25833333333333336in"}
  [16004]: media/16/image4.svg {width="0.2833333333333333in" height="0.25833333333333336in"}
  [16005]: media/16/image5.svg {width="0.2833333333333333in" height="0.25in"}
  [16006]: media/16/image6.svg {width="0.2916666666666667in" height="0.25in"}
  [16007]: media/16/image7.svg {width="0.2in" height="0.25in"}
  [16008]: media/16/image8.svg {width="0.24166666666666667in" height="0.25in"}
  [16009]: media/16/image9.svg {width="0.25in" height="0.25in"}
  [16010]: media/16/image10.svg {width="0.175in" height="0.25in"}
  [16011]: media/16/image11.svg {width="0.24166666666666667in" height="0.25in"}
  [16012]: media/16/image12.svg {width="0.21666666666666667in" height="0.25833333333333336in"}
  [16013]: media/16/image13.svg {width="0.2833333333333333in" height="0.25833333333333336in"}
  [16014]: media/16/image14.svg {width="0.24166666666666667in" height="0.24166666666666667in"}
  [16015]: media/16/image15.svg {width="0.2916666666666667in" height="0.25833333333333336in"}
  [16016]: media/16/image16.svg {width="0.3333333333333333in" height="0.25833333333333336in"}
  [16017]: media/16/image17.svg {width="0.3in" height="0.25833333333333336in"}
  [16018]: media/16/image18.svg {width="0.2833333333333333in" height="0.25833333333333336in"}

<!--chapter:end:16-rotary-wings.Rmd-->

# 17 Gas Turbine Propulsion**

> 17.1 Turbine Engine Basics
>
> 17.1.1 Turbine Engine Types
>
> 17.2.2 The Brayton Cycle
>
> 17.2.3 Component Descriptions
>
> 17.2 Propulsion System Analysis
>
> 17.2.1 Standard Day Corrections
>
> 17.2.2 Pressure and Temperature Relationships with Flight Parameters
>
> 17.2.3 Reynold's Number Index
>
> 17.2.4 Thrust Calculations
>
> 17.3 Turbine Engine Operation
>
> 17.3.1 Compressor operation during accelerations
>
> 17.3.2 Compressor operation during decelerations
>
> 17.3.3 Bleed are impacts during engine starts
>
> 17.3.4 Stator vane cambering effects
>
> 17.3.5 Compressor impacts due to nozzle area for [turbojet]{.underline} engines
>
> 17.3.6 Compressor impacts due to nozzle area for [turbofan]{.underline} engines
>
> 17.3.7 Combustion stability
>
> 17.4 Additional Information
>
> 17.4.1 Engine Stations
>
> 17.4.2 Key Propulsion Terminology
>
> 17.4.3 Common Aircraft and Associated Engines
>
> 17.4.4 Additional Propulsion Resources

**17.1 Turbine Engine Basics**

**17.1.1 Turbine Engine Types**

Three basic types of aircraft turbine include turbojets, turbofans, and Turboshafts.

![][17001]

The primary advantage of turbojets is their efficiency at high speed/altitude and small diameter. Turbojets are less efficient at low speed and are currently only used in older aircraft (B-52, T-38, Boeing 707).

A turbofan engine is essentially a turbojet to which a second compression system has been added. Turbofans are further divided into low bypass and high bypass engines, where bypass describes the amount of air used by the fan that bypasses the compressor. In low bypass (0-1 bypass ratio) engines, most of the thrust comes from the nozzle. In high bypass (1-11+ bypass ratio) engines, most the thrust comes from the fan. Turbofans are the most popular engine for new medium and large aircraft due to the range of bypass ratios available, allowing optimization for most flight regimes. Turbofan **advantages include:** high thrust and low fuel consumption at low airspeed (subsonic), lower engine noise compared to turbojets, and generally lower operating temperatures allowing the use of lower cost materials. Turbofan **disadvantages include large engine d**iameters that can increase aircraft drag and cause ground clearance issues and slower engine response compared to turbojets.

Turboprops generate the majority of their thrust by driving an external propeller. They generally operate at slightly higher altitudes and faster airspeeds than conventional piston driven aircraft, but performance at higher mach numbers is limited due to compressibility effects at the propeller tip. The primary advantages of turboprops compared to reciprocating engines are fuel consumption improvements and increased reliability.

![][17002]

Engine Type Operating Envelopes

Some applications have unique flight envelopes and are required to support large horsepower extractions to power on-board sensors (e.g. Global Hawk).

**\
**

**17.1.2 The Brayton Cycle**

Aircraft turbine engines generally operate on the Brayton thermodynamic cycle. A simplistic explanation is provided using pressure-volume (P-V) and temperature-entropy (T-S) diagrams.

Ideal thermodynamic cycles (dotted) are those where:

1\) The inlet and compressor (engine stations 0 to 3) isentropically compress the air.

2\) The combustor (engine stations 3 to 4) provides isobaric heating.

3\) The turbine and nozzle (engine stations 4 to 9) isentropically expand the air to free stream jet.

4\) Free stream exhaust jet is at a higher velocity and temperature (and entropy) than the inlet.

In the real case (solid/dashed line), the inlet and compressor induce increased entropy (friction losses), the combustor has pressure losses, the turbine and exhaust nozzle do not perfectly expand the air to free stream pressure, and the exhaust jet is still at a higher velocity and temperature than the inlet. All of these factors decrease the efficiency of real turbines.

Turbojet, Real (solid/dashed) & Ideal (dotted)

A more complex case is the two spool turbofan with afterburning. Although following the same trends, the additional "reheat" from the afterburner (stations 5-7) provides a significant increase in free stream exhaust jet temperature and velocity. Because the increase in temperature is never recovered by a turbine, actual efficiency is lower.

Turbofan With Afterburning, Real (solid/dashed) & Ideal (dotted)

**\
**

**17.1.3 Component Descriptions**

(Example Axial Dual-spool Augmented Turbofan)

**Inlet (Station 0 to 2)**

Inlets usually provide laminar, subsonic flow with minimal total pressure loss across a variety of Mach numbers and angles of attack. Subsonic inlets are typically simple with fixed geometry and supersonic inlets range from simple to complex using variable bleeds and bypasses depending on the operating conditions.

![][17003]![C:\\Users\\Moulder Christopher\\Desktop\\inlet1.jpg]

**Complex Supersonic Inlet Simple Subsonic Turbofan Inlet**

**Compressor (Fan/Core) (Stations 2 to 3)**

![][17004] The low pressure compressor, or fan, provides increased thrust and efficiency by accelerating a larger mass flow of air (compared to the high pressure compressor). It consists of stators (S) and rotor blades (R). A splitter in the duct following the fan separates airflow from the bypass duct. Below example, the fan is coupled via an inner shaft to the low pressure turbine.

**Typical Low Pressure Compressor Typical High Pressure Compressor**

The high pressure compressor provides airflow to the combustor and turbines. It can have many stages, each stage consisting of a rotor and a stator. The rotors impart kinetic energy into the airflow, while the stators convert the kinetic energy to a pressure rise. For improved operation, stators can also have variable geometry. Overall compression ratios can be 10 to 40 times ambient and the temperature rise more than 600 deg F. Bleed air from later compression stages can also be extracted to cool the turbine blades and provide airflow for auxiliary power or ice protection. Shaft power is also extracted through an engine mounted gearbox attached to the high pressure spool to power electrical and hydraulic systems.

**\
**

**Combustor (Station 3 to 4)**

Fuel is injected, ignited, and burned in the combustor. Modern combustors are annular, while older designs consisted of multiple cans surrounding the shaft. Combustors slow the airflow entering the chamber to allow fuel-air mixture and prevent combustion outside the chamber. If air velocities are too great in the combustor, combustion stability is affected.

![Combustor.png]

**Annular Combustor Combustor Cross-Section**

Combustors induce turbulence into the air to achieve proper fuel-air mixing and even burning. Approximately half of the air entering the combustor is used for the combustion process; the remainder cools the combustor panels. The exhaust gas temperature can exceed 3,100 deg F, leading to significant material challenges within the combustor and turbine sections.

![][17005]**Turbine (Station 4)**

![][17006] Turbines extract energy from the combustor exhaust to drive the compressors. Extreme blade and vane temperatures drive special materials and/or active cooling requirements. State-of-the-art turbines may include single crystal nickel based alloys with thermal barrier coatings, internal cooling passages, and external film air cooling.

The high pressure turbine powers the high pressure compressor, and the low pressure turbine powers the low pressure compressor.

**Augmentor (Station 6)**

Afterburning burns fuel between the turbine and the exhaust nozzle to reheat the airflow. This reheat increases flow velocity and thus thrust, but because the temperature increase is not recovered as in the turbine, afterburners are very inefficient. While an increase in thrust can be obtained from a larger engine, the commensurate increase in weight and drag is not economical for short period requirements (e.g. aircraft takeoff).

**\
**

**Exhaust Nozzle (Station 7 to 9)**

Air from the augmentor exits through the exhaust nozzle to provide the airplane with thrust. Efficient exhaust nozzles also reduce aircraft drag by matching exhaust pressure and ambient pressure. They can provide thrust vectoring to enhance aircraft stability, thrust reversing to improve aircraft braking, and noise suppression. Large commerical jets usually have fixed nozzles that are optimized for one cruise condition. Fighter aircraft often have variable nozzles to increase performance at all flight conditions.

**Accessories**

Turbine engines require a variety of accessories to support engine and aircraft functions. Engine control can be managed by hydro-mechanical, analog, digital, or a combination of the control types. Modern engines use a full authority digital engine control (FADEC) to schedule engine operation throughout its operating range. Engine or aircraft sensors (e.g. T~t2~) provide operating conditions to the engine controller. An anti-ice valve can supply bleed air to the engine face struts to prevent ice build-up. A gearbox also extracts power from the high pressure compressor shaft to run electrical generators and aircraft hydraulic systems.

**17.2 Propulsion System Analysis**

Typically, a propulsion system's operation is segregated into the five sub-categories or disciplines.

1.  Overall: Integrated System Utility (Does it meet the users' needs?). Topics include adequate engine bay ventilation, anti-ice, gun or gas ingestion, and inlet compatibility.

2.  Performance: The ability to produce thrust at a prescribed level with a specified fuel flow. Usually prescribed over the life of the engine and is modeled with a propulsion system simulation. If an inlet rake is used for testing, we can calculate inlet recovery, which is an integral part of engine/aircraft performance.

3.  Operability: The ability to resist or recover from an engine instability. These instabilities primarily refer to compressor stall or surge, which are aggravated by inlet temperature and pressure distortions. However, operability can include several other aspects, such as flameout, overspeed, overtemp, engine starting, and afterburner lighting and stability.

4.  Response: The ability to change thrust conditions within a prescribed time in response to a commanded change.

5.  Life/Durability: The ability to withstand extended operating conditions (pressure, temperature, and rpm) over a prescribed lifetime (usually described in terms of engine operating hours or Total Accumulated Cycles) at a specified level of performance and operability.

A number of Aerospace Recommended Practices (ARP) exist to aid in standardization of gas turbine design, testing, and analysis. Aerospace Information Reports (AIR) also provide similar guidance. This handbook scope does not include the theory and concepts of these practices, however, some of the practices most relevant to propulsion system analysis are presented in the Additional Propulsion Resources section.

**\
**

**17.2.1 Standard Day Corrections**

Due to varying atmospheric conditions, engine tests are rarely conducted at the same flight conditions. Therefore, to compare tests results, data must be standardized to a common flight condition. By applying standard day corrections, the effects of changes in temperature and pressure can be removed from test results.

  **Quantity**             **Normal**          **Corrected**
  ------------------------ ------------------- -------------------------------------------------------------------------------
  **Air mass flow rate**   $${\dot{m}}_{i}$$   $${\dot{m}}_{\mathrm{ci}} = \frac{{\dot{m}}_{i}\sqrt{\theta_{i}}}{\delta_{i}}$$
  **Fuel flow rate**       $${\dot{m}}_{f}$$   $${\dot{m}}_{\mathrm{fc}} = \frac{{\dot{m}}_{f}}{\delta_{2}\sqrt{\theta_{2}}}$$
  **Rotational speed**     $$N$$               $$N_{\mathrm{ci}} = \frac{N}{\sqrt{\theta_{i}}}$$
  **Thrust**               $$F$$               $$F_{c} = \frac{F}{\delta_{0}}$$

*θ~i~*=total temperature ratio ($\theta_{i} = \frac{T_{\mathrm{ti}}}{T_{\mathrm{ref}}}$) and *δ~i~*=total pressure ratio ($\delta_{i} = \frac{P_{\mathrm{ti}}}{P_{\mathrm{ref}}}$)

\[Values can also be found in the standard atmosphere table, Section 3-14. Reference is sea-level, standard day. These values are also corrected for Mach number in Figure x-11.\]

**17.2.2 Pressure and Temperature Relationships with Flight Parameters**

Two of the main inputs to a propulsion system are engine face pressure and temperature (P­~t2~ and T~t2~ respectively), yet the flight envelope is defined in altitude, airspeed, and Mach number. Consequently, it is helpful to be able to translate from one to the other. Unfortunately, because many engine inlets are variable, and therefore introduce varying pressure and temperature losses, the handbook assumes P­~t2~=P­~t0~ and T~t2~= T~t0~. The following chart is useful when describing the engine operating conditions relative to flight conditions.

**\
**![][17007]

**17.2.3 Reynolds Number Index**

Assuming the characteristic length of an engine is constant in differing operating environments, another way of describing the pressure and temperature relationship is with the Reynolds number index. Similar to standard day corrections, the Reynolds Number Index provides a method of comparing engine operation across varying inlet-pressure loses, inlet temperatures, flight speeds, and altitudes. The Reynolds Number Index is:

$$\mathrm{Re}_{i} = \frac{\delta_{2}}{\varphi\sqrt{\theta_{2}}}$$

where

$$\varphi = \frac{718.2\left( \theta_{2} \right)^{3/2}}{T_{t2} + 199.5},\ \delta_{2} = \frac{P_{t2}}{2116},\ \theta_{2} = \frac{T_{t2}}{518.7}$$

Here, P~t2~ is in psf, and T~t2~ is in degrees Rankine.

P~t2~ and T~t2~ are assumed to be equal to aircraft total pressure and temperature. The actual in-flight Reynolds Number Index depends on inlet recovery losses, since these are the conditions in which the engine is operating.

![][17008]

Reynolds Number Index versus Altitude and Mach Number

**\
**

**17.2.4 Thrust Calculations**

Various formulae exist to calculate gross engine thrust (Fg). However, modern engines are too complex for standard textbook formulas to accurately predict thrust; this is normally left to complex computer algorithms. The current standard for new models is the Numerical Propulsion System Simulation (NPSS). Despite this, a control volume approach relying on conservation of momentum will provide gross engine thrust if the required parameters are known.

$$Thrust = \frac{\left( {\dot{m}}_{9} + {\dot{m}}_{\mathrm{fuel}} \right)V_{9} - {\dot{m}}_{0}V_{0}}{g_{c}} + (P_{9} - P_{0})A_{9}$$

Where subscript 9 represents the nozzle exit and subscript 0 represents the freestream conditions. $\dot{m}$, V, and, P represent mass flow rate, velocity, and static pressure respectively.

Variations and simplifications of this formula exist:

+----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| > Turbojet and Low Bypass Turbofan (Mixed Streams) | $$Thrust = \frac{{\dot{m}}_{0}(V_{9} - V_{0})}{g_{c}}$$                                                                          |
+====================================================+==================================================================================================================================+
| High Bypass Turbofan (Separate Streams)            | $$Thrust = \frac{{\dot{m}}_{\mathrm{fan}}}{g_{c}}(V_{\mathrm{fan}} - V_{0}) + \frac{{\dot{m}}_{\mathrm{core}}}{g_{c}}(V_{9} - V_{0})$$ |
+----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

Atmospheric temperature, Mach, and altitude also significantly affect engine thrust and efficiency.

![][17009]![][17010]

**\
**

**17.3 Turbine Engine Operation**

Compressor maps allow engine operation evaluation, showing corrected engine airflow (fan or core) versus pressure ratio. It is critical to know where an engine is operating within the compressor map in order to avoid stalls and flameouts. The following sections review compressor operation during several maneuvers and geometry changes.

**17.3.1 Compressor operation during accelerations**

Above is a typical engine acceleration compressor map. As the engine accelerates from idle to maximum power, the engine follows the transient operating line scheduled by the engine controller. This usually includes surge prevention logic (e.g. pressure ratio limits as a function of airflow). Engine surge susceptibility is generally determined by either component bench tests or from altitude development tests of the full scale engine. Once the surge region is determined for the baseline engine, it can be further reduced by inlet distortion, power extraction, manufacturing tolerances, deterioration, or thermal transients, which affect compressor tip clearances. These affects are considered when determining the transient acceleration schedule needed to provide sufficient surge margin in the most demanding situations.

**17.3.2 Compressor operation during decelerations**

Above is a typical engine deceleration compressor map. As the engine decelerates to idle power, the engine follows the transient operating line. To protect from combustor blowout during the deceleration, transient operation schedules usually include blowout prevention logic that schedules a minimum fuel to air ratio within the combustor as a function of engine airflow. This blowout region is usually determined by combustor bench tests or from altitude development tests of the full scale engine. Once the blowout region is determined, the engine schedules are set to include margin to account for engine-to-engine variability.

**17.3.3 Bleed air impacts during engine starts**

Above is a typical engine start compressor map. Turbine engines can be challenging to accelerate from off to idle power due to little stall margin at low airflow conditions. As a means to increase engine surge margin by reducing compressor back pressure and allowing quicker accelerations, engine bleed air can be removed from the engine core via a bleed valve. As the engine approaches idle power, the bleed air valve closes and the engine accelerates the remaining way to idle.

**17.3.4 Variable Stator vane cambering effects**

Above are typical engine compressor stator and rotor velocity diagrams. Stator vanes control engine surge margin and thrust; as they are cambered closed, the throat area between the vanes is reduced, thereby decreasing airflow. Cambering the vanes also decreases the incidence angle of the rotor blade. These lower airflows and reduced incidence angles increase engine surge margin.

Above is a compressor map illustrating how variable geometry and stator vane cambering can be used to affect engine operation and performance. The solid lines show how the compressor would operate if the stator vanes remained fixed in the axial position. The dashed lines show how the compressor would operate if the stator vanes remained fixed in the cambered closed position. When the stator vanes are cambered closed, additional surge margin is provided, and when the stator vanes are axial, additional airflow capability (or thrust) is provided. As a result, engines typically camber closed stators at low airflow to increase surge margin and acceleration capability, then camber the vanes axial open to maximize performance at higher engine rpms.

**\
**

**17.3.5 Compressor impacts due to nozzle area for [turbojet]{.underline} engines**

Above is a compressor map illustrating impacts to stability margin from opening and closing the engine exhaust nozzle for a single-spool engine (e.g. J85 engine in T-38 aircraft). In this example, it is shown that stall margin is insufficient at lower airflows with the smaller nozzle area. Opening the nozzle for this single spool configuration moves the engine away from surge. As a result, a typical engine might run nozzle open at idle power to reduce thrust and keep the nozzle open until engine stability was no longer a concern.

**17.3.6 Compressor impacts due to nozzle area for [turbofan]{.underline} engines**

> **(mixed flow, proximate splitter)**

Above is a compressor map illustrating stability margin impacts from opening and closing the engine exhaust nozzle for a turbofan engine (e.g. F100 engine in F-16 aircraft). Closing the nozzle moves the fan away from surge, which is opposite from the turbojet application. The high pressure compressor (HPC) is not impacted by the nozzle opening or closing (assuming the low pressure turbine \[LPT\] is choked). The fan and compressor's independent reactions to nozzle movement allow the ability to set airflow and thrust independently. This is an important feature for flutter vibration or stability issues at particular rpm ranges.

**\
**

**17.3.7 Combustion Stability**

Above is a combustion stability plot showing engine airflow versus fuel-to-air-ratio. These plots are generally developed during component bench testing and are then used by engine designers to schedule combustor or augmentor fuel flow. The plot shows regions of stable and unstable combustion. Also, the engine operates closer to a blowout region at low air mass flow (high altitude and low Mach number \[ULHC\]). Combustion instabilities can have various effects on engine operation, including blowout, running rough, and vibrations that can reduce part life.

**\
**

**17.4 Additional Information**

**17.4.1 Engine Stations**

(Reference SAE ARP-755 *Aircraft Propulsion System Performance Station Designation and Nomenclature* for additional details)

Engine station designations provide a consistent definition of the process the gas undergoes, regardless of the type of engine cycle

> *The six main processes specifically isolated are:*
>
> *a. kinetic compression (inlet/diffuser)*
>
> *b. mechanical compression/work addition/fluidic compression (compressor/propeller)*
>
> *c. heat addition or exchange (combustor/augmentor/heat exchanger)*
>
> *d. mechanical expansion/work extraction (turbine)*
>
> ![][17011]*e. kinetic expansion (nozzle)*
>
> *f. mixing (mixer/ejector/eductor).*

Dual Spool Turbofan With Afterburning

> 0 -- Free stream air conditions
>
> 1 -- First station of interest to the engine manufacturer. Inlet or aerodynamic interface plane (AIP).
>
> 2 -- First compressor or fan front face
>
> 3 -- Last compressor discharge or combustor entrance
>
> 4 -- Combustor discharge or first turbine entrance
>
> 5 -- Last turbine discharge
>
> 6 -- Mixer or afterburner entrance
>
> 7 -- Exhaust nozzle entrance
>
> 8 -- Exhaust nozzle throat
>
> 9 -- Exhaust nozzle discharge

Notes:

1.  Incremental (or sub) stations may be indicated with suffix nomenclature (e.g. 2.5 to indicate fan discharge on a dual spool compression system).

2.  There are a multitude of variations on this theme. SAE ARP-755 includes descriptions for most turbine engine configurations.

**\
**

**17.4.2 Key Propulsion Terminology**

**Aerodynamic Interface Plane - A defined plane of intersection between the inlet and the engine.**

**Afterburner - Any type of auxiliary (post turbomachine) combustion to enhance propulsion system thrust. Also known as the augmentor or reheat.**

**Compressor Loading** -The general ratio of work across the compressor stages. Forward compressor loading indicates the forward stages are more loaded (higher pressure ratio) than the aft stages.

**Compressor Map** - A compressor's total pressure ratio defined by corrected airflow and corrected rotation speed.

**Corrected** - An adjustment for standard day temperature and/or pressure (at an engine station) to an engine parameter (like rotational speed, air flow or fuel flow). Also see referred.

**Delta** - Pressure ratio, $\delta_{i} = \frac{P_{\mathrm{ti}}}{P_{0}}$, where i is the reference station.

**Flame-out -** Can be synonymous with blow-out; however, it is more typically used in reference to the main combustor flame extinguishing.

**Gross Thrust** - The momentum change at the nozzle exit or aft side of the propeller. The first term in the thrust equation.

**Horsepower Extraction -** Any form of removal of power (bleed or mechanical) from a turbomachine other than for the generation of thrust.

**Inlet Compatibility** - A type of test used to determine if the combined effects of inlet distortion and engine stability are compatible (e.g.; no stalls occur).

**Inlet Distortion** - The measurement of variation in pressure, temperature, or vector at the aerodynamic interface plane.

**Inlet Recovery** - The average total pressure at the Aerodynamic Interface Plane divided by the free stream total pressure.

**Instability -** Can be used in many contexts. The two main contexts are in combustion stability and compressor stability. The former refers to a flame's (either combustor or augmentor) ability to stay lit and the later to compression system flow disturbance.

**Operability -** The sub-discipline of propulsion related to a turbine engine's characteristic operational limits. This includes but is not limited to the regions of the flight envelope where stalls or flame-outs may occur, where augmentation is limited, or where airstarts can be accomplished.

**Recycle -** A full no-light or blowout and relight sequence where the engine control continues to try to light the combustor or augmentor. Most typically refers to the augmentor.

**Referred** - An adjustment for standard day temperature and/or pressure (at an engine station) to an engine parameter (like rotational speed, air flow or fuel flow). See also corrected.

**Reynolds Number Index -** Ratio of actual Reynolds Number to standard atmosphere Reynolds Numbers assuming a constant length scale.

**Rotating Stall -** A cyclic disruption of airflow (surge) across one or more fan or core compressor blades. May or may not be noticeable by the operator, but can produce cycle fatigue damage to the compressor blades.

**Rumble** - A low frequency augmentor induced vibration.

**Screech** - A combustion induced acoustic vibration in the augmentor. Usually in the several hundred Hertz frequency range

**Stagnation -** A series of stalls that have become non-recoverable (no response to engine control inputs---requires the disruption of fuel flow to clear). The series of stalls has disrupted the airflow through the compressor so severely that ram flow will not recover the engine. Characterized by no engine core response and increasing exhaust gas temperature.

**Stall -** A disruption of airflow across one or more fan or core compressor blades. Also known as surge.

**Stage** - A blade (or rotor) and stator pair.

**Station** - Defined locations within a propulsion system. See Section 20.2.1

**Stator** - The non-rotating blades of a stage within a turbomachine compressor or turbine.

**Swirl** - Non-axial vector of inlet airflow.

**Temperature Profile** - Usually used in reference to the span wise temperature distribution across the turbine inlet guide vanes.

**Theta** -Temperature ratio, $\theta_{i} = \frac{T_{\mathrm{ti}}}{T_{0}}$, where i is the reference station

**Thrust Specific Fuel Consumption** - The amount of fuel required to produce a unit of thrust,

TFSC =

**Total Accumulated Cycles - A conglomerate measurement (based on an empirical relationship) of the number of cycles an engine has experienced. It is used as a measure of engine health or life.**

**Upper Left Hand Corner -** An area of the flight envelope chart (Mach Number on the x-axis and altitude on the y-axis) characterized by areas of low speed and high altitude.

**Windmill** - The free rotation of the rotational components of the engine driven solely by ram airflow.

**\
**

**17.4.3 Aircraft and Associated Engines**

  **Military Aircraft**                           
  ----------------------- ----------------------- ----------------------------------------------------
  **Designation**         **Name**                **Engine**
  A-10                    Thunderbolt II          TF34-GE-100/-100A
  AC-130                  Gunship                 T56-A-15
  AH-1                    Cobra                   T400-CP-400, T53-L-703
  AH-64                   Apache                  T700-GE-701C
  AV-8                    Harrier                 F402-RR-401/402, F402-RR-406A/408
  B-1                     Lancer                  F101-GE-102
  B-2                     Spirit                  F118-GE-100
  B-52                    Stratofortress          J57-PW-43WB, TF33-PW-3/103
  C-12                    Huron                   T74
  C-130                   Hercules                T56-A-15/7/7B/9D, RR-AE2100D3
  C-135                   Stratolifter            J57-PW-59W, TF33-PW-5
  C-141                   Starlifter              TF33-PW-7/7A
  C-17                    Globemaster III         F117-PW-100
  C-20                    Gulfstream III          F113-RR-100, F126-RR-100
  C-23                    Sherpa                  T101-CP-100
  C-37                    Gulfstream V            RR-BR710A1
  C-5                     Galaxy                  TF39-GE-1A/1C, F138-GE-100
  CH-3                    Jolly Green Giant       T58-GE-1/3/100
  CH-47                   Chinook                 T55-L-5/7/11/712/714
  CH-53                   Sea Stallion            T64-GE-412
  CV-22                   Osprey                  T406-AD-400
  E-3                     Sentry                  TF33-PW-100A
  E-8                     Joint Stars             TF33-PW-102C
  F-14                    Tomcat                  TF30-PW-412A, F110-GE-400
  F-15                    Eagle                   F100-PW-100/220/220E/229/229A
  F-16                    Fighting Falcon         F100-PW-200/220/220E/229/229A, F110-GE-100/129/132
  F-18                    Hornet                  F404-GE-400, F414-GE-400
  F-22                    Raptor                  F119-PW-100
  F-35                    Lightning II            F135-PW-100, F136-GE-100
  F-4                     Phantom II              J79-GE-2/8/10/15/17, F103-GE-100
  F-5                     Tiger/Freedom Fighter   J85-GE-13/21, F404-GE-400
  KC-10                   Extender                F103-GE-101
  KC-135                  Stratotanker            J57-PW-43WB/-59W, TF33-PW-102, F108-CF-100
  MQ-9                    Reaper                  Honeywell TPE331-10
  MQM-107                 Streaker                J402-CA-700/702
  MQM-74                  Chukar                  J400-WR-400/401
  RQ-3                    DarkStar                F129-WR-100
  RQ-4                    Global Hawk             F137-AD-100
  SR-71                   Blackbird               J58-PW-4
  T-1                     Jayhawk                 PW-JT15D
  T-2                     Buckeye                 J85-GE-4
  T-33                    Shooting Star           J33-A-5
  T-37                    Tweet                   J69-T-25A
  T-38                    Talon                   J85-GE-5/H/J/L/R/S
  T-6                     Texan II                PW-PT6A-68
  U-2                     Dragon Lady             F118-GE-101
  X-31                                            F404-GE-400
  X-47                    Pegasus                 JT15D-5C
  **Civilian Aircraft**                           
  Boeing 737                                      PW-JT8D, CFM-56
  Boeing 747                                      PW-JT9D, GE-CF6, RR-RB211, GEnx
  Boeing 757                                      RR-RB211, PW-2000
  Boeing 767                                      PW-JT9D, PW-4000, GE-CF6, RR-RB211, RR-800
  Boeing 777                                      GE-90, PW-4000
  Boeing 787                                      GEnx, RR-1000
  Airbus A300                                     GE-CF6, PW-JT9D, PW-4000
  Airbus A310                                     GE-CF6, PW-JT9D, PW-4000
  Airbus A320                                     CFM-56, PW-6000, IAE-V2500
  Airbus A330                                     GE-CF6, PW-4000, RR-700
  Airbus A340                                     CFM-56, RR-500
  Airbus A380                                     RR-900, GP-7000

**17.4.4 Additional Propulsion Resources**

Jack Mattingly's Engine Design Site

<http://www.aircraftenginedesign.com/>

NASA EngineSim

<http://www.grc.nasa.gov/WWW/K-12/airplane/ngnsim.html>

AeroFiles

<http://www.aerofiles.com/home.html>

NASM Smithsonian National Air and Space Museum

<http://www.nasm.si.edu/>

National Museum of the US Air Force

<http://www.nationalmuseum.af.mil/>

**Aerospace Recommended Practices**

ARP1420 Gas Turbine Engine Inlet Flow Distortion Guidelines

AIR1419 Inlet Total-Pressure-Distortion Considerations for Gas-Turbine Engines

ARP4990 Turbine Flowmeter Fuel Flow Calculations

> Additional standards for Emissions, Test Cell Correlation, Noise, Temperature Measurement, and Health Management are also available through SAE International's website: <http://standards.sae.org/power-propulsion/engines/gas-turbines/standards/>

  [17001]: media/17/image1.png {width="5.138888888888889in" height="3.2909722222222224in"}
  [17002]: media/17/image5.png {width="3.798807961504812in" height="2.850989720034996in"}
  [17003]: media/17/image6.png {width="4.133444881889764in" height="1.3203554243219597in"}
  [C:\\Users\\Moulder Christopher\\Desktop\\inlet1.jpg]: media/17/image7.jpeg {width="1.7667727471566055in" height="1.5739129483814522in"}
  [17004]: media/17/image8.png {width="6.192361111111111in" height="2.339583333333333in"}
  [Combustor.png]: media/17/image9.png {width="2.425705380577428in" height="2.1078543307086615in"}
  [17005]: media/17/image10.jpeg {width="1.1298611111111112in" height="1.51875in"}
  [17006]: media/17/image11.png {width="1.0541666666666667in" height="1.3770833333333334in"}
  [17007]: media/17/image12.jpg {width="6.791666666666667in" height="9.333333333333334in"}
  [17008]: media/17/image13.svg {width="3.96579615048119in" height="3.798507217847769in"}
  [17009]: media/17/image14.png {width="3.1in" height="2.433333333333333in"}
  [17010]: media/17/image15.png {width="2.99375in" height="2.4472222222222224in"}
  [17011]: media/17/image16.png {width="5.3875in" height="1.6979166666666667in"}

<!--chapter:end:17-gas-turbine-propulsion.Rmd-->

# 18 - Telemetry Control Room and Radio Communications**

**"SFTE Tech Council "Best Practice Guidelines"**

In accordance with experienced FTE feedback from across industry, below are suggested best practices for communications between flight and ground crews.  This guideline uses the following terminology

-   "Ground station" is a generic term for any station providing radio support, whether it is a simple radio, fixed-base TM control room, mobile TM station, or other.

-   "R/O" is a generic term for the ground station radio operator. Different organizations may use different job titles for the person commanding the ground station (i.e., TM Chief, Test Director, Test Conductor). The radio call sign for this role is typically "TM" or "Control"

-   "Flight crew" to refer to whichever test aircraft crew member (pilot-in-command, copilot, or other) is designated to communicate with the test ground station.

**[Overall Guidance]{.underline}**

Unless otherwise established during the preflight briefing, radio operations between the test aircraft and ground station should use some standard phraseology established by the testing organization. The following are presented as radio transmission terminology between designated participants. The same phrases equally apply to communications within the telemetry (TM) room during a test. This phraseology is not necessarily applied to any communication with air traffic control (ATC).

"**Stand by**" - Instruction issued by any participant to direct others to stay on established flight conditions and remain prepared for continuing, but to not execute the next action. Used when everything is OK, but the caller requires more time for some reason (e.g. ATC conversations, data analysis, airspace maneuvering).

"**Cleared for \_\_\_"** - Transmitted by the R/O to authorize proceeding to the specified condition, typically the next planned test point, but sometimes a out-of-sequence test point, airspeed, or flight condition. The flight crew will typically "parrot back" the same phrase to acknowledge clearance. When in doubt, the flight crew requests "Confirm clear for \_\_\_." Routine operations generally do not require clearance; these transmissions are typically used only when the flight crew requires clearance for saefty of flight (SOF) or technical reasons -- as established during the preflight briefing.

"**On Condition**" -- Normally transmitted by test pilot to announce the aircraft is properly trimmed or otherwise set up to beginf the test.

"**Hold**" -- Instruction by R/O to maintain current flight condition to either extend data collection period or emphasize critical parameter (e.g "Hold condition" or "Hold altitude").

\"**3,2,1, HACK**\" -- countdown to event.

Silent countdown " **Five, four, three \_\_\_ \_\_\_"** - an intentional silence at the end of a countdown to allow other participants a chance to call for an abort. Most common with ordinance employment.

\"**Condition Complete**\" or "Test Complete" -- Call from test conductor or pilot to announce a normal completion.

\"**Continue**\" -- transmitted by R/O when there is a series of steps in the maneuver and flight crew is cleared to continue to the next one.  

\"**Recover**\" called by either participant at test point completion or non-urgent cessation of a test point. Instructs the flight crew to smoothly return to a normal flying condition.

"**Copy**" -- Routine shorthand reply meaning "I understood your previous transmission." This single statement is generally preferred. This can be replaced by a non-verbal radio double-click (zipper) to acknowledge simple statements. Some organizations may also aknowledge a transmission using "**Roger**." Flight testers do not use CB radio slang such as "10-4"

"**Stop Test**" or "**Knock it Off**"- Instruction transmitted by flight crew or R/O to stop test underway using normal means. There is no implied requirement to change flight conditions. Used when testing does not present SOF concerns but continuing will not provide useful data. The R/O would typically make this call if witnessing incorrect execution or experiencing critical data dropouts or other technical difficulties. The R/O would also make this call on behalf of a participating engineer who does not have radio access. The flight crew would make this call if testing is invalidated by ATC or weather interference or in the case of an improperly executed procedure. The caller should state the reason for stopping the test (e.g. reaching \_\_ limit).

"**ABORT, ABORT, ABORT**" - Emergency instruction transmitted by flight crew, chase aircraft, or R/O to stop test immediately and recover to safe flight conditions as soon as possible. Used when continued testing presents SOF concerns. The R/O may make this call if witnessing a dangerous situation or if unable to confirm SOF because of critical data dropouts or other technical difficulties. The flight crew would make this call to advise the R/O of actions they are taking. In certain cases pre-arranged at the prebriefing, a ground station participant other than the R/O may be authorized and physically positioned to make radio abort calls. The caller should state the reason for stopping the test (e.g. reaching \_\_ limit).

"**BAIL OUT, BAIL OUT, BAIL OUT**" - Emergency instruction to or between the flight crew to leave the aircraft. Nominally used when out-of-control aircraft descends through a pre-set minimum or other briefed altitude. In circumstance leading up to any potential bail out call, the R/O will transmit "\_\_ altitude" callouts every thousand feet during attempted recovery of an out-of-control aircraft.

"**Terminate**" is the instruction to destroy or otherwise incapacitate a flight vehicle. Applies to vehicles with a flight termination system designed to quickly end its flight and limit possible damage to the surroundings.

**[\
]{.underline}**

**[Call sign designation]{.underline}**. Depending on prior agreements, ATC may communicate to an aircraft by referencing its registration (a.k.a. tail) number or by an accepted call sign such as "Zoom 86." Call signs potentially have the advantage of being easier to say & understand and bringing familiarity between operators. The R/O may use this same call sign if so arranged prior to the flight, but will otherwise refer to the test aircraft as "**Test**" and a chase aircraft as "**Chase**." The call sign for the ground station is "**Ground**" and is "\[Company\] **Weather**" for the mobile ground weather station. The call sign for any other mobile radio-equipped ground crew is "\[Company\] **Mobile**" unless otherwise specified during the pre-flight briefing. The dispatcher's radio station, is "\[Company\] **Dispatch**." Security personnel employed who control the gate at the taxiway and are called "\[Company\] **Security**."

[**Call sign use**.]{.underline} When initiating radio communications at the beginning of a flight or after a period of silence, the caller will first state the receiver's call sign then his own (e.g. R/O transmits "Test -- Ground"). This is an abbreviated version of the formal "Calling Zoom 86, this is Ground, Over" which is not useful unless radio transmission quality is poor. After two-way communication has been initiated, each transmission need only to begin with the recipient's call sign.

**[Thumbs Up]{.underline}**. A convenient non-verbal communication between control room participants is the "thumbs-up" hand signal. During active testing, this signal is preferred for routinely acknowledging a message or for indicating readiness. Not only does this signal eliminate unnecessary discussion, but allows all ground station participants to signal simultaneously and continuously if needed.

NOTES

<!--chapter:end:18-radio-communications.Rmd-->

# 19 - The Electromagnetic Spectrum**

**19.1 Electromagnetic Waves**

All energy in the universe radiates in waves. Figure 1 depicts an electromagnetic wave, characterized by an electric field vector (E) and a magnetic field vector (H) oscillating orthogonal to each other. The electromagnetic wave propagation direction is determined by the right-hand rule and crossing the electric field into the magnetic field as illustrated. The electromagnetic wavelength (λ) is the distance between two consecutive electric field peaks. The electromagnetic wave frequency (f or ν) is inversely proportional to its wavelength. The product of any electromagnetic radiation's frequency and wavelength equals the speed of light (C=λν).

.

![4-3]

**Figure 1 - The Electromagnetic Spectrum**

**19.2 The Electromagnetic Spectrum**

Figure 2 illustrates several concepts related to the electromagnetic spectrum

-   Size reference for various wavelengths.

-   Numerical relation between wavelength (meters between peaks), wave number (peaks per cm), energy (electron volts), and frequency (Hz).

-   Separate frequency bands identified within the overall spectrum.

-   Common sources & uses within frequency bands.

> Many aircraft and spacecraft systems operate within limited regions of the electromagnetic spectrum. Common examples include radar, electro-optical sensors, radios, data links, electronic warfare, and navigation systems.

![][19001]

**19.3 Radio Frequency Electromagnetic Radiation**

One of the most heavily used regions of the electromagnetic spectrum is the radio frequency or RF spectrum, from \~3 kilohertz to \~ 300 gigahertz. The RF Spectrum encompasses an array of telecommunications devices including radios, television, satellite communications, data links, radio-navigation aids, and radar. Table 1 shows how the RF Spectrum is subdivided into frequency bands.

  ----------------------------- ----------- ----------------------
  **Band Designation**          **Label**   **Frequency Spread**
  Extremely Low Frequency       ELF         3 - 30 Hz
  Super Low Frequency           SLF         30 - 300 Hz
  Ultra Low (Voice) Frequency   ULF or VF   300 Hz - 3 KHz
  Very Low Frequency            VLF         3 - 30 KHz
  Low Frequency                 LF          30 - 300 KHz
  Medium Frequency              MF          300 KHz - 3 MHz
  High Frequency                HF          3 - 30 MHz
  Very High Frequency           VHF         30 - 300 MHz
  Ultra High Frequency          UHF         300 MHz - 3 GHz
  Super High Frequency          SHF         3 - 30 GHz
  Extremely High Frequency      EHF         30 - 300 GHz
  ----------------------------- ----------- ----------------------

**Table 1 - Radio Frequency Band Designations**

Depending on the type of RF system, additional subdivisions of the bands also exist. Table 2 applies to radar systems.

+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| **IEEE US**             | **Origin**                                   | **Frequency Range** | **Wavelength**   | **NATO, US ECM**        |
|                         |                                              |                     |                  |                         |
| (Old RADAR Designation) |                                              |                     |                  | (New RADAR Designation) |
+=========================+==============================================+=====================+==================+=========================+
| W                       | W follows V in alphabet                      | 75-111 GHz          | 400 mm-270 mm    | M (60-100 GHz)          |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| V                       | Very Short                                   | 40-75 GHz           | 700 mm -- 400 mm | L (40-60 GHz)           |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| K~A~                    | Kurtz (above)                                | 26-40 GHz           | 1.1 cm - 0.7 cm    | K (20-40 GHz)           |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| K                       | Kurtz                                        | 18-26 GHz           | 1.6 cm -- 1.1 cm | J (10-20 GHz)           |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| K~U~                    | Kurtz (under)                                | 12.4-18 GHz         | 2.5 cm -- 1.6 cm |                         |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| X                       | WWII fire control - as an "X" for crosshairs | 8-12.4 GHz          | 3.7 cm -2.5 cm   | I (8-10 GHz)            |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| C                       | Compromise between S and X                   | 4-8 GHz             | 7.5 cm -3.7 cm   | H (6-8 GHz)             |
|                         |                                              |                     |                  |                         |
|                         |                                              |                     |                  | G (4-6 GHz)             |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| S                       | Short Wave                                   | 2-4 GHz             | 15 cm -- 7.5 cm  | F (3-4 GHz)             |
|                         |                                              |                     |                  |                         |
|                         |                                              |                     |                  | E (2-3 GHz)             |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| L                       | Long Wave                                    | 1-2 GHz             | 30 cm -- 15 cm   | D (1-2 GHz)             |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+
| UHF                     |                                              |  0.3-1 GHz            | \<1 m -- 30 cm   | C ( 0.5-1 GHz)            |
+-------------------------+----------------------------------------------+---------------------+------------------+-------------------------+

**Table 2 - Radar Frequency Band Designations**

Electromagnetic wave propagation does not stop at national boundaries. Most governments regulate radio frequency band use via **frequency** or **spectrum allocation**. For technical and economic reasons, governments try to harmonize and standardize RF band allocation. A number of forums and standards bodies address frequency allocation. The International Telecommunication Union (ITU) is the United Nations agency for information and communication technologies. The ITU allocates global radio spectrum and satellite orbits and develops technical standards that ensure networks and technologies seamlessly interconnect. There are numerous users and spectrum allocation is complicated to implement and regulate. Figure 3 illustrates the United States frequency allocations.

\[Editor's Note: Figure 3 is highly detailed and not legible in either 8.5 x 11" or 11 x 17" format. Posters may be purchased via <http://bookstore.gpo.gov/products/sku/003-000-00694-8>. A high resolution online version is available at <http://www.ntia.doc.gov/files/ntia/publications/spectrum_wall_chart_aug2011.pdf> \]

![][19002]

**19.4 Optical Frequency Electromagnetic Radiation**

Optical frequency electromagnetic radiation includes ultraviolet (UV), visible, and infrared (IR) light ranging from about 0.01 microns (µm) out to about 1000 µm wavelength. These comprise the optical spectrum as shown in Figure 4.

Optical Spectrum

![][19003]

**Figure 4 - The Optical Spectrum and the Visible Spectrum**

Just as the RF spectrum can be subdivided into various special bands, Table 3 shows bands in the optical spectrum. The visible, near infrared (NIR), mid wave IR (MWIR), and long wave IR (LWIR) bands are most commonly used for airborne electro-optical sensor systems. All bands can be useful, depending on the specific mission and operational requirements. \[Editor's Note: Some band nomenclature and boundaries depend on author and text. SFTE has not established standards on this subject\]

The most familiar example of electromagnetic radiation is the light spectrum humans see. Different colors of visible light have different wavelengths, ranging from violet at the shorter wavelengths (0.4 µm) to red at the longer wavelengths (0.7 µm). Aerospace vehicles employ many visible light sensor systems. Visible light sensors provide useful and highly recognizable images, but logically enough, do not work well in poor visibility or at night without some sort of artificial illumination or image intensification.

![][19004]

**Table 3 - Optical Spectrum Bands**

Infrared radiation refers to the optical spectrum between \~0.7 µm and \~1000 µm. Infrared radiation is popularly known as \"heat or thermal radiation\", but light and electromagnetic waves of any frequency will heat surfaces that absorb them. Infrared light from the sun accounts for \~49% of earth heating, the rest is by visible light that is absorbed then re-radiated at longer wavelengths. Objects at room temperature emit radiation mostly concentrated in the 8 to 25 µm region.

Infrared sensors are useful in numerous civil and military remote sensing applications. At wavelengths beyond about 14 microns, infrared radiation is not useful for most airborne remote sensing applications due to the earth's atmosphere attenuation. This is especially true in hot and humid atmospheric conditions with extreme infrared radiation attenuation.

**19.5 Atmospheric Transmission Windows**

The sun is the earth's major source of natural energy across the electromagnetic spectrum and its radiation bombards the atmosphere constantly. The earth\'s atmosphere protects its life from excessive exposure to a range of higher energy waves such as Gamma rays, x-rays, and some ultraviolet waves. These are \"ionizing\" radiation because they have sufficiently high energy to knock electrons out of atoms, alter atoms and molecules, and damage organic cells. Figure 5 shows atmospheric opacity (blocking) across a wide wavelength spectrum.

![http://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Atmospheric\_electromagnetic\_opacity.svg/2000px-Atmospheric\_electromagnetic\_opacity.svg.png]**Figure 5 - Atmospheric Opacity vs. Wavelength**

The opposite of opacity is transmission. The earth's atmosphere absorbs, reflects, refracts, or allows electromagnetic radiation transmission. Suspended particles such as dust and raindrops can reflect and refract radiation. Figure 6 shows electromagnetic radiation transmission through the atmosphere across the visible and infrared wavelength spectrum (subset of the Figure 5 spectrum). Some radiation bands, including visible light and some infrared pass through the earth's atmosphere with little to no attenuation. Such "atmospheric windows" or "transmission windows" allow infrared remote sensing from standoff distances. The bottom scale of Figure 6 shows which molecules are primary absorbers at various infrared radiation wavelengths. The most important absorbers are water vapor (H^2^O), carbon dioxide (CO^2^), and ozone (O^3^). Flight testers should understand wavelengths, absorption, refraction and atmospheric windows when designing tests to evaluate sensors.

![][19005]

**Figure 6 - Infrared Atmospheric Transmission Windows**

19.6 References**

|||
|-|---------------|
|19.1 |Thermal Imaging Systems by J.M. Lloyd, C 1975, Plenum Press, New York & London, 451 pages.|
|19.2 |Infrared Systems Engineering by Richard D. Hudson Jr., C  1969, John Wiley & Sons Inc. 642 Pages.|
|19.3 |Electro-Optical Systems Analysis 3rd edition, C 1985, Electro-Optical Research Company, Los Angeles, 356 pages.|
|19.4 |Light, The Mystery of the Universe by Khalil Seyrafi C 1986 by Electro-Optical Research Company, Los Angeles, 240 Pages.|
|19.5 |Test and Evaluation of Infrared Imaging Systems 2nd edition by Gerald Holst, C 1998, JCD Publishing, Winter Park, Fl., 422 pages.|
|19.6 |Electro-Optical Imaging Systems Performance by Gerald Holst, C 1995, JCD Publishing, Winter Park, Fl., 468 pages.|
|19.7 |Infrared Technology and Fundamentals by Spiro & Schlessinger, C 1989, Marcel Dekker Inc.|
|19.8 |The Infrared and Electro-Optical Systems Handbook, C 1993, The Infrared Information and Analysis Center and the Society of Photo-Optical Instrumentation Engineers (SPIE), 8 Volumes.|
|19.9 |Electro-Optical Surveillance by Gene Adcock, C 1999, CCS Security Publishing Ltd.|

**NOTES**

  [4-3]: media/19/image1.jpeg {width="4.840425415573053in" height="2.40625in"}
  [19001]: media/19/image2.jpeg {width="9.27749343832021in" height="6.9492016622922135in"}
  [19002]: media/19/image3.jpeg {width="9.250678040244969in" height="5.905972222222222in"}
  [19003]: media/19/image4.png {width="6.5in" height="3.477777777777778in"}
  [19004]: media/19/image5.png {width="6.3330314960629925in" height="4.265625546806649in"}
  [http://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Atmospheric\_electromagnetic\_opacity.svg/2000px-Atmospheric\_electromagnetic\_0pacity.svg.png]: media/19/image6.png {width="6.75in" height="3.1893755468066494in"}
  [19005]: media/19/image7.png {width="5.864583333333333in" height="3.25629593175853in"}

<!--chapter:end:19-electromagnetic-spectrum.Rmd-->

# 20 - Communication Systems Testing**

Written by Jim Fawcett <james.fawcett@airbus.com>

The below content is relative to CS25/Part 25 radio communications equipment testing, principally on large civil aircraft.

**20.1 VHF Radios**

**20.1.1 Technology**

Aeronautical very high frequency (VHF) radios are a line-of sight (LOS) technology within the frequency band 118-136.975 megahertz (MHz) and channel separations of 8.33 (historically 25) MHz. The typical output power on commercial aircraft is in the order of 25 watts (W) in AM (amplitude modulation) mode. Typically mounted on the fuselage-mounted, blade antennae best serve the wavelengths within the frequency band. Less common mounting locations include wing tips or the vertical tailplane.

Modern VHF radios include capacity for datalink communications within the same frequency band. Such radios are referred to as VDR (VHF Data Radio) or MVDR (Multiple VDR). V identifies mono-channel equipment with one avionics box per radio channel, whereas M identifies multi-channel equipment where one avionics box controls two radio channels.

Data communications currently employ one of two "modes". Mode 2 (for ATN -- Aircraft Telecommunications Network) has recently replaced mode A (Aircraft Communications Addressing and Reporting System - ACARS) due to higher throughput rates. Mode A remains deployed in some areas of the world.

To satisfy CS25/Part 25 certification requirements, a typical civil aircraft will have 3 VHF or VDR or 2 MVDR with 2 channels each, providing three VDR channels and one hot spare.

**20.1.2 Test Objectives**

The four principle objectives for voice functions are range, masking, control, and interference. When relevant, functional tests of data applications and switching between voice and data services should also be assessed.

**Range performance**

The theoretical maximum line of sight distance for a VHF radio with one station on an aircraft and one station on the ground at sea-level on a flat surface is

![][20001]

$$range\ \lbrack NM\rbrack\ \sim\ 1.06\sqrt{h\ \lbrack\text{ft}\rbrack}$$

Atmospheric refraction deflects electromagnetic waves and VHF signals may travel beyond line-of-sight by an amount varying slightly according to atmospheric conditions. A common memorable empirically-based relation is

![][20002]

$$\text{range\ }\left\lbrack \text{NM} \right\rbrack = 1.23\sqrt{h\lbrack\text{ft}\rbrack}$$

Transmission distance can increase if the ground station is above sea-level, or reduce if there is terrain between the aircraft and the ground station.

![][20003]

The minimum range performance to be demonstrated is 80% of the so-called "optical" (LOS) range, adjusted for altitude. Test at or above FL310.

**Masking performance**

As VHF is a LOS technology, any obstacle between the aircraft and the ground station can partially or totally attenuate signal strength. Such an obstacle may be on the ground (see comments on terrain in the section on range performance) but may also be any major aircraft structural element such as the fuselage, wings, tailplane, engines, or landing gear.

![][20004]

Perform masking checks at 65% of the optical range, adjusted for altitude, Test at or above FL310.

**Audio and control integration**

It is highly unusual for modern civil transport aircraft to operate VHF on a stand-alone basis. Typically, audio management system centralizes the audio which is available to all crew members through a variety of listening equipment (boomset, headset, loudspeaker). The crew controls radios via a management interface which may be a dedicated Radio Management Panel (RMP) or included in a display format. For new installations testing to include tuning from all combinations of radios and panels is needed.

Testers must verify the radios can be controlled correctly and the audio quality is correct. In the absence of a universally accepted and easily implemented objective solution for audio volume and clarity, the flight crew may use a subjective scale to judge for loudness and clearness. This will include a signal report on the transmission from the ground station as well.

+------------+--------------------------------------------+------------------------------+
| **Signal** | **Question**                               | **Answer, Advice, or Order** |
+============+============================================+==============================+
| QSA        | What is the strength of my signals\        | 1.  scarcely perceptible     |
|            | (or those of\...)?                         |                              |
|            |                                            | 2.  weak                     |
|            |                                            |                              |
|            |                                            | 3.  fairly good              |
|            |                                            |                              |
|            |                                            | 4.  good                     |
|            |                                            |                              |
|            |                                            | 5.  very good                |
+------------+--------------------------------------------+------------------------------+
| QRK        | What is the intelligibility of my signals\ | 1.  bad                      |
|            | (or those of\...)?                         |                              |
|            |                                            | 2.  poor                     |
|            |                                            |                              |
|            |                                            | 3.  fair                     |
|            |                                            |                              |
|            |                                            | 4.  good                     |
|            |                                            |                              |
|            |                                            | 5.  excellent                |
+------------+--------------------------------------------+------------------------------+

*Source**:** ITU Radio Regulations 1990, Appendix 13*

**Non-interference**

By their nature as electromagnetic transmission systems, VHF radios can be an interference victim or source. This can take two forms: interaction between different VHF radios operating on similar frequencies, or interaction between the VHF system and other aircraft systems or interactions from other systems to the VHF system.

Concerning the first interaction, the relative proximity of aircraft VHF antennas make it difficult to avoid interference for frequency separations of less than 6 MHz. This can be easily identified for voice communications (interference on VHF radio X frequency A reception when VHF radio Y is emitting on frequency B) but can be more difficult to identify for data communications when the frequency used for data transmissions is not readily visible in the cockpit.

For interactions between VHF radios and different aircraft systems, the issue only occurs during VHF transmission by the aircraft due to the radiated power from the VHF antennae located close to other systems. Electromagnetic interference studies can predict the frequencies (or their harmonics) which may be problematic.

For new installations, interactions from the aircraft systems to the VHF receivers, an EMI ground test is needed to determine what, if any, interference is entering the receiver's circuitry, either through the antenna or through wiring that will show up as a noise on a particular frequency. A spectrum analyser connected to the aircrafts antennas, performing a scan throughout the entire VHF comm/nav band is needed to find any narrow band emissions from other systems that may be interfering. Checks at low, medium and high frequencies is no longer acceptable as most interference is now from narrow band emissions. For further details and recommendations, consult RTCA DO-160.

**20.1.3 Test technique**

**Range performance**

The aircraft flies outbound ≥ FL310 on any convenient radial from a calibrated ground station. The aircraft distance from the ground station is needed and most often determined via FMS or GPS. VOR/DME data, when the ground station is located close to VOR/DME equipment, can be used, but since VOR/DME is also a line-of-sight technology and the output power can be lower than for a VHF transmitter, it is likely that the VOR/DME range will be lost before voice communication is interrupted.

Every 5 NM (or more often, if required), a flight crew member calls a ground crew member who notes the transmission loudness/clarity. They then swap roles to determine aircraft reception. The checks continue until the loudness or clearness drops below 3, at which point the maximum range is considered to have been reached. It can nevertheless be useful to continue flying and testing outbound to characterise the distance at which there is a total loss of communication.

A few nautical miles after completing outbound communication testing, the aircraft should reverse course to fly inbound on any convenient radial from the calibrated ground station. Once again, calls should continue every 5 NM until the communication is re-established with a loudness/clearness of at least 3. Repeat the above check for each radio and antenna combination.

Depending on the antenna position, some masking may occur (e.g. tailplane masks a forward upper fuselage-mounted antenna during outbound legs). Results can demonstrate masking performance, or conversely justify any discrepancy in range obtained for outbound and inbound legs.

**Masking performance**

Longitudinal masking from the fuselage and/or tailplane having been identified during the range checks, only fuselage masking remains to be verified.

The aircraft flies a 360º turn to the left or to the right, centered at 65% of the optical range, adjusted for altitude, the test being performed ≥ FL310. To identify areas where there is a reduction in signal strength, verify transmission and reception loudness & clearness every 30º of heading. Demonstrate that reductions in strength are justified when considering the antenna location relative to the fuselage and taking into account the relative positions of the aircraft and the ground station. Repeat the check for each radio and antenna combination.

On occasion, checks may be performed with landing gear and/or flaps/slats extended. However, since such configurations usually correspond to landing configurations, the distance between the aircraft and the ground station is reduced and the radiated power is therefore usually sufficient for the signal to "get around" the masking element. In case of unusual antenna locations and/or aircraft configurations, additional masking checks may be required.

**Audio and control integration**

General use of VHF radios during the course of standard flight operations is usually enough to identify if there is an issue of audio and/or control integration. Nevertheless, it is important to ensure all available radios are controlled from all available RMPs and the audio performance is checked from all available crew member positions with all available communications means (boomset, headset, hand microphone/loudspeaker, oxygen mask, etc). Typically, comfortable audio levels should be confirmed at mid-range volume setting on any audio control device.

**Non-interference**

**VHF / VHF**

When listening on VHF radio X, transmit VHF radio Y frequencies previously agreed with the design office. Generally, do this at decreasing frequency spacings or on harmonic frequencies to assess the absence of interference, or acceptability level if interference occurs. Verify each combination of VHF and antenna. Such a test could be performed on the ground, but there is a strong potential for additional interference caused by signal reflections from surrounding infrastructure (buildings, ground, other aircraft or vehicles, etc.)

**VHF / other aircraft systems**

Evaluate the effect of each VHF radio transmission on other aircraft systems by transmitting on VHF frequencies previously agreed with the design office (almost always corresponding to harmonic frequencies for different aircraft systems).

Note that electromagnetic interference is not limited to systems with similar operating characteristics (e.g. radio navigation equipment). It may also concern other aircraft systems, particularly those with long and potentially not well-shielded wiring runs.

**20.1.4 Weather conditions**

VHF communications are not significantly affected by atmospheric conditions such as clouds or precipitation, wind or temperature. Therefore, there is no significant restriction when testing VHF radios - especially since it is often done at altitude in rather clear air. The only exception would be interference due to lightning when discharging in proximity.

**20.1.5 Safety**

VHF use for ATC purposes is part of standard operating procedures for air crews and is not considered an inherently risky test. Nevertheless, due to the multiple changes of frequency and radio under test, combined with the fact that often a test frequency rather than an ATC frequency is used, there is potential for losing the current ATC frequency. This can be compounded on aircraft types where the standby frequency is not synchronised between RMPs. Clear communication between the crew members about who is tuning which radio and using which RMP can mitigate any problems.

Ensure appropriate authorisations are in place for planned test frequencies. If an ATC frequency is used for some reason, avoid working heavily-used locations. Do not perform blind transmissions on a frequency without first listening for a while to see if that frequency is being used by other traffic.

**20.1.6 Tips and hints**

A common comment about audio quality is that "there is an echo." This is usually due to more than one radio being tuned to the same frequency, thus both are heard simultaneously. It is therefore good practice to listen to only one radio at a time and ensure all radios are tuned to different frequencies.

VHF data frequencies range from 131 to 136 MHz. Therefore, in case of interference on voice frequencies above 125 MHz (i.e. below the 6 MHz separation limit), consider switching off the VHF data mode to see if this is the source of the interference.

Different radio types have different characteristics. Some may demonstrate a gradual loss of signal strength whereas others may have a more abrupt transition from intelligible to unintelligible. This is another reason to continue range checks beyond the loudness/clearness level 3.

The number of available VHF frequencies, even with 8.33 MHz spacing, is rather limited and the same frequencies are re-used at multiple ground stations. An aircraft at high altitude may be able to receive more than one ground station transmitting at the same frequency. Accordingly, ensure the right ground station is answering!

**20.2. HF radios**

**20.2.1 Technology**

The significant benefit of high frequency (HF) technology is the ability to communicate beyond line of sight. This is possible because the HF wavelengths (2-30 MHz with 1 kHz channel spacing) are such that the signal can easily reflect off the Earth's surface or different ionosphere layers (layers of charged particles at altitudes between 60 and 1000 km). While LOS communications are possible, coverage is not entirely guaranteed between the aircraft and all ground stations because there may be "holes" where reflected signals do not reach the ground.

![][20005]

The long wavelengths involved would generally dictate the use of very long antennas. On an aircraft, this is not always geometrically possible. Cable antennas from the upper forward fuselage to the forward tip of the fin are one solution; so-called towel-bar antennas stood off from the fuselage are another option. However, more common, since the aerodynamic impact is much lower, is to fit the antenna inside the leading edge of one of the surfaces, typically the fin.

Nevertheless, such antennas must be tuned to optimize their performance. This is achieved by connecting a coupler to the antenna. The coupler in turn is connected to the transceiver via a network of coaxial cables. Aeronautical transceivers generally provide both voice and data communications and can use upper side band (USB) or amplitude modulations (AM). A typical system output power is 400 W.

CS25/Part 25 do not require multiple HF radios. Operational requirements for remote or oceanic airspace will nevertheless almost always require two independent long-range communication systems. Even if only one single antenna is usually installed, two separate transceiver/coupler chains are needed to fulfill the independence criteria.

**20.2.2 Test Objectives**

HF testing has several objectives. In addition to the below items, functional tests of data applications and switching between voice and data services may be assessed if relevant.

**Range performance**

There is no hard and fast numerical value for HF range performance, even if in practice, over the horizon contacts at 700nm+ is considered adequate. Nevertheless, it should be generally possible to achieve distances of 1000 NM or more, depending on the time of day and the frequency being used. A good guide is to consider operational requirements on routes on which HF radio may be used; there are very few points in the world's oceanic or polar regions that lie on commonly operated routes which are more than 1000 NM from land and therefore from an HF transmitter (indeed, so-called "point Nemo", the most remote oceanic point on the planet, is only 1500 NM from any land). The check should be performed in the clean configuration at a representative cruise altitude.

It is also desirable to perform a short-range communication, preferable at low altitude, to check for any issues linked to saturation when receiving signal from the ground station at relatively high power.

**Masking performance**

Masking performance is generally not an issue for HF radios, because signal reflections can allow for non-LOS communications.

**Audio and control integration**

The same comments as for VHF testing apply for HF testing.

**Non-interference**

The principal problem with HF radios is the relatively high radiated power. Accordingly, even systems not operating on nearby frequencies (actual or harmonic) may be affected by aircraft HF radio transmissions. Aircraft with one HF antenna shared between two transceivers avoiding HF/HF interference, but those with dual HF antennas (principally military or search and rescue/maritime patrol operations) might. On such aircraft, there is often an interlock to prevent simultaneous transmission from both antennas at the same time.

**20.2.3 Atmospheric conditions**

Beyond LOS communications for HF rely on reflections of the transmission between layers of the ionosphere and the Earth's surface. The exact position (altitude) of the ionosphere layers is a function of the time of day, the time of year, and solar activity. While the effect of the time of day and time of year on HF range performance is rather easy to predict, solar activity can only be precisely detailed a few minutes in advance. Satellites located between the Earth and the Sun measure the solar wind and transmit characteristics to Earth. Nevertheless, as solar activity is rather cyclic in nature, some high-level predictions can be made. The reflectivity of the Earth's surface is also variable according to the type of surface (water, land, vegetation, etc.) and the local weather conditions. It is therefore possible to generate coverage (or "propagation") maps for any given frequency, aircraft position, and time of day. For general purpose HF testing, it should be possible to achieve reasonable results almost any time, but if a specific range performance is targeted or if only a short time window is available for testing, such coverage maps can be a useful tool for optimizing testing.

In case of intense solar activity, it is possible for HF communications to be completely unavailable (so-called "blackout"). Such periods of activity also generate strong auroras and may also impact terrestrial or satellite communications.

![][20006]

**20.2.4 Test technique**

**Range performance**

With the aircraft established at a cruise flight level in clean configuration, calls should be made to close and distant ground stations on a range of frequencies, using both USB and AM modulations. Note the distance from the station and loudness/clearness for transmission (i.e., as heard at the ground station) and reception (i.e., as heard on the aircraft). The system is considered successful if the loudness and clearness have a minimum level of 3. The check should be repeated at low altitude and short distance from a ground station.

**Masking performance**

It is unusual to perform specific masking checks for HF radios.

**Audio and control integration**

The same comments as for VHF testing apply for HF testing.

**Non-interference**

The same comments as for VHF testing apply for HF testing. Bear in mind the increased transmission power of HF radios.

**20.2.5 Safety**

Because the output power of HF radios is considerably higher than other communication means, it is generally recommended to not transmit HF from the aircraft if there are maintenance personnel nearby or if refueling is in progress. Ensure the appropriate authorisations are in place for the planned test frequencies. If an ATC frequency is used for some reason, avoid working heavily-used locations. Do not perform blind transmissions on a frequency without first listening for a while to see if that frequency is being used by other traffic.

**20.2.6 Tips and hints**

HF communications can be heard by numerous aircraft over a wide area. Furthermore, for long-range tests it is common to use commercially available providers (such as Stockholm radio) or even distant ATC centers (Gander or New York for tests in European airspace, for example). Such frequencies are widely used and therefore it is important to use standardized phraseology when performing HF checks on "public" frequencies. Communications should be short, efficient, and spoken clearly, since even on a good day, HF communications are not of a very high quality.

A rule of thumb for finding a good frequency for long-range communications is to consider the position of the sun over the horizon. If it is low in the sky (or at night), testers prefer a low frequency. If it is high in the sky, a high frequency will generally be more successful.

To facilitate operations, and bearing in mind that some parts of the planet are in darkness and others in daylight, the same frequencies are re-used at multiple ground stations. An aircraft performing very long range communications may therefore be in contact with more than one ground station using the same frequency. Therefore, ensure the right ground station is answering! This is a common occurrence in the North Atlantic where in the track system, the frequencies in use move from one side of the ocean to the other according to the time of day and the predominant traffic flows.

On aircraft equipped with flight test instrumentation, aircraft HF transmissions can generate spurious readings on strain gauges located near the antenna. HF testing should therefore be avoided on flights where data from the strain gauges could be critical (e.g. loads monitoring).

**20.3 SATCOM**

This section covers only cockpit-based SATCOM communications systems. It does not address the testing of cabin-based SATCOM communications systems, typically in the Ka or Ku bands, which are usually used for the transmission of large amounts of data at rather high speeds, such as passenger internet access/mobile telephony, or military intelligence applications.

**20.3.1 Technology**

There are two principal satellite communication systems in use on large civil aircraft.

**INMARSAT**

Inmarsat satellites, initially designed with maritime operations in mind, are geostationary satellites orbiting 36000 km above the equator. Different generations of constellation (I2, I3, I4...) have been deployed at different locations. Historically they were evenly spread around the globe (Atlantic-E, Atlantic-W, Indian Ocean, Pacific Ocean) but more recent constellations have been located to provide higher capacity in areas of the Earth with higher traffic density (EMEA or Alphasat for example). The strong limitation of geostationary satellites is the total lack of terrestrial coverage above approximately 82ºN or S, and partial loss of coverage at even lower latitudes at the longitudes where the coverage areas of adjacent satellites overlap. This is because the signal from the satellite tangents the Earth's surface at these locations.

![][20007]

![][20008]

To communicate, the aircraft (Aircraft Earth Station, AES) links to the nearest available satellite. Each satellite links to the ground via dedicated ground stations (Ground Earth Stations, GES, such as Fucino, or Paumalu) within the coverage area of the associated satellite. The call is then routed to the final user using a dedicated ground network.

A typical Inmarsat Satellite Data Unit (SDU) contains 4 simultaneously usable channels (2 for cockpit voice, 1 for cockpit data and 1 for passenger services) and is connected via an amplifier to an antenna located on the upper fuselage. The antenna is usually an electrically steered phase array-type; the steering is required to avoid excessive transmitting power and to correctly receive the relatively weak signal coming from the satellite. The phase array technique allows a flat antenna which does not have a high drag penalty. Transmissions in the L-band occur between 1.5 and 1.6 Ghz for AES to/from satellite (4-6 GHz is used for satellite to/from GES).

Within each satellite coverage area, the transmitted power from the satellite can be modulated across a number of areas known as spot beams, which provide higher capacity in areas where there is more traffic.

**IRIDIUM**

The main benefit of the Iridium constellation is that it provides global coverage. A total of 66 satellites (plus spares) at 780 km are in highly inclined Low Earth Orbits. As well as being linked to users such as aircraft, the satellites are always linked to each other. Communications are routed from aircraft to satellite and between satellites until reaching a satellite which is view of the unique ground station in the USA. The call is then routed to the final user using a dedicated ground network.

An SDU is installed on the aircraft, typically with only two channels for simultaneous use (1 for cockpit voice and 1 for cockpit data) along with a small, non-steerable antenna on the upper fuselage. The aircraft is always in view of at least one satellite as they pass overhead; the Iridium network manages the switching between satellites to ensure seamless communications. As for Inmarsat, capacity is increased via the use of spotbeams, and L-band is used for AES to/from satellite communications.

**20.3.2 Test Objectives**

In addition to the objectives below, functional tests of cockpit data or passenger service applications may be assessed if relevant. Contrary to VHF or HF radios, range is never an issue for SATCOM systems.

**20.3.2.1 Coverage**

**INMARSAT**

There are several aspects to be considered.

1\. For an aircraft in straight & level flight, the elevation of the satellite antenna reduces with geographic latitude until it reaches 0º at 82º N or S. However, the elevation of the satellite antenna can also be reduced during aircraft maneuvers. For example, the elevation of the I4-F2 satellite seen from western Europe is approximately 11º. Therefore, if the aircraft is facing the satellite, the antenna elevation will be zero at an aircraft pitch attitude of 11º. The antenna elevation will also be at 0º if the aircraft is at a bank angle of 11º and the aircraft heading is perpendicular to the azimuth of the satellite antenna. It should be demonstrated that communications are possible whenever the antenna elevation is positive.

2\. Even with positive antenna elevations, masking can occur if a structural element is in the path of the communication beam. For example, in straight & level flight directly away from a satellite, particularly at higher latitudes, the satellite beam may pass through the vertical tailplane.

3\. Although the satellite antenna elevation and azimuth does not change significantly when switching between spotbeams, there is a change of parameters in the system. Testers should verify the seamless nature of a spotbeam handover.

4\. Switching between satellites is less transparent because the antenna elevation and azimuth change at the boundary between satellite coverage areas. The changes may be quite significant, for example at very low latitudes close to the equator, an antenna switching between the I4-Alphasat and I4-Americas satellite will experience an azimuth change of 180º. There is therefore a communication interruption. According to the system definition, it must be verified if communications are re-established and to what extent. Generally speaking, cockpit data services automatically recover whereas cockpit voice and passenger services need to be reconnected.

**Iridium**

As previously discussed, the Iridium system continuously switches between satellites to give the best available connection. As a result, coverage is almost guaranteed and there are no specific cases to be addressed. Transient masking may be experienced but following an interruption to communications, a new non-masked satellite is automatically selected.

**Audio and control integration**

The same comments as for VHF testing apply for SATCOM testing.

**Non-interference**

The principal issue with SATCOM, particularly Inmarsat, is the rather high radiated power. This means that even systems which are not operating on close frequencies (actual or harmonic) may be affected by SATCOM transmissions from the aircraft.

On the other hand, on many civil aircraft, as there is only one SATCOM antenna, there is no issue for interference between SATCOM channels. This may however be an issue on aircraft with more than one SATCOM antenna, operating in the same frequency band.

**20.3.3 Weather conditions**

Generally speaking, satellite communications in the L-band are not significantly affected by different weather conditions. This is not the case for Ka or Ku band signals which are strongly degraded by clouds and/or precipitation between the AES and the satellite.

**20.3.4 Test technique**

**20.3.4.1 Coverage**

**INMARSAT**

Initially, the correct performance of the system is determined by performing a number of air/ground and ground/air communications in straight and level cruise flight. It can also be useful to establish a communication and see if it remains in place during operational aircraft maneuvers. If masking is encountered, show interruptions are justified when considering the antenna position the fuselage, and taking into account the relative positions of the aircraft and the satellite.

To more precisely identify the correct antenna coverage, establish communication and leave it in place. The aircraft performs a series of 360º turns at incrementally increasing bank angles for each turn. It should be demonstrated that no loss in communication occurs at any time during the turns until the bank angle exceeds the satellite elevation expected for the location of the testing. Even above that bank angle, there will be sectors of the turn when the antenna is "facing" the satellite and communications may still be possible, so it is important to complete the 360º turn. There is no specific CS25 / part 25 requirement for a minimum bank angle; rather it should be shown that there is no loss within a normal operational domain (for example, the bank angles achieved during autopilot turns across minor heading changes at high altitude).

To check system behavior at spotbeam or satellite handovers, obtain a detailed coverage map and fly a specific route which crosses the boundaries. In general, switching occurs when the received signal drops below a minimum power threshold rather than at a precise geographic location; it is therefore important to plan a flight route perpendicular to the predicted handover boundary and which extends beyond it for a significant distance.

**Iridium**

Verify acceptable system performance by executing a number of air/ground and ground/air communications in a range of aircraft positions and attitudes. It can also be useful to establish a communication and determine if it remains in place during operational aircraft maneuvers.

**Audio and control integration**

The same comments as for VHF testing apply for SATCOM testing.

**Non-interference**

As the beam for satellite communications is highly directional, interference between the SATCOM and other aircraft systems generally only occurs when the beam directly falls on the antenna or other component of another aircraft system. It is therefore necessary to place the aircraft in a very specific attitude, as a function of the position of the aircraft, the specific location of the system under test, and according to the satellite in use. While in this specific attitude, execute SATCOM communications and note any impact on the system under study. For example, to check for interference of a SATCOM communication on an MMR (or GPS) antenna, with a SATCOM antenna on the upper central fuselage and an MMR antenna on the upper forward fuselage, requires an aircraft flying in western Europe and using the I4-F2 satellite to fly at a pitch of 11º on a heading of 112º.

**20.3.5 Safety**

The output power of SATCOM systems, especially Inmarsat, is considerably higher than other communication means. As a result, it is generally recommended not to perform SATCOM communications if there are maintenance personnel close to the aircraft. SATCOM test flights can be very long with just a few moments of "excitement" at a satellite handover boundary. Crew fatigue and loss of concentration is therefore to be carefully assessed.

**20.3.6 Tips and hints**

Generally speaking, cockpit HMIs do not provide information on which satellite/spotbeam combination is being used, even if for Inmarsat systems it is usually possible to identify the satellite and GES in use. It is also very rare to be able to identify antenna azimuth and elevation in real time. Therefore, when possible, it is strongly recommended to connect a test tool -- which is generally specific to the SDU manufacturer -- which allows to access such information in real time. This allows quick identification of masking or handover issues.

A number of publicly available internet sites allow the quick and easy calculation of expected antenna elevations and azimuths as a function of aircraft position, for example [www.dishpointer.com].

In particular for satellite handovers, the required flight routes can be very long and may well be in oceanic airspace. As a result, it is almost always required to follow a flight plan and therefore rarely possible to repeat the overflight of the handover boundary. It is therefore important to involve all actors to maximize the success of the check (ATC, design office, SDU or other system components suppliers, satellite operator, ground network operator, etc.).

**20.4 Other communication systems**

**20.4.1 SELCAL**

Although often tested in parallel with the radios, strictly speaking, SELCAL (SELective CALling) is a function of the audio management system rather than of the VHF or HF radios. It allows a ground station to generate a buzzer in the cockpit of an aircraft - even when the aircraft is not actively listening to the tuned frequency (HF during oceanic sectors, for example). It relies on both aircraft and ground station being tuned to the same frequency, for the ground station to know in advance the four-letter SELCAL code of the aircraft. The ground station sends an audible signal, made up of a mixture of tones, which corresponds to the SELCAL code of the aircraft. The AMU decodes the signal and sounds the buzzer.

A number of rules govern the list of available SELCAL codes, such that their number is rather limited compared to the number of aircraft flying at any one time. As a result, the same code may be used by several aircraft. If they happen to be in the same geographical region and on the same frequency, there is the potential for more than one aircraft to be contacted at the same time. A simple voice check clarifies the situation.

**20.4.2 TVHF**

Tactical VHF (TVHF) communications, principally for military users, use 30--88 MHz frequencies. Although this is seen as an extension of the VHF range, and therefore used and tested in a similar fashion, the wavelengths of such frequencies are rather long. As a result, antennas which are designed for VHF applications but used for TVHF applications are not well-adapted. Tunable antennas are sometimes implemented to improve performance.

TVHF wavelengths would benefit from increased transmission power, but this is not generally the case. As a result, it can be difficult or even impossible to meet the range performance requirements of VHF radios. Since TVHF is rarely certified for civilian operations under CS25 / Part 25, the qualification requirements discussed with military operators have to be carefully defined to avoid difficult discussions.

**20.4.3 Maritime radio**

Some large aircraft, typically those used for search and rescue or maritime patrol activities, are equipped with maritime radio. The frequency band is 156-174 MHz. The specificity of such radios is that the frequencies are automatically stored under channel numbers. Some channel numbers refer to a pair of frequencies, the so-called "ship" and "shore" roles, which allows full duplex communications. In maritime applications, vessels logically use the ship role and ground stations the shore role. In aeronautical applications, the aircraft needs to be able to perform the ship role (for coordination with a ground station) or the shore role (for communication with a vessel). To further complicate matters, the pre-defined tables of frequencies are different in different geographical locations. Testing, which is done in the same way as standard VHF radios, requires the involved parties to agree on precisely which channel, role and geographical table will be used.

**20.4.4 V/UHF**

V/UHF (Very/Ultra High Frequency) is a further extension of the VHF domain towards higher frequencies, including into the lowest parts of the UHF spectrum, exclusively used by the military in aeronautical applications. The frequencies range from 225- 400 MHz and both AM and FM modulations may be available. Testing is performed in the same way as standard VHF radios.

**20.4.5 ALE**

ALE (Automatic Link Establishment) is an HF-radio technology that alleviates the need for the crew to manually tune the HF-radio at different frequencies to reach a given ground station. Instead, a "network" of frequencies is shared by the aircraft and the ground station, and the HF radio equipment in both aircraft and ground station automatically identify the best frequency as function of range, aircraft positon, atmospheric conditions, etc. The selection of the frequency and its continuous update all along the transmissions is completely transparent to the crew.

**20.4.6 Encryption technologies**

Whatever the frequency band, it is possible to use different encryption techniques to secure communications. In principle these techniques do not have any impact on the range or masking performance of the communication means, but audio and control integration must be carefully tested to ensure the correct encryption and decryption. There are two principal methods of encryption:

\- COMSEC (communications security): the signal is modified in such a way that a listener not equipped with encryption key cannot understand the content of the message. The same encryption key must be used by both aircraft and ground station to encrypt the message before transmission and to decrypt it upon reception.

\- TRANSEC (transmission security), for example HAVEQUICK or SATURN. The most commonly used technology is frequency hopping: the radios automatically cycle through a set of different frequencies according to an order and time schedule which is defined in an encryption key which must be loaded in both aircraft and ground station.

It is possible to combine both methods of encryption.

  [20001]: media/20/image1.png {width="2.078472222222222in" height="1.2868055555555555in"}
  [20002]: media/20/image2.png {width="2.25in" height="1.3640627734033246in"}
  [20003]: media/20/image3.png {width="3.5625in" height="1.6493055555555556in"}
  [20004]: media/20/image4.png {width="3.2291666666666665in" height="1.7609962817147857in"}
  [20005]: media/20/image5.png {width="4.11in" height="2.41in"}
  [20006]: media/20/image6.png {width="3.7924529746281714in" height="3.8374376640419947in"}
  [20007]: media/20/image7.jpeg {width="3.4245286526684167in" height="2.5394094488188976in"}
  [20008]: media/20/image8.png {width="2.9618055555555554in" height="1.5756944444444445in"}
  [www.dishpointer.com]: http://www.dishpointer.com

<!--chapter:end:20-communications-systems.Rmd-->

# 21. Real-Time Data Display Guidelines**

***[Author]{.underline}:***

***Mark Updegrove***

***(email: mark.updegrove\@outlook.com)***

***[Contributing Editors]{.underline}:***

***Mark Mondt, Steve Carothers, Brian Maisler, Bill Kuhlemeier, Nathan Cook,***

***Amit Alex, Libin Daniel, Ben Povall, Hunter Bloch, Andre Celere***

This section provides "best practice guidelines" for building real-time flight test monitoring displays. The goal of a well-designed display is to present information, not merely data, to the user. These guidelines are applicable for both on-aircraft and telemetry-based control room displays. While the guidelines are aimed primarily at the FTE/Test Conductor/Test Director role, the principles are applicable to any engineering displays that support the real-time flight test mission.

**[Display Guidelines]{.underline}**

1.  **General** -- No set of guidelines can cover all potential situations. In cases where a conflict between specific items arises, judgment is required as to how to honor the overall intent of the guidelines while still accomplishing the intended mission.

    a.  Criticality and Application

        i.  The level of diligence put into building the display should be commensurate with the criticality of the display.

        ii. The intended users of these guidelines are those FTEs who, either on the aircraft or in the control room, make real-time decisions that affect the safety of the crew and the integrity of the aircraft.

        iii. Displays which are safety critical should be identified as such, versus displays which provide situational awareness information only.

        iv. As the criticality of a display increases, more care should be taken to ensure the display conveys critical information, without being cluttered by non-critical data.

        v.  To the greatest extent practical, displays should tightly follow a common design philosophy across the individual test assets within a program, as well as across various platform types within an organization.

    b.  Organization -- Roles and Responsibilities of Users

        i.  The primary responsibility of the overall display layout and functional design should be placed on an experienced FTE.

        ii. The cognizant FTE should have a robust knowledge of the aircraft/systems under test, the types of testing to be performed, and the manner in which the FTEs will conduct the test and make decisions.

        iii. The cognizant FTE should ensure that displays are designed in order to allow data quality and basic pass/fail criteria to be easily assessed during test conduct.

        iv. In no circumstance should the creation of data displays be blindly delegated to the least experienced person on the team, without direct guidance and oversight from a more senior FTE.

2.  **Visual Elements** -- Visual elements are the interface layer at which the FTE integrates operationally with the aircraft. This is perhaps the area that has the largest immediate impact on any FTE's ability to act efficiently and safely during a test. Consequently, careful thought should be given to visual element design when building displays.

    c.  Human Factors^2,3,4,7^

        i.  Design displays to deliver data in a manner that accommodates the basic human factors strengths/weaknesses of the users.

        ii. Follow the basic human factors design philosophies of cockpit displays, adding information as required to enable the FTE to perform their function.

        iii. Avoid cluttered displays by utilizing negative (empty space) to allow spatial differentiation of data.

        iv. Data displays should not have more than \~60% of the overall display space occupied with visual elements (ie; at least 40% empty space).

        v.  The display should utilize color, contrast, and a thoughtful layout to maximize legibility and reduce clutter.

    d.  Contrast

        vi. Contrast is the primary visual cue for users to efficiently locate information on a display^7^. Use contrast appropriately.

        vii. Contrast is used primarily to manage the user's attention, and increase legibility of elements on a display^7^.

        viii. Contrast can also be a useful tool to provide non-distracting contextual cues to data (ie; background lines, grouping boxes, etc).

        ix. In general, the most critical and useful elements on a display should have the highest contrast against the background (color usage as status information is addressed separately, below).

        x.  ![][21001]Less important or less useful elements should have less contrast, allowing them to be easily ignored when the FTE's brain is highly saturated with critical tasks. See Fig 1 below.

    e.  Color

        xi. Color is a secondary visual cue which allows users to more efficiently sort and interpret information on a display^6^.

        xii. Color should not be the only discriminator used, especially for critical data. **NOTE:** See Appendix A, or MIL-STD-1472^3^ for specific guidance on color usage for color vision deficient users.

        xiii. Color can provide information that can quickly give the FTE insight as to the purpose of the data, as well as its health, status, proximity to a limit, etc.

        xiv. Each screen element should have a meaningful color that represents the type of information it is displaying. The following is suggested^8^:

  Element               IADS           Hex            RGB
  --------------------- -------------- -------------- -----------------
  Display Background    **0x000000**   **\#000000**   **0,0,0**
  Data Label/Text       **0xF7B634**   **\#34B6F7**   **52,182,247**
  Data w/no Limits      **0xE0E0E0**   **\#E0E0E0**   **224,224,224**
  Data with Limits:\*                                 
  Nominal               **0x00C000**   **\#00C000**   **0,192,0**
  Caution               **0x00F0FF**   **\#FFF000**   **255,240,0**
  Warning               **0x0000FF**   **\#FF0000**   **255,0,0**

> \***NOTE**: Limits should not be assigned arbitrarily. If no engineering guidance and/or substantiation exists for assigning a meaningful limit, the data should be displayed as Data w/no Limits.

xv. Each representative color should be specifically defined for easy reproduction and consistency.

xvi. In general, avoid superfluous or excessive use of color on a display.

> **NOTE:** Random and/or excessive use of a color reduces the perception of the color as a "novelty", which dilutes its utility as a visual cue. This is especially important for colors that are used for alerting in emergency situations (ie; red).

xvii. A typical display should not contain more than 4 or 5 distinct colors^1^.

> **NOTE:** "Distinct colors" are those colors which are used for the purpose of information discrimination, aside from the base background and data colors (ie; black and white).

xviii.  Caution and Warning -- An automated alerting/messaging system can greatly aid the FTE in passive monitoring tasks during testing. Depending on software capabilities, the user may implement a variable color status on either the message text itself, or the message background. The following colors are suggested for the associated status levels:

  Element       IADS           Hex            RGB
  ------------- -------------- -------------- ---------------
  Advisory^†^   **0xFFFF00**   **\#00FFFF**   **0,255,255**
  Caution       **0x00F0FF**   **\#FFF000**   **255,240,0**
  Warning       **0x0000FF**   **\#FF0000**   **255,0,0**

> *^†^See Section 2.g for suggested definitions for Advisory/Caution/Warning*

xix. Color fidelity, contrast, and luminance will all be impacted by the type of monitor hardware used (LED vs LCD), hardware settings, ambient lighting conditions, screen reflectivity, etc. Make sure to evaluate the suitability of the color schemes and general display design on ALL monitors which will be used during real-time flight tests. Make changes as required to accommodate insufficiencies.

xx. If software limitations only allow the use of a single font color against a variable color background, the following is suggested as a compromise to attempt to optimize text legibility against all the various status background colors:

  Element        IADS           Hex            RGB
  -------------- -------------- -------------- -----------------
  Message Text   **0x80808**    **\#808080**   **128,128,128**
  Advisory       **0xFFFF00**   **\#00FFFF**   **0,255,255**
  Caution        **0x00F0FF**   **\#FFF000**   **255,240,0**
  Warning        **0x0000FF**   **\#FF0000**   **255,0,0**

f.  Text

    xxi. Where it is selectable by the user, font should be a sans-serif font. Trebuchet MS regular (not bold), is a suitable choice if available.

    xxii. Standard font size should generally be 12pt, with a minimum of 10pt (may vary depending on size and resolution of monitor).

    xxiii.  Modifications such as bold, underline, etc., should generally be avoided. May be used sparingly when necessary to support legibility, convey separation of purpose (group of data versus individual labels), etc.

    xxiv. Acronyms, abbreviations, button labels, annunciators, etc. should always be set in ALL CAPS.

    xxv. Regular type case should be used for dialog, "lengthy" text, descriptive text, etc.

g.  Graphics -- It may be helpful to display some data graphically in order to give the user at-a-glance spatial reference for the current value of the parameter, along with trend information.

    xxvi. Consider graphics (analog indicators - gauges, tapes, needles, etc) for use in identifying trends and relative status within a range.

    xxvii.  Consider numerical values for use in hard data, targeting a specific value, etc.

    xxviii.   Graphics should always include a numerical value that is adjacent to the tape, preferably in a box and located at the origin, as practical^2^.

> **NOTE:** Thoughtful combination of numerals and graphics can make for a very scan-friendly layout, which can be "flown to", and used for both low resolution and high resolution monitoring simultaneously.

xxix. The variety of different styles of graphics used on a display should be kept to a minimum, with each different application of a specific style (bar, slider, dial, etc) kept consistent for its purpose, and presenting the information in a manner that is visually compelling in the most appropriate sense for the data that is being presented.

xxx. Numerical values and their respective boxes should generally be stationary.

xxxi. For graphics that display basic quantities or relatively steady values, bar graphs/tapes should be the default as reasonable and appropriate.

> ![][21002]See Fig 2 below.

xxxii.  For graphical displays of physical positions of components (ie; flight control surfaces), sliders with pointers may be preferred.

xxxiii.   In some cases, such as N1 and EGT, dials may be preferred, especially if this reflects similar implementation to the cockpit displays.

xxxiv.  Time history charts (strip charts) can be very useful for monitoring behavior over time, spotting trends or oscillations, and monitoring proximity to limits.

> **NOTE:** One very useful benefit of a time history chart is the ready ability for the FTE to visually identify an increasing trend toward a safety limit, thus allowing for proactive abort calls.

xxxv. Time history charts (strip charts) may also provide the ability for real time basic analysis functions (slope calculations, fast fourier transforms, etc). The availability of these features will be software dependent.

    **NOTE:** Excessive use of strip charts on a display may impact computer processing performance.

xxxvi.  Minimize the use of tickmarks and gridlines to avoid overpowering the data (also ref section 2.b,c -- color and contrast).

xxxvii.   Create graphics that are only as complex as necessary, and are as simple as practical.

xxxviii.    For any graphics that change to show a component status or state (ie; open/closed), ensure that the transition or invalid signal state is also clearly conveyed.

xxxix.  Consider the use of a "synoptic" style display for intuitive display of a system, versus a graphical reproduction of the actual physical layout. (Placement of components relative to system operation, versus actual installation -- Ref Fig 3, next page).

xl. ![][21003]Take care to create graphics which do not falsely lead the user to assume things about the system state which are not true, or are not actually being measured.

> ![][21004]For graphics where verification of a response to a command is critical, consider showing the command value with a hollow or shadowed indicator, and the actual value with a solid or filled indicator. See Fig 4 below.

h.  Sense and Direction -- When utilizing graphics, care should be taken to ensure that the indications on the display are intuitive and non-distracting.

    xli. Tapes or bar graphs utilized on the periphery of an attitude indicator should be evaluated to ensure there is no situation where the movement of the tapes could induce a false perception of attitude changes.

    xlii. Moving graphics should be carefully constructed to convey a correct intuitive sense of movement that correlates with the reality it is representing.

    xliii.  Increasing values should typically move: clockwise (dial), up (tape/bar graph), or right (slider/gauge)^2^.

    xliv. When using moveable graphics, consider which elements remain fixed, and which will move. Consider the impact on the users' ability to scan the display, and quickly read and understand the data.

    xlv. In general, look for any susceptibility to misinterpretation or confusion due to the presentation method.

i.  Alerting features -- Consider the implementation of any available alerting features in order to increase the test team's ability to perform safely and efficiently. IADS©, in particular, has multiple alerting tools which can greatly increase the user's situational awareness, while allowing their attention to remain focused on more real-time critical functions.

    xlvi. The following terminology for criticality levels is suggested (*See Sec 2.c for associated color guidelines*):

> [Advisory]{.underline} -- Condition which represents a non-critical degradation of functionality, loss of redundancy, etc. No immediate action is required, but some minor actions may be required to continue nominal operations. No damage to aircraft or injury to personnel is expected.
>
> [Caution]{.underline} -- Condition which represents a potentially critical degradation of functionality, failure of systems, unsustainable modes of operation, etc. Immediate action may not be required, but if no action is taken, damage to aircraft or injury to personnel may be possible.
>
> [Warning]{.underline} -- Condition which represents a critical degradation of critical functionality, total system failure, etc. Immediate action is required in order to avoid damage to aircraft and/or injury to personnel.

xlvii.  Ensure that alerting functions are robust, reliable, easily recognizable, and allow the user to quickly diagnose any emerging situation.

xlviii.   Carefully consider what items will be subject to automated alerting, and why.

xlix. Alerting functions should enhance the FTE's ability to focus on the important elements of a test, without being distracted by more mundane monitoring tasks.

l.  Safety of a test can also be enhanced, particularly if the limiting criteria for a complex or dynamic test are multi-dimensional or difficult to interpret in real time.

li. Ensure that any alerting features are readily understood by any and all users of the system, and that each user can verify the status of the system prior to use.

lii. Any alerting system should have configuration control and version monitoring which can be verified by the user prior to use.

liii. Each user should understand the automated alerting logic used in the display.

liv. Ensure that alerting functions do not produce nuisance or spurious alerts (e.g., persistent flashing, blinking, etc.).

<!-- -->

j.  Limits on ability to absorb info

    lv. Update rates for data displays should generally be no higher than 8-10hz.

    lvi. For general numerical data, consider filtering the data down to 2-4hz to minimize flickering or dithering.

    lvii. Graphical elements (gauges, tapes, etc.), should be filtered to the lowest usable level to minimize flickering or dithering.

        **NOTE:** When filtering data to avoid flickering, ensure that the data can be still be verified as "alive" at a glance, and is not slowed to the point of being misleading or lagging.

    lviii.  The level of significant digits shown should be the lowest that adequately displays the data for the intended purpose^5^.

    lix. A single FTE should not have more than 4 critical parameters to monitor at a given point in time.

> **NOTE:** The above statement is in reference to parameters where the FTE must dedicate cognitive function to actively monitoring critical data. This does not include automated monitoring and alerting functions performed by the computer, in cases where an alert will be automatically posted in clear view of the FTE.

k.  Use of control elements -- As the computing packages grow in complexity, they introduce the ability to create control elements on the displays. This gives the users the ability to interact with the displays to give numerical inputs to the system, make various selections on the screen, enable functions, etc.

    lx. Care should be taken when implementing control functions to ensure that the type of control is appropriate for the use.

    lxi. Users should be able to assess the position/status of any control element by simple visual inspection.

    lxii. Consider any nuances that can affect interactions with the controls (e.g., system lag when selecting a virtual button, switch, etc.).

    lxiii.  When placing control elements on a display, carefully consider if the implementation is appropriate for how the user expects to interact with the computer, given the available equipment and operating environment.

    lxiv. The user must be capable of effectively managing any inputs to the displays under any expected flight conditions, if used on board the aircraft.

    lxv. For control room only displays, ensure that the users are not given so many inputs or required interactions as to be easily saturated or distracted.

    lxvi. Utilize visual cues to give the user feedback as to the pressed status of a button (eg; text on the button changes content or color while "pressed").

    lxvii.  Standardize the appearance of control elements across various displays. Square buttons are easily recognizable as buttons. They also allow for efficient placement and organization on a display.

    lxviii.   Button/annunciator labels should either be verbs (commanded action), or status (commanded or present status).

    lxix. Standardize the philosophy used for button/annunciator labels (e.g., normally dark, constant status indication, etc.). If the aircraft platform or the experimental equipment under test has a standard philosophy established, attempt to follow it.

    lxx. For controls that are turning a function "on" or "off", toggle switches of some manner are preferable to buttons, as the spatial element of the switch position is more compelling than the status cues of a button.

    lxxi. Standardize the philosophy used for switch positions (e.g., up for ON, down for OFF, normal position at 12 o'clock, etc.). If the aircraft platform or the experimental equipment under test has a standard philosophy established, attempt to follow it.

    lxxii.  For controls that have more than two selections available (where only one item is selectable at a time) consider a virtual dial, radio buttons, or a drop-down menu in order to give the user visibility on both the current selection, and all available selections.

    lxxiii.   Drop-down menus and lists should be sorted alphanumerically.

    lxxiv.  For user-input fields, the tab key should shift the focus from left to right and then top to bottom. Using shift-tab should move the focus in the reverse order.

<!-- -->

3.  **Parameter Selection** -- Many parameters are repeated across an aircraft platform for the purposes of redundancy or multiple sample points, especially in the case of FBW or highly integrated aircraft, with information being reproduced multiple times across redundant buses and passing data between consumers. Unless specific system operation or data view needs preclude it, the following basic standards should be considered when choosing which parameters to utilize in data displays:

    l.  Selection for Technical Purposes

        lxxv. Select the most representative parameter that gives the most appropriate and trustworthy information available, given the nature of the data monitoring requirement (basic situational awareness vs system integrity monitoring, etc.).

        lxxvi.  Multi-Channel -- When LRU's utilize multiple redundant channels, and only one value is required to be displayed to represent the data, select the parameter from the primary channel, or the channel with the highest integrity.

        lxxvii.   If multiple channels from a given LRU are simply redundant and no hierarchy or difference in integrity exists, select parameter from the first (1, or A) channel.

        lxxviii.    Source Proximity -- Selection of a parameter for display should be as close to its source as practical, relative to the data stream, and not from downstream consumers of the data.

        lxxix.  Multiple Sample Points -- In cases where there are multiple independent and redundant sample points available where only one value is required to represent the overall data, as in multiple slat/flap sensors across the physical surface, select the inboard sensor in cases where there exist only two sensors, and select the mid-most sensor in cases where more than two are installed on the surface.

            **NOTE:** Be aware of any requirements to monitor disagreements between the multiple sensors in such cases, and be aware of the increasing complexity of logic in order to implement comparators across sensors, etc.

    m.  Selection for Safety/Critical Monitoring Purposes

        lxxx. For any monitoring which may have a safety implication, the specific parameters selected for display must be deemed robust and reliable. Consideration must also be given to the accuracy and "honesty" of the data source. Consider any filtering, interpolation, calculations, etc., that are involved in the data source.

        lxxxi.  Consider assigning parameters to criticality categories, based on the flight scenarios which they are deemed required to support. For example:

            1.  Safety Critical

            2.  Test Critical

            3.  Required for Analysis

        lxxxii.   Any parameters which are required for safety monitoring should be clearly labeled as such.

        lxxxiii.    Ensure a process or mechanism is in place to ensure the health and availability of any parameters which are utilized in safety/critical monitoring functions.

4.  **Configuration Management**

    n.  Versioning:

        lxxxiv.   Displays should have some mechanism to allow for version tracking.

> **NOTE:** Version tracking and configuration control methods may be highly influenced by an individual flight test organization's IT and data management methods. Seek out cooperation from these groups to ensure successful processes are created.

lxxxv.  Each user should have immediate access to verify current version of the display(s) at the start of each test session.

lxxxvi.   Consider incorporating display/configuration revision information into the test card for each day.

lxxxvii.    Especially for safety or test critical displays, a version history of each display should be easily accessible.

<!-- -->

o.  Validation / checkout process

    lxxxviii.     Ensure multiple FTE's provide input and feedback during the display design, build, and validation process.

    lxxxix.   Once built, each display should be validated using previously existing data, if available.

    xc. Displays which are used for safety or test critical monitoring should be validated thoroughly prior to use.

    xci. Consider off-nominal usage cases, and/or display behavior when aircraft is far off the conditions for which the display is intended.

    xcii. Test results of critical displays should be documented for later reference.

<!-- -->

5.  **Documentation and Training**

    p.  Documentation

        xciii.  Each flight test organization should implement its own set of display standards, based on the above, but containing more specifics where required.

        xciv. Each flight test organization should implement its own set of documents and reference material to outline processes for handling safety critical parameter creation, display creation, display validation, etc.

    q.  Training

        xcv. Displays which contain "complicated" calculations or particular interface actions should have some form of user's guide to describe the functionality and data sources.

        xcvi. Each user should be well versed on the data displays prior to their use during actual testing.

        xcvii.  When possible, displays should be exercised during simulations prior to use in actual testing.

        xcviii.   Each flight test organization should ensure that any FTE building data displays is provided adequate training on the appropriate software/hardware.

6.  **Further Reading/References**

    1.  Neil, Douglas E; Application of Color Coding in Tactical Display S-3A, NPS-55-80-113, Naval Postgraduate School, 1980

    2.  M. Yeh, J. Young, C. Donovan, S. Gabree; Human Factors Considerations in the Design and Evaluation of Flight Deck Displays and Controls, DOT-VNTSC-FAA-13-09, Volpe Nat'l Transportation Systems Ctr/Federal Aviation Administration, 2013

    3.  Dept of Defense Design Criteria Standard -- Human Engineering, MIL-STD-1472G, Dept of Defense, 2012

    4.  Dept of Defense Joint Service Specification Guide -- Air Vehicle, JSSG-2001A, Dept of Defense, 2002

    5.  T. Holden, J. Adolf, Human Research Facility (HRF) Human-Computer Interface (HCI) Design Guide, LS-71130, NASA JSC, 1997

    6.  Bemis, Winer, Leeds, The Efficacy of Color-Coded Symbols to Enhance Air-Traffic Control Displays, TR-1244, Naval Ocean Systems Center, 1988

    7.  "Using Color in Information Display Graphics", Color Usage Lab, NASA Ames Research Center, <https://colorusage.arc.nasa.gov>

    8.  M. Updegrove, J. Maxwell, The Evolution of Real-Time Data Monitoring Requirements, Society of Flight Test Engineers, 2017

7.  **Examples**

> ![][21005][Example 1]{.underline}: Basic FTE Situational Awareness display.
>
> Display includes basic flight information, engine stack, flight control synoptic, fuel and water ballast quantities.
>
> The majority of the data on this display is for FTE awareness only, and is available to the pilots as a primary source in the cockpit. As such, most of the data is displayed as unlimited (Data w/no Limits), and is "white" per the color standards of Section 2.
>
> ![][21006][Example 2 (right)]{.underline}: FTE Pre-Flight setup screen.
>
> This is an example of a display created to make the FTE's job of entering pre-flight aircraft weight/balance constants more efficient. Additionally, many other user configurable items can be set from this central location. Note the use of buttons and toggle switches.

![][21007]

[Example 3 (left)]{.underline}: FTE Safety Monitoring display.

> This display is intended for more passive monitoring, including automated alerting of safety critical parameters (windows in top half of display).
>
> Automated functions will alert the FTE if certain parameters exceed their given limits, and further information regarding the issue is available in tabs on the lower portion of the display. During normal operations, the Wt/CG envelope is available for display in the tabbed area.
>
> Note the banners on the top and bottom of the display, denoting it as "SOF CONTROLLED".
>
> ![][21008][Example 4]{.underline}: Displays from examples 1-3 combined into a modular display package, where each screen is interchangeable, and located on the monitor in a 1/3 slot according to its overall intended function.
>
> ![][21009][Example 5]{.underline}: Automated alerting window (bottom) with associated verification information from the day's test card (top). Any automated alerting scheme should be verifiable by the user at the beginning of each test operation (see Sec 2.g and 4.a).
>
> [Example 6]{.underline}: Cockpit Flight Test display.
>
> Note the relative lack of status colors. The majority of the information here is provided to the pilot for quick reference, verification of maneuvering limits, and flight data which is not standard in production cockpit displays. Tapes are provided for Nz and dV/dT, and a dial is provided for Angle of Attack (the AOA). For the program in question, AOA was generally the critical parameter to monitor, thus having the most prominence in the center of the display, providing excellent visual trend data.
>
> ![][21010]Also note that the numerical read-outs for the basic flight data are arranged in a relatively straight line across the display, above the tapes and gauges, in order to allow for an efficient scan of the values if desired.
>
> **[Appendix A. -- Design Considerations for Color Vision Deficient Users]{.underline}**
>
> While pilots have requirements for normal color vision, no such requirement exists for the engineering personnel which typically make up the FTE population. As such, some flight test organizations may have FTEs that have some level of color vision deficiency (CVD). Per 14 CFR Part 67.303, the color vision requirement for airmen is "the ability to perceive those colors necessary for the safe performance of airman duties". While FTEs do not technically fall under this definition, many FTEs perform "airman duties", where their data monitoring tasks are critical to the safe execution of a particular test in flight, or to the safe operation of the test aircraft itself. This is true whether the FTE is on board the aircraft or in a ground-based station.
>
> Since engineers have control over the construct of their own data displays, total reliance on color as a safety discriminator is easily avoided, thus allowing the safe execution of airman duties, without normal color vision. It is important to understand the design considerations which may impact the interpretation of visual information when CVD is a factor. This appendix highlights some design considerations, along with other organizational considerations which are available to mitigate inadvertent safety impacts due to misinterpretation of color coded safety-critical data.
>
> The most common CVD condition makes it difficult to discern red and green^1^. This is particularly problematic for aerospace applications, since these colors are almost universally used for representing opposing statuses: green=good, red=bad. This is perhaps the most important area where CVD accommodations should be considered.
>
> From the Display Guidelines, section 2.c. -- Color:

i.  Color is a secondary visual cue...

ii. Color should not be the only discriminator used, [especially for critical data]{.underline}.

    An especially problematic situation for CVD FTEs is when the standard green/yellow/red color scheme is used to color text or numerals against a black background. This should be avoided.

    Per the guidelines above, this colored data would always be accompanied by some other discriminator. However, the benefit of this secondary cue may be effectively nullified for the CVD FTE if not implemented correctly.

    See below for an example of how this coloring might appear to a red-green CVD user^2^:

  Normal        CVD
  ------------- -------------
  **NOMINAL**   **NOMINAL**
  **CAUTION**   **CAUTION**
  **WARNING**   **WARNING**

This method of presentation is clearly not acceptable for the CVD user, as the NOMINAL and WARNING statuses are not discernable relative to each other, and CAUTION would not be easily discernable from standard "unlimited" data (i.e.; white).

Consider other methods to provide status discrimination. Whatever other methods are used, ensure they do not compromise other standards used in the display(s) to the most practical extent, and do not provide distracting indications. The following pages provide several options.

1.  **Design Considerations:**

<!-- -->

a.  Utilize other/additional coloring methods to distinguish parameter status, such as background fill, a colored surrounding box, etc.

    a.  NOTE: if using background fill, ensure fill is not distracting, and that contrast of the text/numerals remains sufficient against the fill in all cases.

b.  Provide some manner of icon adjoining the text to indicate status.

    b.  NOTE: This option should be utilized only for data which is being actively monitored during a test, and/or in conjunction with an automated alerting scheme.

c.  Do not color the text/digits at all:

    c.  Color the data as "unlimited" (See Guidelines, Section 2.c.iv), and handle status annunciation separately.

    d.  Leverage automated alerting for limit exceedances. Alert the user to the exceedance with the associated status word (e.g.; "WARNING" -- with appropriate color as well), and indicate by other means which parameter has tripped the limit. This could be descriptive text, a shorthand parameter name with the annunciation, an icon adjacent to the numerical data, etc.

d.  Provide visual indication of proximity to the limit:

    e.  Limit line(s) on strip chart or tape.

    f.  Needle(s) or shape(s) on dial.

    g.  Along with a. and b., provide an additional visual cue when past the limit (see sub-bullets above).

e.  Consider different methods of communicating "nominal":

    h.  Excessive use of color to denote nominal dilutes the meaning and in the extreme can "clutter" a display.

    i.  Consider the "normally dark" philosophy. Only give status alerts when parameters are off-nominal (see sub-bullets above).

f.  If none of the above options are sufficient or practical, consider shifting the color definitions slightly per MIL-STD-1472, in order to aid in the differentiation between red and green^3^:

  Color    IADS           Hex            RGB
  -------- -------------- -------------- ----------------
  Blue     **0xFF4010**   **\#1040FF**   **16,64,255**
  Green    **0x82C011**   **\#11C082**   **17,192,130**
  Yellow   **0x00FFFF**   **\#FFFF00**   **255,255,0**
  Red      **0x1E41FF**   **\#FF411E**   **255,65,30**

2.  **Organizational Considerations:**

<!-- -->

a.  While it is obviously important to respect the rights and privacy of all personnel in any organization, it is important to be aware of any CVD users that are present in an organization, so that data displays are not inadvertently designed in such a manner that would preclude their safe use by the CVD FTE.

b.  If CVD users are a known part of the organization's FTE population, proactively design the display to incorporate CVD accommodations, while soliciting input from the affected individual(s) during the design process in order to ensure suitability prior to fielding the display.

c.  If experimental data displays are being heavily relied upon for safety critical monitoring, and the use of color to ensure safety is presenting obstacles, take the opportunity to reconsider the test team's approach to carrying out the test. Is the monitoring scheme appropriate? Is the system under test overly immature? Is the THA written appropriately? Consider automation, CRM aspects, and other mitigations to reduce monitoring requirements in an effort to reduce the reliance on critical display monitoring.

d.  Consider individual FTE qualifications. If, after taking all of the above considerations into account, the ability to normally discriminate color remains an integral part of safely executing certain tests, then those tests may require normal color vision as part of the qualification for FTEs executing the test.

    **NOTE:** Given the myriad of available options for FTEs to design their own displays in any appropriate manner, this option should be considered in extremis.

<!-- -->

3.  **References:**

<!-- -->

|||
|-|---------------|
|1. | "Color Vision Deficiency", Glossary of Common Eye & Vision Conditions, American Optometric Association, <https://www.aoa.org/patients-and-public/eye-and-vision-problems/glossary-of-eye-and-vision-conditions/color-deficiency>|
|2. | C. Ludwig, Display Design for Critical Monitoring, Society of Flight Test Engineers|
|3. | Dept of Defense Design Criteria Standard -- Human Engineering, MIL-STD-1472G, Dept of Defense, 2012|

  [21001]: media/21/image1.png {width="4.370138888888889in" height="2.7909722222222224in"}
  [21002]: media/21/image2.png {width="4.6097222222222225in" height="1.8888888888888888in"}
  [21003]: media/21/image3.png {width="4.741666666666666in" height="3.455945975503062in"}
  [21004]: media/21/image4.png {width="4.089583333333334in" height="1.979861111111111in"}
  [21005]: media/21/image8.png {width="3.2729166666666667in" height="5.123611111111111in"}
  [21006]: media/21/image8.png {width="2.9340277777777777in" height="4.65in"}
  [21007]: media/21/image8.png {width="3.261603237095363in" height="5.158333333333333in"}
  [21008]: media/21/image8.png {width="6.470833333333333in" height="3.6479166666666667in"}
  [21009]: media/21/image9.png {width="5.249305555555556in" height="2.680609142607174in"}
  [21010]: media/21/image13.png {width="4.004861111111111in" height="5.342361111111111in"}

<!--chapter:end:21-display-guidelines.Rmd-->
