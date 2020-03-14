**Section 3 Universe/Earth/Atmospheric**

**Properties**

3.1 Universal Constants

Newtonian Gravity

3.2 Earth Properties

Centrifugal relief from gravity

Altitude effect on gravitational acceleration

Actual gravitational pull on an aircraft

Gravity influence on cruise performance

3.3 General Properties of Air

Composition of air

Viscosities of Air

Psychrometric Chart

 

3.4 Standard Atmosphere

Divisions of the Atmosphere

Altitude Definitions

Atmosphere Assumptions

Standard Day Sea Level Conditions

1976 Standard Atmosphere Equations

Standard Atmosphere Graph & Tables

 

> 3.5 Sea States

 

> 3.6 Sunrise and Sunset Times
>
>  
>
> 3.7 Crosswind Components
>
>  
>
> 3.8 Geodetic Measurements
>
>  
>
> 3.9 References

 

**\
**

**Section 3 Recurring Nomenclature**

** **

***H~p\ ~* =** pressure altitude. The pressure associate with geopotential altitude on a standard day.

*T* = absolute temperature (Rankin or Kelvin)

*T~R~* = absolute temperature, Rankin scale

*T~o~* = standard day seal level absolute temperature

*P* = ambient pressure

*P~o~*= standard day seal level ambient pressure

*ρ* = ambient density

*ρ* *~ο~*= standard day seal level ambient density

δ = P/P~o~ = atmospheric pressure/std day sea level pressure

θ = T/T~o~ = atmospheric absolute temp / std day sea level absolute temp

σ = *ρ* /*ρ* *~ο ~*= atmospheric density/std day sea level density

g = acceleration due to gravity

g~o~ = standard earth acceleration due to gravity

*a~o~* = speed of sound at std day sea level temperature

 

**\
**

**Section 3.1 Universal Constants** (reference 3.1)

 

Avogadros number, *N~o~* 6.022169 x 10^23^ molecules/mole

Boltzmann constant, *k* 1.380 x 10^-23^ J/K

electron charge, *e* 1,602 x 10^-19^ coulomb

electron mass, *m~e~* 9.109 x 10^-31^ kg

gas constant, *R* 8.31434 J/K mole

gravitational constant, *G* 6.673 x 10^-11^ Nm^2^/kg^2^

neutron mass, *m~n~* 1.674 x 10^-27^ kg

Planck constant, *h* 6.625 x 10^-34^ J sec

proton mass, *m~p~* 1.672 x 10^-27^ kg

speed of light in a vacuum, *c* 2.998 x 10^8^ m/sec

unified atomic mass constant, *m~u~* 1.660 x 10^-27^ kg

volume of ideal gas (std temp & press) 2.241 x 10 m^3^/mol

 

**Newtonian Gravity**

The gravitaional field (*g*) near any mass can be calculated as

 ![][1]

 

 

 

where *G* is the universal gravitational constant and *R~A~* is the absolute distance from the center of mass M

 

**\
**

**Section 3.2 Earth Properties (references 3.9.2, 3.9.3 )**

 

Std Earth gravitational acceleration, g~o~ = 9.8066 *m/s^2^* = 32.174 *ft/s^2^*

mass = 5.9722 × 10^24^ *kg* = 13.22 x 10^24^ *lb*

rotation rate, ω = 7.292115 × 10^−5^ *rad/sec*

average density = 5.522 *g/cm^3^* = 344.7 *lb/ft^3^*

radius average, *R~avg~* = 6,367,444 *m* = 3956.538 *st. miles* = 20,890,522 *ft*

radius at the equator (*R~e~*) is 6,378,137 *m* (±2)

radius at the poles *R~p~* = 6,356,752 \[*m*\]

radius as a function of latitude, φ (assumes perfect ellipsoid):

 

** **

** **

** **

**Centrifugal Relief from Gravity**

The earth\'s \"normal\" gravity field includes both the Newtonian Law and a correction for the centrifugal force caused by the earth\'s rotation. The centrifugal relief correction is

 

 ![][2]

 

 

where ω is the earth's rotation rate and *R~x~* is the perpendicular distance from the earth\'s axis to the surface and can be calculated as *R~x~* =*R* cos φ (see figure below).

 

![][3] 

 

 ![][4]For any centrifugal relief calculations associated with aircraft performance, it is sufficiently exact (g ±0.00004 *m*/*s*^2^) to use the average earth radius. An aircraft flying eastward contributes to centrifugal relief while a westbound aircraft diminishes it.

 **\
**

![][5]The International Association of Geodesy publishes the following equation (accurate to 0.005%) to calculate *local sea level gravity including the effects of centrifugal relief for* *any point fixed to the earth\'s surface*

  

The above equation is tabulated below for quick reference.

  

  ---------------------------------------------------------
  **Latitude\   **Normal *g~local~***   
  (deg)**                               
  ------------- ----------------------- -------------------
                **(*m*/*s*^2^)**        **(*ft*/*s*^2^)**

  **0**         9.780327                32.088

  **15**        9.783659                32.098

  **30**        9.792866                32.188

  **45**        9.805689                32.171

  **60**        9.818795                32.214

  **75**        9.828569                32.249

  **90**        9.832185                32.258
  ---------------------------------------------------------

  

