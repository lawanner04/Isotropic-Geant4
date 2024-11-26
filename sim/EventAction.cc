/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include "EventAction.hh"

EventAction::EventAction() : G4UserEventAction(), HitTop(false) {}

EventAction::~EventAction() {}

void EventAction::BeginOfEventAction(const G4Event*) {
    HitTop = false; 
}

void EventAction::EndOfEventAction(const G4Event*) {

}