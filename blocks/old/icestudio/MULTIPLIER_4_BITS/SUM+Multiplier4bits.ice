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
          "id": "b8502964-2002-4703-b471-d89a22454374",
          "type": "basic.input",
          "data": {
            "name": "number1",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 456,
            "y": 256
          }
        },
        {
          "id": "cb184241-8ab8-42d8-a6aa-48df3370d1cb",
          "type": "basic.output",
          "data": {
            "name": "output",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1080,
            "y": 296
          }
        },
        {
          "id": "ad255639-0960-478e-a32e-ef1dd7493395",
          "type": "basic.input",
          "data": {
            "name": "number2",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 456,
            "y": 336
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
            "block": "b8502964-2002-4703-b471-d89a22454374",
            "port": "out"
          },
          "target": {
            "block": "442f43ee-e8cd-42ee-be60-20e2689db7c6",
            "port": "number1"
          },
          "size": 4
        },
        {
          "source": {
            "block": "ad255639-0960-478e-a32e-ef1dd7493395",
            "port": "out"
          },
          "target": {
            "block": "442f43ee-e8cd-42ee-be60-20e2689db7c6",
            "port": "number2"
          },
          "size": 4
        },
        {
          "source": {
            "block": "442f43ee-e8cd-42ee-be60-20e2689db7c6",
            "port": "mul"
          },
          "target": {
            "block": "cb184241-8ab8-42d8-a6aa-48df3370d1cb",
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
  "dependencies": {}
}