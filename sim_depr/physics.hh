/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#ifndef PHYSICS_HH
#define PHYSICS_HH

#include "G4VModularPhysicsList.hh"

class MyPhysicsList : public G4VModularPhysicsList {
public:
    MyPhysicsList();
    ~MyPhysicsList();
};

#endif


