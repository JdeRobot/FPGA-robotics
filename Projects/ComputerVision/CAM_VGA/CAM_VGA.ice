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
                "name": "",
                "value": 0
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
                "name": "SW1",
                "value": "10"
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
                "name": "DD5",
                "value": "87"
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
            "x": -2880,
            "y": 1656
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
            "x": -2880,
            "y": 1728
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
            "x": -2872,
            "y": 1816
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
            "x": -2880,
            "y": 1952
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
            "code": "//Color filter 0-64\nparameter Rmin = 25;\nparameter Gmin = 25;\nparameter Bmin = 25;\n\n\nparameter width = 32; \nparameter height = 32;  \n\n    //Px Coords\n    wire [9:0] x_img;\n    wire [9:0] y_img;\n    wire [5:0] R;\n    wire [5:0] G;\n    wire [5:0] B;\n    reg [2:0] pixel;\n    \n    assign addr_read = x_img*y_img;\n    \n    \n        // Read memory.\n    always @(posedge clk) begin\n\n   \t    pixel[0] = 1;\n\t    pixel[1] = 1;\n\t    pixel[2] = 1;  \n \n        if ((x_img >= 0) && (x_img < width ) && (y_img >= 0) && (y_img < height))\n        begin\n        \n\n            if(R < Rmin)\n             \tpixel[0] = 0;\n            if(G < Gmin)\n               \tpixel[1] = 0;          \n            if(B < Bmin)\n               \tpixel[2] = 0;                  \n\n       end\n        else\n        begin\n            //rest of the screen\n\t\t\tpixel = 3'b111;\n\n        end\n\n    end",
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
          "id": "44f46d2b-5319-440e-8d38-eac63828c452",
          "type": "f282431f1cfbab31ac46ddf7ed5eabad7b49ceee",
          "position": {
            "x": -920,
            "y": 1680
          },
          "size": {
            "width": 96,
            "height": 256
          }
        },
        {
          "id": "9f36afef-c175-47cf-b6e6-722ece428e09",
          "type": "0100f982073978613da66996176d91bf3dd013f9",
          "position": {
            "x": -2696,
            "y": 1440
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
          "id": "2254e59b-872d-4ee8-ac7d-075aff628a37",
          "type": "basic.code",
          "data": {
            "code": "\r\nlocalparam BYTE1 = 1'b0;\r\nlocalparam BYTE2 = 1'b1;\r\nreg state = BYTE1;\r\nreg ready_color_reg = 1'b0;\r\nreg debug_reg = 1'b0;\r\n\r\nreg [5:0] RED_reg = 6'd0;\r\nreg [2:0] GREEN_prev = 3'd0;\r\nreg [5:0] GREEN_reg = 6'd0;\r\nreg [5:0] BLUE_reg = 6'd0;\r\nreg VSYNC_1xdelay;\r\nreg HREF_1xdelay;\r\nreg PCLK_1xdelay;\r\nwire PCLK_pulse_high;\r\nwire HREF_constant_high;\r\nwire HREF_constant_low;\r\n/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/\r\nalways @(posedge CLK)\r\nbegin\r\n  VSYNC_1xdelay <= VSYNC;\r\nend\r\nalways @(posedge CLK)\r\nbegin\r\n  HREF_1xdelay <= HREF;\r\nend\r\nalways @(posedge CLK)\r\nbegin\r\n  PCLK_1xdelay <= PCLK;\r\nend\r\n/**************************************************************************/\r\nassign PCLK_pulse_high = ( PCLK_1xdelay == 0 && PCLK == 1) ? 1:0;\r\nassign HREF_constant_high = ( HREF == 1 && HREF_1xdelay == 1) ? 1:0;\r\nassign HREF_constant_low = ( HREF == 0 && HREF_1xdelay == 0) ? 1:0;\r\n/**************************************************************************/\r\n\r\nalways @(posedge CLK)\r\nbegin\r\n    if( START && PCLK_pulse_high && HREF_constant_high )\r\n    begin\r\n      case(state)\r\n        BYTE1:\r\n        begin\r\n          RED_reg<= {1'b0,D[7],D[6],D[5],D[4],D[3]};\r\n          GREEN_prev<= {D[2],D[1],D[0]};\r\n          ready_color_reg <= 1'b0;\r\n          state<= BYTE2;\r\n          debug_reg<= 1'b0;\r\n        end\r\n        BYTE2:\r\n        begin\r\n          GREEN_reg<={GREEN_prev,D[7],D[6],D[5]};\r\n          BLUE_reg<={1'b0,D[4],D[3],D[2],D[1],D[0]};\r\n          ready_color_reg <= 1'b1;\r\n          state<= BYTE1;\r\n          debug_reg<= 1'b1;\r\n        end\r\n      endcase\r\n    end\r\n    else if ( HREF_constant_low )\r\n    begin\r\n      ready_color_reg <= 1'b0;\r\n      debug_reg<= 1'b0;\r\n      state <= BYTE1;\r\n    end\r\nend\r\n\r\nassign BLUE = BLUE_reg;\r\nassign GREEN = GREEN_reg;\r\nassign RED = RED_reg;\r\n//assign READY_COLOR = ready_color_reg;\r\n\r\n\r\n\r\n",
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
            "block": "44f46d2b-5319-440e-8d38-eac63828c452",
            "port": "9a8457ac-d13d-4bfb-9260-9a1222b3d94a"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "R"
          },
          "size": 6
        },
        {
          "source": {
            "block": "44f46d2b-5319-440e-8d38-eac63828c452",
            "port": "dcf71cc0-5511-494a-9df6-749ec29e9ab5"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "G"
          },
          "size": 6
        },
        {
          "source": {
            "block": "44f46d2b-5319-440e-8d38-eac63828c452",
            "port": "73d5b8e9-169d-4640-a36c-1994d3ea3fef"
          },
          "target": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "B"
          },
          "size": 6
        },
        {
          "source": {
            "block": "81e6dc90-362d-4dda-afdc-9e3de76b3402",
            "port": "addr_read"
          },
          "target": {
            "block": "44f46d2b-5319-440e-8d38-eac63828c452",
            "port": "d20b67fa-2be4-4923-82c8-19e43e8bc2ab"
          },
          "vertices": [
            {
              "x": -1160,
              "y": 2208
            }
          ],
          "size": 12
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
          }
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
          "vertices": [
            {
              "x": -2632,
              "y": 1760
            }
          ]
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
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "RED"
          },
          "target": {
            "block": "44f46d2b-5319-440e-8d38-eac63828c452",
            "port": "6ecd02ba-1c0c-43f5-bdf2-fe1a096be60f"
          },
          "size": 6
        },
        {
          "source": {
            "block": "2254e59b-872d-4ee8-ac7d-075aff628a37",
            "port": "GREEN"
          },
          "target": {
            "block": "44f46d2b-5319-440e-8d38-eac63828c452",
            "port": "56aacc6a-770c-4952-af69-7bc4a3c4dca6"
          },
          "vertices": [
            {
              "x": -1184,
              "y": 1752
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
            "block": "44f46d2b-5319-440e-8d38-eac63828c452",
            "port": "52ee568e-5835-47b8-89ee-da374365c71c"
          },
          "vertices": [
            {
              "x": -1120,
              "y": 1976
            }
          ],
          "size": 6
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
    "f282431f1cfbab31ac46ddf7ed5eabad7b49ceee": {
      "package": {
        "name": "6RGBRAM",
        "version": "1.0",
        "description": "Read/write to specified Address ",
        "author": "Richard Nicklas Rzepka",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20548.48%20331.47%22%20version=%221%22%3E%3Cpath%20d=%22M175.614%206.13c-4.71%202.72-130.93%2094.3-146.15%20105.65C14.25%20123.14%201.083%20134.49.264%20136.9c-1.557%204.59%204.158%2045.25%206.989%2049.75.898%201.42%2014.781%207.71%2030.821%2013.96%2016.04%206.26%2030.66%2013.61%2032.45%2016.42%202.82%204.45%2013.16%209.8%2048.67%2024.88%204.39%201.86%2026.62%2011.41%2049.42%2021.19%2022.79%209.78%2043.91%2017.77%2046.92%2017.77%208.37%200%206.52-6.75-2.5-9.07-4.58-1.17-7.98-5.25-7.98-9.68%200-9.08-6.15-14.66-19.97-17.89-12.1-2.82-26.86-12.84-23.59-16.05%201.3-1.27%2010.69.72%2020.84%204.41%2020.05%207.3%2026.99%205.19%2018.22-5.39-6.32-7.62-5.96-7.57%2023.46%205.03l16.98%207.35v52.68l14.97%206.37c8.24%203.52%2018.03%207.95%2021.84%209.93%2010.32%205.34%2011.11%204.78%2011.11-9.31%200-11.85-1.75-13.61-20.34-21.32-24.33-10.09-23.47-19.14.99-10.66%2020.4%207.06%2019.35%207.27%2019.35-2.09%200-4.31%201.77-7.84%203.99-7.84%205.19%200%2024.32-40.38%2020.72-43.74-4.33-4.02-185.74-75.98-196.93-73.88-9.13%201.72-47.42-16.18-47.42-20.09%200-1.81%2019.09-17.8%2042.43-35.66%2023.34-17.85%2051.07-39.08%2061.65-47.17%2010.57-8.09%2021.21-14.7%2023.71-14.7%206.33%200%20139.52%2043.01%20151.75%2049.01%205.49%202.69%2040.53%2015.1%2077.87%2027.56%2037.34%2012.47%2069.95%2024.17%2072.5%2026.1%203.26%202.47-.06%207.78-11.23%2018.01-16.16%2014.8-34.37%2030.04-48.17%2043.01-34.46%2032.39-62.8%2055.87-67.39%2055.87-2.1%200-14.82-4.41-28.33-9.8-13.5-5.39-25.11-9.4-25.7-8.82-2.9%202.84-17.47%2039.47-17.47%2043.86%200%202.77%2012.58%2010.53%2027.95%2017.28%2025.63%2011.25%2027.95%2013.33%2027.95%2024.13%200%2013.83-2.98%2014.3-24.33%204.17-8.77-4.16-21.45-8.71-28.2-10.17-21.05-4.54-11.4%205.68%2016.72%2017.77%2014.2%206.1%2029.19%2011.23%2033.32%2011.39%204.12.16%2014.91-6.16%2023.96-14.09%2023.87-20.92%20107.31-96.84%20141.14-128.41l29.08-27.07v-22.43c0-13.29-2.03-23.87-5-26.09-2.74-2.06-35.54-13.83-72.88-26.22-37.33-12.4-79.56-26.64-93.84-31.62-14.28-4.97-36.29-12.12-48.92-15.8-22.52-6.57-94.85-29.59-112.6-34.59-11.11-3.13-16.75-4.47-21.25-5.05-7.04-.9-16.07%204.69-18.38%206.03zm12.84%2047.33c-5.03%200-20.15%2011.2-58.28%2043.01-7.14%205.95-12.98%2011.63-12.98%2012.74%200%202.07%2015.58%208.58%2029.95%2012.5%207.13%201.94%207.99.28%207.99-15.32%200-12.84%202.34-19.82%208.86-26.22%2012.23-12%2015.27-6.88%205.36%209.07-12.14%2019.56-10.51%2025.61%209.61%2035.65%209.81%204.9%2017.54%2010.71%2017.23%2012.87-.32%202.16%202.82%204.48%206.98%205.27%206.66%201.26%206.87.73%202-5.03-5.09-6.01-4.59-6.2%206.12-1.71%2016.06%206.73%2022.29%2012.83%209.73%209.56-9.6-2.51-9.7-2.42-2.25%203.43%204.27%203.34%209.78%206.12%2012.36%206.12%202.57%200%2017.07%204.92%2032.19%2011.03%2032%2012.93%2051.09%2018.26%2047.92%2013.23-1.21-1.93%202.32-2.73%207.74-1.71%205.43%201.02%209.86%204.4%209.86%207.47s7.64%208.92%2016.97%2012.99c20.35%208.87%2033.56%209.69%2040.68%202.69%202.9-2.84%2011.15-9.84%2018.22-15.68l12.86-10.66-5.87-17.52c-6.28-18.73-5.13-20.14%2010.86-12.99%207.86%203.52%209.6%206.47%207.61%2012.75-2.55%208.06-2.55%208.11%205.87.73%2014.67-12.86%2015.84-12.06-39.31-32.47-20.28-7.5-65.72-22.74-79.87-26.83-1.1-.32-7.39-2.7-13.98-5.27s-17.37-6.51-23.96-8.82c-6.59-2.32-15.57-5.83-19.96-7.72-17.1-7.38-65.22-23.16-70.51-23.16zm15.85%2019.61c5.14-.04%208.11%201.73%206.74%203.92-2.97%204.71-2.56%204.71-9.99%200-4.82-3.06-4.17-3.88%203.25-3.92zm13.72.98c.24-.62%202.21.45%206.24%202.57%204.59%202.41%2028.62%2011.57%2053.42%2020.34%2084.75%2029.97%2099.08%2035.51%2099.08%2039.08%200%204.62-2.76%204.61-12.23-.36-17.3-9.1-40.83%2014.89-31.45%2032.1%202.16%203.96%203.5%207.18%202.87%207.1-.62-.07-10.1-3.44-21.09-7.47-106.86-39.21-125.24-47.29-107.32-47.29%2010.03%200%2021.47-11.75%2021.47-22.06%200-4.2-2.91-11.77-6.49-16.78-3.15-4.42-4.73-6.62-4.5-7.23zm-19.84%2019.23c7.68-.09%2015.83%201.82%2019.1%205.76%204.92%205.96%204.97%206.34-.25%203.19-7.92-4.79-27.96-5.75-27.96-1.35%200%201.9-1.99%203.55-4.37%203.55s-3.52-2.2-2.62-4.9c1.34-4%208.43-6.15%2016.1-6.25zm71.51%207.23c-6.43%200-20.72%2010.81-20.72%2015.68%200%201.53%208.14%205.83%2018.1%209.56%2015.04%205.64%2019.1%205.98%2024.33%201.72%209.36-7.63%2023.63-8.36%2029.45-1.47%204.27%205.04%203.81%207.07-2.49%2011.76-4.64%203.44-5.53%205.68-2.37%205.76%208.15.19%2022.92-15.09%2018.59-19.24-4.95-4.74-56.91-23.77-64.89-23.77zm-30.7%2047.17c2.2%200%206.69%201.71%209.98%203.8%203.3%202.09%204.2%203.8%202%203.8s-6.69-1.71-9.98-3.8c-3.3-2.09-4.2-3.8-2-3.8zm130.66.98c3.43-.01%206.43%201.35%2010.98%204.05%2010.28%206.09%2016.5%2026.22%208.11%2026.22-2.47%200-3.45-1.81-2.12-3.92%201.33-2.12.56-7.29-1.75-11.52-3.19-5.86-7.71-7.44-19.09-6.74-13.01.8-15.13%202.28-16.22%2011.52-1.61%2013.46-8.74%2013.96-8.74.61%200-7.83%203.24-11.29%2014.85-16.05%206.66-2.73%2010.54-4.15%2013.98-4.17zm-356.29%202.94l18.966%206.99c10.43%203.9%2022.12%206.49%2025.96%205.63%205.94-1.31%206.99%201.34%206.99%2018.26%200%2010.94-.45%2019.79-1%2019.6-.55-.18-12.23-5.47-25.96-11.76-23.605-10.82-24.956-12.2-24.956-25.12v-13.6zm245.6%203.93c2.19%200%206.69%201.7%209.98%203.79s4.19%203.8%202%203.8c-2.2%200-6.69-1.71-9.99-3.8-3.29-2.09-4.19-3.79-1.99-3.79zm-156.24%204.16c1.29-.47%203.66.28%208.11%201.96%203.46%201.31%205.33%203.95%204.12%205.88-3.62%205.74-13.73%204.03-13.73-2.33%200-3.29.2-5.04%201.5-5.51zm180.2%205.39c.67-.27%201.96-.18%203.74.49%203.41%201.29%206.24%203.08%206.24%203.92%200%203.18-7.64%201.4-9.98-2.32-.7-1.12-.67-1.81%200-2.09zm-139.9%2012.99c2.1-.2%204.18%201.02%205.12%203.8.92%202.69-1.33%204.9-4.99%204.9s-6.1-1.77-5.37-3.92c1.01-2.96%203.15-4.58%205.24-4.78zm231.99%202.82c1.09.28%201.75%201.04%201.75%202.08%200%202.09-2.69%203.8-5.99%203.8-3.29%200-5.99-.75-5.99-1.59%200-.85%202.7-2.56%205.99-3.8%201.65-.62%203.16-.77%204.24-.49zm-262.81%206.37c3.26.38%209.97%202.92%2022.21%207.96%2025.5%2010.51%2024.63%209.88%2019.97%2015.93-2.12%202.75-3.44%2011.64-3%2019.73.89%2016.2-1.23%2016.95-21.21%207.59-7.82-3.66-12.98-9.04-12.98-13.47%200-5.17-6.75-10.28-22.59-17.16-15.5-6.73-21.3-11.06-18.47-13.84%202.84-2.79%208.09-2.06%2016.73%202.33%2013.63%206.92%2021.28%205.32%2017.72-3.8-1.48-3.79-1.65-5.65%201.62-5.27zm12.6%2015.19c-5.37%200-4.48%2021.09%201.13%2026.59%205.6%205.5%2015.22%206.29%2015.22%201.23%200-1.93-2.69-4.52-5.99-5.76-3.29-1.24-5.99-4.03-5.99-6.25%200-2.23%202.7-4.05%205.99-4.05%203.3%200%205.99-1.62%205.99-3.55%200-3.5-9.44-8.21-16.35-8.21zm39.81%203.92c2.2%200%205.13%201.77%206.49%203.92%201.36%202.16.58%203.92-1.62%203.92s-5.01-1.76-6.36-3.92c-1.36-2.15-.7-3.92%201.49-3.92zm14.48%207.97c2.19%200%206.69%201.7%209.98%203.8%203.3%202.09%204.2%203.79%202%203.79s-6.69-1.7-9.98-3.79c-3.3-2.1-4.2-3.8-2-3.8zm41.06%2025.48c-1.63-.31-3.12-.16-4%20.37-3.85%202.34-4.23%2022.55-.5%2026.22%201.47%201.44%206.24%202.7%2010.61%202.7%207.77%200%207.78-.19.5-8.09-6.38-6.92-6.62-8.61-1.62-11.76%205.09-3.22%205.06-4.16%200-7.35-1.6-1.01-3.37-1.77-4.99-2.09zm60.8-6.72c-.57-1.23-2.79-2.34-7.15-4.25-3.38-1.48-6.61-.91-7.14%201.3-1.58%206.57%206.8%2012.38%2011.38%207.89%202.38-2.33%203.49-3.71%202.91-4.94zm-45.52-12.14c-1.22-1.68-1.19-4.06.79-6.25%201.92-2.12%204.99-1.31%206.82%201.8s1.49%206.07-.78%206.52c-3.11.63-5.61-.39-6.83-2.07z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "474f6be3-222c-4cf3-95f1-64095b651795",
              "type": "basic.input",
              "data": {
                "name": "add_w",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 8,
                "y": 96
              }
            },
            {
              "id": "d20b67fa-2be4-4923-82c8-19e43e8bc2ab",
              "type": "basic.input",
              "data": {
                "name": "add_r",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -48,
                "y": 232
              }
            },
            {
              "id": "9a8457ac-d13d-4bfb-9260-9a1222b3d94a",
              "type": "basic.output",
              "data": {
                "name": "data_r_R",
                "range": "[5:0]",
                "size": 6
              },
              "position": {
                "x": 1376,
                "y": 240
              }
            },
            {
              "id": "6ecd02ba-1c0c-43f5-bdf2-fe1a096be60f",
              "type": "basic.input",
              "data": {
                "name": "data_w_R",
                "range": "[5:0]",
                "clock": false,
                "size": 6
              },
              "position": {
                "x": -72,
                "y": 320
              }
            },
            {
              "id": "56aacc6a-770c-4952-af69-7bc4a3c4dca6",
              "type": "basic.input",
              "data": {
                "name": "data_w_G",
                "range": "[5:0]",
                "clock": false,
                "size": 6
              },
              "position": {
                "x": -96,
                "y": 416
              }
            },
            {
              "id": "dcf71cc0-5511-494a-9df6-749ec29e9ab5",
              "type": "basic.output",
              "data": {
                "name": "data_r_G",
                "range": "[5:0]",
                "size": 6
              },
              "position": {
                "x": 1416,
                "y": 448
              }
            },
            {
              "id": "52ee568e-5835-47b8-89ee-da374365c71c",
              "type": "basic.input",
              "data": {
                "name": "data_w_B",
                "range": "[5:0]",
                "clock": false,
                "size": 6
              },
              "position": {
                "x": -96,
                "y": 512
              }
            },
            {
              "id": "61608cee-89bc-4b3c-872d-4c8a30d03ddc",
              "type": "basic.input",
              "data": {
                "name": "write_enable",
                "clock": false
              },
              "position": {
                "x": -88,
                "y": 616
              }
            },
            {
              "id": "9d8ea08e-e390-4c00-8be0-69abd86ff9be",
              "type": "basic.input",
              "data": {
                "name": "clk_w",
                "clock": true
              },
              "position": {
                "x": -144,
                "y": 672
              }
            },
            {
              "id": "73d5b8e9-169d-4640-a36c-1994d3ea3fef",
              "type": "basic.output",
              "data": {
                "name": "data_r_B",
                "range": "[5:0]",
                "size": 6
              },
              "position": {
                "x": 1432,
                "y": 680
              }
            },
            {
              "id": "fe460714-9591-4bbe-9409-ab37abdb8d54",
              "type": "basic.input",
              "data": {
                "name": "clk_r",
                "clock": true
              },
              "position": {
                "x": -136,
                "y": 736
              }
            },
            {
              "id": "486eab05-3331-4488-9101-b61f3477ab6c",
              "type": "basic.code",
              "data": {
                "code": "parameter DATA_WIDTH = 6; //6 bit \nparameter ADD_WIDTH = 12;\nparameter A_MAX = 4096; // 2^ADD_WIDTH\n//   \tparameter sizeOfLengthReal = 3072;   // image data : 1179648 bytes: 32 * 32 *3 \n\n\n\n\n\n\n  // Memory \n  reg [DATA_WIDTH-1:0] img_storage [A_MAX-1:0];\n\n\n\n  // Write data to memory\n  always @(posedge clk_w) begin\n    if (write_enable) begin\n      img_storage[address_write] <= data_w_R;\n      img_storage[address_write+1] <= data_w_G;\n      img_storage[address_write+2] <= data_w_B;\n    end\n  end\n\n  \n  \n    // Read data from memory\n  always @(posedge clk_r) begin\n    data_r_R <= img_storage[address_read];\n    data_r_G <= img_storage[address_read+1];\n    data_r_B <= img_storage[address_read+2];\n  end\n",
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
                "x": 336,
                "y": 176
              },
              "size": {
                "width": 808,
                "height": 616
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "474f6be3-222c-4cf3-95f1-64095b651795",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "add_w"
              },
              "size": 12
            },
            {
              "source": {
                "block": "d20b67fa-2be4-4923-82c8-19e43e8bc2ab",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "add_r"
              },
              "size": 12
            },
            {
              "source": {
                "block": "6ecd02ba-1c0c-43f5-bdf2-fe1a096be60f",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "data_w_R"
              },
              "size": 6
            },
            {
              "source": {
                "block": "56aacc6a-770c-4952-af69-7bc4a3c4dca6",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "data_w_G"
              },
              "size": 6
            },
            {
              "source": {
                "block": "52ee568e-5835-47b8-89ee-da374365c71c",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "data_w_B"
              },
              "size": 6
            },
            {
              "source": {
                "block": "61608cee-89bc-4b3c-872d-4c8a30d03ddc",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "write_enable"
              }
            },
            {
              "source": {
                "block": "9d8ea08e-e390-4c00-8be0-69abd86ff9be",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "clk_w"
              }
            },
            {
              "source": {
                "block": "fe460714-9591-4bbe-9409-ab37abdb8d54",
                "port": "out"
              },
              "target": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "clk_r"
              }
            },
            {
              "source": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "data_r_R"
              },
              "target": {
                "block": "9a8457ac-d13d-4bfb-9260-9a1222b3d94a",
                "port": "in"
              },
              "size": 6
            },
            {
              "source": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "data_r_G"
              },
              "target": {
                "block": "dcf71cc0-5511-494a-9df6-749ec29e9ab5",
                "port": "in"
              },
              "size": 6
            },
            {
              "source": {
                "block": "486eab05-3331-4488-9101-b61f3477ab6c",
                "port": "data_r_B"
              },
              "target": {
                "block": "73d5b8e9-169d-4640-a36c-1994d3ea3fef",
                "port": "in"
              },
              "size": 6
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
    }
  }
}