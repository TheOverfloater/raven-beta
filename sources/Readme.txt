Raven Beta Release
By Andrew Lucas

This is a sandbox mod I worked on for various stupid things and just
mucking about. You'll find many code changes in the source files, as
well as a stupid unfinished level.
This is for anyone who would find some use for these things. I'm sure
some people might be interested in toying with these things.

What to know:
-This mod supports the loading of Quake 1 models. You can find these
bits if you look for references to "Alias" in the code. You'll also
need to have at least Quake 1's palette.lmp in your gfx folder for it
to work. This is the standard Quake 1 palette file.
Custom palettes are supported for models, if you want to use your own
for a specific model, just put it beside the mdl file with the same
name and the "lmp" extension.
Monsters that use Quake 1 models should use the "CQuakeMonster" base
class, as this is what bridges the gap between Half-Life's AI code
and Quake's models.
-Scripts for Q1 models:
The game will generate scripts for any loaded Quake 1 model under
the *moddir*/scripts/models folder. These are generated based on
frame names in the model file. Frames are expected to follow the
following naming schema:
<sequence name><frame number with no padding>
For example: shot1, shot2, shot3, shot4... shot15

Any other naming convention will cause the code to recognize each
frame as a separate sequence.

Sequences defined in the script file can be linked with Half-Life
AI activities, like ACT_IDLE, ACT_RUN, etc. AI monster animation
events can also be assigned. Take for example:
attack ACT_MELEE_ATTACK1 { 3 4 "option_example" }
Here, the attack sequence is mapped to ACT_MELEE_ATTACK1 and there
is an event defined as well, in the brackets. The first number is
the event's ID, and the second is the frame it's to be triggered
on. You can also set a string parameter for the event, as shown 
here. This works exactly like Half-Life MDL animation events to,
except clientside events are not supported.
You also have the following parameters/flags available for the
sequences:
-looped - Use this for idle/movement animations
-fps - Allows to override Quake's default 10 fps to your liking
-speed - Sets the movement speed for the sequence

Other useful trinkets:
-There are a number of Opposing Force features that were remade:
 - Sniper Rifle
 - Desert Eagle
 - M249 SAW
 - Opposing Force grunts.

There are also some new weapons made from TFC models. Nothing that
interesting. The most interesting weapon is the weapon_displacer,
which creates a very neat black hole effect that was done using
ARB shaders. This is an old trinket from a failed mod I was helping
a friend with.

New entities:
 - env_weather: Only supports snow for now. See the FGD for more.
 - env_setsequence: Sets a sequence for a model-based entity. 
      Only for studiomodels.
 - env_modelcamera: Allows you to tie the view to a model-based 
      entity with the right attachments. See blackout.mdl and
      the fgd for more.
 - env_modeltracktrain: Same as func_tracktrain, but it uses a
      model instead of a brush model.
 - env_modeltrain: Same, but behaves like the func_train entity.
 - env_sync: Allows the mapper to syncronize a model-based entity
      to another entity. Useful if you want to tie NPCs to say,
      a moving car based on env_modeltracktrain.
 - env_q1model: Loads and displays Quake 1 models.
 - env_model: Basic entity for models.
 - env_elight: Per-vertex based light for models only.
 - env_fog: Basic fog entity.

Examples for these can be seen in the rc_outskirts1 map file. You
can load it up to see them in effect. The map source is also there
for you to take a look at.

Some Quake 1 entities were also recreated:
 - monster_q1soldier
 - monster_q1shambler
 - monster_q1dog
 - weapon_q1shotgun

Other things:
 - The model renderer is custom, I was toying around with some of
the methods I found Valve had used, when I checked some of their
disassembled engine code. It's not a 1:1 recreation, but I did
adopt some of their ideas. This was done mainly for the per-vertex
env_elights.
 - There is very shitty stencil shadow support, nothing beyond a
bare basic implementation. This will generate .svd files in your
models folder. This is optimized data for stencil shadow rendering.
The code itself is based heavily on BUzer's implementation, only I 
made the output format to store the data.
To activate stencil shadows, set r_shadows to 2, and use either
Paranoia's opengl32.dll, or copy it from *moddir*/dlls to your
Half-Life folder. Be careful, as this could cause a VAC ban if
you try to play online with it.

Points of interest in the source code:

-Client:
alias.h
alias_shared.cpp
alias_shared.h
aliasrenderer.cpp
aliasrenderer.h
blackhole.cpp
blackhole.h
entity.cpp
elightlist.cpp
elightlist.h
ev_hldm.cpp
fog.cpp
fog.h
hud.cpp
modelcamera.cpp
modelcamera.h
StudioModelRenderer.cpp
StudioModelRendrer.h
svd_render.cpp
svd_render.h
svdformat.cpp
svdformat.h
tri.cpp
weather.cpp
weather.h

-Server:
deagle.cpp
displacer.cpp
fgrunt.cpp
m40a1.cpp
nailgun.cpp
q1shotgun.cpp
quakedog.cpp
quakemonster.cpp
quakemonster.h
quakeshambler.cpp
quakesoldier.cpp
scopedrifle.cpp

Hope you have fun with this.
-Andrew Lucas.
