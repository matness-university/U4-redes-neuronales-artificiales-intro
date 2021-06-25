x = -10:0.001:10;

RBF_3 = 1./(1+x.^2).^(1/2);
plot(x,RBF_3);
hold on;
Y_100_percent = max(RBF_3)-min(RBF_3);
Y_1_percent = Y_100_percent/100;
Y_99_percent = Y_100_percent - Y_1_percent;

X_1_at_1_percent = -sqrt(1./sqrt(Y_99_percent)-1);
X_2_at_1_percent = sqrt(1./sqrt(Y_99_percent)-1);

top_line = ones(1,length(x));
top_line = top_line.*Y_99_percent;
plot(x,top_line);

