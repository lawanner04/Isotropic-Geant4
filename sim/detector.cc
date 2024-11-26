/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include "detector.hh"

MySensitiveDetector::MySensitiveDetector(G4String name) : G4VSensitiveDetector(name) {

}

MySensitiveDetector::~MySensitiveDetector() {

}

G4bool MySensitiveDetector::ProcessHits(G4Step *aStep, G4TouchableHistory *ROhist) {

    G4EventManager* evtMgr = G4EventManager::GetEventManager();
    EventAction* eventAction = static_cast<EventAction*>(evtMgr->GetUserEventAction());

    if (!eventAction) {
        G4cerr << "Error: EventAction not found." << G4endl;
        return false;
    }

    G4Track* track = aStep->GetTrack();
    G4LogicalVolume* volume = aStep->GetPreStepPoint()->GetTouchableHandle()->GetVolume()->GetLogicalVolume();

    if (volume->GetName() == "logicDetectorTop") {
        eventAction->SetHitTop(true);
    }

    if (volume->GetName() == "logicDetectorBot") {
        if (eventAction->GetHitTop()) {
            G4ThreeVector initialPosition = track->GetVertexPosition();
            G4double theta = initialPosition.theta();
            G4double phi = initialPosition.phi();
            if (phi < 0) phi += CLHEP::twopi;

            if (outputFile.is_open()) {
                outputFile << theta << " " << phi << std::endl;
            }
        }
    }

    return true; 
}

