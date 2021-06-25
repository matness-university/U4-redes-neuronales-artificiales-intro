x = -10:0.001:10;

RBF_2 = 1./(1+x.^2);
plot(x,RBF_2);
hold on;
Y_100_percent = max(RBF_2)-min(RBF_2);
Y_1_percent = Y_100_percent/100;
Y_99_percent = Y_100_percent - Y_1_percent;

X_1_at_1_percent = -sqrt((1./Y_99_percent)-1);
X_2_at_1_percent = sqrt((1./Y_99_percent)-1);

top_line = ones(1,length(x));
top_line = top_line.*Y_99_percent;
plot(x,top_line);
