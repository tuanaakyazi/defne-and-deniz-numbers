

% Yes, the algorithm I developed for the number of seas was very useful. 
% By typing it the same way, I changed a few places to accommodate 5-digit numbers and also had to add or change some things to get the desired results.

function Project2_Question2()

counter = 0;            % Counter used to find the amount of defne numbers.
%defneNumberArray = [];  


for number = 10000 : 99999
    unique = 1;           % The  variable that name is unique is initialized to 1 in each loop, and if the number is not unique, its value changes to 0.
    numberArray = [];     % Array that holds the digits of a number.
        
    % Loop that separates a number into its digits and transfers them to an array
    while number > 0 
        digit = mod(number, 10);
        numberArray = [digit, numberArray];
        number = floor(number/10);
    end

    % Loop that loops through the array of digits of the number and checks whether the digits of the number are unique
    for i = 1:length(numberArray) 
        for j = i+1:length(numberArray)
            if numberArray(i) == numberArray(j)
                unique = 0;
                break;
            end
        end
    end 
    
    % If the digits of the number are unique, it loops through the array that include digits of the number.
    % Checks whether the average of any four digits is equal to the remaining digit.
    % If equal, it prints this 5 digit number on the screen and underlines the 4 digits it averages.
    % It also increments the counter by 1 if the condition is met.
    if unique == 1 
        for i = 1 : length(numberArray)
            for j = i+1 : length(numberArray)
                for k = j+1 : length(numberArray)
                    for m = k+1 : length(numberArray)
                        if i ~= j && i ~= k && i ~=m && j~=k && j~=m && k~=m
                            avarage = (numberArray(i) + numberArray(j) + numberArray(k) + numberArray(m))/4;
                            if avarage == numberArray(15-(i+j+k+m))
                                counter = counter + 1;
                                fprintf('%d %d %d %d %d\n', numberArray);
                                if (numberArray(1) + numberArray(2) + numberArray(3) + numberArray(4))/4 == numberArray(5)
                                    fprintf('- - - -  \n');
                                end
                                if (numberArray(1) + numberArray(2) + numberArray(3) + numberArray(5))/4 == numberArray(4)
                                    fprintf('- - -   - \n');
                                end
                                if (numberArray(1) + numberArray(3) + numberArray(4) + numberArray(5))/4 == numberArray(2)
                                    fprintf('-   - - -\n');
                             
                                end 
                                if (numberArray(2) + numberArray(3) + numberArray(4) + numberArray(5))/4 == numberArray(1)
                                    fprintf('   - - - -\n');
                                    
                                end
                                if (numberArray(1) + numberArray(2) + numberArray(4) + numberArray(5))/4 == numberArray(3)
                                    fprintf('- -   - -\n');
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
fprintf('Amount of defne number is %d\n',counter); 
