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
          "id": "70f27ffd-d243-4c4b-9162-1ce3d418ef6f",
          "type": "basic.output",
          "data": {
            "name": "D1",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 768,
            "y": -512
          }
        },
        {
          "id": "b048d187-d794-42b8-a9a5-19db8b008b29",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 160,
            "y": -176
          }
        },
        {
          "id": "8d460903-edb1-4a04-90e6-f779a1d2e28c",
          "type": "basic.output",
          "data": {
            "name": "D0",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1008,
            "y": -120
          }
        },
        {
          "id": "f09d4a83-f50b-4fe9-ba49-5c1594ea04a1",
          "type": "basic.input",
          "data": {
            "name": "IR_LEFT",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "63"
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
          "id": "2c3bffab-694d-4835-b90f-00af92936413",
          "type": "basic.output",
          "data": {
            "name": "DEBUG_IR",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "44"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 152,
            "y": 64
          }
        },
        {
          "id": "52f0e16f-2399-480c-b4e4-b709e08892ac",
          "type": "basic.output",
          "data": {
            "name": "D2",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "4"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1008,
            "y": 128
          }
        },
        {
          "id": "614a1edc-8868-4907-b153-031100a4cf34",
          "type": "basic.input",
          "data": {
            "name": "IR_RIGHT",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "64"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -128,
            "y": 144
          }
        },
        {
          "id": "796058db-53dc-4fbe-b24f-0a8d75ee90e7",
          "type": "basic.constant",
          "data": {
            "name": "velocity_LEFT",
            "value": "16'd6000",
            "local": false
          },
          "position": {
            "x": 800,
            "y": -272
          }
        },
        {
          "id": "ad4b6a15-7e55-4980-a99a-679480157d2c",
          "type": "basic.constant",
          "data": {
            "name": "velocity_RIGHT",
            "value": "16'd6000",
            "local": false
          },
          "position": {
            "x": 800,
            "y": -24
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
            "y": 144
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "47d5e651-f8db-4d7c-bedb-5bdaae4a482c",
          "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
          "position": {
            "x": 136,
            "y": -440
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "bdffdb58-5b66-481c-923b-c12a43933a06",
          "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
          "position": {
            "x": 136,
            "y": -376
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "bf5f2012-83c6-43b6-b93a-98f638113a0c",
          "type": "6b258219081efa4bc3fe1501eb687d2fb356bd6e",
          "position": {
            "x": 560,
            "y": -496
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "30f1d5cb-e747-47f7-b20c-4b27eb27878e",
          "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
          "position": {
            "x": 320,
            "y": -448
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "4521775a-2e2f-4be8-8506-8f0ab01cf268",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 136,
            "y": -504
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ad3bccab-c46c-49eb-a00a-c7ef8020cee3",
          "type": "996ad266e9e44dd173a2f2efceccb08fce4d1517",
          "position": {
            "x": 800,
            "y": -120
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "4a1aec61-2765-4255-ac2f-0f697f4f0083",
          "type": "996ad266e9e44dd173a2f2efceccb08fce4d1517",
          "position": {
            "x": 800,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f8f9952d-4b84-4950-bcc0-47e472f93815",
          "type": "basic.info",
          "data": {
            "info": "DRIVER MOTOR CONFIGURATION. Dual MC33926 Motor Driver Carrier.",
            "readonly": false
          },
          "position": {
            "x": 240,
            "y": -592
          },
          "size": {
            "width": 520,
            "height": 64
          }
        },
        {
          "id": "0f3d21fb-0da8-42d7-9d22-ac2bb939e587",
          "type": "basic.info",
          "data": {
            "info": "MOTOR ACTION. DEPENDS ON THE POSITION OF THE BLACK LINE.",
            "readonly": false
          },
          "position": {
            "x": 240,
            "y": -296
          },
          "size": {
            "width": 520,
            "height": 56
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
            "block": "796058db-53dc-4fbe-b24f-0a8d75ee90e7",
            "port": "constant-out"
          },
          "target": {
            "block": "ad3bccab-c46c-49eb-a00a-c7ef8020cee3",
            "port": "94314d85-3bc8-485e-8267-57d52d038baa"
          }
        },
        {
          "source": {
            "block": "ad4b6a15-7e55-4980-a99a-679480157d2c",
            "port": "constant-out"
          },
          "target": {
            "block": "4a1aec61-2765-4255-ac2f-0f697f4f0083",
            "port": "94314d85-3bc8-485e-8267-57d52d038baa"
          }
        },
        {
          "source": {
            "block": "bf5f2012-83c6-43b6-b93a-98f638113a0c",
            "port": "d5392de8-da6b-47ca-bcf4-a0958611cf49"
          },
          "target": {
            "block": "70f27ffd-d243-4c4b-9162-1ce3d418ef6f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ad3bccab-c46c-49eb-a00a-c7ef8020cee3",
            "port": "51ce0fb0-3414-447b-b69f-6f238a3c1401"
          },
          "target": {
            "block": "8d460903-edb1-4a04-90e6-f779a1d2e28c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4a1aec61-2765-4255-ac2f-0f697f4f0083",
            "port": "51ce0fb0-3414-447b-b69f-6f238a3c1401"
          },
          "target": {
            "block": "52f0e16f-2399-480c-b4e4-b709e08892ac",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "47d5e651-f8db-4d7c-bedb-5bdaae4a482c",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "30f1d5cb-e747-47f7-b20c-4b27eb27878e",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "30f1d5cb-e747-47f7-b20c-4b27eb27878e",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "bf5f2012-83c6-43b6-b93a-98f638113a0c",
            "port": "4a0627a4-a331-4c87-84b9-ca53d9de0785"
          }
        },
        {
          "source": {
            "block": "4521775a-2e2f-4be8-8506-8f0ab01cf268",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "bf5f2012-83c6-43b6-b93a-98f638113a0c",
            "port": "0a29ac1c-21e5-4a9e-96c5-8dcfaeca0692"
          }
        },
        {
          "source": {
            "block": "bdffdb58-5b66-481c-923b-c12a43933a06",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "bf5f2012-83c6-43b6-b93a-98f638113a0c",
            "port": "4713e6fa-2448-4e4e-9f4e-e01667beaa46"
          }
        },
        {
          "source": {
            "block": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "ad3bccab-c46c-49eb-a00a-c7ef8020cee3",
            "port": "0816c510-5b0b-4f6e-a8b5-ebc44f87121b"
          },
          "vertices": [
            {
              "x": 408,
              "y": -72
            }
          ]
        },
        {
          "source": {
            "block": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "4a1aec61-2765-4255-ac2f-0f697f4f0083",
            "port": "0816c510-5b0b-4f6e-a8b5-ebc44f87121b"
          },
          "vertices": [
            {
              "x": 400,
              "y": 176
            }
          ]
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
    "c83dcd1d9ab420d911df81b3dfae04681559c623": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 1\n\nassign v = 1'b1;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
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
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "6b258219081efa4bc3fe1501eb687d2fb356bd6e": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2058%2058%22%3E%3Ccircle%20cx=%2229%22%20cy=%2229%22%20r=%2229%22%20fill=%22#424a60%22/%3E%3Cpath%20d=%22M53.148%2021.529a.998.998%200%200%200-1.225-.707l-2.269.608a21.557%2021.557%200%200%200-1.4-3.393l2.03-1.172a1%201%200%201%200-1-1.732l-2.045%201.181a21.64%2021.64%200%200%200-2.219-2.921l1.657-1.657a.999.999%200%201%200-1.414-1.414l-1.653%201.653a21.438%2021.438%200%200%200-2.921-2.223l1.176-2.036a1%201%200%201%200-1.732-1l-1.179%202.042a21.775%2021.775%200%200%200-3.391-1.393l.613-2.288a1%201%200%200%200-1.932-.518l-.613%202.288A21.684%2021.684%200%200%200%2030%206.358V4a1%201%200%201%200-2%200v2.352a21.468%2021.468%200%200%200-3.641.465l-.605-2.258a1%201%200%200%200-1.932.518l.606%202.263a21.732%2021.732%200%200%200-3.383%201.42l-1.18-2.044a1%201%200%201%200-1.731%201l1.172%202.029a21.482%2021.482%200%200%200-2.91%202.237l-1.66-1.66a.999.999%200%201%200-1.414%201.414l1.664%201.664a21.785%2021.785%200%200%200-2.228%202.913l-2.043-1.179a1%201%200%200%200-1%201.732l2.045%201.181a21.902%2021.902%200%200%200-1.403%203.387l-2.281-.612a1%201%200%201%200-.518%201.932l2.281.612a21.626%2021.626%200%200%200-.516%204.721%201%201%200%200%200%201%20.997h.003a1%201%200%200%200%20.997-1.003%2019.782%2019.782%200%200%201%205.076-13.267l7.57%207.57a8.972%208.972%200%200%200-1.663%203.287%208.938%208.938%200%200%200%20.898%206.828A9.039%209.039%200%200%200%2029.007%2037a9.002%209.002%200%200%200%204.492-1.207%208.934%208.934%200%200%200%204.192-5.464%208.938%208.938%200%200%200-.898-6.828%208.996%208.996%200%200%200-.77-1.111l7.584-7.584a19.66%2019.66%200%200%201%202.444%203.35%2019.66%2019.66%200%200%201%202.62%209.924%201%201%200%200%200%20.995%201.005h.005a1%201%200%200%200%201-.995%2021.781%2021.781%200%200%200-.504-4.725l2.273-.61a1%201%200%200%200%20.708-1.226zM28.993%2019a9.002%209.002%200%200%200-4.492%201.207c-.395.228-.76.49-1.111.768l-7.579-7.579a19.476%2019.476%200%200%201%203.345-2.448c7.573-4.373%2016.868-3.118%2023.037%202.445l-7.585%207.585A9.03%209.03%200%200%200%2028.993%2019zm6.767%2010.812a6.952%206.952%200%200%201-3.261%204.249%206.994%206.994%200%200%201-3.492.939%207.024%207.024%200%200%201-6.068-3.501c-.935-1.619-1.183-3.505-.699-5.311s1.642-3.314%203.261-4.249A6.994%206.994%200%200%201%2028.993%2021a7.024%207.024%200%200%201%206.068%203.501%206.951%206.951%200%200%201%20.699%205.311z%22%20fill=%22#fff%22/%3E%3Cpath%20d=%22M26%2046.5h-2.207c-.016%200-.029.008-.044.009a13.657%2013.657%200%200%200-1.341-5.023c.012-.007.026-.009.038-.016l1.911-1.104a1%201%200%201%200-1-1.732l-1.911%201.104c-.015.009-.024.024-.038.034a13.676%2013.676%200%200%200-3.675-3.677c.009-.014.022-.025.03-.039l1.104-1.911a1%201%200%200%200-1.732-1l-1.104%201.911c-.006.011-.006.024-.012.035a13.872%2013.872%200%200%200-5.026-1.347c0-.013.007-.023.007-.036V31.5a1%201%200%201%200-2%200v2.207c0%20.017.009.031.01.049a13.71%2013.71%200%200%200-5.906%201.799c-.718.415-1.374.893-1.987%201.408a28.891%2028.891%200%200%200%203.862%208.267%205.488%205.488%200%200%201%202.264-2.509%205.517%205.517%200%200%201%205.518%209.557%205.457%205.457%200%200%201-.625.305%2028.876%2028.876%200%200%200%208.162%204.086%2013.839%2013.839%200%200%200%203.449-8.179c.017.001.031.01.048.01H26a1%201%200%201%200%200-2z%22%20fill=%22#c7cac7%22/%3E%3Cpath%20d=%22M48.99%2033.257c.001-.017.01-.032.01-.05V31a1%201%200%201%200-2%200v2.207c0%20.016.008.028.009.044-1.705.12-3.41.557-5.026%201.342-.006-.012-.006-.026-.013-.038l-1.104-1.911a1%201%200%201%200-1.732.999l1.104%201.911c.009.015.022.026.031.04a13.676%2013.676%200%200%200-3.676%203.676c-.014-.009-.022-.024-.037-.033l-1.911-1.104a1%201%200%200%200-1%201.732l1.911%201.104c.011.006.023.008.034.014a13.876%2013.876%200%200%200-1.346%205.024c-.014%200-.024-.007-.037-.007H32a1%201%200%201%200%200%202h2.207c.017%200%20.032-.009.049-.01a13.71%2013.71%200%200%200%201.799%205.906c.57.987%201.253%201.864%202.009%202.651a28.906%2028.906%200%200%200%208.252-4.302%205.489%205.489%200%200%201-3.093-2.487%205.518%205.518%200%200%201%209.556-5.517c.149.258.268.525.371.795a28.819%2028.819%200%200%200%203.849-8.476%2013.854%2013.854%200%200%200-8.009-3.303z%22%20fill=%22#ed7161%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "d5392de8-da6b-47ca-bcf4-a0958611cf49",
              "type": "basic.output",
              "data": {
                "name": "INV"
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
                "name": "IN1"
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
                "name": "IN2"
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
                "name": "EN"
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
      }
    },
    "c4dd08263a85a91ba53e2ae2b38de344c5efcb52": {
      "package": {
        "name": "Bit 0",
        "version": "1.0.0",
        "description": "Assign 0 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 0\n\nassign v = 1'b0;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
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
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "996ad266e9e44dd173a2f2efceccb08fce4d1517": {
      "package": {
        "name": "PWM_CONTROLLER",
        "version": "1.0.0",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cg%20fill=%22#f2f2f2%22%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22256%22/%3E%3Cpath%20d=%22M256%20256zM256%20256zM256%20256zM256%20256zM256%20256zM256%20256z%22/%3E%3C/g%3E%3Cpath%20d=%22M481.067%20256H393.6c0-25.6-6.4-48-18.133-69.333-11.733-21.333-29.867-38.4-50.133-50.133L369.067%2060.8C403.2%2081.067%20432%20108.8%20451.2%20142.933c18.133%2034.134%2029.867%2072.534%2029.867%20113.067z%22%20fill=%22#f8b64c%22/%3E%3Cpath%20d=%22M481.067%20256c0%2040.533-10.667%2078.933-29.867%20112-19.2%2034.133-48%2062.933-82.133%2082.133L325.333%20374.4c21.333-11.733%2038.4-29.867%2050.133-50.133C387.2%20304%20393.6%20280.533%20393.6%20254.933h87.467V256z%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M186.667%20136.533c-21.333%2011.733-38.4%2029.867-50.133%2050.133C124.8%20206.933%20118.4%20230.4%20118.4%20256H30.933c0-40.533%2010.667-78.933%2029.867-112%2019.2-34.133%2048-62.933%2082.133-82.133l43.734%2074.666z%22%20fill=%22#54c0eb%22/%3E%3Cpath%20d=%22M186.667%20375.467L142.933%20451.2C108.8%20432%2080%20403.2%2060.8%20369.067%2042.667%20334.933%2030.933%20296.533%2030.933%20256H118.4c0%2025.6%206.4%2049.067%2018.133%2069.333a160.656%20160.656%200%200%200%2050.134%2050.134z%22%20fill=%22#84dbff%22/%3E%3Cpath%20d=%22M368%2061.867L324.267%20137.6c-20.267-11.733-43.733-18.133-69.333-18.133s-48%206.4-69.333%2018.133l-43.733-75.733c35.2-19.2%2073.6-30.933%20114.133-30.933S334.933%2042.667%20368%2061.867z%22%20fill=%22#ffd15c%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22137.6%22%20fill=%22#f2f2f2%22/%3E%3Cpath%20d=%22M273.067%20230.4c12.8%209.6%2016%2027.733%207.467%2040.533-9.6%2012.8-27.733%2016-40.533%207.467-12.8-9.6-87.467-96-87.467-96s106.666%2038.4%20120.533%2048z%22%20fill=%22#40596b%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22253.867%22%20r=%2217.067%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M256%2052.267c120.533%200%20218.667%2094.933%20224%20214.4%200-3.2%201.067-7.467%201.067-10.667C481.067%20132.267%20380.8%2030.933%20256%2030.933S30.933%20132.267%2030.933%20256c0%203.2%200%207.467%201.067%2010.667%205.333-119.467%20103.467-214.4%20224-214.4z%22%20opacity=%22.15%22%20fill=%22#40596b%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "159fd93f-0f27-4956-93b1-1343b7692189",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -232,
                "y": -272
              }
            },
            {
              "id": "51ce0fb0-3414-447b-b69f-6f238a3c1401",
              "type": "basic.output",
              "data": {
                "name": "PWM"
              },
              "position": {
                "x": 2128,
                "y": -136
              }
            },
            {
              "id": "0816c510-5b0b-4f6e-a8b5-ebc44f87121b",
              "type": "basic.input",
              "data": {
                "name": "ON_OFF",
                "clock": false
              },
              "position": {
                "x": 304,
                "y": 32
              }
            },
            {
              "id": "94314d85-3bc8-485e-8267-57d52d038baa",
              "type": "basic.constant",
              "data": {
                "name": "velocity",
                "value": "16'd6000",
                "local": false
              },
              "position": {
                "x": 1488,
                "y": -520
              }
            },
            {
              "id": "cbcbbed1-01cd-49c5-a188-65f9f57379f5",
              "type": "basic.code",
              "data": {
                "code": "//generamos un relog de 20Khz que es el maximo de PWM\n//un contador de 8bits\nlocalparam max_count = 16'd7000;\nreg [15:0] counter = 16'd0;\nreg clock_out_reg = 1'd0;\n\nalways @(posedge clock_in)\nbegin \ncounter <= (counter == max_count) ? 16'd0: counter + 16'd1;\nclock_out_reg <= (counter == max_count) ? !clock_out_reg: clock_out_reg;\nend\n\n\nassign clock_out = clock_out_reg;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clock_out"
                    }
                  ]
                }
              },
              "position": {
                "x": -40,
                "y": -440
              },
              "size": {
                "width": 928,
                "height": 400
              }
            },
            {
              "id": "50d5caeb-e74a-4756-a919-8a5f8399271d",
              "type": "basic.code",
              "data": {
                "code": "reg [15:0] counter = 16'd0;\r\nreg PWM_reg = 1'b0;\r\n\r\nlocalparam START = 4'd0;\r\nlocalparam COUNTER = 4'd1;\r\nlocalparam FINISH = 4'd2;\r\n\r\nreg [3:0] STATE = START;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n\r\nif (start == 1'b1)\r\n    begin\r\n    \r\n        case (STATE)\r\n        START: \r\n        begin\r\n            PWM_reg <= (clock_20khz == 1'b1) ? 1'b1:1'b0;\r\n            STATE <= (clock_20khz == 1'b1) ? COUNTER:START;\r\n        end\r\n        \r\n        COUNTER:\r\n        begin\r\n            if (counter == velocity ||  clock_20khz == 1'b0)\r\n            begin\r\n                counter <= 16'd0;\r\n                STATE <= FINISH;\r\n                PWM_reg <= 1'b0;\r\n            end\r\n            else \r\n            begin\r\n                counter <= counter + 16'd1;\r\n                STATE <= COUNTER;\r\n                PWM_reg <= 1'b1;\r\n            end\r\n        end\r\n        FINISH:\r\n        begin\r\n            STATE <= (clock_20khz == 1'b0) ? START:FINISH;\r\n        \r\n        end\r\n        endcase\r\n        \r\n    end\r\nelse \r\n    begin\r\n        PWM_reg <= 1'b0;\r\n        STATE <= START;\r\n        //revisable\r\n    end\r\nend\r\n\r\nassign PWM = PWM_reg;\r\n",
                "params": [
                  {
                    "name": "velocity"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clock_20khz"
                    },
                    {
                      "name": "clock"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "PWM"
                    }
                  ]
                }
              },
              "position": {
                "x": 1048,
                "y": -368
              },
              "size": {
                "width": 976,
                "height": 520
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "94314d85-3bc8-485e-8267-57d52d038baa",
                "port": "constant-out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "velocity"
              }
            },
            {
              "source": {
                "block": "159fd93f-0f27-4956-93b1-1343b7692189",
                "port": "out"
              },
              "target": {
                "block": "cbcbbed1-01cd-49c5-a188-65f9f57379f5",
                "port": "clock_in"
              }
            },
            {
              "source": {
                "block": "cbcbbed1-01cd-49c5-a188-65f9f57379f5",
                "port": "clock_out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "clock_20khz"
              }
            },
            {
              "source": {
                "block": "159fd93f-0f27-4956-93b1-1343b7692189",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "PWM"
              },
              "target": {
                "block": "51ce0fb0-3414-447b-b69f-6f238a3c1401",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "0816c510-5b0b-4f6e-a8b5-ebc44f87121b",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "start"
              }
            }
          ]
        }
      }
    }
  }
}