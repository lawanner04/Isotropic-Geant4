/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include <iostream>
#include "G4RunManager.hh"
#include "G4UImanager.hh"
#include "G4VisManager.hh"
#include "G4UIExecutive.hh"
#include "G4VisExecutive.hh"
#include "EventAction.hh"
#include "construction.hh"
#include "physics.hh"
#include "action.hh"
#include "GlobalFile.hh"
#include <map>

int GlobalID = 26;

int main(int argc, char** argv) {
    G4RunManager* runManager = new G4RunManager();
    runManager->SetUserInitialization(new MyDetectorConstruction());
    runManager->SetUserInitialization(new MyPhysicsList());

    EventAction* eventAction = new EventAction();
    runManager->SetUserAction(eventAction);

    runManager->SetUserInitialization(new MyActionInitialization());
    runManager->Initialize();

    //COMMENT THIS LINE OUT TO RUN MANY PARTICLES (STOPS THE DETECTOR VISUALIZATION)
    G4UIExecutive* ui = (argc == 1) ? new G4UIExecutive(argc, argv) : nullptr;
    // ----------------------------------------------------------------------------

    G4VisManager* visManager = new G4VisExecutive();
    visManager->Initialize();

    // COMMENT THIS OUT TO RUN MANY PARTICLES (STOPS THE DETECTOR VISUALIZATION)
    G4UImanager* UImanager = G4UImanager::GetUIpointer();
    UImanager->ApplyCommand("/vis/open OGL");
    UImanager->ApplyCommand("/vis/drawVolume");
    UImanager->ApplyCommand("/vis/viewer/set/viewpointVector 1 2 1");
    UImanager->ApplyCommand("/vis/viewer/set/upVector 0 0 1");
    UImanager->ApplyCommand("/vis/scene/add/trajectories smooth");
    UImanager->ApplyCommand("/vis/viewer/set/autoRefresh true");
    UImanager->ApplyCommand("/vis/scene/endOfEventAction accumulate");
    UImanager->ApplyCommand("/vis/viewer/zoom 1");
    UImanager->ApplyCommand("/vis/scene/add/axes 0 0 0 1.5");
    // --------------------------------------------------------------------------

    // WILL AUTOMATICALLY RUN MANY PARTICLES IF THERE IS NO UI, ONLY NEEDED IF USING RUN_SIMULATION 
    // (ALSO 100 MILLION MIGHT BE TOO MANY FOR YOU)
    if (ui) {
        ui->SessionStart();
        delete ui;
    } else {
        UImanager->ApplyCommand("/run/beamOn 100000000");
    }
    // --------------------------------------------------------------------------

    delete visManager;
    delete runManager;

    return 0;
}
