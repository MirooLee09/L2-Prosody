# Shift pitch contour 
# You need to have textGrid that has an interval tier marking the place you would like to shift f0 (t1,t2) 
# Open and Select one sound file and one text grid file you want to work on on Praat Objects.
##### Miroo Lee Jan 31 2022

## Select Sound and Textgrid
## Textgrid requires minimum of one interval tier
## Extract pitch tier from the selected sound file via Manipulation option
idSnd = selected("Sound")		
name$ = selected$("Sound")
idTG = selected("TextGrid")	

select idSnd
To Manipulation: 0.01, 75, 600
idMnp = selected("Manipulation")

Extract pitch tier
idPT = selected("PitchTier")

## Identify starting(t1)/end(t2) point from interval tier 
## ex) Get start time of interval... [tier number] [interval number]
select idTG
t1 = Get start time of interval... 1 4
t2 = Get end time of interval... 1 4

## Identify f0
select idPT
f0 = Get value at time... t1



## Determine the step size as well as the direction (NA/-)
## Shift frequencies... [starting time] [end time] [step size] [unit]
## Shift frequencies... determines the time range and the step size & direction of f0 shift.
## To raise the pitch by 1Hz, update Shift frequencies... 0 t2 1 Hertz
## To lower the pitch by 1Hz, update Shift frequencies... 0 t2 -1 Hertz
 
for i from 0 to 33
	pitchChange = 0
	select idPT
	Shift frequencies... t1 t2 -1 Hertz

##	newF0value is used for naming the new files.
## The name of the file should represent maximum pitch, therefore, adjust the newF0value formula accordingly.
## maximum pitch of VOT45 sound files corresponds to newF0value = newF0 - 2
## maximum pitch of VOT1 and VOT25 sound files corresponds to newF0value = newF0 - 1

	newF0 = Get value at time... t1
	newF0value = newF0 - 1

	select idPT
	plus idMnp
	Replace pitch tier
	select idMnp
	Get resynthesis (overlap-add)

## Rename the new file with maximum pitch value
## The following will printout 'CV9_VOT1_F'+newF0value
## Make sure to have correct VOT value
	Rename... CV9_VOT25_F'newF0value:0'
	endfor




