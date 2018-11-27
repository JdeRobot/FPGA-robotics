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
          "id": "2d779b2c-2c3c-4e40-9e9a-3034a69a08e3",
          "type": "basic.output",
          "data": {
            "name": "data",
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
            "x": 1120,
            "y": -496
          }
        },
        {
          "id": "075eda92-7c53-48ff-b299-a17ac8b9526c",
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
            "virtual": false
          },
          "position": {
            "x": 448,
            "y": -304
          }
        },
        {
          "id": "c4322074-1384-4ed7-9521-53a4df9106b7",
          "type": "basic.output",
          "data": {
            "name": "scl",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SCL",
                "value": "91"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 168,
            "y": -248
          }
        },
        {
          "id": "b1aaa6a4-b17b-4d08-93e0-6c21ff83fc35",
          "type": "basic.input",
          "data": {
            "name": "sw1",
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
            "x": -688,
            "y": -200
          }
        },
        {
          "id": "62f22141-0e58-4aa7-b302-8e84ba99cc60",
          "type": "basic.input",
          "data": {
            "name": "sda",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SDA",
                "value": "90"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -456,
            "y": -112
          }
        },
        {
          "id": "d16d5ce5-b3b9-41bf-bd60-3a26b9b37975",
          "type": "basic.output",
          "data": {
            "name": "dout",
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
            "x": -72,
            "y": -104
          }
        },
        {
          "id": "c7562020-6fe0-4bb9-b302-d40693056fc4",
          "type": "basic.output",
          "data": {
            "name": "INV",
            "pins": [
              {
                "index": "0",
                "name": "D9",
                "value": "139"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1328,
            "y": 112
          }
        },
        {
          "id": "a1570c92-f181-4410-ad25-7d2f13a598e3",
          "type": "basic.output",
          "data": {
            "name": "IN1",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1328,
            "y": 176
          }
        },
        {
          "id": "78509a68-ebf5-4f06-b36c-92a765486ffc",
          "type": "basic.output",
          "data": {
            "name": "IN2",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1328,
            "y": 240
          }
        },
        {
          "id": "28ec2de6-00b0-4346-915b-17abd3557c88",
          "type": "basic.output",
          "data": {
            "name": "EN",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1328,
            "y": 304
          }
        },
        {
          "id": "f5a0f22b-f238-4552-9547-678853ab68bc",
          "type": "basic.output",
          "data": {
            "name": "SF",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "141"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1328,
            "y": 368
          }
        },
        {
          "id": "e894cb60-c3b6-45e6-89ba-30e0b5dd3733",
          "type": "basic.output",
          "data": {
            "name": "D1",
            "pins": [
              {
                "index": "0",
                "name": "D8",
                "value": "138"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1328,
            "y": 432
          }
        },
        {
          "id": "39174e2b-ddda-4c12-af58-5885596ddcba",
          "type": "basic.output",
          "data": {
            "name": "pwm",
            "pins": [
              {
                "index": "0",
                "name": "D7",
                "value": "112"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 40,
            "y": 632
          }
        },
        {
          "id": "1a90e7f5-9b0e-4d0e-ba96-b36a01625088",
          "type": "basic.constant",
          "data": {
            "name": "C",
            "value": "8'd200",
            "local": false
          },
          "position": {
            "x": -672,
            "y": 64
          }
        },
        {
          "id": "930dadbf-509a-44d7-9453-754963823f4c",
          "type": "basic.constant",
          "data": {
            "name": "direction_slave",
            "value": "7'b1001000",
            "local": false
          },
          "position": {
            "x": -400,
            "y": -376
          }
        },
        {
          "id": "ec151432-8ae3-4f99-9ceb-4aa807c7be5e",
          "type": "basic.constant",
          "data": {
            "name": "registrer2read1",
            "value": "8'b00000010",
            "local": false
          },
          "position": {
            "x": -288,
            "y": -376
          }
        },
        {
          "id": "3e693896-8bdb-4f20-9226-8b2fe8639b98",
          "type": "basic.constant",
          "data": {
            "name": "registrer2read2",
            "value": "8'b00000011",
            "local": false
          },
          "position": {
            "x": -176,
            "y": -376
          }
        },
        {
          "id": "d6bff63e-3f2c-4006-8ef9-738ba729050a",
          "type": "basic.constant",
          "data": {
            "name": "readings",
            "value": "1'b1",
            "local": false
          },
          "position": {
            "x": -64,
            "y": -376
          }
        },
        {
          "id": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
          "type": "d740bf6409088948f92b3e8d228a73bed72a2a74",
          "position": {
            "x": -248,
            "y": -232
          },
          "size": {
            "width": 128,
            "height": 128
          }
        },
        {
          "id": "d41cb082-5ee1-48d5-8d56-ac9189751f4f",
          "type": "1374ebd258036ea0ace53cbfce7f63fbf69e9c18",
          "position": {
            "x": -448,
            "y": -200
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "0a45c062-627d-40fe-bdb5-7fefa16e7b9f",
          "type": "51874b20e33e5f3bae83671d83952bf208e7c4cd",
          "position": {
            "x": -128,
            "y": 464
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "2dad048c-deca-4021-ad8a-e6080c9b5ed4",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": -616,
            "y": 512
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
          "type": "ade377bd326719f685059f3c27e04b573ab271a3",
          "position": {
            "x": 1056,
            "y": 328
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "9369fd0e-4dbb-4ef9-aacb-3f5296fac15e",
          "type": "basic.code",
          "data": {
            "code": "\nreg state = 1'b0;\nreg [7:0] data1 = 8'd0;\nreg [7:0] data2 = 8'd0;\n\nalways @(posedge ready)\nbegin\n    case(state)\n    \n    1'b0:\n    begin \n        data1<= data;\n        state<= 1'b1;\n    end\n    \n    1'b1:\n    begin\n        data2<= data;\n        state<= 1'b0;\n    end\n    endcase\nend\nassign velocity = data1;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "ready"
                }
              ],
              "out": [
                {
                  "name": "velocity",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 312,
            "y": -112
          },
          "size": {
            "width": 656,
            "height": 432
          }
        },
        {
          "id": "4994846f-d0c3-4edb-9b07-bde9838e15ea",
          "type": "basic.code",
          "data": {
            "code": "assign veloc = aux;",
            "params": [
              {
                "name": "aux"
              }
            ],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "veloc",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -720,
            "y": 200
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
            "block": "930dadbf-509a-44d7-9453-754963823f4c",
            "port": "constant-out"
          },
          "target": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "90bb3284-d018-4256-b967-94a4b97785b9"
          }
        },
        {
          "source": {
            "block": "ec151432-8ae3-4f99-9ceb-4aa807c7be5e",
            "port": "constant-out"
          },
          "target": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "8b18ba41-908b-47ed-9303-f4dc66a3a3f4"
          }
        },
        {
          "source": {
            "block": "3e693896-8bdb-4f20-9226-8b2fe8639b98",
            "port": "constant-out"
          },
          "target": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "c5d9d882-6cc5-4d95-babc-b55a4b082c34"
          }
        },
        {
          "source": {
            "block": "d6bff63e-3f2c-4006-8ef9-738ba729050a",
            "port": "constant-out"
          },
          "target": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "4fadbee3-41fd-4a89-a140-fd89ffb3d130"
          }
        },
        {
          "source": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "c5e713e7-17d4-4b66-9e52-ba709350d9bf"
          },
          "target": {
            "block": "c4322074-1384-4ed7-9521-53a4df9106b7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "62f22141-0e58-4aa7-b302-8e84ba99cc60",
            "port": "out"
          },
          "target": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "5bc0374a-1a1b-4418-97d3-276d74ecc31b"
          }
        },
        {
          "source": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "fab34b88-d6a3-4318-91c9-ed0ed91d0502"
          },
          "target": {
            "block": "d16d5ce5-b3b9-41bf-bd60-3a26b9b37975",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "eb293581-9054-49c0-9436-bdcf542823d5"
          },
          "target": {
            "block": "9369fd0e-4dbb-4ef9-aacb-3f5296fac15e",
            "port": "data"
          },
          "vertices": [
            {
              "x": -88,
              "y": -184
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "09a2d489-6aca-410a-b744-d87e51cab057"
          },
          "target": {
            "block": "9369fd0e-4dbb-4ef9-aacb-3f5296fac15e",
            "port": "ready"
          }
        },
        {
          "source": {
            "block": "0a45c062-627d-40fe-bdb5-7fefa16e7b9f",
            "port": "a17f6d49-c409-497e-a7f9-96b8c6997008"
          },
          "target": {
            "block": "39174e2b-ddda-4c12-af58-5885596ddcba",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b1aaa6a4-b17b-4d08-93e0-6c21ff83fc35",
            "port": "out"
          },
          "target": {
            "block": "d41cb082-5ee1-48d5-8d56-ac9189751f4f",
            "port": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5"
          }
        },
        {
          "source": {
            "block": "2dad048c-deca-4021-ad8a-e6080c9b5ed4",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "0a45c062-627d-40fe-bdb5-7fefa16e7b9f",
            "port": "7db0c83e-f877-4693-a1af-f53d5236aa28"
          }
        },
        {
          "source": {
            "block": "b1aaa6a4-b17b-4d08-93e0-6c21ff83fc35",
            "port": "out"
          },
          "target": {
            "block": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
            "port": "e731e3a9-1206-424a-9ae6-5dc908bbfca9"
          },
          "vertices": [
            {
              "x": -112,
              "y": 192
            },
            {
              "x": 176,
              "y": 328
            }
          ]
        },
        {
          "source": {
            "block": "d41cb082-5ee1-48d5-8d56-ac9189751f4f",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "57783994-820b-4a97-b38a-fa8904babf98"
          }
        },
        {
          "source": {
            "block": "1a90e7f5-9b0e-4d0e-ba96-b36a01625088",
            "port": "constant-out"
          },
          "target": {
            "block": "4994846f-d0c3-4edb-9b07-bde9838e15ea",
            "port": "aux"
          }
        },
        {
          "source": {
            "block": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
            "port": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d"
          },
          "target": {
            "block": "c7562020-6fe0-4bb9-b302-d40693056fc4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
            "port": "b44b9148-8c19-4ee1-b971-6bf0cfc807be"
          },
          "target": {
            "block": "a1570c92-f181-4410-ad25-7d2f13a598e3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
            "port": "0a523239-d3f4-4a5f-9572-cebd69eb4f6c"
          },
          "target": {
            "block": "78509a68-ebf5-4f06-b36c-92a765486ffc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
            "port": "5f2d8d44-8ceb-4084-9a2f-53a680bd49d3"
          },
          "target": {
            "block": "28ec2de6-00b0-4346-915b-17abd3557c88",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
            "port": "c7021b32-fb9e-46f2-9bd4-5a4a86558bc1"
          },
          "target": {
            "block": "f5a0f22b-f238-4552-9547-678853ab68bc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4f06dedf-a5ff-4729-9127-bc55d09f7c22",
            "port": "aa38018e-ebf9-460c-ad23-5bc17cf62e41"
          },
          "target": {
            "block": "e894cb60-c3b6-45e6-89ba-30e0b5dd3733",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9369fd0e-4dbb-4ef9-aacb-3f5296fac15e",
            "port": "velocity"
          },
          "target": {
            "block": "0a45c062-627d-40fe-bdb5-7fefa16e7b9f",
            "port": "814d3c51-fd50-4182-b0cd-968cd478884b"
          },
          "vertices": [
            {
              "x": 240,
              "y": 392
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "e11a0cc3-4bc4-4622-b269-8356131e79cb",
            "port": "09a2d489-6aca-410a-b744-d87e51cab057"
          },
          "target": {
            "block": "075eda92-7c53-48ff-b299-a17ac8b9526c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9369fd0e-4dbb-4ef9-aacb-3f5296fac15e",
            "port": "velocity"
          },
          "target": {
            "block": "2d779b2c-2c3c-4e40-9e9a-3034a69a08e3",
            "port": "in"
          },
          "size": 8
        }
      ]
    },
    "state": {
      "pan": {
        "x": 707.2483,
        "y": 407.4228
      },
      "zoom": 0.7408
    }
  },
  "dependencies": {
    "d740bf6409088948f92b3e8d228a73bed72a2a74": {
      "package": {
        "name": "READ_I2C",
        "version": "1.0",
        "description": "This module will read a specified registrer of a specified direction.",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cpath%20d=%22M256.001%20512C397%20512%20512%20397%20512%20256.001%20512%20115.001%20397%200%20256.001%200%20115.001%200%200%20115.001%200%20256.001%200%20397%20115.001%20512%20256.001%20512z%22%20fill=%22#ffca4f%22/%3E%3Cpath%20d=%22M228.854%20191.944h54.286l4.398%2045.752%2013.286%209.753%2079.045%2025.056s10.366%205.703%2013.413%2021.649c3.04%2015.947%204.521%2051.205%206.873%2072.719-54.08%2061.981-230.534%2062.077-288.309.002%202.352-21.514%203.828-56.774%206.872-72.722%203.043-15.946%2013.413-21.649%2013.413-21.649l79.586-25.401%2012.745-9.403%204.392-45.756z%22%20fill=%22#fed198%22/%3E%3Cpath%20d=%22M285.529%20216.787l.698%207.258c-4.042%204.706-8.205%209.203-12.139%2013.534-4.459%204.908-32.053%204.996-36.558-.199-3.678-4.245-7.72-8.844-11.719-13.737l.692-7.209c3.772%204.377%207.563%208.5%2011.027%2012.32%204.505%204.963%2032.099%204.879%2036.558.189%203.709-3.902%207.619-7.941%2011.441-12.156z%22%20fill=%22#f0b97d%22/%3E%3Cpath%20d=%22M211.717%20247.105l-79.588%2025.4s-10.367%205.703-13.411%2021.649c-3.043%2015.947-4.521%2051.207-6.872%2072.722%2057.775%2062.074%20234.23%2061.979%20288.309-.002-2.354-21.513-3.833-56.772-6.873-72.719-3.048-15.946-13.412-21.649-13.412-21.649l-79.046-25.057c-13.095%2038.41-76.624%2036.808-89.107-.344z%22%20fill=%22#ff5b61%22/%3E%3Cpath%20d=%22M188.217%20122.455c-17.025-3.019-2.511%2047.826%209.925%2040.246l6.673%2019.597c6.012%2017.654%2021.174%2033.728%2032.715%2046.453%204.505%204.965%2032.099%204.881%2036.558.19%2012.779-13.438%2027.961-28.535%2033.662-46.742l6.107-19.498c12.453%207.572%2026.937-43.262%209.924-40.246%201.18-39.578-26.807-77.976-67.78-78.152-40.975.176-68.963%2038.574-67.784%2078.152z%22%20fill=%22#fed198%22/%3E%3Cpath%20d=%22M304.87%2052.096c4.809-.559%2022.183%2015.31%2024.266%2033.688%202.086%2018.378-1.081%2037.32-1.081%2037.32-12.729-1.59-10.286%2021.246-10.286%2021.246l-3.686.16-2.626-13.241c-15.227-9.542%206.007-47.244-9.226-50.552-26.068%2021.472-64.738%2029.418-98.481%2023.903-9.47%201.264%204.309%2013.234.311%2027.003-2.945%205.144-1.188%2013.25-1.188%2013.25l-4.405.55s-2.727-23.033-11.222-22.936c-3.928-10.609-3.12-17.335-2.399-26.815%203.994-52.546%2070.753-85.529%20120.023-43.576z%22%20fill=%22#666%22/%3E%3Cg%20fill=%22#fff%22%3E%3Cpath%20d=%22M112.324%20281.977c88.601-11.582%20123.861%2010.65%20143.676%2028.152-29.448-16.953-85.965-15.833-141.187-5.966l-2.489-22.186zM399.673%20281.977c-88.596-11.582-123.857%2010.649-143.672%2028.152%2035.131-20.228%20101.156-12.97%20141.134-5.651l2.538-22.501z%22/%3E%3C/g%3E%3Cpath%20d=%22M90.479%20307.655c62.477-14.237%20132.495-18.733%20166.471.829%2033.98-19.561%20102.089-15.066%20164.57-.829-3.577%20122.917-.593%2020.326-5.36%20184.383-3.662-.691-102.408-15.377-150.139-1.055-7.947-.005-9.791-.005-17.77%200-52.404-15.242-148.976.407-152.417%201.055-4.921-169.39-1.66-57.037-5.355-184.383z%22%20fill=%22#15bdb1%22/%3E%3Cg%20fill=%22#dfe1e3%22%3E%3Cpath%20d=%22M98.367%20296.663l.951%209.766c60.354-12.811%20125.922-16.135%20158.451%202.594v-.001c-.114-.086-48.305-36.323-159.402-12.359z%22/%3E%3Cpath%20d=%22M413.631%20297.204l-.95%209.767c-60.357-12.811-125.921-16.135-158.452%202.594l-.001-.001c.115-.085%2048.308-36.321%20159.403-12.36z%22/%3E%3C/g%3E%3Cpath%20d=%22M124.451%20357.76l-17.402.93-17.322%201.226c-7.169.512-5.972%2013.352%201.173%2012.508l18.879-2.237%2014.34-1.206c7.168-.608%205.149-11.481.332-11.221zm-2.39%2039.946l-26.99%203.156c-5.79.673-4.396%2013.572%201.171%2012.504l27.074-5.209c5.654-1.088%204.457-11.118-1.255-10.451zm3.43-14.003c7.163-.671%208.625%2010.393%201.486%2011.305l-34.172%204.366c-7.135.912-8.328-11.834-1.169-12.502l33.855-3.169zm4.771-13.976c8.388-.785%209.557%2011.719%201.172%2012.505l-39.712%203.717c-8.383.785-9.552-11.719-1.173-12.503l39.713-3.719z%22%20fill=%22#fed198%22/%3E%3Cg%20fill=%22#fff%22%3E%3Cpath%20d=%22M122.199%20360.601l.612%206.535%204.359-.408c.732-2.449.423-4.76-.654-6.99l-4.317.863zM129.686%20372.752l.694%207.421%204.07-.382c1.439-2.804%201.376-5.468-.743-7.937l-4.021.898zM124.251%20386.624l.612%206.531%204.99-.466c.516-2.399.319-4.73-.655-6.989l-4.947.924zM120.162%20401.062l.794%205.171%205.004-.857c.454-1.968.191-3.816-.85-5.532l-4.948%201.218z%22/%3E%3C/g%3E%3Cpath%20d=%22M387.546%20357.76l17.401.93%2017.322%201.226c7.171.512%205.974%2013.352-1.171%2012.508l-18.881-2.237-14.337-1.206c-7.171-.608-5.149-11.481-.334-11.221zm2.39%2039.946l26.992%203.156c5.79.673%204.393%2013.572-1.172%2012.504l-27.072-5.209c-5.657-1.088-4.461-11.118%201.252-10.451zm-3.431-14.003c-7.163-.671-8.624%2010.393-1.484%2011.305l34.17%204.366c7.135.912%208.33-11.834%201.171-12.502l-33.857-3.169zm-4.769-13.976c-8.388-.785-9.558%2011.719-1.171%2012.505l39.712%203.717c8.381.785%209.549-11.719%201.172-12.503l-39.713-3.719z%22%20fill=%22#fed198%22/%3E%3Cg%20fill=%22#fff%22%3E%3Cpath%20d=%22M389.799%20360.601l-.613%206.535-4.357-.408c-.734-2.449-.425-4.76.654-6.99l4.316.863zM382.313%20372.752l-.695%207.421-4.07-.382c-1.441-2.804-1.376-5.468.744-7.937l4.021.898zM387.745%20386.624l-.612%206.531-4.987-.466c-.517-2.399-.319-4.73.653-6.989l4.946.924zM391.837%20401.062l-.796%205.171-5.003-.857c-.454-1.968-.191-3.816.85-5.532l4.949%201.218z%22/%3E%3C/g%3E%3Cpath%20d=%22M248.45%20490.98h17.573V304.391H248.45V490.98z%22%20fill=%22#20d0c2%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c5e713e7-17d4-4b66-9e52-ba709350d9bf",
              "type": "basic.output",
              "data": {
                "name": "scl"
              },
              "position": {
                "x": 200,
                "y": -704
              }
            },
            {
              "id": "fb128c3b-b9c6-4b7a-9e12-b3b98f526b8f",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -1256,
                "y": -648
              }
            },
            {
              "id": "eb293581-9054-49c0-9436-bdcf542823d5",
              "type": "basic.output",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 224,
                "y": -504
              }
            },
            {
              "id": "57783994-820b-4a97-b38a-fa8904babf98",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -1496,
                "y": -432
              }
            },
            {
              "id": "09a2d489-6aca-410a-b744-d87e51cab057",
              "type": "basic.output",
              "data": {
                "name": "ready"
              },
              "position": {
                "x": 176,
                "y": -224
              }
            },
            {
              "id": "5bc0374a-1a1b-4418-97d3-276d74ecc31b",
              "type": "basic.input",
              "data": {
                "name": "sda",
                "clock": false
              },
              "position": {
                "x": -808,
                "y": -48
              }
            },
            {
              "id": "fab34b88-d6a3-4318-91c9-ed0ed91d0502",
              "type": "basic.output",
              "data": {
                "name": "dout"
              },
              "position": {
                "x": -240,
                "y": 80
              }
            },
            {
              "id": "90bb3284-d018-4256-b967-94a4b97785b9",
              "type": "basic.constant",
              "data": {
                "name": "direction_slave",
                "value": "7'b0000000",
                "local": false
              },
              "position": {
                "x": -912,
                "y": -800
              }
            },
            {
              "id": "8b18ba41-908b-47ed-9303-f4dc66a3a3f4",
              "type": "basic.constant",
              "data": {
                "name": "registrer2read1",
                "value": " 8'b00000000",
                "local": false
              },
              "position": {
                "x": -720,
                "y": -808
              }
            },
            {
              "id": "c5d9d882-6cc5-4d95-babc-b55a4b082c34",
              "type": "basic.constant",
              "data": {
                "name": "registrer2read2",
                "value": "8'b00000000",
                "local": false
              },
              "position": {
                "x": -456,
                "y": -800
              }
            },
            {
              "id": "4fadbee3-41fd-4a89-a140-fd89ffb3d130",
              "type": "basic.constant",
              "data": {
                "name": "readings",
                "value": "1'b0",
                "local": false
              },
              "position": {
                "x": -288,
                "y": -808
              }
            },
            {
              "id": "b725fac1-e874-43fe-8f88-f36ba31f4606",
              "type": "9b4eccd4c51ae63a95843afa85f05aefb8d71a44",
              "position": {
                "x": -488,
                "y": 64
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "392bc0f4-449c-47f5-9411-c1319b808d90",
              "type": "basic.code",
              "data": {
                "code": "  reg [4:0] count = 0;\r\n  reg [2:0] pos = 3'd7;\r\n  reg finish = 0;\r\n  reg sda = 1'b1;\r\n  reg scl = 1'b1;\r\n  reg round = 1'b1;\r\n  reg enable = 1'b0;\r\n  reg ready_reg = 1'b0;\r\n  reg [3:0] sda_data = 0;\r\n  reg [2:0] count_data = 0;\r\n  reg [7:0] direction;\r\n  reg [7:0] data_reg = 8'b00000000;\r\n\r\n  //Arduino uses A8: 10101000\r\n  //(28h) 00101000\r\n  //(29h) 00101001\r\n  //20h 00100000 para ver si hemos escrito bien el modo normal\r\n  //identification: 0F  00001111\r\n  //OutTemp: 26h 00100110\r\n  //Status: 27h 00100111\r\n\r\n  localparam SDA_START   = 5'd0;\r\n  localparam SCL_START   = 5'd1;\r\n  localparam SCL_LOW_prev  = 5'd2;\r\n  localparam SCL_LOW  = 5'd3;\r\n  localparam SCL_HIGH       =5'd4;\r\n  localparam ACK_CLOCK_LOW      = 5'd5;\r\n  localparam ACK_CLOCK_HIGH_prev = 5'd6;\r\n  localparam ACK_CLOCK_HIGH  = 5'd7;\r\n  localparam DATA_WRITE = 5'd8;\r\n  localparam SDA_STOP = 5'd9;\r\n  localparam SCL_STOP = 5'd10;\r\n  localparam DATA_FINAL_LOW = 5'd11;\r\n  localparam DATA_FINAL_HIGH = 5'd12;\r\n  localparam NMAK_LOW = 5'd13;\r\n  localparam NMAK_HIGH = 5'd14;\r\n  localparam CONTROL_TRANSACTION= 5'd15;\r\n  localparam AUX= 5'd16;\r\n\r\n\r\n  reg [4:0] state = CONTROL_TRANSACTION;\r\n  reg [2:0] control_states=3'd0;\r\n\r\n  always @(posedge clock)\r\n      begin\r\n          case(state)\r\n\r\n          SDA_START:\r\n          begin\r\n            if(start==1'b1) \r\n            begin\r\n              enable <=1'b1;\r\n              scl<=1'b1;\r\n              sda<=1'b1;\r\n              if(count==5'd19)\r\n              begin\r\n                count<= 5'd0;\r\n                sda<=1'b0;\r\n                state<=SCL_START;\r\n              end\r\n              else begin\r\n                count<=count+5'd1;\r\n                state<=SDA_START;\r\n              end \r\n            end\r\n            else begin\r\n              scl<=1'bz;\r\n              sda<=1'bz;\r\n              enable <= 1'b0;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_START: \r\n          begin\r\n            scl<=1'b1;\r\n            sda<=1'b0;\r\n            if (count == 5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              scl<=1'b0;\r\n              state<=SCL_LOW_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_START;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_LOW_prev:\r\n          begin\r\n            scl<=0;\r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_LOW;\r\n              sda <= direction[pos]; \r\n              pos <= pos - 3'd1;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_LOW_prev;\r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_LOW:\r\n          begin\r\n            scl<=1'b0; \r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_HIGH;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_LOW; \r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_HIGH: \r\n          begin\r\n            scl<=1'b1; \r\n            if(count == 5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              if (pos == 3'd7)\r\n                state<=ACK_CLOCK_LOW;\r\n              else\r\n                state<=SCL_LOW_prev;  \r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_HIGH;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_LOW:\r\n          begin\r\n            enable<=1'b0;\r\n            scl<=1'b0;\r\n            if(count==5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_LOW;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_HIGH_prev:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<= ACK_CLOCK_HIGH;\r\n              //aqui metemos que pasa si el sda = 1, ppor eso es necesario este estado\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n          end \r\n          \r\n          \r\n          ACK_CLOCK_HIGH:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state <= CONTROL_TRANSACTION;\r\n              scl<=1'b0;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH;\r\n            end\r\n          end   \r\n \r\n//****************************************************************************************************************\r\n          CONTROL_TRANSACTION:\r\n          begin\r\n            enable<=1'b1;\r\n            if(count==5'd19)\r\n            begin\r\n              case(control_states)\r\n              3'd0:\r\n              begin\r\n                state<=SDA_START;\r\n                direction <= {direction_slave, 1'b0};\r\n                control_states <= 3'd1;  \r\n              end\r\n              3'd1:\r\n              begin\r\n                state<=SCL_LOW_prev; \r\n                direction <= (round == 1'b1) ? registrer2read1:registrer2read2;\r\n                control_states <= 3'd2;  \r\n              end\r\n              3'd2:\r\n              begin\r\n                state <= SCL_STOP;\r\n                round <= !round;\r\n                direction<={direction_slave, 1'b1};\r\n                control_states <= 3'd3;  \r\n              end\r\n              3'd3:\r\n              begin\r\n                state <= DATA_FINAL_LOW;\r\n                control_states <= 3'd4;  \r\n              end\r\n              3'd4:\r\n              begin\r\n                state <= SCL_STOP;\r\n                control_states <= 3'd0;  \r\n              end\r\n              endcase\r\n              count <= 5'd0;\r\n            end\r\n            else begin\r\n              state<=CONTROL_TRANSACTION;\r\n              count <= count+5'd1;\r\n            end\r\n          end\r\n//***************************************************************************************************************\r\n          SCL_STOP: \r\n          begin\r\n            sda<=1'b0;\r\n            scl<=1'b0;\r\n            if (count == 5'd19)\r\n            begin\r\n              scl<=1'b1;\r\n              sda<=1'b0;\r\n              count <= 5'd0;\r\n              state<=SDA_STOP;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_STOP;\r\n            end\r\n          end\r\n          \r\n          \r\n          SDA_STOP:\r\n          begin\r\n            scl<=1'b1;\r\n            sda<=1'b0;\r\n            if (count == 5'd19)\r\n            begin\r\n              sda<=1'b1;\r\n              count<=5'd0;\r\n              if(finish)  \r\n              begin\r\n                state<= (readings == 1'b1) ? CONTROL_TRANSACTION : AUX;  //sera aux si queremos que pare de leer, sobre todo para debug PROBLEMA, SI LO MANDO A CONTROL TRANSACTION, SCL SE PONE A CERO\r\n                scl<=1'b1;\r\n              end\r\n              else begin \r\n                state<=SDA_START;\r\n              end\r\n              finish <= 1'b0;\r\n            end\r\n            else begin\r\n              state<=SDA_STOP;\r\n              count <= count + 5'd1;\r\n            end\r\n          end\r\n//******************************************************************************************************************\r\n\r\n          DATA_FINAL_LOW:\r\n          begin\r\n          finish <= 1'b1;\r\n          enable<=0;\r\n          scl<=1'b0;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n          begin\r\n            state<=DATA_FINAL_HIGH;\r\n            count<=5'd0;\r\n            sda_data<=sda_data + 3'd1;\r\n          end\r\n          else begin\r\n            state<=DATA_FINAL_LOW;\r\n            count<= count + 5'd1;\r\n          end\r\n\r\n            \r\n          end\r\n          DATA_FINAL_HIGH:\r\n          begin\r\n          scl<=1'b1;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n          begin\r\n            count<=5'd0;\r\n            data_reg[count_data]<=sda_in;\r\n            count_data<=count_data+3'd1;\r\n            if(sda_data==4'd8)\r\n            begin\r\n              ready_reg <=1'b1;\r\n              state<=NMAK_LOW; \r\n              sda_data<=4'd0; \r\n            end\r\n            else begin\r\n              state<=DATA_FINAL_LOW;\r\n            end\r\n            end\r\n            else begin\r\n              state<=DATA_FINAL_HIGH;\r\n              count<= count + 5'd1;\r\n          end\r\n          end\r\n\r\n         \r\n          NMAK_LOW:\r\n          begin\r\n          enable<=1'b1;\r\n          scl<=1'b0;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n          begin\r\n            state<=NMAK_HIGH;\r\n            count<=5'd0;\r\n          end\r\n          else begin\r\n            state<=NMAK_LOW;\r\n            count<= count + 5'd1;\r\n          end\r\n          end\r\n          \r\n          \r\n          NMAK_HIGH:\r\n          begin\r\n          scl<=1'b1;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n           begin\r\n            state<=CONTROL_TRANSACTION;\r\n            count<=5'd0;\r\n            scl<=1'b0;//ayer\r\n            ready_reg<=1'b0;\r\n          end\r\n          else begin\r\n            state<=NMAK_HIGH;\r\n            count<= count + 5'd1;\r\n          end\r\n          end\r\n\r\n          AUX:\r\n          begin\r\n            state <= AUX;\r\n          end\r\n\r\n          endcase\r\n      end\r\n      assign sda_out = sda;\r\n      assign scl_out = scl;\r\n      assign sda_enable =enable;\r\n      assign data = data_reg;\r\n      assign ready = ready_reg;",
                "params": [
                  {
                    "name": "direction_slave"
                  },
                  {
                    "name": "registrer2read1"
                  },
                  {
                    "name": "registrer2read2"
                  },
                  {
                    "name": "readings"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "start"
                    },
                    {
                      "name": "sda_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "scl_out"
                    },
                    {
                      "name": "sda_out"
                    },
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "sda_enable"
                    },
                    {
                      "name": "ready"
                    }
                  ]
                }
              },
              "position": {
                "x": -1016,
                "y": -688
              },
              "size": {
                "width": 928,
                "height": 576
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "fb128c3b-b9c6-4b7a-9e12-b3b98f526b8f",
                "port": "out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "data"
              },
              "target": {
                "block": "eb293581-9054-49c0-9436-bdcf542823d5",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "scl_out"
              },
              "target": {
                "block": "c5e713e7-17d4-4b66-9e52-ba709350d9bf",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "sda_in"
              }
            },
            {
              "source": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
              },
              "target": {
                "block": "fab34b88-d6a3-4318-91c9-ed0ed91d0502",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "sda_enable"
              },
              "target": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "f96a1baf-fc8b-4c25-b132-12552605743f"
              },
              "vertices": [
                {
                  "x": -8,
                  "y": 16
                }
              ]
            },
            {
              "source": {
                "block": "5bc0374a-1a1b-4418-97d3-276d74ecc31b",
                "port": "out"
              },
              "target": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "076fd025-aa42-4f23-ae97-b65aec2298ce"
              }
            },
            {
              "source": {
                "block": "90bb3284-d018-4256-b967-94a4b97785b9",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "direction_slave"
              }
            },
            {
              "source": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "ready"
              },
              "target": {
                "block": "09a2d489-6aca-410a-b744-d87e51cab057",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "sda_out"
              },
              "target": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "04fdb7a7-2740-4ff1-ad26-56407ef5b958"
              },
              "vertices": [
                {
                  "x": -224,
                  "y": 232
                }
              ]
            },
            {
              "source": {
                "block": "57783994-820b-4a97-b38a-fa8904babf98",
                "port": "out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "4fadbee3-41fd-4a89-a140-fd89ffb3d130",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "readings"
              }
            },
            {
              "source": {
                "block": "8b18ba41-908b-47ed-9303-f4dc66a3a3f4",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "registrer2read1"
              }
            },
            {
              "source": {
                "block": "c5d9d882-6cc5-4d95-babc-b55a4b082c34",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "registrer2read2"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1463.4237,
            "y": 720.7863
          },
          "zoom": 0.8426
        }
      }
    },
    "9b4eccd4c51ae63a95843afa85f05aefb8d71a44": {
      "package": {
        "name": "Tri-state",
        "version": "1.0.0",
        "description": "Tri-state logic block",
        "author": "Salvador E. Tropea",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-265%20401.5%2063.5%2038.4%22%20id=%22svg2%22%3E%3Cstyle%20id=%22style3%22/%3E%3Cpath%20d=%22M-9.78%203.538l-4.214%2024.984-19.53-16.141z%22%20transform=%22matrix(.62422%20-.11476%20.1058%20.67701%20-219.33%20413.046)%22%20id=%22path3008%22%20fill=%22none%22%20stroke=%22#0b0b0b%22%20stroke-width=%221.885%22/%3E%3Cpath%20d=%22M-9.78%203.538l-4.214%2024.984-19.53-16.141z%22%20transform=%22matrix(-.62422%20-.11476%20-.1058%20.67701%20-244.991%20400.53)%22%20id=%22path3008-6%22%20fill=%22none%22%20stroke=%22#0b0b0b%22%20stroke-width=%221.885%22/%3E%3Cpath%20d=%22M40.154%2011.247H63.74%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3800%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M25.945%2023.73l-7.364.058V11.305h7.076%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3802%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M-265.029%20412.747l18.582.058%22%20id=%22path3804%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M.081%2023.919h12.936v7.566h19.037V27.58%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3806%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M0%2035.96h49.302V24.162h-9.356%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3812%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3C/svg%3E"
      },
      "design": {
        "config": "true",
        "graph": {
          "blocks": [
            {
              "id": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
              "type": "basic.code",
              "data": {
                "code": "  SB_IO #(\n      .PIN_TYPE(6'b1010_01),\n      .PULLUP(1'b0)\n  ) triState (\n      .PACKAGE_PIN(pin),\n      .OUTPUT_ENABLE(oe),\n      .D_OUT_0(din),\n      .D_IN_0(dout)\n  );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "pin"
                    },
                    {
                      "name": "oe"
                    },
                    {
                      "name": "din"
                    }
                  ],
                  "out": [
                    {
                      "name": "dout"
                    }
                  ]
                }
              },
              "position": {
                "x": 248,
                "y": 32
              }
            },
            {
              "id": "076fd025-aa42-4f23-ae97-b65aec2298ce",
              "type": "basic.input",
              "data": {
                "name": "pin"
              },
              "position": {
                "x": 32,
                "y": 40
              }
            },
            {
              "id": "f96a1baf-fc8b-4c25-b132-12552605743f",
              "type": "basic.input",
              "data": {
                "name": "oe"
              },
              "position": {
                "x": 32,
                "y": 128
              }
            },
            {
              "id": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
              "type": "basic.output",
              "data": {
                "name": "dout"
              },
              "position": {
                "x": 760,
                "y": 128
              }
            },
            {
              "id": "04fdb7a7-2740-4ff1-ad26-56407ef5b958",
              "type": "basic.input",
              "data": {
                "name": "din"
              },
              "position": {
                "x": 32,
                "y": 216
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "076fd025-aa42-4f23-ae97-b65aec2298ce",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "pin"
              }
            },
            {
              "source": {
                "block": "f96a1baf-fc8b-4c25-b132-12552605743f",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "oe"
              }
            },
            {
              "source": {
                "block": "04fdb7a7-2740-4ff1-ad26-56407ef5b958",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "din"
              }
            },
            {
              "source": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "dout"
              },
              "target": {
                "block": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "1374ebd258036ea0ace53cbfce7f63fbf69e9c18": {
      "package": {
        "name": "START_MODULE",
        "version": "1.0",
        "description": "This module is only a flag in order to start a specified behaviour",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20489.888%20489.888%22%3E%3Cpath%20d=%22M25.383%20290.5c-7.2-77.5%2025.9-147.7%2080.8-192.3%2021.4-17.4%2053.4-2.5%2053.4%2025%200%2010.1-4.8%2019.4-12.6%2025.7-38.9%2031.7-62.3%2081.7-56.6%20136.9%207.4%2071.9%2065%20130.1%20136.8%20138.1%2093.7%2010.5%20173.3-62.9%20173.3-154.5%200-48.6-22.5-92.1-57.6-120.6-7.8-6.3-12.5-15.6-12.5-25.6%200-27.2%2031.5-42.6%2052.7-25.6%2050.2%2040.5%2082.4%20102.4%2082.4%20171.8%200%20126.9-107.8%20229.2-236.7%20219.9-106.6-7.5-193.5-92.4-203.4-198.8zM244.883%200c-18%200-32.5%2014.6-32.5%2032.5v149.7c0%2018%2014.6%2032.5%2032.5%2032.5s32.5-14.6%2032.5-32.5V32.5c0-17.9-14.5-32.5-32.5-32.5z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
              "type": "basic.input",
              "data": {
                "name": "s1",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 184
              }
            },
            {
              "id": "2515087a-5907-41f4-b2ef-f525321654cd",
              "type": "basic.output",
              "data": {
                "name": "start"
              },
              "position": {
                "x": 792,
                "y": 184
              }
            },
            {
              "id": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
              "type": "basic.code",
              "data": {
                "code": "reg aux = 0;\nalways @(posedge s1) begin\n      aux <= 1;\nend\nassign start = aux;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "s1"
                    }
                  ],
                  "out": [
                    {
                      "name": "start"
                    }
                  ]
                }
              },
              "position": {
                "x": 232,
                "y": 80
              },
              "size": {
                "width": 512,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
                "port": "out"
              },
              "target": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "s1"
              }
            },
            {
              "source": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "start"
              },
              "target": {
                "block": "2515087a-5907-41f4-b2ef-f525321654cd",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 493,
            "y": 261.5
          },
          "zoom": 1
        }
      }
    },
    "51874b20e33e5f3bae83671d83952bf208e7c4cd": {
      "package": {
        "name": "CONTROLLER_PWM",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cg%20fill=%22#f2f2f2%22%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22256%22/%3E%3Cpath%20d=%22M256%20256zM256%20256zM256%20256zM256%20256zM256%20256zM256%20256z%22/%3E%3C/g%3E%3Cpath%20d=%22M481.067%20256H393.6c0-25.6-6.4-48-18.133-69.333-11.733-21.333-29.867-38.4-50.133-50.133L369.067%2060.8C403.2%2081.067%20432%20108.8%20451.2%20142.933c18.133%2034.134%2029.867%2072.534%2029.867%20113.067z%22%20fill=%22#f8b64c%22/%3E%3Cpath%20d=%22M481.067%20256c0%2040.533-10.667%2078.933-29.867%20112-19.2%2034.133-48%2062.933-82.133%2082.133L325.333%20374.4c21.333-11.733%2038.4-29.867%2050.133-50.133C387.2%20304%20393.6%20280.533%20393.6%20254.933h87.467V256z%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M186.667%20136.533c-21.333%2011.733-38.4%2029.867-50.133%2050.133C124.8%20206.933%20118.4%20230.4%20118.4%20256H30.933c0-40.533%2010.667-78.933%2029.867-112%2019.2-34.133%2048-62.933%2082.133-82.133l43.734%2074.666z%22%20fill=%22#54c0eb%22/%3E%3Cpath%20d=%22M186.667%20375.467L142.933%20451.2C108.8%20432%2080%20403.2%2060.8%20369.067%2042.667%20334.933%2030.933%20296.533%2030.933%20256H118.4c0%2025.6%206.4%2049.067%2018.133%2069.333a160.656%20160.656%200%200%200%2050.134%2050.134z%22%20fill=%22#84dbff%22/%3E%3Cpath%20d=%22M368%2061.867L324.267%20137.6c-20.267-11.733-43.733-18.133-69.333-18.133s-48%206.4-69.333%2018.133l-43.733-75.733c35.2-19.2%2073.6-30.933%20114.133-30.933S334.933%2042.667%20368%2061.867z%22%20fill=%22#ffd15c%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22137.6%22%20fill=%22#f2f2f2%22/%3E%3Cpath%20d=%22M273.067%20230.4c12.8%209.6%2016%2027.733%207.467%2040.533-9.6%2012.8-27.733%2016-40.533%207.467-12.8-9.6-87.467-96-87.467-96s106.666%2038.4%20120.533%2048z%22%20fill=%22#40596b%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22253.867%22%20r=%2217.067%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M256%2052.267c120.533%200%20218.667%2094.933%20224%20214.4%200-3.2%201.067-7.467%201.067-10.667C481.067%20132.267%20380.8%2030.933%20256%2030.933S30.933%20132.267%2030.933%20256c0%203.2%200%207.467%201.067%2010.667%205.333-119.467%20103.467-214.4%20224-214.4z%22%20opacity=%22.15%22%20fill=%22#40596b%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "814d3c51-fd50-4182-b0cd-968cd478884b",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 64,
                "y": -8
              }
            },
            {
              "id": "af2dc11f-2f3f-4871-939a-7290ce59e7d5",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -112,
                "y": 88
              }
            },
            {
              "id": "a17f6d49-c409-497e-a7f9-96b8c6997008",
              "type": "basic.output",
              "data": {
                "name": "PWM_ESC"
              },
              "position": {
                "x": 512,
                "y": 232
              }
            },
            {
              "id": "7db0c83e-f877-4693-a1af-f53d5236aa28",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -64,
                "y": 240
              }
            },
            {
              "id": "6c00be31-993d-4490-8499-5bf57d4fe0c4",
              "type": "0cb7333982c7fee58b87df5306f5d889f6041e0e",
              "position": {
                "x": 320,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "6c00be31-993d-4490-8499-5bf57d4fe0c4",
                "port": "63a66901-b384-423f-9b70-76f155bebb40"
              },
              "target": {
                "block": "a17f6d49-c409-497e-a7f9-96b8c6997008",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "af2dc11f-2f3f-4871-939a-7290ce59e7d5",
                "port": "out"
              },
              "target": {
                "block": "6c00be31-993d-4490-8499-5bf57d4fe0c4",
                "port": "159fd93f-0f27-4956-93b1-1343b7692189"
              }
            },
            {
              "source": {
                "block": "7db0c83e-f877-4693-a1af-f53d5236aa28",
                "port": "out"
              },
              "target": {
                "block": "6c00be31-993d-4490-8499-5bf57d4fe0c4",
                "port": "8b33b8c2-e685-4d38-b041-0d9fae82e57f"
              }
            },
            {
              "source": {
                "block": "814d3c51-fd50-4182-b0cd-968cd478884b",
                "port": "out"
              },
              "target": {
                "block": "6c00be31-993d-4490-8499-5bf57d4fe0c4",
                "port": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56"
              },
              "vertices": [
                {
                  "x": 256,
                  "y": 80
                }
              ],
              "size": 8
            }
          ]
        },
        "state": {
          "pan": {
            "x": 211,
            "y": 139
          },
          "zoom": 1
        }
      }
    },
    "0cb7333982c7fee58b87df5306f5d889f6041e0e": {
      "package": {
        "name": "PWM_CONTROLLER",
        "version": "1.0.0",
        "description": "",
        "author": "",
        "image": ""
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
                "x": -200,
                "y": -320
              }
            },
            {
              "id": "63a66901-b384-423f-9b70-76f155bebb40",
              "type": "basic.output",
              "data": {
                "name": "PWM_ESC"
              },
              "position": {
                "x": 1232,
                "y": -144
              }
            },
            {
              "id": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -200,
                "y": -144
              }
            },
            {
              "id": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 24
              }
            },
            {
              "id": "50d5caeb-e74a-4756-a919-8a5f8399271d",
              "type": "basic.code",
              "data": {
                "code": "localparam pulses_nedded = 16380; \r\n\r\nreg [13:0] pulses_nedded_velocity = 17'd0; //24009 maximo\r\nreg [13:0] count = 0; \r\nreg T = 0;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  count <= (count == pulses_nedded-1) ? 0: count+1;\r\n  pulses_nedded_velocity <= ((velocity*14'd64) >=16380) ? 16379: (velocity*14'd64);\r\n\r\nend\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  if(start==1'b1)\r\n    T <= (count <= pulses_nedded_velocity) ? 1:0;\r\nend\r\nassign PWM_ESC = T;\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "velocity",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "PWM_ESC"
                    }
                  ]
                }
              },
              "position": {
                "x": -8,
                "y": -368
              },
              "size": {
                "width": 1136,
                "height": 512
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "PWM_ESC"
              },
              "target": {
                "block": "63a66901-b384-423f-9b70-76f155bebb40",
                "port": "in"
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
                "block": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "velocity"
              },
              "size": 8
            }
          ]
        },
        "state": {
          "pan": {
            "x": 645,
            "y": 724.5
          },
          "zoom": 1
        }
      }
    },
    "3e6c249e205080168c1bf4ee8dbc33b50653d5f4": {
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
              }
            },
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
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "ade377bd326719f685059f3c27e04b573ab271a3": {
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
              "id": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d",
              "type": "basic.output",
              "data": {
                "name": "INV"
              },
              "position": {
                "x": 576,
                "y": -240
              }
            },
            {
              "id": "b44b9148-8c19-4ee1-b971-6bf0cfc807be",
              "type": "basic.output",
              "data": {
                "name": "D12"
              },
              "position": {
                "x": 576,
                "y": -176
              }
            },
            {
              "id": "0a523239-d3f4-4a5f-9572-cebd69eb4f6c",
              "type": "basic.output",
              "data": {
                "name": "D11"
              },
              "position": {
                "x": 576,
                "y": -120
              }
            },
            {
              "id": "5f2d8d44-8ceb-4084-9a2f-53a680bd49d3",
              "type": "basic.output",
              "data": {
                "name": "EN"
              },
              "position": {
                "x": 576,
                "y": -64
              }
            },
            {
              "id": "e731e3a9-1206-424a-9ae6-5dc908bbfca9",
              "type": "basic.input",
              "data": {
                "name": "change_direction",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": -48
              }
            },
            {
              "id": "c7021b32-fb9e-46f2-9bd4-5a4a86558bc1",
              "type": "basic.output",
              "data": {
                "name": "SF"
              },
              "position": {
                "x": 576,
                "y": 0
              }
            },
            {
              "id": "aa38018e-ebf9-460c-ad23-5bc17cf62e41",
              "type": "basic.output",
              "data": {
                "name": "D1"
              },
              "position": {
                "x": 576,
                "y": 80
              }
            },
            {
              "id": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
              "type": "basic.code",
              "data": {
                "code": "\n\n\n\nreg EN_reg = 1;//sleep mode \nreg D1_reg = 0; //para configurar el triestado de la salida, para controlar si es el dutty el que maneja o tiempo en baja\n//D2_reg <= 1;//para configurar el trisestado de la salida\nreg IN1_reg = 1; //se estable un sentido para el mov\nreg IN2_reg = 0; //se estable un sentido para el mov, negado de in1 si queremos que se mueva\nreg INV_reg = 0; //si cambiamos inv la rueda cambia de sentido\n\n\nalways@(posedge sw2)\nbegin\nINV_reg = !INV_reg;\nend\n\nassign INV = INV_reg;\nassign IN1 = IN1_reg;\nassign IN2 = IN2_reg;\nassign EN = EN_reg;\nassign D1 = D1_reg;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "sw2"
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
                "x": -184,
                "y": -216
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
                "block": "e731e3a9-1206-424a-9ae6-5dc908bbfca9",
                "port": "out"
              },
              "target": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "sw2"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 820,
            "y": 509.5
          },
          "zoom": 1
        }
      }
    }
  }
}