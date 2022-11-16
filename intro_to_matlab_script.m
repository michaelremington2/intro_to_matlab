clear; close all, clc

% This is a comment. Below are some mathematical opperations.
%% Double percent signs are a section Break

% Below are some mathematical operations and other objects.
a=3; % semicolon is used to drop output
b=5;
c=(a*b+b^a)/a;
word = 'August';
% Check out the workspace pannel to see a list of our variables.

%% Variables and built in functions
pi 
i
j
inf
NaN
x = 16
sqrt(x)
cos(x)
help cos
%% Arrays
v = [1,2,3,4] % row vector
w = [1;2;3;4] % column vector
z = 5*v'+2*w % the prime transposes the vector
square_vector = [1,2;
                 3,4]
%% Other ways to create vectors
v = ones(2,1,3) % these can be n dimensional
w = rand(2,2)
z = zeros(2,2)

%% useful functions on arrays
v = [1,2,3,4];
max(v);
min(v);
mean(v);
median(v);
cov(v); % covariance matric
var(v); % variance
sum(v); 
diff(v);
cumsum(v);
% sorting
sort(v);
sort(v,"descend");
% array dimensions and length
length(v)
size(v)

%% Slicing an array
v = [10,9,8,7,6,5,4,3,2,1]; % start, step, end
v(1) %first entry
v(3) %third entry
v(1:3) %first through third entry
big_v = [v;v] %concats as column. use comma to concat as rows
big_v(:,5:end) % before comma is rows, after comma is columns

%% making a vector and using what we have learned
time = 0:1:20; % start, step, end
time;
noHours = length(time);     % Length of the interval considered
Temp = 75*ones(1,noHours) + randn(1,noHours); % 75F + noise 
disp('The max temperature is: ');
disp(max(Temp))
disp('The min temperature is: ');
disp(min(Temp))
figure; plot(time,Temp)    % Plot

%% More Plotting
x = 0: 0.1 : 2*pi;
y1 = sin(x);
y2 = cos(x);


plot(x,y1,'-',Color='b')
hold on
plot(x,y2,'+',Color='r')
axis([0,2*pi,-1,1])
xlabel('x')
ylabel('y')
title('sin vs cos')
legend('sin(x)', 'cos(x)')
grid on

%% More plotting
x = -4:1:4;
y = [.1 .26 .31 .4 .5 .45 .38 .21 .1];
bar(x,y)

%% Conditional Statements
%if (condition)
%    (matlab commands)
%end
a=2;
b=3;
c=4;
if (a<b)
    j=-1
end
%% advanced conditional statements
a=2;
b=3;
c=4;
if (a>=4)
    j=-1;
elseif (b>=4)
    j=-2;
elseif (c>=4)
    j=-3;
else
    j=0
end

j
%% For Loops
v = [1 2 7 9 1 4 1];
arrayLen = length(v);   % arrayLen = 7
for i=1:arrayLen 
    if v(i)>3
        v(i) = 0;       % set entry to zero
    end
end
v
%% While loops
% number of iterations are unknown a prior
n=5;
f=n;
while (n>1)
    n=n-1;
    f = f*n
end

%% loading, writing, and saving data
var1 = 1
% Variables in the workspace can be saved in a format naive to MATLAB,
% with extension .matThesavecommand can be used to store variables save filename
save filename var1 
% To load a file use the loadcommand:
load filename var1 

%% reading writiting excell 
NUM = xlsread('myDataExcel.xlsx');    % Read file
NUM(1:5,1:2)
xlswrite('newFile.xls',NUM);       % Write NUM into new file