
# Introduction
- [ ] Overview of thesis - experiment to measure a range of acceleration
# Theory

- [ ] Describe general principles of light-matter interaction
- [ ] Specific cases for laser cooling (doppler/sub-doppler) and Raman transitions 
- [ ] Lead into atom interferometry
- [ ] Perhaps split this into two shorter chapters 

 ## Overview 
- [ ] Describe chapter
## Light-Matter Interactions

### Figures
- [ ]

### Content
- [ ]


## Laser Cooling of Rubidium-87

### Figures

## Raman Transitions in Rubidium-87

### Figures
- [ ] Energy level diagram
- [ ] Origin of light shift
### Content
- [ ] Two-level equation derivation
- [ ] Light shift
## Light Pulse Atom Interferometry
### Figures
- [ ] Space-time diagram

### Content

# MOTMaster
## Overview
- [ ] New MOTMaster software to control experiment
- [ ] Control system diagram
- [ ] Interfacing with muquans/msquared lasers
- [ ] Acquiring data from experiment --- axelsuite

## Motivation

## Interfacing with Hardware 
###  Hardware Abstraction 
###  Voltage Pattern Generation 
###  Timed Serial Communication 
###  Voltage Acquisition 


## External Control 
## Building a Sequence 

## Experimental Sequence Structure 
# Cooling and Trapping in a MOT
## Chapter Outline

## The Navigator Vacuum Chamber
###  The 2D MOT system
#### Figures
- [ ] Setup diagram
- [ ] Plot loading rate

#### Content
- [ ] Explain need for 2D MOT side-arm
- [ ] Describe components
- [ ] Performance of the 2D MOT

###  The 3D MOT system
#### Figures
- [ ] Diagram of 3D MOT collimator
- [ ] Diagram of coils inside chamber
#### Content
- [ ] Explain physical characteristics of the MOT
- [ ] Describe steps involved in loading the 3D MOT
###  CCD Imaging
#### Figures
- [ ] Location of camera
#### Content
- [ ] Calculation of atom number from fluorescence

## Generating MOT light
###  Muquans Laser Control
#### Figures
- [ ] Diagram of Muquans system
- [ ] Spectroscopy plots
- [ ] Plot of AOM response vs control voltage
- [ ] Plot of EOM repsonse vs control voltage
#### Content
- [ ] Describe how the Muquans laser generates MOT light
#### Frequency Control
##### Figures
- [ ] Plot power vs drive frequency for EOM and AOM
##### Content
- [ ] Describe how the laser controls the frequency and power of the MOT light - cooling and repump
- [ ] Explain calibration of output to give linear ramp (maybe move to molasses)
#### Real-Time Communication
##### Figures
- [ ] Glossary of commands (for appendix)
##### Content
- [ ] Describe serial communication interface
- [ ] Hardware and software triggering

## Controlling the MOTs
###  Optical Fibre Network
#### Figures
- [ ] Fibre network diagram
#### Content
- [ ] Describe need for independent control
- [ ] Power per MOT beam
###  Magnetic Field Control
#### Figures
- [ ] IGBT switch circuit diagram
- [ ] Plot of magnetic field over time during coil switch-off
#### Content
- [ ] Discuss need to rapidly switch off the MOT coils
## Characterising the 3D MOT
###  3D MOT Loading Rate
#### Figures
- [ ] Plot of MOT loading rate vs 2D MOT time
- [ ] Plot vs laser intensity 
#### Content

###  Temperature
#### Figures
- [ ] Expansion time to measure temerature
- [ ] Temperature vs various parameters
#### Content

# Preparing Atoms for Interferometry
## Chapter Outline

- [ ] Discuss loading atoms in 3D MOT from 2D
- [ ] Characterisation of the moving frame optical molasses
- [ ] Various schemes for preparing atoms into \(\ket{1,0\). {\textit mention velocity selection here or in next chapter?


## Cooling in Optical Molasses
###  Real-time Frequency Control
#### Figures
- [ ] Timing diagram for frequency and intensity molasses ramp
- [ ] 
#### Content
###  Optimising the Temperature
#### Figures
- [ ] Show temperature as a function of molasses parameters
#### Content
## State Preparation
###  Schemes for Preparation
#### Figures
- [ ] 
#### Content
###  Optical Pumping Scheme
#### Figures

#### Content
###  Including Microwave Transitions
#### Figures

#### Content

#### Wind-Freak Synthesiser

# Acceleration-Sensitive Interference
## Chapter Outline
- [ ] Raman spectrum, identifying each transition
- [ ] Characterisation of velocity-selective pulse and each interferometer pulse using Rabi oscillations.
- [ ] Making a three-pulse atom interferometer
- [ ] Improving acceleration sensitivity and correlating vibrations using MEMS

## Raman Optical System
###  Raman Beam Collimator
###  Retro-reflection Assembly
###  The MEMS Accelerometer

## Driving Raman Transitions
###  Frequency and Phase Control

## Atom Detection
###  Optical System
###  Measuring the Interferometer Phase

## Individual Pulse Characterisation 
###  Velocity-Selective Pulse
###  Interferometer Pulses

## Three-Pulse Atom Interference 

## Measuring Accelerations
###  Vibration Sensitivity
# Outlook

## Combining with classical accelerometers

- [ ] Discuss schemes for combining multiple sensors - Kalman filtering
- [ ] Extend this to inertial navigation
- [ ] Steps towards overcoming sensitivity-bandwidth trade-off. 

## Extending to senstivity along three axes

- [ ] New chamber design
- [ ] Improvements to MSquared laser
- [ ] Required knowledge of gravitational axis for accurate navigation

