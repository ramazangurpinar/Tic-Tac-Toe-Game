function board = move(whoWillPlay, board)
    [x, y] = ginput(1); % mouse click position
    fprintf('Coordinate (x,y) => (%.2f , %.2f)\n',x,y)
    fprintf('fix(x),fix(y) => (%d , %d)\n',fix(x),fix(y))
    iIndices = (2-fix(y))+1;
    jIndices = (fix(x)+1);
    row=0;
    col=0;
    x_point=x;
    y_point=y;
    [row,col] = ColRow(x_point,y_point);

    fprintf('board matrix =>(iIncides,jIndices): %d , %d\n',iIndices,jIndices);
    
    if board(iIndices, jIndices) ~= -1 % Daha önceden týklanýldýðýný kontrol ediyoruz
       board = -1; % invalid 
    else
        board(iIndices, jIndices) = whoWillPlay; % set the board matrix
        fprintf('board(%d ,%d) => %d\n',iIndices,jIndices,board(iIndices,jIndices));
        for i=1:3
            for j=1:3
               fprintf('%d ',board(i,j));
            end
            fprintf('\n');
        end
        fprintf('------------------------------\n');
        if whoWillPlay == 1
            x_Point(col, row); % Set X to Figure
        else
            o_Point(col, row); % Set O to Figure
        end
    end
end
