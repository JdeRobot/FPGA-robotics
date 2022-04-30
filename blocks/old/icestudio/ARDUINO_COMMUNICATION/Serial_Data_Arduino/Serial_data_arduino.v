reg [9:0] count = 10'd0;
reg[2:0] bits_data= 3'd0;
reg clock_data_reg = 1'd0;
reg ready_reg = 1'b0;
reg flag = 1'b1;
reg start = 1'b0;

localparam IDLE=4'd0;
localparam START=4'd1;
localparam DATAS=4'd2;
localparam STOP=4'd3;
localparam CONTROL_DATA=4'd4;

reg [3:0] state = IDLE;

always @(posedge clock)
begin
    case(state)
    IDLE:
    begin
        state<= (serial_data==1'b0) ? START:IDLE;
    end
    START:
    begin
        clock_data_reg<= 1'b0;
        if(count==10'd624)
        begin
            count<=10'd0;
            state<=DATAS;
        end
        else begin
            count<= count+10'd1;
            state<= START;
        end
    end
    DATAS:
    begin
        clock_data_reg<= flag;
        if(count==10'd624)
        begin
            count<=10'd0;
            bits_data<= bits_data+3'd1; //esto solo debe suceder 8 veces, por eso vamos a otro estado que lo controle
            flag<=!flag; // en realidad es solo visual, daria igual dejarlo siempre igual
            state<= CONTROL_DATA; //vamos al estado que controla si volvemos aqui o nos vamos a stop
        end
        else begin
            count<= count+10'd1;
            ready_reg<= (count>10'd300 && count<10'd320)? 1:0;
            state<= DATAS;
        end 
    end
    STOP:
    begin
        clock_data_reg<= 1'b1;
        if(count==10'd600) //debemos pasar al estado IDLE antes de la cuenta por seguridad.
        begin
            count<=10'd0;
            state<=IDLE;
        end
        else begin
            count<= count+10'd1;
            state<= STOP;
        end
    end
    CONTROL_DATA:
    begin
       state<=(bits_data==0)?STOP:DATAS; 
    end
    endcase
end

assign clock_data = clock_data_reg;
assign ready = ready_reg;