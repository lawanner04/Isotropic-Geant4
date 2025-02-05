/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include "simManager.hh"
#include "GlobalFile.hh"

int GlobalID = 1;

int main(int argc, char** argv) {
    SimManager* manager = new SimManager();
    manager->initialize();
    
    bool simState = false;  // false for visualization, true for simulation
    
    if (!simState) {
        manager->runVisualization(argc, argv);
    } else {
        manager->runSimulation(100000);
    }
    
    delete manager;
    return 0;
}
