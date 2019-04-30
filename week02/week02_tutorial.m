%BASIC OPERATIONS%

5+6
3-2
5*8
1/2
2^6

1 == 2 %false (0)
1 ~= 2 %true (1)

1 && 0 % and
1 || 0 % or

a = 3
a = 3; % semicolon surpressing output

b = 'hi';
c = (3>=1);
a = pi;

disp(a);
fprintf('2 decimals: %0.2f', a) % fprintf replaces disp(sprintf())

fprintf('6 decimals: %0.6f', a)

A = [1 2; 3 4; 5 6] % generates a 3*2 matrix

B = [1 2;
    3 4;
    5 6] %it is the same as above

v = [1 2 3] % generates a 1*3 vector
w = [1;2;3] % generates a 3*1 vector

u = 1:0.1:2 % generates a vector that goes from 1.0 to 2 (inc), taking leaps of 0.1

r = 1:6 % generates a vector that goes from 1 to 6 (inc)

ones (2,3) % generates a 2*3 matrix of ones
C = 2* ones(2,3) % generates a 2*3 matrix of twos

p = zeros(1,3) % generates a 1*3 matrix of zeros
q = rand(1,3) % generates a 1*3 matrix of random numbers (between 0 and 1)

W = randn(1,3) % generates a 1*3 matrix with numbers from Gaussian distribution

w = -6 + sqrt(10)*randn(1,1000)
hist(w) % plots a histogram
hist(w,50)

eye(4) % generates a 4*4 identity matrix

help eye % for help



%MOVING DATA AROUND%

size(A) % returns a matrix with the size of matrix A
sz = size(A)
size(sz)

size(A,1) % returns the size of the first dimension of A (rows)
length(v) % returns the size of the longest dimension, usually applied only to vectors

pwd % shows the current directory (or current path)

%cd 'c:\users\ang' % change directory to this path

ls % lists all the directories on current directory

%load featuresX.dat % loads data file into Matlab
%load priceY.dat 
%load('featuresX.dat') % it is the same as above

who % shows the variables in Matlab workspace

featuresX % displays the data in the file
size(featuresX)

whos % lists variables and also size, bytes and class

clear featuresX % deletes a variable

v = priceY(1:10) % sets v to be the first 10 elements of priceY
save hello.mat v; %saves the data in v into a new file hello.mat

clear % deletes all the variables in the workspace
save hello.txt v -ascii % saves as text (ASCII)

A = [1 2; 3 4; 5 6]

A(3,2) % returns the element on 3rd row 2nd column
A(2,:) % returns every element on the second row
A(:,2) % returns every element on the second column
A([1 3], :) % returns all elements of A from the first and third row
A(:,2) = [10; 11; 12] % assigning the elements of the second column with the values 10, 11, 12
A = [A, [100; 101; 102]] %appends another column vector to the right
A(:) % puts all elements of A into a single vector

C = [A B] % appends two matrices to form a third one

D = [A B] % appends two matrices but one on top of the other



%COMPUTING ON DATA%

E = [1 2; 3 4; 5 6]
F = [1 2 3; 4 5 6]
E*F % multiplying two matrices
E.*E % multiplying each element of the two matrices
E.^2 % squares every element of the matrix

v = [1; 2; 3]
1 ./ v % this returns a vector of 1 divided by each element of v

log(v)
exp(v)
abs(v) % absolute value of each element
-v % negative of v

v + ones(length(v), 1) % increments every element by one
v+1 % the same as above

A' % A Transpose
val = max(A) % returns the maximum value of A
[val, ind] = max(a) % returns the max value of A and its index

find(A < 3) % returns the elements on the matrix that are less than 3

magic(3) % creates a 3*3 matrix with all different, sequential elements

[r,c] = find(A>=7); % finds all elements that are greater than 7, r stands for row and c stands for column

sum(A) % sums all elements of A
prod(A) % product of all elements of A
floor(A) % rounds down all elements of A
ceil(A) % rounds up all elements of A

rand(3) % generates a random 3*3 matrix

max(A, [], 1) % returns the maximum of each column
max(A, [], 2) % returns the maximum of each row

flipup(eye(9)) % flips matrix around so the 1 diagonal is the opposite one

pinv(A) % pseudoinverse - returns the inverse of the matrix



%PLOTTING DATA%

t = [0:0.1:0.98];
y1 = sin(2*pi*4*t);
plot(t,y1)
y2 = cos(2*pi*4*t);
plot(t,y2)

plot(t, y2, 'r') % r for red
xlabel('time')
ylabel('value')
legend('sin', 'cos')
title('my plot')
print -dpng 'myPlot.png' % saves the picture as a png file

figure(1); plot(t,y1) % plotting two figures
figure(2); plot(t, y2) % on different viewports

subplot(1,2,1); % divides the plot into a 1*2 grid (first two parameters), access the first element (last parameter)

axis([0.5 1 -1 1]) % changes the axis (first two values for horizontal axis, last two for vertical axis)

clf; % clears figure

A = magic(5)
imagesc(A) % plots the matrix into a grid of colors, with different colors corresponding to different values
imagesc(A), colorbar, colormap grey; % does the same as above but in gray scale and adds a color bar to the side

a=1, b=2, c=3 % commachain of commands: prints out all three results



% CONTROL STATEMENTS: FOR, WHILE, IF STATEMENTS %

v = zeros(10,1)

for i=1:10, % makes i loop through all the values from 1 to 10
    v(i) = 2^1;
end; % v gets set to 2 to the power of each number

i = 1;
while i <= 5, % while i is less or equal to 5
    v(i) = 100; % replace the corresponding element in v with 100
    i = i+1; % increment i by 1
end

i = 1;
while true,
    v(i) = 999; % replace the corresponding element in v with 99
    i = i+1; % increment i by 1
    if i == 6, % if i is 6
        break; % break the while loop
    end; % this 'end' ends the if statement
end; % this 'end' ends the while statement

v(1) = 2;
if v(1)== 1,
    disp('The value is one');
elseif v(1) ==2,
    disp('The value is two');
else
    disp('The value is not one or two.');
end;

addpath('C:\Users\ang\Desktop') % adds to the search path
squareThisNumber(5)

X = [1 1; 1 2; 1 3]
y = [1;2;3]

theta=[0;1]
j = costFunctionJ(X,y,theta) % computes the cost function as defined in its function file



% VECTORIZATION %

%Unvectorized implementation%
prediction = 0.0;
for j = 1:n+1,
    prediction = prediction + theta(j) * x(j)
end;

%Vectorized implementation%
prediction = theta' * x;