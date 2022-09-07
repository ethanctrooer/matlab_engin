function [u_rotated, rotation_matrix] = rotateVector(u, angle)
% lab 3-2

angle_rad = angle * pi / 180

rotation_matrix = [cos(angle_rad) -sin(angle_rad); sin(angle_rad) cos(angle_rad)]

u_rotated = rotation_matrix * u

end