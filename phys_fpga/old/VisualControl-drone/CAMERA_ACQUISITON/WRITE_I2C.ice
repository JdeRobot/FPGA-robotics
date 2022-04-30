{
  "version": "1.2",
  "package": {
    "name": "WRITE_I2C",
    "version": "1.0",
    "description": "This module will write a byte in a specified slave",
    "author": "Juan Ordoñez Cerezo",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2058%2058%22%3E%3Ccircle%20cx=%2229%22%20cy=%2229%22%20r=%2229%22%20fill=%22#23a24d%22/%3E%3Cpath%20d=%22M29%200C21.243%200%2014.204%203.051%209%208.011V26l19.951%2024.993A.03.03%200%200%200%2029%2050.97c0%20.025.029.04.049.023L49%2026V8.011C43.796%203.051%2036.757%200%2029%200z%22%20fill=%22#ebd6bd%22/%3E%3Cpath%20d=%22M29%2035c-3.748%200-7.093%201.72-9.294%204.412l9.245%2011.581A.03.03%200%200%200%2029%2050.97c0%20.025.029.04.049.023l9.245-11.581A11.975%2011.975%200%200%200%2029%2035z%22%20fill=%22#4c4c4c%22/%3E%3Cpath%20d=%22M29%200c-3.516%200-6.883.633-10%201.78V18l9.951%207.961c.02.016.049.001.049-.024%200%20.025.029.04.049.024L39%2018V1.78A28.897%2028.897%200%200%200%2029%200z%22%20fill=%22#ebba16%22/%3E%3Cpath%20d=%22M9.432%2025.654L19%2018V1.78A29.05%2029.05%200%200%200%209%208.011v17.435c0%20.223.258.347.432.208zM39%2018l9.568%207.654a.266.266%200%200%200%20.432-.208V8.011A29.05%2029.05%200%200%200%2039%201.78V18z%22%20fill=%22#ed8a19%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "57783994-820b-4a97-b38a-fa8904babf98",
          "type": "basic.input",
          "data": {
            "name": "start",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -1280,
            "y": -1024
          }
        },
        {
          "id": "974cf1da-48c0-40bd-a080-c1cf3afb4f91",
          "type": "basic.input",
          "data": {
            "name": "clock",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -1128,
            "y": -952
          }
        },
        {
          "id": "c5e713e7-17d4-4b66-9e52-ba709350d9bf",
          "type": "basic.output",
          "data": {
            "name": "scl",
            "pins": [
              {
                "index": "0",
                "name": "DD5",
                "value": "87"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 440,
            "y": -888
          }
        },
        {
          "id": "cae4e8f1-f1c8-4c7b-9ea5-b807ebb02cb1",
          "type": "basic.output",
          "data": {
            "name": "ready",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 416,
            "y": -560
          }
        },
        {
          "id": "a079b2c9-b21f-4bee-9f3f-875c6ebc8d35",
          "type": "basic.output",
          "data": {
            "name": "finish",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": -744,
            "y": -272
          }
        },
        {
          "id": "5bc0374a-1a1b-4418-97d3-276d74ecc31b",
          "type": "basic.input",
          "data": {
            "name": "sda",
            "pins": [
              {
                "index": "0",
                "name": "DD4",
                "value": "88"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -432,
            "y": -216
          }
        },
        {
          "id": "20cbc10d-f86d-419d-aea2-32051c2f9112",
          "type": "basic.output",
          "data": {
            "name": "dout",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": -216,
            "y": 8
          }
        },
        {
          "id": "b725fac1-e874-43fe-8f88-f36ba31f4606",
          "type": "9b4eccd4c51ae63a95843afa85f05aefb8d71a44",
          "position": {
            "x": -400,
            "y": -8
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "acab6151-cf4c-45cc-aaa5-578de22c6d95",
          "type": "basic.code",
          "data": {
            "code": "localparam WRITE1 = 2'd0;\nlocalparam WRITE2 = 2'd1;\nlocalparam LAST_READINGS = 2'd2;\nreg final_reg = 1'b0;\nreg [6:0] direction_slave_reg = 7'b0100001;\nreg [7:0] registrer2write_reg = 8'h11;\nreg [7:0] byte2write_reg = 8'b00000000;\nreg [1:0] state1 = WRITE1;\nalways @(posedge ready)\n    begin\n        case(state1)\n        WRITE1:\n            begin\n                direction_slave_reg <= 7'b0100001;\n                registrer2write_reg <= 8'h12;\n                byte2write_reg <= 8'b00000100;\n                state1 <= WRITE2;\n            end\n        WRITE2:\n            begin\n                direction_slave_reg <= 7'b0100001;\n                registrer2write_reg <= 8'h40;\n                byte2write_reg <= 8'b11010000;\n                state1 <= LAST_READINGS;\n            end\n        LAST_READINGS: final_reg<= 1'b1;\n        endcase\n    \n    end\nassign final = final_reg;\nassign direction_slave = direction_slave_reg;\nassign registrer2write = registrer2write_reg;\nassign byte2write = byte2write_reg;\n\n\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "ready"
                }
              ],
              "out": [
                {
                  "name": "direction_slave",
                  "range": "[6:0]",
                  "size": 7
                },
                {
                  "name": "registrer2write",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "byte2write",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "final"
                }
              ]
            }
          },
          "position": {
            "x": -1672,
            "y": -864
          },
          "size": {
            "width": 864,
            "height": 496
          }
        },
        {
          "id": "392bc0f4-449c-47f5-9411-c1319b808d90",
          "type": "basic.code",
          "data": {
            "code": "reg [4:0] count = 1'b0;\r\nreg [2:0] pos = 3'd7;\r\nreg sda = 1'b1;\r\nreg scl = 1'b1;\r\nreg enable = 1'b0;\r\nreg [7:0] direction=8'd0;\r\nreg ready_reg = 1'b0;\r\n\r\nlocalparam SDA_START   = 5'd0;\r\nlocalparam SCL_START   = 5'd1;\r\nlocalparam SCL_LOW_prev  = 5'd2;\r\nlocalparam SCL_LOW  = 5'd3;\r\nlocalparam SCL_HIGH       =5'd4;\r\nlocalparam ACK_CLOCK_LOW      = 5'd5;\r\nlocalparam ACK_CLOCK_HIGH_prev = 5'd16;\r\nlocalparam ACK_CLOCK_HIGH  = 5'd6;\r\nlocalparam CONTROL_TRANSACTION = 5'd7;\r\nlocalparam SCL_STOP = 5'd8;\r\nlocalparam SDA_STOP = 5'd9;\r\nlocalparam FINAL_CONDITION = 5'd10;\r\nlocalparam BUS_FREE= 5'd11;\r\n\r\n\r\nreg [4:0] state = CONTROL_TRANSACTION;\r\nreg [2:0] control_states=3'd0;\r\n\r\nalways @(posedge clock)\r\n    begin\r\n        case(state)\r\n          SDA_START:\r\n          begin\r\n            if(start==1'b1) \r\n            begin\r\n              enable <=1'b1;\r\n              scl<=1'b1;\r\n              sda<=1'b1;\r\n              if(count==5'd19)\r\n              begin\r\n                count<= 5'd0;\r\n                sda<=1'b0;\r\n                state<=SCL_START;\r\n              end\r\n              else begin\r\n                count<=count+5'd1;\r\n                state<=SDA_START;\r\n              end \r\n            end\r\n            else begin\r\n              scl<=1'bz;\r\n              sda<=1'bz;\r\n              enable <= 1'b0;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_START: \r\n          begin\r\n            scl=1'b1;\r\n            sda=1'b0;\r\n            if (count == 5'd10)\r\n            begin\r\n              count <= 5'd0;\r\n              scl<=1'b0;\r\n              state<=SCL_LOW_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_START;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_LOW_prev:\r\n          begin\r\n            scl<=0;\r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_LOW;\r\n              sda <= direction[pos]; \r\n              pos <= pos - 3'd1;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_LOW_prev;\r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_LOW:\r\n          begin\r\n            scl<=1'b0; \r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_HIGH;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_LOW; \r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_HIGH: \r\n          begin\r\n            scl<=1'b1; \r\n            if(count == 5'd19)\r\n            begin\r\n              count = 5'd0;\r\n              if (pos == 3'd7)\r\n                state<=ACK_CLOCK_LOW;\r\n              else\r\n                state<=SCL_LOW_prev;  \r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_HIGH;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_LOW:\r\n          begin\r\n            enable<=1'b0;\r\n            scl<=1'b0;\r\n            if(count==5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_LOW;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_HIGH_prev:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<= ACK_CLOCK_HIGH;\r\n              //aqui metemos que pasa si el sda = 1, ppor eso es necesario este estado\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n          end \r\n          \r\n         \r\n          ACK_CLOCK_HIGH:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state <= CONTROL_TRANSACTION;\r\n              scl<=1'b0;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH;\r\n            end\r\n          end \r\n//****************************************************************************************************************\r\n          CONTROL_TRANSACTION:\r\n          begin\r\n            enable<=1'b1;\r\n            if(count==5'd15)\r\n            begin\r\n              case(control_states)\r\n              3'd0:\r\n              begin\r\n                state<=SDA_START;\r\n                direction <= {direction_slave,1'b0};\r\n                control_states <= 3'd1;  \r\n              end\r\n              3'd1:\r\n              begin\r\n                state<=SCL_LOW_prev; //scl low prev\r\n                direction <= registrer2write;\r\n                control_states <= 3'd2;  \r\n              end\r\n              3'd2:\r\n              begin\r\n                state <= SCL_LOW_prev;  //scl stop \r\n                direction<=byte2write;\r\n                control_states <= 3'd3;  \r\n              end\r\n              3'd3:\r\n              begin\r\n                state <= SCL_STOP;\r\n                control_states <= 3'd0;  \r\n              end\r\n              endcase\r\n              count <= 5'd0;\r\n            end\r\n            else begin\r\n              state<=CONTROL_TRANSACTION;\r\n              count <= count+5'd1;\r\n            end\r\n          end\r\n//***************************************************************************************************************   \r\n//***************************************************************************************************************\r\n          SCL_STOP: \r\n          begin\r\n            sda<=1'b0;\r\n            scl<=1'b0;\r\n            if (count == 5'd15)\r\n            begin\r\n              scl<=1'b1;\r\n              sda<=1'b0;\r\n              count <= 5'd0;\r\n              state<=SDA_STOP;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_STOP;\r\n            end\r\n          end\r\n          \r\n          \r\n          SDA_STOP:\r\n          begin\r\n            scl<=1'b1;\r\n            sda<=1'b0;\r\n            if (count == 5'd15)\r\n            begin\r\n              sda<=1'b1;\r\n              count<=5'd0;\r\n              state <= FINAL_CONDITION;\r\n              ready_reg<= 1'b1;\r\n            end\r\n            else begin\r\n              state<=SDA_STOP;\r\n              count <= count + 5'd1;\r\n            end\r\n          end\r\n          \r\n          FINAL_CONDITION:\r\n          begin\r\n            state <= (final == 1'b1) ? BUS_FREE: CONTROL_TRANSACTION;\r\n            ready_reg<= 1'b0;\r\n          end\r\n\r\n          BUS_FREE:\r\n          begin\r\n            if(count== 5'd15)\r\n            begin\r\n              state <= BUS_FREE;\r\n              enable <= 1'b0; //puesto luego\r\n              sda<= 1'bZ;\r\n              scl<= 1'bZ;\r\n            end\r\n            else begin\r\n              state <= BUS_FREE;\r\n              count <= count + 5'd1;\r\n            end\r\n\r\n          end\r\n\r\n          endcase\r\n    end\r\n//******************************************************************************************************************\r\n    assign sda_out = sda;\r\n    assign scl_out = scl;\r\n    assign sda_enable =enable;\r\n    assign ready = ready_reg;\r\n    \r\n    ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clock"
                },
                {
                  "name": "start"
                },
                {
                  "name": "direction_slave",
                  "range": "[6:0]",
                  "size": 7
                },
                {
                  "name": "registrer2write",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "byte2write",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "sda_in"
                },
                {
                  "name": "final"
                }
              ],
              "out": [
                {
                  "name": "scl_out"
                },
                {
                  "name": "sda_out"
                },
                {
                  "name": "sda_enable"
                },
                {
                  "name": "ready"
                }
              ]
            }
          },
          "position": {
            "x": -632,
            "y": -928
          },
          "size": {
            "width": 928,
            "height": 576
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "scl_out"
          },
          "target": {
            "block": "c5e713e7-17d4-4b66-9e52-ba709350d9bf",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "sda_out"
          },
          "target": {
            "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
            "port": "04fdb7a7-2740-4ff1-ad26-56407ef5b958"
          },
          "vertices": [
            {
              "x": -128,
              "y": -32
            },
            {
              "x": -128,
              "y": -56
            },
            {
              "x": -128,
              "y": -64
            }
          ]
        },
        {
          "source": {
            "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
            "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
          },
          "target": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "sda_in"
          }
        },
        {
          "source": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "sda_enable"
          },
          "target": {
            "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
            "port": "f96a1baf-fc8b-4c25-b132-12552605743f"
          },
          "vertices": [
            {
              "x": 376,
              "y": -224
            }
          ]
        },
        {
          "source": {
            "block": "5bc0374a-1a1b-4418-97d3-276d74ecc31b",
            "port": "out"
          },
          "target": {
            "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
            "port": "076fd025-aa42-4f23-ae97-b65aec2298ce"
          }
        },
        {
          "source": {
            "block": "acab6151-cf4c-45cc-aaa5-578de22c6d95",
            "port": "registrer2write"
          },
          "target": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "registrer2write"
          },
          "size": 8
        },
        {
          "source": {
            "block": "acab6151-cf4c-45cc-aaa5-578de22c6d95",
            "port": "byte2write"
          },
          "target": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "byte2write"
          },
          "vertices": [
            {
              "x": -696,
              "y": -512
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "ready"
          },
          "target": {
            "block": "acab6151-cf4c-45cc-aaa5-578de22c6d95",
            "port": "ready"
          }
        },
        {
          "source": {
            "block": "acab6151-cf4c-45cc-aaa5-578de22c6d95",
            "port": "direction_slave"
          },
          "target": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "direction_slave"
          },
          "size": 7
        },
        {
          "source": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "ready"
          },
          "target": {
            "block": "cae4e8f1-f1c8-4c7b-9ea5-b807ebb02cb1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "57783994-820b-4a97-b38a-fa8904babf98",
            "port": "out"
          },
          "target": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "start"
          }
        },
        {
          "source": {
            "block": "974cf1da-48c0-40bd-a080-c1cf3afb4f91",
            "port": "out"
          },
          "target": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "clock"
          }
        },
        {
          "source": {
            "block": "acab6151-cf4c-45cc-aaa5-578de22c6d95",
            "port": "final"
          },
          "target": {
            "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
            "port": "final"
          }
        },
        {
          "source": {
            "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
            "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
          },
          "target": {
            "block": "20cbc10d-f86d-419d-aea2-32051c2f9112",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "acab6151-cf4c-45cc-aaa5-578de22c6d95",
            "port": "final"
          },
          "target": {
            "block": "a079b2c9-b21f-4bee-9f3f-875c6ebc8d35",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "9b4eccd4c51ae63a95843afa85f05aefb8d71a44": {
      "package": {
        "name": "Tri-state",
        "version": "1.0.0",
        "description": "Tri-state logic block",
        "author": "Salvador E. Tropea",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-265%20401.5%2063.5%2038.4%22%20id=%22svg2%22%3E%3Cstyle%20id=%22style3%22/%3E%3Cpath%20d=%22M-9.78%203.538l-4.214%2024.984-19.53-16.141z%22%20transform=%22matrix(.62422%20-.11476%20.1058%20.67701%20-219.33%20413.046)%22%20id=%22path3008%22%20fill=%22none%22%20stroke=%22#0b0b0b%22%20stroke-width=%221.885%22/%3E%3Cpath%20d=%22M-9.78%203.538l-4.214%2024.984-19.53-16.141z%22%20transform=%22matrix(-.62422%20-.11476%20-.1058%20.67701%20-244.991%20400.53)%22%20id=%22path3008-6%22%20fill=%22none%22%20stroke=%22#0b0b0b%22%20stroke-width=%221.885%22/%3E%3Cpath%20d=%22M40.154%2011.247H63.74%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3800%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M25.945%2023.73l-7.364.058V11.305h7.076%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3802%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M-265.029%20412.747l18.582.058%22%20id=%22path3804%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M.081%2023.919h12.936v7.566h19.037V27.58%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3806%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M0%2035.96h49.302V24.162h-9.356%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3812%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3C/svg%3E"
      },
      "design": {
        "config": "true",
        "graph": {
          "blocks": [
            {
              "id": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
              "type": "basic.code",
              "data": {
                "code": "  SB_IO #(\n      .PIN_TYPE(6'b1010_01),\n      .PULLUP(1'b0)\n  ) triState (\n      .PACKAGE_PIN(pin),\n      .OUTPUT_ENABLE(oe),\n      .D_OUT_0(din),\n      .D_IN_0(dout)\n  );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "pin"
                    },
                    {
                      "name": "oe"
                    },
                    {
                      "name": "din"
                    }
                  ],
                  "out": [
                    {
                      "name": "dout"
                    }
                  ]
                }
              },
              "position": {
                "x": 248,
                "y": 32
              }
            },
            {
              "id": "076fd025-aa42-4f23-ae97-b65aec2298ce",
              "type": "basic.input",
              "data": {
                "name": "pin"
              },
              "position": {
                "x": 32,
                "y": 40
              }
            },
            {
              "id": "f96a1baf-fc8b-4c25-b132-12552605743f",
              "type": "basic.input",
              "data": {
                "name": "oe"
              },
              "position": {
                "x": 32,
                "y": 128
              }
            },
            {
              "id": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
              "type": "basic.output",
              "data": {
                "name": "dout"
              },
              "position": {
                "x": 760,
                "y": 128
              }
            },
            {
              "id": "04fdb7a7-2740-4ff1-ad26-56407ef5b958",
              "type": "basic.input",
              "data": {
                "name": "din"
              },
              "position": {
                "x": 32,
                "y": 216
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "076fd025-aa42-4f23-ae97-b65aec2298ce",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "pin"
              }
            },
            {
              "source": {
                "block": "f96a1baf-fc8b-4c25-b132-12552605743f",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "oe"
              }
            },
            {
              "source": {
                "block": "04fdb7a7-2740-4ff1-ad26-56407ef5b958",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "din"
              }
            },
            {
              "source": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "dout"
              },
              "target": {
                "block": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}