    clc;
    clear all;
    figure('Name','XOX','NumberTitle','off');
    plot(0)
    axis([0 3 0 3])
    %xMin xMax yMin yMax 
    set(gca,'xTick',0:3)
    set(gca,'yTick',0:3)
    set(gca,'xTickLabel',[0 1 2 3]); 
    set(gca,'yTickLabel',[0 1 2 3]);
    grid on
    title('Who Will Play : X');
    fprintf('Who Will Play : X\n');    
    whoWillPlay = 1; % Game Start With X 
    board = zeros(3);
    board = board-1;
    % the board of the game 
    % => -1  -
    % =>  0  O
    % =>  1  X
    winner = -1; % No winner
    
% -1 No winner
while winner == -1
    next = move(whoWillPlay, board); 
    if next == -1 
       msgbox('Invalid Click', 'Error','error');
    else
       board = next; 
       title('');
       whoWillPlay = mod(whoWillPlay + 1,2); 
       if whoWillPlay == 0
           title('Who Will Play : O');
           fprintf('Who Will Play : O\n');
       else
           title('Who Will Play : X');
           fprintf('Who Will Play : X\n');
       end
       winner = result(board);
    end
end
    fprintf('Winner Variable : %d \n',winner);    
if winner == 0 % O Winner
    fprintf('O Wins\n');
    xlabel('Game Finish');
elseif winner == 1 % X Winner
    fprintf('X Wins\n');
    xlabel('Game Finish');
else % No Winner
    fprintf('No Winner\n');
    xlabel('Game Finish');
end