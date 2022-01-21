## Project plan  
**Miroo Lee (mil136@pitt.edu) 1-20-2022**  

**Goal**  
--------
This project aims to investigate which listening tasks reveal a temporary shift in speech perception between two different language contexts by bilingual and monolingual listeners. It specifically focuses on relating the observed temporary perceptual adaptations to individual listeners' language history and sound category development. The main questions are:  

_Q1. What are the cue-weighting patterns of English monolinguals in English sessions and Korean-English bilinguals in Korean sessions?_ 

_Q2. How do bilinguals’ category knowledge and cross category linkage develop over time?_

_Q3. How does language mode develop as listeners transition from being monolingual to bilingual?_  

To answer these questions, I am conducting a series of listening tasks online. There are three main stages to this project. The first is to preparing the experiment. In this stage, I create stimuli using Praat. The second stage is data collection. The third stage is data analysis.  

**Preparing the experiment**  
--------------
For this study, I aim to run three types of listening tasks; labeling, goodness-judgement, and AX-discrimination task. In order to create acoustic stimuli that will be used for the three listening tasks, I am using a base sound (CV9_VOT40_F230_edit_int.wav). With this base token, I will create three F0 continua, each with VOT of value of 5, 25, and 45ms.  

**Creating the base syllable**  

Step 1: splicing  
The base syllable was created by manually splicing VOT portion from 'pop' to the lip apperture and vowel portion from 'bot'.  
input: [bot.wav](bot.wav)^[bot1.wav in Comps1 project], [pot.wav](pot.wav)^[pot1.wav in Comps1 project]  
output: CV9_VOT40_F230_edit.wav

Step 2: modifying intensity  
The spliced sound was then further modified for its intensity to achieve the optimal naturalness. An intensity tier was created that maintained the same intensity (1dB) for the entire stimuli until the 75% point of the vowel, then fell linearly to -9dB for the remaining 25% of the vowel portion. The intensity tier and the spliced sound were multiplied.  
input: CV9_VOT40_F230_edit.wav, [CV_decreasing_intensity_F230.IntensityTier](CV_decreasing intensity.IntensityTier)   
output: resulting [CV9_VOT40_F230_edit_int.wav](CV9_VOT40_F230_edit_int.wav) 

**Modulating VOT**  
For the current project, syllables with three different VOT values are needed. The base syllable CV has 
Three base sounds are needed: 45, 25, and 5ms VOT 
input: [CV9_VOT40_F230_edit_int.wav](CV9_VOT40_F230_edit_int.wav),  
output: 

**F0 continuum**  
I created F0 continua by modulating a base sound with a textgrid using a praat script. The base sound [CV9_VOT40_F230.wav](CV9_VOT40_F230.wav) and its textgrid [CV9_VOT40_F230.textgrid]([CV9_VOT40_F230.textgrid])^[CV9_VOT40_F230_edit.textgrid in Comps1 project] were used. Two praat sciprts were used depending on the range of F0;[ChangeF0_under230.praat](ChangeF0_under230.praat) was used to create stimuli over 200-230hz. [ChangeF0_above230.praat](ChangeF0_above230.praat) was used to create stimuli over 230-260hz. 




