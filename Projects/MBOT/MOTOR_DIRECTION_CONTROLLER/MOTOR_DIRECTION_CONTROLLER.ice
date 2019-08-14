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
          "id": "d5392de8-da6b-47ca-bcf4-a0958611cf49",
          "type": "basic.output",
          "data": {
            "name": "INV",
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
            "x": 1032,
            "y": 8
          }
        },
        {
          "id": "0a29ac1c-21e5-4a9e-96c5-8dcfaeca0692",
          "type": "basic.input",
          "data": {
            "name": "DIRECTION_1",
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
            "x": -104,
            "y": 56
          }
        },
        {
          "id": "aff94420-2039-4203-b548-2c1555b23d52",
          "type": "basic.output",
          "data": {
            "name": "IN1",
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
            "x": 1032,
            "y": 96
          }
        },
        {
          "id": "ce68ba76-aeed-46ae-963e-a2314cd0bf34",
          "type": "basic.output",
          "data": {
            "name": "IN2",
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
            "x": 1032,
            "y": 184
          }
        },
        {
          "id": "4a0627a4-a331-4c87-84b9-ca53d9de0785",
          "type": "basic.input",
          "data": {
            "name": "DIRECTION_2",
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
            "x": -104,
            "y": 232
          }
        },
        {
          "id": "1a06fc46-b28b-4450-881a-8427c8b4ae9f",
          "type": "basic.output",
          "data": {
            "name": "EN",
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
            "x": 1032,
            "y": 272
          }
        },
        {
          "id": "4713e6fa-2448-4e4e-9f4e-e01667beaa46",
          "type": "basic.input",
          "data": {
            "name": "DIRECTION_1_2",
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
            "x": -104,
            "y": 400
          }
        },
        {
          "id": "e5446762-56c3-492d-bae8-a18482800ac3",
          "type": "basic.code",
          "data": {
            "code": "reg EN_reg = 1;//sleep mode \nreg D1_reg = 0; //para configurar el triestado de la salida, para controlar si es el dutty el que maneja o tiempo en baja\n//D2_reg <= 1;//para configurar el trisestado de la salida\n//reg IN1_reg = 1; //se estable un sentido para el mov\n//reg IN2_reg = 0; //se estable un sentido para el mov, negado de in1 si queremos que se mueva\n//reg INV_reg = 0; //si cambiamos inv la rueda cambia de sentido\n\n\nassign INV = DIRECTION_1_2;\nassign IN1 = DIRECTION_1;\nassign IN2 = DIRECTION_2;\nassign EN = EN_reg;\nassign D1 = D1_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "DIRECTION_1"
                },
                {
                  "name": "DIRECTION_2"
                },
                {
                  "name": "DIRECTION_1_2"
                }
              ],
              "out": [
                {
                  "name": "INV"
                },
                {
                  "name": "IN1"
                },
                {
                  "name": "IN2"
                },
                {
                  "name": "EN"
                },
                {
                  "name": "SF"
                },
                {
                  "name": "D1"
                }
              ]
            }
          },
          "position": {
            "x": 120,
            "y": 0
          },
          "size": {
            "width": 848,
            "height": 520
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "e5446762-56c3-492d-bae8-a18482800ac3",
            "port": "INV"
          },
          "target": {
            "block": "d5392de8-da6b-47ca-bcf4-a0958611cf49",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e5446762-56c3-492d-bae8-a18482800ac3",
            "port": "IN1"
          },
          "target": {
            "block": "aff94420-2039-4203-b548-2c1555b23d52",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e5446762-56c3-492d-bae8-a18482800ac3",
            "port": "IN2"
          },
          "target": {
            "block": "ce68ba76-aeed-46ae-963e-a2314cd0bf34",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e5446762-56c3-492d-bae8-a18482800ac3",
            "port": "EN"
          },
          "target": {
            "block": "1a06fc46-b28b-4450-881a-8427c8b4ae9f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "0a29ac1c-21e5-4a9e-96c5-8dcfaeca0692",
            "port": "out"
          },
          "target": {
            "block": "e5446762-56c3-492d-bae8-a18482800ac3",
            "port": "DIRECTION_1"
          }
        },
        {
          "source": {
            "block": "4a0627a4-a331-4c87-84b9-ca53d9de0785",
            "port": "out"
          },
          "target": {
            "block": "e5446762-56c3-492d-bae8-a18482800ac3",
            "port": "DIRECTION_2"
          }
        },
        {
          "source": {
            "block": "4713e6fa-2448-4e4e-9f4e-e01667beaa46",
            "port": "out"
          },
          "target": {
            "block": "e5446762-56c3-492d-bae8-a18482800ac3",
            "port": "DIRECTION_1_2"
          }
        }
      ]
    }
  },
  "dependencies": {}
}