The standard acceleration (*g~o~*) corresponds to a latitude of 46.0625°.

*g~lsl~* at the equator and the poles varies ±0.27% from *g~o~*.

 

**Altitude Effect on Gravitational Acceleration**

*R~A\ ~*is the sum of the earth\'s local radius and the geometric distance (*h~G~*) above the surface: *R~A~ = R* + *h~G~*

 

![][6]

Gravitational acceleration at any geometric altitude:

 

+-----------+----------------+
| *h~G~*    |  g\_alt/g\_lsl |
|           |                |
| (1000 ft) |                |
+===========+================+
| 0         | 1              |
+-----------+----------------+
| 10        | 0.99904        |
+-----------+----------------+
| 20        | 0.99809        |
+-----------+----------------+
| 40        | 0.99618        |
+-----------+----------------+
| 60        | 0.99428        |
+-----------+----------------+
| 80        | 0.99238        |
+-----------+----------------+
| 100       | 0.99049        |
+-----------+----------------+

 

**\
**

**Actual Gravitational Pull on an Aircraft**

Adding a centrifugal relief correction due to the aircraft's velocity, a complete calculation for its gravitational acceleration is

 

 ![][7]where *V~G~* = ground speed and σ = ground track angle (0° = true North, 90° = East, etc.).

** **

**Gravity Influence on Aircraft Cruise Performance**

Even at the same altitude, changes in gravity due to latitude or centrifugal relief directly alter the required lift, drag, and fuel flow. For example, with sufficiently precise instrumentation, data collected heading West could show about 0.5% more drag and fuel flow than data collected heading East (centrifugal relief effect). After determining test and standard (or mission) values for *g*, flight test values for *C~L~*, *C~D~*, drag, and fuel flow can be corrected to standard as follows:

![][8]![][9]![][10]

![][11]where *N~z~* = normal load factor,

*C~L~* = lift coefficient, *C~D~* = drag coefficient,

AR = aspect ratio, e = Oswald efficiency factor,

*∆D* change in drag force,

*TSFC* = thrust specific fuel consumption, and

![][12] = standard day fuel flow

 

**\
**

**Section 3.3 General Properties of Air** (reference 3.9.1)

 

Gas constant, R = 53.35 ft lb/R lbm = 287.074 J/kg K

= 1716 lb(ft)/slgs(*R*) = 3089.7 lb(ft)/slgs(*K*)

 

Speed of sound = *a~o~*(*θ*) ^½^

= 49.02 (T~R~)^1/2^ *ft/sec*

= 33.42 (T~R~)^1/2^ *miles/hr*

= 29.04 (T~R~)^1/2^ *knots*

= 20.05 (T~R~)^1/2^ *m/sec*

 

Density, *ρ* = .0023769 *slug/ft^3^ =* 1.225 *kg/m^3^ (at 15° C)*

Specific weight, *g~ρ~* = .07647 *sec^2^/ft^4^*

** **

Specific heat capacity at 59*°F* (=*T~o~*)

> at constant pressure, *c~p~* = .240 *BTU/lb R* = 1004.76 *J/kg K*
>
> at constant volume, *c~v~* = .1715 *BTU/lb R* = 717.986 *J/kg K*
>
> specific heat ratio, *γ* = {*c~p~* / *c~v~* } =1.4

 

**Normal Composition of clean, dry atmospheric air near sea level**

Nitrogen, *N~2~* 78.084 % by volume

Oxygen, *O~2~* 20.948 %

Argon, *A* 0.934 %

Carbon Dioxide, *CO~2~* 0.031 %

Neon, *Ne* [0.002 %]{.underline}

total 99.9988 %

 

plus traces of helium, kryton, xenon, hydrogen, methane, nitrous oxide, ozone, sulfur dioxide, nitrogen dioxide, ammonia, carbon monoxide, and iodine.

** **

**Viscosities of Air**

Coefficient of Viscosity, lb/ft sec

 ![][13]

**\
**

![][14]Kinematic viscosity, ft^2^/sec

![][15] Absolute Viscosity, lb sec/ft^2^

^ ^

 

**Atmospheric Viscosity (U.S. Standard Atmosphere)**

 

