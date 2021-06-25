x = -10:0.001:10;

RBF_1 = exp(-(x.^2)/2);
plot(x,RBF_1);
hold on;
Y_100_percent = max(RBF_1)-min(RBF_1);
Y_1_percent = Y_100_percent/100;
Y_99_percent = Y_100_percent - Y_1_percent;

X_1_at_1_percent = -sqrt(-log(Y_99_percent)*2);
X_2_at_1_percent = sqrt(-log(Y_99_percent)*2);

top_line = ones(1,length(x));
top_line = top_line.*Y_99_percent;
plot(x,top_line);
