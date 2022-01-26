#	Modify the relative durations in an existing sound
#
#	J J A Pacilly, 10-jul-2008, for Yiya Chen (preliminary version!)
# 	Updated 11/28/17 by Melinda Fricke
# 	Modified 1/26/22 by Miroo Lee

# Select sound and textgrid together
idSnd = selected("Sound")
name$ = selected$("Sound")
idTG  = selected("TextGrid")

# Get Manipulation object of the sound
select idSnd
To Manipulation... 0.01 75 600
idMnp = selected("Manipulation")

# Get duration tier from Manipulation object
Extract duration tier
idDT  = selected("DurationTier")

# Add point to DurationTier by specifying Time and Relative duration.
# (1 = leave it as it is, 20/44 changes 44ms to 22ms, 1/44 changes 44ms to 1ms)
# Ex: Add point... 0.011021(Time) 1/4(Relative duration)
# Time point can be obtained by manually reading the segment boundary
Add point... 0.011021-0.0001 1 	#before VOT
Add point... 0.011021 1/44			#VOT starts
Add point... 0.055511 1/44			#VOT endss
Add point... 0.055511+0.0001 1	#after VOT 

# Apply moduated duration tier
 select idMnp
  plus idDT
  Replace duration tier

 durNewName = 1
  select idMnp
  Get resynthesis (overlap-add)
  
  Rename... 'name$'_VOT'durNewName:0'

# The outcome creates three objects; Manipulation, DurationTier, modulated Sound
# Make sure to change the name of the newly modulated Sound object.