+-------------------+---------------------+--------------------+
| Pressure Altitude | Kinematic Viscosity | Absolute Viscosity |
|                   |                     |                    |
| *ft*              | *υ (* *ft^2^/sec)*  | *μ (lb sec/ft^2^)* |
+===================+=====================+====================+
| 0                 | 1.572 x 10^-4^      | 3.737 x 10^-7^     |
+-------------------+---------------------+--------------------+
| 5,000             | 1.776               | 3.638              |
+-------------------+---------------------+--------------------+
| 10,000            | 2.013               | 3.538              |
+-------------------+---------------------+--------------------+
| 15,000            | 2.293               | 3.435              |
+-------------------+---------------------+--------------------+
| 20,000            | 2.625               | 3.330              |
+-------------------+---------------------+--------------------+
| 25,000            | 3.019               | 3.224              |
+-------------------+---------------------+--------------------+
| 30,000            | 3.493               | 3.115              |
+-------------------+---------------------+--------------------+
| 35,000            | 4.065               | 3.004              |
+-------------------+---------------------+--------------------+
| 40,000            | 5.074               | 2.981              |
+-------------------+---------------------+--------------------+
| 45,000            | 6.453               | 2.982              |
+-------------------+---------------------+--------------------+
| 50,000            | 8.206               | 2.983              |
+-------------------+---------------------+--------------------+
| 55,000            | 10.44               | 2.985              |
+-------------------+---------------------+--------------------+
| 60,000            | 13.27               | 2.986              |
+-------------------+---------------------+--------------------+
| 70,000            | 21.69               | 3.005              |
+-------------------+---------------------+--------------------+
| 80,000            | 35.75               | 3.043              |
+-------------------+---------------------+--------------------+
| 90,000            | 58.53               | 3.080              |
+-------------------+---------------------+--------------------+
| 100,000           | 95.19               | 3.118              |
+-------------------+---------------------+--------------------+
| 150,000           | 1066                | 3.572              |
+-------------------+---------------------+--------------------+
| 200,000           | 6880                | 3.435              |
+-------------------+---------------------+--------------------+

**\
**

![][16]**Psychrometric Chart for Seal Level Barometric Pressure**

![][17] 

**\
**

**Section 3.4 Standard Atmosphere**

** Divisions of the Atmosphere**

![][18] 

**\
**

Constantly changing atmospheric conditions cannot be duplicated at will to provide the exact environment in which a flight takes place. A standard atmosphere provides a common basis to relate all flight test, wind tunnel results, aircraft design and general performance. Several models of "standard atmosphere" exist with minor differences based on mathematical constants used in the calculations.

 

**Geometric altitude,** *h~G\ ~*, is defined as the height of an aircraft above sea level (also called **tapeline** altitude)

 

**Absolute altitude,** *h~a~*, is defined as the height of an aircraft above the center of the earth: (geometric altitude + radius of the earth).

 

**Geopotential altitude,** *h*, is required because *g* changes with height.If potential energy is calculated using sea level weight (*W~SL~* = *mg~o~*) instead of actual weight (*W* = *mg*), then the altitude must be lower.

*W h~G~ = W~SL~  h*

\* *

**Pressure altitude, *H~p~*** is the altitude, on a standard day, at which the test day pressure would be found

 

**Density altitude** is the altitude, on a standard day, at which the test day density would be found

 

**Temperature altitude** is the altitude, on a standard day, at which the test day temperature would be found

 

**Assumptions on which the standard atmosphere is built**

 1. The air is dry (only 0.4% per volume of water vapor)

 2. The air is a perfect gas and obeys the equation of state,

*P* = ρg*RT*

where R = 53.35 ft lb/°R lbm

  3. The gravitational field decreases with altitude

  4. Hydrostatic equilibrium exists (∆*p=* −ρ*g~o~*∆*h*)

 **\
**

**Standard Day Sea Level Atmospheric Conditions**

** ***P~o~* = 2116.22 lb/ft^2^ = 14.696 lb/in^2^ = 29.921 in *Hg*

= 1013.25 HPa (mb) = 101325 Pa

*T~o~ =* 288.15 *K =* 518.67 *R =* 59 °*F* *=* 15 °C

 

ρ*~o~* = 0.0023769 slgs/ft^3^ = 0.07647 lbm/in^3^ = 1.255 kg/m^3^ (at 15° C )

 

*a~o~* = 1116.45 ft/sec = 661.478 KTAS = 761.14 mph = 340.294 m/sec

 

*g~o~* = 32.174 ft/sec^2^ = 9.80665 m/sec^2^

 

*L* = standard temperature lapse rate = 0.0019812 *K* /ft

 

 

**1976 U.S Standard Atmosphere Equations**

Troposhere - below 36,089 ft (11,000 m) *\< 22636 Pa*

