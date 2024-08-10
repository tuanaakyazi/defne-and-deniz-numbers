

function unique = Project2_Sub1(number)
numberArray = [];

% It finds the remainder when dividing the number by 10, sends the number it finds to the array called number array, and rounds the number with a comma to the nearest integer smaller than itself with the floor function.
% It repeats these operations as long as the number is greater than zero.
while number > 0 
    digit = mod(number, 10);
    numberArray = [digit, numberArray];
    number = floor(number/10);
end

% It checks whether any two numbers are equal to each other by looping through the array called number array.
for i = 1:length(numberArray) 
    for j = i+1:length(numberArray)
        if numberArray(i) == numberArray(j)
            unique = 0;
            return;
        else
            unique = 1;
        end
    end
end 

