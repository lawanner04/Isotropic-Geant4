#include "simManager.hh"
#include "G4RunManager.hh"
#include "G4UImanager.hh"
#include "G4VisExecutive.hh"
#include "G4UIExecutive.hh"
#include "QBBC.hh"

#include "construction.hh"
#include "action.hh"

SimManager::SimManager() {
    runManager = new G4RunManager();
    UImanager = G4UImanager::GetUIpointer();
}

SimManager::~SimManager() {
    delete runManager;
}

void SimManager::initialize() {
    runManager->SetUserInitialization(new MyDetectorConstruction());
    runManager->SetUserInitialization(new MyPhysicsList());
    
    EventAction* eventAction = new EventAction();
    runManager->SetUserAction(eventAction);
    
    runManager->SetUserInitialization(new MyActionInitialization());
    runManager->Initialize();
}

void SimManager::runVisualization(int argc, char** argv) {
    ui = new G4UIExecutive(argc, argv);
    visManager = new G4VisExecutive();
    visManager->Initialize();
    
    UImanager->ApplyCommand("/vis/open OGL");
    UImanager->ApplyCommand("/vis/drawVolume");
    UImanager->ApplyCommand("/vis/viewer/set/viewpointVector 1 2 1");
    UImanager->ApplyCommand("/vis/viewer/set/upVector 0 0 1");
    UImanager->ApplyCommand("/vis/scene/add/trajectories smooth");
    UImanager->ApplyCommand("/vis/viewer/set/autoRefresh true");
    UImanager->ApplyCommand("/vis/scene/endOfEventAction accumulate");
    UImanager->ApplyCommand("/vis/viewer/zoom 1");
    UImanager->ApplyCommand("/vis/scene/add/axes 0 0 0 1.5");
    
    ui->SessionStart();
    
    delete visManager;
    delete ui;
}

void SimManager::runSimulation(int nEvents) {
    UImanager->ApplyCommand("/run/beamOn " + std::to_string(nEvents));
}