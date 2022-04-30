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
            "x": 1568,
            "y": 184
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
          "id": "54cf3211-f365-4e7d-ba8f-1fac59fa6e4f",
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
            "x": 1936,
            "y": 744
          }
        },
        {
          "id": "54d453f8-1034-4ba7-8ce5-e3c7dbc5b072",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 176,
            "y": 216
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "da351375-e15b-4597-b5b5-04b80e797f7a",
          "type": "basic.code",
          "data": {
            "code": "\r\n\r\n    // Image in HEX.\r\n    localparam IMG = \"dataSplit.hex\";\r\n\r\n    // Width and height image.\r\n    parameter WIDTH = 32;\r\n    parameter HEIGHT = 32;\r\n    parameter sizeOfLengthReal = 3072;   // image data : bytes: 3073 32 * 32 * 3\r\n    //parameter sizeOfLengthReal = 12288;   // image data : 1179648 bytes: 64 * 64 *3 \r\n\r\n\r\n\r\n    parameter  [7:0] white = 8'b11111111;\r\n\r\n  \r\n    // Memory\r\n    reg [7 : 0] img_storage [0 : sizeOfLengthReal-1];// memory to store  8-bit data image\r\n\r\n    //RGB Pixels\r\n    reg [7:0] R;\r\n    reg [7:0] G;\r\n    reg [7:0] B;\r\n    \r\n    assign Rp = R;\r\n    assign Gp = G;\r\n    assign Bp = B;\r\n    \r\n    // Load file in memory.\r\n    initial\r\n    begin\r\n        $readmemh(IMG, img_storage, 0,sizeOfLengthReal-1);\r\n    end\r\n\r\n\r\n    // Read memory.\r\n    always @(posedge clk) begin\r\n      //$display(\"Leemos X,Y[%d;%d]\",x_img,y_img);\r\n\r\n      \r\n        if ((x_img >= 0) && (x_img < WIDTH ) && (y_img >= 0) && (y_img < HEIGHT))\r\n        begin\r\n          R = img_storage[WIDTH*3*(x_img)+3*y_img+0];\r\n          G = img_storage[WIDTH*3*(x_img)+3*y_img+1];\r\n          B = img_storage[WIDTH*3*(x_img)+3*y_img+2];\r\n        end\r\n        else\r\n        begin\r\n            R=white;\r\n            G=white;\r\n            B=white;\r\n\r\n        end\r\n\r\n    end\r\n",
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
                }
              ],
              "out": [
                {
                  "name": "Rp",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "Gp",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "Bp",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -168,
            "y": -248
          },
          "size": {
            "width": 592,
            "height": 536
          }
        },
        {
          "id": "f07b43d0-fd8b-4001-b0ca-c0df4d618c3e",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": -360,
            "y": -200
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
          "type": "basic.code",
          "data": {
            "code": "\r\n\r\n    SB_PLL40_CORE #(.FEEDBACK_PATH(\"SIMPLE\"),\r\n                    .PLLOUT_SELECT(\"GENCLK\"),\r\n                    .DIVR(4'b0000),\r\n                    .DIVF(7'b1010011),\r\n                    .DIVQ(3'b101),\r\n                    .FILTER_RANGE(3'b001)\r\n            )\r\n            uut\r\n            (\r\n                    .REFERENCECLK(clk),\r\n                    .PLLOUTCORE(px_clk),\r\n                    .RESETB(1'b1),\r\n                    .BYPASS(1'b0)\r\n              );\r\n\r\n\r\n    // Video structure constants.\r\n    parameter activeHvideo = 640;               // Width of visible pixels.\r\n    parameter activeVvideo =  480;              // Height of visible lines.\r\n    parameter hfp = 24;                         // Horizontal front porch length.\r\n    parameter hpulse = 40;                      // Hsync pulse length.\r\n    parameter hbp = 128;                        // Horizontal back porch length.\r\n    parameter vfp = 9;                          // Vertical front porch length.\r\n    parameter vpulse = 3;                       // Vsync pulse length.\r\n    parameter vbp = 28;                         // Vertical back porch length.\r\n    parameter blackH = hfp + hpulse + hbp;      // Hide pixels in one line.\r\n    parameter blackV = vfp + vpulse + vbp;      // Hide lines in one frame.\r\n    parameter hpixels = blackH + activeHvideo;  // Total horizontal pixels.\r\n    parameter vlines = blackV + activeVvideo;   // Total lines.\r\n\r\n    // Registers for storing the horizontal & vertical counters.\r\n    reg [9:0] hc;\r\n    reg [9:0] vc;\r\n\r\n    // Initial values.\r\n    initial\r\n    begin\r\n      x_px <= 0;\r\n      y_px <= 0;\r\n      hc <= 0;\r\n      vc <= 0;\r\n      red_monitor <= 0;\r\n      green_monitor <= 0;\r\n      blue_monitor <= 0;\r\n    end\r\n\r\n    // Counting pixels.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // Keep counting until the end of the line.\r\n        if (hc < hpixels - 1)\r\n            hc <= hc + 1;\r\n        else\r\n        // When we hit the end of the line, reset the horizontal\r\n        // counter and increment the vertical counter.\r\n        // If vertical counter is at the end of the frame, then\r\n        // reset that one too.\r\n        begin\r\n            hc <= 0;\r\n            if (vc < vlines - 1)\r\n            vc <= vc + 1;\r\n        else\r\n           vc <= 0;\r\n        end\r\n     end\r\n\r\n    // Generate sync pulses (active low) and active video.\r\n    assign hsync = (hc >= hfp && hc < hfp + hpulse) ? 0:1;\r\n    assign vsync = (vc >= vfp && vc < vfp + vpulse) ? 0:1;\r\n    assign activevideo = (hc >= blackH && vc >= blackV) ? 1:0;\r\n\r\n    // Generate color.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // First check if we are within vertical active video range.\r\n        if (activevideo)\r\n        begin\r\n            //Lo ideal seria hacer una salida de 1byte por color en vez de 1 bit..\r\n            //red_monitor <= Rp;\r\n            //green_monitor <= Gp;\r\n            //blue_monitor <= Bp;\r\n            if (Rp >= 8'b10000000)\r\n                red_monitor <= 1'b1;\r\n            if (Rp >= 8'b10000000)            \r\n                green_monitor <= 1'b1;\r\n            if (Gp >= 8'b10000000)\r\n                blue_monitor <= 1'b1;\r\n            x_px <= hc - blackH;\r\n            y_px <= vc - blackV;\r\n        end\r\n        else\r\n        // We are outside active video range so display black.\r\n        begin\r\n            red_monitor <= 0;\r\n            green_monitor <= 0;\r\n            blue_monitor <= 0;\r\n            x_px <= 0;\r\n            y_px <= 0;\r\n        end\r\n     end",
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
                  "name": "Rp",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "Gp",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "Bp",
                  "range": "[7:0]",
                  "size": 8
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
            "x": 512,
            "y": 176
          },
          "size": {
            "width": 928,
            "height": 1000
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
          "vertices": [
            {
              "x": 1072,
              "y": 200
            }
          ]
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
            "block": "54cf3211-f365-4e7d-ba8f-1fac59fa6e4f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "54d453f8-1034-4ba7-8ce5-e3c7dbc5b072",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "clr"
          },
          "vertices": [
            {
              "x": 368,
              "y": 256
            }
          ]
        },
        {
          "source": {
            "block": "f07b43d0-fd8b-4001-b0ca-c0df4d618c3e",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "clr"
          }
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "x_px"
          },
          "target": {
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "x_img"
          },
          "vertices": [
            {
              "x": 280,
              "y": 560
            },
            {
              "x": -264,
              "y": 392
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
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "y_img"
          },
          "size": 10
        },
        {
          "source": {
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "Rp"
          },
          "target": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "Rp"
          },
          "size": 8
        },
        {
          "source": {
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "Bp"
          },
          "target": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "Bp"
          },
          "vertices": [
            {
              "x": 320,
              "y": 416
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "Gp"
          },
          "target": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "Gp"
          },
          "vertices": [
            {
              "x": 392,
              "y": 392
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "px_clk"
          },
          "target": {
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "clk"
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
    }
  }
}