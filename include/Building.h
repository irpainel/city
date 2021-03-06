/*
 * Building.h
 *
 *  Created on: Oct 11, 2014
 *      Author: Iury Roger Painelli
 */

#ifndef BUILDING_H_
#define BUILDING_H_

#include <map>
#include <cassert>
#include <sstream>
#include "GlutFramework.h"
#include "Random.h"
#include "glm/glm.hpp"
#include "Construction.h"
#include "textures.h"

class Building: public Construction {
public:
	Building(float w, float l, float h, textures t);
	virtual ~Building();

	void generateConstruction();

private:
	float storeyHeight;
	int num_stories;

	GLuint texBuilding;
	GLuint texRoof;

	void drawBuilding(bool firstStorey);
	void drawWallTex();
	void drawRoofs();
};

#endif /* BUILDING_H_ */
