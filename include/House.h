/*
 * House.h
 *
 *  Created on: Oct 11, 2014
 *      Author: Iury Roger Painelli
 */

#ifndef HOUSE_H_
#define HOUSE_H_

#include <Construction.h>
#include <map>
#include <cassert>
#include <sstream>
#include <math.h>
#include "GlutFramework.h"
#include "Random.h"
#include "glm/glm.hpp"
#include "textures.h"

class House: public Construction {
public:
	House(float w, float l, float h, textures t);
	virtual ~House();

	void generateConstruction();

private:
	void drawRoof();
	void drawDoor();
	void drawWindow();
	void drawWalls();
	void drawFloor(bool isFirst);

	int nStories;
	float storyHeight;


	//textures
	GLuint texWindow;
	GLuint texDoor;
	GLuint texWall;
	GLuint texRoof;

	//vertex arrays

};

#endif /* HOUSE_H_ */
