
localparam NUM   = 16;
localparam WIDTH = $clog2(N);
logic [NUM  -1:0] vec;  // onehot
logic [WIDTH-1:0] bin;  // binary


/////////////////////////////////////
//Binary -> onehot
////////////////////////////////////
//Выбираем активный уровень на выход
always_comb begin : bin_2_hot
    vec = 0;
    vec[bin] = 1;
end


/////////////////////////////////////
//Onehot -> binary
////////////////////////////////////
//Из активного уровня выбираем прямое соответсвие
always_comb begin : hot_2_bin
    bin = 0;
    for (integer i = 0; i < NUM; i++) begin
        if (vec[i])
            bin = i;
    end
end
endmodule
