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
          "id": "703c6b9f-853d-4f1d-91b2-f3e78c4eb83c",
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
            "x": 600,
            "y": -768
          }
        },
        {
          "id": "1881d491-5a94-45e8-adc1-f9a42a86c84c",
          "type": "basic.input",
          "data": {
            "name": "sw2",
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
            "x": 600,
            "y": -680
          }
        },
        {
          "id": "7b1757aa-0862-429d-b7be-94c9a9f6a9b2",
          "type": "basic.output",
          "data": {
            "name": "vga_h_sync",
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
            "x": 288,
            "y": -480
          }
        },
        {
          "id": "5c68ad9c-129e-407e-9cae-563f1b43de2e",
          "type": "basic.output",
          "data": {
            "name": "vga_v_sync",
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
            "x": 288,
            "y": -416
          }
        },
        {
          "id": "2bebafe6-1ab0-4434-b415-87c4bd75af7f",
          "type": "basic.output",
          "data": {
            "name": "red_monitor",
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
            "x": 288,
            "y": -352
          }
        },
        {
          "id": "5f412412-cf93-4d77-baf7-1f9acb72ac9f",
          "type": "basic.output",
          "data": {
            "name": "green_monitor",
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
            "x": 288,
            "y": -288
          }
        },
        {
          "id": "02f0b2be-1851-4f3c-a41a-f504684ec6ec",
          "type": "basic.output",
          "data": {
            "name": "blue_monitor",
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
            "x": 288,
            "y": -224
          }
        },
        {
          "id": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
          "type": "84f9247c0ee5ad59485b477bd71e43bfbfc293b4",
          "position": {
            "x": -232,
            "y": -168
          },
          "size": {
            "width": 96,
            "height": 320
          }
        },
        {
          "id": "1d0a73e7-9c96-4e04-965b-f68c2eb9e374",
          "type": "28e4f7aac66ce92fd56deed18b3ba9de3a3f8f3b",
          "position": {
            "x": 776,
            "y": -768
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b4cce044-66d6-46e4-96b4-7649363f497a",
          "type": "28e4f7aac66ce92fd56deed18b3ba9de3a3f8f3b",
          "position": {
            "x": 776,
            "y": -680
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "2720088b-00dd-4d8d-90d1-7769448a6587",
          "type": "a2ba72e57c6b59589abbc374141f8d27b553209c",
          "position": {
            "x": 560,
            "y": -40
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
          "type": "c625e655372b4b2e35519dd75b13967845aaf31e",
          "position": {
            "x": 976,
            "y": -424
          },
          "size": {
            "width": 128,
            "height": 192
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "93221e3a-4163-43f5-94f5-920c5dbe1e7e"
          },
          "target": {
            "block": "7b1757aa-0862-429d-b7be-94c9a9f6a9b2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a"
          },
          "target": {
            "block": "5c68ad9c-129e-407e-9cae-563f1b43de2e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "fb6080dd-f184-4adc-9ebb-3a70adcdf337"
          },
          "target": {
            "block": "2bebafe6-1ab0-4434-b415-87c4bd75af7f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "9fb4009a-cac9-4e29-8a1b-0d7551e6e233"
          },
          "target": {
            "block": "5f412412-cf93-4d77-baf7-1f9acb72ac9f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "1cf25f8e-ab73-4ab6-bf2a-912acf407e70"
          },
          "target": {
            "block": "02f0b2be-1851-4f3c-a41a-f504684ec6ec",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "703c6b9f-853d-4f1d-91b2-f3e78c4eb83c",
            "port": "out"
          },
          "target": {
            "block": "1d0a73e7-9c96-4e04-965b-f68c2eb9e374",
            "port": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d"
          }
        },
        {
          "source": {
            "block": "1881d491-5a94-45e8-adc1-f9a42a86c84c",
            "port": "out"
          },
          "target": {
            "block": "b4cce044-66d6-46e4-96b4-7649363f497a",
            "port": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d"
          }
        },
        {
          "source": {
            "block": "b4cce044-66d6-46e4-96b4-7649363f497a",
            "port": "81291a39-78fa-4cfb-b0f5-5818d3ac9088"
          },
          "target": {
            "block": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
            "port": "cd560e27-a869-4a46-aca1-025e55a18345"
          },
          "size": 4
        },
        {
          "source": {
            "block": "b4cce044-66d6-46e4-96b4-7649363f497a",
            "port": "81291a39-78fa-4cfb-b0f5-5818d3ac9088"
          },
          "target": {
            "block": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
            "port": "08d61e84-f657-4446-84ca-ca043c8efd7e"
          },
          "size": 4
        },
        {
          "source": {
            "block": "b4cce044-66d6-46e4-96b4-7649363f497a",
            "port": "81291a39-78fa-4cfb-b0f5-5818d3ac9088"
          },
          "target": {
            "block": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
            "port": "521aed69-e5bb-4522-a61b-28447825918b"
          },
          "size": 4
        },
        {
          "source": {
            "block": "2720088b-00dd-4d8d-90d1-7769448a6587",
            "port": "a6e865f3-9e13-4b62-b837-6b4c0119e7ca"
          },
          "target": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "30dfd577-46de-44f9-8709-3840b6f0ed57"
          },
          "size": 3
        },
        {
          "source": {
            "block": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
            "port": "e27c3828-b3b7-455e-829a-b6699c97ba0d"
          },
          "target": {
            "block": "2720088b-00dd-4d8d-90d1-7769448a6587",
            "port": "61300d90-0e16-480f-94ae-5e00337c6f12"
          },
          "vertices": [
            {
              "x": 928,
              "y": 200
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "409757f3-b166-4ab7-a745-22d7cecbe008"
          },
          "target": {
            "block": "2720088b-00dd-4d8d-90d1-7769448a6587",
            "port": "92474e9c-49a0-4c66-be14-18e2bfe72651"
          },
          "size": 10
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "27b95e34-7b62-431f-a644-0647631fe0a5"
          },
          "target": {
            "block": "2720088b-00dd-4d8d-90d1-7769448a6587",
            "port": "4b395618-e54a-4fce-a9e0-d7740e0b2c39"
          },
          "size": 10
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "254272a4-9950-4103-89e4-fc225fcd6a26"
          },
          "target": {
            "block": "2720088b-00dd-4d8d-90d1-7769448a6587",
            "port": "57b7e56d-274c-45f9-a0ec-1c9597a11e3e"
          },
          "size": 10
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9"
          },
          "target": {
            "block": "2720088b-00dd-4d8d-90d1-7769448a6587",
            "port": "fb0f0a97-80b8-4f5c-843d-5c1b1a98f529"
          }
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9"
          },
          "target": {
            "block": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
            "port": "13b02f24-65bb-4a75-8668-dbce47e9a8c3"
          }
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "409757f3-b166-4ab7-a745-22d7cecbe008"
          },
          "target": {
            "block": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
            "port": "00098a0e-c294-4491-8461-bf6c7db7096d"
          },
          "size": 10
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "c2f327f8-f05a-497c-93aa-2a26a3c99358"
          },
          "target": {
            "block": "2720088b-00dd-4d8d-90d1-7769448a6587",
            "port": "982b974d-e656-4ff6-84e1-ef1f1aeba01b"
          },
          "size": 10
        },
        {
          "source": {
            "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
            "port": "c2f327f8-f05a-497c-93aa-2a26a3c99358"
          },
          "target": {
            "block": "856a0305-f382-4e9c-9ca2-5b4d96512dff",
            "port": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24"
          },
          "size": 10
        }
      ]
    },
    "state": {
      "pan": {
        "x": 947.1545,
        "y": 818.4753
      },
      "zoom": 0.8095
    }
  },
  "dependencies": {
    "84f9247c0ee5ad59485b477bd71e43bfbfc293b4": {
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
              "id": "93221e3a-4163-43f5-94f5-920c5dbe1e7e",
              "type": "basic.output",
              "data": {
                "name": "vga_h_sync"
              },
              "position": {
                "x": 512,
                "y": -472
              }
            },
            {
              "id": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a",
              "type": "basic.output",
              "data": {
                "name": "vga_v_sync"
              },
              "position": {
                "x": 512,
                "y": -384
              }
            },
            {
              "id": "fc004c54-093b-42c8-91e3-1c4b6f9f042c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -944,
                "y": -336
              }
            },
            {
              "id": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9",
              "type": "basic.output",
              "data": {
                "name": "px_clk"
              },
              "position": {
                "x": 512,
                "y": -288
              }
            },
            {
              "id": "fb6080dd-f184-4adc-9ebb-3a70adcdf337",
              "type": "basic.output",
              "data": {
                "name": "red_monitor"
              },
              "position": {
                "x": 520,
                "y": -192
              }
            },
            {
              "id": "9fb4009a-cac9-4e29-8a1b-0d7551e6e233",
              "type": "basic.output",
              "data": {
                "name": "green_monitor"
              },
              "position": {
                "x": 520,
                "y": -96
              }
            },
            {
              "id": "1cf25f8e-ab73-4ab6-bf2a-912acf407e70",
              "type": "basic.output",
              "data": {
                "name": "blue_monitor"
              },
              "position": {
                "x": 504,
                "y": -8
              }
            },
            {
              "id": "30dfd577-46de-44f9-8709-3840b6f0ed57",
              "type": "basic.input",
              "data": {
                "name": "color_px",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": -936,
                "y": 32
              }
            },
            {
              "id": "254272a4-9950-4103-89e4-fc225fcd6a26",
              "type": "basic.output",
              "data": {
                "name": "hc",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 520,
                "y": 80
              }
            },
            {
              "id": "c2f327f8-f05a-497c-93aa-2a26a3c99358",
              "type": "basic.output",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 376,
                "y": 104
              }
            },
            {
              "id": "27b95e34-7b62-431f-a644-0647631fe0a5",
              "type": "basic.output",
              "data": {
                "name": "vc",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 520,
                "y": 168
              }
            },
            {
              "id": "409757f3-b166-4ab7-a745-22d7cecbe008",
              "type": "basic.output",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 376,
                "y": 168
              }
            },
            {
              "id": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
              "type": "basic.code",
              "data": {
                "code": "wire       clk;         // Input clock: 12MHz\r\nwire [2:0] color_px;    // Color RGB (8 colors) for actual pixel.\r\nwire      vga_h_sync;        // Horizontal sync out\r\nwire      vga_v_sync;      // Vertical sync out\r\nreg       red_monitor;   // RED vga outputapio --board icezum\r\nreg       green_monitor; // GREEN vga output\r\nreg       blue_monitor;  // BLUE vga output\r\nreg [9:0] x_px;        // X position for actual pixel.\r\nreg [9:0] y_px;        // Y position for actual pixel.\r\nwire      activevideo;\r\nwire      px_clk;\r\n\r\n\r\n    SB_PLL40_CORE #(.FEEDBACK_PATH(\"SIMPLE\"),\r\n                    .PLLOUT_SELECT(\"GENCLK\"),\r\n                    .DIVR(4'b0000),\r\n                    .DIVF(7'b1010011),\r\n                    .DIVQ(3'b101),\r\n                    .FILTER_RANGE(3'b001)\r\n            )\r\n            uut\r\n            (\r\n                    .REFERENCECLK(clk),\r\n                    .PLLOUTCORE(px_clk),\r\n                    .RESETB(1'b1),\r\n                    .BYPASS(1'b0)\r\n              );\r\n\r\n    parameter activeHvideo = 640;               // Width of visible pixels.\r\n    parameter activeVvideo =  480;              // Height of visible lines.\r\n    parameter hfp = 24;                         // Horizontal front porch length.\r\n    parameter hpulse = 40;                      // Hsync pulse length.\r\n    parameter hbp = 128;                        // Horizontal back porch length.\r\n    parameter vfp = 9;                          // Vertical front porch length.\r\n    parameter vpulse = 3;                       // Vsync pulse length.\r\n    parameter vbp = 28;                         // Vertical back porch length.\r\n    parameter blackH = hfp + hpulse + hbp;      // Hide pixels in one line.\r\n    parameter blackV = vfp + vpulse + vbp;      // Hide lines in one frame.\r\n    parameter hpixels = blackH + activeHvideo;  // Total horizontal pixels.\r\n    parameter vlines = blackV + activeVvideo;   // Total lines.\r\n\r\n    // Registers for storing the horizontal & vertical counters.\r\n    reg [9:0] hc;\r\n    reg [9:0] vc;\r\n\r\n    // Initial values.\r\n    initial\r\n    begin\r\n      x_px <= 0;\r\n      y_px <= 0;\r\n      hc <= 0;\r\n      vc <= 0;\r\n      red_monitor <= 0;\r\n      green_monitor <= 0;\r\n      blue_monitor <= 0;\r\n    end\r\n\r\n    // Counting pixels.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // Keep counting until the end of the line.\r\n        if (hc < hpixels - 1)\r\n            hc <= hc + 1;\r\n        else\r\n\r\n        begin\r\n            hc <= 0;\r\n            if (vc < vlines - 1)\r\n            vc <= vc + 1;\r\n        else\r\n           vc <= 0;\r\n        end\r\n     end\r\n\r\n    // Generate sync pulses (active low) and active video.\r\n    assign vga_h_sync = (hc >= hfp && hc < hfp + hpulse) ? 0:1;\r\n    assign vga_v_sync = (vc >= vfp && vc < vfp + vpulse) ? 0:1;\r\n    assign activevideo = (hc >= blackH && vc >= blackV) ? 1:0;\r\n    // Generate color.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // First check if we are within vertical active video range.\r\n        if (activevideo)\r\n        begin\r\n            red_monitor <= color_px[2];\r\n            green_monitor <= color_px[1];\r\n            blue_monitor <= color_px[0];\r\n            x_px <= hc - blackH; //posicion actual x del pixel\r\n            y_px <= vc - blackV; // posicion actual y pixel\r\n        end\r\n        else\r\n        // We are outside active video range so display black.\r\n        begin\r\n            red_monitor <= 0;\r\n            green_monitor <= 0;\r\n            blue_monitor <= 0;\r\n            x_px <= 0;\r\n            y_px <= 0;\r\n        end\r\n     end\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "color_px",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "vga_h_sync"
                    },
                    {
                      "name": "vga_v_sync"
                    },
                    {
                      "name": "px_clk"
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
                      "name": "hc",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "vc",
                      "range": "[9:0]",
                      "size": 10
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
                    }
                  ]
                }
              },
              "position": {
                "x": -728,
                "y": -488
              },
              "size": {
                "width": 944,
                "height": 736
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "vga_v_sync"
              },
              "target": {
                "block": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "vga_h_sync"
              },
              "target": {
                "block": "93221e3a-4163-43f5-94f5-920c5dbe1e7e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fc004c54-093b-42c8-91e3-1c4b6f9f042c",
                "port": "out"
              },
              "target": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "hc"
              },
              "target": {
                "block": "254272a4-9950-4103-89e4-fc225fcd6a26",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "vc"
              },
              "target": {
                "block": "27b95e34-7b62-431f-a644-0647631fe0a5",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "red_monitor"
              },
              "target": {
                "block": "fb6080dd-f184-4adc-9ebb-3a70adcdf337",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "green_monitor"
              },
              "target": {
                "block": "9fb4009a-cac9-4e29-8a1b-0d7551e6e233",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "blue_monitor"
              },
              "target": {
                "block": "1cf25f8e-ab73-4ab6-bf2a-912acf407e70",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "30dfd577-46de-44f9-8709-3840b6f0ed57",
                "port": "out"
              },
              "target": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "color_px"
              },
              "size": 3
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "px_clk"
              },
              "target": {
                "block": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "y_px"
              },
              "target": {
                "block": "c2f327f8-f05a-497c-93aa-2a26a3c99358",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "x_px"
              },
              "target": {
                "block": "409757f3-b166-4ab7-a745-22d7cecbe008",
                "port": "in"
              },
              "size": 10
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1221.3101,
            "y": 750.2613
          },
          "zoom": 0.8095
        }
      }
    },
    "28e4f7aac66ce92fd56deed18b3ba9de3a3f8f3b": {
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
              "id": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d",
              "type": "basic.input",
              "data": {
                "name": "s1",
                "clock": false
              },
              "position": {
                "x": -80,
                "y": 168
              }
            },
            {
              "id": "81291a39-78fa-4cfb-b0f5-5818d3ac9088",
              "type": "basic.output",
              "data": {
                "name": "led",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 728,
                "y": 208
              }
            },
            {
              "id": "88ac7b32-da40-4ffa-861a-2d1456ac1069",
              "type": "basic.code",
              "data": {
                "code": "reg [3:0] aux;\nalways @(posedge s1) begin\n      aux <= aux + 1;\nend\n\nassign led = aux[3:0];\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "s1"
                    }
                  ],
                  "out": [
                    {
                      "name": "led",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 232,
                "y": 192
              },
              "size": {
                "width": 304,
                "height": 240
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d",
                "port": "out"
              },
              "target": {
                "block": "88ac7b32-da40-4ffa-861a-2d1456ac1069",
                "port": "s1"
              }
            },
            {
              "source": {
                "block": "88ac7b32-da40-4ffa-861a-2d1456ac1069",
                "port": "led"
              },
              "target": {
                "block": "81291a39-78fa-4cfb-b0f5-5818d3ac9088",
                "port": "in"
              },
              "size": 4
            }
          ]
        },
        "state": {
          "pan": {
            "x": 328,
            "y": 81.5
          },
          "zoom": 1
        }
      }
    },
    "a2ba72e57c6b59589abbc374141f8d27b553209c": {
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
              "id": "fb0f0a97-80b8-4f5c-843d-5c1b1a98f529",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
                "clock": false
              },
              "position": {
                "x": -808,
                "y": -512
              }
            },
            {
              "id": "57b7e56d-274c-45f9-a0ec-1c9597a11e3e",
              "type": "basic.input",
              "data": {
                "name": "hc",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -392
              }
            },
            {
              "id": "4b395618-e54a-4fce-a9e0-d7740e0b2c39",
              "type": "basic.input",
              "data": {
                "name": "vc",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -272
              }
            },
            {
              "id": "a6e865f3-9e13-4b62-b837-6b4c0119e7ca",
              "type": "basic.output",
              "data": {
                "name": "color_px",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 808,
                "y": -216
              }
            },
            {
              "id": "92474e9c-49a0-4c66-be14-18e2bfe72651",
              "type": "basic.input",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -152
              }
            },
            {
              "id": "982b974d-e656-4ff6-84e1-ef1f1aeba01b",
              "type": "basic.input",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -32
              }
            },
            {
              "id": "61300d90-0e16-480f-94ae-5e00337c6f12",
              "type": "basic.input",
              "data": {
                "name": "flag",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -800,
                "y": 88
              }
            },
            {
              "id": "d899cb30-719d-4638-9a81-f31b5f63413a",
              "type": "basic.code",
              "data": {
                "code": "// input px_clk \r\n//algunos colores que usaremos\r\nwire      areanumbers;\r\n\r\nparameter [2:0] green = 3'b010;\r\nparameter [2:0] blue  = 3'b001;\r\nparameter [2:0] white = 3'b111;\r\nparameter [2:0] red = 3'b101;\r\nparameter [2:0] black = 3'b000;\r\nparameter [2:0] yellow = 3'b100;\r\nparameter [2:0] orange =3'b110;\r\nparameter [2:0] purple =3'b011;\r\nparameter init_h = 108;\r\nparameter init_v = 140;\r\nreg [2:0]  color_px;    // Actual pixel color.\r\n\r\n\r\nassign areanumbers = (x_px>=init_h && x_px<=init_h+424 && y_px>=140 && y_px<=340) ? 1:0; //colocamos los numeros en el medio de la pantalla\r\n\r\n  always @(posedge px_clk)\r\n    begin\r\n      if(areanumbers)\r\n        begin\r\n        color_px = white;\r\n        end\r\n      if(flag[0] || flag[1] || flag[2] || flag[3])\r\n        color_px = black;\r\n      else \r\n        color_px = white;\r\n    end\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "px_clk"
                    },
                    {
                      "name": "hc",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "vc",
                      "range": "[9:0]",
                      "size": 10
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
                      "name": "flag",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "color_px",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ]
                }
              },
              "position": {
                "x": -472,
                "y": -544
              },
              "size": {
                "width": 1168,
                "height": 720
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "color_px"
              },
              "target": {
                "block": "a6e865f3-9e13-4b62-b837-6b4c0119e7ca",
                "port": "in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "4b395618-e54a-4fce-a9e0-d7740e0b2c39",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "vc"
              },
              "size": 10
            },
            {
              "source": {
                "block": "fb0f0a97-80b8-4f5c-843d-5c1b1a98f529",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "92474e9c-49a0-4c66-be14-18e2bfe72651",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "x_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "982b974d-e656-4ff6-84e1-ef1f1aeba01b",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "y_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "57b7e56d-274c-45f9-a0ec-1c9597a11e3e",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "hc"
              },
              "size": 10
            },
            {
              "source": {
                "block": "61300d90-0e16-480f-94ae-5e00337c6f12",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "flag"
              },
              "size": 4
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1161,
            "y": 796.5
          },
          "zoom": 1
        }
      }
    },
    "c625e655372b4b2e35519dd75b13967845aaf31e": {
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
              "id": "cd560e27-a869-4a46-aca1-025e55a18345",
              "type": "basic.input",
              "data": {
                "name": "number1",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -728,
                "y": -512
              }
            },
            {
              "id": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
                "clock": false
              },
              "position": {
                "x": -728,
                "y": -448
              }
            },
            {
              "id": "00098a0e-c294-4491-8461-bf6c7db7096d",
              "type": "basic.input",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -728,
                "y": -384
              }
            },
            {
              "id": "08d61e84-f657-4446-84ca-ca043c8efd7e",
              "type": "basic.input",
              "data": {
                "name": "number2",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -728,
                "y": -312
              }
            },
            {
              "id": "e27c3828-b3b7-455e-829a-b6699c97ba0d",
              "type": "basic.output",
              "data": {
                "name": "flag",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 680,
                "y": -232
              }
            },
            {
              "id": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
              "type": "basic.input",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -728,
                "y": -224
              }
            },
            {
              "id": "521aed69-e5bb-4522-a61b-28447825918b",
              "type": "basic.input",
              "data": {
                "name": "number3",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -728,
                "y": -136
              }
            },
            {
              "id": "5889d6b3-ecc4-48c9-8ee2-cec2339203c2",
              "type": "basic.constant",
              "data": {
                "name": "ofsset1",
                "value": "9'd0",
                "local": false
              },
              "position": {
                "x": 8,
                "y": -632
              }
            },
            {
              "id": "e9f0ce17-4c8f-43e5-878a-e2fa13ff8b1d",
              "type": "basic.constant",
              "data": {
                "name": "ofsset2",
                "value": "9'd106",
                "local": false
              },
              "position": {
                "x": 112,
                "y": -632
              }
            },
            {
              "id": "6f29d83d-eb38-4826-808d-84a909cf8e2f",
              "type": "basic.constant",
              "data": {
                "name": "ofsset3",
                "value": "9'd212",
                "local": false
              },
              "position": {
                "x": 216,
                "y": -632
              }
            },
            {
              "id": "b1058eb6-72ac-4a10-bdb9-a5aaf13be679",
              "type": "basic.constant",
              "data": {
                "name": "ofsset4",
                "value": "9'd318",
                "local": false
              },
              "position": {
                "x": 328,
                "y": -632
              }
            },
            {
              "id": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
              "type": "ed760625604b02587ac856379cf011f512f27256",
              "position": {
                "x": -88,
                "y": -496
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
              "type": "ed760625604b02587ac856379cf011f512f27256",
              "position": {
                "x": -88,
                "y": -296
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
              "type": "ed760625604b02587ac856379cf011f512f27256",
              "position": {
                "x": -88,
                "y": -120
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "e7c2fe57-3f35-492b-a8bf-f8d8ff221a84",
              "type": "405105f49c22f32f62bee8ac92c434f759f8b95a",
              "position": {
                "x": -88,
                "y": 40
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
              "type": "basic.code",
              "data": {
                "code": "assign flag = {flag1, flag2, flag3, flag4};",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "flag1"
                    },
                    {
                      "name": "flag2"
                    },
                    {
                      "name": "flag3"
                    },
                    {
                      "name": "flag4"
                    }
                  ],
                  "out": [
                    {
                      "name": "flag",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 416,
                "y": -264
              },
              "size": {
                "width": 192,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cd560e27-a869-4a46-aca1-025e55a18345",
                "port": "out"
              },
              "target": {
                "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
                "port": "a114ee8c-25ac-404b-9bda-3274d7311051"
              },
              "size": 4
            },
            {
              "source": {
                "block": "08d61e84-f657-4446-84ca-ca043c8efd7e",
                "port": "out"
              },
              "target": {
                "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
                "port": "a114ee8c-25ac-404b-9bda-3274d7311051"
              },
              "size": 4
            },
            {
              "source": {
                "block": "521aed69-e5bb-4522-a61b-28447825918b",
                "port": "out"
              },
              "target": {
                "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
                "port": "a114ee8c-25ac-404b-9bda-3274d7311051"
              },
              "size": 4
            },
            {
              "source": {
                "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
                "port": "out"
              },
              "target": {
                "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
                "port": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65"
              }
            },
            {
              "source": {
                "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
                "port": "out"
              },
              "target": {
                "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
                "port": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65"
              }
            },
            {
              "source": {
                "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
                "port": "out"
              },
              "target": {
                "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
                "port": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65"
              }
            },
            {
              "source": {
                "block": "00098a0e-c294-4491-8461-bf6c7db7096d",
                "port": "out"
              },
              "target": {
                "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
                "port": "cde93eaa-4865-41b3-9376-12f06c67c336"
              },
              "vertices": [
                {
                  "x": -288,
                  "y": -392
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
                "port": "out"
              },
              "target": {
                "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
                "port": "cfa5070a-6d43-450c-b964-8f2321c7d15a"
              },
              "vertices": [
                {
                  "x": -264,
                  "y": -352
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "00098a0e-c294-4491-8461-bf6c7db7096d",
                "port": "out"
              },
              "target": {
                "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
                "port": "cde93eaa-4865-41b3-9376-12f06c67c336"
              },
              "vertices": [
                {
                  "x": -288,
                  "y": -312
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "00098a0e-c294-4491-8461-bf6c7db7096d",
                "port": "out"
              },
              "target": {
                "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
                "port": "cde93eaa-4865-41b3-9376-12f06c67c336"
              },
              "vertices": [
                {
                  "x": -288,
                  "y": -312
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
                "port": "out"
              },
              "target": {
                "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
                "port": "cfa5070a-6d43-450c-b964-8f2321c7d15a"
              },
              "vertices": [
                {
                  "x": -264,
                  "y": -168
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
                "port": "out"
              },
              "target": {
                "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
                "port": "cfa5070a-6d43-450c-b964-8f2321c7d15a"
              },
              "size": 10
            },
            {
              "source": {
                "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
                "port": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2"
              },
              "target": {
                "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
                "port": "flag1"
              }
            },
            {
              "source": {
                "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
                "port": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2"
              },
              "target": {
                "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
                "port": "flag2"
              }
            },
            {
              "source": {
                "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
                "port": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2"
              },
              "target": {
                "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
                "port": "flag3"
              }
            },
            {
              "source": {
                "block": "5889d6b3-ecc4-48c9-8ee2-cec2339203c2",
                "port": "constant-out"
              },
              "target": {
                "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
                "port": "a635bd72-0016-4b0d-bc96-50a0bfb0b352"
              }
            },
            {
              "source": {
                "block": "e9f0ce17-4c8f-43e5-878a-e2fa13ff8b1d",
                "port": "constant-out"
              },
              "target": {
                "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
                "port": "a635bd72-0016-4b0d-bc96-50a0bfb0b352"
              }
            },
            {
              "source": {
                "block": "6f29d83d-eb38-4826-808d-84a909cf8e2f",
                "port": "constant-out"
              },
              "target": {
                "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
                "port": "a635bd72-0016-4b0d-bc96-50a0bfb0b352"
              }
            },
            {
              "source": {
                "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
                "port": "flag"
              },
              "target": {
                "block": "e27c3828-b3b7-455e-829a-b6699c97ba0d",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "e7c2fe57-3f35-492b-a8bf-f8d8ff221a84",
                "port": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2"
              },
              "target": {
                "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
                "port": "flag4"
              }
            },
            {
              "source": {
                "block": "b1058eb6-72ac-4a10-bdb9-a5aaf13be679",
                "port": "constant-out"
              },
              "target": {
                "block": "e7c2fe57-3f35-492b-a8bf-f8d8ff221a84",
                "port": "a635bd72-0016-4b0d-bc96-50a0bfb0b352"
              }
            },
            {
              "source": {
                "block": "521aed69-e5bb-4522-a61b-28447825918b",
                "port": "out"
              },
              "target": {
                "block": "e7c2fe57-3f35-492b-a8bf-f8d8ff221a84",
                "port": "a114ee8c-25ac-404b-9bda-3274d7311051"
              },
              "size": 4
            },
            {
              "source": {
                "block": "00098a0e-c294-4491-8461-bf6c7db7096d",
                "port": "out"
              },
              "target": {
                "block": "e7c2fe57-3f35-492b-a8bf-f8d8ff221a84",
                "port": "cde93eaa-4865-41b3-9376-12f06c67c336"
              },
              "size": 10
            },
            {
              "source": {
                "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
                "port": "out"
              },
              "target": {
                "block": "e7c2fe57-3f35-492b-a8bf-f8d8ff221a84",
                "port": "cfa5070a-6d43-450c-b964-8f2321c7d15a"
              },
              "size": 10
            },
            {
              "source": {
                "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
                "port": "out"
              },
              "target": {
                "block": "e7c2fe57-3f35-492b-a8bf-f8d8ff221a84",
                "port": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1165.1251,
            "y": 806.5801
          },
          "zoom": 0.8095
        }
      }
    },
    "ed760625604b02587ac856379cf011f512f27256": {
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
              "id": "a114ee8c-25ac-404b-9bda-3274d7311051",
              "type": "basic.input",
              "data": {
                "name": "number",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -344,
                "y": -80
              }
            },
            {
              "id": "cde93eaa-4865-41b3-9376-12f06c67c336",
              "type": "basic.input",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -344,
                "y": 96
              }
            },
            {
              "id": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2",
              "type": "basic.output",
              "data": {
                "name": "flag"
              },
              "position": {
                "x": 1136,
                "y": 184
              }
            },
            {
              "id": "cfa5070a-6d43-450c-b964-8f2321c7d15a",
              "type": "basic.input",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -344,
                "y": 272
              }
            },
            {
              "id": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65",
              "type": "basic.input",
              "data": {
                "name": "pc_clk",
                "clock": false
              },
              "position": {
                "x": -344,
                "y": 448
              }
            },
            {
              "id": "a635bd72-0016-4b0d-bc96-50a0bfb0b352",
              "type": "basic.constant",
              "data": {
                "name": "offset",
                "value": "9'd0",
                "local": false
              },
              "position": {
                "x": 288,
                "y": -240
              }
            },
            {
              "id": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
              "type": "basic.code",
              "data": {
                "code": "/*input : offset, number, x_px[9:0], y_px[9:0], px_clk\r\n\r\noutput: flag\r\n\r\nbehaviour: With the offset we can control the position of the number on the screen. This module \r\ncheck if the actual pixel has to be drawn*/\r\n\r\n\r\n/**********************************************************************/\r\nwire area1, area2, area3, area4, area5, area6, area7, area8, area9, areadif1;\r\nreg flag;\r\nparameter init_h = 108;\r\nparameter init_v = 140;\r\n/***********************************************************************/\r\n\r\nassign area1= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;\r\nassign area2= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;\r\nassign area3= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;\r\nassign area4= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+97 && y_px<=init_v+101) ? 1:0;\r\nassign area5= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;\r\nassign area6= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;\r\nassign area7= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+186 && y_px<=init_v+190) ? 1:0;\r\nassign area8= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;\r\nassign areadif1 = (x_px<=init_h+55+offset && x_px>=init_h+51+offset && y_px>=init_v+142 && y_px<=init_v+146) ? 1:0;\r\n\r\n\r\n\r\nalways @ (posedge px_clk)\r\n\r\nbegin\r\n\r\n  case (number)\r\n      4'd0 :\r\n      begin\r\n        if (area1 || area2 || area3 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else \r\n          flag = 1'b0;\r\n      end\r\n      4'd1:\r\n      begin\r\n        if (area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd2:\r\n      begin\r\n        if (area2 || area3 || area4 || area5 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd3:\r\n      begin\r\n        if (area2 || area3 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd4:\r\n      begin\r\n         if (area1 || area4 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd5:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd6:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd7:\r\n      begin\r\n         if (area2 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd8:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area5 || area6 || area7 || area8)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd9:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd10: //A\r\n      begin\r\n        if (area1 || area2 || area4|| area3 || area5 || area6 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd11: //B\r\n      begin\r\n         if (area1 || area4 || area5 || area6 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd12: //C\r\n      begin\r\n         if (area1 || area2 || area5 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd13: //D\r\n      begin\r\n         if (area3  || area4 || area5 || area6 ||area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd14: //E\r\n      begin\r\n         if (area1 || area2 ||area4 || area5 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd15: //F\r\n      begin\r\n         if (area1 || area2 || area4 || area5 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n  endcase\r\n\r\nend",
                "params": [
                  {
                    "name": "offset"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "number",
                      "range": "[3:0]",
                      "size": 4
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
                      "name": "px_clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "flag"
                    }
                  ]
                }
              },
              "position": {
                "x": -96,
                "y": -136
              },
              "size": {
                "width": 1136,
                "height": 704
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "flag"
              },
              "target": {
                "block": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a114ee8c-25ac-404b-9bda-3274d7311051",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "number"
              },
              "size": 4
            },
            {
              "source": {
                "block": "cde93eaa-4865-41b3-9376-12f06c67c336",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "x_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "cfa5070a-6d43-450c-b964-8f2321c7d15a",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "y_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "a635bd72-0016-4b0d-bc96-50a0bfb0b352",
                "port": "constant-out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "offset"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 524,
            "y": 317.5
          },
          "zoom": 1
        }
      }
    },
    "405105f49c22f32f62bee8ac92c434f759f8b95a": {
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
              "id": "a114ee8c-25ac-404b-9bda-3274d7311051",
              "type": "basic.input",
              "data": {
                "name": "number",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -344,
                "y": -80
              }
            },
            {
              "id": "cde93eaa-4865-41b3-9376-12f06c67c336",
              "type": "basic.input",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -344,
                "y": 96
              }
            },
            {
              "id": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2",
              "type": "basic.output",
              "data": {
                "name": "flag"
              },
              "position": {
                "x": 1136,
                "y": 184
              }
            },
            {
              "id": "cfa5070a-6d43-450c-b964-8f2321c7d15a",
              "type": "basic.input",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -344,
                "y": 272
              }
            },
            {
              "id": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65",
              "type": "basic.input",
              "data": {
                "name": "pc_clk",
                "clock": false
              },
              "position": {
                "x": -344,
                "y": 448
              }
            },
            {
              "id": "a635bd72-0016-4b0d-bc96-50a0bfb0b352",
              "type": "basic.constant",
              "data": {
                "name": "offset",
                "value": "9'd0",
                "local": false
              },
              "position": {
                "x": 288,
                "y": -240
              }
            },
            {
              "id": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
              "type": "basic.code",
              "data": {
                "code": "/*input : offset, number, x_px[9:0], y_px[9:0], px_clk\r\n\r\noutput: flag\r\n\r\nbehaviour: With the offset we can control the position of the number on the screen. This module \r\ncheck if the actual pixel has to be drawn*/\r\n\r\n\r\n/**********************************************************************/\r\nwire area1, area2, area3, area4, area5, area6, area7, area8, area9, areadif1;\r\nreg flag;\r\nparameter init_h = 108;\r\nparameter init_v = 140;\r\n/***********************************************************************/\r\n\r\nassign area1= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;\r\nassign area2= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;\r\nassign area3= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;\r\nassign area4= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+97 && y_px<=init_v+101) ? 1:0;\r\nassign area5= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;\r\nassign area6= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;\r\nassign area7= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+186 && y_px<=init_v+190) ? 1:0;\r\nassign area8= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;\r\nassign areadif1 = (x_px<=init_h+55+offset && x_px>=init_h+51+offset && y_px>=init_v+142 && y_px<=init_v+146) ? 1:0;\r\n\r\n\r\n\r\nalways @ (posedge px_clk)\r\n\r\nbegin\r\n\r\n  case (number)\r\n      4'd0 :\r\n      begin\r\n        if (area1 || area2 || area3 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else \r\n          flag = 1'b0;\r\n      end\r\n      4'd1:\r\n      begin\r\n        if (area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd2:\r\n      begin\r\n        if (area2 || area3 || area4 || area5 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd3:\r\n      begin\r\n        if (area2 || area3 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd4:\r\n      begin\r\n         if (area1 || area4 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd5:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd6:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd7:\r\n      begin\r\n         if (area2 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd8:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area5 || area6 || area7 || area8)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd9:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd10: //A\r\n      begin\r\n        if (area1 || area2 || area4|| area3 || area5 || area6 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd11: //B\r\n      begin\r\n         if (area1 || area4 || area5 || area6 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd12: //C\r\n      begin\r\n         if (area1 || area2 || area5 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd13: //D\r\n      begin\r\n         if (area3  || area4 || area5 || area6 ||area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd14: //E\r\n      begin\r\n         if (area1 || area2 ||area4 || area5 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd15: //F\r\n      begin\r\n         if (area1 || area2 || area4 || area5 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n  endcase\r\n\r\nend",
                "params": [
                  {
                    "name": "offset"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "number",
                      "range": "[3:0]",
                      "size": 4
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
                      "name": "px_clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "flag"
                    }
                  ]
                }
              },
              "position": {
                "x": -96,
                "y": -136
              },
              "size": {
                "width": 1136,
                "height": 704
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "flag"
              },
              "target": {
                "block": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a114ee8c-25ac-404b-9bda-3274d7311051",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "number"
              },
              "size": 4
            },
            {
              "source": {
                "block": "cde93eaa-4865-41b3-9376-12f06c67c336",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "x_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "cfa5070a-6d43-450c-b964-8f2321c7d15a",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "y_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "a635bd72-0016-4b0d-bc96-50a0bfb0b352",
                "port": "constant-out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "offset"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 341.9741,
            "y": 252.6477
          },
          "zoom": 0.8095
        }
      }
    }
  }
}