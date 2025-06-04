%%Name: Muqaddas Bano           Student ID: 2023B8010815002

%%
% *%Question 1.*
% The combined resistance RT of three resistors R1, R2, and R3 in
% parallel\n is;Given R1 = 1, R2 = 2, and R3 = 3. Create variables for the three resistors and store values in each, and then calculate the combined resistance.
% values of resistors R1, R2, and R3
R1 = 1;
R2 = 2;
R3 = 3;

% Calculating in parallel combined resistance (RT) 
RT = 1 / (1/R1 + 1/R2 + 1/R3);

% Display the result
fprintf('The combined resistance (RT) is %.2f ohms\n', RT);

Answer
The combined resistance (RT) is 0.55 ohms

%%
% *Question 2.*

function y = bsum(x, n)
    % Initialize the sum
    y = 0;
    
    % Calculate the sum using a loop
    for k = 1:n
        y = y + (2 * x) ^ k;
    end
end
x = 2;  % Replace with your desired value of x
n = 5;  % Replace with your desired value of n

result = bsum(x, n);

disp(['The result for x = ', num2str(x), ' and n = ', num2str(n), ' is: ', num2str(result)]);
 

Answer
The result for x = 2 and n = 5 is: 1364

% *%Question 3.*
x = 12.34;
y = 4.56;

fprintf('x is %.3f\n', x);
fprintf('x is %d\n', floor(x));
fprintf('x is %.1f and y is %.1f\n', x, y);
fprintf('y is %.1f !\n', y);

Answer
x is 12.340
x is 12
x is 12.3 and y is 4.6
y is 4.6 !


%%
% *%Question 4.*
% Prompt the user for input
b = input('Enter the first side: ');
c = input('Enter the second side: ');
alpha_deg = input('Enter the angle between them (in degrees): ');

% Convert degrees to radians
alpha_rad = alpha_deg * pi / 180;

% Calculate the third side 'a'
a = sqrt(b^2 + c^2 - 2 * b * c * cos(alpha_rad));

% Display the result with three decimal places
fprintf('The third side is %.3f\n', a);
 
Answer
thirdside
Enter the first side: 2.2
Enter the second side: 4.4
Enter the angle between them (in degrees): 50
The third side is 3.429
%
%%
% *Question 5.*
function volume = cylinder_volume(r, h)
    if r > 0 && h > 0
        volume = pi * r^2 * h;
    else
        error('Both radius (r) and height (h) must be positive.');
    end
end
radius = 3.5;  % Replace with your desired radius value
height = 8.2;  % Replace with your desired height value

volume = cylinder_volume(radius, height);

fprintf('The volume of the cylinder is %.3f cubic units\n', volume);

Answer
The volume of the cylinder is 315.573 cubic units

% *%Question 6.* 
% Prompt the user for input
letter = input('Enter your answer: ', 's');

% Check the user's input
if letter == 'y' || letter == 'Y'
    disp('OK, continuing');
elseif letter == 'n' || letter == 'N'
    disp('OK, halting');
else
    disp('Error');
end

Answer
Enter your answer: Y
OK, continuing


% *Question 7.* %
% Prompt the user for a valid maximum Celsius value
max_temp = input('When prompted, enter a temperature in degrees Celsius in the range -16 to 20.\nEnter a maximum temperature (in Celsius): ');

% Check if the entered maximum temperature is within the valid range
while max_temp < -16 || max_temp > 20
    disp('Error! The maximum temperature must be in the range from -16 to 20.');
    max_temp = input('Enter a valid maximum temperature (in Celsius): ');
end

% Display the header of the temperature table
fprintf('F      C\n');

% Loop to convert and print temperatures
for F = 0:5:round(max_temp * 9 / 5 + 32) % Convert the maximum Celsius to Fahrenheit
    C = (F - 32) * 5 / 9;
    fprintf('%-6.1f %-6.1f\n', F, C);
end

Answer
prtemps
When prompted, enter a temperature in degrees Celsius in the range -16 to 20.
Enter a maximum temperature (in Celsius): 30
Error! The maximum temperature must be in the range from -16 to 20.
Enter a valid maximum temperature (in Celsius): 30
Error! The maximum temperature must be in the range from -16 to 20.
Enter a valid maximum temperature (in Celsius): 9
F      C
0.0    -17.8 
5.0    -15.0 
10.0   -12.2 
15.0   -9.4  
20.0   -6.7  
25.0   -3.9  
30.0   -1.1  
35.0   1.7   
40.0   4.4   
45.0   7.2 

