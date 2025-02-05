

/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include "construction.hh"


MyDetectorConstruction::MyDetectorConstruction() {}
MyDetectorConstruction::~MyDetectorConstruction() {}

G4VPhysicalVolume* MyDetectorConstruction::Construct() {
    G4NistManager* nist = G4NistManager::Instance();
    G4Material* worldMat = nist->FindOrBuildMaterial("G4_AIR");
    G4Material* scintMat = nist->FindOrBuildMaterial("G4_AIR");

    G4Sphere* solidWorld = new G4Sphere("solidWorld", 0.*m, 2*m, 0, 360*deg, 0, 90*deg);
    G4LogicalVolume* logicWorld = new G4LogicalVolume(solidWorld, worldMat, "logicWorld");
    G4VPhysicalVolume* physWorld = new G4PVPlacement(0, G4ThreeVector(), logicWorld, "physWorld", 0, false, 0, true);

    G4VisAttributes* visRed = new G4VisAttributes(G4Colour::Red());
    logicWorld->SetVisAttributes(visRed);

    G4double width = 0.48 * m;
    G4double height = 0.04 * m;
    G4double length = 0.30 * m;
    G4double width_unc = 0.005 * m;
    G4double height_unc = 0.005 * m;
    G4double length_unc = 0.005 * m;

    G4double width_vec[3] = {0.0 * m, width_unc, -1 * width_unc};
    G4double height_vec[3] = {0.0 * m, height_unc, -1 * height_unc};
    G4double length_vec[3] = {0.0 * m, length_unc, -1 * length_unc};

    double unc_array[27][3];
    int index = 0;

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            for (int k = 0; k < 3; k++) {
                unc_array[index][0] = width_vec[i];
                unc_array[index][1] = height_vec[j];
                unc_array[index][2] = length_vec[k];
                index++;
            }
        }
    }

    G4double tiltAngle = 0.5934 * rad;
    G4RotationMatrix* rotationMatrix = new G4RotationMatrix();
    rotationMatrix->rotateY(tiltAngle);

    G4double origin[3] = {0 * m, 0 * m, 0.75 * m};
    G4double detector_separation = 1.0 * m;

    G4Box* top_detector = new G4Box("detectorTop", (width + unc_array[GlobalID][0]) * 0.5, (length + unc_array[GlobalID][2]) * 0.5, (height + unc_array[GlobalID][1]) * 0.5);
    logicDetectorTop = new G4LogicalVolume(top_detector, scintMat, "logicDetectorTop");
    new G4PVPlacement(rotationMatrix, 
                      G4ThreeVector(-detector_separation * 0.5 * sin(tiltAngle), 0. * m, (origin[2]+0.5*detector_separation) + (height + unc_array[GlobalID][1]) * 0.5 * (1.01 - 0.5 * sin(tiltAngle))),
                      logicDetectorTop, "physDetectorTop", logicWorld, false, 0, true);

    G4Box* bot_detector = new G4Box("detectorBot", (width + unc_array[GlobalID][0]) * 0.5, (length + unc_array[GlobalID][2]) * 0.5, (height + unc_array[GlobalID][1]) * 0.5);
    logicDetectorBot = new G4LogicalVolume(bot_detector, scintMat, "logicDetectorBot");
    new G4PVPlacement(rotationMatrix, 
                      G4ThreeVector(detector_separation * 0.5 * sin(tiltAngle), 0. * m, (origin[2]-0.5*detector_separation) + (height + unc_array[GlobalID][1]) * 0.5 * (0.1 + 0.5 * sin(tiltAngle))),
                      logicDetectorBot, "physDetectorBot", logicWorld, false, 0, true);

    G4VisAttributes* visBlue = new G4VisAttributes(G4Colour::Blue());
    return physWorld;
}

void MyDetectorConstruction::ConstructSDandField() {
    MySensitiveDetector* sensDetTop = new MySensitiveDetector("SensitiveDetectorTop");
    MySensitiveDetector* sensDetBot = new MySensitiveDetector("SensitiveDetectorBot");

    logicDetectorTop->SetSensitiveDetector(sensDetTop);
    logicDetectorBot->SetSensitiveDetector(sensDetBot);
}
