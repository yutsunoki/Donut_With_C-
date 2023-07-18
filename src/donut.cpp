#include <iostream>
#include <cstdio>
#include <cmath>
#include <string.h>
#include "headerDonut.h"

using namespace std;

double sin(), cos();

int main(){
    system("");
	Screen::Screen Gs;
	int screen_height = 0, screen_width = 0;
	Gs.GetScreenBufferSize(screen_height,screen_width);

	float i, j; //theta and phi
							
	float 	A = 0, B = 0, 		// the parameter for rotation 
			R1 = 1, R2 = 2;		// the donut radius 

    float	K = 6; 				// the near destination of object between zbuffer 

	// setup array for zbuffer and output
	float zbuffer[screen_width * screen_height];
	char output[screen_width * screen_height];

    printf("\033[?25l\033[2J\033[H");
	for (;;) {
		// register parameter for zbuffer and output array 
		memset(zbuffer, 0, screen_width * screen_height * 4);
		memset(output, 32, sizeof(output));

		for(float i = 0; 2*M_PI > i; i += 0.07) { 				// theta 
			for(float j = 0; 2*M_PI > j; j += 0.02) { 			// phi
				float 	sintheta = sin(i), costheta = cos(i), 	// sin and cos for theta
						sinphi = sin(j), cosphi = cos(j), 		// sin and cos for phi
						sinA = sin(A), cosA = cos(A),			// sin and cos for A
						sinB = sin(B), cosB = cos(B); 			// sin and cos for B

				float	circleX = R2 + R1 * costheta, 	// create 2D cirecle for x
						circleY = R1 * sintheta; 		// and this is for y

				// calculate the terminal buffer screen size
				float 	z = 1 / (sinphi * circleX * cosA + circleY * sinA + K);

				/* 	this is for x and y rotation
					before rotation their must consists the zbuffer of x, y, z 
					to calculate for the destination */
						//  x1, x, z
				int 	x = 40 + 30 * z * 
							(circleX * (cosB * cosphi + sinA * sinB * sinphi) 
							- (R1 * cosA * sinB * sintheta)),

						//  y1, y, z
						y = 12 + 15 * z * 
							(circleX * (cosphi * sinB - cosB * sinA * sinphi) 
							+ (R1 * cosA * cosB * sintheta)),

						// determine the present of characters to the zbuffer and output
						// x, far, y
						o = x + 80 * y;
						
				// for normal surfaces algorithm
				// down lighting
				int		L = (cosphi * costheta * sinB - cosA * costheta * sinphi 
							- sinA * sintheta + cosB * 
							(cosA * sintheta - costheta * sinA * sinphi)) * 8;
				
				// back lighting 
				//int 	L = (costheta * cosB * cosphi * sinphi - sintheta * sinB
				//			* costheta * cosphi - sinB * cosA * sinphi * sinA 
				//			- cosB * cosA * sintheta ) * 8;

				// rotate lighting 
				//int		L = ((sintheta * sinA - sinphi * costheta * cosA) 
				//			* cosB -sinphi *costheta * sinA - sintheta * cosA 
				//			- cosphi * costheta * sinB) * 8;

				if (z > zbuffer[o]) {
					zbuffer[o] = z;
					output[o] = ",.-~:;=!*#$@"[L > 0 ? L : 0];
				}
			}
		}
		// display the output and increase the parameters for rotation
		printf("\x1b[H");
		for (int i = 0; i < 1761; i++) {
				//putchar(i % 80 ? output[i] : 10);
				putchar(i % 80 ? output[i] : 10);
		}
		printf("\n");
		A += 0.04;
		B += 0.02;
	}
	return 0;
}
