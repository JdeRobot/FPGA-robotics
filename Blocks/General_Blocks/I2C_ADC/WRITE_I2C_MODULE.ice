{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "3aff189a-eae3-432a-aecd-a3884d51c2fb",
          "type": "basic.input",
          "data": {
            "name": "sw1",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": 88
          }
        },
        {
          "id": "6c3f62cf-e659-451f-9e47-1de4d70aa033",
          "type": "basic.output",
          "data": {
            "name": "scl_debug",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 144
          }
        },
        {
          "id": "eb3d7f5c-ceb5-4aa6-a077-f2a6693bae7e",
          "type": "basic.output",
          "data": {
            "name": "scl",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SCL",
                "value": "91"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 504,
            "y": 152
          }
        },
        {
          "id": "710ff276-6976-4016-8bb3-d7468b489da5",
          "type": "basic.output",
          "data": {
            "name": "ready",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "117"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 224
          }
        },
        {
          "id": "4639cee3-d11a-4c54-916a-3c4631fb54dc",
          "type": "basic.output",
          "data": {
            "name": "dout",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "118"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 504,
            "y": 240
          }
        },
        {
          "id": "2ccc92b5-8b16-48a4-a409-3eaf9ff2844d",
          "type": "basic.input",
          "data": {
            "name": "sda",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SDA",
                "value": "90"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 144,
            "y": 248
          }
        },
        {
          "id": "8513ed49-65e3-4c24-85be-6ea1478778b8",
          "type": "basic.constant",
          "data": {
            "name": "direction_slave",
            "value": "7'b1001000",
            "local": false
          },
          "position": {
            "x": 296,
            "y": 16
          }
        },
        {
          "id": "a1156704-5a08-43ae-a47e-529ae76393b3",
          "type": "basic.constant",
          "data": {
            "name": "registrer2write",
            "value": "8'b00000000",
            "local": false
          },
          "position": {
            "x": 392,
            "y": 16
          }
        },
        {
          "id": "83e80dfd-e3ab-4ceb-a6f3-c03b21a7f32a",
          "type": "basic.constant",
          "data": {
            "name": "byte2write",
            "value": "8'b11000100",
            "local": false
          },
          "position": {
            "x": 488,
            "y": 16
          }
        },
        {
          "id": "28cdb744-a24b-4a82-b9e5-37072a134f82",
          "type": "eb87f611c098c0ba064c33981f250c9d69b4f7b9",
          "position": {
            "x": 336,
            "y": 168
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "a51df821-58f7-46b9-b9b0-167a7560bb50",
          "type": "1374ebd258036ea0ace53cbfce7f63fbf69e9c18",
          "position": {
            "x": 136,
            "y": 184
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2ccc92b5-8b16-48a4-a409-3eaf9ff2844d",
            "port": "out"
          },
          "target": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "5bc0374a-1a1b-4418-97d3-276d74ecc31b"
          }
        },
        {
          "source": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "c5e713e7-17d4-4b66-9e52-ba709350d9bf"
          },
          "target": {
            "block": "eb3d7f5c-ceb5-4aa6-a077-f2a6693bae7e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "6653fef9-cb52-4743-8504-6b0590e094e9"
          },
          "target": {
            "block": "4639cee3-d11a-4c54-916a-3c4631fb54dc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8513ed49-65e3-4c24-85be-6ea1478778b8",
            "port": "constant-out"
          },
          "target": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "0187e97c-0c23-4475-890b-f747f216498a"
          }
        },
        {
          "source": {
            "block": "a1156704-5a08-43ae-a47e-529ae76393b3",
            "port": "constant-out"
          },
          "target": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "c680833e-8ff1-405e-a905-1744de4e7d26"
          }
        },
        {
          "source": {
            "block": "83e80dfd-e3ab-4ceb-a6f3-c03b21a7f32a",
            "port": "constant-out"
          },
          "target": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "db0ffaac-7616-42fb-84fb-02bff12c55ec"
          }
        },
        {
          "source": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "c5e713e7-17d4-4b66-9e52-ba709350d9bf"
          },
          "target": {
            "block": "6c3f62cf-e659-451f-9e47-1de4d70aa033",
            "port": "in"
          },
          "vertices": [
            {
              "x": 584,
              "y": 224
            }
          ]
        },
        {
          "source": {
            "block": "a51df821-58f7-46b9-b9b0-167a7560bb50",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "57783994-820b-4a97-b38a-fa8904babf98"
          }
        },
        {
          "source": {
            "block": "3aff189a-eae3-432a-aecd-a3884d51c2fb",
            "port": "out"
          },
          "target": {
            "block": "a51df821-58f7-46b9-b9b0-167a7560bb50",
            "port": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5"
          }
        },
        {
          "source": {
            "block": "28cdb744-a24b-4a82-b9e5-37072a134f82",
            "port": "03665452-e9b5-4852-82ce-b6f8da9fe534"
          },
          "target": {
            "block": "710ff276-6976-4016-8bb3-d7468b489da5",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 66,
        "y": 119
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "eb87f611c098c0ba064c33981f250c9d69b4f7b9": {
      "package": {
        "name": "WRITE_I2C",
        "version": "1.0",
        "description": "This module will write a byte in a specified slave",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2058%2058%22%3E%3Ccircle%20cx=%2229%22%20cy=%2229%22%20r=%2229%22%20fill=%22#23a24d%22/%3E%3Cpath%20d=%22M29%200C21.243%200%2014.204%203.051%209%208.011V26l19.951%2024.993A.03.03%200%200%200%2029%2050.97c0%20.025.029.04.049.023L49%2026V8.011C43.796%203.051%2036.757%200%2029%200z%22%20fill=%22#ebd6bd%22/%3E%3Cpath%20d=%22M29%2035c-3.748%200-7.093%201.72-9.294%204.412l9.245%2011.581A.03.03%200%200%200%2029%2050.97c0%20.025.029.04.049.023l9.245-11.581A11.975%2011.975%200%200%200%2029%2035z%22%20fill=%22#4c4c4c%22/%3E%3Cpath%20d=%22M29%200c-3.516%200-6.883.633-10%201.78V18l9.951%207.961c.02.016.049.001.049-.024%200%20.025.029.04.049.024L39%2018V1.78A28.897%2028.897%200%200%200%2029%200z%22%20fill=%22#ebba16%22/%3E%3Cpath%20d=%22M9.432%2025.654L19%2018V1.78A29.05%2029.05%200%200%200%209%208.011v17.435c0%20.223.258.347.432.208zM39%2018l9.568%207.654a.266.266%200%200%200%20.432-.208V8.011A29.05%2029.05%200%200%200%2039%201.78V18z%22%20fill=%22#ed8a19%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c5e713e7-17d4-4b66-9e52-ba709350d9bf",
              "type": "basic.output",
              "data": {
                "name": "scl"
              },
              "position": {
                "x": -96,
                "y": -648
              }
            },
            {
              "id": "fb128c3b-b9c6-4b7a-9e12-b3b98f526b8f",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -1416,
                "y": -624
              }
            },
            {
              "id": "57783994-820b-4a97-b38a-fa8904babf98",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -1536,
                "y": -432
              }
            },
            {
              "id": "03665452-e9b5-4852-82ce-b6f8da9fe534",
              "type": "basic.output",
              "data": {
                "name": "ready"
              },
              "position": {
                "x": -112,
                "y": -216
              }
            },
            {
              "id": "5bc0374a-1a1b-4418-97d3-276d74ecc31b",
              "type": "basic.input",
              "data": {
                "name": "sda",
                "clock": false
              },
              "position": {
                "x": -968,
                "y": 24
              }
            },
            {
              "id": "6653fef9-cb52-4743-8504-6b0590e094e9",
              "type": "basic.output",
              "data": {
                "name": "dout"
              },
              "position": {
                "x": -488,
                "y": 80
              }
            },
            {
              "id": "0187e97c-0c23-4475-890b-f747f216498a",
              "type": "basic.constant",
              "data": {
                "name": "direction_slave",
                "value": "7'b1101011",
                "local": false
              },
              "position": {
                "x": -1064,
                "y": -800
              }
            },
            {
              "id": "c680833e-8ff1-405e-a905-1744de4e7d26",
              "type": "basic.constant",
              "data": {
                "name": "registrer2write",
                "value": " 8'b00100000",
                "local": false
              },
              "position": {
                "x": -752,
                "y": -808
              }
            },
            {
              "id": "db0ffaac-7616-42fb-84fb-02bff12c55ec",
              "type": "basic.constant",
              "data": {
                "name": "byte2write",
                "value": "8'b01101111",
                "local": false
              },
              "position": {
                "x": -440,
                "y": -808
              }
            },
            {
              "id": "b725fac1-e874-43fe-8f88-f36ba31f4606",
              "type": "9b4eccd4c51ae63a95843afa85f05aefb8d71a44",
              "position": {
                "x": -640,
                "y": 64
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "392bc0f4-449c-47f5-9411-c1319b808d90",
              "type": "basic.code",
              "data": {
                "code": "reg [4:0] count = 1'b0;\r\nreg [2:0] pos = 3'd7;\r\nreg sda = 1'b1;\r\nreg scl = 1'b1;\r\nreg enable = 1'b0;\r\nreg [7:0] direction;\r\nreg ready_reg = 1'b0;\r\n\r\nlocalparam SDA_START   = 5'd0;\r\nlocalparam SCL_START   = 5'd1;\r\nlocalparam SCL_LOW_prev  = 5'd2;\r\nlocalparam SCL_LOW  = 5'd3;\r\nlocalparam SCL_HIGH       =5'd4;\r\nlocalparam ACK_CLOCK_LOW      = 5'd5;\r\nlocalparam ACK_CLOCK_HIGH_prev = 5'd16;\r\nlocalparam ACK_CLOCK_HIGH  = 5'd6;\r\nlocalparam CONTROL_TRANSACTION = 5'd7;\r\nlocalparam SCL_STOP = 5'd8;\r\nlocalparam SDA_STOP = 5'd9;\r\nlocalparam BUS_FREE= 5'd10;\r\n\r\n\r\nreg [4:0] state = CONTROL_TRANSACTION;\r\nreg [2:0] control_states=3'd0;\r\n\r\nalways @(posedge clock)\r\n    begin\r\n        case(state)\r\n          SDA_START:\r\n          begin\r\n            if(start==1'b1) \r\n            begin\r\n              enable <=1'b1;\r\n              scl<=1'b1;\r\n              sda<=1'b1;\r\n              if(count==5'd19)\r\n              begin\r\n                count<= 5'd0;\r\n                sda<=1'b0;\r\n                state<=SCL_START;\r\n              end\r\n              else begin\r\n                count<=count+5'd1;\r\n                state<=SDA_START;\r\n              end \r\n            end\r\n            else begin\r\n              scl<=1'bz;\r\n              sda<=1'bz;\r\n              enable <= 1'b0;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_START: \r\n          begin\r\n            scl=1'b1;\r\n            sda=1'b0;\r\n            if (count == 5'd10)\r\n            begin\r\n              count <= 5'd0;\r\n              scl<=1'b0;\r\n              state<=SCL_LOW_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_START;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_LOW_prev:\r\n          begin\r\n            scl<=0;\r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_LOW;\r\n              sda <= direction[pos]; \r\n              pos <= pos - 3'd1;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_LOW_prev;\r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_LOW:\r\n          begin\r\n            scl<=1'b0; \r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_HIGH;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_LOW; \r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_HIGH: \r\n          begin\r\n            scl<=1'b1; \r\n            if(count == 5'd19)\r\n            begin\r\n              count = 5'd0;\r\n              if (pos == 3'd7)\r\n                state<=ACK_CLOCK_LOW;\r\n              else\r\n                state<=SCL_LOW_prev;  \r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_HIGH;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_LOW:\r\n          begin\r\n            enable<=1'b0;\r\n            scl<=1'b0;\r\n            if(count==5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_LOW;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_HIGH_prev:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<= ACK_CLOCK_HIGH;\r\n              //aqui metemos que pasa si el sda = 1, ppor eso es necesario este estado\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n          end \r\n          \r\n         \r\n          ACK_CLOCK_HIGH:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state <= CONTROL_TRANSACTION;\r\n              scl<=1'b0;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH;\r\n            end\r\n          end \r\n//****************************************************************************************************************\r\n          CONTROL_TRANSACTION:\r\n          begin\r\n            enable<=1'b1;\r\n            if(count==5'd15)\r\n            begin\r\n              case(control_states)\r\n              3'd0:\r\n              begin\r\n                state<=SDA_START;\r\n                direction <= {direction_slave,1'b0};\r\n                control_states <= 3'd1;  \r\n              end\r\n              3'd1:\r\n              begin\r\n                state<=SCL_LOW_prev; //scl low prev\r\n                direction <= registrer2write;\r\n                control_states <= 3'd2;  \r\n              end\r\n              3'd2:\r\n              begin\r\n                state <= SCL_LOW_prev;  //scl stop \r\n                direction<=byte2write;\r\n                control_states <= 3'd3;  \r\n              end\r\n              3'd3:\r\n              begin\r\n                state <= SCL_STOP;\r\n                control_states <= 3'd0;  \r\n              end\r\n              endcase\r\n              count <= 5'd0;\r\n            end\r\n            else begin\r\n              state<=CONTROL_TRANSACTION;\r\n              count <= count+5'd1;\r\n            end\r\n          end\r\n//***************************************************************************************************************   \r\n//***************************************************************************************************************\r\n          SCL_STOP: \r\n          begin\r\n            sda<=1'b0;\r\n            scl<=1'b0;\r\n            if (count == 5'd15)\r\n            begin\r\n              scl<=1'b1;\r\n              sda<=1'b0;\r\n              count <= 5'd0;\r\n              state<=SDA_STOP;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_STOP;\r\n            end\r\n          end\r\n          \r\n          \r\n          SDA_STOP:\r\n          begin\r\n            scl<=1'b1;\r\n            sda<=1'b0;\r\n            if (count == 5'd15)\r\n            begin\r\n              sda<=1'b1;\r\n              count<=5'd0;\r\n              state <= BUS_FREE;\r\n            end\r\n            else begin\r\n              state<=SDA_STOP;\r\n              count <= count + 5'd1;\r\n            end\r\n          end\r\n\r\n          BUS_FREE:\r\n          begin\r\n            if(count== 5'd15)\r\n            begin\r\n              ready_reg<=1'b1;\r\n              state <= BUS_FREE;\r\n              enable <= 1'b0; //puesto luego\r\n              sda<= 1'bZ;\r\n              scl<= 1'bZ;\r\n            end\r\n            else begin\r\n              state <= BUS_FREE;\r\n              count <= count + 5'd1;\r\n            end\r\n\r\n          end\r\n\r\n          endcase\r\n    end\r\n//******************************************************************************************************************\r\n    assign sda_out = sda;\r\n    assign scl_out = scl;\r\n    assign sda_enable =enable;\r\n    assign ready = ready_reg;\r\n    \r\n    ",
                "params": [
                  {
                    "name": "direction_slave"
                  },
                  {
                    "name": "registrer2write"
                  },
                  {
                    "name": "byte2write"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "start"
                    },
                    {
                      "name": "sda_in"
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
                "x": -1168,
                "y": -688
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
                "block": "fb128c3b-b9c6-4b7a-9e12-b3b98f526b8f",
                "port": "out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "clock"
              }
            },
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
                  "x": -664,
                  "y": 208
                },
                {
                  "x": -664,
                  "y": 184
                },
                {
                  "x": -664,
                  "y": 176
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
                  "x": -160,
                  "y": 16
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
                "block": "0187e97c-0c23-4475-890b-f747f216498a",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "direction_slave"
              }
            },
            {
              "source": {
                "block": "c680833e-8ff1-405e-a905-1744de4e7d26",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "registrer2write"
              }
            },
            {
              "source": {
                "block": "db0ffaac-7616-42fb-84fb-02bff12c55ec",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "byte2write"
              }
            },
            {
              "source": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "ready"
              },
              "target": {
                "block": "03665452-e9b5-4852-82ce-b6f8da9fe534",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
              },
              "target": {
                "block": "6653fef9-cb52-4743-8504-6b0590e094e9",
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
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1630.0147,
            "y": 736.7422
          },
          "zoom": 0.8623
        }
      }
    },
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
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "1374ebd258036ea0ace53cbfce7f63fbf69e9c18": {
      "package": {
        "name": "START_MODULE",
        "version": "1.0",
        "description": "This module is only a flag in order to start a specified behaviour",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20489.888%20489.888%22%3E%3Cpath%20d=%22M25.383%20290.5c-7.2-77.5%2025.9-147.7%2080.8-192.3%2021.4-17.4%2053.4-2.5%2053.4%2025%200%2010.1-4.8%2019.4-12.6%2025.7-38.9%2031.7-62.3%2081.7-56.6%20136.9%207.4%2071.9%2065%20130.1%20136.8%20138.1%2093.7%2010.5%20173.3-62.9%20173.3-154.5%200-48.6-22.5-92.1-57.6-120.6-7.8-6.3-12.5-15.6-12.5-25.6%200-27.2%2031.5-42.6%2052.7-25.6%2050.2%2040.5%2082.4%20102.4%2082.4%20171.8%200%20126.9-107.8%20229.2-236.7%20219.9-106.6-7.5-193.5-92.4-203.4-198.8zM244.883%200c-18%200-32.5%2014.6-32.5%2032.5v149.7c0%2018%2014.6%2032.5%2032.5%2032.5s32.5-14.6%2032.5-32.5V32.5c0-17.9-14.5-32.5-32.5-32.5z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
              "type": "basic.input",
              "data": {
                "name": "s1",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 184
              }
            },
            {
              "id": "2515087a-5907-41f4-b2ef-f525321654cd",
              "type": "basic.output",
              "data": {
                "name": "start"
              },
              "position": {
                "x": 792,
                "y": 184
              }
            },
            {
              "id": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
              "type": "basic.code",
              "data": {
                "code": "reg aux = 0;\nalways @(posedge s1) begin\n      aux <= 1;\nend\nassign start = aux;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "s1"
                    }
                  ],
                  "out": [
                    {
                      "name": "start"
                    }
                  ]
                }
              },
              "position": {
                "x": 232,
                "y": 80
              },
              "size": {
                "width": 512,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
                "port": "out"
              },
              "target": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "s1"
              }
            },
            {
              "source": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "start"
              },
              "target": {
                "block": "2515087a-5907-41f4-b2ef-f525321654cd",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 493,
            "y": 261.5
          },
          "zoom": 1
        }
      }
    }
  }
}