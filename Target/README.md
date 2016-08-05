# MARCH Target Model

The MARCH runs on a Simulink Target PC also known as Simulink Real-time or Real Time Workshop. This model contains all the High-Level systems which control the exoskeleton. It functions as an EtherCAT master and communicates with all the EtherCAT slaves (the Enclustra boards).

## Getting Started
In order to get started clone the entire `simulink-models` repository

`git clone https://github.com/project-march/simulink-models.git`

 - Create a `build` folder inside the `Target` folder.
 - Run the `run` function with any of the following arguments: `target` or `local`
  
 ## Example
`>> run('local')`

This command will open the simulink model and based on your argument will set it up for either target compilation or local simulation.

