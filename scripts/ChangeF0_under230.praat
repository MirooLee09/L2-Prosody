# Shift pitch contour 
# 0) You need to have textGrid that has an interval tier marking the place you would like to shift f0. 
# 1) Open and Select one sound file and one text grid file you want to work on on Praat Objects.
# 2) Determine the steps 
# 3) Update the renaming code
##### Miroo Lee Jan 22 2019


## Extract pitch tier from the selected sound file via Manipulation option
## Identify starting(t1)/end(t2) point of interval tier
## Identify f0

idSnd = selected("Sound")		
name$ = selected$("Sound")
idTG = selected("TextGrid")	

select idSnd
To Manipulation: 0.01, 75, 600
idMnp = selected("Manipulation")

Extract pitch tier
idPT = selected("PitchTier")

select idTG
t1 = Get start time of interval... 1 2
t2 = Get end time of interval... 1 2

select idPT
f0 = Get value at time... t1



## Determine the step size as well as the direction (NA/-)
## Shift frequencies... determines the time range and the step size & direction of f0 shift.
## Update the '+/- i' value accordingly
 
for i from 0 to 30
	pitchChange = 0
	select idPT
	Shift frequencies... 0 t2 1 Hertz
	
	newF0 = Get value at time... t1
	newF0value = newF0 - 2

	select idPT
	plus idMnp
	Replace pitch tier
	select idMnp
	Get resynthesis (overlap-add)
	Rename... 'name$'_F'newF0value:0'
	

	endfor




