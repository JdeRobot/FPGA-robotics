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
          "id": "cd796121-468b-4924-ab09-204a653958a6",
          "type": "basic.output",
          "data": {
            "name": "sqrt",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED0",
                "value": "95"
              },
              {
                "index": "6",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "5",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "4",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "3",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "2",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "1",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 904,
            "y": 216
          }
        },
        {
          "id": "18b2d9f0-82f2-4648-a556-8594bd6132c8",
          "type": "basic.constant",
          "data": {
            "name": "num",
            "value": "8'd0",
            "local": false
          },
          "position": {
            "x": -72,
            "y": 184
          }
        },
        {
          "id": "3eac1c8e-fe8c-4c0c-b64b-c22bded4a09d",
          "type": "basic.constant",
          "data": {
            "name": "aux",
            "value": "8'd4",
            "local": false
          },
          "position": {
            "x": 464,
            "y": 0
          }
        },
        {
          "id": "ce4c5441-e62f-4022-9f42-a36c4539d4bd",
          "type": "basic.code",
          "data": {
            "code": "localparam cuenta_Hasta = 3;\nlocalparam N=$sqrt(cuenta_Hasta);\n\n\n\n\nassign sqrt = $sqrt(cuenta_Hasta);\n  \n  \n  ",
            "params": [
              {
                "name": "aux"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "sqrt",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 240,
            "y": 152
          },
          "size": {
            "width": 544,
            "height": 416
          }
        },
        {
          "id": "be4c334f-30df-4ccf-8954-a73e283d842c",
          "type": "basic.code",
          "data": {
            "code": "assign data = num; ",
            "params": [
              {
                "name": "num"
              }
            ],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -120,
            "y": 296
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
            "block": "3eac1c8e-fe8c-4c0c-b64b-c22bded4a09d",
            "port": "constant-out"
          },
          "target": {
            "block": "ce4c5441-e62f-4022-9f42-a36c4539d4bd",
            "port": "aux"
          }
        },
        {
          "source": {
            "block": "ce4c5441-e62f-4022-9f42-a36c4539d4bd",
            "port": "sqrt"
          },
          "target": {
            "block": "cd796121-468b-4924-ab09-204a653958a6",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "be4c334f-30df-4ccf-8954-a73e283d842c",
            "port": "data"
          },
          "target": {
            "block": "ce4c5441-e62f-4022-9f42-a36c4539d4bd",
            "port": "data"
          },
          "size": 8
        },
        {
          "source": {
            "block": "18b2d9f0-82f2-4648-a556-8594bd6132c8",
            "port": "constant-out"
          },
          "target": {
            "block": "be4c334f-30df-4ccf-8954-a73e283d842c",
            "port": "num"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 554,
        "y": 217.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}