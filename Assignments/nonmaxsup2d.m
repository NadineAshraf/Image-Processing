%% Nonmaxmimum Suppression
function imgResult = nonmaxsup2d(I)
imgResult = zeros(size(I));
for y = 2:size(I, 1)-1
    for x = 2:size(I, 2)-1
        offx = [1 1 0 -1 -1 -1  0  1];
        offy = [0 1 1  1  0 -1 -1 -1];
        val = I(y, x);
        is_max = true;
        for i=1:8
            if y == 2 && offy(i) == -1
                continue
            end
            if y ==size(I,1)-1 && offy(i) == 1
                continue
            end
            if x ==2 && offx(i) == -1
                continue
            end
            if x ==size(I,2)-1 && offx(i) == 1
                continue
            end
            if val < I(y+offy(i), x+offx(i))
                is_max = false;
                break;
            end
        end
        if is_max
            imgResult(y, x) = val;
        end
    end
end
end