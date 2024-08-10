
function [ minimumDenizNumber, maximumDenizNumber, amountOfDenizNumber] = Project2_Question1()
counter = 0;
denizNumberArray = [];

% Sends numbers between 1000 and 9999 to the first subfunction
% If the output parameter of the first subfunction is 1, it sends the number between 1000 and 9999 to the second subfunction.
% It sends the array, which is the output parameter of the second subfunction, to the third subfunction.
% If the output parameter of the third subfunction is 1, it increments the counter by one and sends the number to the array named denizNumberArray.
for i = 1000:9999
    unique = Project2_Sub1(i);
    if unique == 1
        [digitArray] = Project2_Sub2(i);
        arithmeticMean = Project2_Sub3(digitArray);
        if arithmeticMean == 1;
            counter = counter + 1;
            denizNumberArray = [denizNumberArray , i];
        end
    end
end
amountOfDenizNumber = counter;

% It accepts the number corresponding to the first index of the array as the minimum and maximum number.
% It loops through the array with the for loop and checks whether the number is smaller than the smallest number or larger than the largest number.
minimumDenizNumber = denizNumberArray(1);
maximumDenizNumber = denizNumberArray(1);
for j = 2 : length(denizNumberArray)
    if denizNumberArray(j) < minimumDenizNumber
        minimumDenizNumber = denizNumberArray(j);
    end
    if denizNumberArray(j) > maximumDenizNumber
        maximumDenizNumber = denizNumberArray(j);
    end
end


