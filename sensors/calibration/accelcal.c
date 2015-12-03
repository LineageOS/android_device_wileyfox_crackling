/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main() {
	FILE *f1, *f2, *f3;
	int calibvals[3];


	f1 = fopen("/sys/devices/virtual/bst/ACC/fast_calibration_x","w");
        if (f1 == NULL) return -1;
	f2 = fopen("/sys/devices/virtual/bst/ACC/fast_calibration_y","w");
        if (f2 == NULL) return -1;
	f3 = fopen("/sys/devices/virtual/bst/ACC/fast_calibration_z","w");
        if (f3 == NULL) return -1;

        fprintf(f1,"3");
        fprintf(f2,"3");
        fprintf(f3,"1");

        fclose(f1);
        fclose(f2);
        fclose(f3);

	f1 = fopen("/sys/devices/virtual/bst/ACC/offset_x","r");
        if (f1 == NULL) return -1;
	f2 = fopen("/sys/devices/virtual/bst/ACC/offset_y","r");
        if (f2 == NULL) return -1;
	f3 = fopen("/sys/devices/virtual/bst/ACC/offset_z","r");
        if (f3 == NULL) return -1;

	fscanf(f1,"%d",&calibvals[0]);
	fscanf(f2,"%d",&calibvals[1]);
	fscanf(f3,"%d",&calibvals[2]);

        fclose(f1);
        fclose(f2);
        fclose(f3);

	f1 = fopen("/data/misc/sensor/fast_calib_a","w");
        if (f1 == NULL) return -2;
        fprintf(f1,"%d,%d,%d",calibvals[0],calibvals[1],calibvals[2]);
	fclose(f1);

	return 0;
}
