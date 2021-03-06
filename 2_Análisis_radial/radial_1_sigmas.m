x = -10:0.001:10;
s = [0.5 1 1.5 2 2.5 3];

plot(0,0);
hold on;

for i=1:length(s)
	RBF = exp(-(x.^2)/2*s(i)^2);
    plot(x,RBF);
    Y_100_percent = max(RBF)-min(RBF);
    Y_1_percent = Y_100_percent/100;
    Y_99_percent = Y_100_percent - Y_1_percent;
    
    X_1_at_1_percent = sqrt(log(Y_99_percent)*(2*s(i)^2));

    top_line = ones(1,length(x));
    top_line = top_line.*Y_99_percent;
    plot(x,top_line);  
end