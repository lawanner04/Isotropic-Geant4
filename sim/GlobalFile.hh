/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#ifndef GLOBAL_FILE_H
#define GLOBAL_FILE_H

#include <fstream>
#include <map>
#include <utility>
#include "G4Types.hh" 

extern int GlobalID;
extern std::ofstream outputFile;
extern std::ofstream outputFile2;
extern std::map<G4int, std::pair<G4double, G4double>> initialAnglesMap; 

#endif
