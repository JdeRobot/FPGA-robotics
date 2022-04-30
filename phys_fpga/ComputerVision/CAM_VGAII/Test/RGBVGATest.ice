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
          "id": "956c9fbd-e5c5-42d3-a1da-f559e8dcd0cb",
          "type": "basic.output",
          "data": {
            "name": "hsync",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "2"
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
                "name": "D1",
                "value": "1"
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
          "id": "0348f740-fb9a-4b0d-a972-8bbbe1cf4360",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "43"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 2192,
            "y": 200
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
                "name": "D2",
                "value": "4"
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
                "name": "D3",
                "value": "3"
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
                "name": "D4",
                "value": "8"
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
          "id": "f07b43d0-fd8b-4001-b0ca-c0df4d618c3e",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 984,
            "y": 936
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
            "code": "\r\n\r\n    // Image in HEX.\r\n    localparam IMG = \"bm.list\";\r\n    localparam MAS = \"dataSplitBin.list\";\r\n\r\n    // Width and height image.\r\n    /*Batman\r\n    parameter width = 300;\r\n    parameter height = 169;\r\n    */\r\n    parameter width = 32; //32x3x8\r\n    parameter height = 32;  \r\n    \r\n    // parameter sizeOfLengthReal = 3072;   // image data : bytes: 3072 32 * 32 * 3\r\n    //parameter sizeOfLengthReal = 12288;   // image data : 1179648 bytes: 64 * 64 *3 \r\n    parameter sizeOfLengthReal = 3072;   \r\n\r\n\r\n\r\n  //  parameter  [7:0] white = 8'b11111111;\r\n\r\n   \r\n    // Memory\r\n    reg [7 : 0] img_storage [0 : sizeOfLengthReal-1];// memory to store  8-bit data image\r\n    reg [width-1:0] logo [height-1:0];\r\n\r\n    //RGB Pixels\r\n    wire [9:0] x_img;\r\n    wire [9:0] y_img;\r\n    reg [2:0] pixel;\r\n\r\n    // Load file in memory.\r\n    initial\r\n    begin\r\n        //$readmemh(HEX, img_storage, 0,sizeOfLengthReal-1);\r\n      $readmemb(MAS, img_storage);\r\n\r\n    end\r\n\r\n\r\n    // Read memory.\r\n    always @(posedge clk) begin\r\n      //$display(\"Leemos X,Y[%d;%d]\",x_img,y_img);\r\n\r\n   \t    pixel[0] = 1;\r\n\t    pixel[1] = 1;\r\n\t    pixel[2] = 1;  \r\n \r\n        if ((x_img >= 0) && (x_img < width ) && (y_img >= 0) && (y_img < height))\r\n        begin\r\n         /* R = img_storage[WIDTH*3*(x_img)+3*y_img+0];\r\n          G = img_storage[WIDTH*3*(x_img)+3*y_img+1];\r\n          B = img_storage[WIDTH*3*(x_img)+3*y_img+2];\r\n          */\r\n            if(img_storage[width*3*(x_img)+3*y_img+0]< 8'b10000000)\r\n             \tpixel[0] = 0;\r\n            if(img_storage[width*3*(x_img)+3*y_img+1]< 8'b10000000)\r\n               \tpixel[1] = 0;          \r\n            if(img_storage[width*3*(x_img)+3*y_img+2]< 8'b10000000)\r\n               \tpixel[2] = 0;                  \r\n\r\n       end\r\n        else\r\n        begin\r\n         /*   R=white;\r\n            G=white;\r\n            B=white;\r\n*/\r\n\t\t\tpixel = 3'b111;\r\n\r\n        end\r\n\r\n    end\r\n",
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
                  "name": "pixel",
                  "range": "[2:0]",
                  "size": 3
                }
              ]
            }
          },
          "position": {
            "x": 1184,
            "y": 536
          },
          "size": {
            "width": 1192,
            "height": 1168
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
          "id": "3c5c99d4-4129-4965-8463-431e8b7fd1e2",
          "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
          "position": {
            "x": 1912,
            "y": 160
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
              "x": 968,
              "y": 984
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
          "vertices": [
            {
              "x": 888,
              "y": 1112
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "px_clk"
          },
          "target": {
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 920,
              "y": 760
            }
          ]
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
            "block": "da351375-e15b-4597-b5b5-04b80e797f7a",
            "port": "pixel"
          },
          "target": {
            "block": "9f58b658-78b6-41d6-8429-43c6718a7b2b",
            "port": "color_px"
          },
          "vertices": [
            {
              "x": 616,
              "y": 1864
            }
          ],
          "size": 3
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
            "block": "3c5c99d4-4129-4965-8463-431e8b7fd1e2",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "0348f740-fb9a-4b0d-a972-8bbbe1cf4360",
            "port": "in"
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
    "c83dcd1d9ab420d911df81b3dfae04681559c623": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "code": "// Bit 1\n\nassign v = 1'b1;",
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