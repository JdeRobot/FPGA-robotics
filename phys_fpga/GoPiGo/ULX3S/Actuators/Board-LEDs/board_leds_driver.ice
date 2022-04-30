{
  "version": "1.2",
  "package": {
    "name": "LEDs Drv",
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
          "id": "9597c393-eddd-4f86-9ec8-72c8ace70ca3",
          "type": "basic.input",
          "data": {
            "name": "SIG0",
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
            "x": 160,
            "y": -40
          }
        },
        {
          "id": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d",
          "type": "basic.output",
          "data": {
            "name": "LED0_IN",
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
            "x": 512,
            "y": -40
          }
        },
        {
          "id": "6ca283cd-11cb-4db1-99b4-844f4622bec9",
          "type": "basic.input",
          "data": {
            "name": "SIG1",
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
            "x": 160,
            "y": 24
          }
        },
        {
          "id": "add7e850-4942-443e-be96-5b47e3138e2b",
          "type": "basic.output",
          "data": {
            "name": "LED1_IN",
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
            "x": 512,
            "y": 24
          }
        },
        {
          "id": "ebb9a378-a454-48af-b202-a4ab303f6d36",
          "type": "basic.input",
          "data": {
            "name": "SIG2",
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
            "x": 160,
            "y": 88
          }
        },
        {
          "id": "4bcbf401-0e00-4080-8b85-be200d144ab9",
          "type": "basic.output",
          "data": {
            "name": "LED2_IN",
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
            "x": 512,
            "y": 88
          }
        },
        {
          "id": "4c7381d4-144f-4c38-ba31-5a59bdf84f3c",
          "type": "basic.input",
          "data": {
            "name": "SIG3",
            "pins": [
              {
                "index": "0",
                "name": "gp3",
                "value": "B9"
              }
            ],
            "virtual": false,
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
            "name": "LED3_IN",
            "pins": [
              {
                "index": "0",
                "name": "led_3",
                "value": "D2"
              }
            ],
            "virtual": false
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
            "pins": [
              {
                "index": "0",
                "name": "gp4",
                "value": "A7"
              }
            ],
            "virtual": false,
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
            "name": "LED4_IN",
            "pins": [
              {
                "index": "0",
                "name": "led_4",
                "value": "D1"
              }
            ],
            "virtual": false
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
            "pins": [
              {
                "index": "0",
                "name": "gp5",
                "value": "C8"
              }
            ],
            "virtual": false,
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
            "name": "LED5_IN",
            "pins": [
              {
                "index": "0",
                "name": "led_5",
                "value": "E2"
              }
            ],
            "virtual": false
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
            "pins": [
              {
                "index": "0",
                "name": "gp6",
                "value": "C6"
              }
            ],
            "virtual": false,
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
            "name": "LED6_IN",
            "pins": [
              {
                "index": "0",
                "name": "led_6",
                "value": "E1"
              }
            ],
            "virtual": false
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
            "pins": [
              {
                "index": "0",
                "name": "gp7",
                "value": "A6"
              }
            ],
            "virtual": false,
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
            "name": "LED7_IN",
            "pins": [
              {
                "index": "0",
                "name": "led_7",
                "value": "H3"
              }
            ],
            "virtual": false
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
  },
  "dependencies": {}
}