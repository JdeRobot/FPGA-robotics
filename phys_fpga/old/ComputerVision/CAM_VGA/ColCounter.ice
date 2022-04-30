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
          "id": "b535e00a-9380-4aab-97c3-926a9a97e2df",
          "type": "basic.input",
          "data": {
            "name": "VSYNC",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
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
            "name": "DEBUG",
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
            "x": 792,
            "y": 160
          }
        },
        {
          "id": "e46b115d-3e81-4aaa-88af-9105c55f7265",
          "type": "basic.input",
          "data": {
            "name": "HREF",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
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
  },
  "dependencies": {}
}