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
          "id": "b048d187-d794-42b8-a9a5-19db8b008b29",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 232,
            "y": -232
          }
        },
        {
          "id": "2df702c0-573d-47ad-b365-83b5e982648b",
          "type": "basic.output",
          "data": {
            "name": "Motor_IZQ",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "118"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1024,
            "y": -184
          }
        },
        {
          "id": "f09d4a83-f50b-4fe9-ba49-5c1594ea04a1",
          "type": "basic.input",
          "data": {
            "name": "IR_IZQ",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -128,
            "y": -104
          }
        },
        {
          "id": "614a1edc-8868-4907-b153-031100a4cf34",
          "type": "basic.input",
          "data": {
            "name": "IR_DER",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -128,
            "y": 80
          }
        },
        {
          "id": "a10e9568-fa2b-4d54-a55c-e53ef8ad1432",
          "type": "basic.output",
          "data": {
            "name": "Motor_DER",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1000,
            "y": 96
          }
        },
        {
          "id": "2c3bffab-694d-4835-b90f-00af92936413",
          "type": "basic.output",
          "data": {
            "name": "DEBUG_IR",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 208,
            "y": 280
          }
        },
        {
          "id": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
          "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
          "position": {
            "x": 24,
            "y": -104
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
          "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
          "position": {
            "x": 24,
            "y": 80
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "23b8c115-fd85-491d-a664-0cff8bd6cf29",
          "type": "52574d9d0e8b304c5dc0732a496a9d43a62b94b1",
          "position": {
            "x": 576,
            "y": -128
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "83a3a1ed-3741-4598-88c8-3b070b14707a",
          "type": "fec7ff39e4c71bcdf0ca03690e64aab18405ad25",
          "position": {
            "x": 408,
            "y": -48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "48aa905a-d2b4-4290-a725-c1668636d1d3",
          "type": "52574d9d0e8b304c5dc0732a496a9d43a62b94b1",
          "position": {
            "x": 576,
            "y": 40
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "2a028986-2c77-476d-84e8-8d90d935bfd2",
          "type": "b734f60cce5a9de8621cbbd63cf95b689e40512c",
          "position": {
            "x": 408,
            "y": 144
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b1398baa-e1ab-432a-abd6-8c15406835b7",
          "type": "e156d3e9bfab13f2760227aab507b823f967f912",
          "position": {
            "x": 648,
            "y": -368
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "a9317763-c3bf-40c2-8ba4-9a6fd7f058a8",
          "type": "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139",
          "position": {
            "x": 792,
            "y": -384
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
            "block": "f09d4a83-f50b-4fe9-ba49-5c1594ea04a1",
            "port": "out"
          },
          "target": {
            "block": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "b048d187-d794-42b8-a9a5-19db8b008b29",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "614a1edc-8868-4907-b153-031100a4cf34",
            "port": "out"
          },
          "target": {
            "block": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "2c3bffab-694d-4835-b90f-00af92936413",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "23b8c115-fd85-491d-a664-0cff8bd6cf29",
            "port": "910bbdc3-5979-4834-ab08-a96083e784ce"
          },
          "target": {
            "block": "2df702c0-573d-47ad-b365-83b5e982648b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "23b8c115-fd85-491d-a664-0cff8bd6cf29",
            "port": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a"
          },
          "vertices": [
            {
              "x": 352,
              "y": 88
            }
          ]
        },
        {
          "source": {
            "block": "83a3a1ed-3741-4598-88c8-3b070b14707a",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "23b8c115-fd85-491d-a664-0cff8bd6cf29",
            "port": "9e05d630-6be7-45c7-b3ce-3a4e161901cd"
          }
        },
        {
          "source": {
            "block": "48aa905a-d2b4-4290-a725-c1668636d1d3",
            "port": "910bbdc3-5979-4834-ab08-a96083e784ce"
          },
          "target": {
            "block": "a10e9568-fa2b-4d54-a55c-e53ef8ad1432",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "2a028986-2c77-476d-84e8-8d90d935bfd2",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "48aa905a-d2b4-4290-a725-c1668636d1d3",
            "port": "9e05d630-6be7-45c7-b3ce-3a4e161901cd"
          }
        },
        {
          "source": {
            "block": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "48aa905a-d2b4-4290-a725-c1668636d1d3",
            "port": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a"
          },
          "vertices": [
            {
              "x": 264,
              "y": -64
            }
          ]
        },
        {
          "source": {
            "block": "b1398baa-e1ab-432a-abd6-8c15406835b7",
            "port": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d"
          },
          "target": {
            "block": "a9317763-c3bf-40c2-8ba4-9a6fd7f058a8",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": []
        }
      ]
    }
  },
  "dependencies": {
    "7f3e9f0a05c929c3761852e259027fbe8e977795": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22111.588%22%20height=%2268.24%22%20version=%221%22%3E%3Cpath%20d=%22M24.372%201.5l57.29%2032.619-57.29%2032.62V1.5z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%2291.101%22%20cy=%2234.017%22%20rx=%227.572%22%20ry=%227.677%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.014%2034.281h23.1m75.26%200h11.2%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2228.438%22%20y=%2239.46%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2228.438%22%20y=%2239.46%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta NOT\n\n//-- module (input wire a, output wire c);\n\n\nassign c = ~a;\n\n\n//-- endmodule\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 400,
                "height": 256
              }
            },
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "52574d9d0e8b304c5dc0732a496a9d43a62b94b1": {
      "package": {
        "name": "MotorBit",
        "version": "0.1",
        "description": "Controlador para servo de rotacion continua. Con on=1, el motor avanza. Dir=1 sentido agujas reloj/ 0 el contrario",
        "author": "Juan Gonzalez-Gomez y Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2070.563453%2059.187547%22%20width=%2270.563%22%20height=%2259.188%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M1.926%201.21L-1.352.005l3.278-1.206a2.05%202.05%200%200%200%200%202.411z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.1875%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22b%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-1.926-1.21L1.352-.005l-3.278%201.206a2.05%202.05%200%200%200%200-2.411z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.1875%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-241.208%22%20y=%22459.946%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-241.208%22%20y=%22459.946%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2210%22%3EMotorBit%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M-242.672%20437.86v-.395h-8.131a.697.677%200%200%201-.697-.677V417.71a.697.677%200%200%201%20.697-.677h8.13v-.395a.697.677%200%200%201%20.697-.677h45.416a.697.677%200%200%201%20.697.677v.395h8.13a.697.677%200%200%201%20.697.677v19.077a.697.677%200%200%201-.697.677h-8.13v.395a.697.677%200%200%201-.697.677h-45.416a.697.677%200%200%201-.696-.677%22%20fill=%22gray%22%20fill-rule=%22evenodd%22%20stroke=%22#191919%22/%3E%3Cellipse%20cy=%22-421.549%22%20cx=%22-247.667%22%20transform=%22scale(1%20-1)%22%20rx=%222.497%22%20ry=%222.427%22%20fill=%22#fff%22%20stroke=%22#191919%22/%3E%3Cellipse%20cy=%22-432.95%22%20cx=%22-247.667%22%20transform=%22scale(1%20-1)%22%20rx=%222.497%22%20ry=%222.427%22%20fill=%22#fff%22%20stroke=%22#191919%22/%3E%3Cellipse%20cy=%22-421.549%22%20cx=%22-190.869%22%20transform=%22scale(1%20-1)%22%20rx=%222.497%22%20ry=%222.427%22%20fill=%22#fff%22%20stroke=%22#191919%22/%3E%3Cellipse%20cy=%22-432.95%22%20cx=%22-190.869%22%20transform=%22scale(1%20-1)%22%20rx=%222.497%22%20ry=%222.427%22%20fill=%22#fff%22%20stroke=%22#191919%22/%3E%3Cg%20transform=%22matrix(1.16152%200%200%20-1.12877%20-219.268%20427.25)%22%20fill=%22#4d4d4d%22%20stroke-width=%221.184%22%3E%3Ccircle%20cx=%229.45%22%20r=%227.079%22%20stroke=%22#191919%22%20stroke-width=%22.873%22/%3E%3Ctitle%3EFusion009002001_cs001%3C/title%3E%3C/g%3E%3Cpath%20d=%22M291.086%20396.23a24.94%2024.871%200%200%201-21.17-23.762%2024.94%2024.871%200%200%201%2019.54-25.112%2024.94%2024.871%200%200%201%2028.336%2014.554%2024.94%2024.871%200%200%201-9.151%2030.448%22%20transform=%22matrix(-.9762%20.21689%20.21647%20.97629%200%200)%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-start=%22url(#a)%22%20marker-end=%22url(#b)%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-199.948%22%20y=%22459.792%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8da63e4e-07b6-4711-900a-8c8843f20352",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 112,
                "y": 120
              }
            },
            {
              "id": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a",
              "type": "basic.input",
              "data": {
                "name": "on",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 256
              }
            },
            {
              "id": "910bbdc3-5979-4834-ab08-a96083e784ce",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 968,
                "y": 256
              }
            },
            {
              "id": "9e05d630-6be7-45c7-b3ce-3a4e161901cd",
              "type": "basic.input",
              "data": {
                "name": "dir",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 392
              }
            },
            {
              "id": "111d9859-6de5-4608-9176-ed8359ffebc5",
              "type": "basic.code",
              "data": {
                "code": "//-- MotorBit\n\n//-- Control de un servo de rotacion continua SM-S4303R\n//-- con dos bits\n\n//-- Constantes para el angulo del servo\nlocalparam ANG_0   = 8'h01;\nlocalparam ANG_45  = 8'h24;\nlocalparam ANG_90  = 8'h72;\nlocalparam ANG_135 = 8'h96;\nlocalparam ANG_180 = 8'hE4;\nlocalparam STOP = 8'h90;\nlocalparam ATRAS = 8'h24;\nlocalparam ADELANTE = 8'hE4;\n\n\n//-- Posicion del servo cuando el\n//-- bit de entrada es 0\n//-- La corona del servo mira a la derecha\nlocalparam BIT0 = STOP;\n\n//-- Posicion el servo cuando el bit\n//-- de entrada es 1\n//-- La corona del servo mira a la izquierda\nlocalparam BIT1 = ATRAS;\n\n\n//-- Posicion de 8 bits del servo\nreg [7:0] pos;\n\n//-- Asignar la posicion de 8 bits\n//-- segun si lo recibido es 0 ó 1\nalways @(posedge clk)\n  pos <= (on_off==0) ? STOP : \n         dir ? ADELANTE : ATRAS;\n\n\n//---\n//--- ServoMotor \n\n//-- M es el valor del divisor para\n//-- obtener tics de M / 12.0 micro-segundos\nlocalparam M = 94; \nlocalparam N = $clog2(M);\n\n//-- Contador para generar los tics\nreg [N-1:0] divcounter = 0;\n\n//-- Flag para indicar que un tic\n//-- ha ocurrido\nreg tic = 0;\n\n//-- Generacion de los tics. Cada\n//-- M ciclos del reloj se genera 1\nalways @(posedge clk)\n tic <= (divcounter == M - 2);\n\n//-- Contador modulo M\nalways @(posedge clk)\n if (tic)\n   divcounter <= 0;\n else\n   divcounter <= divcounter + 1;\n\n//-- Contador de la posicion del \n//-- servo\nreg [10:0] angle_counter = 0;\n\n//-- A la posicion destino hay que\n//-- sumarle un offset, correspondiente\n//-- a los 0.3ms de la posicion inicial\nwire [8:0] pose = {1'b0, pos} + 9'd46;\n\n//-- Con cada tic se incrementa el\n//-- contador de angulo del servo\nalways @(posedge clk)\n if (tic)\n   angle_counter <= angle_counter + 1;\n\n//-- Cuando el contador es menor que el \n//-- valor objetivo, la señal de PWM\n//-- del servo se pone 1, y 0 en \n//-- caso contrario\n\nreg servo;\n\nalways @(posedge clk)\n servo <= (angle_counter < {2'b00, pose});\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "on_off"
                    },
                    {
                      "name": "dir"
                    }
                  ],
                  "out": [
                    {
                      "name": "servo"
                    }
                  ]
                }
              },
              "position": {
                "x": 304,
                "y": 80
              },
              "size": {
                "width": 528,
                "height": 416
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "servo"
              },
              "target": {
                "block": "910bbdc3-5979-4834-ab08-a96083e784ce",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a",
                "port": "out"
              },
              "target": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "on_off"
              }
            },
            {
              "source": {
                "block": "9e05d630-6be7-45c7-b3ce-3a4e161901cd",
                "port": "out"
              },
              "target": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "dir"
              }
            },
            {
              "source": {
                "block": "8da63e4e-07b6-4711-900a-8c8843f20352",
                "port": "out"
              },
              "target": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "fec7ff39e4c71bcdf0ca03690e64aab18405ad25": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.641%22%20height=%2258.608%22%20viewBox=%220%200%2031.538733%2054.944538%22%3E%3Cg%20stroke=%22#00f%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M21.822%2033.91l4.092%208.992-3.772%209.727%204.181%201.311M13.356%2034.68s-1.091%208.252-2.585%208.918C9.278%2044.265%201%2050.456%201%2050.456l2.647%203.256%22%20fill=%22none%22%20stroke-width=%222%22/%3E%3Cpath%20d=%22M19.787%202.504a11.65%2017.168%2028.167%200%200-14.101%2010.6%2011.65%2017.168%2028.167%200%200%202.166%2020.634%2011.65%2017.168%2028.167%200%200%2018.373-9.636%2011.65%2017.168%2028.167%200%200-2.166-20.633%2011.65%2017.168%2028.167%200%200-4.272-.965zm-1.31%205.123a8.864%2012.535%2028.167%200%201%203.232.766%208.864%2012.535%2028.167%200%201%201.898%2015.234%208.864%2012.535%2028.167%200%201-13.732%206.867A8.864%2012.535%2028.167%200%201%207.979%2015.26a8.864%2012.535%2028.167%200%201%2010.498-7.633z%22%20fill=%22#00f%22%20stroke-width=%225%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            },
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "b734f60cce5a9de8621cbbd63cf95b689e40512c": {
      "package": {
        "name": "1",
        "version": "0.1",
        "description": "Un bit constante a 1",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.632%22%20height=%2269.34%22%20viewBox=%220%200%2031.530464%2065.006656%22%3E%3Cpath%20d=%22M3.517%2012.015L19%200l12.53%202.863-10.012%2043.262-9.746-2.227%207.7-34.532L8.03%2016.38z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M17.593%2043.464l7.822%2010.472-6.56%207.919%202.27%202.043M15.985%2043.719l-4.542%2010.473-10.345%202.043.757%203.32%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.196%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 1\nassign q = 1'b1;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            },
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "e156d3e9bfab13f2760227aab507b823f967f912": {
      "package": {
        "name": "MC33925 Driver Motor",
        "version": "v1.0.0",
        "description": "",
        "author": "Juan Ordoñez",
        "image": "%3Csvg%20viewBox=%220%200%20256%20256%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cstyle%3E.st0%7Bfill:#d5e2eb%7D.st1%7Bfill:none;stroke:#00a388;stroke-width:4;stroke-miterlimit:10%7D.st2%7Bfill:#fff%7D.st3%7Bfill:#cc4e47%7D.st4%7Bfill:#ea685e%7D.st5%7Bfill:#4b687f%7D.st6%7Bfill:#2c3e50%7D.st7%7Bfill:#3e5063%7D.st8%7Bfill:#ffab80%7D.st9%7Bfilter:url(#Adobe_OpacityMaskFilter)%7D.st10%7Bmask:url(#SVGID_2_)%7D.st11%7Bfill:#f09a79%7D.st12%7Bfill:#00886f%7D.st13%7Bfill:#00a388%7D.st14%7Bfill:none;stroke:#3e5063;stroke-width:4;stroke-miterlimit:10%7D.st15%7Bfill:#ffd766%7D.st16%7Bfill:#5488b7%7D.st17%7Bfill:#8c623b%7D.st18%7Bfill:#e6e6e6;stroke:#3e5063;stroke-width:16;stroke-miterlimit:10%7D.st19%7Bopacity:.6%7D.st20%7Bfill:#e6e6e6%7D.st21%7Bfill:none;stroke:#d5e2eb;stroke-width:5;stroke-miterlimit:10%7D.st22%7Bfill:#ffec9f%7D.st23%7Bfill:#603813%7D.st24%7Bfilter:url(#Adobe_OpacityMaskFilter_1_)%7D.st25%7Bmask:url(#SVGID_1_)%7D%3C/style%3E%3Ccircle%20class=%22st0%22%20cx=%22128%22%20cy=%22128%22%20r=%22120%22%20id=%22Layer_2%22/%3E%3Cg%20id=%22Layer_1%22%3E%3Cpath%20class=%22st3%22%20d=%22M197.727%20124.78a3.909%203.909%200%200%200-3.522-3.536l-11.812-1.113c-1.598-.147-2.955-1.268-3.367-2.822a52.705%2052.705%200%200%200-5.268-12.703%203.865%203.865%200%200%201%20.383-4.385l7.575-9.144a3.904%203.904%200%200%200-.015-4.988%2071.28%2071.28%200%200%200-8.79-8.79%203.905%203.905%200%200%200-4.996-.015l-9.137%207.575a3.863%203.863%200%200%201-4.391.376%2052.601%2052.601%200%200%200-12.704-5.276c-1.554-.413-2.667-1.769-2.822-3.368l-1.105-11.804a3.9%203.9%200%200%200-3.537-3.515%2069.389%2069.389%200%200%200-6.22-.272c-2.099%200-4.17.088-6.218.272a3.9%203.9%200%200%200-3.537%203.515l-1.105%2011.804c-.155%201.6-1.267%202.955-2.822%203.368a52.602%2052.602%200%200%200-12.704%205.276c-1.4.81-3.146.648-4.391-.376l-9.137-7.575a3.905%203.905%200%200%200-4.995.015%2071.28%2071.28%200%200%200-8.791%208.79%203.904%203.904%200%200%200-.015%204.988l7.575%209.137c1.024%201.245%201.186%203%20.376%204.392a52.208%2052.208%200%200%200-5.268%2012.703%203.876%203.876%200%200%201-3.375%202.83l-11.805%201.105a3.907%203.907%200%200%200-3.514%203.53A69.552%2069.552%200%200%200%2058%20131c0%202.092.088%204.17.273%206.219a3.9%203.9%200%200%200%203.514%203.53l11.805%201.112a3.86%203.86%200%200%201%203.375%202.822%2052.12%2052.12%200%200%200%205.268%2012.703c.81%201.392.648%203.147-.376%204.392l-7.575%209.137a3.904%203.904%200%200%200%20.015%204.988%2070.827%2070.827%200%200%200%208.79%208.791%203.905%203.905%200%200%200%204.996.015l9.137-7.568a3.84%203.84%200%200%201%204.384-.383%2052.411%2052.411%200%200%200%2012.71%205.26%203.87%203.87%200%200%201%202.823%203.376l1.105%2011.812a3.894%203.894%200%200%200%203.537%203.514%2069.377%2069.377%200%200%200%2012.438%200%203.894%203.894%200%200%200%203.537-3.514l1.105-11.812a3.869%203.869%200%200%201%202.822-3.375%2052.444%2052.444%200%200%200%2012.71-5.26%203.84%203.84%200%200%201%204.385.382l9.137%207.568a3.905%203.905%200%200%200%204.995-.015%2070.718%2070.718%200%200%200%208.79-8.79%203.904%203.904%200%200%200%20.016-4.989l-7.575-9.144a3.864%203.864%200%200%201-.383-4.384%2052.672%2052.672%200%200%200%205.268-12.703c.412-1.555%201.769-2.675%203.367-2.823l11.812-1.112a3.9%203.9%200%200%200%203.522-3.53c.185-2.048.273-4.126.273-6.218a69.42%2069.42%200%200%200-.273-6.22zM128%20163.356c-17.868%200-32.363-14.486-32.363-32.355%200-17.876%2014.494-32.362%2032.363-32.362S160.36%20113.124%20160.36%20131c0%2017.868-14.493%2032.355-32.362%2032.355z%22/%3E%3Cpath%20class=%22st4%22%20d=%22M197.727%20118.78a3.909%203.909%200%200%200-3.522-3.536l-11.812-1.113c-1.598-.147-2.955-1.268-3.367-2.822a52.705%2052.705%200%200%200-5.268-12.703%203.865%203.865%200%200%201%20.383-4.385l7.575-9.144a3.904%203.904%200%200%200-.015-4.988%2071.28%2071.28%200%200%200-8.79-8.79%203.905%203.905%200%200%200-4.996-.015l-9.137%207.575a3.863%203.863%200%200%201-4.391.376%2052.601%2052.601%200%200%200-12.704-5.276c-1.554-.413-2.667-1.769-2.822-3.368l-1.105-11.804a3.9%203.9%200%200%200-3.537-3.515%2069.389%2069.389%200%200%200-6.22-.272c-2.099%200-4.17.088-6.218.272a3.9%203.9%200%200%200-3.537%203.515l-1.105%2011.804c-.155%201.6-1.267%202.955-2.822%203.368a52.602%2052.602%200%200%200-12.704%205.276c-1.4.81-3.146.648-4.391-.376l-9.137-7.575a3.905%203.905%200%200%200-4.995.015%2071.28%2071.28%200%200%200-8.791%208.79%203.904%203.904%200%200%200-.015%204.988l7.575%209.137c1.024%201.245%201.186%203%20.376%204.392a52.208%2052.208%200%200%200-5.268%2012.703%203.876%203.876%200%200%201-3.375%202.83l-11.805%201.105a3.907%203.907%200%200%200-3.514%203.53A69.552%2069.552%200%200%200%2058%20125c0%202.092.088%204.17.273%206.219a3.9%203.9%200%200%200%203.514%203.53l11.805%201.112a3.86%203.86%200%200%201%203.375%202.822%2052.12%2052.12%200%200%200%205.268%2012.703c.81%201.392.648%203.147-.376%204.392l-7.575%209.137a3.904%203.904%200%200%200%20.015%204.988%2070.827%2070.827%200%200%200%208.79%208.791%203.905%203.905%200%200%200%204.996.015l9.137-7.568a3.84%203.84%200%200%201%204.384-.383%2052.411%2052.411%200%200%200%2012.71%205.26%203.87%203.87%200%200%201%202.823%203.376l1.105%2011.812a3.894%203.894%200%200%200%203.537%203.514%2069.377%2069.377%200%200%200%2012.438%200%203.894%203.894%200%200%200%203.537-3.514l1.105-11.812a3.869%203.869%200%200%201%202.822-3.375%2052.444%2052.444%200%200%200%2012.71-5.26%203.84%203.84%200%200%201%204.385.382l9.137%207.568a3.905%203.905%200%200%200%204.995-.015%2070.718%2070.718%200%200%200%208.79-8.79%203.904%203.904%200%200%200%20.016-4.989l-7.575-9.144a3.864%203.864%200%200%201-.383-4.384%2052.672%2052.672%200%200%200%205.268-12.703c.412-1.555%201.769-2.675%203.367-2.823l11.812-1.112a3.9%203.9%200%200%200%203.522-3.53c.185-2.048.273-4.126.273-6.218a69.42%2069.42%200%200%200-.273-6.22zM128%20157.356c-17.868%200-32.363-14.486-32.363-32.355%200-17.876%2014.494-32.362%2032.363-32.362S160.36%20107.124%20160.36%20125c0%2017.868-14.493%2032.355-32.362%2032.355z%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d",
              "type": "basic.output",
              "data": {
                "name": "INV"
              },
              "position": {
                "x": 512,
                "y": -296
              }
            },
            {
              "id": "b44b9148-8c19-4ee1-b971-6bf0cfc807be",
              "type": "basic.output",
              "data": {
                "name": "IN1"
              },
              "position": {
                "x": 512,
                "y": -232
              }
            },
            {
              "id": "0a523239-d3f4-4a5f-9572-cebd69eb4f6c",
              "type": "basic.output",
              "data": {
                "name": "IN2"
              },
              "position": {
                "x": 512,
                "y": -176
              }
            },
            {
              "id": "5f2d8d44-8ceb-4084-9a2f-53a680bd49d3",
              "type": "basic.output",
              "data": {
                "name": "EN"
              },
              "position": {
                "x": 512,
                "y": -120
              }
            },
            {
              "id": "c8da2f1b-b72c-4337-bbda-82283cfeca57",
              "type": "basic.input",
              "data": {
                "name": "change_direction",
                "clock": false
              },
              "position": {
                "x": -512,
                "y": -104
              }
            },
            {
              "id": "c7021b32-fb9e-46f2-9bd4-5a4a86558bc1",
              "type": "basic.output",
              "data": {
                "name": "SF"
              },
              "position": {
                "x": 512,
                "y": -56
              }
            },
            {
              "id": "aa38018e-ebf9-460c-ad23-5bc17cf62e41",
              "type": "basic.output",
              "data": {
                "name": "D1"
              },
              "position": {
                "x": 512,
                "y": 24
              }
            },
            {
              "id": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
              "type": "basic.code",
              "data": {
                "code": "\n\n\n\nreg EN_reg = 1;//sleep mode \nreg D1_reg = 0; //para configurar el triestado de la salida, para controlar si es el dutty el que maneja o tiempo en baja\n//D2_reg <= 1;//para configurar el trisestado de la salida\nreg IN1_reg = 1; //se estable un sentido para el mov\nreg IN2_reg = 0; //se estable un sentido para el mov, negado de in1 si queremos que se mueva\n//reg INV_reg = 0; //si cambiamos inv la rueda cambia de sentido\n\n\nassign INV = change_direction;\nassign IN1 = IN1_reg;\nassign IN2 = IN2_reg;\nassign EN = EN_reg;\nassign D1 = D1_reg;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "change_direction"
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
                "x": -248,
                "y": -272
              },
              "size": {
                "width": 688,
                "height": 400
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "EN"
              },
              "target": {
                "block": "5f2d8d44-8ceb-4084-9a2f-53a680bd49d3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "IN1"
              },
              "target": {
                "block": "b44b9148-8c19-4ee1-b971-6bf0cfc807be",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "IN2"
              },
              "target": {
                "block": "0a523239-d3f4-4a5f-9572-cebd69eb4f6c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "SF"
              },
              "target": {
                "block": "c7021b32-fb9e-46f2-9bd4-5a4a86558bc1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "INV"
              },
              "target": {
                "block": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "D1"
              },
              "target": {
                "block": "aa38018e-ebf9-460c-ad23-5bc17cf62e41",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c8da2f1b-b72c-4337-bbda-82283cfeca57",
                "port": "out"
              },
              "target": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "change_direction"
              }
            }
          ]
        }
      }
    },
    "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139": {
      "package": {
        "name": "NOT",
        "version": "1.0.0",
        "description": "NOT logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "// NOT logic gate\n\nassign c = ~ a;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
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
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}