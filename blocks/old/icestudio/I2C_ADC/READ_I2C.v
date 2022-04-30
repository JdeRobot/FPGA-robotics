  reg [4:0] count = 0;
  reg [2:0] pos = 3'd7;
  reg finish = 0;
  reg sda = 1'b1;
  reg scl = 1'b1;
  reg round = 1'b1;
  reg enable = 1'b0;
  reg ready_reg = 1'b0;
  reg [3:0] sda_data = 0;
  reg [2:0] count_data = 0;
  reg [7:0] direction;
  reg [7:0] data_reg = 8'b00000000;

  //Arduino uses A8: 10101000
  //(28h) 00101000
  //(29h) 00101001
  //20h 00100000 para ver si hemos escrito bien el modo normal
  //identification: 0F  00001111
  //OutTemp: 26h 00100110
  //Status: 27h 00100111

  localparam SDA_START   = 5'd0;
  localparam SCL_START   = 5'd1;
  localparam SCL_LOW_prev  = 5'd2;
  localparam SCL_LOW  = 5'd3;
  localparam SCL_HIGH       =5'd4;
  localparam ACK_CLOCK_LOW      = 5'd5;
  localparam ACK_CLOCK_HIGH_prev = 5'd6;
  localparam ACK_CLOCK_HIGH  = 5'd7;
  localparam DATA_WRITE = 5'd8;
  localparam SDA_STOP = 5'd9;
  localparam SCL_STOP = 5'd10;
  localparam DATA_FINAL_LOW = 5'd11;
  localparam DATA_FINAL_HIGH = 5'd12;
  localparam NMAK_LOW = 5'd13;
  localparam NMAK_HIGH = 5'd14;
  localparam CONTROL_TRANSACTION= 5'd15;
  localparam AUX= 5'd16;


  reg [4:0] state = CONTROL_TRANSACTION;
  reg [2:0] control_states=3'd0;

  always @(posedge clock)
      begin
          case(state)

          SDA_START:
          begin
            if(start==1'b1) 
            begin
              enable <=1'b1;
              scl<=1'b1;
              sda<=1'b1;
              if(count==5'd19)
              begin
                count<= 5'd0;
                sda<=1'b0;
                state<=SCL_START;
              end
              else begin
                count<=count+5'd1;
                state<=SDA_START;
              end 
            end
            else begin
              scl<=1'bz;
              sda<=1'bz;
              enable <= 1'b0;
            end
          end


          SCL_START: 
          begin
            scl<=1'b1;
            sda<=1'b0;
            if (count == 5'd19)
            begin
              count <= 5'd0;
              scl<=1'b0;
              state<=SCL_LOW_prev;
            end
            else begin
              count <= count + 5'd1;
              state <= SCL_START;
            end
          end


          SCL_LOW_prev:
          begin
            scl<=0;
            if(count == 5'd9)
            begin
              count <= 5'd0;
              state<=SCL_LOW;
              sda <= direction[pos]; 
              pos <= pos - 3'd1;
            end
            else begin
              count <= count + 5'd1;
              state <= SCL_LOW_prev;
            end
          end
          
          
          SCL_LOW:
          begin
            scl<=1'b0; 
            if(count == 5'd9)
            begin
              count <= 5'd0;
              state<=SCL_HIGH;
            end
            else begin
              count <= count + 5'd1;
              state<=SCL_LOW; 
            end
          end
          
          
          SCL_HIGH: 
          begin
            scl<=1'b1; 
            if(count == 5'd19)
            begin
              count <= 5'd0;
              if (pos == 3'd7)
                state<=ACK_CLOCK_LOW;
              else
                state<=SCL_LOW_prev;  
            end
            else begin
              count <= count + 5'd1;
              state<=SCL_HIGH;
            end
          end


          ACK_CLOCK_LOW:
          begin
            enable<=1'b0;
            scl<=1'b0;
            if(count==5'd19)
            begin
              count <= 5'd0;
              state<=ACK_CLOCK_HIGH_prev;
            end
            else begin
              count <= count + 5'd1;
              state<=ACK_CLOCK_LOW;
            end
          end


          ACK_CLOCK_HIGH_prev:
          begin
            sda<=1'b1;
            scl<=1'b1;
            if(count==5'd9)
            begin
              count <= 5'd0;
              state<= ACK_CLOCK_HIGH;
              //aqui metemos que pasa si el sda = 1, ppor eso es necesario este estado
            end
            else begin
              count <= count + 5'd1;
              state<=ACK_CLOCK_HIGH_prev;
            end
          end 
          
          
          ACK_CLOCK_HIGH:
          begin
            sda<=1'b1;
            scl<=1'b1;
            if(count==5'd9)
            begin
              count <= 5'd0;
              state <= CONTROL_TRANSACTION;
              scl<=1'b0;
            end
            else begin
              count <= count + 5'd1;
              state<=ACK_CLOCK_HIGH;
            end
          end   
 
//****************************************************************************************************************
          CONTROL_TRANSACTION:
          begin
            enable<=1'b1;
            if(count==5'd19)
            begin
              case(control_states)
              3'd0:
              begin
                state<=SDA_START;
                direction <= {direction_slave, 1'b0};
                control_states <= 3'd1;  
              end
              3'd1:
              begin
                state<=SCL_LOW_prev; 
                direction <= (round == 1'b1) ? registrer2read1:registrer2read2;
                control_states <= 3'd2;  
              end
              3'd2:
              begin
                state <= SCL_STOP;
                round <= !round;
                direction<={direction_slave, 1'b1};
                control_states <= 3'd3;  
              end
              3'd3:
              begin
                state <= DATA_FINAL_LOW;
                control_states <= 3'd4;  
              end
              3'd4:
              begin
                state <= SCL_STOP;
                control_states <= 3'd0;  
              end
              endcase
              count <= 5'd0;
            end
            else begin
              state<=CONTROL_TRANSACTION;
              count <= count+5'd1;
            end
          end
//***************************************************************************************************************
          SCL_STOP: 
          begin
            sda<=1'b0;
            scl<=1'b0;
            if (count == 5'd19)
            begin
              scl<=1'b1;
              sda<=1'b0;
              count <= 5'd0;
              state<=SDA_STOP;
            end
            else begin
              count <= count + 5'd1;
              state<=SCL_STOP;
            end
          end
          
          
          SDA_STOP:
          begin
            scl<=1'b1;
            sda<=1'b0;
            if (count == 5'd19)
            begin
              sda<=1'b1;
              count<=5'd0;
              if(finish)  
              begin
                state<= (readings == 1'b1) ? CONTROL_TRANSACTION : AUX;  //sera aux si queremos que pare de leer, sobre todo para debug PROBLEMA, SI LO MANDO A CONTROL TRANSACTION, SCL SE PONE A CERO
                scl<=1'b1;
              end
              else begin 
                state<=SDA_START;
              end
              finish <= 1'b0;
            end
            else begin
              state<=SDA_STOP;
              count <= count + 5'd1;
            end
          end
//******************************************************************************************************************

          DATA_FINAL_LOW:
          begin
          finish <= 1'b1;
          enable<=0;
          scl<=1'b0;
          sda<=1'b1;
          if(count == 5'd19)
          begin
            state<=DATA_FINAL_HIGH;
            count<=5'd0;
            sda_data<=sda_data + 3'd1;
          end
          else begin
            state<=DATA_FINAL_LOW;
            count<= count + 5'd1;
          end

            
          end
          DATA_FINAL_HIGH:
          begin
          scl<=1'b1;
          sda<=1'b1;
          if(count == 5'd19)
          begin
            count<=5'd0;
            data_reg[count_data]<=sda_in;
            count_data<=count_data+3'd1;
            if(sda_data==4'd8)
            begin
              ready_reg <=1'b1;
              state<=NMAK_LOW; 
              sda_data<=4'd0; 
            end
            else begin
              state<=DATA_FINAL_LOW;
            end
            end
            else begin
              state<=DATA_FINAL_HIGH;
              count<= count + 5'd1;
          end
          end

         
          NMAK_LOW:
          begin
          enable<=1'b1;
          scl<=1'b0;
          sda<=1'b1;
          if(count == 5'd19)
          begin
            state<=NMAK_HIGH;
            count<=5'd0;
          end
          else begin
            state<=NMAK_LOW;
            count<= count + 5'd1;
          end
          end
          
          
          NMAK_HIGH:
          begin
          scl<=1'b1;
          sda<=1'b1;
          if(count == 5'd19)
           begin
            state<=CONTROL_TRANSACTION;
            count<=5'd0;
            scl<=1'b0;//ayer
            ready_reg<=1'b0;
          end
          else begin
            state<=NMAK_HIGH;
            count<= count + 5'd1;
          end
          end

          AUX:
          begin
            state <= AUX;
          end

          endcase
      end
      assign sda_out = sda;
      assign scl_out = scl;
      assign sda_enable =enable;
      assign data = data_reg;
      assign ready = ready_reg;