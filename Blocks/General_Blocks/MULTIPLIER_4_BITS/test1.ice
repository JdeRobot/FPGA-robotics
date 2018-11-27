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
          "id": "04173f8d-27bb-40f7-b814-3a8d1be6ce07",
          "type": "basic.output",
          "data": {
            "name": "LED",
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
            "x": 1176,
            "y": 184
          }
        },
        {
          "id": "798569c7-d455-46db-9351-319d2e14109d",
          "type": "basic.input",
          "data": {
            "name": "in",
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
            "x": 192,
            "y": 256
          }
        },
        {
          "id": "bdfe1ddd-b1b3-4e10-86b2-7ae72d2724f6",
          "type": "basic.input",
          "data": {
            "name": "in",
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
            "x": 192,
            "y": 328
          }
        },
        {
          "id": "528a6241-2463-4513-a73d-8a7e74c34fac",
          "type": "28e4f7aac66ce92fd56deed18b3ba9de3a3f8f3b",
          "position": {
            "x": 368,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "98866927-863b-4dea-bde6-181bef6e9154",
          "type": "28e4f7aac66ce92fd56deed18b3ba9de3a3f8f3b",
          "position": {
            "x": 368,
            "y": 336
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "442f43ee-e8cd-42ee-be60-20e2689db7c6",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] mul;\n\nalways @(number1 || number2)\n    begin\n        mul <= number1 * number2;\n    end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "number1",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "number2",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "mul",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 664,
            "y": 248
          },
          "size": {
            "width": 336,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "528a6241-2463-4513-a73d-8a7e74c34fac",
            "port": "81291a39-78fa-4cfb-b0f5-5818d3ac9088"
          },
          "target": {
            "block": "442f43ee-e8cd-42ee-be60-20e2689db7c6",
            "port": "number1"
          },
          "size": 4
        },
        {
          "source": {
            "block": "98866927-863b-4dea-bde6-181bef6e9154",
            "port": "81291a39-78fa-4cfb-b0f5-5818d3ac9088"
          },
          "target": {
            "block": "442f43ee-e8cd-42ee-be60-20e2689db7c6",
            "port": "number2"
          },
          "size": 4
        },
        {
          "source": {
            "block": "798569c7-d455-46db-9351-319d2e14109d",
            "port": "out"
          },
          "target": {
            "block": "528a6241-2463-4513-a73d-8a7e74c34fac",
            "port": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d"
          }
        },
        {
          "source": {
            "block": "bdfe1ddd-b1b3-4e10-86b2-7ae72d2724f6",
            "port": "out"
          },
          "target": {
            "block": "98866927-863b-4dea-bde6-181bef6e9154",
            "port": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d"
          }
        },
        {
          "source": {
            "block": "442f43ee-e8cd-42ee-be60-20e2689db7c6",
            "port": "mul"
          },
          "target": {
            "block": "04173f8d-27bb-40f7-b814-3a8d1be6ce07",
            "port": "in"
          },
          "size": 8
        }
      ]
    },
    "state": {
      "pan": {
        "x": 477,
        "y": 284.5
      },
      "zoom": 1
    }
  },
  "dependencies": {
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
    }
  }
}