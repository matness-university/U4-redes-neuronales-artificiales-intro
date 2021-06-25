function [PERCEPTRON] = build_perceptron_network(NUMBER_OF_NEURONS, NUMBER_OF_ENTRIES)
    PERCEPTRON.MID_LAYER_WEIGHTS = -1+2*rand(NUMBER_OF_NEURONS, NUMBER_OF_ENTRIES + 1);
    PERCEPTRON.MID_LAYER_RESULTS = zeros(1, NUMBER_OF_NEURONS);

    PERCEPTRON.FINAL_LAYER_WEIGHTS = -1+2*rand(1, NUMBER_OF_NEURONS + 1);
    PERCEPTRON.FINAL_LAYER_RESULT = 0;
end