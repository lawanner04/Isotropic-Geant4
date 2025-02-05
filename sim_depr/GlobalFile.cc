/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include "GlobalFile.hh"

//Change for your purposes
std::ofstream outputFile("/home/lawanner/Isotropic-Geant4/sim/angles/incident_angles_" + std::to_string(GlobalID) + ".txt", std::ios::trunc);
std::ofstream outputFile2("/home/lawanner/Isotropic-Geant4/sim/angles/incident_angles_all_" + std::to_string(GlobalID) + ".txt", std::ios::trunc);
