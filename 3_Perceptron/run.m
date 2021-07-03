function [RESULT] = run(MID_LAYER_WEIGHTS, FINAL_LAYER_WEIGHTS, SET)

    mid_layer_dimensions = size(MID_LAYER_WEIGHTS);
    mid_layer_results = zeros(1,mid_layer_dimensions(2));
    
    for row=1:mid_layer_dimensions(1)
        mid_layer_results(row) = sum([SET 1].*MID_LAYER_WEIGHTS(row,:)) >= 0;
    end
     
    final_result = sum([mid_layer_results 1].*FINAL_LAYER_WEIGHTS) >= 0;
    
    RESULT = final_result;
end

% MID_LAYER_WEIGHTS = [0.91	0.65	0.41	-0.55
% 0.49	0.40	0.18	-0.39
% 0.23	0.09	0.26	-0.32
% 0.65	0.66	0.79	-0.07]
% 
% FINAL_LAYER_WEIGHTS = [-0.22 0.20 -0.27 0.62 -0.35]
% 
% result = run(MID_LAYER_WEIGHTS,FINAL_LAYER_WEIGTHS,[0 1 1])