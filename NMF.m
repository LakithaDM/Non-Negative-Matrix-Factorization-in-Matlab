A = [3 2 1; 4 3 7; 1 2 8];
W = rand(3,2);
H = rand(2,3);
norm(A - W*H);
for x = 1:60
    H =  H.*(((W')*A)./((W')*W*H));
    W =  W.*((A*(H'))./(W*H*(H')));
    mul = (A - W*H).^2;
    Ls = sum(mul);
    Loss = sum(Ls);
    L(1,x) = Loss;
end

fprintf('Loss: ')
disp(L)
fprintf('Original Matrix: \n')
disp(A)
fprintf('Output Matrix: \n')
disp(W*H)
plot(1:60,L)