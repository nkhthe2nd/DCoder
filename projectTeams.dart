/*
Problem Statement
  There are N students in a class, and the teacher wants
  to divide these students into some groups. Teacher says
  that groups of 2 or less are not allowed, so the teacher
  wants to have as many groups of 3 or more as possible.
  Divide the students so that the number of groups
  consisting of 3 or more students is maximized.

Input
  Single integer N.

Output
  Maximum number of groups that can be formed.

Constraints
  1<=N<100000

Sample Input
  6

Sample Output
  2
*/

import 'dart:io';

void main(List<String> args) {

  // Number of students.
  var N = num.parse(stdin.readLineSync());

  var studentsPerGroup = 3;  // Minimum number of students per group
  var groups = 1.0;  // number of groups

  while (studentsPerGroup <= N) {

    if ((N % studentsPerGroup) == 0) {
      groups = N / studentsPerGroup;
      break;
    }

    studentsPerGroup++;

  } 

  print(groups.toInt());

}