{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "6ef1e0b7-08c8-4b70-90d2-ac98d9a3d019",
          "type": "basic.output",
          "data": {
            "name": "d1",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 712,
            "y": -832
          }
        },
        {
          "id": "c2324d71-d1a4-4cc6-a147-2233ad76944b",
          "type": "basic.input",
          "data": {
            "name": "D7",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "63"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1904,
            "y": -816
          }
        },
        {
          "id": "bcb585e3-0ba2-41a0-a9f2-a1caf8a48e7b",
          "type": "basic.output",
          "data": {
            "name": "led",
            "range": "[4:0]",
            "pins": [
              {
                "index": "4",
                "name": "LED7",
                "value": "37"
              },
              {
                "index": "3",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "2",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "1",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "0",
                "name": "LED3",
                "value": "42"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1664,
            "y": -760
          }
        },
        {
          "id": "a9f46104-0ec6-44e4-8ccf-acec74e8424e",
          "type": "basic.input",
          "data": {
            "name": "D6",
            "pins": [
              {
                "index": "0",
                "name": "D8",
                "value": "20"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1904,
            "y": -744
          }
        },
        {
          "id": "58c49fb6-0cd1-4e88-8458-886c5da6c587",
          "type": "basic.input",
          "data": {
            "name": "D5",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "64"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -656
          }
        },
        {
          "id": "c74a8550-0af2-45bc-b943-6a87570494cb",
          "type": "basic.output",
          "data": {
            "name": "ready_color",
            "pins": [
              {
                "index": "0",
                "name": "D3",
                "value": "3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": -640
          }
        },
        {
          "id": "b24743ef-28fc-427d-84ee-9098efbbc5d8",
          "type": "basic.input",
          "data": {
            "name": "D4",
            "pins": [
              {
                "index": "0",
                "name": "D7",
                "value": "9"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -592
          }
        },
        {
          "id": "bfbc16e8-a180-4ffc-bd28-aa6525406e30",
          "type": "basic.input",
          "data": {
            "name": "sw1",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "33"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 1472,
            "y": -584
          }
        },
        {
          "id": "ef5138a2-5a1f-4a7d-9da3-3029138ac30c",
          "type": "basic.input",
          "data": {
            "name": "D3",
            "pins": [
              {
                "index": "0",
                "name": "DD1",
                "value": "115"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -528
          }
        },
        {
          "id": "74fa773b-cc82-4472-821e-5a5ad1305e7e",
          "type": "basic.input",
          "data": {
            "name": "D2",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -464
          }
        },
        {
          "id": "003ee9f3-55f6-4c1c-94ec-d821b0126df1",
          "type": "basic.input",
          "data": {
            "name": "D1",
            "pins": [
              {
                "index": "0",
                "name": "DD0",
                "value": "114"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -400
          }
        },
        {
          "id": "5ed08677-7bc7-4b2e-8e6c-716663892384",
          "type": "basic.input",
          "data": {
            "name": "D0",
            "pins": [
              {
                "index": "0",
                "name": "D5",
                "value": "7"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -336
          }
        },
        {
          "id": "2b667827-c41c-4629-9874-a66aa5645c7f",
          "type": "basic.input",
          "data": {
            "name": "VSYNC",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "21"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -256
          }
        },
        {
          "id": "ac27d39c-51b4-487c-b269-bca0b304eb28",
          "type": "basic.input",
          "data": {
            "name": "HREF",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "22"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1896,
            "y": -176
          }
        },
        {
          "id": "5b485b74-04d0-4fa6-a05b-13532d5484b7",
          "type": "basic.input",
          "data": {
            "name": "PCLK",
            "pins": [
              {
                "index": "0",
                "name": "D4",
                "value": "8"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -2056,
            "y": -120
          }
        },
        {
          "id": "f13bb25f-3038-48ae-b917-f1726e49a59b",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "49"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": -2160,
            "y": 40
          }
        },
        {
          "id": "3640193e-04b0-4f75-9549-16ecfc8b1b8e",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D9",
                "value": "19"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -1960,
            "y": 40
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
                "name": "SCL",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -2184,
            "y": 392
          }
        },
        {
          "id": "3aff189a-eae3-432a-aecd-a3884d51c2fb",
          "type": "basic.input",
          "data": {
            "name": "sw1",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "34"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -2536,
            "y": 456
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
                "name": "SDA",
                "value": "118"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -2432,
            "y": 600
          }
        },
        {
          "id": "93acc0aa-c11f-4d0d-bcff-d2ea0a8ed8fc",
          "type": "basic.output",
          "data": {
            "name": "d0",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "4"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -2248,
            "y": 776
          }
        },
        {
          "id": "3c4afe44-197d-491f-bf82-d789ad552e89",
          "type": "basic.output",
          "data": {
            "name": "led1",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -1816,
            "y": 816
          }
        },
        {
          "id": "a51df821-58f7-46b9-b9b0-167a7560bb50",
          "type": "1374ebd258036ea0ace53cbfce7f63fbf69e9c18",
          "position": {
            "x": -2368,
            "y": 528
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f181fc6c-177c-423c-9de3-b5ab8d42e162",
          "type": "7170b78538cb9218afeead9de2d2dc1ac9c52cac",
          "position": {
            "x": -2080,
            "y": 536
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "ddf7f3d8-4552-4226-9038-bea0d048916f",
          "type": "basic.code",
          "data": {
            "code": "//la resolucion son 640 columnas y 480 filas. \r\nlocalparam BYTE1 = 1'b0;\r\nlocalparam BYTE2 = 1'b1;\r\nreg [4:0] RED_reg = 5'd0;\r\nreg [2:0] GREEN_prev = 3'd0;\r\nreg [5:0] GREEN_reg = 6'd0; \r\nreg [4:0] BLUE_reg = 5'd0; \r\nreg state = BYTE1;\r\nreg ready_color_reg = 1'b0;\r\nreg ready_byte_reg = 1'b0;\r\nreg debug_reg = 1'b0;\r\n\r\nalways @(posedge PCLK) \r\nbegin\r\n    if( (HREF === 1'b1) && (VSYNC === 1'b0) &&(START == 1'b1))\r\n    begin\r\n      case(state)\r\n        BYTE1: \r\n        begin\r\n          RED_reg<= {D7,D6,D5,D4,D3};\r\n          GREEN_prev<= {D2,D1,D0};\r\n          ready_color_reg <= 1'b0;\r\n          state<= BYTE2;\r\n          debug_reg<= !debug_reg;\r\n        end\r\n        BYTE2:\r\n        begin\r\n          GREEN_reg<={GREEN_prev,D7,D6,D5};\r\n          BLUE_reg<={D4,D3,D2,D1,D0};\r\n          ready_color_reg <= 1'b1;\r\n          state<= BYTE1;\r\n          debug_reg<= !debug_reg;\r\n        end\r\n      endcase\r\n    end\r\n    else begin\r\n        ready_color_reg <= 1'b0;\r\n    end\r\nend\r\nassign BLUE = BLUE_reg;\r\nassign GREEN = GREEN_reg;\r\nassign RED = RED_reg; \r\nassign ready_color = ready_color_reg;\r\nassign debug = debug_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "D7"
                },
                {
                  "name": "D6"
                },
                {
                  "name": "D5"
                },
                {
                  "name": "D4"
                },
                {
                  "name": "D3"
                },
                {
                  "name": "D2"
                },
                {
                  "name": "D1"
                },
                {
                  "name": "D0"
                },
                {
                  "name": "VSYNC"
                },
                {
                  "name": "HREF"
                },
                {
                  "name": "PCLK"
                },
                {
                  "name": "START"
                }
              ],
              "out": [
                {
                  "name": "ready_color"
                },
                {
                  "name": "RED",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "GREEN",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "BLUE",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "debug"
                }
              ]
            }
          },
          "position": {
            "x": -1312,
            "y": -552
          },
          "size": {
            "width": 880,
            "height": 528
          }
        },
        {
          "id": "5344251f-c3ec-4628-938c-e7b9e217f089",
          "type": "basic.code",
          "data": {
            "code": "reg start_reg = 1'b0;\n\nalways @(posedge VSYNC)\nbegin\n    start_reg<= (start_i2c == 1'b1)? 1'b1:1'b0;\nend\n\nassign START = start_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "start_i2c"
                },
                {
                  "name": "VSYNC"
                }
              ],
              "out": [
                {
                  "name": "START"
                }
              ]
            }
          },
          "position": {
            "x": -1760,
            "y": 576
          },
          "size": {
            "width": 360,
            "height": 184
          }
        },
        {
          "id": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
          "type": "658ad184c6520792b0c9016e9cfb6e929ed7432b",
          "position": {
            "x": -992,
            "y": 40
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "5c55b7f2-353a-4015-b651-a743f52f9198",
          "type": "9cb83b0453886b218e4ff849212aefff886b53d1",
          "position": {
            "x": -992,
            "y": 216
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "97970f18-4327-4eb2-aacc-274e8e25bcdc",
          "type": "basic.code",
          "data": {
            "code": "reg debug_reg = 1'b0;\n\nalways @(posedge PCLK)\nbegin\n    if(pixel_fila == 9'd480 && pixel_columna == 10'd639)\n    begin\n      debug_reg <= (sum_signal > 18'd307198) ? 1'b1:1'b0;\n    end\n    else \n    begin\n      debug_reg <= 1'b0;\n    end\nend\n\n\nassign debug = debug_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "sum_signal",
                  "range": "[17:0]",
                  "size": 18
                },
                {
                  "name": "PCLK"
                },
                {
                  "name": "pixel_fila",
                  "range": "[8:0]",
                  "size": 9
                },
                {
                  "name": "pixel_columna",
                  "range": "[9:0]",
                  "size": 10
                }
              ],
              "out": [
                {
                  "name": "debug"
                }
              ]
            }
          },
          "position": {
            "x": 1112,
            "y": -120
          },
          "size": {
            "width": 672,
            "height": 312
          }
        },
        {
          "id": "9849ef89-7d89-4f01-9b3b-daaa16dc29b3",
          "type": "basic.code",
          "data": {
            "code": "reg [4:0] led_reg = 5'd0;\nalways @(posedge sum)\nbegin\n    led_reg <= color;\nend\nassign led = led_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "sum"
                },
                {
                  "name": "color",
                  "range": "[4:0]",
                  "size": 5
                }
              ],
              "out": [
                {
                  "name": "led",
                  "range": "[4:0]",
                  "size": 5
                }
              ]
            }
          },
          "position": {
            "x": 1096,
            "y": -392
          },
          "size": {
            "width": 368,
            "height": 224
          }
        },
        {
          "id": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
          "type": "basic.code",
          "data": {
            "code": "localparam anchura = 640; \r\nlocalparam altura = 480;\r\nlocalparam Rmin = 5'd25;\r\nlocalparam Rmax = 5'd31;\r\nlocalparam Gmin = 6'd0;\r\nlocalparam Gmax = 6'd5;\r\nlocalparam Bmin = 5'd0;\r\nlocalparam Bmax = 5'd5;\r\nreg [7:0] led_reg = 8'd0;\r\nreg [4:0] red_color_reg = 5'd0;\r\nreg [17:0] sum_reg = 18'd0;\r\nreg debug_reg = 1'b0;\r\nreg aux = 1'b0;\r\nreg [17:0] acumX_reg = 18'd0;\r\nreg [16:0] acumY_reg =17'd0;\r\nreg [13:0] count_pix = 14'd0;\r\n//reg [19:0] count_red = 20'd0; //640000\r\nreg [18:0] count_red = 19'd0; //320000\r\nalways @(negedge PXCLK)\r\nbegin\r\n  if( ready_color ===1'b1 && pixel_fila >= 9'd200 && pixel_fila <= 9'd300 && pixel_columna >= 10'd300 && pixel_columna <= 10'd400) \r\n  begin\r\n     count_red <= (count_red >= 19'd319998) ? 19'd319999 : count_red + BLUE; //maximo 320.000\r\n     count_pix <= (count_pix >= 14'd9998)? 14'd9999 : count_pix + 14'd1; //100*100=10.000 elevado a 14=16384\r\n     aux<= 1'b1;\r\n     debug_reg <= !debug_reg;\r\n  end\r\n\r\n  if(ready_color == 1'b1 && pixel_fila == 9'd470 && pixel_columna == 10'd630)\r\n  begin\r\n    red_color_reg <= count_red/count_pix;\r\n  end\r\n  if(VSYNC == 1'b1 && aux == 1'b1)\r\n  begin\r\n    count_red <= 19'd0; \r\n    count_pix <= 14'd0;\r\n    aux<=1'b0;\r\n  end\r\nend\r\n\r\nassign led = led_reg;\r\nassign debug = debug_reg;\r\nassign sum_signal = sum_reg;\r\nassign color = red_color_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "ready_color"
                },
                {
                  "name": "RED",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "GREEN",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "BLUE",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "VSYNC"
                },
                {
                  "name": "pixel_fila",
                  "range": "[8:0]",
                  "size": 9
                },
                {
                  "name": "pixel_columna",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "PXCLK"
                },
                {
                  "name": "HREF"
                },
                {
                  "name": "START"
                }
              ],
              "out": [
                {
                  "name": "led",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "vol"
                },
                {
                  "name": "Xmedia"
                },
                {
                  "name": "Ymedia"
                },
                {
                  "name": "debug"
                },
                {
                  "name": "color",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "sum_signal",
                  "range": "[17:0]",
                  "size": 18
                }
              ]
            }
          },
          "position": {
            "x": 152,
            "y": -488
          },
          "size": {
            "width": 680,
            "height": 488
          }
        }
      ],
      "wires": [
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
            "block": "f181fc6c-177c-423c-9de3-b5ab8d42e162",
            "port": "c5e713e7-17d4-4b66-9e52-ba709350d9bf"
          },
          "target": {
            "block": "eb3d7f5c-ceb5-4aa6-a077-f2a6693bae7e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "a51df821-58f7-46b9-b9b0-167a7560bb50",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "f181fc6c-177c-423c-9de3-b5ab8d42e162",
            "port": "57783994-820b-4a97-b38a-fa8904babf98"
          }
        },
        {
          "source": {
            "block": "2ccc92b5-8b16-48a4-a409-3eaf9ff2844d",
            "port": "out"
          },
          "target": {
            "block": "f181fc6c-177c-423c-9de3-b5ab8d42e162",
            "port": "5bc0374a-1a1b-4418-97d3-276d74ecc31b"
          }
        },
        {
          "source": {
            "block": "c2324d71-d1a4-4cc6-a147-2233ad76944b",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D7"
          }
        },
        {
          "source": {
            "block": "a9f46104-0ec6-44e4-8ccf-acec74e8424e",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D6"
          }
        },
        {
          "source": {
            "block": "58c49fb6-0cd1-4e88-8458-886c5da6c587",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D5"
          }
        },
        {
          "source": {
            "block": "b24743ef-28fc-427d-84ee-9098efbbc5d8",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D4"
          }
        },
        {
          "source": {
            "block": "ef5138a2-5a1f-4a7d-9da3-3029138ac30c",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D3"
          }
        },
        {
          "source": {
            "block": "74fa773b-cc82-4472-821e-5a5ad1305e7e",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D2"
          }
        },
        {
          "source": {
            "block": "003ee9f3-55f6-4c1c-94ec-d821b0126df1",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D1"
          }
        },
        {
          "source": {
            "block": "5ed08677-7bc7-4b2e-8e6c-716663892384",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "D0"
          }
        },
        {
          "source": {
            "block": "f181fc6c-177c-423c-9de3-b5ab8d42e162",
            "port": "20cbc10d-f86d-419d-aea2-32051c2f9112"
          },
          "target": {
            "block": "93acc0aa-c11f-4d0d-bcff-d2ea0a8ed8fc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b667827-c41c-4629-9874-a66aa5645c7f",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "VSYNC"
          }
        },
        {
          "source": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "ready_color"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "ready_color"
          },
          "vertices": [
            {
              "x": -80,
              "y": -456
            }
          ]
        },
        {
          "source": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "BLUE"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "BLUE"
          },
          "size": 5
        },
        {
          "source": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "GREEN"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "GREEN"
          },
          "size": 6
        },
        {
          "source": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "RED"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "RED"
          },
          "size": 5
        },
        {
          "source": {
            "block": "5b485b74-04d0-4fa6-a05b-13532d5484b7",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "PCLK"
          }
        },
        {
          "source": {
            "block": "f13bb25f-3038-48ae-b917-f1726e49a59b",
            "port": "out"
          },
          "target": {
            "block": "3640193e-04b0-4f75-9549-16ecfc8b1b8e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b667827-c41c-4629-9874-a66aa5645c7f",
            "port": "out"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "VSYNC"
          },
          "vertices": [
            {
              "x": -80,
              "y": 16
            }
          ]
        },
        {
          "source": {
            "block": "ac27d39c-51b4-487c-b269-bca0b304eb28",
            "port": "out"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "HREF"
          },
          "vertices": [
            {
              "x": -1408,
              "y": -96
            }
          ]
        },
        {
          "source": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "sum_signal"
          },
          "target": {
            "block": "97970f18-4327-4eb2-aacc-274e8e25bcdc",
            "port": "sum_signal"
          },
          "size": 18
        },
        {
          "source": {
            "block": "f181fc6c-177c-423c-9de3-b5ab8d42e162",
            "port": "a079b2c9-b21f-4bee-9f3f-875c6ebc8d35"
          },
          "target": {
            "block": "5344251f-c3ec-4628-938c-e7b9e217f089",
            "port": "start_i2c"
          }
        },
        {
          "source": {
            "block": "2b667827-c41c-4629-9874-a66aa5645c7f",
            "port": "out"
          },
          "target": {
            "block": "5344251f-c3ec-4628-938c-e7b9e217f089",
            "port": "VSYNC"
          }
        },
        {
          "source": {
            "block": "5344251f-c3ec-4628-938c-e7b9e217f089",
            "port": "START"
          },
          "target": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "START"
          }
        },
        {
          "source": {
            "block": "2b667827-c41c-4629-9874-a66aa5645c7f",
            "port": "out"
          },
          "target": {
            "block": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
            "port": "d5f479c6-50cb-4edc-bbaa-1aca129b5d21"
          }
        },
        {
          "source": {
            "block": "2b667827-c41c-4629-9874-a66aa5645c7f",
            "port": "out"
          },
          "target": {
            "block": "5c55b7f2-353a-4015-b651-a743f52f9198",
            "port": "39f1f1e6-480d-49b2-a5ac-49a4c3631009"
          }
        },
        {
          "source": {
            "block": "ac27d39c-51b4-487c-b269-bca0b304eb28",
            "port": "out"
          },
          "target": {
            "block": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
            "port": "3eaadf0c-8989-4c0f-bf4a-c689ca9309de"
          }
        },
        {
          "source": {
            "block": "ac27d39c-51b4-487c-b269-bca0b304eb28",
            "port": "out"
          },
          "target": {
            "block": "5c55b7f2-353a-4015-b651-a743f52f9198",
            "port": "786c137a-f04d-4550-9cf5-3c7c36769edd"
          }
        },
        {
          "source": {
            "block": "5b485b74-04d0-4fa6-a05b-13532d5484b7",
            "port": "out"
          },
          "target": {
            "block": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
            "port": "fa812657-8bd0-4b54-b31b-b491a23a6f55"
          }
        },
        {
          "source": {
            "block": "5b485b74-04d0-4fa6-a05b-13532d5484b7",
            "port": "out"
          },
          "target": {
            "block": "5c55b7f2-353a-4015-b651-a743f52f9198",
            "port": "8e402eff-78d9-4613-91fd-77c436264f1f"
          }
        },
        {
          "source": {
            "block": "f13bb25f-3038-48ae-b917-f1726e49a59b",
            "port": "out"
          },
          "target": {
            "block": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
            "port": "5d4cc17f-3e01-47f4-a6fd-f2f2719bcf47"
          }
        },
        {
          "source": {
            "block": "f13bb25f-3038-48ae-b917-f1726e49a59b",
            "port": "out"
          },
          "target": {
            "block": "5c55b7f2-353a-4015-b651-a743f52f9198",
            "port": "5afedceb-3110-47b3-9575-ea695c1efaed"
          }
        },
        {
          "source": {
            "block": "5344251f-c3ec-4628-938c-e7b9e217f089",
            "port": "START"
          },
          "target": {
            "block": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
            "port": "2bff3157-9e5d-487c-9b77-3a077aaf6fea"
          }
        },
        {
          "source": {
            "block": "5344251f-c3ec-4628-938c-e7b9e217f089",
            "port": "START"
          },
          "target": {
            "block": "5c55b7f2-353a-4015-b651-a743f52f9198",
            "port": "42bb1a16-6c5f-4e73-a0eb-00322c0d0dbc"
          }
        },
        {
          "source": {
            "block": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
            "port": "7b452144-2226-4189-885f-1b7be094f9f0"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "pixel_fila"
          },
          "size": 9
        },
        {
          "source": {
            "block": "5c55b7f2-353a-4015-b651-a743f52f9198",
            "port": "a25a8db4-b044-4eaa-b2e3-73eb4af62575"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "pixel_columna"
          },
          "size": 10
        },
        {
          "source": {
            "block": "5b485b74-04d0-4fa6-a05b-13532d5484b7",
            "port": "out"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "PXCLK"
          },
          "vertices": [
            {
              "x": -8,
              "y": -24
            }
          ]
        },
        {
          "source": {
            "block": "5b485b74-04d0-4fa6-a05b-13532d5484b7",
            "port": "out"
          },
          "target": {
            "block": "97970f18-4327-4eb2-aacc-274e8e25bcdc",
            "port": "PCLK"
          },
          "vertices": [
            {
              "x": 976,
              "y": 112
            }
          ]
        },
        {
          "source": {
            "block": "d8711da1-c4d3-4b19-b26b-d7f8ac0abc31",
            "port": "7b452144-2226-4189-885f-1b7be094f9f0"
          },
          "target": {
            "block": "97970f18-4327-4eb2-aacc-274e8e25bcdc",
            "port": "pixel_fila"
          },
          "size": 9
        },
        {
          "source": {
            "block": "5c55b7f2-353a-4015-b651-a743f52f9198",
            "port": "a25a8db4-b044-4eaa-b2e3-73eb4af62575"
          },
          "target": {
            "block": "97970f18-4327-4eb2-aacc-274e8e25bcdc",
            "port": "pixel_columna"
          },
          "size": 10
        },
        {
          "source": {
            "block": "bfbc16e8-a180-4ffc-bd28-aa6525406e30",
            "port": "out"
          },
          "target": {
            "block": "9849ef89-7d89-4f01-9b3b-daaa16dc29b3",
            "port": "sum"
          }
        },
        {
          "source": {
            "block": "f181fc6c-177c-423c-9de3-b5ab8d42e162",
            "port": "a079b2c9-b21f-4bee-9f3f-875c6ebc8d35"
          },
          "target": {
            "block": "3c4afe44-197d-491f-bf82-d789ad552e89",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ac27d39c-51b4-487c-b269-bca0b304eb28",
            "port": "out"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "HREF"
          }
        },
        {
          "source": {
            "block": "5344251f-c3ec-4628-938c-e7b9e217f089",
            "port": "START"
          },
          "target": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "START"
          }
        },
        {
          "source": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "debug"
          },
          "target": {
            "block": "6ef1e0b7-08c8-4b70-90d2-ac98d9a3d019",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ddf7f3d8-4552-4226-9038-bea0d048916f",
            "port": "ready_color"
          },
          "target": {
            "block": "c74a8550-0af2-45bc-b943-6a87570494cb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68e078c2-8c10-4d43-a010-24a1e21efbaf",
            "port": "color"
          },
          "target": {
            "block": "9849ef89-7d89-4f01-9b3b-daaa16dc29b3",
            "port": "color"
          },
          "size": 5
        },
        {
          "source": {
            "block": "9849ef89-7d89-4f01-9b3b-daaa16dc29b3",
            "port": "led"
          },
          "target": {
            "block": "bcb585e3-0ba2-41a0-a9f2-a1caf8a48e7b",
            "port": "in"
          },
          "size": 5
        }
      ]
    }
  },
  "dependencies": {
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
        }
      }
    },
    "7170b78538cb9218afeead9de2d2dc1ac9c52cac": {
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
              "id": "57783994-820b-4a97-b38a-fa8904babf98",
              "type": "basic.input",
              "data": {
                "name": "start",
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
                "name": "scl"
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
                "name": "ready"
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
                "name": "finish"
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
                "name": "dout"
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
        }
      }
    },
    "658ad184c6520792b0c9016e9cfb6e929ed7432b": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "d5f479c6-50cb-4edc-bbaa-1aca129b5d21",
              "type": "basic.input",
              "data": {
                "name": "VSYNC",
                "clock": false
              },
              "position": {
                "x": 96,
                "y": 56
              }
            },
            {
              "id": "89c9d008-ffac-4eab-acec-04395fb45086",
              "type": "basic.output",
              "data": {
                "name": "debug"
              },
              "position": {
                "x": 1648,
                "y": 200
              }
            },
            {
              "id": "3eaadf0c-8989-4c0f-bf4a-c689ca9309de",
              "type": "basic.input",
              "data": {
                "name": "HREF",
                "clock": false
              },
              "position": {
                "x": 56,
                "y": 200
              }
            },
            {
              "id": "fa812657-8bd0-4b54-b31b-b491a23a6f55",
              "type": "basic.input",
              "data": {
                "name": "PCLK",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 336
              }
            },
            {
              "id": "5d4cc17f-3e01-47f4-a6fd-f2f2719bcf47",
              "type": "basic.input",
              "data": {
                "name": "CLK",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 472
              }
            },
            {
              "id": "7b452144-2226-4189-885f-1b7be094f9f0",
              "type": "basic.output",
              "data": {
                "name": "pixel_fila",
                "range": "[8:0]",
                "size": 9
              },
              "position": {
                "x": 1680,
                "y": 512
              }
            },
            {
              "id": "2bff3157-9e5d-487c-9b77-3a077aaf6fea",
              "type": "basic.input",
              "data": {
                "name": "START",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 600
              }
            },
            {
              "id": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
              "type": "basic.code",
              "data": {
                "code": "localparam VSYNC1 = 2'd0;\r\nlocalparam HREF_HIGH_1 = 2'd1;\r\nlocalparam HREF_HIGH_2 = 2'd2;\r\nlocalparam HREF_LOW = 2'd3;\r\nreg [8:0] pixel_fila_reg = 9'd0;\r\nreg debug_reg = 1'b0;\r\n\r\nreg [1:0] state = VSYNC1;\r\n\r\nalways @(posedge CLK)\r\nbegin\r\n  case(state)\r\n\r\n    VSYNC1:\r\n      if(start == 1'b1 && VSYNC == 1'b1)\r\n        begin\r\n          pixel_fila_reg <= 9'd0;\r\n          state <= HREF_HIGH_1;\r\n          debug_reg <= !debug_reg;\r\n        end\r\n      else \r\n        begin\r\n          state <= VSYNC1;\r\n        end\r\n      \r\n    HREF_HIGH_1:\r\n      if(HREF == 1'b1)\r\n        begin\r\n          pixel_fila_reg <= pixel_fila_reg + 9'd1;\r\n          state <= HREF_HIGH_2;\r\n        end\r\n      else \r\n        begin\r\n          state <= HREF_HIGH_1;\r\n        end\r\n\r\n    HREF_HIGH_2:\r\n      if(HREF == 1'b1)\r\n        begin\r\n          state <= HREF_HIGH_2;\r\n        end\r\n      else \r\n        begin\r\n          state <= HREF_LOW;\r\n        end\r\n\r\n    HREF_LOW:\r\n      if(HREF == 1'b0 && VSYNC == 1'b0)\r\n        begin\r\n          state<= HREF_LOW;\r\n        end\r\n      else if(HREF == 1'b0 && VSYNC == 1'b1)\r\n        begin\r\n          state<= VSYNC1;\r\n        end\r\n      else if(HREF == 1'b1 && VSYNC == 1'b0)\r\n        begin\r\n          state<= HREF_HIGH_1;\r\n        end\r\n  endcase\r\nend\r\n\r\nassign pixel_fila = pixel_fila_reg;\r\nassign debug = debug_reg;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "VSYNC"
                    },
                    {
                      "name": "HREF"
                    },
                    {
                      "name": "PCLK"
                    },
                    {
                      "name": "CLK"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "debug"
                    },
                    {
                      "name": "pixel_fila",
                      "range": "[8:0]",
                      "size": 9
                    }
                  ]
                }
              },
              "position": {
                "x": 288,
                "y": 64
              },
              "size": {
                "width": 1224,
                "height": 640
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
                "port": "debug"
              },
              "target": {
                "block": "89c9d008-ffac-4eab-acec-04395fb45086",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
                "port": "pixel_fila"
              },
              "target": {
                "block": "7b452144-2226-4189-885f-1b7be094f9f0",
                "port": "in"
              },
              "size": 9
            },
            {
              "source": {
                "block": "3eaadf0c-8989-4c0f-bf4a-c689ca9309de",
                "port": "out"
              },
              "target": {
                "block": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
                "port": "HREF"
              }
            },
            {
              "source": {
                "block": "d5f479c6-50cb-4edc-bbaa-1aca129b5d21",
                "port": "out"
              },
              "target": {
                "block": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
                "port": "VSYNC"
              }
            },
            {
              "source": {
                "block": "fa812657-8bd0-4b54-b31b-b491a23a6f55",
                "port": "out"
              },
              "target": {
                "block": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
                "port": "PCLK"
              }
            },
            {
              "source": {
                "block": "5d4cc17f-3e01-47f4-a6fd-f2f2719bcf47",
                "port": "out"
              },
              "target": {
                "block": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
                "port": "CLK"
              }
            },
            {
              "source": {
                "block": "2bff3157-9e5d-487c-9b77-3a077aaf6fea",
                "port": "out"
              },
              "target": {
                "block": "e180d1a3-7db6-44a6-911d-94d668dc6f2e",
                "port": "start"
              }
            }
          ]
        }
      }
    },
    "9cb83b0453886b218e4ff849212aefff886b53d1": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "39f1f1e6-480d-49b2-a5ac-49a4c3631009",
              "type": "basic.input",
              "data": {
                "name": "VSYNC",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 144
              }
            },
            {
              "id": "5e07bc7d-33df-4e5d-b6f8-1ba2c05801c4",
              "type": "basic.output",
              "data": {
                "name": "debug"
              },
              "position": {
                "x": 1632,
                "y": 248
              }
            },
            {
              "id": "786c137a-f04d-4550-9cf5-3c7c36769edd",
              "type": "basic.input",
              "data": {
                "name": "HREF",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 280
              }
            },
            {
              "id": "8e402eff-78d9-4613-91fd-77c436264f1f",
              "type": "basic.input",
              "data": {
                "name": "PXCLK",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 408
              }
            },
            {
              "id": "5afedceb-3110-47b3-9575-ea695c1efaed",
              "type": "basic.input",
              "data": {
                "name": "CLK",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 520
              }
            },
            {
              "id": "a25a8db4-b044-4eaa-b2e3-73eb4af62575",
              "type": "basic.output",
              "data": {
                "name": "pixel_columna",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 1664,
                "y": 608
              }
            },
            {
              "id": "42bb1a16-6c5f-4e73-a0eb-00322c0d0dbc",
              "type": "basic.input",
              "data": {
                "name": "START",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 664
              }
            },
            {
              "id": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
              "type": "basic.code",
              "data": {
                "code": "localparam BYTE1_START = 2'd0;\r\nlocalparam BYTE1 = 2'd1;\r\nlocalparam BYTE2 = 2'd2;\r\nreg [9:0] pixel_columna_reg = 10'd0;\r\nreg debug_reg = 1'b0;\r\n\r\nreg [1:0] state = BYTE1_START;\r\n\r\nalways @(posedge PXCLK) \r\nbegin\r\n    if( (HREF === 1'b1) && (VSYNC === 1'b0) && (start ===1'b1))\r\n    begin\r\n      case(state)\r\n        BYTE1_START:\r\n        begin\r\n          pixel_columna_reg <= 10'd0;\r\n          state <=BYTE2;\r\n          debug_reg <= !debug_reg;\r\n        end\r\n        BYTE1: \r\n        begin\r\n          state <= BYTE2;\r\n          debug_reg <= !debug_reg;\r\n        end\r\n        BYTE2:\r\n        begin\r\n          pixel_columna_reg <= pixel_columna_reg + 10'd1;\r\n          state <= BYTE1;\r\n          debug_reg <= !debug_reg;\r\n        end\r\n      endcase\r\n    end\r\n    else begin\r\n         pixel_columna_reg <= 10'd0;\r\n    end\r\nend\r\n\r\nassign pixel_columna = pixel_columna_reg;\r\nassign debug = debug_reg;\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "VSYNC"
                    },
                    {
                      "name": "HREF"
                    },
                    {
                      "name": "PXCLK"
                    },
                    {
                      "name": "CLK"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "debug"
                    },
                    {
                      "name": "pixel_columna",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 280,
                "y": 112
              },
              "size": {
                "width": 1256,
                "height": 656
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
                "port": "debug"
              },
              "target": {
                "block": "5e07bc7d-33df-4e5d-b6f8-1ba2c05801c4",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
                "port": "pixel_columna"
              },
              "target": {
                "block": "a25a8db4-b044-4eaa-b2e3-73eb4af62575",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "39f1f1e6-480d-49b2-a5ac-49a4c3631009",
                "port": "out"
              },
              "target": {
                "block": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
                "port": "VSYNC"
              }
            },
            {
              "source": {
                "block": "786c137a-f04d-4550-9cf5-3c7c36769edd",
                "port": "out"
              },
              "target": {
                "block": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
                "port": "HREF"
              }
            },
            {
              "source": {
                "block": "8e402eff-78d9-4613-91fd-77c436264f1f",
                "port": "out"
              },
              "target": {
                "block": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
                "port": "PXCLK"
              }
            },
            {
              "source": {
                "block": "5afedceb-3110-47b3-9575-ea695c1efaed",
                "port": "out"
              },
              "target": {
                "block": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
                "port": "CLK"
              }
            },
            {
              "source": {
                "block": "42bb1a16-6c5f-4e73-a0eb-00322c0d0dbc",
                "port": "out"
              },
              "target": {
                "block": "491cf5bc-2bee-4fef-b16a-9f563d76681d",
                "port": "start"
              }
            }
          ]
        }
      }
    }
  }
}