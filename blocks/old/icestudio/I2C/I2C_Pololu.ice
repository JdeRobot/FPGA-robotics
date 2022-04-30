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
          "id": "94f3bb4e-21d2-4558-9256-153c0542302e",
          "type": "basic.output",
          "data": {
            "name": "scl_out",
            "pins": [
              {
                "index": "0",
                "name": "DD5",
                "value": "87"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 760,
            "y": -288
          }
        },
        {
          "id": "213ef3af-6065-4920-85aa-f4e36b185a88",
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
            "x": 680,
            "y": -104
          }
        },
        {
          "id": "402b1b91-0699-4c93-9a6c-948bf3d1cd10",
          "type": "basic.input",
          "data": {
            "name": "s1",
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
            "x": -600,
            "y": 24
          }
        },
        {
          "id": "2d978507-d167-4018-bab8-9211cb445d14",
          "type": "basic.output",
          "data": {
            "name": "dout",
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
            "x": 16,
            "y": 72
          }
        },
        {
          "id": "fb72a1e1-9bd9-4021-8c15-c013e6d5db7f",
          "type": "basic.output",
          "data": {
            "name": "dout",
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
            "x": 464,
            "y": 72
          }
        },
        {
          "id": "3133306e-4b1c-4f7d-a2fc-aa923f602195",
          "type": "basic.input",
          "data": {
            "name": "sda",
            "pins": [
              {
                "index": "0",
                "name": "DD0",
                "value": "78"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -424,
            "y": 160
          }
        },
        {
          "id": "26301e89-f1f6-4535-b3ce-1df54d6271d6",
          "type": "basic.input",
          "data": {
            "name": "sda2",
            "pins": [
              {
                "index": "0",
                "name": "DD4",
                "value": "88"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -208,
            "y": 160
          }
        },
        {
          "id": "74e59797-650a-4716-bc54-0769962e84b6",
          "type": "basic.constant",
          "data": {
            "name": "direction_slave",
            "value": "7'b1101011",
            "local": false
          },
          "position": {
            "x": -312,
            "y": -184
          }
        },
        {
          "id": "b608abec-9f5b-4873-aad9-1f14bca1f5c5",
          "type": "basic.constant",
          "data": {
            "name": "registrer2write",
            "value": " 8'b00100000",
            "local": false
          },
          "position": {
            "x": -216,
            "y": -184
          }
        },
        {
          "id": "3b088d7f-d568-423c-a3cb-20f1d52154a2",
          "type": "basic.constant",
          "data": {
            "name": "byte2write",
            "value": "8'b01101111",
            "local": false
          },
          "position": {
            "x": -120,
            "y": -184
          }
        },
        {
          "id": "88e6117d-a2e3-4911-b756-cef7cc7fc364",
          "type": "basic.constant",
          "data": {
            "name": "direction_slave",
            "value": "7'b1101011",
            "local": false
          },
          "position": {
            "x": 224,
            "y": -152
          }
        },
        {
          "id": "d31e16e8-f72d-46e2-88e7-7cfebbdc7a44",
          "type": "basic.constant",
          "data": {
            "name": "registrer2read",
            "value": " 8'b00101000",
            "local": false
          },
          "position": {
            "x": 328,
            "y": -152
          }
        },
        {
          "id": "d302e143-3107-43f2-9f53-91855a628f5a",
          "type": "basic.constant",
          "data": {
            "name": "readings",
            "value": "1'b1",
            "local": false
          },
          "position": {
            "x": 432,
            "y": -152
          }
        },
        {
          "id": "97486dad-eb46-4b4d-a684-7e0147557aff",
          "type": "1374ebd258036ea0ace53cbfce7f63fbf69e9c18",
          "position": {
            "x": -456,
            "y": 24
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "efe4e54e-59f9-4f51-a0fa-3e632659a65f",
          "type": "ddd2fad062ba832388938ba74bb3f6c211b8e440",
          "position": {
            "x": 600,
            "y": -304
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
          "type": "eb87f611c098c0ba064c33981f250c9d69b4f7b9",
          "position": {
            "x": -216,
            "y": 8
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
          "type": "42bd840a068e14c7e8d1424c353edc211b7fbcb9",
          "position": {
            "x": 312,
            "y": -8
          },
          "size": {
            "width": 96,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "74e59797-650a-4716-bc54-0769962e84b6",
            "port": "constant-out"
          },
          "target": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "0187e97c-0c23-4475-890b-f747f216498a"
          }
        },
        {
          "source": {
            "block": "b608abec-9f5b-4873-aad9-1f14bca1f5c5",
            "port": "constant-out"
          },
          "target": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "c680833e-8ff1-405e-a905-1744de4e7d26"
          }
        },
        {
          "source": {
            "block": "3b088d7f-d568-423c-a3cb-20f1d52154a2",
            "port": "constant-out"
          },
          "target": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "db0ffaac-7616-42fb-84fb-02bff12c55ec"
          }
        },
        {
          "source": {
            "block": "402b1b91-0699-4c93-9a6c-948bf3d1cd10",
            "port": "out"
          },
          "target": {
            "block": "97486dad-eb46-4b4d-a684-7e0147557aff",
            "port": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5"
          }
        },
        {
          "source": {
            "block": "97486dad-eb46-4b4d-a684-7e0147557aff",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "57783994-820b-4a97-b38a-fa8904babf98"
          }
        },
        {
          "source": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "6653fef9-cb52-4743-8504-6b0590e094e9"
          },
          "target": {
            "block": "2d978507-d167-4018-bab8-9211cb445d14",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "fab34b88-d6a3-4318-91c9-ed0ed91d0502"
          },
          "target": {
            "block": "fb72a1e1-9bd9-4021-8c15-c013e6d5db7f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "eb293581-9054-49c0-9436-bdcf542823d5"
          },
          "target": {
            "block": "213ef3af-6065-4920-85aa-f4e36b185a88",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "efe4e54e-59f9-4f51-a0fa-3e632659a65f",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "94f3bb4e-21d2-4558-9256-153c0542302e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "c5e713e7-17d4-4b66-9e52-ba709350d9bf"
          },
          "target": {
            "block": "efe4e54e-59f9-4f51-a0fa-3e632659a65f",
            "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
          },
          "vertices": [
            {
              "x": 184,
              "y": -32
            }
          ]
        },
        {
          "source": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "c5e713e7-17d4-4b66-9e52-ba709350d9bf"
          },
          "target": {
            "block": "efe4e54e-59f9-4f51-a0fa-3e632659a65f",
            "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
          }
        },
        {
          "source": {
            "block": "88e6117d-a2e3-4911-b756-cef7cc7fc364",
            "port": "constant-out"
          },
          "target": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "90bb3284-d018-4256-b967-94a4b97785b9"
          }
        },
        {
          "source": {
            "block": "d31e16e8-f72d-46e2-88e7-7cfebbdc7a44",
            "port": "constant-out"
          },
          "target": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "8b18ba41-908b-47ed-9303-f4dc66a3a3f4"
          }
        },
        {
          "source": {
            "block": "3133306e-4b1c-4f7d-a2fc-aa923f602195",
            "port": "out"
          },
          "target": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "5bc0374a-1a1b-4418-97d3-276d74ecc31b"
          }
        },
        {
          "source": {
            "block": "26301e89-f1f6-4535-b3ce-1df54d6271d6",
            "port": "out"
          },
          "target": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "5bc0374a-1a1b-4418-97d3-276d74ecc31b"
          }
        },
        {
          "source": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "03665452-e9b5-4852-82ce-b6f8da9fe534"
          },
          "target": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "57783994-820b-4a97-b38a-fa8904babf98"
          }
        },
        {
          "source": {
            "block": "933ecff1-ff04-4bdd-84e0-058dab6725e9",
            "port": "03665452-e9b5-4852-82ce-b6f8da9fe534"
          },
          "target": {
            "block": "efe4e54e-59f9-4f51-a0fa-3e632659a65f",
            "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
          },
          "vertices": [
            {
              "x": 216,
              "y": -136
            }
          ]
        },
        {
          "source": {
            "block": "d302e143-3107-43f2-9f53-91855a628f5a",
            "port": "constant-out"
          },
          "target": {
            "block": "84c1c9bc-7d35-4f2d-afed-145a91eec9e8",
            "port": "4fadbee3-41fd-4a89-a140-fd89ffb3d130"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 840,
        "y": 523.1719
      },
      "zoom": 1
    }
  },
  "dependencies": {
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
    "ddd2fad062ba832388938ba74bb3f6c211b8e440": {
      "package": {
        "name": "Mux 2:1",
        "version": "1.0.0",
        "description": "Multiplexer 2:1",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-162%20419.9h-24v-7.2l-41-11.8v9h-25v2h25v18h-25v2h25v9l41-11.7v-7.4h24v-1.9zm-63%2018.5v-35l37%2010.8v13.5l-37%2010.7z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ba573190-2ead-411a-a323-1b15a22d46db",
              "type": "basic.code",
              "data": {
                "code": "reg _o;\n\nalways @(*) begin\n    case(sel0)\n        0: _o = in0;\n        1: _o = in1;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "in0"
                    },
                    {
                      "name": "in1"
                    },
                    {
                      "name": "sel0"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 312,
                "y": 112
              }
            },
            {
              "id": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
              "type": "basic.input",
              "data": {
                "name": "i0"
              },
              "position": {
                "x": 80,
                "y": 120
              }
            },
            {
              "id": "5fb29465-2ee7-45bb-afa4-9a3de895c774",
              "type": "basic.input",
              "data": {
                "name": "i1"
              },
              "position": {
                "x": 80,
                "y": 208
              }
            },
            {
              "id": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
              "type": "basic.output",
              "data": {
                "name": "o"
              },
              "position": {
                "x": 792,
                "y": 208
              }
            },
            {
              "id": "67ed5e09-486d-4f97-929f-aefea9c43951",
              "type": "basic.input",
              "data": {
                "name": "sel"
              },
              "position": {
                "x": 80,
                "y": 296
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                "port": "o"
              },
              "target": {
                "block": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
                "port": "out"
              },
              "target": {
                "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                "port": "in0"
              }
            },
            {
              "source": {
                "block": "5fb29465-2ee7-45bb-afa4-9a3de895c774",
                "port": "out"
              },
              "target": {
                "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                "port": "in1"
              }
            },
            {
              "source": {
                "block": "67ed5e09-486d-4f97-929f-aefea9c43951",
                "port": "out"
              },
              "target": {
                "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                "port": "sel0"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -21.0375,
            "y": 29.4792
          },
          "zoom": 1
        }
      }
    },
    "eb87f611c098c0ba064c33981f250c9d69b4f7b9": {
      "package": {
        "name": "WRITE_I2C",
        "version": "1.0",
        "description": "This module will write a byte in a specified slave",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2058%2058%22%3E%3Ccircle%20cx=%2229%22%20cy=%2229%22%20r=%2229%22%20fill=%22#23a24d%22/%3E%3Cpath%20d=%22M29%200C21.243%200%2014.204%203.051%209%208.011V26l19.951%2024.993A.03.03%200%200%200%2029%2050.97c0%20.025.029.04.049.023L49%2026V8.011C43.796%203.051%2036.757%200%2029%200z%22%20fill=%22#ebd6bd%22/%3E%3Cpath%20d=%22M29%2035c-3.748%200-7.093%201.72-9.294%204.412l9.245%2011.581A.03.03%200%200%200%2029%2050.97c0%20.025.029.04.049.023l9.245-11.581A11.975%2011.975%200%200%200%2029%2035z%22%20fill=%22#4c4c4c%22/%3E%3Cpath%20d=%22M29%200c-3.516%200-6.883.633-10%201.78V18l9.951%207.961c.02.016.049.001.049-.024%200%20.025.029.04.049.024L39%2018V1.78A28.897%2028.897%200%200%200%2029%200z%22%20fill=%22#ebba16%22/%3E%3Cpath%20d=%22M9.432%2025.654L19%2018V1.78A29.05%2029.05%200%200%200%209%208.011v17.435c0%20.223.258.347.432.208zM39%2018l9.568%207.654a.266.266%200%200%200%20.432-.208V8.011A29.05%2029.05%200%200%200%2039%201.78V18z%22%20fill=%22#ed8a19%22/%3E%3C/svg%3E"
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
                "x": -96,
                "y": -648
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
                "x": -1416,
                "y": -624
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
                "x": -1536,
                "y": -432
              }
            },
            {
              "id": "03665452-e9b5-4852-82ce-b6f8da9fe534",
              "type": "basic.output",
              "data": {
                "name": "ready"
              },
              "position": {
                "x": -112,
                "y": -216
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
                "x": -968,
                "y": 24
              }
            },
            {
              "id": "6653fef9-cb52-4743-8504-6b0590e094e9",
              "type": "basic.output",
              "data": {
                "name": "dout"
              },
              "position": {
                "x": -488,
                "y": 80
              }
            },
            {
              "id": "0187e97c-0c23-4475-890b-f747f216498a",
              "type": "basic.constant",
              "data": {
                "name": "direction_slave",
                "value": "7'b1101011",
                "local": false
              },
              "position": {
                "x": -1064,
                "y": -800
              }
            },
            {
              "id": "c680833e-8ff1-405e-a905-1744de4e7d26",
              "type": "basic.constant",
              "data": {
                "name": "registrer2write",
                "value": " 8'b00100000",
                "local": false
              },
              "position": {
                "x": -752,
                "y": -808
              }
            },
            {
              "id": "db0ffaac-7616-42fb-84fb-02bff12c55ec",
              "type": "basic.constant",
              "data": {
                "name": "byte2write",
                "value": "8'b01101111",
                "local": false
              },
              "position": {
                "x": -440,
                "y": -808
              }
            },
            {
              "id": "b725fac1-e874-43fe-8f88-f36ba31f4606",
              "type": "9b4eccd4c51ae63a95843afa85f05aefb8d71a44",
              "position": {
                "x": -640,
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
                "code": "reg [4:0] count = 1'b0;\r\nreg [2:0] pos = 3'd7;\r\nreg sda = 1'b1;\r\nreg scl = 1'b1;\r\nreg enable = 1'b0;\r\nreg [7:0] direction;\r\nreg ready_reg = 1'b0;\r\n\r\nlocalparam SDA_START   = 5'd0;\r\nlocalparam SCL_START   = 5'd1;\r\nlocalparam SCL_LOW_prev  = 5'd2;\r\nlocalparam SCL_LOW  = 5'd3;\r\nlocalparam SCL_HIGH       =5'd4;\r\nlocalparam ACK_CLOCK_LOW      = 5'd5;\r\nlocalparam ACK_CLOCK_HIGH_prev = 5'd16;\r\nlocalparam ACK_CLOCK_HIGH  = 5'd6;\r\nlocalparam CONTROL_TRANSACTION = 5'd7;\r\nlocalparam SCL_STOP = 5'd8;\r\nlocalparam SDA_STOP = 5'd9;\r\nlocalparam BUS_FREE= 5'd10;\r\n\r\n\r\nreg [4:0] state = CONTROL_TRANSACTION;\r\nreg [2:0] control_states=3'd0;\r\n\r\nalways @(posedge clock)\r\n    begin\r\n        case(state)\r\n          SDA_START:\r\n          begin\r\n            if(start==1'b1) \r\n            begin\r\n              enable <=1'b1;\r\n              scl<=1'b1;\r\n              sda<=1'b1;\r\n              if(count==5'd19)\r\n              begin\r\n                count<= 5'd0;\r\n                sda<=1'b0;\r\n                state<=SCL_START;\r\n              end\r\n              else begin\r\n                count<=count+5'd1;\r\n                state<=SDA_START;\r\n              end \r\n            end\r\n            else begin\r\n              scl<=1'bz;\r\n              sda<=1'bz;\r\n              enable <= 1'b0;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_START: \r\n          begin\r\n            scl=1'b1;\r\n            sda=1'b0;\r\n            if (count == 5'd10)\r\n            begin\r\n              count <= 5'd0;\r\n              scl<=1'b0;\r\n              state<=SCL_LOW_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_START;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_LOW_prev:\r\n          begin\r\n            scl<=0;\r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_LOW;\r\n              sda <= direction[pos]; \r\n              pos <= pos - 3'd1;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_LOW_prev;\r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_LOW:\r\n          begin\r\n            scl<=1'b0; \r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_HIGH;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_LOW; \r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_HIGH: \r\n          begin\r\n            scl<=1'b1; \r\n            if(count == 5'd19)\r\n            begin\r\n              count = 5'd0;\r\n              if (pos == 3'd7)\r\n                state<=ACK_CLOCK_LOW;\r\n              else\r\n                state<=SCL_LOW_prev;  \r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_HIGH;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_LOW:\r\n          begin\r\n            enable<=1'b0;\r\n            scl<=1'b0;\r\n            if(count==5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_LOW;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_HIGH_prev:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<= ACK_CLOCK_HIGH;\r\n              //aqui metemos que pasa si el sda = 1, ppor eso es necesario este estado\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n          end \r\n          \r\n         \r\n          ACK_CLOCK_HIGH:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state <= CONTROL_TRANSACTION;\r\n              scl<=1'b0;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH;\r\n            end\r\n          end \r\n//****************************************************************************************************************\r\n          CONTROL_TRANSACTION:\r\n          begin\r\n            enable<=1'b1;\r\n            if(count==5'd15)\r\n            begin\r\n              case(control_states)\r\n              3'd0:\r\n              begin\r\n                state<=SDA_START;\r\n                direction <= {direction_slave,1'b0};\r\n                control_states <= 3'd1;  \r\n              end\r\n              3'd1:\r\n              begin\r\n                state<=SCL_LOW_prev; //scl low prev\r\n                direction <= registrer2write;\r\n                control_states <= 3'd2;  \r\n              end\r\n              3'd2:\r\n              begin\r\n                state <= SCL_LOW_prev;  //scl stop \r\n                direction<=byte2write;\r\n                control_states <= 3'd3;  \r\n              end\r\n              3'd3:\r\n              begin\r\n                state <= SCL_STOP;\r\n                control_states <= 3'd0;  \r\n              end\r\n              endcase\r\n              count <= 5'd0;\r\n            end\r\n            else begin\r\n              state<=CONTROL_TRANSACTION;\r\n              count <= count+5'd1;\r\n            end\r\n          end\r\n//***************************************************************************************************************   \r\n//***************************************************************************************************************\r\n          SCL_STOP: \r\n          begin\r\n            sda<=1'b0;\r\n            scl<=1'b0;\r\n            if (count == 5'd15)\r\n            begin\r\n              scl<=1'b1;\r\n              sda<=1'b0;\r\n              count <= 5'd0;\r\n              state<=SDA_STOP;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_STOP;\r\n            end\r\n          end\r\n          \r\n          \r\n          SDA_STOP:\r\n          begin\r\n            scl<=1'b1;\r\n            sda<=1'b0;\r\n            if (count == 5'd15)\r\n            begin\r\n              sda<=1'b1;\r\n              count<=5'd0;\r\n              state <= BUS_FREE;\r\n            end\r\n            else begin\r\n              state<=SDA_STOP;\r\n              count <= count + 5'd1;\r\n            end\r\n          end\r\n\r\n          BUS_FREE:\r\n          begin\r\n            if(count== 5'd15)\r\n            begin\r\n              ready_reg<=1'b1;\r\n              state <= BUS_FREE;\r\n              enable <= 1'b0; //puesto luego\r\n              sda<= 1'bZ;\r\n              scl<= 1'bZ;\r\n            end\r\n            else begin\r\n              state <= BUS_FREE;\r\n              count <= count + 5'd1;\r\n            end\r\n\r\n          end\r\n\r\n          endcase\r\n    end\r\n//******************************************************************************************************************\r\n    assign sda_out = sda;\r\n    assign scl_out = scl;\r\n    assign sda_enable =enable;\r\n    assign ready = ready_reg;\r\n    \r\n    ",
                "params": [
                  {
                    "name": "direction_slave"
                  },
                  {
                    "name": "registrer2write"
                  },
                  {
                    "name": "byte2write"
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
                      "name": "sda_enable"
                    },
                    {
                      "name": "ready"
                    }
                  ]
                }
              },
              "position": {
                "x": -1168,
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
                "port": "scl_out"
              },
              "target": {
                "block": "c5e713e7-17d4-4b66-9e52-ba709350d9bf",
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
                  "x": -664,
                  "y": 208
                },
                {
                  "x": -664,
                  "y": 184
                },
                {
                  "x": -664,
                  "y": 176
                }
              ]
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
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "sda_enable"
              },
              "target": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "f96a1baf-fc8b-4c25-b132-12552605743f"
              },
              "vertices": [
                {
                  "x": -160,
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
                "block": "0187e97c-0c23-4475-890b-f747f216498a",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "direction_slave"
              }
            },
            {
              "source": {
                "block": "c680833e-8ff1-405e-a905-1744de4e7d26",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "registrer2write"
              }
            },
            {
              "source": {
                "block": "db0ffaac-7616-42fb-84fb-02bff12c55ec",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "byte2write"
              }
            },
            {
              "source": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "ready"
              },
              "target": {
                "block": "03665452-e9b5-4852-82ce-b6f8da9fe534",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "b725fac1-e874-43fe-8f88-f36ba31f4606",
                "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
              },
              "target": {
                "block": "6653fef9-cb52-4743-8504-6b0590e094e9",
                "port": "in"
              }
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
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1630.0147,
            "y": 736.7422
          },
          "zoom": 0.8623
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
    "42bd840a068e14c7e8d1424c353edc211b7fbcb9": {
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
                "value": "7'b1101011",
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
                "name": "registrer2read",
                "value": " 8'b00100000",
                "local": false
              },
              "position": {
                "x": -600,
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
                "code": "  reg [4:0] count = 0;\r\n  reg [2:0] pos = 3'd7;\r\n  reg finish = 0;\r\n  reg sda = 1'b1;\r\n  reg scl = 1'b1;\r\n  reg enable = 1'b0;\r\n  reg [3:0] sda_data = 0;\r\n  reg [2:0] count_data = 0;\r\n  reg [7:0] direction;\r\n  reg [7:0] data_reg = 8'b00000000;\r\n\r\n  //Arduino uses A8: 10101000\r\n  //(28h) 00101000\r\n  //(29h) 00101001\r\n  //20h 00100000 para ver si hemos escrito bien el modo normal\r\n  //identification: 0F  00001111\r\n  //OutTemp: 26h 00100110\r\n  //Status: 27h 00100111\r\n\r\n  localparam SDA_START   = 5'd0;\r\n  localparam SCL_START   = 5'd1;\r\n  localparam SCL_LOW_prev  = 5'd2;\r\n  localparam SCL_LOW  = 5'd3;\r\n  localparam SCL_HIGH       =5'd4;\r\n  localparam ACK_CLOCK_LOW      = 5'd5;\r\n  localparam ACK_CLOCK_HIGH_prev = 5'd6;\r\n  localparam ACK_CLOCK_HIGH  = 5'd7;\r\n  localparam DATA_WRITE = 5'd8;\r\n  localparam SDA_STOP = 5'd9;\r\n  localparam SCL_STOP = 5'd10;\r\n  localparam DATA_FINAL_LOW = 5'd11;\r\n  localparam DATA_FINAL_HIGH = 5'd12;\r\n  localparam NMAK_LOW = 5'd13;\r\n  localparam NMAK_HIGH = 5'd14;\r\n  localparam CONTROL_TRANSACTION= 5'd15;\r\n  localparam AUX= 5'd16;\r\n\r\n\r\n  reg [4:0] state = CONTROL_TRANSACTION;\r\n  reg [2:0] control_states=3'd0;\r\n\r\n  always @(posedge clock)\r\n      begin\r\n          case(state)\r\n\r\n          SDA_START:\r\n          begin\r\n            if(start==1'b1) \r\n            begin\r\n              enable <=1'b1;\r\n              scl<=1'b1;\r\n              sda<=1'b1;\r\n              if(count==5'd19)\r\n              begin\r\n                count<= 5'd0;\r\n                sda<=1'b0;\r\n                state<=SCL_START;\r\n              end\r\n              else begin\r\n                count<=count+5'd1;\r\n                state<=SDA_START;\r\n              end \r\n            end\r\n            else begin\r\n              scl<=1'bz;\r\n              sda<=1'bz;\r\n              enable <= 1'b0;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_START: \r\n          begin\r\n            scl<=1'b1;\r\n            sda<=1'b0;\r\n            if (count == 5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              scl<=1'b0;\r\n              state<=SCL_LOW_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_START;\r\n            end\r\n          end\r\n\r\n\r\n          SCL_LOW_prev:\r\n          begin\r\n            scl<=0;\r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_LOW;\r\n              sda <= direction[pos]; \r\n              pos <= pos - 3'd1;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state <= SCL_LOW_prev;\r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_LOW:\r\n          begin\r\n            scl<=1'b0; \r\n            if(count == 5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=SCL_HIGH;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_LOW; \r\n            end\r\n          end\r\n          \r\n          \r\n          SCL_HIGH: \r\n          begin\r\n            scl<=1'b1; \r\n            if(count == 5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              if (pos == 3'd7)\r\n                state<=ACK_CLOCK_LOW;\r\n              else\r\n                state<=SCL_LOW_prev;  \r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_HIGH;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_LOW:\r\n          begin\r\n            enable<=1'b0;\r\n            scl<=1'b0;\r\n            if(count==5'd19)\r\n            begin\r\n              count <= 5'd0;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_LOW;\r\n            end\r\n          end\r\n\r\n\r\n          ACK_CLOCK_HIGH_prev:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state<= ACK_CLOCK_HIGH;\r\n              //aqui metemos que pasa si el sda = 1, ppor eso es necesario este estado\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH_prev;\r\n            end\r\n          end \r\n          \r\n          \r\n          ACK_CLOCK_HIGH:\r\n          begin\r\n            sda<=1'b1;\r\n            scl<=1'b1;\r\n            if(count==5'd9)\r\n            begin\r\n              count <= 5'd0;\r\n              state <= CONTROL_TRANSACTION;\r\n              scl<=1'b0;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=ACK_CLOCK_HIGH;\r\n            end\r\n          end   \r\n \r\n//****************************************************************************************************************\r\n          CONTROL_TRANSACTION:\r\n          begin\r\n            enable<=1'b1;\r\n            if(count==5'd19)\r\n            begin\r\n              case(control_states)\r\n              3'd0:\r\n              begin\r\n                state<=SDA_START;\r\n                direction <= {direction_slave, 1'b0};\r\n                control_states <= 3'd1;  \r\n              end\r\n              3'd1:\r\n              begin\r\n                state<=SCL_LOW_prev; \r\n                direction <= registrer2read;\r\n                control_states <= 3'd2;  \r\n              end\r\n              3'd2:\r\n              begin\r\n                state <= SCL_STOP;\r\n                direction<={direction_slave, 1'b1};\r\n                control_states <= 3'd3;  \r\n              end\r\n              3'd3:\r\n              begin\r\n                state <= DATA_FINAL_LOW;\r\n                control_states <= 3'd4;  \r\n              end\r\n              3'd4:\r\n              begin\r\n                state <= SCL_STOP;\r\n                control_states <= 3'd0;  \r\n              end\r\n              endcase\r\n              count <= 5'd0;\r\n            end\r\n            else begin\r\n              state<=CONTROL_TRANSACTION;\r\n              count <= count+5'd1;\r\n            end\r\n          end\r\n//***************************************************************************************************************\r\n          SCL_STOP: \r\n          begin\r\n            sda<=1'b0;\r\n            scl<=1'b0;\r\n            if (count == 5'd19)\r\n            begin\r\n              scl<=1'b1;\r\n              sda<=1'b0;\r\n              count <= 5'd0;\r\n              state<=SDA_STOP;\r\n            end\r\n            else begin\r\n              count <= count + 5'd1;\r\n              state<=SCL_STOP;\r\n            end\r\n          end\r\n          \r\n          \r\n          SDA_STOP:\r\n          begin\r\n            scl<=1'b1;\r\n            sda<=1'b0;\r\n            if (count == 5'd19)\r\n            begin\r\n              sda<=1'b1;\r\n              count<=5'd0;\r\n              if(finish)  \r\n              begin\r\n                state<= (readings == 1'b1) ? CONTROL_TRANSACTION : AUX;  //sera aux si queremos que pare de leer, sobre todo para debug PROBLEMA, SI LO MANDO A CONTROL TRANSACTION, SCL SE PONE A CERO\r\n                scl<=1'b1;\r\n              end\r\n              else begin \r\n                state<=SDA_START;\r\n              end\r\n              finish <= 1'b0;\r\n            end\r\n            else begin\r\n              state<=SDA_STOP;\r\n              count <= count + 5'd1;\r\n            end\r\n          end\r\n//******************************************************************************************************************\r\n\r\n          DATA_FINAL_LOW:\r\n          begin\r\n          finish <= 1'b1;\r\n          enable<=0;\r\n          scl<=1'b0;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n          begin\r\n            state<=DATA_FINAL_HIGH;\r\n            count<=5'd0;\r\n            sda_data<=sda_data + 3'd1;\r\n          end\r\n          else begin\r\n            state<=DATA_FINAL_LOW;\r\n            count<= count + 5'd1;\r\n          end\r\n\r\n            \r\n          end\r\n          DATA_FINAL_HIGH:\r\n          begin\r\n          scl<=1'b1;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n          begin\r\n            count<=5'd0;\r\n            data_reg[count_data]<=sda_in;\r\n            count_data<=count_data+3'd1;\r\n            if(sda_data==4'd8)\r\n            begin\r\n              \r\n              state<=NMAK_LOW; \r\n              sda_data<=4'd0; \r\n            end\r\n            else begin\r\n              state<=DATA_FINAL_LOW;\r\n            end\r\n            end\r\n            else begin\r\n              state<=DATA_FINAL_HIGH;\r\n              count<= count + 5'd1;\r\n          end\r\n          end\r\n\r\n         \r\n          NMAK_LOW:\r\n          begin\r\n          enable<=1'b1;\r\n          scl<=1'b0;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n          begin\r\n            state<=NMAK_HIGH;\r\n            count<=5'd0;\r\n          end\r\n          else begin\r\n            state<=NMAK_LOW;\r\n            count<= count + 5'd1;\r\n          end\r\n          end\r\n          \r\n          \r\n          NMAK_HIGH:\r\n          begin\r\n          scl<=1'b1;\r\n          sda<=1'b1;\r\n          if(count == 5'd19)\r\n           begin\r\n            state<=CONTROL_TRANSACTION;\r\n            count<=5'd0;\r\n            scl<=1'b0;//ayer\r\n          end\r\n          else begin\r\n            state<=NMAK_HIGH;\r\n            count<= count + 5'd1;\r\n          end\r\n          end\r\n\r\n          AUX:\r\n          begin\r\n            state <= AUX;\r\n          end\r\n\r\n          endcase\r\n      end\r\n      assign sda_out = sda;\r\n      assign scl_out = scl;\r\n      assign sda_enable =enable;\r\n      assign data = data_reg;",
                "params": [
                  {
                    "name": "direction_slave"
                  },
                  {
                    "name": "registrer2read"
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
                "block": "8b18ba41-908b-47ed-9303-f4dc66a3a3f4",
                "port": "constant-out"
              },
              "target": {
                "block": "392bc0f4-449c-47f5-9411-c1319b808d90",
                "port": "registrer2read"
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
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1467.2346,
            "y": 719.2308
          },
          "zoom": 0.849
        }
      }
    }
  }
}