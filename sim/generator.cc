/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geants4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include "generator.hh"
#include "GlobalFile.hh"
#include "G4Event.hh"

MyPrimaryGenerator::MyPrimaryGenerator() {
    fParticleGun = new G4ParticleGun(1);
}

MyPrimaryGenerator::~MyPrimaryGenerator() {
    delete fParticleGun;
}

void MyPrimaryGenerator::GeneratePrimaries(G4Event *anEvent) {
    static std::set<G4int> particlesHitTop;
    static std::map<G4int, std::pair<G4double, G4double>> initialAnglesMap;

    G4ParticleTable *particleTable = G4ParticleTable::GetParticleTable();
    G4ParticleDefinition *particle = particleTable->FindParticle("geantino");
    fParticleGun->SetParticleDefinition(particle);

    G4double cosT = G4UniformRand();
    G4double sinT = sqrt(1 - cosT * cosT);
    G4double phi = G4UniformRand() * CLHEP::twopi;

    G4double cosT2 = (G4UniformRand() * (cosT + 1)) - 1;
    G4double sinT2 = sqrt(1 - cosT2 * cosT2);
    G4double phi2 = G4UniformRand() * CLHEP::twopi;

    G4double radius = 1.5;
    G4double ene = 6 * GeV;

    G4ThreeVector position1(radius * sinT * cos(phi) * m, radius * sinT * sin(phi) * m, radius * cosT * m);
    G4ThreeVector position2(radius * sinT2 * cos(phi2) * m, radius * sinT2 * sin(phi2) * m, radius * cosT2 * m);

    G4ThreeVector direction = position2 - position1;

    fParticleGun->SetParticlePosition(position1);
    fParticleGun->SetParticleMomentumDirection(direction);
    fParticleGun->SetParticleEnergy(ene);

    fParticleGun->GeneratePrimaryVertex(anEvent);

    G4int trackID = anEvent->GetPrimaryVertex(0)->GetPrimary(0)->GetTrackID();
    initialAnglesMap[trackID] = std::make_pair(acos(cosT), phi);
}
