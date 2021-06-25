function [PERCEPTRON] = run_perceptron_network(PERCEPTRON, ENTRIES)
    
    mid_layer_dimensions = size(PERCEPTRON.MID_LAYER_WEIGHTS);
    
    for row=1:mid_layer_dimensions(1)
        aux = sum([ENTRIES 1] .* PERCEPTRON.MID_LAYER_WEIGHTS(row,:));
        PERCEPTRON.MID_LAYER_RESULTS(1,row) = aux>=0;
    end
    
    aux = sum([PERCEPTRON.MID_LAYER_RESULTS 1] .* PERCEPTRON.FINAL_LAYER_WEIGHTS);
    PERCEPTRON.FINAL_LAYER_RESULT = aux>=0;
end