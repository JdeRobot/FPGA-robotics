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
          "id": "5ddfdd83-3f0d-41d6-9af6-16b16931b101",
          "type": "basic.input",
          "data": {
            "name": "rst",
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
            "x": 120,
            "y": 224
          }
        },
        {
          "id": "ebb28ba3-3fa2-4c45-866b-595711356f80",
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
            "x": 56,
            "y": 312
          }
        },
        {
          "id": "0fe18580-cbee-4475-ab33-d59cc1767235",
          "type": "basic.input",
          "data": {
            "name": "uart_rx",
            "pins": [
              {
                "index": "0",
                "name": "RX",
                "value": "62"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 64,
            "y": 400
          }
        },
        {
          "id": "eb29bc1f-9a44-47cf-902d-7d5418a2c72d",
          "type": "basic.output",
          "data": {
            "name": "leds",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "37"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1384,
            "y": 448
          }
        },
        {
          "id": "b08bd422-f4f0-4899-a16c-718e9a5ad9ff",
          "type": "basic.constant",
          "data": {
            "name": "G_FREQ_CLK",
            "value": "12000000",
            "local": false
          },
          "position": {
            "x": 360,
            "y": 32
          }
        },
        {
          "id": "e3969b22-d41a-4242-9536-9429d03d96cc",
          "type": "basic.constant",
          "data": {
            "name": "G_BAUD",
            "value": "115200",
            "local": false
          },
          "position": {
            "x": 576,
            "y": 56
          }
        },
        {
          "id": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
          "type": "basic.code",
          "data": {
            "code": "  reg [7:0] led;\r\n  \r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      led <= 0;\r\n    else begin\r\n      if (dat_ready)\r\n        led <= uart_data;\r\n    end\r\n  end\r\n  \r\n  assign leds = led;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
                },
                {
                  "name": "dat_ready"
                },
                {
                  "name": "uart_data",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "leds",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 888,
            "y": 496
          },
          "size": {
            "width": 424,
            "height": 192
          }
        },
        {
          "id": "d5f7f077-7652-449c-8cbe-1b8109401606",
          "type": "basic.code",
          "data": {
            "code": "// @include uart_rx.v\n\nuart_rx\n#(.G_FREQ_CLK(G_FREQ_CLK), // board clk frequency\n  .G_BAUD (G_BAUD)\n)\ni_uart_rx\n(\n      .rst       (rst),\n      .clk       (clk),\n      .uart_rx   (uart_rx),\n      //.receiving (uart_receiving),\n      .dat_ready (uart_dat_ready),\n      .dat_o     (uart_dat_o)\n);",
            "params": [
              {
                "name": "G_FREQ_CLK"
              },
              {
                "name": "G_BAUD"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
                },
                {
                  "name": "uart_rx"
                }
              ],
              "out": [
                {
                  "name": "uart_dat_ready"
                },
                {
                  "name": "uart_dat_o",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 296,
            "y": 208
          },
          "size": {
            "width": 440,
            "height": 272
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "b08bd422-f4f0-4899-a16c-718e9a5ad9ff",
            "port": "constant-out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "G_FREQ_CLK"
          }
        },
        {
          "source": {
            "block": "e3969b22-d41a-4242-9536-9429d03d96cc",
            "port": "constant-out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "G_BAUD"
          }
        },
        {
          "source": {
            "block": "0fe18580-cbee-4475-ab33-d59cc1767235",
            "port": "out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_rx"
          }
        },
        {
          "source": {
            "block": "ebb28ba3-3fa2-4c45-866b-595711356f80",
            "port": "out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "5ddfdd83-3f0d-41d6-9af6-16b16931b101",
            "port": "out"
          },
          "target": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "5ddfdd83-3f0d-41d6-9af6-16b16931b101",
            "port": "out"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ebb28ba3-3fa2-4c45-866b-595711356f80",
            "port": "out"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 216,
              "y": 368
            }
          ]
        },
        {
          "source": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "leds"
          },
          "target": {
            "block": "eb29bc1f-9a44-47cf-902d-7d5418a2c72d",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_dat_ready"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "dat_ready"
          }
        },
        {
          "source": {
            "block": "d5f7f077-7652-449c-8cbe-1b8109401606",
            "port": "uart_dat_o"
          },
          "target": {
            "block": "1f2d4961-595e-4b04-a0bc-20def7fe64d0",
            "port": "uart_data"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}