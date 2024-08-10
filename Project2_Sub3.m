


function arithmeticMean = Project2_Sub3(digitArray)

% It loops through the array called diggit array with three nested for loops.
% If the indexes i, j, k of the array are different from each other, it finds the average of the numbers corresponding to these indexes in the array.
% Since the sum of the indexes in the array is 10, we can find the index other than the 3 selected indexes by subtracting the 3 selected indexes from 10.
% If the average of the numbers corresponding to the 3 selected indexes is equal to the number corresponding to the remaining other index, it returns 1 as the output parameter, otherwise it returns 0.
for i = 1:length(digitArray)
    for j = i+1:length(digitArray)
        for k = j+1 : length(digitArray)
           if i ~= j && i ~= k && j ~= k
               avarage = (digitArray(i) + digitArray(j) + digitArray(k))/3;
               if avarage == digitArray(10-(i+j+k))
                   arithmeticMean = 1;
                   return;
               else
                   arithmeticMean = 0;
               end
           end
        end
    end
end

