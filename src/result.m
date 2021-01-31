function result = result(board)
    % Horizontal
    if (board(1,1) == board(1,2) && board(1,2) == board(1,3) && board(1,1) ~= -1)
        fprintf('(1,1)=(1,2)=(1,3)\n'); % First Col
        result = board(1,1);
    elseif (board(2,1) == board(2,2) && board(2,2) == board(2,3) && board(2,1) ~= -1)
        fprintf('(2,1)=(2,2)=(2,3)\n'); % Second Col
        result = board(2,1);
    elseif (board(3,1) == board(3,2) && board(3,2) == board(3,3) && board(3,1) ~= -1)        
        fprintf('(3,1)=(3,2)=(3,3)\n'); % Third Col
        result = board(3,1);
    % Vertical
    elseif (board(1,1) == board(2,1) && board(2,1) == board(3,1) && board(3,1) ~= -1)       
        fprintf('(1,1)=(2,1)=(3,1)\n'); % First Row
        result = board(1,1);
    elseif (board(1,2) == board(2,2) && board(2,2) == board(3,2) && board(1,2) ~= -1)      
        fprintf('(1,2)=(2,2)=(3,2)\n'); % Second Row              
        result = board(1,2);
    elseif (board(1,3) == board(2,3) && board(2,3) == board(3,3) && board(1,3) ~= -1)           
        fprintf('(1,3)=(2,3)=(3,3)\n'); % Third Row             
        result = board(1,3);
    % Diagonal
    elseif (board(1,1) == board(2,2) && board(2,2) == board(3,3) && board(1,1) ~= -1)
        fprintf('(1,1)=(2,2)=(3,3)\n'); % First Diagonal         
        result = board(1,1); 
    elseif (board(1,3) == board(2,2) && board(2,2) == board(3,1) && board(2,2) ~= -1)
        fprintf('(1,3)=(2,2)=(3,1)\n');  % Second Diagonal         
        result = board(1,3);
    elseif length(find(board==-1)) == 0
        result = 2;
    else
        result = -1;
    end
end
