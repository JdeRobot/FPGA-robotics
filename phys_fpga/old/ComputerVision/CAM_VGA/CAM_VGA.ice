{
  "version": "1.2",
  "packags": {
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
          "id": "956c9fbd-e5c5-42d3-a1da-f559e8dcd0cb",
          "type": "basic.output",
          "data": {
            "name": "hsync",
            "pins": [
              {
                "index": "0",
                "name": "GP0",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1536,
            "y": 72
          }
        },
        {
          "id": "00320807-7b81-4042-9446-4b637f3294b2",
          "type": "basic.output",
          "data": {
            "name": "vsync",
            "pins": [
              {
                "index": "0",
                "name": "GP2",
                "value": "39"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1096,
            "y": 152
          }
        },
        {
          "id": "7f5fc2f6-ebf3-48b1-b83c-f2fdf1b6ea87",
          "type": "basic.output",
          "data": {
            "name": "red",
            "pins": [
              {
                "index": "0",
                "name": "GP1",
                "value": "38"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1592,
            "y": 304
          }
        },
        {
          "id": "ca8d1ae8-cd02-4652-8d0b-f695f6e8ca13",
          "type": "basic.output",
          "data": {
            "name": "green",
            "pins": [
              {
                "index": "0",
                "name": "GP3",
                "value": "41"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1600,
            "y": 400
          }
        },
        {
          "id": "7df497a2-e421-43a0-befe-448efc7537b4",
          "type": "basic.output",
          "data": {
            "name": "blue",
            "pins": [
              {
                "index": "0",
                "name": "GP5",
                "value": "43"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1824,
            "y": 432
          }
        },
        {
          "id": "8ba1da51-be92-4b28-920d-2b0afd198f39",
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
            "virtual": false
          },
          "position": {
            "x": -2320,
            "y": 800
          }
        },
        {
          "id": "5dfc154a-8fcb-4251-af77-3f028d1a2eb4",
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
            "x": -2544,
            "y": 888
          }
        },
        {
          "id": "12fe5c1d-9d6e-4672-814a-1d45d5bf4089",
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
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -2592,
            "y": 1072
          }
        },
        {
          "id": "071e4c9c-a2ae-4c6a-8d68-2b89f62dcb28",
          "type": "basic.output",
          "data": {
            "name": "d0",
            "pins": [
              {
                "index": "0",
                "name": "D5",
                "value": "114"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -1976,
            "y": 1072
          }
        },
        {
          "id": "1a0ee87a-a946-4e5f-943b-ef06028ab9d0",
          "type": "basic.input",
          "data": {
            "name": "PCLK",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "118"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -3288,
            "y": 1512
          }
        },
        {
          "id": "e1d2f9f8-f72d-45ab-9fdf-86dbc567fc7d",
          "type": "basic.input",
          "data": {
            "name": "HREF",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "117"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -3272,
            "y": 1624
          }
        },
        {
          "id": "7bb307c6-c555-491d-8757-710dbee36788",
          "type": "basic.input",
          "data": {
            "name": "VSYNC",
            "pins": [
              {
                "index": "0",
                "name": "D3",
                "value": "116"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -3272,
            "y": 1712
          }
        },
        {
          "id": "90400873-1a2b-4b98-b9f8-2f8b1310ae64",
          "type": "basic.input",
          "data": {
            "name": "D",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "D13",
                "value": "144"
              },
              {
                "index": "6",
                "name": "D12",
                "value": "143"
              },
              {
                "index": "5",
                "name": "D11",
                "value": "142"
              },
              {
                "index": "4",
                "name": "D10",
                "value": "141"
              },
              {
                "index": "3",
                "name": "D9",
                "value": "139"
              },
              {
                "index": "2",
                "name": "D8",
                "value": "138"
              },
              {
                "index": "1",
                "name": "D7",
                "value": "112"
              },
              {
                "index": "0",
                "name": "D6",
                "value": "113"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -3424,
            "y": 1728
          }
        },
        {
          "id": "f26982bb-af03-4c86-ae21-283e0ce0e319",
          "type": "basic.input",
          "data": {
            "name": "CLK_CAMERA",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": -3480,
            "y": 2120
          }
        },
        {
          "id": "8e07304c-3ffb-435d-8af4-1a5ca16c07f4",
          "type": "basic.output",
          "data": {
            "name": "CLK_OUT",
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
            "x": -3328,
            "y": 2288
          }
        },
        {
          "id": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
          "type": "basic.code",
          "data": {
            "code": "\r\n\r\n    SB_PLL40_CORE #(.FEEDBACK_PATH(\"SIMPLE\"),\r\n                    .PLLOUT_SELECT(\"GENCLK\"),\r\n                    .DIVR(4'b0000),\r\n                    .DIVF(7'b1010011),\r\n                    .DIVQ(3'b101),\r\n                    .FILTER_RANGE(3'b001)\r\n            )\r\n            uut\r\n            (\r\n                    .REFERENCECLK(clk),\r\n                    .PLLOUTCORE(px_clk),\r\n                    .RESETB(1'b1),\r\n                    .BYPASS(1'b0)\r\n              );\r\n\r\n\r\n    // Video structure constants.\r\n    parameter activeHvideo = 640;               // Width of visible pixels.\r\n    parameter activeVvideo =  480;              // Height of visible lines.\r\n    parameter hfp = 24;                         // Horizontal front porch length.\r\n    parameter hpulse = 40;                      // Hsync pulse length.\r\n    parameter hbp = 128;                        // Horizontal back porch length.\r\n    parameter vfp = 9;                          // Vertical front porch length.\r\n    parameter vpulse = 3;                       // Vsync pulse length.\r\n    parameter vbp = 28;                         // Vertical back porch length.\r\n    parameter blackH = hfp + hpulse + hbp;      // Hide pixels in one line.\r\n    parameter blackV = vfp + vpulse + vbp;      // Hide lines in one frame.\r\n    parameter hpixels = blackH + activeHvideo;  // Total horizontal pixels.\r\n    parameter vlines = blackV + activeVvideo;   // Total lines.\r\n\r\n    // Registers for storing the horizontal & vertical counters.\r\n    reg [9:0] hc;\r\n    reg [9:0] vc;\r\n    reg [9:0] x_px;\r\n    reg [9:0] y_px;\r\n    reg red_monitor;\r\n    reg green_monitor;\r\n    reg blue_monitor;\r\n    \r\n // Initial values.\r\n    initial\r\n    begin\r\n      x_px <= 0;\r\n      y_px <= 0;\r\n      hc <= 0;\r\n      vc <= 0;\r\n      red_monitor <= 0;\r\n      green_monitor <= 0;\r\n      blue_monitor <= 0;\r\n    end\r\n\r\n    // Counting pixels.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // Keep counting until the end of the line.\r\n        if (hc < hpixels - 1)\r\n            hc <= hc + 1;\r\n        else\r\n        // When we hit the end of the line, reset the horizontal\r\n        // counter and increment the vertical counter.\r\n        // If vertical counter is at the end of the frame, then\r\n        // reset that one too.\r\n        begin\r\n            hc <= 0;\r\n            if (vc < vlines - 1)\r\n            vc <= vc + 1;\r\n        else\r\n           vc <= 0;\r\n        end\r\n     end\r\n\r\n    // Generate sync pulses (active low) and active video.\r\n    assign hsync = (hc >= hfp && hc < hfp + hpulse) ? 0:1;\r\n    assign vsync = (vc >= vfp && vc < vfp + vpulse) ? 0:1;\r\n    assign activevideo = (hc >= blackH && vc >= blackV) ? 1:0;\r\n\r\n    // Generate color.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // First check if we are within vertical active video range.\r\n        if (activevideo)\r\n        begin\r\n            red_monitor <= color_px[2];\r\n            green_monitor <= color_px[1];\r\n            blue_monitor <= color_px[0];\r\n            x_px <= hc - blackH;\r\n            y_px <= vc - blackV;\r\n        end\r\n        else\r\n        // We are outside active video range so display black.\r\n        begin\r\n            red_monitor <= 0;\r\n            green_monitor <= 0;\r\n            blue_monitor <= 0;\r\n            x_px <= 0;\r\n            y_px <= 0;\r\n        end\r\n     end\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "clr"
                },
                {
                  "name": "color_px",
                  "range": "[2:0]",
                  "size": 3
                }
              ],
              "out": [
                {
                  "name": "hsync"
                },
                {
                  "name": "vsync"
                },
                {
                  "name": "red_monitor"
                },
                {
                  "name": "green_monitor"
                },
                {
                  "name": "blue_monitor"
                },
                {
                  "name": "x_px",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "y_px",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "activevideo"
                },
                {
                  "name": "px_clk"
                }
              ]
            }
          },
          "position": {
            "x": -304,
            "y": 16
          },
          "size": {
            "width": 944,
            "height": 1000
          }
        },
        {
          "id": "f18164a5-fd96-4cc5-b0ef-6f3799f55ace",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": -784,
            "y": 488
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
          "type": "basic.code",
          "data": {
            "code": "//Color filter 0-64\nparameter Rmin = 6'd25;\nparameter Gmin = 6'd25;\nparameter Bmin = 6'd25;\n\n\nparameter width = 32; \nparameter height = 32;  \n\n    //Px Coords\n    wire [9:0] x_img;\n    wire [9:0] y_img;\n    wire [5:0] R;\n    wire [5:0] G;\n    wire [5:0] B;\n    reg [2:0] pixel;\n    \n    assign addr_read = x_img*y_img;\n    \n    \n        // Read memory.\n    always @(posedge clk) begin\n\n   \t    pixel[0] = 0;\n\t    pixel[1] = 1;\n\t    pixel[2] = 1;  \n \n        if ((x_img >= 0) && (x_img < width ) && (y_img >= 0) && (y_img < height))\n        begin\n        \n\n            if(R < Rmin)\n             \tpixel[0] = 0;\n            if(G < Gmin)\n               \tpixel[1] = 0;          \n            if(B < Bmin)\n               \tpixel[2] = 0;                  \n\n       end\n        else\n        begin\n            //rest of the screen\n\t\t\tpixel = 3'b111;\n\n        end\n\n    end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "clr"
                },
                {
                  "name": "x_img",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "y_img",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "R",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "G",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "B",
                  "range": "[5:0]",
                  "size": 6
                }
              ],
              "out": [
                {
                  "name": "pixel",
                  "range": "[2:0]",
                  "size": 3
                },
                {
                  "name": "addr_read",
                  "range": "[11:0]",
                  "size": 12
                }
              ]
            }
          },
          "position": {
            "x": -208,
            "y": 1208
          },
          "size": {
            "width": 1128,
            "height": 760
          }
        },
        {
          "id": "b8e519da-0bec-4482-a04c-1e5bb4518aec",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": -400,
            "y": 1296
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "42211c9f-bc56-45ec-b3fc-786ec5e00cf4",
          "type": "542f6971c8d48189117679b02999f057c0197c7f",
          "position": {
            "x": -2240,
            "y": 968
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "9f36afef-c175-47cf-b6e6-722ece428e09",
          "type": "0100f982073978613da66996176d91bf3dd013f9",
          "position": {
            "x": -2992,
            "y": 1384
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "46f57318-9e61-46a7-b8d6-edbf81561ca7",
          "type": "1374ebd258036ea0ace53cbfce7f63fbf69e9c18",
          "position": {
            "x": -2392,
            "y": 888
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b645c5c5-67a4-40bd-8761-982c93de1a6c",
          "type": "5f0a6d3cb07dd1083e41f5077cfbcf005967d8fe",
          "position": {
            "x": -3000,
            "y": 1928
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "a09f928a-6dc6-4e11-ba77-b1d0c391fea3",
          "type": "fa0ae03923882c502a6cca803384ba215433a441",
          "position": {
            "x": -2960,
            "y": 2192
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "2254e59b-872d-4ee8-ac7d-075aff628a37",
          "type": "basic.code",
          "data": {
            "code": "\nlocalparam BYTE1 = 1'b0;\nlocalparam BYTE2 = 1'b1;\nreg state = BYTE1;\nreg ready_color_reg = 1'b0;\nreg debug_reg = 1'b0;\n\nreg [5:0] RED_reg = 6'd0;\nreg [2:0] GREEN_prev = 3'd0;\nreg [5:0] GREEN_reg = 6'd0;\nreg [5:0] BLUE_reg = 6'd0;\nreg enable_write_reg = 1'd0;\nreg [11:0] add_w_reg = 12'd0;\n\nreg VSYNC_1xdelay;\nreg HREF_1xdelay;\nreg PCLK_1xdelay;\nwire PCLK_pulse_high;\nwire HREF_constant_high;\nwire HREF_constant_low;\n/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/\nalways @(posedge CLK)\nbegin\n  VSYNC_1xdelay <= VSYNC;\nend\nalways @(posedge CLK)\nbegin\n  HREF_1xdelay <= HREF;\nend\nalways @(posedge CLK)\nbegin\n  PCLK_1xdelay <= PCLK;\nend\n/**************************************************************************/\nassign PCLK_pulse_high = ( PCLK_1xdelay == 0 && PCLK == 1) ? 1:0;\nassign HREF_constant_high = ( HREF == 1 && HREF_1xdelay == 1) ? 1:0;\nassign HREF_constant_low = ( HREF == 0 && HREF_1xdelay == 0) ? 1:0;\n/**************************************************************************/\n\nalways @(posedge CLK)\nbegin\n    if( START && PCLK_pulse_high && HREF_constant_high )\n    begin\n      case(state)\n        BYTE1:\n        begin\n          RED_reg<= {1'b0,D[7],D[6],D[5],D[4],D[3]};\n          GREEN_prev<= {D[2],D[1],D[0]};\n          ready_color_reg <= 1'b0;\n          state<= BYTE2;\n          debug_reg<= 1'b0;\n        end\n        BYTE2:\n        begin\n          GREEN_reg<={GREEN_prev,D[7],D[6],D[5]};\n          BLUE_reg<={1'b0,D[4],D[3],D[2],D[1],D[0]};\n          ready_color_reg <= 1'b1;\n          state<= BYTE1;\n          debug_reg<= 1'b1;\n        end\n      endcase\n    end\n    else if ( HREF_constant_low )\n    begin\n      ready_color_reg <= 1'b0;\n      debug_reg<= 1'b0;\n      state <= BYTE1;\n    end\n\n    if( PIXEL_COLUMN <= 10'd32 && PIXEL_ROW <= 10'd32 )\n    begin\n      add_w_reg <= (PIXEL_ROW-1) * 32 + PIXEL_COLUMN;\n      enable_write_reg <= 1'b1;\n    end\nend\n\nassign BLUE = BLUE_reg;\nassign GREEN = GREEN_reg;\nassign RED = RED_reg;\nassign write_enable = enable_write_reg;\nassign add_w = add_w_reg;\n//assign READY_COLOR = ready_color_reg;\n\n\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "CLK"
                },
                {
                  "name": "START"
                },
                {
                  "name": "PCLK"
                },
                {
                  "name": "HREF"
                },
                {
                  "name": "VSYNC"
                },
                {
                  "name": "D",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "PIXEL_COLUMN",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "PIXEL_ROW",
                  "range": "[8:0]",
                  "size": 9
                }
              ],
              "out": [
                {
                  "name": "RED",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "GREEN",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "BLUE",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "write_enable"
                },
                {
                  "name": "add_w",
                  "range": "[11:0]",
                  "size": 12
                }
              ]
            }
          },
          "position": {
            "x": -2440,
            "y": 1272
          },
          "size": {
            "width": 1168,
            "height": 872
          }
        },
        {
          "id": "099023d6-d1dd-414c-9821-2b11d6d7e672",
          "type": "basic.code",
          "data": {
            "code": "parameter DATA_WIDTH = 6; //6 bit \nparameter ADD_WIDTH = 12;\nparameter A_MAX = 4096; // 2^ADD_WIDTH\n\n\n  // Memory \n  reg [DATA_WIDTH-1:0] img_storage [A_MAX-1:0];\n\n\n\n  // Write data to memory\n  always @(posedge clk_w) begin\n    if (write_enable) begin\n      img_storage[add_w] <= data_w_R;\n      img_storage[add_w+1] <= data_w_G;\n      img_storage[add_w+2] <= data_w_B;\n    end\n  end\n\n  \n/*\n    // Read data from memory\n  always @(posedge clk_r) begin\n    data_r_R <= img_storage[add_r];\n    data_r_G <= img_storage[add_r+1];\n    data_r_B <= img_storage[add_r+2];\n  end\n*/\n\nassign data_r_R = img_storage[add_r];\nassign data_r_G = img_storage[add_r+1];\nassign data_r_B = img_storage[add_r+2];\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "add_w",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "add_r",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "data_w_R",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "data_w_G",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "data_w_B",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "write_enable"
                },
                {
                  "name": "clk_w"
                },
                {
                  "name": "clk_r"
                }
              ],
              "out": [
                {
                  "name": "data_r_R",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "data_r_G",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "data_r_B",
                  "range": "[5:0]",
                  "size": 6
                }
              ]
            }
          },
          "position": {
            "x": -944,
            "y": 1624
          },
          "size": {
            "width": 424,
            "height": 352
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "hsync"
          },
          "target": {
            "block": "956c9fbd-e5c5-42d3-a1da-f559e8dcd0cb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "vsync"
          },
          "target": {
            "block": "00320807-7b81-4042-9446-4b637f3294b2",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "green_monitor"
          },
          "target": {
            "block": "ca8d1ae8-cd02-4652-8d0b-f695f6e8ca13",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "blue_monitor"
          },
          "target": {
            "block": "7df497a2-e421-43a0-befe-448efc7537b4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "red_monitor"
          },
          "target": {
            "block": "7f5fc2f6-ebf3-48b1-b83c-f2fdf1b6ea87",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f18164a5-fd96-4cc5-b0ef-6f3799f55ace",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "clr"
          }
        },
        {
          "source": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "pixel"
          },
          "target": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "color_px"
          },
          "vertices": [
            {
              "x": -312,
              "y": 1152
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "x_px"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "x_img"
          },
          "vertices": [
            {
              "x": -224,
              "y": 1096
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "y_px"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "y_img"
          },
          "vertices": [
            {
              "x": -216,
              "y": 1056
            },
            {
              "x": -368,
              "y": 1072
            },
            {
              "x": -368,
              "y": 1592
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "b8e519da-0bec-4482-a04c-1e5bb4518aec",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "clr"
          }
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "px_clk"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 840,
              "y": 1184
            }
          ]
        },
        {
          "source": {
            "block": "90400873-1a2b-4b98-b9f8-2f8b1310ae64",
            "port": "out"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "D"
          },
          "vertices": [],
          "size": 8
        },
        {
          "source": {
            "block": "1a0ee87a-a946-4e5f-943b-ef06028ab9d0",
            "port": "out"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "PCLK"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "e1d2f9f8-f72d-45ab-9fdf-86dbc567fc7d",
            "port": "out"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "HREF"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "7bb307c6-c555-491d-8757-710dbee36788",
            "port": "out"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "VSYNC"
          }
        },
        {
          "source": {
            "block": "5dfc154a-8fcb-4251-af77-3f028d1a2eb4",
            "port": "out"
          },
          "target": {
            "block": "46f57318-9e61-46a7-b8d6-edbf81561ca7",
            "port": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "42211c9f-bc56-45ec-b3fc-786ec5e00cf4",
            "port": "c5e713e7-17d4-4b66-9e52-ba709350d9bf"
          },
          "target": {
            "block": "8ba1da51-be92-4b28-920d-2b0afd198f39",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "46f57318-9e61-46a7-b8d6-edbf81561ca7",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "42211c9f-bc56-45ec-b3fc-786ec5e00cf4",
            "port": "57783994-820b-4a97-b38a-fa8904babf98"
          }
        },
        {
          "source": {
            "block": "42211c9f-bc56-45ec-b3fc-786ec5e00cf4",
            "port": "a079b2c9-b21f-4bee-9f3f-875c6ebc8d35"
          },
          "target": {
            "block": "9f36afef-c175-47cf-b6e6-722ece428e09",
            "port": "50830a9a-c037-4f4c-b447-45a7aaf44520"
          },
          "vertices": [
            {
              "x": -2208,
              "y": 1200
            },
            {
              "x": -2568,
              "y": 1200
            }
          ]
        },
        {
          "source": {
            "block": "12fe5c1d-9d6e-4672-814a-1d45d5bf4089",
            "port": "out"
          },
          "target": {
            "block": "42211c9f-bc56-45ec-b3fc-786ec5e00cf4",
            "port": "5bc0374a-1a1b-4418-97d3-276d74ecc31b"
          }
        },
        {
          "source": {
            "block": "9f36afef-c175-47cf-b6e6-722ece428e09",
            "port": "06bc2aa5-60a0-42d2-ac21-74a5a3a60e22"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "START"
          }
        },
        {
          "source": {
            "block": "42211c9f-bc56-45ec-b3fc-786ec5e00cf4",
            "port": "20cbc10d-f86d-419d-aea2-32051c2f9112"
          },
          "target": {
            "block": "071e4c9c-a2ae-4c6a-8d68-2b89f62dcb28",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7bb307c6-c555-491d-8757-710dbee36788",
            "port": "out"
          },
          "target": {
            "block": "9f36afef-c175-47cf-b6e6-722ece428e09",
            "port": "e69b33a9-c1e8-422b-8401-586f1e345cf1"
          }
        },
        {
          "source": {
            "block": "7bb307c6-c555-491d-8757-710dbee36788",
            "port": "out"
          },
          "target": {
            "block": "b645c5c5-67a4-40bd-8761-982c93de1a6c",
            "port": "b535e00a-9380-4aab-97c3-926a9a97e2df"
          }
        },
        {
          "source": {
            "block": "b645c5c5-67a4-40bd-8761-982c93de1a6c",
            "port": "16fc76fe-ae41-407b-ac34-b004bcdc42b1"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "PIXEL_COLUMN"
          },
          "vertices": [
            {
              "x": -2712,
              "y": 2040
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "e1d2f9f8-f72d-45ab-9fdf-86dbc567fc7d",
            "port": "out"
          },
          "target": {
            "block": "b645c5c5-67a4-40bd-8761-982c93de1a6c",
            "port": "e46b115d-3e81-4aaa-88af-9105c55f7265"
          },
          "vertices": [
            {
              "x": -3112,
              "y": 1704
            }
          ]
        },
        {
          "source": {
            "block": "1a0ee87a-a946-4e5f-943b-ef06028ab9d0",
            "port": "out"
          },
          "target": {
            "block": "b645c5c5-67a4-40bd-8761-982c93de1a6c",
            "port": "d3e350f6-5021-494c-af61-1b02b680d023"
          },
          "vertices": [
            {
              "x": -3144,
              "y": 1608
            }
          ]
        },
        {
          "source": {
            "block": "9f36afef-c175-47cf-b6e6-722ece428e09",
            "port": "06bc2aa5-60a0-42d2-ac21-74a5a3a60e22"
          },
          "target": {
            "block": "b645c5c5-67a4-40bd-8761-982c93de1a6c",
            "port": "920d5599-3c4b-43a3-a1c3-4786658c0090"
          }
        },
        {
          "source": {
            "block": "f26982bb-af03-4c86-ae21-283e0ce0e319",
            "port": "out"
          },
          "target": {
            "block": "b645c5c5-67a4-40bd-8761-982c93de1a6c",
            "port": "56aca5f8-dc79-437e-a429-f7163ed4cd65"
          },
          "vertices": [
            {
              "x": -3152,
              "y": 2112
            }
          ]
        },
        {
          "source": {
            "block": "a09f928a-6dc6-4e11-ba77-b1d0c391fea3",
            "port": "4046f429-e058-420d-94b5-423780b457fc"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "PIXEL_ROW"
          },
          "size": 9
        },
        {
          "source": {
            "block": "e1d2f9f8-f72d-45ab-9fdf-86dbc567fc7d",
            "port": "out"
          },
          "target": {
            "block": "a09f928a-6dc6-4e11-ba77-b1d0c391fea3",
            "port": "e46b115d-3e81-4aaa-88af-9105c55f7265"
          }
        },
        {
          "source": {
            "block": "1a0ee87a-a946-4e5f-943b-ef06028ab9d0",
            "port": "out"
          },
          "target": {
            "block": "a09f928a-6dc6-4e11-ba77-b1d0c391fea3",
            "port": "d3e350f6-5021-494c-af61-1b02b680d023"
          }
        },
        {
          "source": {
            "block": "7bb307c6-c555-491d-8757-710dbee36788",
            "port": "out"
          },
          "target": {
            "block": "a09f928a-6dc6-4e11-ba77-b1d0c391fea3",
            "port": "b535e00a-9380-4aab-97c3-926a9a97e2df"
          }
        },
        {
          "source": {
            "block": "f26982bb-af03-4c86-ae21-283e0ce0e319",
            "port": "out"
          },
          "target": {
            "block": "a09f928a-6dc6-4e11-ba77-b1d0c391fea3",
            "port": "56aca5f8-dc79-437e-a429-f7163ed4cd65"
          },
          "vertices": [
            {
              "x": -3152,
              "y": 2192
            }
          ]
        },
        {
          "source": {
            "block": "9f36afef-c175-47cf-b6e6-722ece428e09",
            "port": "06bc2aa5-60a0-42d2-ac21-74a5a3a60e22"
          },
          "target": {
            "block": "a09f928a-6dc6-4e11-ba77-b1d0c391fea3",
            "port": "920d5599-3c4b-43a3-a1c3-4786658c0090"
          }
        },
        {
          "source": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "addr_read"
          },
          "target": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "add_r"
          },
          "vertices": [
            {
              "x": 920,
              "y": 2256
            },
            {
              "x": -1064,
              "y": 2256
            }
          ],
          "size": 12
        },
        {
          "source": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "RED"
          },
          "target": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "data_w_R"
          },
          "size": 6
        },
        {
          "source": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "GREEN"
          },
          "target": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "data_w_G"
          },
          "vertices": [
            {
              "x": -1184,
              "y": 1784
            }
          ],
          "size": 6
        },
        {
          "source": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "BLUE"
          },
          "target": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "data_w_B"
          },
          "vertices": [
            {
              "x": -1184,
              "y": 1824
            }
          ],
          "size": 6
        },
        {
          "source": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "data_r_R"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "R"
          },
          "size": 6
        },
        {
          "source": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "data_r_G"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "G"
          },
          "size": 6
        },
        {
          "source": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "data_r_B"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "B"
          },
          "size": 6
        },
        {
          "source": {
            "block": "f26982bb-af03-4c86-ae21-283e0ce0e319",
            "port": "out"
          },
          "target": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "CLK"
          },
          "vertices": [
            {
              "x": -3264,
              "y": 1328
            }
          ]
        },
        {
          "source": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "write_enable"
          },
          "target": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "write_enable"
          }
        },
        {
          "source": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "add_w"
          },
          "target": {
            "block": "099023d6-d1dd-414c-9821-2b11d6d7e672",
            "port": "add_w"
          },
          "vertices": [
            {
              "x": -1168,
              "y": 2048
            }
          ],
          "size": 12
        },
        {
          "source": {
            "block": "f26982bb-af03-4c86-ae21-283e0ce0e319",
            "port": "out"
          },
          "target": {
            "block": "8e07304c-3ffb-435d-8af4-1a5ca16c07f4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f26982bb-af03-4c86-ae21-283e0ce0e319",
            "port": "out"
          },
          "target": {
            "block": "9f36afef-c175-47cf-b6e6-722ece428e09",
            "port": "cfbec1ee-c383-4b21-a630-d8fc17f4a8d7"
          }
        }
      ]
    }
  },
  "dependencies": {
    "c4dd08263a85a91ba53e2ae2b38de344c5efcb52": {
      "package": {
        "name": "Bit 0",
        "version": "1.0.0",
        "description": "Assign 0 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 0\n\nassign v = 1'b0;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "542f6971c8d48189117679b02999f057c0197c7f": {
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
                "code": "localparam WRITE1 = 2'd0;\nlocalparam WRITE2 = 2'd1;\nlocalparam LAST_READINGS = 2'd2;\nreg final_reg = 1'b0;\nreg [6:0] direction_slave_reg = 7'b0100001;\nreg [7:0] registrer2write_reg = 8'h11;\nreg [7:0] byte2write_reg = 8'b00000001;\nreg [1:0] state1 = WRITE1;\nalways @(posedge ready)\n    begin\n        case(state1)\n        WRITE1:\n            begin\n                direction_slave_reg <= 7'b0100001;\n                registrer2write_reg <= 8'h12;\n                byte2write_reg <= 8'b00000100;\n                state1 <= WRITE2;\n            end\n        WRITE2:\n            begin\n                direction_slave_reg <= 7'b0100001;\n                registrer2write_reg <= 8'h40;\n                byte2write_reg <= 8'b11010000;\n                state1 <= LAST_READINGS;\n            end\n        LAST_READINGS: final_reg<= 1'b1;\n        endcase\n    \n    end\nassign final = final_reg;\nassign direction_slave = direction_slave_reg;\nassign registrer2write = registrer2write_reg;\nassign byte2write = byte2write_reg;\n\n\n\n",
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
    "0100f982073978613da66996176d91bf3dd013f9": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20height=%22512pt%22%20viewBox=%220%200%20512%20512%22%20width=%22512pt%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cpath%20d=%22M512%20256c0%20132.273-100.324%20241.121-229.027%20254.59-8.868.93-17.86%201.41-26.973%201.41C114.617%20512%200%20397.383%200%20256S114.617%200%20256%200c9.113%200%2018.105.48%2026.973%201.41C411.676%2014.88%20512%20123.727%20512%20256zm0%200%22%20fill=%22#91aee2%22/%3E%3Cpath%20d=%22M512%20256c0%20132.273-100.324%20241.121-229.027%20254.59C154.266%20497.12%2053.94%20388.273%2053.94%20256S154.266%2014.879%20282.973%201.41C411.676%2014.88%20512%20123.727%20512%20256zm0%200%22%20fill=%22#bacbec%22/%3E%3Cpath%20d=%22M458.602%20256c0%20105.406-80.926%20192.273-183.91%20201.738-6.153.563-12.391.852-18.692.852-111.71%200-202.59-90.88-202.59-202.59S144.29%2053.41%20256%2053.41c6.3%200%2012.54.29%2018.691.852%20102.985%209.465%20183.91%2096.332%20183.91%20201.738zm0%200%22%20fill=%22#2e5aac%22/%3E%3Cpath%20d=%22M458.602%20256c0%20105.406-80.926%20192.273-183.91%20201.738C171.71%20448.273%2090.796%20361.406%2090.796%20256S171.71%2063.727%20274.69%2054.262c102.985%209.465%20183.91%2096.332%20183.91%20201.738zm0%200%22%20fill=%22#4172cc%22/%3E%3Cg%20fill=%22#ffc14f%22%3E%3Cpath%20d=%22M311.547%20173c0%206.21%202.598%2012.125%207.121%2016.379%2017.75%2016.695%2028.844%2040.387%2028.844%2066.621%200%2050.46-41.051%2091.5-91.512%2091.5s-91.512-41.04-91.512-91.5c0-26.234%2011.094-49.926%2028.844-66.621%204.523-4.254%207.121-10.168%207.121-16.379%200-19.738-23.562-29.742-37.926-16.203-26.394%2024.883-42.902%2060.156-42.902%2099.203%200%2075.188%2061.188%20136.363%20136.375%20136.363S392.375%20331.188%20392.375%20256c0-39.047-16.504-74.32-42.902-99.203-14.364-13.54-37.926-3.535-37.926%2016.203zm0%200%22/%3E%3Cpath%20d=%22M256%20232.5c-12.39%200-22.434-10.043-22.434-22.434v-91.863c0-12.387%2010.043-22.43%2022.434-22.43s22.434%2010.043%2022.434%2022.43v91.863c0%2012.391-10.043%2022.434-22.434%2022.434zm0%200%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "50830a9a-c037-4f4c-b447-45a7aaf44520",
              "type": "basic.input",
              "data": {
                "name": "FINISH_I2C",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 104
              }
            },
            {
              "id": "e69b33a9-c1e8-422b-8401-586f1e345cf1",
              "type": "basic.input",
              "data": {
                "name": "VSYNC",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 200
              }
            },
            {
              "id": "06bc2aa5-60a0-42d2-ac21-74a5a3a60e22",
              "type": "basic.output",
              "data": {
                "name": "START"
              },
              "position": {
                "x": 792,
                "y": 200
              }
            },
            {
              "id": "cfbec1ee-c383-4b21-a630-d8fc17f4a8d7",
              "type": "basic.input",
              "data": {
                "name": "CLK",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 288
              }
            },
            {
              "id": "8f319c89-3463-49af-b930-236955771ce2",
              "type": "basic.code",
              "data": {
                "code": "reg start_reg = 1'b0;\nreg VSYNC_1xdelay;\nwire VSYNC_pulse_high;\n\nalways @(posedge CLK)\nbegin\n  VSYNC_1xdelay <= VSYNC;\nend\n\nassign VSYNC_pulse_high = ( VSYNC ==1 && VSYNC_1xdelay == 0) ? 1:0;\n\nalways @(posedge CLK)\nbegin\n  if (VSYNC_pulse_high && finish_i2c)\n    begin\n    start_reg <= !start_reg;\n    end\nend\nassign START = start_reg;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "finish_i2c"
                    },
                    {
                      "name": "VSYNC"
                    },
                    {
                      "name": "CLK"
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
                "x": 184,
                "y": -8
              },
              "size": {
                "width": 560,
                "height": 392
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "50830a9a-c037-4f4c-b447-45a7aaf44520",
                "port": "out"
              },
              "target": {
                "block": "8f319c89-3463-49af-b930-236955771ce2",
                "port": "finish_i2c"
              }
            },
            {
              "source": {
                "block": "e69b33a9-c1e8-422b-8401-586f1e345cf1",
                "port": "out"
              },
              "target": {
                "block": "8f319c89-3463-49af-b930-236955771ce2",
                "port": "VSYNC"
              }
            },
            {
              "source": {
                "block": "cfbec1ee-c383-4b21-a630-d8fc17f4a8d7",
                "port": "out"
              },
              "target": {
                "block": "8f319c89-3463-49af-b930-236955771ce2",
                "port": "CLK"
              }
            },
            {
              "source": {
                "block": "8f319c89-3463-49af-b930-236955771ce2",
                "port": "START"
              },
              "target": {
                "block": "06bc2aa5-60a0-42d2-ac21-74a5a3a60e22",
                "port": "in"
              }
            }
          ]
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
        }
      }
    },
    "5f0a6d3cb07dd1083e41f5077cfbcf005967d8fe": {
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
              "id": "b535e00a-9380-4aab-97c3-926a9a97e2df",
              "type": "basic.input",
              "data": {
                "name": "VSYNC",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 88
              }
            },
            {
              "id": "72248c35-8fb5-4c9b-bbca-6a4e6765a5ae",
              "type": "basic.output",
              "data": {
                "name": "DEBUG"
              },
              "position": {
                "x": 792,
                "y": 160
              }
            },
            {
              "id": "e46b115d-3e81-4aaa-88af-9105c55f7265",
              "type": "basic.input",
              "data": {
                "name": "HREF",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 168
              }
            },
            {
              "id": "d3e350f6-5021-494c-af61-1b02b680d023",
              "type": "basic.input",
              "data": {
                "name": "PCLK",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 232
              }
            },
            {
              "id": "56aca5f8-dc79-437e-a429-f7163ed4cd65",
              "type": "basic.input",
              "data": {
                "name": "CLK",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 304
              }
            },
            {
              "id": "16fc76fe-ae41-407b-ac34-b004bcdc42b1",
              "type": "basic.output",
              "data": {
                "name": "PIXEL_COLUMN",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 784,
                "y": 360
              }
            },
            {
              "id": "920d5599-3c4b-43a3-a1c3-4786658c0090",
              "type": "basic.input",
              "data": {
                "name": "START",
                "clock": false
              },
              "position": {
                "x": 16,
                "y": 376
              }
            },
            {
              "id": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
              "type": "basic.code",
              "data": {
                "code": "reg [9:0] pixel_columna_reg = 10'd1;\nreg debug_reg = 1'b0;\nreg HREF_1xdelay;\nreg PCLK_1xdelay;\nlocalparam BYTE1 = 1'b0;\nlocalparam BYTE2 = 1'b1;\nreg state = BYTE1;\n\nwire PCLK_pulse_low;\nwire HREF_constant_high;\nwire HREF_constant_low;\n/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/\nalways @(posedge CLK)\nbegin\n  HREF_1xdelay <= HREF;\nend\nalways @(posedge CLK)\nbegin\n  PCLK_1xdelay <= PCLK;\nend\n/**************************************************************************/\nassign PCLK_pulse_low = ( PCLK_1xdelay == 1 && PCLK == 0) ? 1:0;\nassign HREF_constant_high = ( HREF == 1 && HREF_1xdelay == 1) ? 1:0;\nassign HREF_constant_low = ( HREF == 0 && HREF_1xdelay == 0) ? 1:0;\n/**************************************************************************/\nalways @(posedge CLK)\nbegin\n  if ( START && PCLK_pulse_low && HREF_constant_high ) //LOW\n  begin\n    case ( state )\n      BYTE1:\n      begin\n        state <= BYTE2;\n      end\n      BYTE2:\n      begin\n        pixel_columna_reg <= pixel_columna_reg + 10'd1;\n        state <= BYTE1;\n        debug_reg <= !debug_reg;\n      end\n     endcase\n  end\n  else if ( HREF_constant_low )\n  begin\n    pixel_columna_reg <= 10'd1;\n    state <= BYTE1;\n  end\nend\n\nassign PIXEL_COLUMN = pixel_columna_reg;\nassign DEBUG = debug_reg;",
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
                      "name": "START"
                    }
                  ],
                  "out": [
                    {
                      "name": "DEBUG"
                    },
                    {
                      "name": "PIXEL_COLUMN",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 224,
                "y": 136
              },
              "size": {
                "width": 456,
                "height": 280
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b535e00a-9380-4aab-97c3-926a9a97e2df",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "VSYNC"
              }
            },
            {
              "source": {
                "block": "e46b115d-3e81-4aaa-88af-9105c55f7265",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "HREF"
              }
            },
            {
              "source": {
                "block": "d3e350f6-5021-494c-af61-1b02b680d023",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "PCLK"
              }
            },
            {
              "source": {
                "block": "56aca5f8-dc79-437e-a429-f7163ed4cd65",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "CLK"
              }
            },
            {
              "source": {
                "block": "920d5599-3c4b-43a3-a1c3-4786658c0090",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "START"
              }
            },
            {
              "source": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "DEBUG"
              },
              "target": {
                "block": "72248c35-8fb5-4c9b-bbca-6a4e6765a5ae",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "PIXEL_COLUMN"
              },
              "target": {
                "block": "16fc76fe-ae41-407b-ac34-b004bcdc42b1",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 696,
                  "y": 392
                }
              ],
              "size": 10
            }
          ]
        }
      }
    },
    "fa0ae03923882c502a6cca803384ba215433a441": {
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
              "id": "b535e00a-9380-4aab-97c3-926a9a97e2df",
              "type": "basic.input",
              "data": {
                "name": "VSYNC",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 88
              }
            },
            {
              "id": "72248c35-8fb5-4c9b-bbca-6a4e6765a5ae",
              "type": "basic.output",
              "data": {
                "name": "DEBUG"
              },
              "position": {
                "x": 792,
                "y": 160
              }
            },
            {
              "id": "e46b115d-3e81-4aaa-88af-9105c55f7265",
              "type": "basic.input",
              "data": {
                "name": "HREF",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 168
              }
            },
            {
              "id": "d3e350f6-5021-494c-af61-1b02b680d023",
              "type": "basic.input",
              "data": {
                "name": "PCLK",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 232
              }
            },
            {
              "id": "56aca5f8-dc79-437e-a429-f7163ed4cd65",
              "type": "basic.input",
              "data": {
                "name": "CLK",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 304
              }
            },
            {
              "id": "4046f429-e058-420d-94b5-423780b457fc",
              "type": "basic.output",
              "data": {
                "name": "PIXEL_ROE",
                "range": "[8:0]",
                "size": 9
              },
              "position": {
                "x": 784,
                "y": 360
              }
            },
            {
              "id": "920d5599-3c4b-43a3-a1c3-4786658c0090",
              "type": "basic.input",
              "data": {
                "name": "START",
                "clock": false
              },
              "position": {
                "x": 16,
                "y": 376
              }
            },
            {
              "id": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
              "type": "basic.code",
              "data": {
                "code": "\nreg [8:0] pixel_fila_reg = 9'd0;\nreg debug_reg = 1'b0;\nreg VSYNC_1xdelay;\nreg HREF_1xdelay;\nwire VSYNC_pulse_high;\nwire VSYNC_constant_low;\nwire HREF_pulse_high;\n\n/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/\nalways @(posedge CLK)\nbegin\n  VSYNC_1xdelay <= VSYNC;\nend\n\nalways @(posedge CLK)\nbegin\n  HREF_1xdelay <= HREF;\nend\n/**************************************************************************/\nassign VSYNC_constant_low = ( VSYNC == 0 && VSYNC_1xdelay == 0) ? 1:0;\nassign HREF_pulse_high = ( HREF == 1 && HREF_1xdelay == 0) ? 1:0;\nassign VSYNC_pulse_high = ( VSYNC ==1 && VSYNC_1xdelay == 0) ? 1:0;\n/**************************************************************************/\nalways @(posedge CLK)\nbegin\n\n  if ( VSYNC_constant_low && START)\n    begin\n      if( HREF_pulse_high )\n      begin\n        pixel_fila_reg <= pixel_fila_reg + 9'd1;\n        debug_reg <= !debug_reg;\n      end\n    end\n  else if ( VSYNC_pulse_high )\n    begin\n      pixel_fila_reg <= 9'd0;\n      //debug_reg <= !debug_reg;\n    end\nend\n\nassign PIXEL_ROW = pixel_fila_reg;\nassign DEBUG = debug_reg;\n",
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
                      "name": "START"
                    }
                  ],
                  "out": [
                    {
                      "name": "DEBUG"
                    },
                    {
                      "name": "PIXEL_ROW",
                      "range": "[8:0]",
                      "size": 9
                    }
                  ]
                }
              },
              "position": {
                "x": 224,
                "y": 136
              },
              "size": {
                "width": 456,
                "height": 280
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b535e00a-9380-4aab-97c3-926a9a97e2df",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "VSYNC"
              }
            },
            {
              "source": {
                "block": "e46b115d-3e81-4aaa-88af-9105c55f7265",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "HREF"
              }
            },
            {
              "source": {
                "block": "d3e350f6-5021-494c-af61-1b02b680d023",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "PCLK"
              }
            },
            {
              "source": {
                "block": "56aca5f8-dc79-437e-a429-f7163ed4cd65",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "CLK"
              }
            },
            {
              "source": {
                "block": "920d5599-3c4b-43a3-a1c3-4786658c0090",
                "port": "out"
              },
              "target": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "START"
              }
            },
            {
              "source": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "DEBUG"
              },
              "target": {
                "block": "72248c35-8fb5-4c9b-bbca-6a4e6765a5ae",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8517900a-c41d-4ee7-9317-2bfc89630d9e",
                "port": "PIXEL_ROW"
              },
              "target": {
                "block": "4046f429-e058-420d-94b5-423780b457fc",
                "port": "in"
              },
              "size": 9
            }
          ]
        }
      }
    }
  }
}