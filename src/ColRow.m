% Returns the rounded off position of the mouse
function [row,col] = ColRow(x, y)
    if x>=0 && x<1
        col=0;
    elseif x>=1 && x<2
        col=1;
    else 
        col=2;
    end
    if y>=0 && y<1
        row=0;
    elseif y>=1 && y<2
        row=1;
    else 
        row=2;
    end
 fprintf('Rounded Coordinate => (col %d, row %d)\n',(col+1),(row+1));
end
