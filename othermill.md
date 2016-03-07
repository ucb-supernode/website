---
layout: page
title: Othermill
navbar: false
permalink: /othermill/
---

<div>
<img class="pull-left img-responsive img-rounded" style="width: 40%; margin-right: 50px;" src="{{ "/assets/othermill.jpg" | prepend: site.baseurl }}" alt="Othermill picture" />

<p style="margin-bottom: 0px;">&nbsp;</p>
<p>
The <a href="https://othermachine.co/othermill/features/">Othermill</a> is a small desktop 3-axis CNC milling machine available in Supernode for general use (after safety training only) on a mostly bring-your-own-bits-and-material policy.
</p>

<p>
Read this entire page thoroughly before attempting to use the Othermill. For further documentation, read the official <a href="https://othermachine.co/support/">Othermachine support site</a>.
</p>
<p>
Email us at <a href="mailto:supernode@lists.berkeley.edu">supernode@lists.berkeley.edu</a> if anything happens or with any questions.
</p>
</div>
<div style="clear: both; margin-bottom: 20px;"></div>



**Contents**

* TOC
{: toc}

Warnings and rules
--------------------
Unlike most other machinery in Supernode, the Othermill is a serious power tool with the potential to cause serious damage if not used very carefully.

* The Othermill must not be used to cut fiberglass (such as FR-4, the most common PCB material) or carbon fiber, as these create hazardous dust that will shred your lungs and may foul the machinery. Other disallowed materials are listed below.
* Observe recommended spindle speeds, cutting rates, and maximum pass depths. If you don't know what these are, look them up.
* Do not try to bypass the safety interlocks. Don't try to stick anything into the machine while it's running. This also means no cutting fluid or other coolant/lubrication.
* Vacuuming out the swarf after your cut is mandatory.

**Unattended machining at any time is strictly forbidden.** We recommend working in pairs.


Software and getting started
------------------------------
The Othermachine uses [Otherplan](https://othermachine.co/othermill/otherplan/) for control. Currently it is available on OS X only, with a beta for Windows and Linux (the Windows beta is installed on the computer). The beta has limited features. Othermachine has a published ["Hello World" project](https://othermachine.co/support/basics/hello-world/) that you can read through to see how to use Otherplan.


Materials
-----------
The Othermill is commonly used to cut custom PCBs out of copper-clad FR-1 laminate. However, the Othermill is a general-purpose 3-axis CNC mill and can mill or engrave almost anything softer than steel that fits in the 5.5" x 4.5" x 1.35" build area. Common materials include **plastic** (HDPE, Delrin, acrylic, polycarbonate), **wood**, **linoleum** (for stamps), **aluminum** (generally 6061), **brass** (free-machining alloys like C360), **machining wax**, and **polyurethane modeling foam**.

### Disallowed materials
Do not attempt to mill any of the following:

* **unknown alloys** of aluminum or brass: some are not machinable
* **steel, iron, titanium**: will break the bit
* **magnesium**: extreme fire hazard
* **fiberglass** (including FR-4), **carbon fiber**: abrasive dust (health and mechanical hazard)
* **stone, glass**: for obvious reasons
* **food** of any kind. The Othermill is not food-safe. Food molds are okay.


Fixturing
-----------
Generally, material is attached to the spoilboard with double-sided tape. We have heavy-duty Nitto Permacel P-02 double-sided tape, which works very well.

For even more fixturing power, apply hot glue around the edges of the material (never under, otherwise the material will be much taller than expected). Keep in mind that hot glue is hot and will melt many plastics. Avoid cutting through hot glue; it will melt onto bits.

Extreme fixturing can be accomplished by removing the spoilboard entirely and bolting your piece into the slots in the bed. You will probably not need this.


CAM
-----
[CAM](https://en.wikipedia.org/wiki/Computer-aided_manufacturing) is the process of going from a CAD model to machine-specific instructions on where to put the tool (in this case, Othermill G-code).

Otherplan (excluding the beta) can do its own CAM for PCBs (Gerbers or EAGLE .brd files) or for 2D cutting (from SVGs), including engraving. For anything else, you must (very carefully) generate G-code using external CAM software and load it into Otherplan.

We highly recommend **Autodesk Fusion 360** for CAM. Othermachine has a tutorial on getting started in Fusion 360 [here](https://othermachine.co/support/2d-3d-design/fusion-360/).

**Special note:** when generating toolpaths, make sure the tool does not go out of bounds. Otherplan will not catch the error and the preview will look correct, but your cut will silently end up offset and you will be confused and sad.


Recommended settings
----------------------
Recommended settings (spindle speed, cutting feedrate, plunge rate, maximum pass depth) are on the [Othermachine support site](https://othermachine.co/support/) under the "Materials" section. Follow these closely. We speak from experience. *Do not use CAM software that cannot customize these settings.*

Milling settings are constrained by:

* Bit strength. Cutting material too fast or too deep will break bits, especially smaller ones.
* Spindle power. If the bit goes too deep, it may get stuck and stall the spindle.
* Material properties. Cutting too aggressively may cause the material to deform or melt, including onto the bit (which *will* break the bit).
* Fixturing strength. The workpiece may get flung loose from the table, especially if using only tape. Keep in mind that continuous cutting may heat up the material so much that the tape loosens just from the heat.

