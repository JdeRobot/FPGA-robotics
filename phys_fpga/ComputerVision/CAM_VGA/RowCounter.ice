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
          "id": "4046f429-e058-420d-94b5-423780b457fc",
          "type": "basic.output",
          "data": {
            "name": "PIXEL_ROE",
            "range": "[8:0]",
            "pins": [
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
  },
  "dependencies": {}
}