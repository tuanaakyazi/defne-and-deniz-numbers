


function [digitArray] = Project2_Sub2(number)
digitArray = [];

% It finds the remainder when dividing the number by 10, sends the number it finds to the array called number array, and rounds the number with a comma to the nearest integer smaller than itself with the floor function.
% It repeats these operations as long as the number is greater than zero.
% Shows the resulting string as the function's output parameter
while number > 0
    digit = mod(number, 10);
    digitArray = [digit, digitArray];
    number = floor(number/10);
end




