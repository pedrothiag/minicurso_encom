module ex6 (
    input logic x, clk, rst,
    output logic y
);
    //Definir um novo tipo, chamado t_state e criando
    //as variaveis de estado atual e estado próximo
    typedef enum {A, B, C, D} t_state;
    t_state currState, nextState;

    //Procedimento 1 - Registrador de Estado
    always_ff @(posedge clk, posedge rst) begin
        if(rst==1) begin
            currState = A;
        end
        else begin
            currState = nextState;
        end
    end

    //Procedimento 2 - Logica de Estado Proximo
    always_comb begin
        case (currState)
            A : begin
                if (x==1'b0) nextState = B;
                else nextState = A;
            end
            B : begin
                if (x==1'b0) nextState = B;
                else nextState = C;
            end
            C : nextState = D;
            D : nextState = A;
        endcase
    end

    //Procedimento 3 - Logica de Saida
    always_comb begin
        case (currState)
            A : y = 1'b1;
            B : y = 1'b0;
            C : y = 1'b0;
            D : y = 1'b1;
        endcase
    end
endmodule