%%
% *%Question 8.*
function wcf_value = wcf(T, V)
    wcf_value = 35.7 + 0.6 * T - 35.7 * (V^0.16) + 0.43 * T * (V^0.16);
end
%Script 
% script.m
% Initialize temperature and wind speed ranges
temperature_range = -25:5:50;  % Temperatures from -25 to 50 in steps of 5
wind_speed_range = 0:2:30;     % Wind speeds from 0 to 30 in steps of 2

% Display the header of the WCF table
fprintf('Temperature (F)  Wind Speed (mph)  Wind Chill Factor\n');

% Calculate and display the WCF values in a table
for T = temperature_range
    for V = wind_speed_range
        wcf_value = wcf(T, V);
        fprintf('%9d          %9d            %13.2f\n', T, V, wcf_value);
    end
end
 

Answer

script
Temperature (F)  Wind Speed (mph)  Wind Chill Factor
      -25                  0                    20.70
      -25                  2                   -31.20
      -25                  4                   -37.28
      -25                  6                   -41.17
      -25                  8                   -44.09
      -25                 10                   -46.44
      -25                 12                   -48.43
      -25                 14                   -50.15
      -25                 16                   -51.68
      -25                 18                   -53.06
      -25                 20                   -54.32
      -25                 22                   -55.47
      -25                 24                   -56.54
      -25                 26                   -57.53
      -25                 28                   -58.46
      -25                 30                   -59.34
      -20                  0                    23.70
      -20                  2                   -25.80
      -20                  4                   -31.60
      -20                  6                   -35.31
      -20                  8                   -38.09
      -20                 10                   -40.33
      -20                 12                   -42.23
      -20                 14                   -43.87
      -20                 16                   -45.33
      -20                 18                   -46.65
      -20                 20                   -47.84
      -20                 22                   -48.94
      -20                 24                   -49.96
      -20                 26                   -50.91
      -20                 28                   -51.80
      -20                 30                   -52.64
      -15                  0                    26.70
      -15                  2                   -20.39
      -15                  4                   -25.92
      -15                  6                   -29.44
      -15                  8                   -32.09
      -15                 10                   -34.23
      -15                 12                   -36.03
      -15                 14                   -37.60
      -15                 16                   -38.98
      -15                 18                   -40.23
      -15                 20                   -41.37
      -15                 22                   -42.42
      -15                 24                   -43.39
      -15                 26                   -44.29
      -15                 28                   -45.14
      -15                 30                   -45.93
      -10                  0                    29.70
      -10                  2                   -14.99
      -10                  4                   -20.23
      -10                  6                   -23.58
      -10                  8                   -26.09
      -10                 10                   -28.12
      -10                 12                   -29.83
      -10                 14                   -31.32
      -10                 16                   -32.63
      -10                 18                   -33.82
      -10                 20                   -34.90
      -10                 22                   -35.89
      -10                 24                   -36.81
      -10                 26                   -37.67
      -10                 28                   -38.47
      -10                 30                   -39.23
       -5                  0                    32.70
       -5                  2                    -9.59
       -5                  4                   -14.55
       -5                  6                   -17.72
       -5                  8                   -20.09
       -5                 10                   -22.01
       -5                 12                   -23.63
       -5                 14                   -25.04
       -5                 16                   -26.28
       -5                 18                   -27.40
       -5                 20                   -28.43
       -5                 22                   -29.37
       -5                 24                   -30.24
       -5                 26                   -31.05
       -5                 28                   -31.81
       -5                 30                   -32.52
        0                  0                    35.70
        0                  2                    -4.19
        0                  4                    -8.87
        0                  6                   -11.85
        0                  8                   -14.09
        0                 10                   -15.90
        0                 12                   -17.43
        0                 14                   -18.76
        0                 16                   -19.93
        0                 18                   -20.99
        0                 20                   -21.95
        0                 22                   -22.84
        0                 24                   -23.66
        0                 26                   -24.43
        0                 28                   -25.14
        0                 30                   -25.82
        5                  0                    38.70
        5                  2                     1.22
        5                  4                    -3.18
        5                  6                    -5.99
        5                  8                    -8.09
        5                 10                    -9.79
        5                 12                   -11.23
        5                 14                   -12.48
        5                 16                   -13.58
        5                 18                   -14.58
        5                 20                   -15.48
        5                 22                   -16.31
        5                 24                   -17.09
        5                 26                   -17.81
        5                 28                   -18.48
        5                 30                   -19.11
       10                  0                    41.70
       10                  2                     6.62
       10                  4                     2.50
       10                  6                    -0.12
       10                  8                    -2.09
       10                 10                    -3.69
       10                 12                    -5.03
       10                 14                    -6.20
       10                 16                    -7.23
       10                 18                    -8.16
       10                 20                    -9.01
       10                 22                    -9.79
       10                 24                   -10.51
       10                 26                   -11.18
       10                 28                   -11.81
       10                 30                   -12.41
       15                  0                    44.70
       15                  2                    12.02
       15                  4                     8.19
       15                  6                     5.74
       15                  8                     3.90
       15                 10                     2.42
       15                 12                     1.17
       15                 14                     0.08
       15                 16                    -0.88
       15                 18                    -1.75
       15                 20                    -2.54
       15                 22                    -3.26
       15                 24                    -3.94
       15                 26                    -4.56
       15                 28                    -5.15
       15                 30                    -5.70
       20                  0                    47.70
       20                  2                    17.42
       20                  4                    13.87
       20                  6                    11.60
       20                  8                     9.90
       20                 10                     8.53
       20                 12                     7.37
       20                 14                     6.36
       20                 16                     5.47
       20                 18                     4.67
       20                 20                     3.93
       20                 22                     3.26
       20                 24                     2.64
       20                 26                     2.06
       20                 28                     1.51
       20                 30                     1.00
       25                  0                    50.70
       25                  2                    22.82
       25                  4                    19.55
       25                  6                    17.47
       25                  8                    15.90
       25                 10                    14.64
       25                 12                    13.57
       25                 14                    12.64
       25                 16                    11.82
       25                 18                    11.08
       25                 20                    10.41
       25                 22                     9.79
       25                 24                     9.21
       25                 26                     8.68
       25                 28                     8.18
       25                 30                     7.71
       30                  0                    53.70
       30                  2                    28.23
       30                  4                    25.24
       30                  6                    23.33
       30                  8                    21.90
       30                 10                    20.74
       30                 12                    19.77
       30                 14                    18.92
       30                 16                    18.17
       30                 18                    17.49
       30                 20                    16.88
       30                 22                    16.31
       30                 24                    15.79
       30                 26                    15.30
       30                 28                    14.84
       30                 30                    14.41
       35                  0                    56.70
       35                  2                    33.63
       35                  4                    30.92
       35                  6                    29.19
       35                  8                    27.90
       35                 10                    26.85
       35                 12                    25.97
       35                 14                    25.20
       35                 16                    24.52
       35                 18                    23.91
       35                 20                    23.35
       35                 22                    22.84
       35                 24                    22.36
       35                 26                    21.92
       35                 28                    21.51
       35                 30                    21.12
       40                  0                    59.70
       40                  2                    39.03
       40                  4                    36.61
       40                  6                    35.06
       40                  8                    33.90
       40                 10                    32.96
       40                 12                    32.17
       40                 14                    31.48
       40                 16                    30.87
       40                 18                    30.32
       40                 20                    29.82
       40                 22                    29.36
       40                 24                    28.94
       40                 26                    28.54
       40                 28                    28.17
       40                 30                    27.82
       45                  0                    62.70
       45                  2                    44.43
       45                  4                    42.29
       45                  6                    40.92
       45                  8                    39.90
       45                 10                    39.07
       45                 12                    38.37
       45                 14                    37.76
       45                 16                    37.22
       45                 18                    36.74
       45                 20                    36.30
       45                 22                    35.89
       45                 24                    35.51
       45                 26                    35.16
       45                 28                    34.83
       45                 30                    34.53
       50                  0                    65.70
       50                  2                    49.83
       50                  4                    47.97
       50                  6                    46.79
       50                  8                    45.89
       50                 10                    45.17
       50                 12                    44.57
       50                 14                    44.04
       50                 16                    43.57
       50                 18                    43.15
       50                 20                    42.77
       50                 22                    42.42
       50                 24                    42.09
       50                 26                    41.78
       50                 28                    41.50
       50                 30                    41.23