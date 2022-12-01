A = [3 2 1; 4 3 7; 1 2 8]; %initial matrix input, (Change here)
W = rand(3,2); %k = 2
H = rand(2,3);
for x = 1:15
    %Applying multiplicative update rule
    H =  H.*(((W')*A)./((W')*W*H));
    W =  W.*((A*(H'))./(W*H*(H')));
    Loss = sum(((A - W*H).^2),'all'); %Error of each iteration
    L(1,x) = Loss;
end

fprintf("Loss: ")
disp(L)
fprintf("Original Matrix: \n")
disp(A)
fprintf("Output Matrix: \n")
disp(W*H)
plot(1:15,L)
