{
  "version": "1.1",
  "package": {
    "name": "ESC_ACTIVATION",
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
          "id": "973a6501-d0df-47f6-8645-a9c1a1b3685b",
          "type": "basic.input",
          "data": {
            "name": "clock",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -80,
            "y": 184
          }
        },
        {
          "id": "34c1d111-2ea5-410c-826f-ccee56b5c23a",
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
            "virtual": true
          },
          "position": {
            "x": 1016,
            "y": 288
          }
        },
        {
          "id": "1e843d6e-dc66-40ca-9cff-dc5d8b36e9f6",
          "type": "basic.input",
          "data": {
            "name": "start",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -88,
            "y": 392
          }
        },
        {
          "id": "3056878e-1457-4224-8dd9-07f54dfc51c4",
          "type": "basic.code",
          "data": {
            "code": "localparam pulses_1seg = 12000000;\r\nreg [23:0] contador = 1;\r\nreg aux = 1;\r\n\r\n  always @ (posedge clock)\r\n  begin\r\n    if(start==1)\r\n    begin\r\n    contador <= (contador == pulses_1seg-1) ? 0 : contador + 1;\r\n    end\r\n  end\r\n  \r\n  always @(posedge clock)\r\n     aux<=(contado1'b0;\r\n\r\nassign ready = aux; ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clock"
                },
                {
                  "name": "start"
                }
              ],
              "out": [
                {
                  "name": "ready"
                }
              ]
            }
          },
          "position": {
            "x": 80,
            "y": 104
          },
          "size": {
            "width": 816,
            "height": 432
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "973a6501-d0df-47f6-8645-a9c1a1b3685b",
            "port": "out"
          },
          "target": {
            "block": "3056878e-1457-4224-8dd9-07f54dfc51c4",
            "port": "clock"
          }
        },
        {
          "source": {
            "block": "3056878e-1457-4224-8dd9-07f54dfc51c4",
            "port": "ready"
          },
          "target": {
            "block": "34c1d111-2ea5-410c-826f-ccee56b5c23a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1e843d6e-dc66-40ca-9cff-dc5d8b36e9f6",
            "port": "out"
          },
          "target": {
            "block": "3056878e-1457-4224-8dd9-07f54dfc51c4",
            "port": "start"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 559.3959,
        "y": 255.3786
      },
      "zoom": 0.8095
    }
  },
  "dependencies": {}
}