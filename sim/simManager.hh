#ifndef SIM_MANAGER_HH
#define SIM_MANAGER_HH

#include "G4RunManager.hh"
#include "G4UImanager.hh"
#include "G4VisManager.hh"
#include "G4UIExecutive.hh"
#include "G4VisExecutive.hh"
#include "EventAction.hh"
#include "construction.hh"
#include "physics.hh"
#include "action.hh"

class SimManager {
public:
    SimManager();
    ~SimManager();
    
    void initialize();
    void runVisualization(int argc, char** argv);
    void runSimulation(int nEvents);

private:
    G4RunManager* runManager;
    G4UImanager* UImanager;
    G4UIExecutive* ui;
    G4VisManager* visManager;
};

#endif