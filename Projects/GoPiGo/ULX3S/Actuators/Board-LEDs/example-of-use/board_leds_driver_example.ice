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
    "board": "ulx3s-85f",
    "graph": {
      "blocks": [
        {
          "id": "773f2467-000f-41f4-8a32-26db89b86335",
          "type": "basic.input",
          "data": {
            "name": "INPUT_2",
            "pins": [
              {
                "index": "0",
                "name": "gp2",
                "value": "A9"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 384,
            "y": -112
          }
        },
        {
          "id": "6bf6fdff-4b38-4c36-bee6-d4bc453ab057",
          "type": "basic.output",
          "data": {
            "name": "LED_2",
            "pins": [
              {
                "index": "0",
                "name": "led_2",
                "value": "C1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 984,
            "y": -64
          }
        },
        {
          "id": "42682b61-cd46-4837-bd5a-7d36e5156759",
          "type": "basic.input",
          "data": {
            "name": "INPUT_1",
            "pins": [
              {
                "index": "0",
                "name": "gp1",
                "value": "A10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 384,
            "y": -16
          }
        },
        {
          "id": "13cca270-08e1-4d04-adf5-0144e2fcf6e5",
          "type": "basic.output",
          "data": {
            "name": "LED_1",
            "pins": [
              {
                "index": "0",
                "name": "led_1",
                "value": "C2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 984,
            "y": 8
          }
        },
        {
          "id": "7db09b79-a667-473a-8d61-ed8f10ebc8b3",
          "type": "basic.input",
          "data": {
            "name": "INPUT_0",
            "pins": [
              {
                "index": "0",
                "name": "gp0",
                "value": "B11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 384,
            "y": 72
          }
        },
        {
          "id": "0987beb0-674a-4d7f-86bc-66b887540695",
          "type": "basic.output",
          "data": {
            "name": "LED_0",
            "pins": [
              {
                "index": "0",
                "name": "led_0",
                "value": "B2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 984,
            "y": 88
          }
        },
        {
          "id": "8fa28f06-d2b0-4d28-9c1e-f1c3fd844aea",
          "type": "a5cd98a0a971655ba1655bfec846df9a0b1879c4",
          "position": {
            "x": 728,
            "y": -8
          },
          "size": {
            "width": 96,
            "height": 256
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8fa28f06-d2b0-4d28-9c1e-f1c3fd844aea",
            "port": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d"
          },
          "target": {
            "block": "6bf6fdff-4b38-4c36-bee6-d4bc453ab057",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fa28f06-d2b0-4d28-9c1e-f1c3fd844aea",
            "port": "add7e850-4942-443e-be96-5b47e3138e2b"
          },
          "target": {
            "block": "13cca270-08e1-4d04-adf5-0144e2fcf6e5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fa28f06-d2b0-4d28-9c1e-f1c3fd844aea",
            "port": "4bcbf401-0e00-4080-8b85-be200d144ab9"
          },
          "target": {
            "block": "0987beb0-674a-4d7f-86bc-66b887540695",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "773f2467-000f-41f4-8a32-26db89b86335",
            "port": "out"
          },
          "target": {
            "block": "8fa28f06-d2b0-4d28-9c1e-f1c3fd844aea",
            "port": "9597c393-eddd-4f86-9ec8-72c8ace70ca3"
          }
        },
        {
          "source": {
            "block": "42682b61-cd46-4837-bd5a-7d36e5156759",
            "port": "out"
          },
          "target": {
            "block": "8fa28f06-d2b0-4d28-9c1e-f1c3fd844aea",
            "port": "6ca283cd-11cb-4db1-99b4-844f4622bec9"
          }
        },
        {
          "source": {
            "block": "7db09b79-a667-473a-8d61-ed8f10ebc8b3",
            "port": "out"
          },
          "target": {
            "block": "8fa28f06-d2b0-4d28-9c1e-f1c3fd844aea",
            "port": "ebb9a378-a454-48af-b202-a4ab303f6d36"
          }
        }
      ]
    }
  },
  "dependencies": {
    "a5cd98a0a971655ba1655bfec846df9a0b1879c4": {
      "package": {
        "name": "LEDs Drv",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9597c393-eddd-4f86-9ec8-72c8ace70ca3",
              "type": "basic.input",
              "data": {
                "name": "SIG0",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": -40
              }
            },
            {
              "id": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d",
              "type": "basic.output",
              "data": {
                "name": "LED0_IN"
              },
              "position": {
                "x": 512,
                "y": -40
              }
            },
            {
              "id": "6ca283cd-11cb-4db1-99b4-844f4622bec9",
              "type": "basic.input",
              "data": {
                "name": "SIG1",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 24
              }
            },
            {
              "id": "add7e850-4942-443e-be96-5b47e3138e2b",
              "type": "basic.output",
              "data": {
                "name": "LED1_IN"
              },
              "position": {
                "x": 512,
                "y": 24
              }
            },
            {
              "id": "ebb9a378-a454-48af-b202-a4ab303f6d36",
              "type": "basic.input",
              "data": {
                "name": "SIG2",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 88
              }
            },
            {
              "id": "4bcbf401-0e00-4080-8b85-be200d144ab9",
              "type": "basic.output",
              "data": {
                "name": "LED2_IN"
              },
              "position": {
                "x": 512,
                "y": 88
              }
            },
            {
              "id": "4c7381d4-144f-4c38-ba31-5a59bdf84f3c",
              "type": "basic.input",
              "data": {
                "name": "SIG3",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 152
              }
            },
            {
              "id": "b6d4a576-f816-49eb-af84-fd65eca0df01",
              "type": "basic.output",
              "data": {
                "name": "LED3_IN"
              },
              "position": {
                "x": 512,
                "y": 152
              }
            },
            {
              "id": "61f09f0d-f6da-4b5f-a913-8d930805b75a",
              "type": "basic.input",
              "data": {
                "name": "SIG4",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 216
              }
            },
            {
              "id": "e2370c25-f11d-4c1e-9d4f-a982a5fd8493",
              "type": "basic.output",
              "data": {
                "name": "LED4_IN"
              },
              "position": {
                "x": 512,
                "y": 216
              }
            },
            {
              "id": "09b8bc12-c843-45fe-8610-42a69b7e8f8d",
              "type": "basic.input",
              "data": {
                "name": "SIG5",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 280
              }
            },
            {
              "id": "a8df8e3b-ec6b-40f3-b2eb-daab4f970355",
              "type": "basic.output",
              "data": {
                "name": "LED5_IN"
              },
              "position": {
                "x": 512,
                "y": 280
              }
            },
            {
              "id": "98534e4b-f7cb-4592-bca8-a9815c3a0551",
              "type": "basic.input",
              "data": {
                "name": "SIG6",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 344
              }
            },
            {
              "id": "c8837285-cf45-4ca1-80c3-be6b0df8ae84",
              "type": "basic.output",
              "data": {
                "name": "LED6_IN"
              },
              "position": {
                "x": 512,
                "y": 344
              }
            },
            {
              "id": "c3ac2e28-6e48-4078-80b4-07e17d7062c3",
              "type": "basic.input",
              "data": {
                "name": "SIG7",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 408
              }
            },
            {
              "id": "df8bfc39-7c44-4d97-a777-a2f1e5ffead4",
              "type": "basic.output",
              "data": {
                "name": "LED7_IN"
              },
              "position": {
                "x": 512,
                "y": 408
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9597c393-eddd-4f86-9ec8-72c8ace70ca3",
                "port": "out"
              },
              "target": {
                "block": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "6ca283cd-11cb-4db1-99b4-844f4622bec9",
                "port": "out"
              },
              "target": {
                "block": "add7e850-4942-443e-be96-5b47e3138e2b",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "ebb9a378-a454-48af-b202-a4ab303f6d36",
                "port": "out"
              },
              "target": {
                "block": "4bcbf401-0e00-4080-8b85-be200d144ab9",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "4c7381d4-144f-4c38-ba31-5a59bdf84f3c",
                "port": "out"
              },
              "target": {
                "block": "b6d4a576-f816-49eb-af84-fd65eca0df01",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "61f09f0d-f6da-4b5f-a913-8d930805b75a",
                "port": "out"
              },
              "target": {
                "block": "e2370c25-f11d-4c1e-9d4f-a982a5fd8493",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "09b8bc12-c843-45fe-8610-42a69b7e8f8d",
                "port": "out"
              },
              "target": {
                "block": "a8df8e3b-ec6b-40f3-b2eb-daab4f970355",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "98534e4b-f7cb-4592-bca8-a9815c3a0551",
                "port": "out"
              },
              "target": {
                "block": "c8837285-cf45-4ca1-80c3-be6b0df8ae84",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "c3ac2e28-6e48-4078-80b4-07e17d7062c3",
                "port": "out"
              },
              "target": {
                "block": "df8bfc39-7c44-4d97-a777-a2f1e5ffead4",
                "port": "in"
              },
              "vertices": []
            }
          ]
        }
      }
    }
  }
}