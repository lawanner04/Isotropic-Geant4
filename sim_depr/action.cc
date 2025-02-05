
/*-----------------------------------

 UPDATED: 11/25/24
 AUTHOR: Luke Wanner
 Colorado School of Mines - Physics

 Geant4 Simulation of Edgar Mine Muon Detectors -
 Isotropic geantino production on the surface of a sphere
 
-----------------------------------*/

#include "action.hh"

MyActionInitialization::MyActionInitialization(){

}

MyActionInitialization::~MyActionInitialization(){

}

void MyActionInitialization::Build() const{

	MyPrimaryGenerator *generator = new MyPrimaryGenerator();
	SetUserAction(generator);

}
