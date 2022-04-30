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
          "id": "e75c90a2-d484-4f66-9b76-95b7aed12599",
          "type": "basic.output",
          "data": {
            "name": "vga_h_sync",
            "pins": [
              {
                "index": "0",
                "name": "GP0",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": -104
          }
        },
        {
          "id": "8b7fa0fd-0216-4e1b-bc86-5dac86541981",
          "type": "basic.output",
          "data": {
            "name": "vga_v_sync",
            "pins": [
              {
                "index": "0",
                "name": "GP2",
                "value": "39"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": -40
          }
        },
        {
          "id": "76ba7870-a367-4392-9ab5-6421f47a9b02",
          "type": "basic.output",
          "data": {
            "name": "red_monitor",
            "pins": [
              {
                "index": "0",
                "name": "GP1",
                "value": "38"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": 24
          }
        },
        {
          "id": "92dfef36-b3fd-470e-a05f-8776a3e5c89e",
          "type": "basic.output",
          "data": {
            "name": "green_monitor",
            "pins": [
              {
                "index": "0",
                "name": "GP3",
                "value": "41"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": 88
          }
        },
        {
          "id": "fe5612a2-25fc-45c6-a955-0d06ae515173",
          "type": "basic.output",
          "data": {
            "name": "blue_monitor",
            "pins": [
              {
                "index": "0",
                "name": "GP5",
                "value": "43"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": 152
          }
        },
        {
          "id": "a5a26eb6-d09d-47bb-b689-c4dc7078921a",
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
            "x": -240,
            "y": 176
          }
        },
        {
          "id": "9e6674f3-e5e4-4f28-a4f7-ab72fcd6d5d1",
          "type": "39f62182fa67bbf4bfa75b99ddd15be0c950b698",
          "position": {
            "x": 152,
            "y": 120
          },
          "size": {
            "width": 96,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9e6674f3-e5e4-4f28-a4f7-ab72fcd6d5d1",
            "port": "e75c90a2-d484-4f66-9b76-95b7aed12599"
          },
          "target": {
            "block": "e75c90a2-d484-4f66-9b76-95b7aed12599",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9e6674f3-e5e4-4f28-a4f7-ab72fcd6d5d1",
            "port": "8b7fa0fd-0216-4e1b-bc86-5dac86541981"
          },
          "target": {
            "block": "8b7fa0fd-0216-4e1b-bc86-5dac86541981",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9e6674f3-e5e4-4f28-a4f7-ab72fcd6d5d1",
            "port": "76ba7870-a367-4392-9ab5-6421f47a9b02"
          },
          "target": {
            "block": "76ba7870-a367-4392-9ab5-6421f47a9b02",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9e6674f3-e5e4-4f28-a4f7-ab72fcd6d5d1",
            "port": "92dfef36-b3fd-470e-a05f-8776a3e5c89e"
          },
          "target": {
            "block": "92dfef36-b3fd-470e-a05f-8776a3e5c89e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9e6674f3-e5e4-4f28-a4f7-ab72fcd6d5d1",
            "port": "fe5612a2-25fc-45c6-a955-0d06ae515173"
          },
          "target": {
            "block": "fe5612a2-25fc-45c6-a955-0d06ae515173",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "a5a26eb6-d09d-47bb-b689-c4dc7078921a",
            "port": "out"
          },
          "target": {
            "block": "9e6674f3-e5e4-4f28-a4f7-ab72fcd6d5d1",
            "port": "a5a26eb6-d09d-47bb-b689-c4dc7078921a"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 854,
        "y": 390
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "39f62182fa67bbf4bfa75b99ddd15be0c950b698": {
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
              "id": "e75c90a2-d484-4f66-9b76-95b7aed12599",
              "type": "basic.output",
              "data": {
                "name": "vga_h_sync"
              },
              "position": {
                "x": 560,
                "y": -104
              }
            },
            {
              "id": "8b7fa0fd-0216-4e1b-bc86-5dac86541981",
              "type": "basic.output",
              "data": {
                "name": "vga_v_sync"
              },
              "position": {
                "x": 560,
                "y": -40
              }
            },
            {
              "id": "76ba7870-a367-4392-9ab5-6421f47a9b02",
              "type": "basic.output",
              "data": {
                "name": "red_monitor"
              },
              "position": {
                "x": 560,
                "y": 24
              }
            },
            {
              "id": "92dfef36-b3fd-470e-a05f-8776a3e5c89e",
              "type": "basic.output",
              "data": {
                "name": "green_monitor"
              },
              "position": {
                "x": 560,
                "y": 88
              }
            },
            {
              "id": "fe5612a2-25fc-45c6-a955-0d06ae515173",
              "type": "basic.output",
              "data": {
                "name": "blue_monitor"
              },
              "position": {
                "x": 560,
                "y": 152
              }
            },
            {
              "id": "a5a26eb6-d09d-47bb-b689-c4dc7078921a",
              "type": "basic.input",
              "data": {
                "name": "s1",
                "clock": false
              },
              "position": {
                "x": -240,
                "y": 176
              }
            },
            {
              "id": "f9cc3e68-4bfb-4af2-b1c4-2011eb5adab3",
              "type": "28e4f7aac66ce92fd56deed18b3ba9de3a3f8f3b",
              "position": {
                "x": -8,
                "y": 176
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "43c75085-8396-4ccf-b722-d295dcc801da",
              "type": "9e041392432c5983b5a70043e7f6f5460b8e22f7",
              "position": {
                "x": 288,
                "y": 144
              },
              "size": {
                "width": 96,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a5a26eb6-d09d-47bb-b689-c4dc7078921a",
                "port": "out"
              },
              "target": {
                "block": "f9cc3e68-4bfb-4af2-b1c4-2011eb5adab3",
                "port": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d"
              }
            },
            {
              "source": {
                "block": "43c75085-8396-4ccf-b722-d295dcc801da",
                "port": "7b1757aa-0862-429d-b7be-94c9a9f6a9b2"
              },
              "target": {
                "block": "e75c90a2-d484-4f66-9b76-95b7aed12599",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "43c75085-8396-4ccf-b722-d295dcc801da",
                "port": "5c68ad9c-129e-407e-9cae-563f1b43de2e"
              },
              "target": {
                "block": "8b7fa0fd-0216-4e1b-bc86-5dac86541981",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "43c75085-8396-4ccf-b722-d295dcc801da",
                "port": "2bebafe6-1ab0-4434-b415-87c4bd75af7f"
              },
              "target": {
                "block": "76ba7870-a367-4392-9ab5-6421f47a9b02",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "43c75085-8396-4ccf-b722-d295dcc801da",
                "port": "5f412412-cf93-4d77-baf7-1f9acb72ac9f"
              },
              "target": {
                "block": "92dfef36-b3fd-470e-a05f-8776a3e5c89e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "43c75085-8396-4ccf-b722-d295dcc801da",
                "port": "02f0b2be-1851-4f3c-a41a-f504684ec6ec"
              },
              "target": {
                "block": "fe5612a2-25fc-45c6-a955-0d06ae515173",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f9cc3e68-4bfb-4af2-b1c4-2011eb5adab3",
                "port": "81291a39-78fa-4cfb-b0f5-5818d3ac9088"
              },
              "target": {
                "block": "43c75085-8396-4ccf-b722-d295dcc801da",
                "port": "98c808c4-1d76-4919-9e93-3d94ff74bf72"
              },
              "size": 4
            }
          ]
        },
        "state": {
          "pan": {
            "x": 854,
            "y": 390
          },
          "zoom": 1
        }
      }
    },
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
    },
    "9e041392432c5983b5a70043e7f6f5460b8e22f7": {
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
              "id": "7b1757aa-0862-429d-b7be-94c9a9f6a9b2",
              "type": "basic.output",
              "data": {
                "name": "vga_h_sync"
              },
              "position": {
                "x": 632,
                "y": -384
              }
            },
            {
              "id": "5c68ad9c-129e-407e-9cae-563f1b43de2e",
              "type": "basic.output",
              "data": {
                "name": "vga_v_sync"
              },
              "position": {
                "x": 632,
                "y": -320
              }
            },
            {
              "id": "2bebafe6-1ab0-4434-b415-87c4bd75af7f",
              "type": "basic.output",
              "data": {
                "name": "red_monitor"
              },
              "position": {
                "x": 632,
                "y": -256
              }
            },
            {
              "id": "98c808c4-1d76-4919-9e93-3d94ff74bf72",
              "type": "basic.input",
              "data": {
                "name": "number",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 792,
                "y": -224
              }
            },
            {
              "id": "5f412412-cf93-4d77-baf7-1f9acb72ac9f",
              "type": "basic.output",
              "data": {
                "name": "green_monitor"
              },
              "position": {
                "x": 632,
                "y": -192
              }
            },
            {
              "id": "02f0b2be-1851-4f3c-a41a-f504684ec6ec",
              "type": "basic.output",
              "data": {
                "name": "blue_monitor"
              },
              "position": {
                "x": 632,
                "y": -128
              }
            },
            {
              "id": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
              "type": "84f9247c0ee5ad59485b477bd71e43bfbfc293b4",
              "position": {
                "x": 112,
                "y": -72
              },
              "size": {
                "width": 96,
                "height": 320
              }
            },
            {
              "id": "65f2f18a-464e-4bff-af02-e92b4c85be0c",
              "type": "basic.code",
              "data": {
                "code": "wire offset;\nassign offset= 7'b1101010;\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "offset"
                    }
                  ]
                }
              },
              "position": {
                "x": 968,
                "y": -400
              },
              "size": {
                "width": 192,
                "height": 128
              }
            },
            {
              "id": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
              "type": "3781fec0cbdcb87c8f97cdc2eec1f6b11309c044",
              "position": {
                "x": 888,
                "y": 48
              },
              "size": {
                "width": 96,
                "height": 192
              }
            },
            {
              "id": "f97a705b-e4b5-437b-86a0-0b84f1db4ca6",
              "type": "df8bbb923dd9e4d67af1a08732b117c7ca3f3bca",
              "position": {
                "x": 1280,
                "y": -200
              },
              "size": {
                "width": 96,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "93221e3a-4163-43f5-94f5-920c5dbe1e7e"
              },
              "target": {
                "block": "7b1757aa-0862-429d-b7be-94c9a9f6a9b2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a"
              },
              "target": {
                "block": "5c68ad9c-129e-407e-9cae-563f1b43de2e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "fb6080dd-f184-4adc-9ebb-3a70adcdf337"
              },
              "target": {
                "block": "2bebafe6-1ab0-4434-b415-87c4bd75af7f",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "9fb4009a-cac9-4e29-8a1b-0d7551e6e233"
              },
              "target": {
                "block": "5f412412-cf93-4d77-baf7-1f9acb72ac9f",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "1cf25f8e-ab73-4ab6-bf2a-912acf407e70"
              },
              "target": {
                "block": "02f0b2be-1851-4f3c-a41a-f504684ec6ec",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
                "port": "a6e865f3-9e13-4b62-b837-6b4c0119e7ca"
              },
              "target": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "30dfd577-46de-44f9-8709-3840b6f0ed57"
              },
              "size": 3
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "254272a4-9950-4103-89e4-fc225fcd6a26"
              },
              "target": {
                "block": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
                "port": "57b7e56d-274c-45f9-a0ec-1c9597a11e3e"
              },
              "size": 10
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "27b95e34-7b62-431f-a644-0647631fe0a5"
              },
              "target": {
                "block": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
                "port": "4b395618-e54a-4fce-a9e0-d7740e0b2c39"
              },
              "size": 10
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "c2f327f8-f05a-497c-93aa-2a26a3c99358"
              },
              "target": {
                "block": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
                "port": "982b974d-e656-4ff6-84e1-ef1f1aeba01b"
              },
              "size": 10
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "409757f3-b166-4ab7-a745-22d7cecbe008"
              },
              "target": {
                "block": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
                "port": "92474e9c-49a0-4c66-be14-18e2bfe72651"
              },
              "size": 10
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9"
              },
              "target": {
                "block": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
                "port": "fb0f0a97-80b8-4f5c-843d-5c1b1a98f529"
              }
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9"
              },
              "target": {
                "block": "f97a705b-e4b5-437b-86a0-0b84f1db4ca6",
                "port": "13b02f24-65bb-4a75-8668-dbce47e9a8c3"
              }
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "409757f3-b166-4ab7-a745-22d7cecbe008"
              },
              "target": {
                "block": "f97a705b-e4b5-437b-86a0-0b84f1db4ca6",
                "port": "4cb55c5d-cb41-4f01-8492-29df4b700dcb"
              },
              "size": 10
            },
            {
              "source": {
                "block": "2917c3ef-80fd-4aad-8a34-a57d3cc939e3",
                "port": "c2f327f8-f05a-497c-93aa-2a26a3c99358"
              },
              "target": {
                "block": "f97a705b-e4b5-437b-86a0-0b84f1db4ca6",
                "port": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24"
              },
              "vertices": [
                {
                  "x": 1032,
                  "y": -88
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "f97a705b-e4b5-437b-86a0-0b84f1db4ca6",
                "port": "6cba7f12-2480-4ddd-abf8-c9e8f64a433d"
              },
              "target": {
                "block": "b3f3ebab-4944-423a-bbb7-fe51719b15f6",
                "port": "87a5aca0-4572-4a9c-af31-87a55ee3d2f3"
              },
              "vertices": [
                {
                  "x": 1120,
                  "y": 384
                }
              ]
            },
            {
              "source": {
                "block": "65f2f18a-464e-4bff-af02-e92b4c85be0c",
                "port": "offset"
              },
              "target": {
                "block": "f97a705b-e4b5-437b-86a0-0b84f1db4ca6",
                "port": "1935ada8-21c1-41a9-95f0-afd9356d44cf"
              }
            },
            {
              "source": {
                "block": "98c808c4-1d76-4919-9e93-3d94ff74bf72",
                "port": "out"
              },
              "target": {
                "block": "f97a705b-e4b5-437b-86a0-0b84f1db4ca6",
                "port": "bcfaf5fc-36b8-4cf5-9cb2-5d81e7a59f11"
              },
              "size": 4
            }
          ]
        },
        "state": {
          "pan": {
            "x": 492.3516,
            "y": 616.5
          },
          "zoom": 1
        }
      }
    },
    "84f9247c0ee5ad59485b477bd71e43bfbfc293b4": {
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
              "id": "93221e3a-4163-43f5-94f5-920c5dbe1e7e",
              "type": "basic.output",
              "data": {
                "name": "vga_h_sync"
              },
              "position": {
                "x": 512,
                "y": -472
              }
            },
            {
              "id": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a",
              "type": "basic.output",
              "data": {
                "name": "vga_v_sync"
              },
              "position": {
                "x": 512,
                "y": -384
              }
            },
            {
              "id": "fc004c54-093b-42c8-91e3-1c4b6f9f042c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -944,
                "y": -336
              }
            },
            {
              "id": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9",
              "type": "basic.output",
              "data": {
                "name": "px_clk"
              },
              "position": {
                "x": 512,
                "y": -288
              }
            },
            {
              "id": "fb6080dd-f184-4adc-9ebb-3a70adcdf337",
              "type": "basic.output",
              "data": {
                "name": "red_monitor"
              },
              "position": {
                "x": 520,
                "y": -192
              }
            },
            {
              "id": "9fb4009a-cac9-4e29-8a1b-0d7551e6e233",
              "type": "basic.output",
              "data": {
                "name": "green_monitor"
              },
              "position": {
                "x": 520,
                "y": -96
              }
            },
            {
              "id": "1cf25f8e-ab73-4ab6-bf2a-912acf407e70",
              "type": "basic.output",
              "data": {
                "name": "blue_monitor"
              },
              "position": {
                "x": 504,
                "y": -8
              }
            },
            {
              "id": "30dfd577-46de-44f9-8709-3840b6f0ed57",
              "type": "basic.input",
              "data": {
                "name": "color_px",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": -936,
                "y": 32
              }
            },
            {
              "id": "254272a4-9950-4103-89e4-fc225fcd6a26",
              "type": "basic.output",
              "data": {
                "name": "hc",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 520,
                "y": 80
              }
            },
            {
              "id": "c2f327f8-f05a-497c-93aa-2a26a3c99358",
              "type": "basic.output",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 376,
                "y": 104
              }
            },
            {
              "id": "27b95e34-7b62-431f-a644-0647631fe0a5",
              "type": "basic.output",
              "data": {
                "name": "vc",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 520,
                "y": 168
              }
            },
            {
              "id": "409757f3-b166-4ab7-a745-22d7cecbe008",
              "type": "basic.output",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 376,
                "y": 168
              }
            },
            {
              "id": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
              "type": "basic.code",
              "data": {
                "code": "wire       clk;         // Input clock: 12MHz\r\nwire [2:0] color_px;    // Color RGB (8 colors) for actual pixel.\r\nwire      vga_h_sync;        // Horizontal sync out\r\nwire      vga_v_sync;      // Vertical sync out\r\nreg       red_monitor;   // RED vga outputapio --board icezum\r\nreg       green_monitor; // GREEN vga output\r\nreg       blue_monitor;  // BLUE vga output\r\nreg [9:0] x_px;        // X position for actual pixel.\r\nreg [9:0] y_px;        // Y position for actual pixel.\r\nwire      activevideo;\r\nwire      px_clk;\r\n\r\n\r\n    SB_PLL40_CORE #(.FEEDBACK_PATH(\"SIMPLE\"),\r\n                    .PLLOUT_SELECT(\"GENCLK\"),\r\n                    .DIVR(4'b0000),\r\n                    .DIVF(7'b1010011),\r\n                    .DIVQ(3'b101),\r\n                    .FILTER_RANGE(3'b001)\r\n            )\r\n            uut\r\n            (\r\n                    .REFERENCECLK(clk),\r\n                    .PLLOUTCORE(px_clk),\r\n                    .RESETB(1'b1),\r\n                    .BYPASS(1'b0)\r\n              );\r\n\r\n    parameter activeHvideo = 640;               // Width of visible pixels.\r\n    parameter activeVvideo =  480;              // Height of visible lines.\r\n    parameter hfp = 24;                         // Horizontal front porch length.\r\n    parameter hpulse = 40;                      // Hsync pulse length.\r\n    parameter hbp = 128;                        // Horizontal back porch length.\r\n    parameter vfp = 9;                          // Vertical front porch length.\r\n    parameter vpulse = 3;                       // Vsync pulse length.\r\n    parameter vbp = 28;                         // Vertical back porch length.\r\n    parameter blackH = hfp + hpulse + hbp;      // Hide pixels in one line.\r\n    parameter blackV = vfp + vpulse + vbp;      // Hide lines in one frame.\r\n    parameter hpixels = blackH + activeHvideo;  // Total horizontal pixels.\r\n    parameter vlines = blackV + activeVvideo;   // Total lines.\r\n\r\n    // Registers for storing the horizontal & vertical counters.\r\n    reg [9:0] hc;\r\n    reg [9:0] vc;\r\n\r\n    // Initial values.\r\n    initial\r\n    begin\r\n      x_px <= 0;\r\n      y_px <= 0;\r\n      hc <= 0;\r\n      vc <= 0;\r\n      red_monitor <= 0;\r\n      green_monitor <= 0;\r\n      blue_monitor <= 0;\r\n    end\r\n\r\n    // Counting pixels.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // Keep counting until the end of the line.\r\n        if (hc < hpixels - 1)\r\n            hc <= hc + 1;\r\n        else\r\n\r\n        begin\r\n            hc <= 0;\r\n            if (vc < vlines - 1)\r\n            vc <= vc + 1;\r\n        else\r\n           vc <= 0;\r\n        end\r\n     end\r\n\r\n    // Generate sync pulses (active low) and active video.\r\n    assign vga_h_sync = (hc >= hfp && hc < hfp + hpulse) ? 0:1;\r\n    assign vga_v_sync = (vc >= vfp && vc < vfp + vpulse) ? 0:1;\r\n    assign activevideo = (hc >= blackH && vc >= blackV) ? 1:0;\r\n    // Generate color.\r\n    always @(posedge px_clk)\r\n    begin\r\n        // First check if we are within vertical active video range.\r\n        if (activevideo)\r\n        begin\r\n            red_monitor <= color_px[2];\r\n            green_monitor <= color_px[1];\r\n            blue_monitor <= color_px[0];\r\n            x_px <= hc - blackH; //posicion actual x del pixel\r\n            y_px <= vc - blackV; // posicion actual y pixel\r\n        end\r\n        else\r\n        // We are outside active video range so display black.\r\n        begin\r\n            red_monitor <= 0;\r\n            green_monitor <= 0;\r\n            blue_monitor <= 0;\r\n            x_px <= 0;\r\n            y_px <= 0;\r\n        end\r\n     end\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "color_px",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "vga_h_sync"
                    },
                    {
                      "name": "vga_v_sync"
                    },
                    {
                      "name": "px_clk"
                    },
                    {
                      "name": "red_monitor"
                    },
                    {
                      "name": "green_monitor"
                    },
                    {
                      "name": "blue_monitor"
                    },
                    {
                      "name": "hc",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "vc",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "x_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "y_px",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": -728,
                "y": -488
              },
              "size": {
                "width": 944,
                "height": 736
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "vga_v_sync"
              },
              "target": {
                "block": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "vga_h_sync"
              },
              "target": {
                "block": "93221e3a-4163-43f5-94f5-920c5dbe1e7e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fc004c54-093b-42c8-91e3-1c4b6f9f042c",
                "port": "out"
              },
              "target": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "hc"
              },
              "target": {
                "block": "254272a4-9950-4103-89e4-fc225fcd6a26",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "vc"
              },
              "target": {
                "block": "27b95e34-7b62-431f-a644-0647631fe0a5",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "red_monitor"
              },
              "target": {
                "block": "fb6080dd-f184-4adc-9ebb-3a70adcdf337",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "green_monitor"
              },
              "target": {
                "block": "9fb4009a-cac9-4e29-8a1b-0d7551e6e233",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "blue_monitor"
              },
              "target": {
                "block": "1cf25f8e-ab73-4ab6-bf2a-912acf407e70",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "30dfd577-46de-44f9-8709-3840b6f0ed57",
                "port": "out"
              },
              "target": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "color_px"
              },
              "size": 3
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "px_clk"
              },
              "target": {
                "block": "9820cd18-e4a8-4b41-9ad5-8dabfecc42b9",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "y_px"
              },
              "target": {
                "block": "c2f327f8-f05a-497c-93aa-2a26a3c99358",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
                "port": "x_px"
              },
              "target": {
                "block": "409757f3-b166-4ab7-a745-22d7cecbe008",
                "port": "in"
              },
              "size": 10
            }
          ]
        },
        "state": {
          "pan": {
            "x": 1221.3101,
            "y": 750.2613
          },
          "zoom": 0.8095
        }
      }
    },
    "3781fec0cbdcb87c8f97cdc2eec1f6b11309c044": {
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
              "id": "fb0f0a97-80b8-4f5c-843d-5c1b1a98f529",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
                "clock": false
              },
              "position": {
                "x": -808,
                "y": -512
              }
            },
            {
              "id": "57b7e56d-274c-45f9-a0ec-1c9597a11e3e",
              "type": "basic.input",
              "data": {
                "name": "hc",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -392
              }
            },
            {
              "id": "4b395618-e54a-4fce-a9e0-d7740e0b2c39",
              "type": "basic.input",
              "data": {
                "name": "vc",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -272
              }
            },
            {
              "id": "92474e9c-49a0-4c66-be14-18e2bfe72651",
              "type": "basic.input",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -152
              }
            },
            {
              "id": "a6e865f3-9e13-4b62-b837-6b4c0119e7ca",
              "type": "basic.output",
              "data": {
                "name": "color_px",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 800,
                "y": -88
              }
            },
            {
              "id": "982b974d-e656-4ff6-84e1-ef1f1aeba01b",
              "type": "basic.input",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -808,
                "y": -32
              }
            },
            {
              "id": "87a5aca0-4572-4a9c-af31-87a55ee3d2f3",
              "type": "basic.input",
              "data": {
                "name": "flag",
                "clock": false
              },
              "position": {
                "x": -808,
                "y": 88
              }
            },
            {
              "id": "d899cb30-719d-4638-9a81-f31b5f63413a",
              "type": "basic.code",
              "data": {
                "code": "// input px_clk \r\n//algunos colores que usaremos\r\nwire      areanumbers;\r\nwire      areanumber1;\r\nwire      areanumber2;\r\nwire      areanumber3;\r\nparameter [2:0] green = 3'b010;\r\nparameter [2:0] blue  = 3'b001;\r\nparameter [2:0] white = 3'b111;\r\nparameter [2:0] red = 3'b101;\r\nparameter [2:0] black = 3'b000;\r\nparameter [2:0] yellow = 3'b100;\r\nparameter activeHvideo = 640;               // Width of visible pixels.\r\nparameter activeVvideo =  480;              // Height of visible lines.\r\nparameter hfp = 24;                         // Horizontal front porch length.\r\nparameter hpulse = 40;                      // Hsync pulse length.\r\nparameter hbp = 128;                        // Horizontal back porch length.\r\nparameter vfp = 9;                          // Vertical front porch length.\r\nparameter vpulse = 3;                       // Vsync pulse length.\r\nparameter vbp = 28;                         // Vertical back porch length.\r\nparameter blackH = hfp + hpulse + hbp;      // Hide pixels in one line.\r\nparameter blackV = vfp + vpulse + vbp;      // Hide lines in one frame.\r\n\r\nreg [2:0]  color_px;    // Actual pixel color.\r\nwire px_clk;\r\n\r\n\r\nassign areanumbers = (hc>= blackH+160 && hc<=blackH+480 && vc>=blackV+140 && vc<=blackV+340) ? 1:0; //colocamos los numeros en el medio de la pantalla\r\nassign areanumber1 = ( hc>=blackH+160 && hc<=blackH+160+106 && vc>=blackV+140 && vc<=blackV+340) ? 1:0; //160\r\nassign areanumber2 = (hc>=blackH+267 && hc<=blackH+267+106 && vc>=blackV+140 && vc<=blackV+340) ? 1:0; //373\r\nassign areanumber3 = (hc>=blackH+374 && hc<=blackH+374+106&& vc>=blackV+140 && vc<=blackV+340) ? 1:0; //480\r\n\r\n  always @(posedge px_clk)\r\n    begin\r\n      if(areanumbers)\r\n        color_px = white;\r\n      if(flag)\r\n        color_px = black;\r\n    end",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "px_clk"
                    },
                    {
                      "name": "hc",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "vc",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "x_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "y_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "flag"
                    }
                  ],
                  "out": [
                    {
                      "name": "color_px",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ]
                }
              },
              "position": {
                "x": -472,
                "y": -544
              },
              "size": {
                "width": 1168,
                "height": 720
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "color_px"
              },
              "target": {
                "block": "a6e865f3-9e13-4b62-b837-6b4c0119e7ca",
                "port": "in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "4b395618-e54a-4fce-a9e0-d7740e0b2c39",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "vc"
              },
              "size": 10
            },
            {
              "source": {
                "block": "fb0f0a97-80b8-4f5c-843d-5c1b1a98f529",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "92474e9c-49a0-4c66-be14-18e2bfe72651",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "x_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "982b974d-e656-4ff6-84e1-ef1f1aeba01b",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "y_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "57b7e56d-274c-45f9-a0ec-1c9597a11e3e",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "hc"
              },
              "size": 10
            },
            {
              "source": {
                "block": "87a5aca0-4572-4a9c-af31-87a55ee3d2f3",
                "port": "out"
              },
              "target": {
                "block": "d899cb30-719d-4638-9a81-f31b5f63413a",
                "port": "flag"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 437.3615,
            "y": 377.4883
          },
          "zoom": 0.4918
        }
      }
    },
    "df8bbb923dd9e4d67af1a08732b117c7ca3f3bca": {
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
              "id": "1935ada8-21c1-41a9-95f0-afd9356d44cf",
              "type": "basic.input",
              "data": {
                "name": "offset",
                "clock": false
              },
              "position": {
                "x": -640,
                "y": -288
              }
            },
            {
              "id": "bcfaf5fc-36b8-4cf5-9cb2-5d81e7a59f11",
              "type": "basic.input",
              "data": {
                "name": "number",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -640,
                "y": -112
              }
            },
            {
              "id": "6cba7f12-2480-4ddd-abf8-c9e8f64a433d",
              "type": "basic.output",
              "data": {
                "name": "flag"
              },
              "position": {
                "x": 1000,
                "y": 64
              }
            },
            {
              "id": "4cb55c5d-cb41-4f01-8492-29df4b700dcb",
              "type": "basic.input",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -640,
                "y": 64
              }
            },
            {
              "id": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
              "type": "basic.input",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -648,
                "y": 240
              }
            },
            {
              "id": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
                "clock": false
              },
              "position": {
                "x": -648,
                "y": 416
              }
            },
            {
              "id": "e6c023d9-0b6c-483d-8313-f199e465c888",
              "type": "basic.code",
              "data": {
                "code": "/*input : offset, number, x_px[9:0], y_px[9:0], px_clk\r\n\r\noutput: flag\r\n\r\nbehaviour: With the offset we can control the position of the number on the screen. This module \r\ncheck if the actual pixel has to be drawn*/\r\n\r\n\r\n/**********************************************************************/\r\nwire area1, area2, area3, area4, area5, area6, area7, area8, area9;\r\nreg flag;\r\n/***********************************************************************/\r\n\r\nassign area1= (x_px<=160+8+offset && x_px>=160+4+offset && y_px>=140+12 && y_px<=140+99) ? 1:0;\r\nassign area2= (x_px<=160+97+offset && x_px>=160+10+offset && y_px>=140+10 && y_px<=140+14) ? 1:0;\r\nassign area3= (x_px<=160+103+offset && x_px>=160+99+offset && y_px>=140+12 && y_px<=140+99) ? 1:0;\r\nassign area4= (x_px<=160+97+offset && x_px>=160+10+offset && y_px>=140+97 && y_px<=140+101) ? 1:0;\r\nassign area5= (x_px<=160+8+offset && x_px>=160+4+offset && y_px>=140+101 && y_px<=140+188) ? 1:0;\r\nassign area6= (x_px<=160+103+offset && x_px>=160+99+offset && y_px>=140+101 && y_px<=140+188) ? 1:0;\r\nassign area7= (x_px<=160+97+offset && x_px>=160+10+offset && y_px>=140+186 && y_px<=140+190) ? 1:0;\r\nassign area8= (x_px<=160+97+offset && x_px>=160+10+offset && y_px>=140+10 && y_px<=140+14) ? 1:0;\r\n\r\n\r\n\r\nalways @ (posedge px_clk)\r\n\r\nbegin\r\n\r\n  case (number)\r\n      4'd0 :\r\n      begin\r\n        if (area1 || area2 || area3 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else \r\n          flag = 1'b0;\r\n      end\r\n      4'd1:\r\n      begin\r\n        if (area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd2:\r\n      begin\r\n        if (area2 || area3 || area4 || area5 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd3:\r\n      begin\r\n        if (area2 || area3 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd4:\r\n      begin\r\n         if (area1 || area4 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd5:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd6:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd7:\r\n      begin\r\n         if (area2 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd8:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area5 || area6 || area7 || area8)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd9:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n\r\n  endcase\r\n\r\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "offset"
                    },
                    {
                      "name": "number",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "x_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "y_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "px_clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "flag"
                    }
                  ]
                }
              },
              "position": {
                "x": -408,
                "y": -344
              },
              "size": {
                "width": 1280,
                "height": 880
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e6c023d9-0b6c-483d-8313-f199e465c888",
                "port": "flag"
              },
              "target": {
                "block": "6cba7f12-2480-4ddd-abf8-c9e8f64a433d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bcfaf5fc-36b8-4cf5-9cb2-5d81e7a59f11",
                "port": "out"
              },
              "target": {
                "block": "e6c023d9-0b6c-483d-8313-f199e465c888",
                "port": "number"
              },
              "size": 4
            },
            {
              "source": {
                "block": "4cb55c5d-cb41-4f01-8492-29df4b700dcb",
                "port": "out"
              },
              "target": {
                "block": "e6c023d9-0b6c-483d-8313-f199e465c888",
                "port": "x_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
                "port": "out"
              },
              "target": {
                "block": "e6c023d9-0b6c-483d-8313-f199e465c888",
                "port": "y_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
                "port": "out"
              },
              "target": {
                "block": "e6c023d9-0b6c-483d-8313-f199e465c888",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "1935ada8-21c1-41a9-95f0-afd9356d44cf",
                "port": "out"
              },
              "target": {
                "block": "e6c023d9-0b6c-483d-8313-f199e465c888",
                "port": "offset"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 985,
            "y": 516.5
          },
          "zoom": 1
        }
      }
    }
  }
}