θ = 1 − (L/*Το* ) *h* = 1-(6.8755856 x 10^-6^) *h*

σ = θ^*n*-1^

δ = θ*^n^*

where *n* = 5.255876, *h* = geopotential altitude (ft)

Stratosphere- between 36,089 ft and 65,616 ft (20,000 m) the standard day temperature is a constant 216.65 *K*, therefore:

θ = 0.751865

\* *![][19]![][20]The above relations characterize the standard atmosphere table in this handbook. They may be re-written to solve for pressure altitude (*H~p~*) for any ambient pressure. Below the tropopause (ambient pressure greater than 472.683 psf or 22632 Pa)

*H*~p~ \[ft\] = \[1-(*P~a~/P~o~*)^0.1902632^\]/\[6.8755856 x 10^-6^\]

 

In the troposphere (ambient pressure between 114.347 and 472.683 psf or between 5475 and 22632.1 Pascal)

*H*~p~ \[ft\] = 36089+\[ln(*P~a~/P~o~*)+1.498966\]/ 0.000048063

 **\
**

![][21]**1976 U.S. Standard Atmosphere Graph**

 

**\
**

![][22]

**\
**

![][23]**\
**

![][24]Standard Atmosphere Calculator Website Link <http://www.digitaldutch.com/atmoscalc/>**\
**

![][25]**\
**

**Section 3.5 Sea States**

(ref 3.3) Sea Stale

International Swell Scale

+------+----------------------------------------------+----------------------+
| Code | Sea                                          | Wave Height,         |
|      |                                              |                      |
|      |                                              | Crest to Trough (ft) |
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

**\
**

![][26]**Section 3.6 Sunrise Sunset Times**

**\
**

**Section 3.7 Crosswind Components**

![][27]

**\
**

**Section 3.8 Geodetic Measurements**

**Acronyms, Abbreviations and Symbols**

DGPS Differential Global Positioning System

ECEF Earth Centered Earth Fixed coordinate system

GPS Global Positioning System

INS Inertial Navigation System

WGS84 World Geodetic System 1984

*a* Earth's semi-major axis radius

*b* Earth's semi-minor axis radius

*D* Great circle distance between two points

*e* eccentricity of the Earth square

*f* Earth's flatness factor

*h* geodetic height

*N* radius of curvature in prime vertical

*P* radius of curvature in prime vertical

$\overset{\rightarrow}{P}$ Vector from earth center extending to coordinates

*r* Earth's radius

*X* ECEF x coordinate

*Y* ECEF y coordinate

*Z* ECEF z coordinate

φ Geodetic latitude

ϕ Angle between the two $\overset{\rightarrow}{P}$ vectors originating at the Earth's center and extending to their respective coordinates at the start and end points.

λ Geodetic longitude

ψ Runway heading with respect to true North.

**[Earth Modeling]{.underline}**

The Geodetic System defines the location of any point relative to the earth using latitude, longitude and height (Figure 3.8-1, point P). Longitude and latitude are expressed in degrees, minutes, seconds. Longitude lines extend $\pm$ 180 degrees from the Prime Meridian, run north to south, and converge at the poles. Latitude lines are parallel to the equator and extend $\pm$ 90°.

![http://www.colorado.edu/geography/gcraft/notes/coordsys/gif/latlon2.gif]

**Figure 3.8-1 Geodetic Coordinate System**

The 1984 world geodetic system, WGS84, models the earth's surface as an oblate spheroid - an ellipsoid rotated about its semi-minor axis. In this model, used by global positioning systems, the earth's semi-major axis, *a* is 6,378,137.0 meters and the semi-minor axis, *b is* 6,356,752.314 meters.

The flatness factor (*f*) is defined as:

$$f = \frac{a - b}{a}$$

For the WGS84 model, *f* =1/298.257223563

Because the earth is not perfectly spherical, there are various methods for defining latitude. Unlike the geocentric latitude which uses the earth's center for determining a point's latitude, the **geodetic latitude** (used herein) is the angle between the equatorial plane and a line *normal to the reference ellipsoid*. Figure 3.8-1 exaggerates this with a normal line being well offset from the earth's center. This definition leads to a degree of latitude being longer at the pole than at the equator: 111,694 m (60.3 nm) vs. 110,574 m (59.7 nm).

The **geodetic longitude** of a point is the angle between a reference plane and a plane passing through the point, both planes being perpendicular to the equatorial plane.

**Mathematically, the geodetic surface is a smooth ellipsoid modeling the earth's surface. Clearly, the topography (actual surface height) deviates from this model whenever land is above or below sea level. Less evident is that the actual sea level also deviates from the geodetic model due to local changes in the earth's gravity. Specifically, mass variations caused by changes in earth density and topography, such as mountains or trenches, change local gravity vectors and therefore sea level relative to the ellipsoid.**

Reference to **Mean Sea Level** (MSL) served as the traditional way to express topographic or bathymetric height. Geodesists once considered the sea in balance with the earth\'s gravity and formed a perfectly regular figure. MSL is usually described as a tidal datum that is the arithmetic mean of hourly water elevations observed over a 19-year (Metonic) cycle. This definition averages out tidal highs and lows caused by the changing effects of the gravitational forces from the moon and sun. MSL defines the zero elevation (vertical datum) for a local area. Because the sea surface conforms to the earth\'s gravitational field, MSL also has slight hills and valleys similar to the land surface but much smoother. Zero elevation as defined by one nation is often not the same zero elevation defined by another, thus locally defined vertical datums differ from each other.

**The Geoid is the equipotential surface in the earth's gravity field that coincides most closely with the mean sea level extended continuously under the continents. In other words, it approximates the level of any non-flowing water connected (actually or theoretically) to the seas by waterway or via trenches or tunnels.** The geoid s**urface** undulates relative to the geodetic ellipsoid and **is perpendicular to the local gravity vector -- as seen with a plumb line. Similarly, a spirit level defines the local surface parallel to the geoid, which is tangent to the local horizon. Because the geoid is an equipotential surface, it is the best datum for measuring potential energy** and is the true zero surface for measuring elevations**.** Previously, there was no way to accurately measure the geoid, so heights were measured relative to the similar MSL. **EGM96 (Earth Gravity Model 1996) represents the best geoid model currently available and shows smoothly changing surface undulations ranging from +85 to -107 meters relative to the WGS84 ellipsoid.**

The geoid surface cannot be directly observed, thus heights above or below it can\'t be directly measured. Instead the geoid surface is modeled mathematically using gravitational measurements. Although for practical purposes, at the coastline the geoid and MSL surfaces are assumed to be essentially the same, at some spots the geoid can actually differ from MSL by several meters.

![http://principles.ou.edu/earth\_figure\_gravity/geoid/geoid-ellipsoidal-orthometric\_height.jpg]

**Figure 3.8-2 Height Comparisons**

**Ellipsoidal height (h) is the same as geodetic height and is the geometric distance between an object and the earth ellipsoid (Figure 3.8-2). This may be a GPS output.**

**Geoid height (N) is the height of the geoid above or below the ellipsoid. Some GPS devices output this undulation value in the data stream.**

**Orthometric height (H)** is the geometric distance along a gravitational force line from a given point P to the geoid. This is essentially the conventional height measurement because the geoid approximates MSL- the traditional method for determining height.

Modern GPS units typically include a geoid model (e.g. EGM-96) that provides N (geoid height over the WGS ellipsoid) at the current position. Such a unit can provide the height above geoid. If GPS height output is only available relative to the ellipsoid (h), then traditional Orthometric height (H) above the geoid can be obtained by subtracting the geoid height above the ellipsoid. \[http://www.esri.com/news/arcuser/0703/geoid1of3.html\]

**[ECEF Transformations]{.underline}**

For the purpose of performance, navigation, or noise analysis, flight testers may require distances between two points (the shortest being along the great circle arc) and the average heading of that arc. Calculating these from typical Geodetic System Lat/Long inputs requires conversion to the Earth Centered Earth Fixed (ECEF) coordinate system as shown in Figure 3.8-3.

![][28]

**Figure 3.8-3 Earth Centered Earth Fixed Coordinate System**

The ECEF coordinate system is a Cartesian system with the origin at the earth's center. In this system, the X-axis is defined by the intersection of the Prime Meridian and equatorial planes. The Z-axis goes through the North Pole. The Y-axis completes a right-handed orthogonal system by a plane 90 degrees east of the X-axis and its intersection with the equator.

Geodetic System (lat/long/height) data converts to ECEF as follows:

*x* = (*N* + *h*)$\bullet$cos(φ)$\bullet$cos(λ)

*y* = (*N* + *h*)$\bullet$cos(φ)$\bullet$sin(λ)

*z* = (*N*$\bullet$*(1-e^2^)* + *h*) $\bullet$sin(φ)

where,

*x* = ECEF coordinate parallel to the X-axis

*y* = ECEF coordinate parallel to the Y-axis

*z* = ECEF coordinate parallel to the Z-axis

*φ* = geodetic latitude

*λ* = geodetic longitude

*h* = height above geodetic (ellipsoid) surface

*N* = Normal radius of curvature; distance from earth axis to any point on the geodetic surface at that latitude (extension of r to axis shown in Figure 3.8-3).

$$N = \frac{a}{\sqrt{1 - e^{2} \bullet \sin^{2}(\phi)}}$$

where,

*a* = semi-major axis radius (6,378,137 m; 20,925,647 ft)

*e^2\ ^*= eccentricity squared; $e^{2} = 1 - \left( \frac{a}{b} \right)^{2} = 2 \bullet f - f^{2}$= 0.00669438002290 (Earth, per WGS84).

Also useful is

*M* = Meridian radius of curvature; distance from earth axis to any point on the geodetic surface at that longitude.

$$M = \frac{a(1 - e^{2})}{\left\lbrack 1 - e^{2} \bullet \sin^{2}(\phi) \right\rbrack^{1.5}}$$

**[Great Circle Calculations]{.underline}**

Any plane passing through the center of a spheroid traces a **Great Circle** around the perimeter of that spheroid. The shortest distance between two points on the surface is that portion of the great circle arc encompassing both points (Figure 3.8-3).

![][29]

**Figure 3.8-3 Great Circle Arc**

Except when moving around the equator, navigating along a great circle route has the characteristic of intercepting longitude lines at different angles. In other words, the heading (or bearing) changes along the route. Analysis shows bearing [change]{.underline} along a great circle route:

-   Is never greater than the longitude difference between the end points.

-   Approaches the value of the longitude change as the final latitude approaches a pole (regardless of initial latitude).

-   Is smallest when the final latitude is at the equator

> (for this case, bearing change ≈ longitude change x initial latitude/100).

Calculate the **great circle distance (D)** between points (subscripts 1 and 2) as

> $P_{1} = \sqrt{x_{1}^{2} + y_{1}^{2} + z_{1}^{2}}$, $\text{\ \ P}_{2} = \sqrt{x_{2}^{2} + y_{2}^{2} + z_{2}^{2}}$

$${\overset{\rightarrow}{P}}_{1} \bullet {\overset{\rightarrow}{P}}_{2} = P_{1} \bullet P_{2}\cos\varphi = x_{1} \bullet x_{2} + y_{1} \bullet y_{2} + z_{1} \bullet z_{2}$$

$$\varphi = \arccos\left( \frac{x_{1} \bullet x_{2} + y_{1} \bullet y_{2} + z_{1} \bullet \text{Zz}_{2}}{P_{1} \bullet P_{2}} \right)$$

$$D = P_{\text{avg}} \bullet \varphi$$

where

*P* = distance from earth center to any point (including height above the spheroid surface).

$\overset{\rightarrow}{P}$ = Vector from the Earth's center to point P.

ϕ = Angle between the two $\overset{\rightarrow}{P}$ vectors

\<<http://www.movable-type.co.uk/scripts/latlong.html>\> provides equations an online tool for calculating great circle initial & final bearings (headings).

**[\
]{.underline}**

**[Local Distance Transformation]{.underline}**

Latitude *φ*, longitude λ, and height (typical GPS output data) can be transformed into rectangular (X,Y,Z) coordinates. The following presents a method for applying this to two different coordinate systems, both with the X-Y axes defining the horizontal plane. This is useful when working with local distances associated with typical flight testing such as noise measurement, local navigation, or field performance.

Figure 3.8-4a shows a case where the X-Y coordinate system aligns with the latitude & longitude grid. Figure 3.8-4b shows a case where the X-Y coordinate system aligns with a runway, with Y=0 defining the centerline. In both cases, a designated primary reference datum \[*φ*~0~, λ~0~\], such as the runway centerline threshold, coincides with X=0, Y=0. With the example shown in Figure 3.8-4b, the opposite end of the runway centerline \[*φ*~1~, λ~1~\], coincides with X= *runway length* and Y= 0.

![][30]

**Figure 3.8-4: Local X-Y Coordinate System Aligned with (a)**φ**,**λ **Grid; (b) Runway**

Because each degree of latitude change is not always exactly 60 nm and because the spacing between degrees of longitude changes markedly with latitude, converting from degrees latitude & longitude change to distance requires scaling factors. First select equatorial distances for each degree change

φ\_scale{φ=0} = 110,574 m = 362,776.6 ft = 59.70518 nm

λ\_scale{φ=0} = 111,319.5 m = 365,221.4 ft = 60.10772 nm

Use average latitude to calculate latitude and longitude scaling factors

$\varnothing\_\text{scale} = \frac{\varnothing\_\mathrm{\text{scale}}\{\varnothing = 0\}}{\left\lbrack 1 - e^{2} \bullet \sin^{2}(\phi) \right\rbrack^{1.5}}$ $\mathrm{\lambda}\_\mathrm{\text{scale}} = \frac{\lbrack\lambda\_\text{scale}\{\varnothing = 0\}\rbrack \bullet cos\varnothing}{\sqrt{1 - e^{2} \bullet \sin^{2}(\phi)}}$

Calculate X and Y components of distances aligned with the latitude & longitude grid (Figure 3.8-4a)

Y = *φ* \_scale·(*φ* ~1~ - *φ* ~0~)

X = λ\_scale·(λ~1~ - λ~0~)

The 2-D *local* (vice great circle) distance between any two points on the X-Y plane is

D = (X^2^ + Y^2^)^1/2^

For field performance work, it is preferable to align X & Y with the runway as shown in Figure 3.8-4b. To convert from grid-aligned to runway-aligned coordinates, apply a rotation matrix that ensures X remains positive when going from point \[*φ* ~0~, λ~0~\] towards \[*φ* ~1~, λ~1~\]. The rotation angle, *ψ*, is positive counter-clockwise from true East to the direction of the runway. \[Note: do not confuse *ψ* with runway heading measured relative to magnetic north\]. The function

*ψ* = atan2(X, Y)

returns rotation angles from - π to π, so that rotating to headings between 90° and 270° results in

negative rotation angles.

For any point \[*φ*, λ\], calculate runway-aligned X & Y distances using

X = *φ* \_scale·(* φ* - *φ* ~0~)·sin(*ψ*) + λ\_scale·(λ - λ~0~)·cos(*ψ*)

Y = *φ* \_scale·(* φ* - *φ* ~0~)·cos(*ψ*) -- λ\_scale·(λ - λ~0~)·sin(*ψ*)

This provides a right-handed rectangular coordinate system where X is positive from \[*φ* ~0~, λ~0~\] towards \[*φ*~1~, λ~1~\] and Y is positive left of the runway centerline (Figure 3.8-4b).

Calculating aircraft height Z above the X-Y plane requires defining where the X-Y plane lies. An analyst may define Z=0 at some arbitrary height (i.e. GPS altitude at the beginning of a maneuver) and consider only changes from that reference.

For field performance, it is typical to use the runway altitude as the reference. Because runway altitudes vary however, height should be surveyed and modeled or tabulated as a function runway centerline position, H{X}. For best accuracy, the runway survey accounts for GPS antenna height above the surface. Airplane height above the X-Y plane (Z) is then

Z = ζ -- H{X}

where ζ is the test GPS antenna's altitude.

> .

**3.9 Temperature Compensated Barometric Altitude**

**Background:** Pressure altitude is the geopotential height above mean sea level (MSL) associated with atmospheric pressure on a theoretical standard day. Geopotential height is almost identical to geometric (a.k.a. tapeline) altitude, as seen in page 03-5. Altimeters set at 29.92 in Hg (or 1013 HPa) display pressure altitude. An altimeter's baro-set knob allows pilots to bias the pressure vs. altitude relation so it matches sea level pressure for non-standard conditions. Matching the local altimeter setting (known as setting QNH in many parts of the world) adjusts the altimeter so it displays nearly the same altitude above MSL for non-standard pressure conditions. The correct setting is critical for terrain & obstacle clearance when the pilot's visibility is low.

Although the long-used practice of matching the local altimeter setting has been sufficiently safe in the vast majority of operations, it in fact does not account for temperature deviation from standard conditions. Extreme temperature deviations cause a classic mechanical altimeter to display an MSL altitude erring by hundreds of feet. Modern technology allows calculating and displaying a more accurate altitude that corrects for temperature deviations. The following equation yields temperature-compensated altitude which better estimates geometric altitude above MSL, *h~G~*. Calculations require knowledge of aircraft's baro and pressure altitudes and the terminal airport's temperature and pressure altitude. In lieu of pressure altitudes, calculations allow for implementing the field elevation (depicted on airport approach plates, etc.) and so-called baro bias. Baro bias is the displayed altitude shift when switching from local to standard altimeter setting.

*h~G~* = *H~b~* + \[(*T~ap~*~t~ -- *T~0~*)/*L* -- *Hp~apt~*\]ln\[1 + *L*(*Hp* -- *Hp~apt~*)/(*T~0~* + *L\*Hp~apt~*)\]

where

*h~G~* = temperature-compensated altitude

*H~b~* = baro altitude (displayed when altimeter is set to local value)

*T~apt~* = airport temperature (Kelvin)

*T~0~* = standard day sea level temperature = 15 deg C = 288.15 K

*L* = standard temperature lapse rate = -0.0065 K/m = -.0019812 K/ft

*Hp~apt~* = airport pressure altitude ( = airport field elevation -- baro bias)

*Hp* = aircraft pressure altitude ( = H~b~ -- baro bias)

Note: ensure altitude units are consistent with lapse rate units.

In lieu of the pilot adjusting the baro set knob to determine baro bias, it may be calculated using

Baro bias = *H~b~* - *Hp* = *H~b~* -- (29.92^.1903^ -- PA^.1903^)/.00001313 \[ft\]

where

PA = ambient pressure = {altimeter setting \[in Hg\]^.1903^ -- *H~b~*(.00001313)}^1/.1903^

Flight testers can use the above to verify the aircraft's temperature compensation system is working correctly. Data analysts can use these equations to more precisely determine geometric height above the ground--potentially useful for performance or pitot-static flyby testing.

**Section 3.10 References**

** **

3.1 Anon., "Aeronautical Vestpocket Handbook" ,Part No. P&W

079500, United Technologies Pratt & Whitney, Canada, 1990.

 

3.2 Lawless, Alan. R. et al, "Aerodynamics for Flight Testers", National Test Pilot School, P.O. Box 658, Mojave CA, 93501, 1999.

 

3.3 Denno, Richard R., et al "AIAA Aerospace Design Engineers Guide" ISBN 0-930403-21-5, AIAA, 1987.

 

3.4 Global Positioning System Overview, Peter H. Dana, Department of Geography, University of Texas

at Austin, 1994. ([[www.colorado.edu/geography/gcraft/notes/gps/gps\_f.html]{.underline}])

 

3.5 Charles D Ghilani, Penn State College of Engineering, 2008 (http://surveying.wb.psu.edu/sur351/georef/ Ellip4.htm) \<[[www.colorado.edu/geography/gcraft/notes/gps/gps\_f.html]{.underline}]\>

 

3.6 Standard Atmosphere Calculator Website Link [[http://www.digitaldutch.com/atmoscalc/]{.underline}].

 

3.7 Movable Type Scripts. \<[<http://www.movable-type.co.uk/scripts/latlong.html>\>]{.underline}

**\[**Calculate distance, bearing and more between Latitude/Longitude points**\]**

  [1]: ..\..\handbook-2013\pandoc-output\03\/media/image1.wmf {width="0.6673611111111111in" height="0.4583333333333333in"}
  [2]: ..\..\handbook-2013\pandoc-output\03\/media/image2.wmf {width="1.7416666666666667in" height="0.6805555555555556in"}
  [3]: ..\..\handbook-2013\pandoc-output\03\/media/image3.wmf {width="1.945138888888889in" height="0.4722222222222222in"}
  [4]: ..\..\handbook-2013\pandoc-output\03\/media/image5.png {width="2.0729166666666665in" height="1.375in"}
  [5]: ..\..\handbook-2013\pandoc-output\03\/media/image6.wmf {width="4.0375in" height="0.2916666666666667in"}
  [6]: ..\..\handbook-2013\pandoc-output\03\/media/image7.wmf {width="1.2597222222222222in" height="0.5277777777777778in"}
  [7]: ..\..\handbook-2013\pandoc-output\03\/media/image8.wmf {width="4.1305555555555555in" height="0.5263888888888889in"}
  [8]: ..\..\handbook-2013\pandoc-output\03\/media/image9.wmf {width="2.075in" height="0.2638888888888889in"}
  [9]: ..\..\handbook-2013\pandoc-output\03\/media/image10.wmf {width="0.9819444444444444in" height="0.4861111111111111in"}
  [10]: ..\..\handbook-2013\pandoc-output\03\/media/image11.wmf {width="1.5375in" height="0.5277777777777778in"}
  [11]: ..\..\handbook-2013\pandoc-output\03\/media/image12.wmf {width="1.575in" height="0.2638888888888889in"}
  [12]: ..\..\handbook-2013\pandoc-output\03\/media/image13.wmf {width="0.31527777777777777in" height="0.2777777777777778in"}
  [13]: ..\..\handbook-2013\pandoc-output\03\/media/image14.wmf {width="1.4375in" height="0.4284722222222222in"}
  [14]: ..\..\handbook-2013\pandoc-output\03\/media/image15.wmf {width="0.48125in" height="0.4375in"}
  [15]: ..\..\handbook-2013\pandoc-output\03\/media/image16.wmf {width="2.1590277777777778in" height="0.4375in"}
  [16]: ..\..\handbook-2013\pandoc-output\03\/media/image17.jpg {width="6.986805555555556in" height="9.0in"}
  [17]: ..\..\handbook-2013\pandoc-output\03\/media/image18.jpg {width="6.986805555555556in" height="9.0in"}
  [18]: ..\..\handbook-2013\pandoc-output\03\/media/image19.wmf {width="7.0in" height="8.25in"}
  [19]: ..\..\handbook-2013\pandoc-output\03\/media/image20.wmf {width="2.2708333333333335in" height="0.21944444444444444in"}
  [20]: ..\..\handbook-2013\pandoc-output\03\/media/image21.wmf {width="2.3381944444444445in" height="0.2465277777777778in"}
  [21]: ..\..\handbook-2013\pandoc-output\03\/media/image22.png {width="5.334027777777778in" height="5.334027777777778in"}
  [22]: ..\..\handbook-2013\pandoc-output\03\/media/image23.jpeg {width="6.6402777777777775in" height="7.991666666666666in"}
  [23]: ..\..\handbook-2013\pandoc-output\03\/media/image24.jpeg {width="6.4319444444444445in" height="9.0in"}
  [24]: ..\..\handbook-2013\pandoc-output\03\/media/image25.jpeg {width="1.98125in" height="9.0in"}
  [25]: ..\..\handbook-2013\pandoc-output\03\/media/image26.jpeg {width="6.990277777777778in" height="8.995138888888889in"}
  [26]: ..\..\handbook-2013\pandoc-output\03\/media/image27.png {width="6.999305555555556in" height="8.748611111111112in"}
  [27]: ..\..\handbook-2013\pandoc-output\03\/media/image28.png {width="6.999305555555556in" height="6.999305555555556in"}
  [http://www.colorado.edu/geography/gcraft/notes/coordsys/gif/latlon2.gif]: ..\..\handbook-2013\pandoc-output\03\/media/image29.gif {width="4.71665135608049in" height="3.3229166666666665in"}
  [http://principles.ou.edu/earth\_figure\_gravity/geoid/geoid-ellipsoidal-orthometric\_height.jpg]: ..\..\handbook-2013\pandoc-output\03\/media/image30.jpeg {width="4.69963145231846in" height="2.632075678040245in"}
  [28]: ..\..\handbook-2013\pandoc-output\03\/media/image31.emf {width="4.3740780839895015in" height="4.462264873140858in"}
  [29]: ..\..\handbook-2013\pandoc-output\03\/media/image32.emf {width="3.3050623359580054in" height="3.3113199912510938in"}
  [30]: ..\..\handbook-2013\pandoc-output\03\/media/image33.png {width="6.0in" height="2.441666666666667in"}
  [[www.colorado.edu/geography/gcraft/notes/gps/gps\_f.html]{.underline}]: http://www.colorado.edu/geography/gcraft/notes/gps/gps_f.html
  [[http://www.digitaldutch.com/atmoscalc/]{.underline}]: http://www.digitaldutch.com/atmoscalc/
