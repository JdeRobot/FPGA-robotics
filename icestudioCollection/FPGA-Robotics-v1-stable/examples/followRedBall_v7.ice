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
          "id": "f81b6b23-b975-4521-a94c-98718b4d3e3e",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "49"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": -440,
            "y": -224
          }
        },
        {
          "id": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "34"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -440,
            "y": -120
          }
        },
        {
          "id": "650a683a-0e4a-4df4-a826-5931c81df7d5",
          "type": "basic.input",
          "data": {
            "name": "ov7670_pclk",
            "pins": [
              {
                "index": "0",
                "name": "DD1",
                "value": "115"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -176,
            "y": -64
          }
        },
        {
          "id": "a9d6e542-720b-41f3-856f-f443908be6c9",
          "type": "basic.input",
          "data": {
            "name": "ov7670_vsync",
            "pins": [
              {
                "index": "0",
                "name": "DD3",
                "value": "117"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -296,
            "y": -24
          }
        },
        {
          "id": "daf7db18-d3b7-4951-9287-54be5755d726",
          "type": "basic.output",
          "data": {
            "name": "led_cfgtest",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "37"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1304,
            "y": 8
          }
        },
        {
          "id": "44c9b50f-df3c-49b3-8a9f-871a1788d663",
          "type": "basic.input",
          "data": {
            "name": "ov7670_href",
            "pins": [
              {
                "index": "0",
                "name": "DD2",
                "value": "116"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -176,
            "y": 16
          }
        },
        {
          "id": "1f5768ae-a1ab-43b2-9ff5-b115c0ce95b9",
          "type": "basic.output",
          "data": {
            "name": "ov7670_sioc",
            "pins": [
              {
                "index": "0",
                "name": "DD5",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 288,
            "y": 32
          }
        },
        {
          "id": "2b1ed2dd-a756-4a60-aab5-a5475cfbfc29",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d0",
            "pins": [
              {
                "index": "0",
                "name": "D5",
                "value": "7"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -296,
            "y": 56
          }
        },
        {
          "id": "b8a39daf-af95-4d8f-87d5-dee29cbe4e2c",
          "type": "basic.output",
          "data": {
            "name": "ov7670_siod",
            "pins": [
              {
                "index": "0",
                "name": "DD4",
                "value": "118"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 400,
            "y": 80
          }
        },
        {
          "id": "30049587-a7d2-4c78-a980-acaa338c3d5e",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d1",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -176,
            "y": 96
          }
        },
        {
          "id": "070c148e-68f3-4b55-9102-f8921b95f339",
          "type": "basic.output",
          "data": {
            "name": "ov7670_rst_n",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "64"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 288,
            "y": 128
          }
        },
        {
          "id": "2bbeb9bb-bc4b-4979-9405-26fa6f7edcd0",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d2",
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
            "x": -296,
            "y": 136
          }
        },
        {
          "id": "b615a18e-be5b-4c9a-acbc-fd4f940111f8",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d3",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "21"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -176,
            "y": 176
          }
        },
        {
          "id": "0ce0e3a8-6645-49b2-8275-74721a51bc4f",
          "type": "basic.output",
          "data": {
            "name": "ov7670_xclk",
            "pins": [
              {
                "index": "0",
                "name": "DD0",
                "value": "114"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 400,
            "y": 176
          }
        },
        {
          "id": "1f91a1c2-29bb-44aa-bd0f-6282535d478d",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d4",
            "pins": [
              {
                "index": "0",
                "name": "D7",
                "value": "9"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -296,
            "y": 216
          }
        },
        {
          "id": "3584f4ef-7efb-4b3b-8756-a154a967aaee",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d5",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "22"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -176,
            "y": 256
          }
        },
        {
          "id": "b02f1780-0891-42d5-9db5-5b42c5567a21",
          "type": "basic.input",
          "data": {
            "name": "sw2",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "33"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 784,
            "y": 256
          }
        },
        {
          "id": "ad87d7a5-b282-4fda-aa8b-52a138ffb907",
          "type": "basic.output",
          "data": {
            "name": "ss",
            "pins": [
              {
                "index": "0",
                "name": "D4",
                "value": "8"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1864,
            "y": 288
          }
        },
        {
          "id": "0bb9ea23-240e-4ede-a85f-74ee291c98af",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d6",
            "pins": [
              {
                "index": "0",
                "name": "D9",
                "value": "19"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -296,
            "y": 288
          }
        },
        {
          "id": "a29a61d2-4507-4dd4-b195-e4deca3b120a",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d7",
            "pins": [
              {
                "index": "0",
                "name": "D8",
                "value": "20"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -176,
            "y": 336
          }
        },
        {
          "id": "514366e4-e98e-464c-8c23-1661898786b8",
          "type": "basic.output",
          "data": {
            "name": "sclk_o",
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
            "x": 1864,
            "y": 360
          }
        },
        {
          "id": "112ec845-ec2f-4e53-a957-7c273edd4d3f",
          "type": "basic.output",
          "data": {
            "name": "mosi_o",
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
            "x": 1864,
            "y": 432
          }
        },
        {
          "id": "5579f76c-4558-4fda-8097-9c290b0bc6b9",
          "type": "basic.output",
          "data": {
            "name": "rpi_run",
            "pins": [
              {
                "index": "0",
                "name": "D3",
                "value": "3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1864,
            "y": 504
          }
        },
        {
          "id": "f6f58115-73e0-466e-9475-96063b1c22e1",
          "type": "basic.input",
          "data": {
            "name": "miso_i",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 1488,
            "y": 520
          }
        },
        {
          "id": "060cc8bf-3d20-4c4f-a50a-2b0c86a80fa6",
          "type": "e1dd3b2cd19148b21c540060a3ea83704d6c07b4",
          "position": {
            "x": -200,
            "y": -224
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
          "type": "827cf4ce5ced29aeecb0d284fa83a3df1d466d65",
          "position": {
            "x": 64,
            "y": -56
          },
          "size": {
            "width": 96,
            "height": 480
          }
        },
        {
          "id": "a6cce9a4-ff0f-4d81-8b0c-af16eeab0f76",
          "type": "ca20160ef23057cb15d0594c21d2b02092446c79",
          "position": {
            "x": 640,
            "y": 272
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
          "type": "7b72bc7140454f0fca917a28f17e8ee0e612230a",
          "position": {
            "x": 1680,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 288
          }
        },
        {
          "id": "5a261a41-d2ee-44e9-ab6f-64319d69d254",
          "type": "893758fe64e858cbd68d98e76bf44c7021f420d1",
          "position": {
            "x": -176,
            "y": 416
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "5a1d76da-7fbd-4587-9942-307fa6823ed4",
          "type": "660e27c2711fe7e78bed19c817157bbb367fa977",
          "position": {
            "x": -296,
            "y": 376
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
          "type": "0fc5449ef62ab71af0dd4af99e474de6c7d9a3d7",
          "position": {
            "x": 952,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 256
          }
        },
        {
          "id": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
          "type": "5b1d4ef73a854630ce8a25008f28dfe262f57afc",
          "position": {
            "x": 1304,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "22d415f2-66da-406a-9655-72a9b060ff3f",
          "type": "basic.info",
          "data": {
            "info": "#### OV7670 Camera, GoPiGo and Alhambra II pin connection\r\n![OV7670 Camera, GoPiGo and Alhambra II pin connection](https://raw.githubusercontent.com/rubennc91/ruben-nieto/master/images/exampleRobot_connection_3.png)\r\n\r\n\r\n",
            "readonly": true
          },
          "position": {
            "x": 1704,
            "y": -288
          },
          "size": {
            "width": 1016,
            "height": 360
          }
        },
        {
          "id": "c4382eff-891d-4688-a88c-2052becd6ef9",
          "type": "basic.info",
          "data": {
            "info": " ## Object tracking with the OV7670 camera and GoPiGo3\r\n \r\nThe objective of this project is to track an object using the 0V7670 camera and an Alhambra II FPGA. For this purpose, the color filter corresponding to the object will be applied and its centroid will be detected. The result of the processing is displayed through the LEDs.\r\n \r\n EXAMPLE VIDEO: https://youtu.be/yu4rbgJa0q8",
            "readonly": true
          },
          "position": {
            "x": 1304,
            "y": -408
          },
          "size": {
            "width": 1040,
            "height": 184
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "a29a61d2-4507-4dd4-b195-e4deca3b120a",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "48b9338f-1828-4c0b-b389-6fb616ec5e28"
          }
        },
        {
          "source": {
            "block": "0bb9ea23-240e-4ede-a85f-74ee291c98af",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "3ba849c6-05d4-48ff-8d54-be37e4e75bb6"
          }
        },
        {
          "source": {
            "block": "3584f4ef-7efb-4b3b-8756-a154a967aaee",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "f731eb81-7b9d-453a-9300-a79f4d40a8be"
          }
        },
        {
          "source": {
            "block": "1f91a1c2-29bb-44aa-bd0f-6282535d478d",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "bb9f2f06-9bd9-4650-acb4-8c3920e14503"
          }
        },
        {
          "source": {
            "block": "b615a18e-be5b-4c9a-acbc-fd4f940111f8",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "989c3718-33f4-4a9d-a56b-bb1e1ee58367"
          }
        },
        {
          "source": {
            "block": "2bbeb9bb-bc4b-4979-9405-26fa6f7edcd0",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "cc757d2d-942a-437d-bb6b-340f7104b99d"
          }
        },
        {
          "source": {
            "block": "30049587-a7d2-4c78-a980-acaa338c3d5e",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "4359b806-c7a0-471f-9da9-e5271beb68de"
          }
        },
        {
          "source": {
            "block": "2b1ed2dd-a756-4a60-aab5-a5475cfbfc29",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "72832f9b-1972-4a1c-b81e-a895fbbf1dc3"
          },
          "vertices": [
            {
              "x": -64,
              "y": 104
            }
          ]
        },
        {
          "source": {
            "block": "44c9b50f-df3c-49b3-8a9f-871a1788d663",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "9d7110a3-3cf2-46c7-ae76-69ebfe9883a5"
          },
          "vertices": [
            {
              "x": -56,
              "y": 64
            }
          ]
        },
        {
          "source": {
            "block": "a9d6e542-720b-41f3-856f-f443908be6c9",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "5e626432-7c43-4b74-a88a-aa9a648345c9"
          },
          "vertices": [
            {
              "x": -48,
              "y": 24
            }
          ]
        },
        {
          "source": {
            "block": "650a683a-0e4a-4df4-a826-5931c81df7d5",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "cac2fb92-01e7-48e7-b6c2-d448cca3b434"
          }
        },
        {
          "source": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "d72b4174-f259-4972-919d-c031b9d25af7"
          },
          "target": {
            "block": "1f5768ae-a1ab-43b2-9ff5-b115c0ce95b9",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "33d14280-55bc-45ab-af5b-40dff5784f86"
          },
          "target": {
            "block": "b8a39daf-af95-4d8f-87d5-dee29cbe4e2c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "2a5cb73b-b7f7-4719-9d7e-2b5789bb998e"
          },
          "target": {
            "block": "070c148e-68f3-4b55-9102-f8921b95f339",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "54acda2c-f70a-4af7-b57f-0970132342ff"
          },
          "target": {
            "block": "0ce0e3a8-6645-49b2-8275-74721a51bc4f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "f4c20f3d-47b2-43e0-9474-cf379dd06019"
          },
          "target": {
            "block": "a6cce9a4-ff0f-4d81-8b0c-af16eeab0f76",
            "port": "4609e8ba-4336-4956-b19d-9ca2284eb95f"
          },
          "vertices": [
            {
              "x": 344,
              "y": 320
            }
          ],
          "size": 13
        },
        {
          "source": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "60bc29bf-2f81-4e0a-b81c-844756d89d96"
          },
          "target": {
            "block": "a6cce9a4-ff0f-4d81-8b0c-af16eeab0f76",
            "port": "04eeb1c6-d5f8-4317-a875-94f0a697cdfc"
          },
          "vertices": [
            {
              "x": 344,
              "y": 384
            }
          ]
        },
        {
          "source": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "a63c9de5-2bbe-4bf8-87c3-078fc03cd312"
          },
          "target": {
            "block": "a6cce9a4-ff0f-4d81-8b0c-af16eeab0f76",
            "port": "5f7e35e0-3e2d-48ee-ac2e-ed81cd595bce"
          },
          "vertices": [],
          "size": 12
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "9b95db21-3045-4d45-b199-9e7b5e206fa5"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f81b6b23-b975-4521-a94c-98718b4d3e3e",
            "port": "out"
          },
          "target": {
            "block": "060cc8bf-3d20-4c4f-a50a-2b0c86a80fa6",
            "port": "7109ab6e-72a5-4bd1-aea2-a7e0c9dff7fc"
          }
        },
        {
          "source": {
            "block": "060cc8bf-3d20-4c4f-a50a-2b0c86a80fa6",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "d6c45f84-0898-42f6-88ae-448a142560d8"
          }
        },
        {
          "source": {
            "block": "060cc8bf-3d20-4c4f-a50a-2b0c86a80fa6",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "a6cce9a4-ff0f-4d81-8b0c-af16eeab0f76",
            "port": "b2b9d2ce-7cd2-4e09-ab14-b65cc710b349"
          },
          "vertices": [
            {
              "x": 592,
              "y": 232
            }
          ]
        },
        {
          "source": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "bbffdd92-4d2c-4fd1-a551-a24f3338f119"
          },
          "target": {
            "block": "514366e4-e98e-464c-8c23-1661898786b8",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "4353b952-9d6b-4335-b9a3-cfa90f43349e"
          },
          "target": {
            "block": "112ec845-ec2f-4e53-a957-7c273edd4d3f",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "b68b5517-04d2-4143-9012-05a562906299"
          },
          "target": {
            "block": "5579f76c-4558-4fda-8097-9c290b0bc6b9",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "975dcf9d-b904-4e2b-8963-ffcc0920bc94"
          },
          "target": {
            "block": "ad87d7a5-b282-4fda-aa8b-52a138ffb907",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f6f58115-73e0-466e-9475-96063b1c22e1",
            "port": "out"
          },
          "target": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "6226871a-97d6-48f8-bf98-c8b4be0512c2"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f81b6b23-b975-4521-a94c-98718b4d3e3e",
            "port": "out"
          },
          "target": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "a9a6c276-1882-4abe-bda7-95e688d4b037"
          },
          "vertices": [
            {
              "x": 1584,
              "y": -112
            },
            {
              "x": 1600,
              "y": 248
            },
            {
              "x": 1608,
              "y": 272
            }
          ]
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "b1b80a6d-32e6-4f8c-84aa-426b59b523bb"
          },
          "vertices": [
            {
              "x": 1640,
              "y": 288
            }
          ]
        },
        {
          "source": {
            "block": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
            "port": "1676fb59-5f37-42e5-9769-51fcf974fc64"
          },
          "target": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "9fd7f1b0-1758-4e0d-ab2e-6e25d627ab33"
          },
          "size": 8
        },
        {
          "source": {
            "block": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
            "port": "9c6e4097-d802-4954-b5b4-6dde0f18d5fe"
          },
          "target": {
            "block": "339de47a-243e-4bd6-9b8d-83346d1c37cf",
            "port": "fe31784b-e760-4283-b505-e19a3ddc0895"
          },
          "size": 8
        },
        {
          "source": {
            "block": "060cc8bf-3d20-4c4f-a50a-2b0c86a80fa6",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "01b7de49-be8a-40be-9c15-a615d855e526"
          },
          "vertices": [
            {
              "x": 872,
              "y": 112
            }
          ]
        },
        {
          "source": {
            "block": "a6cce9a4-ff0f-4d81-8b0c-af16eeab0f76",
            "port": "0c3d577e-24c0-4184-85c3-3135c17c8d75"
          },
          "target": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "1f66055f-b02f-44d1-8d8d-ef6560d5108d"
          },
          "size": 12
        },
        {
          "source": {
            "block": "b02f1780-0891-42d5-9db5-5b42c5567a21",
            "port": "out"
          },
          "target": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "4f0b11a7-98a3-484a-b7b8-b70813231ea7"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "ed77abcc-9687-4a31-a53d-02cb20b7ee74"
          },
          "target": {
            "block": "daf7db18-d3b7-4951-9287-54be5755d726",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "63094452-e4c3-4d0c-9268-cc8402354532"
          },
          "target": {
            "block": "a6cce9a4-ff0f-4d81-8b0c-af16eeab0f76",
            "port": "8e6bcd2c-4b42-45f5-a49d-9f0710f2ed46"
          },
          "vertices": [
            {
              "x": 568,
              "y": 104
            }
          ],
          "size": 13
        },
        {
          "source": {
            "block": "5a1d76da-7fbd-4587-9942-307fa6823ed4",
            "port": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "cd410d7a-c16d-4dfa-bc87-14b47b830714"
          }
        },
        {
          "source": {
            "block": "5a261a41-d2ee-44e9-ab6f-64319d69d254",
            "port": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45"
          },
          "target": {
            "block": "f55757e7-dab0-4422-83b3-2cf5fdb8133d",
            "port": "338b5d2f-c57a-448e-9e5b-d906f74e0fb4"
          }
        },
        {
          "source": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "6c7d6095-1295-4de4-95b4-3932d19eca6c"
          },
          "target": {
            "block": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
            "port": "3972f4a3-d45c-404c-b539-c86d8a464059"
          },
          "vertices": [
            {
              "x": 1168,
              "y": 416
            }
          ]
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
            "port": "e3330317-c1e1-4847-8ce7-48a4683af59f"
          },
          "vertices": [
            {
              "x": 1264,
              "y": 304
            }
          ]
        },
        {
          "source": {
            "block": "060cc8bf-3d20-4c4f-a50a-2b0c86a80fa6",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
            "port": "c6aedbaa-642d-4188-a731-9e9687b22227"
          },
          "vertices": [
            {
              "x": 1224,
              "y": 136
            }
          ]
        },
        {
          "source": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "620f3a87-b603-48c2-a9db-3c3b8ce3f205"
          },
          "target": {
            "block": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
            "port": "2730a968-5f45-41e7-a0e6-1c3c610215aa"
          },
          "vertices": [
            {
              "x": 1144,
              "y": 440
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "3b5982a3-dbd5-49c4-847b-18dd1c3603d8"
          },
          "vertices": [
            {
              "x": 904,
              "y": 32
            }
          ]
        },
        {
          "source": {
            "block": "3185e6b3-bc0d-496b-8d66-4907d05a7054",
            "port": "ed77abcc-9687-4a31-a53d-02cb20b7ee74"
          },
          "target": {
            "block": "7a386420-66b9-4a8f-9904-c07cecb0e2f9",
            "port": "c4ddd126-7d64-451c-a9fa-e755548849c4"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {
    "e1dd3b2cd19148b21c540060a3ea83704d6c07b4": {
      "package": {
        "name": "12MHz to 100MHz",
        "version": "1.0",
        "description": "PLL converts the 12MHz clock to 100MHz",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22448.751%22%20height=%22335.141%22%20viewBox=%220%200%20118.73199%2088.672836%22%3E%3Cg%20transform=%22translate(24.511%20-4.89)%22%3E%3Cimage%20width=%2274.083%22%20height=%2274.083%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20x=%22-24.511%22%20y=%2219.479%22/%3E%3Ctext%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2242.419%22%20y=%2220.489%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2242.419%22%20y=%2220.489%22%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2222.578%22%20font-family=%22Gill%20Sans%22%3E100%20MHz%3C/tspan%3E%3C/text%3E%3Crect%20ry=%221.388%22%20y=%2232.13%22%20x=%2224.096%22%20height=%2237.462%22%20width=%2215.187%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cg%20transform=%22matrix(4.94259%200%200%204.94259%204.872%2026.497)%22%3E%3Cpath%20d=%22M4.252%207.643H5.5v-5.84H7.16v5.84h1.662v-5.84h1.663v5.84h1.662v-5.84h1.247%22%20fill=%22none%22%20stroke=%22#0000b7%22%20stroke-width=%22.586%22/%3E%3Cellipse%20ry=%222.457%22%20rx=%223.307%22%20cy=%226.237%22%20cx=%2212.388%22%20fill=%22#fff%22/%3E%3Ctext%20transform=%22scale(1.02972%20.97114)%22%20y=%228.096%22%20x=%229.025%22%20style=%22line-height:1.25%22%20font-weight=%22400%22%20font-size=%226.171%22%20font-family=%22sans-serif%22%20stroke-width=%22.154%22%3E%3Ctspan%20y=%228.096%22%20x=%229.025%22%3Eclk%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "7109ab6e-72a5-4bd1-aea2-a7e0c9dff7fc",
              "type": "basic.input",
              "data": {
                "name": "clk_brd",
                "clock": true
              },
              "position": {
                "x": 472,
                "y": 200
              }
            },
            {
              "id": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63",
              "type": "basic.output",
              "data": {
                "name": "clk100mhz"
              },
              "position": {
                "x": 1144,
                "y": 200
              }
            },
            {
              "id": "cfaca397-a70c-414a-9be0-bd6a7f9a1f60",
              "type": "basic.code",
              "data": {
                "code": "\r\n  // 100 MHz clock\r\n   SB_PLL40_CORE\r\n            #(.FEEDBACK_PATH(\"SIMPLE\"),\r\n                .PLLOUT_SELECT(\"GENCLK\"),\r\n                .DIVR(4'd2),\r\n                .DIVF(6'd49),\r\n                .DIVQ(3'd1),\r\n                .FILTER_RANGE(3'b001)\r\n            )\r\n            uut\r\n            (\r\n                .REFERENCECLK(clk_brd),\r\n                .PLLOUTCORE(clk100mhz),\r\n                .RESETB(1'b1),\r\n                .BYPASS(1'b0)\r\n             );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk_brd"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk100mhz"
                    }
                  ]
                }
              },
              "position": {
                "x": 632,
                "y": 64
              },
              "size": {
                "width": 456,
                "height": 328
              }
            },
            {
              "id": "7c187e92-fbed-48b4-93b2-bf7fef28e4ce",
              "type": "basic.info",
              "data": {
                "info": "Generates a 100MHz clk from a 12MHz input clock",
                "readonly": false
              },
              "position": {
                "x": 640,
                "y": 16
              },
              "size": {
                "width": 424,
                "height": 40
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cfaca397-a70c-414a-9be0-bd6a7f9a1f60",
                "port": "clk100mhz"
              },
              "target": {
                "block": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7109ab6e-72a5-4bd1-aea2-a7e0c9dff7fc",
                "port": "out"
              },
              "target": {
                "block": "cfaca397-a70c-414a-9be0-bd6a7f9a1f60",
                "port": "clk_brd"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "827cf4ce5ced29aeecb0d284fa83a3df1d466d65": {
      "package": {
        "name": "OV7670_iface",
        "version": "1.0",
        "description": "",
        "author": "Felipe Machado (URJC)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22336.288%22%20height=%22326.637%22%20viewBox=%220%200%2088.976257%2086.4226%22%3E%3Cg%20transform=%22translate(-.441%205.295)%22%3E%3Cimage%20y=%227.044%22%20x=%22.441%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20preserveAspectRatio=%22none%22%20height=%2274.083%22%20width=%2274.083%22/%3E%3Cpath%20d=%22M74.776%2039.762A15.512%2014.438%200%200%201%2058.975%2053.92a15.512%2014.438%200%200%201-15.217-14.701%2015.512%2014.438%200%200%201%2015.788-14.17%2015.512%2014.438%200%200%201%2015.23%2014.69%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22%20stroke=%22#a60000%22%20stroke-width=%22.265%22%20stroke-linecap=%22round%22/%3E%3Cimage%20y=%227.401%22%20x=%2228.173%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAACAAAAAgACAQAAAAYrhu7AAAABGdBTUEAALGPC/xhBQAAACBjSFJN%20AAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAHVDSURB%20VHja7N13lJ1lofbhe0wj1CC9hd57kxYENKAgTYSISLGClWA7xA7qUaJ8SlGORBEFCxJApIkQBCER%20REIRKYIU0UgoIYEQ0me+P0SkpEzZ5S3X5VpnqcuzkF+cXe559rMTAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgJ7qkACg8N6YVUQACu6J3CgCgAEAgL5YOpOyrAxAwT2f%20NfKcDABF9joJAAru3d7+AyWwdA4XAaDYnAAAKLrbsr0IQAncmW1FACgyJwAAim0Hb/+BktjG4xWA%20AQCA3vugBIBHLAAawUcAAIrMBYBAmbgIEKDQnAAAKDIXAAJl4iJAgEJzAgCgyFwACJSLiwABCswJ%20AIDicgEgUDYuAgQwAADQC67TAjxyAdAwPgIAUFQuAATKyEWAAIXlBABAUbkAECgjFwECFJYTAABF%205QJAoJxcBAhQUE4AABSTCwCBsnIRIIABAIAecI0W4BEMgIbyEQCAInIBIFBmLgIEKCQnAACKyAWA%20QJm5CBCgkJwAACgiFwAC5eYiQIACcgIAoHhcAAiUnYsAAQwAAHSD67MAj2QANJyPAAAUjQsAgSpw%20ESBA4TgBAFA0LgAEqsBFgACF4wQAQNG4ABCoBhcBAhSMEwAAxeICQKAqXAQIYAAAYBFcmwV4RAOg%20KXwEAKBIXAAIVImLAAEKxQkAgCJxASBQJS4CBCgUJwAAisQFgEC1uAgQoECcAAAoDhcAAlXjIkAA%20AwAAC+C6LMAjGwBN4yMAAEXhAkCgilwECFAYTgAAFIULAIEqchEgQGE4AQBQFC4ABKrJRYAABeEE%20AEAxuAAQqCoXAQIYAAB4GddkAR7hAGgqHwEAKAIXAAJV5iJAgEJwAgCgCFwACFSZiwABCsEJAIAi%20cAEgUG0uAgQoACcAANrPBYBA1bkIEMAAAEBcjwV4pAOgBXwEAKDdXAAI1IGLAAHazgkAgHZzASBQ%20By4CBGg7JwAA2s0FgEA9uAgQoM2cAABoLxcAAnXhIkAAAwBArbkWC/CIB0BL+AgAQDu5ABCoExcB%20ArSVEwAA7eQCQKBOXAQI0FZOAAC0kwsAgXpxESBAGzkBANA+LgAE6sZFgAAGAIBach0W4JEPgJbx%20EQCAdnEBIFBHLgIEaBsnAADaxQWAQB25CBCgbZwAAGgXFwAC9eQiQIA2cQIAoD1cAAjUlYsAAQwA%20ALXiGizAIyAALeUjAADt4AJAoM5cBAjQFk4AALSDCwCBOnMRIEBbOAEA0A4uAATqzUWAAG3gBABA%2067kAEKg7FwECGAAAasH1VwAeCQFazkcAAFrNBYAALgIEaAMnAABazQWAAC4CBGgDJwAAWs0FgACJ%20iwABWs4JAIDWcgEgwL+5CBDAAABQaa69AvCICNAWPgIA0EouAAT4LxcBArSUEwAAreQCQID/chEg%20QEs5AQDQSi4ABHg5FwECtJATAACt4wJAgFdyESCAAQCgklx3BeCREaBtfAQAoFVcAAjwWi4CBGgZ%20JwAAWsUFgACv5SJAgJZxAgCgVVwACLAgLgIEaBEnAABawwWAAAvmIkAAAwBApbjmCsAjJEBb+QgA%20QCu4ABBg4VwECNASTgAAtIILAAEWzkWAAC3hBABAK7gAEGBRXAQI0AJOAAA0nwsAARbNRYAABgCA%20SnC9FYBHSoC28xEAgGZzASDA4rkIEKDpnAAAaDYXAAIsnosAAZrOCQCAZnMBIEB3uAgQoMmcAABo%20LhcAAnSPiwABDAAApeZaKwCPmACF4CMAAM3kAkCA7nMRIEBTOQEA0EwuAAToPhcBAjSVEwAAzeQC%20QICecBEgQBM5AQDQPC4ABOgZFwECGAAASsl1VgAeOQEKw0cAAJrFBYAAPeciQICmcQIAoFlcAAjQ%20cy4CBGgaJwAAmsUFgAC94SJAgCZxAgCgOVwACNA7LgIEMAAAlIprrAA8ggIUio8AADSDCwABes9F%20gABN4QQAQDO4ABCg91wECNAUTgAANIMLAAH6wkWAAE3gBABA47kAEKBvXAQIYAAAKAXXVwF4JAUo%20HB8BAGg0FwAC9J2LAAEazgkAgEZzASBA37kIEKDhnAAAaDQXAAI0gosAARrMCQCAxnIBIEBjuAgQ%20wAAAUGiurQLwiApQSD4CANBILgAEaBwXAQI0lBMAAI3kAkCAxnERIEBDOQEA0EguAARoJBcBAjSQ%20EwAAjeMCQIDGchEggAEAoJBcVwXgkRWgsHwEAKBRXAAI0HguAgRoGCcAABrFBYAAjeciQICGcQIA%20oFFcAAjQDC4CBGgQJwAAGsMFgADN4SJAAAMAQKG4pgrAIyxAofkIAEAjuAAQoHlcBAjQEE4AADSC%20CwABmsdFgAAN4QQAQCO4ABCgmVwECNAATgAA9J0LAAGay0WAAAYAgEJwPRWAR1qAwvMRAIC+cgEg%20QPO5CBCgz5wAAOgrFwACNJ+LAAH6zAkAgL5yASBAK7gIEKCPnAAA6BsXAAK0hosAAQwAAG3lWioA%20j7gApeAjAAB94QJAgNZxESBAnzgBANAXLgAEaB0XAQL0iRMAAH3hAkCAVnIRIEAfOAEA0HsuAARo%20LRcBAhgAANrCdVQAHnkBSsNHAAB6ywWAAK3nIkCAXnMCAKC3XAAI0HouAgToNScAAHrLBYAA7eAi%20QIBecgIAoHdcAAjQHi4CBDAAALSUa6gAPAIDlIqPAAD0hgsAAdrHRYAAveIEAEBvuAAQoH1cBAjQ%20K04AAPSGCwAB2slFgAC94AQAQM+5ABCgvVwECGAAAGgJ108BeCQGKB0fAQDoKRcAArSfiwABeswJ%20AICecgEgQPu5CBCgx5wAAOgpFwACFIGLAAF6yAkAgJ5xASBAMbgIEMAAANBUrp0C8IgMUEo+AgDQ%20Ey4ABCgOFwEC9IgTAAA94QJAgOJwESBAjzgBANATLgAEKBIXAQL0gBMAAN3nAkCAYnERIIABAKAp%20XDcF4JEZoLR8BACgu1wACFA8LgIE6DYnAAC6ywWAAMXjIkCAbnMCAKC7XAAIUEQuAgToJicAALrH%20BYAAxeQiQAADAEBDuWYKwCM0QKn5CABAd7gAEKC4XAQI0C1OAAB0hwsAAYrLRYAA3eIEAEB3uAAQ%20oMhcBAjQDU4AACyeCwABis1FgAAGAICGcL0UgEdqgNLzEQCAxXEBIEDxuQgQYLGcAABYHBcAAhSf%20iwABFssJAIDFcQEgQBm4CBBgMZwAAFg0FwAClIOLAAEMAAB94lopAI/YAJXgIwAAi+ICQIDycBEg%20wCI5AQCwKC4ABCgPFwECLJITAACL4gJAgDJxESDAIjgBALBwLgAEKBcXAQIYAAB6xXVSAB65ASrD%20RwAAFsYFgADl4yJAgIVyAgBgYVwACFA+LgIEWCgnAAAWxgWAAGXkIkCAhXACAGDBXAAIUE4uAgQw%20AAD0iGukADyCA1SKjwAALIgLAAHKy0WAAAvkBADAgrgAEKC8XAQIsEBOAAAsiAsAAcrMRYAAC+AE%20AMBruQAQoNxcBAhgAADoFtdHAXgkB6gcHwEAeDUXAAKUn4sAAV7DCQCAV3MBIED5uQgQ4DWcAAB4%20NRcAAlSBiwABXsUJAIBXcgEgQDW4CBDAAACwSK6NAvCIDlBJPgIA8HIuAASoDhcBAryCEwAAL+cC%20QIDqcBEgwCs4AQDwci4ABKgSFwECvIwTAAD/5QJAgGpxESCAAQBggVwXBeCRHaCyfAQA4D9cAAhQ%20PS4CBHiJEwAA/+ECQIDqcREgwEucAAD4DxcAAlSRiwABXuQEAMC/uQAQoJpcBAhgAAB4BddEAXiE%20B6g0HwEASFwACFBlLgIESOIEAMC/uQAQoLpcBAiQxAkAgH9zASBAlbkIECBOAAAkLgAEqDoXAQIY%20AACSuB4KwCM9QA34CACACwABqs9FgABOAAC4ABCgBlwECOAEAIALAAFqwUWAQO05AQDUnQsAAerB%20RYCAAUACoOZcCwXgER+gFnwEAKg3FwAC1IeLAIGacwIAqDcXAALUh4sAgZpzAgCoNxcAAtSJiwCB%20WnMCAKgzFwAC1IuLAAEDAEBNuQ4KwCM/QG34CABQXy4ABKgfFwECNeYEAFBfLgAEqB8XAQIGAIAa%20cgwUoI6OlQCoKx8BqIdVsk7WyTpZKytkhayUZbN8koFZShoAAKiVGZmTZGqezdN5OlPyjzyaR/No%20npTGAEB59c/W2S5bZctsleXlAAAAFmFq7srduTsT8+fMk8MAQDkskd2ze4blDX6/DwAA9Njz+WMm%205KbclNliGAAoqnWzX/bNXllSCgAAoI9m5Pr8JlflUSkMABTJWjkkh2VXf54AAECD3ZuxOT8PCWEA%20oN2WzIh8wFt/AACgiboyIT/I2MyUwgBAe2yRD+fdWU4IAACgBablp/l+7hHCAEBrDcuJeZs/PwAA%20oMUmZHSuSJcQBgCa73U5LJ/LVkIAAABtcmf+NxcbAQwANNfwjM52MgAAAG32l3wlFxkBDAA0x+75%20dnaQAQAAKIhb88lMkKEsXidBSayZ8/J7b/8BAIACeUPG5/KsK0Q59JOgBAbmi/lltndeAwAAKJyN%20cmw6cnM6pSg6bymLb5f8IJvLAAAAFNhf8sHcIkOx+QhAsS2ZMzLe238AAKDgtsj4fCeDhSgyJwCK%20/SP082wpAwAAUBL35d25Q4aicgdAUb0un84vs7oQAABAaayU92RG/ihEMTkBUEzL5ic5WAYAAKCE%20rsyRmSaDAYDu2CS/yiYyAAAAJfW3HJK7ZSgalwAWz4jc5u0/AABQYhvkD3mHDEXjDoCiGZkfZJAM%20AABAqQ3MYenIDUIYAFjYn8b38kUfywAAACqgI3tmrfwmnVIU54+EolgiY7O/DAAAQIVclhGZLYMB%20gJdbMpdmbxkAAICKuSEHZroMBgD+Y7lcmd1kAAAAKmh89s+zMhgASJIlc3V2lwEAAKioW7KPUwDt%2052sA229wrvD2HwAAqLCdc2kGy2AAqLuBuSR7yQAAAFTamzI2A2VoL18D2F4dOTfvkAEAAKi8jbJh%20LpHBAFBfX83HRQAAAGphi3Tl9zIYAOrpvfl/IgAAALWxRx7NXTK0i28BaJ/dcn0GyAAAANTInOyR%20W2QwANTLKpmYNWQAAABqZnK2z79kaAffAtAeA3Kht/8AAEANrer7ANrFHQDt8c28SwQAAKCW1srA%20jJOh9XwEoB32ztXOXgAAALXVmX1ynQwGgOpbPndlLRkAAIAam5StM0WG1vJ76Nb7obf/AABAza2R%20/xPBAFB1I3KICAAAQO0d5r1Rq/kIQGu9PvdmFRkAAAAyOZtlqgyt41sAWuusDBMBAAAgydJZPlfI%200DpOALTSsNyoOAAAwIu6smtukcEAUD2vyy3ZUQYAAICXTMwb0ilDq96U0irv8fYfAADgFbbPu0Vo%20FScAWmXpPJDVZAAAAHiFSdkoL8jQCk4AtMrx3v4DAAC8xhr5qAit4QRAayyXh/N6GQAAAF5jStbN%20dBmazwmA1viEt/8AAAALtEKOF6EVnABoheXyWJaVAQAAYIGmZm1nAJrPCYBWONbbfwAAgIVaPu8X%20ofmcAGi+AflbhsoAAACwUH/PBpknQ3M5AdB8I7z9BwAAWKS1c6gIBoDy+7gEAAAA3jm1m48ANNuW%20+bMIAAAAi7VF7hGhmZwAaLZjJQAAAOiGD0jQXE4ANNfgTMryMgAAACzWlKyZWTI0jxMAzXWQt/8A%20AADdskL2E8EAUF4jJAAAAPAOqgh8BKCZlskTGSwDAABAt7yQlTNDhmZxAqCZDvD2HwAAoNuWzNtE%20MACU00ESAAAA9MCBEjSPjwA0T788mdfLAAAA0G1PZ5V0ytAcTgA0z07e/gMAAPTIitleBANA+ewr%20AQAAgHdSBoDqe5MEAAAA3kkVhTsAmmVQpmUJGQAAAHpkZoZkjgzN4ARAs+zg7T8AAECPDc62IhgA%20ymU3CQAAALybMgBU3w4SAAAA9MIbJDAAlMvWEgAAAPTCVhI0h0sAm2NwpqefDAAAAD02P8tkpgyN%205wRAc2zp7T8AAECv9MumIhgAymMzCQAAAHppcwkMAOWxrgQAAAC9tI4EBgD/cwUAAKg+v1I1ABgA%20AAAAvKPCAFAka0sAAABgACgSXwPYHC9ksAgAAAC9MiNLi9B4TgA0w1Le/gMAAPThPdUSIhgAymEF%20CQAAALyrMgBU3+slAAAAMAAYAKpvGQkAAAD6wB0ABoCSGCgBAABAHwySwADgf6oAAADeVWEAKAgn%20AAAAALyrMgDUQH8JAAAADAAGgOrrkAAAAMC7KgMAAAAAYAAAAAAADAAAAACAAQAAAAAwAAAAAIAB%20AAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAABgAAAAAAAMAAAAAGAAAAAAAAwAAAAAgAEA%20AAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAAAAMAAAAAYAAAAAAADAAAAACAAQAA%20AAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAwAAAAAAAGAAAAAAAAwAAAABgAAAAAAAMAAAAAIABAAAA%20ADAAAAAAAAYAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAAAAwAAAAAgAEAAAAA%20MAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAADAAAAABgAAAAAAAM%20AAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAAAYAAAAAAADAAAAAGAAAAAAAAwA%20AAAAgAEAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAADAAA%20AACAAQAAAAAwAAAAAAAGAAAAADAAAAAAAAYAAAAAwAAAAAAAFFJ/CQCgYp7N7DyfZFq6knRlWpKk%20M8++4j/1uiz34muBZZIkA7J0kuUzKEtKCAAGAACgvWZkaqbmmVf83+cyO9MyM7MyLbPyQgP+Kstl%20UJbOMlkiy2SpLJvl8/os/4r/O9AfBQAYAACAxrzV/1eeyOQ8niczKU9mcibn6cxuyV/72SRPLvI/%20sVRWyapZOWtk5az24j9bKYP8sQGAAQAAWJS5+Wcey9/z9zyWf+SxPJYZhf7vOyMP5+HX/LsrZs0M%20zToZ+uI/VvMHCwAGAACouyl5MA/mwfwtj+XRPJ7OCvw9PZ2nc+fL/vWgDM3QrJMNs0E2zIYZ7I8d%20AAwAAFB9z+Wv+VsezAN5MH/LMzX4O56dB/PgS/+qI2u+OARskI2ygXsEAMAAAADVMSd/yz25N/fk%203txXid/y915X/pF/5PqXXoMMzebZLJtns2zh9gAAMAAAQPl05sHckbtzb+7OIzV/079w8/JwHs7l%20SZJB2SybZYtsme3cGwAABgAAKLb5+Wvuyb2ZmAm1ON7fSLNzR+548Z8vn82zfbbP9tk0HdIAgAEA%20AIqhM/fmT5mY23NXXpCjAaZmfMYnSVbKdtku2+cNWUsWADAAAEB7TM+fMz4T/La/iZ7Kb/PbJMlq%202SHbZ7fs5nsEAMAAAACt8XAmZGLG5w6f7W+hx3N5Lk/SPxtntwzL9tlMFAAwAABA483PXzM+43Kd%203/e31bzck3syJslqGZbhGWYIAAADAAA05o3/nZmQ8RmXqWIUyuMZm7GGAAAwAABA33TlzozLDbkp%2008UoxRCwRvbKntnHdYEAYAAAgO55KjdkXK7MJClKZVJ+mp8mWS/DMzxvybKSAIABAAAWZF7+mMsz%20LrenS4wSezhjMib9s3P2z/Bslw5JAMAAAAD/9lguz5X5fV6QojLmZXzGJ1k1+2R/5wEAwAAAQN3d%20m8tzRSb4nX9lTc55OS/9skv2z8HZWBAADAAAUC+zMj5X5CKf86+J+Rmf8RmV9XJADssueZ0kABgA%20AKDqpubX+VXGOe5fSw/n9JyeVXJA3pE3Z4AgABgAAKCKnsmVGZvfZo4UNfdEfpgfZkgOzGHZO4ME%20AcAAAABVMSVXZWyuzlwpeMm0nJfzsmTenMNySJYSBAADAACU2VMZm4tyY+ZLwQK9kMtzeT6a/XNY%209nMaAAADAACUz6yMy3m51G/96Ybp+UV+keVyUA7LvuknCAAGAAAog87cnPPyi0yXgh55NuflvKyR%20Q3NUtpcDgCryRTgAVMe9GZU1MyxjvP2nlybl9OyQLXJyHhEDgKpxAgCAKpic83Ju7heChrgn9+Qr%202SvvzTuyhBwAVIUTAACU2/yMy4gMzYne/tNQnbkuR2bVHJcJYgBgAACA9nogJ2e97J2xLvujSZ7N%20mAzL5hmdp8QAwAAAAK33fM7N7tk4J+UxMWi6ezMqa+XwXJNOMQAwAABAqzyQUVk778t4KWih2fll%203pKhOdlZAAAMAADQbPNzRfbOJhmdZ8SgLSblpKyVERknBQAGAABojskZnXVzQMalSwzaanbGZu9s%20nzGZIQYABgAAaJyuXJdDs1ZG5R9iUBi357ismU/kASkAMAAAQN/NzvnZOsNzceaJQeFMy2nZJHvn%20CudSADAAAEDvPZnRWS9H524pKLCujMsB2SRnZKYYABgAAKCn/pzjsk5G5V9SUAoPZGTWyahMkgIA%20AwAAdE9XxuXAbJMxfp9Kyfz7zMoxzqwAYAAAgMWZk3OzWfbO5T5RTWn/N3xets6++b0UABgAAGDB%20ZuSMbJD35X4pKLmuXJ09s33GGrIAMAAAwCs9lzOyQUb6mj8q5PaMyFY53/dXAGAAAIB/eyInZ+2M%20zGQpqJy/5OhsmDPyghQAGAAAqLdHcmzWzkmZJgWV9WhGZr18M89LAYABAIB6eiwnZNP8ILOloPKe%20yIlZJyfnOSkAMAAAUL83/xvldG/+qZEpOSnrGwEAMAAAUK83/xt7808tPW0EAMAAAEA9/OPFN/+z%20pKDmI8BoFwMCYAAAoKqezPHZwJt/SPJ0RmX9fC9zpQDAAABAtTyf0dkwZ2aOFPCiyflYNsiYzJcC%20AAMAANUwJ2OyQUb51DO8xmM5LltnrBAAGAAAKLvOjM2mOS5PSAELcU9GZNfcKAQABgAAymtctsuI%20PCwELMbN2SN75y4hADAAAFA+E7OnNzTQA+OyXY7JZCEAMAAAUB6Tclx2yu+FgB7pzHnZICf7pgwA%20DAAAlMELGZ1N3WwOvTQjJ2XDnJ8uKQAwAABQXF0Zm80yKtOlgD74Z47OThkvBAAGAACK6ZbsmhH5%20uxDQAH/KGzMijwgBgAEAgGJ5LIdll9wiBDRMV8ZmczcCAGAAAKA45uaMbJGLhICGm/nijQAAYAAA%20oO1+l20y0qf+oWn+maMzPPcLAYABAIB2vjE5Jm/OvUJAk12XrXJCnhcCAAMAAK03N2dk05wnBLTo%20J+70bOLDAAAYAABotWuyaUb6fSS01KQcnX3zsBAAGAAAaI1nclzemoeEgDa4Olvk5MwRAgADAADN%201ZXzs3HGpEsKaJOZOSk7+NJNAAwAADTT37JPjs7TQkCb3Z1dc1yeEwIAAwAAjTc3o7NlxgkBhdCV%20MS4FBMAAAEDj3ZStMyqzhIACeTxH5+2ZJAQABgAAGmNmRmXP3CcEFNCl2dytHAAYAABohAnZJqPT%20KQQU1LM5LvvmMSEAMAAA0HsvZFTemAeEgIL7bbZ0DgAAAwAAvTXe7/6hNJ7LcXmrcwAAGAAA6KkX%20Mip75EEhoESuyZY5w2gHgAEAgO67IZv73T+U0HMZmbfkH0IAYAAAYPHm5uQMz6NCQEmNy5YZIwMA%20BgAAFu2e7JSTMl8IKLFnc1xG5BkhADAAALBgXTkj2+cOIaACxmbz/EYGAAwAALzWY3lzRma2EFAR%20k/O2HJcXhADAAADAy43NtrleBqiUrozJjk71AGAAAOA/ns27fF4YKure7JJvp0sIAAwAANyWHXKB%20DFBZs/Op7JPJQgBgAACos66ckd3yNyGg4sZlm1wjAwAGAIC6ejoHZGTmCAE18ETemhMyVwgAAwAA%209XNDts6VMkBtdOX07J5HhAAwAABQJ/NzcobnX0JAzfwx22asDAAGAADqYlL2ykmZLwTU0LN5Zz7h%20owAABgAA6uDG7JCbZIDa6spp2TV/FwLAAABAtV/4n5Hhvg4Mau+27JBrZQAwAABQVc/lsIx09BdI%208nT2zcnpFALAAABA9dyZ7XKxDMCL5uekHJipQgAYAAColvOzWx6SAXiFK7NNbpUBwAAAQFXMzgdz%20dF4QAniNx7JnzpUBwAAAQBU8nj3zQxmAhZiZ9+U4t4MAGAAAKLvbs3NukQFYpDF5c56UAcAAAEB5%20/SLD8pgMwGLdlB0yUQYAAwAAZTQ/o3JEZgoBdMs/skcukgHAAABA2TyTfTNaBqAHZmRERqVTCAAD%20AADl8dfslmtlAHqoK6NzQJ4VAsAAAEA5XJkdc78MQK9cld3yqAwABgAAim9MDs50GYBeuyc75CYZ%20AAwAABTZ/IzMcZknBNAnU7J3fiYDgAEAgKJ6Pm/PGTIADTA7R+XkdAkBYAAAoHgm5Y25XAagQbpy%20Uo7ILCEADAAAFMud2Tl3yAA01AV5c56SAcAAAEBxXJRd808ZgIb7Q3bLgzIAGAAAKIYz887MlAFo%20igezcybIAGAAAKDdunJyjk+nEEDTPJN9coUMAAYAANppXj6Yk2QAmuyFHJwxMgAYAABolxk5MOfI%20ALTA/ByXUTIAGAAAaIcnskd+IwPQMqPzvsyTAcAAAEBrPZzdM1EGoKXOzTvyggwABgAAWue27OyL%20uYA2uCz7ZKoMAAYAAFrjxrw5T8kAtMWE7J5/yQBgAACg+a7MW/OcDEDb3JNheUgGAAMAAM11Qd6e%20mTIAbfVIds9fZAAwAADQPGfn3ZkrA9B2j2eP3CoDgAEAgOY4Ix9OpwxAITyTfTJeBgADAACNNzoj%200yUDUBjP5i25WgYAAwAAjdSVj2aUDEDBvJCDcrEMAAYAABr39v9jOUsGoIDm5J35qQwABgAAGvP2%20/6Pe/gOFNT/vyXkyAJRDfwkACv3S+v35iQxAoR+n3pfOvEcIgOJzAgCg2C+rvf0HyvBY9X8yABgA%20AOj9S2oHa4Fy6MpH8z0ZAAwAAPTu7f8xrtYCSjQBfDxnygBQbO4AACiiuTk8l8gAlGoCGJnk40IA%20FJcTAADFMz9He/sPlHIC8K0lAAYAALqtM+/JBTIApZwAPpYxMgAYAADo3svnj/jsP1Dix7AP52cy%20ABgAAFj8S+eP5WwZgBLrzDFOMQEYAABYnFE+PwuU3vwcnctkADAAALBwn8s3RQAqYG4Oy5UyABgA%20AFiwk/INEYCKmJPDcr0MAAYAAF7r1JwsAlAhM3Ng/igDgAEAgFc6P/8jAlAxz+etuUsGAAMAAP91%20Wd6XLhmAypmW/fKIDAAGAAD+7fq8M/NkACrpX9k7k2UAMAAAkNyVQzJLBqCyHso+mSoDgAEAoO4e%20zFsyTQag0u7O2zJDBgADAECd/TN75wkZgMq7OYdnrgwABgCAupqSvfN3GYBauCIfcNkpgAEAoJ5m%205qDcLwNQG+fl8yIAGAAA6qczR2aCDECtfCPfFQHAAABQN5/IJSIAtXNCfiUCgAEAoE6+lTNEAGpo%20ft6dm2UAMAAA1MWFGSUCUFMzc2AekAHAAABQBzfm6HTKANTW09kvT8oAYAAAqLp7c3BmywDU2kPZ%20PzNkADAAAFTZE9kvU2UAau9PzkIBGAAAqmxW3p6/ywCQ5JJ8UQQAAwBANXXlg+6+BnjJ1/NDEQAM%20AABV9LX8VASAl/lofi8CgAEAoGouyUkiALzCnLwjD8kAYAAAqJLbXXcFsABTckCelQHAAABQFY/n%20IF94BbBA9+XwzJcBwAAAUAUzc3D+KQPAQlydz4gAYAAAKL+uvCe3ygCwCN/Jj0QAMAAAlN3oXCgC%20wGJ8xFQKYAAAKLdr8wURABZrdg7Ov2QAMAAAlNWjOcLVVgDd8ngOyxwZAAwAAGX0fA7M0zIAdNMf%208kkRAAwAAOXTlffnbhkAeuB7+aEIAAYAgLI5xeV/AD32MZcBAhgAAMrl2nxRBIAecxkggAEAoFQe%20zeEu/wPolcdzRObJAGAAACiDuTkiz8gA0Eu/z5dEADAAAJTBJ3KzCAB9cEp+LQKAAQCg6C7M90QA%206JOuvDePyABgAAAosgfzQREA+mxq3pnZMgAYAACKalbemedkAGiAP+UzIgAYAACK6iO5QwSABjkz%20PxMBwAAAUEQ/yrkiADTQh3K/CAAGAICiuScfFwGgoZ7P4ZklA4ABAKBIZufdeUEGgAa7KyeKAGAA%20ACiST+UuEQCa4MxcJgKAAQCgKK7KWSIANEVXPpDHZQAwAAAUwaQcky4ZAJrkqRyRThkADAAA7daZ%20Y/K0DABNdENOFQHAAADQbqfkOhEAmuzzuUUEAAMAQDv9KSeJANB083JknpMBwAAA0C7Tc3jmygDQ%20Ag/l4yIAGAAA2uUTeVgEgBY5L2NFADAAALTD5TlHBIAW+kgmiwBgAABotadzrAgAHnkBDAAAVef3%20UACt5+wVgAEAoMXO90lUgLYYmb+JAGAAAGiVSRkpAkBbzMh7Ml8GAAMAQCt05QOZKgNAm0zId0QA%20MAAAtMJ3c7UIAG30hdwtAoABAKDZHsnnRABoq9k5OnNlADAAADRTV47N8zIAtNmd+bYIAAYAgGY6%20O+NEACiAL+deEQAMAADN8q98VgSAQpidD6RTBgADAEBzfDjTRAAoiJtzlggABgCAZjgvl4kAUCCj%208rAIAAYAgEZ7Kp8WAaBQZuSD6ZIBwAAA0FgfzlMiABTM73KuCAAGAIBGuiQXiwBQQJ/K4yIAGAAA%20GmV6jhcBoJCm5ZMiABgAABrlC5kkAkBBXZArRQAwAAA0wsR8TwSAAhuZmSIAGAAA+qozH8t8GQAK%207KF8XQQAAwBAX30vt4gAUHDfzH0iABgAAPpicr4kAkDhzcmH0iUDgAEAoPdGZpoIACVwY84TAcAA%20ANBbv82FIgCUxKfytAgABgCA3piVj4oAUBpT8jkRAAwAAL1xah4SAaBEzsmtIgAYAAB66p85RQSA%20UunMCa4CBDAAAPTUZzJDBICSuTk/FQHAAADQE+PzSxEASugzeVYEAAMAQHfNz8ccIgUopSfydREA%20DAAA3fX93CUCQEmdlr+KALBg/SUAeIUp+ZIIlNyyWTUrZaWskpWzUpbPoCyVgVkm/bNs+mW5vC5D%200vHSf3p65uW5zM+0dGVqujIt8zM1T+XpPJnJeSpP5ylnYiiROflErpIBwAAAsHhfzDMiUCpLZf0X%20/zE0q2SVrJRBPfr/XybJ8ov8T8zPU3kqT+YfeSgP5eE8lKdlp8B+k8tzgAwABgCARbs7Y0Sg8JbM%20Ftko6734tn/Vpv/1+mXVV/1Vns1DL/3jLqMZhfOpvDUDZAAwAAAsymcyXwQKaki2yPbZPptlywxs%2083+X5bJdtnvpXz2ee3JvJmZi7kunPygK4MH8X46XAcAAALBw1+S3IlAwq2eXbJttsk3WKOx/x9Wy%20WoYnSZ7Nnbkzd+bW3OfeANrqKzk6Q2QAMAAALFhnRolAgd7475bhGZZNX3ZdX/Etlz2yR5Lkudya%20cZmQWzPHHyZtMCXfyGgZAAwAAAt2bu4QgbZbL8MzLHtkaMn/PpbN8AxPMiN3ZnzGZUJm+sOlpU7L%20sVlfBoCX65CgCQ7LhSJA6czIxpkkA22zWvbLfnlTZQ8tz87NuSpX5l5/1LTMu/JzEaDERmSsCI3m%20BADAv53q7T9tsnn2zwHZJa+r9N/loOyZPfPNPJprMi6/yfP+4Gm6C/Lx7CIDwH85AdAMTgBA+TyZ%20DTJdBlpqqbwp+2f/rF7Dv/eZmZAr8qs85n8GNNUumeDVLpSWEwBN8DoJAJJ80dt/Wmi5vCdXZ2ou%20y7G1fPufDM7wnJa/Z2L+p/S3HVBkN+fXIgAYAABe7v6cIwIteuN7aC7J5Jybt2SAHNkuo/NobspH%20s5IYNMVnM18EAAMAwH99yQtEmq5fhuXsTM7YvD1LyPEyHRmW7+bxjM+xWU4OGuz+nCcCgAEA4D9u%20z0Ui0FQ75axMzk05NsuKsRD9slvOzuRcnINcUUxDnZzZIgAYAAD+7QvpEoEmWSbH5vbckg9nRTG6%20YYkckkvzWE7JOmLQIH/PGBEADAAASTIhvxGBptg0p+TvOTvbStFDq+XEPJRrc5izADTEV13zCmAA%20AEiSL0hAww3KYbk29+bELC9Gr1+hDM+FeTSnZC0x6KOn8l0RAAwAAL/JDSLQUOvmO5mcCzNcigZY%20IyfmoYzNblLQJ9/KNBEADABAvXX5/T8NtXXOywM5IUOkaKABOTTjc1uOTj8x6KWpOVUEAAMAUG9j%20c7sINMiwXJ47cpRPrTfJ9vlJ7s9IX6FIL52WJ0QAMAAA9dWZk0SgAfrn8EzMTdk/HWI01QY5LX/L%20Z3yZIr0wI6eIAGAAAOprbO4TgT4anI/lgfwi20nRImvkm3ksp2RVKeihMc4AABgAgLrqyv+KQJ8M%20yLF5MGdmXSlabLmcmIdyelaWgh54wT0AAAYAoK4uzt0i0Ifnz8NyT87OGlK0yZI5Pg/llCwnBd32%20f3lSBMAAAFA/XfmaCPTa8EzMhdlQiDZbOifmoZyYwVLQLTPyHREAAwBA/Vyau0SgV4blxlybbYQo%20iBVySh7IyAyUgm44M0+JABgAAOrF7//pnR3yu9yU3YUomDVzWv6SEUKwWDNyugiAAQCgXq7I7SLQ%20Qyvk9NySvYQoqA3zy/w+WwvBYpyZZ0QADAAAdeL3//RM/4zMQzk+/aQotDfm9pyXlYRgEZ7LGSIA%20BgCA+rg6t4pAD+ydP+c0t82X5HXNUbkvHzbVsAin51kRAAMAQF2cIgHdtlbOyzXZVIgSWSFn5e7s%20IwQLMS3fFwEwAADUw635vQh0y+B8NQ/kKCFKaNNcnV9kDSFYoNMzWwTAAABQB6MloFt2yx35QpYQ%20oqQ6cnjuzUivdFiAx3O+CIABAKD6HsilIrBYS+aU3JiNhSi5ZXNabshGQvAap6ZTBMAAAOBFH7wl%209+VEz5AVsXvuzIkuBeRV/ppfiwAYAACq7QnHPlmMITk7v8lQISpkcE7J+GwmBK/gOljAAABQcd/J%20LBFYhP3zlxybDiEqZ+fcmVMyUAhecmtuFAEwAABU13M5WwQWavn8Mpe7N76yBuTE3OIcAC/zTQkA%20AwBAdZ2daSKwEDvntoyQoeK2zcSMlIEXXZU7RQAMAADVNC9nisAC9ctJGZ/1hKiBJXJafpUVhCBJ%20V84QATAAAFTTJfmHCCzA0FyfL7slvkYOzp3ZQwaS/DxPiAAYAACq6HQJWIBDckd2l6Fm1sz1OT0D%20hKi92fmBCIABAKB6bs8fROBVBuf0XJzXC1FDHTk+47O+ELV3VuaIABgAAKrmNAl4lc1zR46Xocbe%20kIl5uww193guEgEwAABUy5O5UARe4YBMyMYy1NxyuTineC1Uc9+WADAAAFTLWZktAi/pyIm5NMsJ%20QTpyYq7I8kLU2MTcIgJgAACojjk5WwResmx+5be+vMy+uTVbyFBjrogFDAAAFXJBJovAizbOH3OQ%20DLzCBrk5h8pQWxf5kljAAABQHWdKwIsOzW3ZRAZeY+lcmP/1qqim5uX7IgAGAIBquC23iUCS1+Xr%20uTBLC8ECdeRzuSJDhKilH2WuCIABAKAK/GaHJBmUn+Wz6RCCRdg3EzJUhhqanEtFAAwAAOX3bC4Q%20gSyfa3K4DCzWZrkl28lQQ66KBQwAABVwfmaIUHvr5A95owx0y2r5ffaVoXZ+lwdEAAwAAGU3RoLa%202yrjXfxHDyydy3KsDDXTlR+IABgAAMptfO4Woeb2zk1ZQwZ6pH++n5NkqJlzM0sEwAAAUGY+1Vl3%20782VWVYGeqwjX865GSBEjUzJxSIABgCAMr+cu0iEWjspP/IWjl57Ty7NkjLUiO+MAQwAACXmQGe9%20fS1fFoE+2S9XZxkZamN8/iICYAAAKKtzJKitjpyZz8tAn+2eq7OcDJ41AAwAAMV2c+4XocZv/z8m%20Aw2xa36XFWSoifMzRwTAAABQRj+WoKb65Uf5qAw0zHa5MavJUAtTcpUIgAEAoHxm5UIRavr2/8d5%20jww01Gb5XVaXoRZ+IgFgAAAon0syTYQaGpgLc6QMNNwmuT5ryVADV2SyCIABAKBsfixBLd/+X5JD%20ZKApNsrvs7YMlTcvvxABMAAAlMuk/E6E2umX8/M2GWiadTPOXQA18CMJAAMAQLn8OPNFqJmOfD8j%20ZKCpNshv83oZKu4vuUMEwAAAUCbnS1A738oHRKDptsxVWVqGivuxBIABAKA8JuSvItTMV/IpEWiJ%20nfKrDJKh0n6WOSIABgCAsvD7/7o5Pl8UgZYZngvTX4YKm5KrRQAMAADlMDcXi1Arx+Q0EWipA3Ou%20V1CV5psAAAMAQElck6dFqJFDck46ZKDFjsyZIlTYZXleBMAAAFAGF0hQI3vlF+knA23wkXxOhMp6%20IZeJABgAAMrwsu1SEWpj41ycgTLQJl/LESJUlg8BAAYAgBK4wsHN2lghl2d5GWibjpyTXWSoqN9m%20igiAAQCg6PzWpi4G5qJsKANttUQuywYyVJLrZAEDAEDhPefLm2qiIz/MnjLQdivmsgyRoZLMyYAB%20AKDgLsosEWrhyzlKBAph0/zKTRSVdGMmiQAYAACKzDcA1MO78yURKIw9fSVgJXXmQhEAAwBAcU3J%209SLUwLCckw4ZKJBj82kRKugiCQADAEBx/TrzRKi8VXNhBslAwYzOW0SonFvyLxEAAwBAUf1Kgsrr%20nwuzmgwU8PXUz7OODBXTmUtFAAwAAMX0fMaJUHnfyu4iUEivzwUuA6ycSyQADAAAxXSFbwCovIMz%20UgQKa6ecKkLF3JCnRQAMAABF5Dc1VbdRfuLyPwrt4zlahEqZn8tFAAwAAMUzK1eLUGlL55IsKwMF%20d1Y2F6FSTMuAAQCggH6b6SJ4YwVttlR+leVkqJBr85wIgAEAoGgulaDSjs9RIlAKG+aHIlTI7Fwl%20AmAAACiWeblMhArbOt8UgdI4NMeJUCE+BAAYAAAKZkKeEaGyBuW8DJKBEvl2NhahMn6bOSIABgCA%20IrlSggo7JVuJQKksmZ9lgAwV8VzGiwAYAACK5AoJKmt4RopA6WyfL4hQGSZmwAAAUCCP5D4RKmpI%20zkmHDJTQ57KLCBVhYgYMAABenNEC/5ehIlBK/fPTLCNDJTyQB0UADAAAReF4ZlUdmcNFoLTWy7dF%20qAhfBQgYAAAKYkZ+L0IlrZkzRKDUPpBDRagEMzNgAAAoiHGZJUIFdeTHWV4GSu6srChCBdyY6SIA%20BgCAIvCbmWo6Jm8WgdJbKd8SoQJmZ5wIgAEAoP26fDazom+bThWBSjgmbxKhAkzNgAEAoADuySQR%20KujbWUEEKqEj389gGUrvtxIABgCA9nMss4r2yrtFoDI2zOdFKL1/5q8iAAYAAAMAjTY4P0iHDFTI%20idlaBM82AAYAgL6Zl5tEqJwvZ30RqJT+OdsrLgMAgAEAoG9uznMiVMyW+aQIVM5OOU6Ekvtd5ooA%20GAAA2slvZKqmX36YATJQQd/I6iKU2nP5kwiAAQCgna6VoGLelzeIQCUtl9EilNx1EgAGAID2mZ7b%20RKiUZXKyCFTWu81bJWdyBgwAAG3kE5lV87msJgKV1ZHTfL9Fqbl1BjAAALSR45jVsnZOEIFK2yWH%20iVBi83KjCIABAKBdrpegUkZnCRGouFOzpAgl9nsJAAMAQHs8k3tFqJCdM0IEKm+tHC9CiTkBABgA%20ANrkpnSKUBkdOdWno6kFN12U2e2ZLgJgAABozwBAdRyR3USgFnzXRZnNyy0iAAYAgHZwFLM6Bufr%20IlAb78tWIpSW6RkwAAC0wfO5Q4TK+HCGikBt9MtXRTAAABgAALrvD5knQkUsmf8RgVo5MDuKUFK3%20ZJYIgAEAoNX8FqY6PpJVRKBmviRBSc3KRBEAAwBAq7kBoCqWymdEoHb2zxtE8OwDYAAA6I7ZuVWE%20ivhoVhaBGvqyBCXl/BlgAABosYk+hVkRS+fTIlBL+2VnEUrpD+kUATAAALSSb2Kuio9lJRGoKWcA%20yunZ/FUEwAAA0Ep/lKASls4nRaC23pphIngGAjAAACyOGwCq4Xi//6fWviiBAQDAAACwaE/mUREq%20YHA+IQK1tk92FMEAAGAAAPDiq/qOzooiUHNGsDK6OzNEAAwAAAYAuq8jI0Wg9g7LUBFKZ17uEAEw%20AAAYAOi+fbOpCNRe/3xUBM9CAAYAgIXpym0iVICjz5AkH8qyIhgAAAwAAAt2f6aJUHpb5M0iQJJl%208x4RDAAABgCABfuTBBXwyXSIAEmS49NPhJJ5LJNFAAwAAK1wuwSlt3LeJQK8aP0cJELpuAYQMAAA%20tMSdEpTex7KECPASN2J4JgIwAAAsQFfuEqHkBuVDIsDLDMv2IhgAAAwAAK/2qCsAS+/grCQCvMIH%20JTAAABgAAF7N5y7L7/0SwKu8K0uKUCp/y/MiAAYAgGa7U4KSWytvEgFeZdkcKkKpdObPIgAGAAAD%20AIv2AV95BgvgZEzZOI8GGAAAvORiMc86x4gAC/DGbCJCqbiQFjAAADTZlPxThFLbJ2uLAAtkHCuX%20OyUADAAAXnCxKO+TABY6APQXoUTuzjwRAAMAQDO5dKncVsiBIsBCrJZ9RSiRWfmbCIABAKCZ7pOg%201I7JIBFgoVwE6BkJwAAA4OVWRRwlASzC27KiCCVyrwSAAQDAAMCCbZRtRIBF6J+DRfCMBGAAAEiS%20JzJFhBI7TALwU1IhTgAABgCAJvLblnI7VAJYjDdlJRFK46/pFAEwAAA0i9+2lNl6PgAAi9XfN2WU%20yAv5uwiAAQCgWZwAKLN3SgDd4EMAZWKWBgwAAAYAvK2BXnpTVhDBAABgAADwUqu81su2IkA3DMhB%20IpSGWRowAAA0ybN5XITS8vt/6C7XZRoAAAwAQO39TQIDANTA8LxeBM9LAAYAoN4ekqC01sx2IkA3%20Dci+IpTE03lWBMAAAGAA4OXekg4RoNv2kaA0HpYAMAAAGAB45QAA9GQAMJl5ZgIwAAC15rOWZdUv%20bxYBemDVbCWCAQDAAAB4mUX57OhKM+ghp2Y8MwEYAIAam5V/ieCtDPipwQAAYAAAqu7hdIrgrQzU%20xLAsLYIBAMAAAHiRRbkMyY4iQA8NzB4ilMI/MlsEwAAAYADg34anvwjQY07OlENn/i4CYAAAaLRH%20JfA2BmrkrRKUxCMSAAYAgEb7pwQl9SYJoBc2zFoilMI/JAAMAACN9pgEpbRK1hMBemVXCUrBPA0Y%20AAC8xCJJspsE0Eu7SFAKTgAABgCABpubJ0TwFgZqxQkAAwCAAQCopUnpFMEAALWyTZYUoQScTwMM%20AABeYJFkQLYTAXr987ODCCXgBABgAADwAosk22WwCNBrTtCUwfOZJgJgAABoJCcAyslnmMEAUH0m%20asAAAGAAwNsX6JPd0iGCZygAAwDg5RVlsLME0AcrZn0RSsAJAMAAANBQkyUoodWzlgjQJ0Y0z1AA%20BgCgdp6QoIS2lgD6aEsJSuBJCQADAICXV3W3hQTgp8gzFIABAKAnZma6CN66gJ8iDAAABgDAiyu8%20dYEqWitDRPAcBWAAALy4otj6ZVMRoI86spkInqMADACAF1cU2/oZLAL0mZM0xfdM5ooAGAAADAB1%205vZyMADUQ1eeFgEwAAAYALxtAfwkeZYCMAAAdNtTEnjbAjXlLI0BAMAAABgAKLjNJYAGWDGriOBZ%20CsAAANTHMxKU8NllfRGgITaUoPCmSgAYAAAaZZoEpbN6BooADbG2BIX3rASAAQDASytvWQA/TZ6l%20AAwAAN02TQJvWcBPE56lAAwAQPX53Yq3LOCnCQMAgAEAqLzOTBfBWxaorXUkKDwzNWAAAGjYC6su%20EQwAUFtD0yFCwU2TADAAAHhhZQAA+mpwVhLB8xSAAQCoB0cry2ioBNAwBjXPUwAGAKAmpklQOitm%20KRHAAFAbUyUADAAAjeEKwPLx+38wANTJ7MwRATAAADTCCxKUzsoSQAO5A6D4ZkoAGAAAvKyqpxUk%20gAZ6vQSeqQAMAICXVXi7An6i8EwFYAAAKsJHALxdAT9ReKYCMAAANeD3KuWzvARgAPBMBWAAAPCy%20ytsVwE+UZyoAAwCAl1XergB+ojxTARgAAC+rKAPfAgCNtFSWEMEzFYABAPCyiiLy+0rwM+WZCsAA%20AOBllTcrgJ8pz1QABgCA15otQeksJwE01BAJCm6WBIABAKAR5ktQMh0ZIAI01EAJPFMBGAAAL6so%20Hm//wU+VZyoAAwBAL3RK4K0K+KnCAABgAAC8rMJbFag6HwEoOlM1YAAA8LLKAAD4qaoBUzVgAADw%20sspbFcBPlWcqAAMAQPc4AeCtCtSdjwAYAAAMAICXVRgAwE8VbWeqBgwAAF5W1ZLfVYIBoG5M1YAB%20AMDLKm9VAD9VNWCqBgwAAHhmARqgvwQFZ6oGvEwD8DhVS3MkgAabLUHBOaMBeGEN0BB+81U2syQA%20P1U1008CwAAAYACoI7+rBAOAZyoAAwCAl1XeqgB+qjxTARgAABbEwcqycQIADAAGAAADAICXVd6q%20AH6qPFMBGAAAvKyqgrm+EAsazLkaz1QABgDAyyq8WYEacALAMxWAAQCoBXcAGADAAIABAMAAAHhZ%20hTcr4GcKz1QABgCgCgZIUDozJICGekECz1QABgCgDpaUoHSelgAa6ikJPFMBGAAAL6vwZgWqbrqP%20ABTeUhIABgAAL6vqyQkA8BNVL6ZqwAAA0BCDJSgdJwDAT5QBAMAAANBjTgCUj99XggHAMxWAAQCg%20x/xexdsVqDeTmmcqAAMA4GUVBgDwE4VnKgADAFAVDlaWj99Xgp8oz1QABgCAHvN7lfLx+0rwE1Un%20/TJIBMAAAGAA8HYF8BPleQrAAADQLctIUDrT87wI0DCTJSi4pSUADAAAjTFEghJ6RAJomIclKLjl%20JQAMAABeWHnDAvTVc5kigucpAAMAUA/LZIAIpeMEADTKQxIYAAAMAEB9LCeBAQD8NGEAADAAAF5a%20UTw+AgB+mjxLARgAALy08pYF6DYnADxLARgAgBoZIkEJ37J0iQANYU4zAAAYAAAvrSiwmb65HAwA%20tTFEAsAAAGAAqDPHlqEROvN3ETxLARgAAC+tKDJfXQaNMCmzRSi8IRIABgCARllBghK6RwLwk+RZ%20CsAAANAzq0hQQndJAA1wpwQlsJoEgAEAwABgAAD65s8SFN4AH1QDDAAAjbOqBCX0eJ4UAfrMlFZ8%20K6dDBMAAANAoTgCUk99cQl/NzgMieI4CMAAAdbJi+otQQn5zCX31l8wTofCcUgMMAAANfaRaSYQS%20cgIA+sqMVgZOAAAGAAAvr7x1kQD6yIzmGQrAAADUjgOWZXRf5ogAfWJGMwAAGAAAL68ogTm5XwTo%20k7sl8AwFYAAAvLyiDCZKAH3wSKaIUAIrSwAYAAAaaQ0JSmmCBNAH4yUohTUlAAwAAI00VAJvX8BP%20EIW0lgSAAQDAAMADeVIE6LWbJCiBlbKkCIABAMAAQJcPAUCvPe0aTc9PAAYAoI5W9BuWknKEGXpr%20QrpEMAAAGACAOvIZSwMA+OnBAABgAAC8xKKgbs/zIoABoMLM04ABAMAAQJJkXm4VAXphZm4XwbMT%20gAEAqCe/Yykrv8WE3rglc0QwAAAYAAAvsSiTGyWAXvAVgGVhngYMAAAGAF403i0A0AtXS1AKg7Kq%20CIABAKDR1pegpGbndyJADz3j9oySWNdracAAANB4QzNIhJL6jQTQ45+a+SKUwoYSAAYAgGY8Wq0r%20QkldKQH0eACgHDaQADAAADSD37OU1T/yFxGgBzpzrQgGAAADAOBlFmV0lQTQA7fmSRE8MwEYAAAv%20sygjx5nBT4xnJgADAICXWTUwPtNEAANA5Qz0FbWAAQCgOdwBUF7zMk4E6KanMlGEklg3/UUADAAA%20zeCLAMvMNwFAd12VThFKwsk0wAAA0CT9so4IpXVpZosA3XKhBAYAAAMAwMYSlNY0X2sG3fKMD8yU%20yEYSAAYAgGbZTIIS+6UE0A0XZ44IpbG5BIABAMBLLV7r15kpAiyWqaxMzNKAAQDAAMACTM9VIsBi%20TM4NIpTGyllJBMAAANAsm6afCCXmN5uwOGMzX4TSMEoDBgCAJloi64pQYpfnORFgkcxkBgAAAwCA%20l1sVMCtXiACL8I/cLIJnJAADAICXW1Xgt5uw6J+QThE8IwEYAAC83KqC32aKCLBQF0hQKr4DADAA%20AHi5xULNzvkiwELclYkilMiqWUEEwAAA0Eyb+B6AkhsjASzE9yUoFSfSAAMAQJMtkU1EKLX7cpMI%20sAAz8nMRSmVbCQADAECzbSdByf1AAliAX/iaTAMAgAEAwEuuahmbZ0SA1zCNeTYCMAAAvIoTAGU3%20y0WA8Bp/zq0ilMqS2UgEwAAA0GzbpkOEkvt+ukSAV3A9Ztls40pawAAA0HzLZn0RSu7+TBABXmam%20CwBLxwcAAAMAgJdddItPO8PLXZCpIngmAjAAALyWWwDK78I8IQK85HsSGAAADAAAXnZV06x8VwR4%200e8yUYSSGZgtRAAMAACtsL0EFXBWnhcBkiTfkqB0tshAEQADAEArrJihIpTeMzlXBEhyd34rQun4%20KBpgAABomZ0lqIDvZJ4IkG/5WswS2kUCwAAAYACg+x7JJSJQe5PySxE8CwEYAAC89Ko6n3yG72SO%20CKUzJJuIABgAAFpluwwSoQJuy+9FoNaeyw9FKKGdvH4GDAAArTMo24hQCc4AUG/fz7MilJBTaIAB%20AMDLL3rsqvxFBGprVs4QoZR2kgAwAAAYAOiprpwkArV1diaJUEIdBgDAAADQWr6CqSouya0iUEsz%20cooIpbRxXi8CYAAAaKW1s7oIldCVk0Wgls7MZBFKyQk0wAAA0HKOYFbFVZkgArXzXE4VwQAAYAAA%206J43SlAZn5WA2vl2pohQUntIABgAALwEo7duynUiUCtTc7oIJbVyNhYBMAAAtNrWGSJCZXw2XSJQ%20I6MzTYSS2iMdIgAGAIDWP3oNE6Ey/pSrRKA2nsr3RCjxAABgAADwMow++WI6RaAmvpbnRSgt988A%20BgAAAwB9dEd+LAK1cH/+T4TSen02FwEwAAC0w7ZZVoQK+WyeFYEa+GTmilBae3jlDBgAANqjf3YV%20oUKezP+KQOVdnt+IUOoBAMAAAOClGA1weh4QgUqbk0+L4FkHwAAA4KUYc/IpEai0M4xcpTYkW4oA%20GAAA2mXHLCdCpVzheDQV9mS+JkKpvSn9RAAMAADt0j97iVAxLkijuka56LLk9pYAMAAAeDlG49yf%2074lAJd2en4hQcvtIABgAALwco5FOzhMiUDmd+Vg6ZSi19bOeCIABAKCdNvCCrHKm5XgRqJyzcrMI%20JfcWCQADAEC7+RBA9VyYS0WgUh7L50TwbANgAADwkozX+kimikCFfDzTRSg5l84CBgCAAnhz+otQ%20OY9nlAhUxs9ymQilt7OvnQUMAADtNyQ7ilBBP8h1IlAJU/JJESrAaTPAAABQCL4JoIq68uHMlIEK%20OCFPimAAADAAADTGvhJU0oM5WQRK7zf5qQgVsELeIAJgAAAogh2zqgiV9P8yUQRKbUY+KkIlvC39%20RAAMAADFeBzbT4RKmpf3ZZYMlNgn84gIFRkAAAwAAAWxvwQV9WffBkCJXZoxIlTCAHfNAAYAgOLY%20J0uIUFFn5AoRKKVJ+YAIFbFHhogAGAAAimKp7ClCRXXl/ZksA6XTmWMyRYaKcMoMMAAAeHlGSzyZ%2096ZLBkrmm7lOhMpwAwBgAAAolAPSIUJlXZ3vikCpTMyXRaiMzbKBCIABAKBIhmZLESrsM7lLBEpj%20Rt6dOTJUhhNmgAEAoHAOkKDCZufdmSkDJXF8/iqCAQDAAADQPAdJUGn35NMiUAq/zI9EqJCVs6sI%20gAEAoGh2zHoiVNpZOVcECu/+HCtCpbw9/UQADAAAxXOwBBX3kdwmAoU2PYfkORkq5R0SAAYAAC/T%20aL1ZeUeeloHC6sp7cp8MlbJC9hIBMAAAFNEuWUuEinssh2e+DBTUV3KJCBVzcPqLABgAAIqow4cA%20auC6fEEECumafFWEynGyDDAAAHipRhuNzlgRKJxHc4TTKZUzJG8WATAAABTV7llNhMrryvtyjwwU%20yswckikyVM6BGSgCYAAAKO4j2oEi1MDzeUemykBhdOU9uUOGCnKqDDAAABTaoRLUwl9zSObIQEF8%20LheKUEHLZB8RAAMAQJHtmVVEqIUbcky6ZKAAzskpIlTSwVlCBMAAAFBk/TNChJq4IF8Sgba7Oh8S%20oaKOkAAwAAB4yUZRfC3/JwJt9ZccnnkyVNJKGS4CYAAAKLqds6EItTEyvxWBtpmU/fKsDBV1ePqL%20ABgAAMrwso26mJvDcqcMtMVzeVv+IUNlOU0GGAAASuEoCWpkujdhtMXcHJq7ZKis9bOTCIABAKAM%20NswOItTIv7JfpshAS3XmPblWhgp7VzpEAAwAAGV56Uad/CXDM1UGWqYrH8nPZag0HyUDDAAAJRoA%20+olQK3dmv0yXgRb5n5wtQqVtl81FAAwAAGWxWvYSoWZuycGZKQMt8LmcKkLFuQAQMAAAlMoxEtTO%2073JwZstAk/1vviFCxfU3AAAGAIByeUeGiFA71+TwzJOBJjozXxCh8vbLaiIABgCAMhmcd4pQQ5fm%20XZkvA01ybkaKUAPvlQAwAAB4CUcZXJTj0ikDTfCTfCBdMlTeKnmbCIABAKBsdsqWItTSOXl35spA%20g52d95mWauGoDBABMAAAlM/REtTUBTkks2Sggb6ZD3v775kDwAAAUOSXcX6PU1dXZN9Ml4EGGZ0T%20Hf6viZ2dHQMMAADltLJPctbYDRmeZ2Sgz7ryyYySoTbcHgMYAAC8lKOEbs3eeUoG+mR+PpjvyFAb%20gzNCBMAAAFBWvs253m7PXnlcBnptbo7IOTLUyKEZIgJgAAAoq/75gAi1dk/emIdloFdm5O25UIZa%20+ZAEgAEAoMyOTX8Rau1veUNukoEem5w9c6UMtbJVdhUBMAAAlNmaLgKsvSnZOz+XgR65JzvnNhlq%205iMSAAYAgLL7sAS1NztH5mQZ6LbrMix/l6Fmlsm7RAAMAABlt082EqH2unJS3p+5QtAN52bfTJOh%20do7KsiIABgCAsuvIB0UgyY+yX56VgUXqysl5n6mollwACBgAACrhvVlCBJKMc7CbRZqdI3OSDLU0%20LFuKABgAAKpghYwQgSTJX7JLJsjAAk3KXq6LrK3jJAAMAABV4SJA/uPx7JnRMvAaN2WH3CxDTa2Y%20Q0UADAAAVbFztheBF83LqByZGULwkq78v7wpk4WorQ/6oBhgAACokhMk4GV+lh1ynwwkSZ7P4fl0%205glRWwPyEREAAwBAlbwza4rAy9yfnXKxDOSB7JILZai1EZ4fAAMAQLUM8BVPvMr0HJZRmS9ErV2W%20N+QvMtTc8RIABgCAqjkug0XgFboyOvvlCSFqak4+nYPzrBA1NyxvEAEwAABUzYo5UgRe45psmctk%20qKH7s0v+X7qEqL1PSAAYAACq6IR0iMBrPJWDcoxvBaiZ87NDbpeBrJODRAAMAABVtFn2FoEFOs/b%20wRp5KgflaJMPSZKR6ScCYAAAqKYTJGAh7s/OOTmdQlTetdnGhz540TJ5rwiAAQCgqt6aTUVgIebm%20pOydfwpRYTNzfN6SfwnBi96f5UQADAAAVdWRT4vAIvwuW+dnMlTUn7JjznTtHy8Z4AJAwAAAUG1H%20ZagILMIzOTL75lEhKuaFjMouuUcIXubdng8AAwBAtQ3ISBFYjKuzeUZnvhD+RKkwJ8IAAwBADRyX%20FUVgMV7IqOyQiUJUwNQc50wHC3BQNhcBMAAAVN1S+YgIdMOd2Tkn+LK4khubjTNGBhbgMxIABgCA%20Ovh4lhKBbpiX07NtbhCipB7OPhmRp4RgAfbMriIABgCAOlgx7xeBbnowe+XAPCJEybyQk7NFrhWC%20hRglAWAAAKiLz2SgCHTb5dk8ozJdiJLoythsmpMyUwoWYuvsIwJgAACoizXzLhHogZkZnU0yJp1S%20FN6fMiwj8pgQLMJn0yECYAAAqI/Pp78I9Mi/clzekPFCFNikHJOd8gchWKQN8w4RAAMAQL1eAL5T%20BHpsYnbPgb5SrpBeyOhskvPSJQWL8WUDMGAAAKibL6SfCPTC5dksn3a3fKHMznezYUbleSlYrI1z%20uAiAAQCgbjZxBoBempn/l3VzQp6QogDm5vxslo/nX1LQLV80/gIGAIA6OsnLQHptRk7PBhmVqVK0%20UWfGZrMcnYeloJt8/AswAEgAeCEIvfB8RmftjMqzUrTpzf+mGZG/SUEP+Pw/YACQAKgtR0Hpq+kZ%20nfUzOtOlaKH5uSBbZEQekIIe8fl/AAMAUGPuAaARpmRU1sgJvnu+JZ7PmGyed+U+Kegxoy+AAQCo%20NfcA0BjTc3o2yIj8UYomeiInZ50cl79KQS/42BeAAQCo/QvCd4lAg8zN2Oyc4fmN76Jvgrvz3gzN%20SZkiBb10ks//AxgAgLr7agaJQANdl/2ycc7ITCkaZkIOzNb5ceZIQa9t6fP/AAYAgHXyARFosAcz%20MqvnuPxZij6amjHZOsNyuVMV9NEpXvMCGAAAki9lGRFouGkZk62zQ8Zkhhi90JlxOSZrmFFoiGHZ%20TwQAAwBAsnKOF4EmmZjjsnqOy0QpeuDxjM6G2Tvn+SAFDfI1CQAMAAD/9um8XgSa5rmMyQ7ZId/P%20VDEWY04uzQFZK6PysBg0zP7ZQwQAAwDAvw3JiSLQZBPz4ayU3XNGnhZjAeZnQk7Imnl7rsh8OWjo%20a92vigBgAAD4r+Ozpgi04E3u+IzMmjkw5+c5OV7x1n/1DMvpeUoOGu6IbCMCwH/4RlSAZIl8IR+S%20gZaYnctzeQZlnxyWg7JsjUt05uaMzQV5wv8oaJoBOUkEAAMAwCu9P9/JX2WgxTPA4Lwpb81bs0HN%20/u6fzjW5Olf7jT9Nd2zWFwHAAADw6kfDb+YgGWixmbkyVyZZL8MzPG+p/HmAztyRcRmXGzLPHz4t%20MMTv/wEMAAALcmCGZ5wMtMXDGZMx6Z+ds3+GZ7t0VO7v8KnckHG5LJP9YdNCn8+KIgAYAAAW5NRs%20l04ZaJt5GZ/xSVbJG7JbhmWHDCr939PDmZCJGZ/b0+UPmBZbNx8XAcAAALBgW+fo/FgG2u6JXJ7L%20kwzIVhmW3bJX6X6LOS93ZULG5waf8qeNvlmBCQ2gwTokaILDcqEIUEqTsnFmyEDhnqs3y07ZKltm%20q0JPATNyb+7K3bktEzPbHxtttltu8joXSm5ExorQaE4AAPzXGvmMK6MonK7ck3te/OfLZ/Nsn82y%20ebbNkoX4b/d4Juae3JuJuT/z/WFREB35prf/AAYAgEX7dMbkXzJQWFNfvCcg6Z8Ns0HWzTpZN+tk%20nQxp0X+DWXk0j+TRPJpH8kjuzQv+UCigd2VXEQAMAACLtlS+lvfJQAnMy32572X/esiLQ8A6WSEr%20ZIWslBWyTB//GjMzJVMyJU9lSia9+Kb/cekpvMH5uggABgCAxTsm38tEGSidabkjd7zq3xv44hiw%20QlZMslQGpiNDkgzKkkmWSf9MS1fmZEaS5zM3XZmWZPqLb/mf9tt9SuqTWVsEAAMAwOK9LmdmN19Z%20RiXMyeN+Y0/trJnPigCwsBe6ALzSLjlGBICS+naWEgHAAADQXaNbdqEaAI30phwmAoABAKD7Vs6X%20RAAonf45TQQAAwBAz3w8W4kAUDIjs6UIAAYAgJ7pn++mQwaAElklXxQBwAAA0HO7Z4QIACXyzSwn%20AoABAKA3Ts3SIgCUxK45SgQAAwBA76zpKkCAkuifs3xwC8AAANB7n8i2IgCU4vF6axEADAAAvdc/%20Z6efDAAFN9SJLQADAEBf7ZgPiQBQcN91ZwuAAQCg776eNUQAKLAROUAEAAMAQN8tm++IAFDgR+lv%20iwBgAABojMNyoAgABTXaOS0AAwBA45zp06UAhfSGHCsCgAEAoHGG5iQRAApnQH7o1SyAAQCgsT6R%20XUUAKJjPZksRAAwAAI1+tDwnS8gAUCCb5nMiABgAABpvk3xRBIDC6J+fZJAMAAYAgGb4n+wgAkBB%20fCY7igBgAABojv45JwNlACiATfIlEQAMAADNs5XPmwIU4hXsD93LAmAAAGiuz2d7EQDa7JPZTQQA%20AwBAc/XPORkgA0AbbZSviABgAABovq3zWREA2qZfzslgGQAMAACt8MXsJAJAm/xPhokAYAAAaI3+%20+XGWlAGgDbbJSSIAGAAAWmeTjBYBoOUG5TxfxwpgAABorY9mPxEAWuwb2VIEAAMAQGt15AdZQQaA%20Fto9I0UAMAAAtN7q+YEIAC2zXH7qlSuAAQCgPd6eI0UAaJGzMlQEAAMAQLuc6eUoQEu8M0eIAGAA%20AGifIflp+skA0GRr5SwRAAwAAO21e74oAkBT9c8v8noZAAwAAO32xbxJBIAmOjm7iQBgAAAowuPo%20eVlRBoAm2SMnigBgAAAohjXyk3TIANAEK+Xn7loBMAAAFMd++ZgIAA3XkXOyugwABgCAIvlWthUB%20oME+kQNEADAAABTLoFyYZWQAaKDt8w0RAAwAAMWzgW+pBmigIfllBsoAYAAAKKIj8yERABqiI+dk%20fRkADAAARXVadhQBoAH+J4eIAGAAACiuQbkoK8oA0Ed75GsiABgAAIptaH7ikRWgT1bJz9NfBgAD%20AEDR7ZfPigDQa/1zYVaXAcAAAFAGX8k+IgD00jfyRhEADAAAZXlkPT9rygDQCwfmUyIAGAAAymPl%20XJhBMgD00MY5Lx0yABgAAMpkl5wtAkCPLJNLspwMAAYAgLI5Jh8RAaAHr0p/ns1kADAAAJTRadlT%20BIBu+kr2FwHAAABQTgNyUdaVAaAbDs7nRAAwAACU1wq5JEvKALAYm+YnLv8DMAAAlNs2brQGWIzl%20c1mWlQHAAABQdu/Ip0UAWKh++Vk2kAHAAABQBd/IfiIALMSp2VcEAAMAQDX0ywXZSgaABXh/ThAB%20wAAAUB3L5KqsIQPAq+yT74sAYAAAqJY18mvfBwDwCpvml+kvA4ABAKBqts9PPOYCvGSFXJYhMgAY%20AACq6NCcLAJAkmRgLnb3P4ABAKC6Pp+jRABIR87JHjIAGAAAqv2Sdy8ZgNr7co4UAcAAAFBtAzI2%20m8gA1NoR+ZIIAAYAgOpbIddmTRmA2npTzk2HDAAGAIA6WDNXufkaqKktc0kGygBgAACo0wvgQTIA%20tbNurslyMgAYAADqZC9HYIHaWSG/yaoyABgAAOrmXfm6CECNDM6vs7EMAAYAgDoaleNFAGqiX36a%203WQAMAAA1NW3c4gIQC181+MdgAEAoM765Rd5qwxA5f1vPiQCgAEAoN4G5uIMkwGotOPzOREADAAA%20LJkrsq0MQGUdk9NEADAAAJAky+VqN2MDFfX2/NCXngIYAAD4j5VzbYbKAFTO8Pwi/WUAMAAA8F9r%205dqsLANQKTvnVxkkA4ABAIBX2ihXZBkZgMrYMldlaRkADAAAvNaOuTxLygBUwqYZl+VlADAAALBg%20e+SyDJYBKL0NM87HmgAMAAAsypvz6ywhA1Bqa+farC4DgAEAgEXbO5e6NAsosaG5PmvLAGAAAGDx%203uLebKC01sz1WVcGAAMAAN2zb37um7OBElol12Y9GQAMAAB03yH5hQkAKJmV87tsIgOAAQCAnjk0%2056afDEBprJLfZTMZAAwAAPTckfl5BsgAlMKquS6bywBgAACgd0bkEtcBAiUwNDd5+w9gAACgL/bP%20r7KEDEChrZ3rs4EMAAYAAPpm31yawTIAhbVhxrv5H8AAAEAjvCVXZxkZgELaONdnTRkADAAANMYb%20c1WWlQEonE1zfdaQAcAAAEDjDMvVGSIDUCjb58asJgOAAQCAxtol47O6DEBhvDHXZUUZAAwAADTe%205hnvnm2gIPbP1VlOBgADAADNsW5uylYyAG13RC7x/SQABgAAmmnV3JBdZADa6iM5PwNkADAAANBc%20y+fa7CMD0DYn5nteQQIYAABohaVyeQ6VAWiDjpyaU2QAMAAA0CoDc0HeLwPQYgPyk3xKBgADAACt%201C8/zCnpEAJomaXz6xwlA4ABAIDWOzE/cg0X0CKr5ffZVwYAAwAA7fGeXJVlZQCabtPcnO1kADAA%20ANA+w3NT1pABaKpdcmPWlgHAAABAe22Vm7KJDEDTvD3XZUUZAAwAALTfupmQYTIATTEyF2WwDAAG%20AACK4fW5JofKADRYv5yW07xa/P/t3Xusl/Vhx/EPcDhc5SKCXEQQsXKpILJ5AbReWHV4sJvtsbUM%20tnbtSdY1kDXZTrKkhWx/9KxZN2mbtGjTBeKqgzoXKK0WkFqhgAWRmxcuioJDRQreFRT2R6mrLSLn%20cH6/87u8XomJmJjo+5zk/J7P+T7PA2AAAKCUdMnCzPFaQKAVdc+9mSUDgAEAgFLTLrNzl4O6QCsZ%20lF9kqgwABgAAStOnsyL9ZABO22VZn3EyABgAAChdV2RtRskAnJb6rEx/GQAMAACUtvOyNnUyAC3U%20Lo252+1EAAYAAMrBGbk3fysD0AKd859p8vkQwAAAQLmoyXeyIJ2FAJplUB7MrTIAGAAAKC/TsyID%20ZABO2aSsz6UyABgAACg/E7I+l8sAnJKGrPDgPwADAADlamB+ni/IAHyITvl+5qVWCAADAADl/LH+%20Dh/rgZMamJ/nr2UAMAAAUP4a8oCDvcAHmOhmIQADAACV9AH/YR/wgRP4ch7wuFAAAwAAlWRwHkpj%202gkBvKd7fphvu0UIwAAAQKWpSVP+O72EAJIkI7Imt8oAYAAAoDL9WR7OGBmATMv6fFQGAAMAAJXr%20gqzzYkCocp0yN3emmxAABgAAKlvn3JEF6SoEVKlz82BmygBgAACgOkzPqlwgA1ShT+TRXCYDgAEA%20gOoxLpsySwaoKp0zN/emtxAABgAAqkuX3JZF3goAVWNE1maml4ECGAAAqE6fyqOZIANUgRlZn7Ey%20ABgAAKheQ/Jg5vhZABWtZ+7KfE/9B8AAAFDtajI7yzJQCKhQl+WRfEYGAAwAACTJtdmYKTJAxanJ%207KzKMCEAMAAA8Fv9sjQL0l0IqCDnZWXmpEYIAAwAALzf9GzOVTJAhZiRzZkkAwAGAABO5LyszNzU%20CgFl7uwsznxnegAwAABwsp8KM70sDMrcp7I1U2UAwAAAwIe5KGvT6OcDlKUemZdFOUsIAAwAAJyK%20zmnKCk8Oh7JzfbamQQYADAAANMfV2ZrGdBACykTPzMtPM1gIAAwAADRXlzTloYwUAsrAlGxNQ9oJ%20AYABAICWuSKPZE46CgElrHfmZWnOEQIAAwAAp6NzZudXuUQIKFFT3fcPgAEAgNYyNmvTlFohoMSc%20nR9lcQYKAYABAIDW0jGN2ZJrhYCS0S4zsi2fFAIAAwAAre0jWZ4F3i8OJeGirMr89BECAAMAAIXQ%20LtPzpCeNQxvrkjlZnwlCAGAAAKCQzsy8rMwIIaCNTMljme2ZHAAYAAAoho9lc5rSSQgosv5ZkKUZ%20KgQABgAAiqVjGvNorhMCiqYmM/NEpgsBgAEAgGIbkeVZ4neRUBQfy4bMTU8hADAAANA26vJY5qSz%20EFBAA7MgKzNGCAAMAAC0pS6ZnR2ZIQQURMfMyhOZ7t0bABgAACgF52R+VmS0ENDKJmdTbssZQgBg%20AACgdFybR/KN9BACWsmFWZplGSkEAAYAAEpNbf4+T6XR+8nhtJ2ZpmzKFCEAMAAAUKr6pCmbUy8E%20tFhtZmVXGtNJCgAMAACUtguzMCsyTghogal5PLellxAAGAAAKA/XZkMWZogQ0AyX5qEszjAhADAA%20AFBO2qU+j+WfPL8cTsnwLMzaTBICAAMAAOWoa76ap9OYLlLASfRLU7amPu2kAMAAAED56pOmbE9D%20aqSAEzgzTdntkX8AGAAAqAznZF52pCEdpIDf0S2N2eWMDAAGAAAqy9DMyyYvCITjatOQnWnyvH8A%20DAAAVKLRWZiHco0QuPjPzsxLfykAMAAAULkm5YGsylQhqFIdMyPbMi+DpQDAAABA5ZuYxVltBKDq%201GZGHs/8DJcCAAMAANVjQhbnl0YAqu7i/3wpADAAAFB9rsjirMlUbz+n4i/+G7Ir8zNMCgAMAABU%20r8uzOA/nU34eUaF65B+yO/NyjhQAGAAA4I+yKDsyy9vQqTD9Mie78y8ZIAUABgAA+K1huS27Mye9%20paBCvqPnZndm+44GwAAAAH+oX2bnmczNICkoaxdnQZ7MTGdaADAAAMAHOyMzsyu3Z5QUlKF2+dMs%20y8ZMT40YABgAAODDdMoXsy2rUp8OYlA2OmdGtuQnmSwFAAYAAGiOiVmYJzIr3aSg5A3InOzN/IyW%20AgADAAC0xPDclv/N3AyRgpI1PgvyTGanjxQAGAAA4HT0yMzszMJcJQUlplOmZV3WZ3o6igGAAQAA%20WkNN6vNgnkyj37JSIoanKXtyZy6VAgADAAC0to+kKXuz0EPWaOPPTpOzME+kMX3FAMAAAACF0jn1%20WZb1aUh3MSi6AWnM01nmDRUAGAAAoDjGZ1725tu5WAqKpCZT8z/Zk6acKwYABgAAKKae+XI2Zlsa%20008MCmpE5mRXFucTfu8PgAEAANrKqDRlT5ak3nPYKYCemZFleSyz/d4fgEpQIwEAZa42danLvizK%20D7JJDlpF+0zI9ExLNykAqKQfbwBQCQZkZh7NmszM2WJwWsbk63k6D6XB5T8AlcUJAAAqyeW5PP+e%20NVmQu/OKHDTT4NycGblECAAMAABQDtpnYibmW1mWRbknrwvCKTgzdZme69JOCgAq+UMSAFSiTqnL%20/DyXH+TjHhDISfTOX+a+vJD5mezyH4DK5gQAAJWsZz6Xz+Vgfpwl+YnTALzPmalLfT6eWikAMAAA%20QGXonemZnjfyQBbl3rwqSNU7K1NSn+udDQHAAAAAlahr6lKX7+a+3JOleVmQqjQ0N+eTudxNkAAY%20AACg8meAm3Nz3s3aLMnybBCkSrTPuExNXS5xnz8ABgAAqCYdMjETkzyV5flx7s9hSSpWt1ybutyU%20/lIAYAAAgOo1LA1pyMu5P0vz0+wXpKKMzI25MZN82gEAAwAA/EbP3JJb8tvzAMvyliRl7axck8m5%20PkOkAAADAACcyG/OA7yZ1Vme5dmYo5KU2aeasZmauozziD8AMAAAwIfrksmZnOSFrMjyPJinJClx%20HTIuV2dyrkoXMQDAAAAAzXV2PpvPJnk+D2V1VuWRHBOlxD7FjM2kTMzk9BYDAAwAAHC6+qc+9Ule%20zMNZ5daAEtAxYzI5k3JVeogBAAYAAGht/VKXuiSHsjbrsi7r8mtRimporshluSyXpFYMADAAAECh%209coNuSFJsi+rsjob8qu8LUvBdM/FGZ+JuSpniwEABgAAaAsDjt8c8EY2ZH025tE8nndkaaXL/jG5%20OJfk0oxKBzkAwAAAAKWga67MlUmSI9mRDdmQDdmY14Vptl75aMZnfMbnQpf9AGAAAIDS1TGjMirT%20k7yb7dmUrXk8W/OUcwEn0TUjMyqjMzrjMkgOADAAAEB56ZCRGXn8749kTx7LtjyWbdmWt8RJbS7I%20qIzOqIzOiLQXBAAMAABQCTpmWIalLklyOE9lV3ZkV3ZmV3bnSJU06JbhGZ7zj/81OO18WwCAAQAA%20KlltRmTEe396J88cnwKeyd48m+dzrGL+PwdlcIbk3AzP8AxPf196ADAAAEA1/xw+P+fn4+/9+XCe%20y548k73Zkz3ZkxezvyyeH9AlfTMoAzM4QzI45+Tc9Pc7fgAwAAAAH6Q25+W83/tn+/Ni9mdf9ufF%207Mv+vJRDOZRDebMN/vvOSO/0Sq/0Tf/0Tb8MSN/0zcB096UDAAMAAHB6+qbvCf/52zl4fAo4lEN5%20OW/njbyWIzmUd/JK3sqbee34EwZez+H3/p03jv9dj/des9cttUmSrumUHqlJr9SmW7qmU3qmY3ql%20V3odv+zv5dV8AGAAAACKrVP6u7MeADh1XrwDAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAA%20AAwAAAAAgAEAAAAAMAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAA%20DAAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAAAYACQAAAAA%20AwAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAADAAAAAAAAYAAAAAAAD%20AAAAAGAAAAAAAAwAAAAAgAEAAAAAMAAAAAAABgAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMA%20AAAAYAAAAAAADAAAAACAAQAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAA%20AABgAAAAAAAMAAAAAGAAAAAAAAwAAAAAgAEAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAA%20ABgAAAAAAAMAAAAAYAAAAAAADAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAAAYAAAAAwAAAAAAA%20GAAAAAAAAwAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAMABwOo5KAAAA4KrKAFD5jkgA%20AABwGt6WwADgWxUAAMBVFQaAEnFYAgAAAAOAAcC3KgAAACfj16oGgDJxSAIAAIDTcFACA0B5eEkC%20AAAAV1WlpZ0EBVCTw8oCAAC00NHU5l0ZWpsTAIXwTl4WAQAAoIUOuvw3AJSPfRIAAAC00PMSGADK%20x24JAAAAWuhpCQwABgAAAAADAAYAAwAAAIArKgwAxbRTAgAAgBbaJYEBoHxskQAAAKCFNktQCN5W%20Xxjt83K6ywAAANBsr6ZnjslQiAtVCuFotokAAADQAltc/hsAyssmCQAAAFrADQAGgDKzRgIAAIAW%20+KUEBoDysloCAACAFlglQWF4CGDh7Et/EQAAAJrl+QwQoTCcACgcNwEAAAA0l9//GwDK0DIJAAAA%20mul+CQrFLQCFMzRPiwAAANAsQ/KsCIXhBEDh7M6TIgAAADTDVpf/BoDy9BMJAAAAmuGnEhgAytM9%20EgAAADTDjyQoHM8AKGzd3TlXBgAAgFPybIbmmAyF4gRAIR1zBgAAAOCU3eXy3wBQvv5LAgAAgFO0%20UIJCcgtAoW3NaBEAAAA+1OaMFaGQnAAotO9LAAAAcArukKCwnAAotD7Zm84yAAAAnNSbGZSDMhSS%20EwCFdsBrLAAAAD7UIpf/heYEQOGNzaMiAAAAnNQl2ShCYTkBUHibslIEAACAk/iZy38DQGX4pgQA%20AACumtqWWwCKU3lTLpIBAADghDZmfI7JUGgdJCiKF/JpEQAAAE6oIdtFKDwnAIrVeV3+WAYAAIA/%20sD6X+v1/MTgBUCz78lkRAAAA/sDns1OEYnACoHiWZbIIAAAA7/NArhPBAFBpxmaDExcAAAC/492M%20yxYZisNrAItnU34gAgAAwO/4nsv/4nECoJj65cn0kgEAACBJciAX5oAMxeJIejG9nl9nqgwAAABJ%20ki9ljQjF4wRAsXv/zKMAAQAAkqzMdV7/ZwCoZBdkU7rIAAAAVLk3Mia7ZCgmtwAU26/zWm6QAQAA%20qHJfyf0iFJcTAG3RfElulAEAAKhi92WK4/8GgGrQL5tztgwAAECVejFj87wMxdZegjb5Zv98jsoA%20AABUpaOZ4fK/LXgGQNvYkfa5WgYAAKAKfS3/IUJbcAtAW2mfxZ4EAAAAVJ0f5xNORBsAqk3vPJzh%20MgAAAFVkey7LIRnahmcAtJ2DuSH7ZQAAAKrGgUx1+W8AqE67cnPekgEAAKgKb+WmbJeh7XgIYNt6%20Nk/lz92IAQAAVLyjmZb7ZTAAVLOt2ZubTAAAAEBFO5YvZYEMBoBqtzGHcoMMAABABWvMt0QwAJCs%20y7FcIwMAAFChvpavi2AA4DcezJv5ExkAAIAKNDv/LIIBgP+3Oi9kimcBAAAAFeVY/i7fkMEAwPut%20z7O50VcEAACoGIfz+dwuQ6nwG+fScl3uSU8ZAACACvBqbsl9MhgA+CCjszRDZAAAAMrcc7kxm2Qo%20Je0lKDHbckVWywAAAJS1X2S8y/9S447z0vNaFqRTJgkBAACUqdvzmbwiQ6lxC0Cp+ot8L91kAAAA%20ysyracjdMhgAaI7zcmcmyAAAAJSRX2VadshQmtwCULoOZUGO5UrPaQAAAMrC0Xw7t2a/EKXKCYBS%20NzF3ZKQMAABAiduWL2aNDKXMCYBStye35/VcmRopAACAEnUk/5pbs1uI0uYEQHkYnbm5TgYAAKAE%20/Syz8oQMpc/95eVhWybnpuwSAgAAKCk7c0uud/lfHtwCUD62Z14OZZyXAwIAACXhxXw1f5UtQpQL%20twCUm275Qv4x/YQAAADa0IF8J/+WV4QwAFBYPfM3mZkBQgAAAG3guXwr382rQhgAKI7aTMtX8lEh%20AACAItqSb+auHBbCAECxjU9DpnkqAAAAUHBvZUluz4ock8IAQFvplWm5NRN8LQEAgII4mtW5Kz/M%20y1IYACgFg1Of+lzqxY4AAEArXvqvy8L8KHulMABQas7KNZmcugyUAgAAOA0vZWWWZ0n2SWEAoLS/%20qiMzMZMyIcPFAAAAmmFHfplVWZ0n3OtvAKC89MxFuShjcmGGZnBqBAEAAH7PkezN09meTdmSLXlF%20EAMA5a8m52Rw+qRPzkrv9EiHdEx3WQAAoKq8liN5J6/mYF7KgRzIs3ku78gCAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVJX/A4zlkop3bSFJAAAAJXRFWHRkYXRlOmNy%20ZWF0ZQAyMDIxLTA0LTIzVDA0OjAwOjA2KzAwOjAwrEF0SQAAACV0RVh0ZGF0ZTptb2RpZnkAMjAy%20MS0wNC0yM1QwNDowMDowNiswMDowMN0czPUAAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2259.003%22%20width=%2261.244%22/%3E%3Ctext%20y=%221.539%22%20x=%2242.801%22%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%221.539%22%20x=%2244.171%22%20font-size=%229.878%22%20font-family=%22Gill%20Sans%22%3EOV7670%20CAMERA%20%3C/tspan%3E%3Ctspan%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%2212.449%22%20x=%2242.801%22%20font-size=%229.878%22%20font-family=%22Gill%20Sans%22%3EINTERFACE%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "24535636-7068-4eaf-8ea1-ba9f97cd08a3",
              "type": "basic.output",
              "data": {
                "name": "CNT_REF_TEST",
                "range": "[5:0]",
                "size": 6
              },
              "position": {
                "x": 688,
                "y": -160
              }
            },
            {
              "id": "9b95db21-3045-4d45-b199-9e7b5e206fa5",
              "type": "basic.input",
              "data": {
                "name": "RST",
                "clock": false
              },
              "position": {
                "x": -560,
                "y": -152
              }
            },
            {
              "id": "00843802-ac7d-48cc-a13e-5342dba80074",
              "type": "basic.output",
              "data": {
                "name": "OV7670_CFGDONE"
              },
              "position": {
                "x": 800,
                "y": -136
              }
            },
            {
              "id": "d72b4174-f259-4972-919d-c031b9d25af7",
              "type": "basic.output",
              "data": {
                "name": "OV7670_SIOC"
              },
              "position": {
                "x": 688,
                "y": -104
              }
            },
            {
              "id": "d6c45f84-0898-42f6-88ae-448a142560d8",
              "type": "basic.input",
              "data": {
                "name": "CLK_100MHz",
                "clock": false
              },
              "position": {
                "x": -560,
                "y": -88
              }
            },
            {
              "id": "33d14280-55bc-45ab-af5b-40dff5784f86",
              "type": "basic.output",
              "data": {
                "name": "OV7670_SIOD"
              },
              "position": {
                "x": 1080,
                "y": -72
              }
            },
            {
              "id": "2a5cb73b-b7f7-4719-9d7e-2b5789bb998e",
              "type": "basic.output",
              "data": {
                "name": "OV7670_RST_N"
              },
              "position": {
                "x": 800,
                "y": 0
              }
            },
            {
              "id": "cac2fb92-01e7-48e7-b6c2-d448cca3b434",
              "type": "basic.input",
              "data": {
                "name": "OV7670_PCLK",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 0
              }
            },
            {
              "id": "54acda2c-f70a-4af7-b57f-0970132342ff",
              "type": "basic.output",
              "data": {
                "name": "OV7670_XCLK"
              },
              "position": {
                "x": 688,
                "y": 32
              }
            },
            {
              "id": "5e626432-7c43-4b74-a88a-aa9a648345c9",
              "type": "basic.input",
              "data": {
                "name": "OV7670_VSYNC",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 48
              }
            },
            {
              "id": "8bf7cb13-c648-4f00-bc99-331339329370",
              "type": "basic.output",
              "data": {
                "name": "OV7670_PWDN"
              },
              "position": {
                "x": 800,
                "y": 64
              }
            },
            {
              "id": "9d7110a3-3cf2-46c7-ae76-69ebfe9883a5",
              "type": "basic.input",
              "data": {
                "name": "OV7670_HREF",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 104
              }
            },
            {
              "id": "f4c20f3d-47b2-43e0-9474-cf379dd06019",
              "type": "basic.output",
              "data": {
                "name": "CAPTURE_ADDR",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 688,
                "y": 152
              }
            },
            {
              "id": "72832f9b-1972-4a1c-b81e-a895fbbf1dc3",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D0",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 176
              }
            },
            {
              "id": "4359b806-c7a0-471f-9da9-e5271beb68de",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D1",
                "clock": false
              },
              "position": {
                "x": -464,
                "y": 208
              }
            },
            {
              "id": "a63c9de5-2bbe-4bf8-87c3-078fc03cd312",
              "type": "basic.output",
              "data": {
                "name": "CAPTURE_DATA",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 688,
                "y": 224
              }
            },
            {
              "id": "cc757d2d-942a-437d-bb6b-340f7104b99d",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D2",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 240
              }
            },
            {
              "id": "989c3718-33f4-4a9d-a56b-bb1e1ee58367",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D3",
                "clock": false
              },
              "position": {
                "x": -464,
                "y": 272
              }
            },
            {
              "id": "60bc29bf-2f81-4e0a-b81c-844756d89d96",
              "type": "basic.output",
              "data": {
                "name": "CAPTURE_WE"
              },
              "position": {
                "x": 688,
                "y": 296
              }
            },
            {
              "id": "bb9f2f06-9bd9-4650-acb4-8c3920e14503",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D4",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 304
              }
            },
            {
              "id": "f731eb81-7b9d-453a-9300-a79f4d40a8be",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D5",
                "clock": false
              },
              "position": {
                "x": -464,
                "y": 336
              }
            },
            {
              "id": "3ba849c6-05d4-48ff-8d54-be37e4e75bb6",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D6",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 368
              }
            },
            {
              "id": "48b9338f-1828-4c0b-b389-6fb616ec5e28",
              "type": "basic.input",
              "data": {
                "name": "OV7670_D7",
                "clock": false
              },
              "position": {
                "x": -464,
                "y": 400
              }
            },
            {
              "id": "cd410d7a-c16d-4dfa-bc87-14b47b830714",
              "type": "basic.input",
              "data": {
                "name": "RGB_MODE",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 464
              }
            },
            {
              "id": "338b5d2f-c57a-448e-9e5b-d906f74e0fb4",
              "type": "basic.input",
              "data": {
                "name": "TEST_MODE",
                "clock": false
              },
              "position": {
                "x": -568,
                "y": 520
              }
            },
            {
              "id": "dbbb50fc-1f8f-471d-9682-913cc6cc96d3",
              "type": "d7e6ff61e136e0120db6aaabf8b34ea6fd14c159",
              "position": {
                "x": 928,
                "y": -56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
              "type": "ac0fb209d6b278ec098f905047997de6810ce2d3",
              "position": {
                "x": 392,
                "y": -152
              },
              "size": {
                "width": 96,
                "height": 256
              }
            },
            {
              "id": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
              "type": "0b18a78cdc88f50f1d74d815e65f6d8118ec280d",
              "position": {
                "x": 392,
                "y": 144
              },
              "size": {
                "width": 96,
                "height": 224
              }
            },
            {
              "id": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
              "type": "f79bd00eef4bd1a8ed5c1743705859b152db76fe",
              "position": {
                "x": -328,
                "y": 192
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
                "block": "72832f9b-1972-4a1c-b81e-a895fbbf1dc3",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "9b523903-6033-48ee-9911-17cd4a0098fa"
              }
            },
            {
              "source": {
                "block": "4359b806-c7a0-471f-9da9-e5271beb68de",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "c3ded014-3d4c-4fe4-b6eb-60cebda43db0"
              }
            },
            {
              "source": {
                "block": "cc757d2d-942a-437d-bb6b-340f7104b99d",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "727214f6-871c-4086-b363-38e9c9d6fa77"
              }
            },
            {
              "source": {
                "block": "989c3718-33f4-4a9d-a56b-bb1e1ee58367",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "2f0c37bf-782f-4ff4-a948-092d72f663cb"
              }
            },
            {
              "source": {
                "block": "bb9f2f06-9bd9-4650-acb4-8c3920e14503",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "733d6c10-c99e-4ddc-8d03-29793ec8c46a"
              }
            },
            {
              "source": {
                "block": "f731eb81-7b9d-453a-9300-a79f4d40a8be",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "a31b590a-a4ef-4f19-bf04-082d40c70adb"
              }
            },
            {
              "source": {
                "block": "3ba849c6-05d4-48ff-8d54-be37e4e75bb6",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "40ac0610-323e-4121-8b8c-22221388630d"
              }
            },
            {
              "source": {
                "block": "48b9338f-1828-4c0b-b389-6fb616ec5e28",
                "port": "out"
              },
              "target": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "3512f8a7-dbc9-4dfe-be01-605af3aac1e1"
              }
            },
            {
              "source": {
                "block": "d6c45f84-0898-42f6-88ae-448a142560d8",
                "port": "out"
              },
              "target": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "07d985d1-3743-42a3-b436-7711d43b5619"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "d6c45f84-0898-42f6-88ae-448a142560d8",
                "port": "out"
              },
              "target": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "96b8580d-c157-4c3f-8d9f-a9a78ba9f250"
              },
              "vertices": [
                {
                  "x": -216,
                  "y": 152
                },
                {
                  "x": -216,
                  "y": 176
                }
              ]
            },
            {
              "source": {
                "block": "9b95db21-3045-4d45-b199-9e7b5e206fa5",
                "port": "out"
              },
              "target": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "13f4dbe3-4d9a-49c1-9861-f6752ab437ba"
              },
              "vertices": [
                {
                  "x": -192,
                  "y": 88
                }
              ]
            },
            {
              "source": {
                "block": "9b95db21-3045-4d45-b199-9e7b5e206fa5",
                "port": "out"
              },
              "target": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "f51b568d-ac69-4203-9499-defb12e9622a"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "67b275d5-b9d2-4f4f-99cb-43476f09378f",
                "port": "869657d7-2582-484e-a7f9-b3767aa8572c"
              },
              "target": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "efd6da35-ded9-4b6a-b3bf-58146a52594b"
              },
              "size": 8
            },
            {
              "source": {
                "block": "cd410d7a-c16d-4dfa-bc87-14b47b830714",
                "port": "out"
              },
              "target": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "53aa1fd4-6330-475b-b766-6e746228bc52"
              },
              "vertices": [
                {
                  "x": 288,
                  "y": 360
                }
              ]
            },
            {
              "source": {
                "block": "cd410d7a-c16d-4dfa-bc87-14b47b830714",
                "port": "out"
              },
              "target": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "ced72741-07bf-4908-a1a2-2a6e965d04dd"
              },
              "vertices": [
                {
                  "x": 288,
                  "y": 408
                }
              ]
            },
            {
              "source": {
                "block": "338b5d2f-c57a-448e-9e5b-d906f74e0fb4",
                "port": "out"
              },
              "target": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "d6b3dc26-25b7-4476-95a2-14a2c250dad1"
              },
              "vertices": [
                {
                  "x": 256,
                  "y": 176
                }
              ]
            },
            {
              "source": {
                "block": "cac2fb92-01e7-48e7-b6c2-d448cca3b434",
                "port": "out"
              },
              "target": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "c32611f5-ece2-4234-a65f-b5a85a3988c0"
              },
              "vertices": [
                {
                  "x": 160,
                  "y": 120
                }
              ]
            },
            {
              "source": {
                "block": "5e626432-7c43-4b74-a88a-aa9a648345c9",
                "port": "out"
              },
              "target": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "8879957f-53f1-43e6-82ab-0c193136629b"
              },
              "vertices": [
                {
                  "x": 120,
                  "y": 152
                }
              ]
            },
            {
              "source": {
                "block": "9d7110a3-3cf2-46c7-ae76-69ebfe9883a5",
                "port": "out"
              },
              "target": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "64e80ac2-8d86-421b-a9b2-d2b0275f4f49"
              },
              "vertices": [
                {
                  "x": -80,
                  "y": 264
                }
              ]
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "c7eb44d2-1692-40a9-aaf9-1f7b1675c04a"
              },
              "target": {
                "block": "24535636-7068-4eaf-8ea1-ba9f97cd08a3",
                "port": "in"
              },
              "size": 6
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "3520b631-32aa-4b4f-bd27-2f6c43b998f3"
              },
              "target": {
                "block": "8bf7cb13-c648-4f00-bc99-331339329370",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "e8a3cc8a-5ae0-4dd9-8404-6ec7058d7e55"
              },
              "target": {
                "block": "d72b4174-f259-4972-919d-c031b9d25af7",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "baae5b29-67f9-41ce-b1e3-370a0b0d731a"
              },
              "target": {
                "block": "00843802-ac7d-48cc-a13e-5342dba80074",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 624,
                  "y": -16
                }
              ]
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "78d12cc4-7d6d-4a27-b046-e68e2a9c4fb1"
              },
              "target": {
                "block": "2a5cb73b-b7f7-4719-9d7e-2b5789bb998e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "1ec398c7-8274-48f3-9d64-a1cc7c85369c"
              },
              "target": {
                "block": "54acda2c-f70a-4af7-b57f-0970132342ff",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "d737ffc7-edfb-45f0-836c-d2937afab898"
              },
              "target": {
                "block": "60bc29bf-2f81-4e0a-b81c-844756d89d96",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "8c4d501b-883d-4063-8735-3011e2352203"
              },
              "target": {
                "block": "a63c9de5-2bbe-4bf8-87c3-078fc03cd312",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "94771bb3-2e6b-4428-9bb9-061cab3adfef",
                "port": "e6183e3b-2fe5-4ad1-9100-131b86e944dd"
              },
              "target": {
                "block": "f4c20f3d-47b2-43e0-9474-cf379dd06019",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "dbbb50fc-1f8f-471d-9682-913cc6cc96d3",
                "port": "6459ba21-608e-4f77-8235-c8c1b08ba775"
              },
              "target": {
                "block": "33d14280-55bc-45ab-af5b-40dff5784f86",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "0e8058b3-d909-4728-a7c3-43d38e9ccbf8"
              },
              "target": {
                "block": "dbbb50fc-1f8f-471d-9682-913cc6cc96d3",
                "port": "f96a1baf-fc8b-4c25-b132-12552605743f"
              }
            },
            {
              "source": {
                "block": "1a568d69-b7d2-4c8b-b039-66f3788b6ba6",
                "port": "44ef1b5d-c37c-4ee5-9917-dde654188819"
              },
              "target": {
                "block": "dbbb50fc-1f8f-471d-9682-913cc6cc96d3",
                "port": "04fdb7a7-2740-4ff1-ad26-56407ef5b958"
              },
              "vertices": [
                {
                  "x": 656,
                  "y": -24
                }
              ]
            }
          ]
        }
      }
    },
    "d7e6ff61e136e0120db6aaabf8b34ea6fd14c159": {
      "package": {
        "name": "In-out-right",
        "version": "0.1",
        "description": "Bloque inout, con conexión de pin por la derecha",
        "author": "Salvador E. Tropea",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22770.821%22%20height=%22624.079%22%20viewBox=%220%200%20203.94649%20165.12089%22%20id=%22svg8%22%3E%3Cdefs%20id=%22defs2%22%3E%3Cmarker%20orient=%22auto%22%20id=%22Arrow2Mstart%22%20overflow=%22visible%22%3E%3Cpath%20id=%22path899%22%20d=%22M5.231%202.42L-1.324.01%205.23-2.401C4.184-.978%204.19.969%205.231%202.42z%22%20fill=%22green%22%20fill-rule=%22evenodd%22%20stroke=%22green%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22Arrow1Mstart%22%20overflow=%22visible%22%3E%3Cpath%20id=%22path881%22%20d=%22M4%200l2-2-7%202%207%202z%22%20fill=%22green%22%20fill-rule=%22evenodd%22%20stroke=%22green%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22Arrow2Mend%22%20overflow=%22visible%22%3E%3Cpath%20id=%22path902%22%20d=%22M-5.231-2.42L1.324-.01-5.23%202.401c1.047-1.423%201.041-3.37%200-4.821z%22%20fill=%22green%22%20fill-rule=%22evenodd%22%20stroke=%22green%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22TriangleOutS%22%20overflow=%22visible%22%3E%3Cpath%20id=%22path1023%22%20d=%22M1.154%200l-1.73%201v-2z%22%20fill-rule=%22evenodd%22%20stroke=%22#000%22%20stroke-width=%22.2666%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22Arrow1Send%22%20overflow=%22visible%22%3E%3Cpath%20id=%22path890%22%20d=%22M-1.2%200l-1%201%203.5-1-3.5-1z%22%20fill-rule=%22evenodd%22%20stroke=%22#000%22%20stroke-width=%22.2666%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22Arrow2Mend-2%22%20overflow=%22visible%22%3E%3Cpath%20id=%22path902-9%22%20d=%22M-5.231-2.42L1.324-.01-5.23%202.401c1.047-1.423%201.041-3.37%200-4.821z%22%20fill=%22green%22%20fill-rule=%22evenodd%22%20stroke=%22green%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22Arrow2Mend-2-2%22%20overflow=%22visible%22%3E%3Cpath%20id=%22path902-9-7%22%20d=%22M-5.231-2.42L1.324-.01-5.23%202.401c1.047-1.423%201.041-3.37%200-4.821z%22%20fill=%22green%22%20fill-rule=%22evenodd%22%20stroke=%22green%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20id=%22layer1%22%20transform=%22translate(-29.4%20-56.943)%22%3E%3Cpath%20d=%22M230.796%20196.941h-77.954V76.847%22%20id=%22path873-6-3%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.646%22%20stroke-linecap=%22round%22/%3E%3Cpath%20id=%22path855-5%22%20d=%22M130.88%20159.638l-27.214-45.357-27.214%2045.357z%22%20fill=%22#f2f2f2%22%20stroke=%22#000%22%20stroke-width=%222.646%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M103.666%20114.28V76.77%22%20id=%22path873%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.646%22%20stroke-linecap=%22round%22/%3E%3Cpath%20d=%22M104.086%2076.77h127.918%22%20id=%22path1157%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.646%22%20stroke-linecap=%22round%22/%3E%3Ccircle%20id=%22path1159%22%20cx=%22153.191%22%20cy=%2276.77%22%20r=%223.742%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.646%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M105.27%20159.904v37.511H35.547%22%20id=%22path873-6%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.646%22%20stroke-linecap=%22round%22/%3E%3Cpath%20d=%22M39.021%20210.405h57.196%22%20id=%22path1195%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%222.646%22%20marker-end=%22url(#Arrow2Mend)%22/%3E%3Cpath%20d=%22M164.857%20109.77v57.195%22%20id=%22path1195-1%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%222.646%22%20marker-end=%22url(#Arrow2Mend-2)%22/%3E%3Cpath%20d=%22M163.814%2063.843h57.195%22%20id=%22path1195-1-0%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%222.646%22%20marker-start=%22url(#Arrow2Mstart)%22%20marker-end=%22url(#Arrow2Mend-2-2)%22/%3E%3Cpath%20d=%22M90.694%20135.035H51.459%22%20id=%22path873-9%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.646%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:ubuntu;text-align:start%22%20x=%2238.628%22%20y=%22126.356%22%20id=%22text2352%22%20font-weight=%22400%22%20font-size=%2232.91%22%20font-family=%22ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%222.057%22%3E%3Ctspan%20id=%22tspan2350%22%20x=%2238.628%22%20y=%22126.356%22%3Eoe%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cstyle%20id=%22style3%22/%3E%3C/svg%3E"
      },
      "design": {
        "config": "true",
        "graph": {
          "blocks": [
            {
              "id": "f96a1baf-fc8b-4c25-b132-12552605743f",
              "type": "basic.input",
              "data": {
                "name": "oe"
              },
              "position": {
                "x": 40,
                "y": 64
              }
            },
            {
              "id": "6459ba21-608e-4f77-8235-c8c1b08ba775",
              "type": "basic.output",
              "data": {
                "name": "pin"
              },
              "position": {
                "x": 704,
                "y": 64
              }
            },
            {
              "id": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
              "type": "basic.output",
              "data": {
                "name": "din"
              },
              "position": {
                "x": 720,
                "y": 192
              }
            },
            {
              "id": "04fdb7a7-2740-4ff1-ad26-56407ef5b958",
              "type": "basic.input",
              "data": {
                "name": "dout",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 192
              }
            },
            {
              "id": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
              "type": "basic.code",
              "data": {
                "code": "  SB_IO #(\n      .PIN_TYPE(6'b1010_01),\n      .PULLUP(1'b0)\n  ) triState (\n      .PACKAGE_PIN(pin),\n      .OUTPUT_ENABLE(oe),\n      .D_OUT_0(dout),\n      .D_IN_0(din)\n  );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "oe"
                    },
                    {
                      "name": "dout"
                    }
                  ],
                  "out": [
                    {
                      "name": "pin"
                    },
                    {
                      "name": "din"
                    }
                  ]
                }
              },
              "position": {
                "x": 248,
                "y": 32
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
                "port": "dout"
              }
            },
            {
              "source": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "din"
              },
              "target": {
                "block": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "pin"
              },
              "target": {
                "block": "6459ba21-608e-4f77-8235-c8c1b08ba775",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "ac0fb209d6b278ec098f905047997de6810ce2d3": {
      "package": {
        "name": "ov7670_ctrl",
        "version": "1.0",
        "description": "",
        "author": "Felipe Machado (URJC)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22314.786%22%20height=%22331.963%22%20viewBox=%220%200%2083.287224%2087.831902%22%3E%3Cg%20transform=%22matrix(.678%200%200%20.678%20-1.237%2022.689)%22%3E%3Cimage%20width=%22101.902%22%20height=%22101.902%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAACAAAAAgACAQAAAAYrhu7AAAABGdBTUEAALGPC/xhBQAAACBjSFJN%20AAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAHVDSURB%20VHja7N13lJ1lofbhe0wj1CC9hd57kxYENKAgTYSISLGClWA7xA7qUaJ8SlGORBEFCxJApIkQBCER%20REIRKYIU0UgoIYEQ0me+P0SkpEzZ5S3X5VpnqcuzkF+cXe559rMTAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgJ7qkACg8N6YVUQACu6J3CgCgAEAgL5YOpOyrAxAwT2f%20NfKcDABF9joJAAru3d7+AyWwdA4XAaDYnAAAKLrbsr0IQAncmW1FACgyJwAAim0Hb/+BktjG4xWA%20AQCA3vugBIBHLAAawUcAAIrMBYBAmbgIEKDQnAAAKDIXAAJl4iJAgEJzAgCgyFwACJSLiwABCswJ%20AIDicgEgUDYuAgQwAADQC67TAjxyAdAwPgIAUFQuAATKyEWAAIXlBABAUbkAECgjFwECFJYTAABF%205QJAoJxcBAhQUE4AABSTCwCBsnIRIIABAIAecI0W4BEMgIbyEQCAInIBIFBmLgIEKCQnAACKyAWA%20QJm5CBCgkJwAACgiFwAC5eYiQIACcgIAoHhcAAiUnYsAAQwAAHSD67MAj2QANJyPAAAUjQsAgSpw%20ESBA4TgBAFA0LgAEqsBFgACF4wQAQNG4ABCoBhcBAhSMEwAAxeICQKAqXAQIYAAAYBFcmwV4RAOg%20KXwEAKBIXAAIVImLAAEKxQkAgCJxASBQJS4CBCgUJwAAisQFgEC1uAgQoECcAAAoDhcAAlXjIkAA%20AwAAC+C6LMAjGwBN4yMAAEXhAkCgilwECFAYTgAAFIULAIEqchEgQGE4AQBQFC4ABKrJRYAABeEE%20AEAxuAAQqCoXAQIYAAB4GddkAR7hAGgqHwEAKAIXAAJV5iJAgEJwAgCgCFwACFSZiwABCsEJAIAi%20cAEgUG0uAgQoACcAANrPBYBA1bkIEMAAAEBcjwV4pAOgBXwEAKDdXAAI1IGLAAHazgkAgHZzASBQ%20By4CBGg7JwAA2s0FgEA9uAgQoM2cAABoLxcAAnXhIkAAAwBArbkWC/CIB0BL+AgAQDu5ABCoExcB%20ArSVEwAA7eQCQKBOXAQI0FZOAAC0kwsAgXpxESBAGzkBANA+LgAE6sZFgAAGAIBach0W4JEPgJbx%20EQCAdnEBIFBHLgIEaBsnAADaxQWAQB25CBCgbZwAAGgXFwAC9eQiQIA2cQIAoD1cAAjUlYsAAQwA%20ALXiGizAIyAALeUjAADt4AJAoM5cBAjQFk4AALSDCwCBOnMRIEBbOAEA0A4uAATqzUWAAG3gBABA%2067kAEKg7FwECGAAAasH1VwAeCQFazkcAAFrNBYAALgIEaAMnAABazQWAAC4CBGgDJwAAWs0FgACJ%20iwABWs4JAIDWcgEgwL+5CBDAAABQaa69AvCICNAWPgIA0EouAAT4LxcBArSUEwAAreQCQID/chEg%20QEs5AQDQSi4ABHg5FwECtJATAACt4wJAgFdyESCAAQCgklx3BeCREaBtfAQAoFVcAAjwWi4CBGgZ%20JwAAWsUFgACv5SJAgJZxAgCgVVwACLAgLgIEaBEnAABawwWAAAvmIkAAAwBApbjmCsAjJEBb+QgA%20QCu4ABBg4VwECNASTgAAtIILAAEWzkWAAC3hBABAK7gAEGBRXAQI0AJOAAA0nwsAARbNRYAABgCA%20SnC9FYBHSoC28xEAgGZzASDA4rkIEKDpnAAAaDYXAAIsnosAAZrOCQCAZnMBIEB3uAgQoMmcAABo%20LhcAAnSPiwABDAAApeZaKwCPmACF4CMAAM3kAkCA7nMRIEBTOQEA0EwuAAToPhcBAjSVEwAAzeQC%20QICecBEgQBM5AQDQPC4ABOgZFwECGAAASsl1VgAeOQEKw0cAAJrFBYAAPeciQICmcQIAoFlcAAjQ%20cy4CBGgaJwAAmsUFgAC94SJAgCZxAgCgOVwACNA7LgIEMAAAlIprrAA8ggIUio8AADSDCwABes9F%20gABN4QQAQDO4ABCg91wECNAUTgAANIMLAAH6wkWAAE3gBABA47kAEKBvXAQIYAAAKAXXVwF4JAUo%20HB8BAGg0FwAC9J2LAAEazgkAgEZzASBA37kIEKDhnAAAaDQXAAI0gosAARrMCQCAxnIBIEBjuAgQ%20wAAAUGiurQLwiApQSD4CANBILgAEaBwXAQI0lBMAAI3kAkCAxnERIEBDOQEA0EguAARoJBcBAjSQ%20EwAAjeMCQIDGchEggAEAoJBcVwXgkRWgsHwEAKBRXAAI0HguAgRoGCcAABrFBYAAjeciQICGcQIA%20oFFcAAjQDC4CBGgQJwAAGsMFgADN4SJAAAMAQKG4pgrAIyxAofkIAEAjuAAQoHlcBAjQEE4AADSC%20CwABmsdFgAAN4QQAQCO4ABCgmVwECNAATgAA9J0LAAGay0WAAAYAgEJwPRWAR1qAwvMRAIC+cgEg%20QPO5CBCgz5wAAOgrFwACNJ+LAAH6zAkAgL5yASBAK7gIEKCPnAAA6BsXAAK0hosAAQwAAG3lWioA%20j7gApeAjAAB94QJAgNZxESBAnzgBANAXLgAEaB0XAQL0iRMAAH3hAkCAVnIRIEAfOAEA0HsuAARo%20LRcBAhgAANrCdVQAHnkBSsNHAAB6ywWAAK3nIkCAXnMCAKC3XAAI0HouAgToNScAAHrLBYAA7eAi%20QIBecgIAoHdcAAjQHi4CBDAAALSUa6gAPAIDlIqPAAD0hgsAAdrHRYAAveIEAEBvuAAQoH1cBAjQ%20K04AAPSGCwAB2slFgAC94AQAQM+5ABCgvVwECGAAAGgJ108BeCQGKB0fAQDoKRcAArSfiwABeswJ%20AICecgEgQPu5CBCgx5wAAOgpFwACFIGLAAF6yAkAgJ5xASBAMbgIEMAAANBUrp0C8IgMUEo+AgDQ%20Ey4ABCgOFwEC9IgTAAA94QJAgOJwESBAjzgBANATLgAEKBIXAQL0gBMAAN3nAkCAYnERIIABAKAp%20XDcF4JEZoLR8BACgu1wACFA8LgIE6DYnAAC6ywWAAMXjIkCAbnMCAKC7XAAIUEQuAgToJicAALrH%20BYAAxeQiQAADAEBDuWYKwCM0QKn5CABAd7gAEKC4XAQI0C1OAAB0hwsAAYrLRYAA3eIEAEB3uAAQ%20oMhcBAjQDU4AACyeCwABis1FgAAGAICGcL0UgEdqgNLzEQCAxXEBIEDxuQgQYLGcAABYHBcAAhSf%20iwABFssJAIDFcQEgQBm4CBBgMZwAAFg0FwAClIOLAAEMAAB94lopAI/YAJXgIwAAi+ICQIDycBEg%20wCI5AQCwKC4ABCgPFwECLJITAACL4gJAgDJxESDAIjgBALBwLgAEKBcXAQIYAAB6xXVSAB65ASrD%20RwAAFsYFgADl4yJAgIVyAgBgYVwACFA+LgIEWCgnAAAWxgWAAGXkIkCAhXACAGDBXAAIUE4uAgQw%20AAD0iGukADyCA1SKjwAALIgLAAHKy0WAAAvkBADAgrgAEKC8XAQIsEBOAAAsiAsAAcrMRYAAC+AE%20AMBruQAQoNxcBAhgAADoFtdHAXgkB6gcHwEAeDUXAAKUn4sAAV7DCQCAV3MBIED5uQgQ4DWcAAB4%20NRcAAlSBiwABXsUJAIBXcgEgQDW4CBDAAACwSK6NAvCIDlBJPgIA8HIuAASoDhcBAryCEwAAL+cC%20QIDqcBEgwCs4AQDwci4ABKgSFwECvIwTAAD/5QJAgGpxESCAAQBggVwXBeCRHaCyfAQA4D9cAAhQ%20PS4CBHiJEwAA/+ECQIDqcREgwEucAAD4DxcAAlSRiwABXuQEAMC/uQAQoJpcBAhgAAB4BddEAXiE%20B6g0HwEASFwACFBlLgIESOIEAMC/uQAQoLpcBAiQxAkAgH9zASBAlbkIECBOAAAkLgAEqDoXAQIY%20AACSuB4KwCM9QA34CACACwABqs9FgABOAAC4ABCgBlwECOAEAIALAAFqwUWAQO05AQDUnQsAAerB%20RYCAAUACoOZcCwXgER+gFnwEAKg3FwAC1IeLAIGacwIAqDcXAALUh4sAgZpzAgCoNxcAAtSJiwCB%20WnMCAKgzFwAC1IuLAAEDAEBNuQ4KwCM/QG34CABQXy4ABKgfFwECNeYEAFBfLgAEqB8XAQIGAIAa%20cgwUoI6OlQCoKx8BqIdVsk7WyTpZKytkhayUZbN8koFZShoAAKiVGZmTZGqezdN5OlPyjzyaR/No%20npTGAEB59c/W2S5bZctsleXlAAAAFmFq7srduTsT8+fMk8MAQDkskd2ze4blDX6/DwAA9Njz+WMm%205KbclNliGAAoqnWzX/bNXllSCgAAoI9m5Pr8JlflUSkMABTJWjkkh2VXf54AAECD3ZuxOT8PCWEA%20oN2WzIh8wFt/AACgiboyIT/I2MyUwgBAe2yRD+fdWU4IAACgBablp/l+7hHCAEBrDcuJeZs/PwAA%20oMUmZHSuSJcQBgCa73U5LJ/LVkIAAABtcmf+NxcbAQwANNfwjM52MgAAAG32l3wlFxkBDAA0x+75%20dnaQAQAAKIhb88lMkKEsXidBSayZ8/J7b/8BAIACeUPG5/KsK0Q59JOgBAbmi/lltndeAwAAKJyN%20cmw6cnM6pSg6bymLb5f8IJvLAAAAFNhf8sHcIkOx+QhAsS2ZMzLe238AAKDgtsj4fCeDhSgyJwCK%20/SP082wpAwAAUBL35d25Q4aicgdAUb0un84vs7oQAABAaayU92RG/ihEMTkBUEzL5ic5WAYAAKCE%20rsyRmSaDAYDu2CS/yiYyAAAAJfW3HJK7ZSgalwAWz4jc5u0/AABQYhvkD3mHDEXjDoCiGZkfZJAM%20AABAqQ3MYenIDUIYAFjYn8b38kUfywAAACqgI3tmrfwmnVIU54+EolgiY7O/DAAAQIVclhGZLYMB%20gJdbMpdmbxkAAICKuSEHZroMBgD+Y7lcmd1kAAAAKmh89s+zMhgASJIlc3V2lwEAAKioW7KPUwDt%2052sA229wrvD2HwAAqLCdc2kGy2AAqLuBuSR7yQAAAFTamzI2A2VoL18D2F4dOTfvkAEAAKi8jbJh%20LpHBAFBfX83HRQAAAGphi3Tl9zIYAOrpvfl/IgAAALWxRx7NXTK0i28BaJ/dcn0GyAAAANTInOyR%20W2QwANTLKpmYNWQAAABqZnK2z79kaAffAtAeA3Kht/8AAEANrer7ANrFHQDt8c28SwQAAKCW1srA%20jJOh9XwEoB32ztXOXgAAALXVmX1ynQwGgOpbPndlLRkAAIAam5StM0WG1vJ76Nb7obf/AABAza2R%20/xPBAFB1I3KICAAAQO0d5r1Rq/kIQGu9PvdmFRkAAAAyOZtlqgyt41sAWuusDBMBAAAgydJZPlfI%200DpOALTSsNyoOAAAwIu6smtukcEAUD2vyy3ZUQYAAICXTMwb0ilDq96U0irv8fYfAADgFbbPu0Vo%20FScAWmXpPJDVZAAAAHiFSdkoL8jQCk4AtMrx3v4DAAC8xhr5qAit4QRAayyXh/N6GQAAAF5jStbN%20dBmazwmA1viEt/8AAAALtEKOF6EVnABoheXyWJaVAQAAYIGmZm1nAJrPCYBWONbbfwAAgIVaPu8X%20ofmcAGi+AflbhsoAAACwUH/PBpknQ3M5AdB8I7z9BwAAWKS1c6gIBoDy+7gEAAAA3jm1m48ANNuW%20+bMIAAAAi7VF7hGhmZwAaLZjJQAAAOiGD0jQXE4ANNfgTMryMgAAACzWlKyZWTI0jxMAzXWQt/8A%20AADdskL2E8EAUF4jJAAAAPAOqgh8BKCZlskTGSwDAABAt7yQlTNDhmZxAqCZDvD2HwAAoNuWzNtE%20MACU00ESAAAA9MCBEjSPjwA0T788mdfLAAAA0G1PZ5V0ytAcTgA0z07e/gMAAPTIitleBANA+ewr%20AQAAgHdSBoDqe5MEAAAA3kkVhTsAmmVQpmUJGQAAAHpkZoZkjgzN4ARAs+zg7T8AAECPDc62IhgA%20ymU3CQAAALybMgBU3w4SAAAA9MIbJDAAlMvWEgAAAPTCVhI0h0sAm2NwpqefDAAAAD02P8tkpgyN%205wRAc2zp7T8AAECv9MumIhgAymMzCQAAAHppcwkMAOWxrgQAAAC9tI4EBgD/cwUAAKg+v1I1ABgA%20AAAAvKPCAFAka0sAAABgACgSXwPYHC9ksAgAAAC9MiNLi9B4TgA0w1Le/gMAAPThPdUSIhgAymEF%20CQAAALyrMgBU3+slAAAAMAAYAKpvGQkAAAD6wB0ABoCSGCgBAABAHwySwADgf6oAAADeVWEAKAgn%20AAAAALyrMgDUQH8JAAAADAAGgOrrkAAAAMC7KgMAAAAAYAAAAAAADAAAAACAAQAAAAAwAAAAAIAB%20AAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAABgAAAAAAAMAAAAAGAAAAAAAAwAAAAAgAEA%20AAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAAAAMAAAAAYAAAAAAADAAAAACAAQAA%20AAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAwAAAAAAAGAAAAAAAAwAAAABgAAAAAAAMAAAAAIABAAAA%20ADAAAAAAAAYAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAAAAwAAAAAgAEAAAAA%20MAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAADAAAAABgAAAAAAAM%20AAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAAAYAAAAAAADAAAAAGAAAAAAAAwA%20AAAAgAEAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAADAAA%20AACAAQAAAAAwAAAAAAAGAAAAADAAAAAAAAYAAAAAwAAAAAAAFFJ/CQCgYp7N7DyfZFq6knRlWpKk%20M8++4j/1uiz34muBZZIkA7J0kuUzKEtKCAAGAACgvWZkaqbmmVf83+cyO9MyM7MyLbPyQgP+Kstl%20UJbOMlkiy2SpLJvl8/os/4r/O9AfBQAYAACAxrzV/1eeyOQ8niczKU9mcibn6cxuyV/72SRPLvI/%20sVRWyapZOWtk5az24j9bKYP8sQGAAQAAWJS5+Wcey9/z9zyWf+SxPJYZhf7vOyMP5+HX/LsrZs0M%20zToZ+uI/VvMHCwAGAACouyl5MA/mwfwtj+XRPJ7OCvw9PZ2nc+fL/vWgDM3QrJMNs0E2zIYZ7I8d%20AAwAAFB9z+Wv+VsezAN5MH/LMzX4O56dB/PgS/+qI2u+OARskI2ygXsEAMAAAADVMSd/yz25N/fk%203txXid/y915X/pF/5PqXXoMMzebZLJtns2zh9gAAMAAAQPl05sHckbtzb+7OIzV/079w8/JwHs7l%20SZJB2SybZYtsme3cGwAABgAAKLb5+Wvuyb2ZmAm1ON7fSLNzR+548Z8vn82zfbbP9tk0HdIAgAEA%20AIqhM/fmT5mY23NXXpCjAaZmfMYnSVbKdtku2+cNWUsWADAAAEB7TM+fMz4T/La/iZ7Kb/PbJMlq%202SHbZ7fs5nsEAMAAAACt8XAmZGLG5w6f7W+hx3N5Lk/SPxtntwzL9tlMFAAwAABA483PXzM+43Kd%203/e31bzck3syJslqGZbhGWYIAAADAAA05o3/nZmQ8RmXqWIUyuMZm7GGAAAwAABA33TlzozLDbkp%2008UoxRCwRvbKntnHdYEAYAAAgO55KjdkXK7MJClKZVJ+mp8mWS/DMzxvybKSAIABAAAWZF7+mMsz%20LrenS4wSezhjMib9s3P2z/Bslw5JAMAAAAD/9lguz5X5fV6QojLmZXzGJ1k1+2R/5wEAwAAAQN3d%20m8tzRSb4nX9lTc55OS/9skv2z8HZWBAADAAAUC+zMj5X5CKf86+J+Rmf8RmV9XJADssueZ0kABgA%20AKDqpubX+VXGOe5fSw/n9JyeVXJA3pE3Z4AgABgAAKCKnsmVGZvfZo4UNfdEfpgfZkgOzGHZO4ME%20AcAAAABVMSVXZWyuzlwpeMm0nJfzsmTenMNySJYSBAADAACU2VMZm4tyY+ZLwQK9kMtzeT6a/XNY%209nMaAAADAACUz6yMy3m51G/96Ybp+UV+keVyUA7LvuknCAAGAAAog87cnPPyi0yXgh55NuflvKyR%20Q3NUtpcDgCryRTgAVMe9GZU1MyxjvP2nlybl9OyQLXJyHhEDgKpxAgCAKpic83Ju7heChrgn9+Qr%202SvvzTuyhBwAVIUTAACU2/yMy4gMzYne/tNQnbkuR2bVHJcJYgBgAACA9nogJ2e97J2xLvujSZ7N%20mAzL5hmdp8QAwAAAAK33fM7N7tk4J+UxMWi6ezMqa+XwXJNOMQAwAABAqzyQUVk778t4KWih2fll%203pKhOdlZAAAMAADQbPNzRfbOJhmdZ8SgLSblpKyVERknBQAGAABojskZnXVzQMalSwzaanbGZu9s%20nzGZIQYABgAAaJyuXJdDs1ZG5R9iUBi357ismU/kASkAMAAAQN/NzvnZOsNzceaJQeFMy2nZJHvn%20CudSADAAAEDvPZnRWS9H524pKLCujMsB2SRnZKYYABgAAKCn/pzjsk5G5V9SUAoPZGTWyahMkgIA%20AwAAdE9XxuXAbJMxfp9Kyfz7zMoxzqwAYAAAgMWZk3OzWfbO5T5RTWn/N3xets6++b0UABgAAGDB%20ZuSMbJD35X4pKLmuXJ09s33GGrIAMAAAwCs9lzOyQUb6mj8q5PaMyFY53/dXAGAAAIB/eyInZ+2M%20zGQpqJy/5OhsmDPyghQAGAAAqLdHcmzWzkmZJgWV9WhGZr18M89LAYABAIB6eiwnZNP8ILOloPKe%20yIlZJyfnOSkAMAAAUL83/xvldG/+qZEpOSnrGwEAMAAAUK83/xt7808tPW0EAMAAAEA9/OPFN/+z%20pKDmI8BoFwMCYAAAoKqezPHZwJt/SPJ0RmX9fC9zpQDAAABAtTyf0dkwZ2aOFPCiyflYNsiYzJcC%20AAMAANUwJ2OyQUb51DO8xmM5LltnrBAAGAAAKLvOjM2mOS5PSAELcU9GZNfcKAQABgAAymtctsuI%20PCwELMbN2SN75y4hADAAAFA+E7OnNzTQA+OyXY7JZCEAMAAAUB6Tclx2yu+FgB7pzHnZICf7pgwA%20DAAAlMELGZ1N3WwOvTQjJ2XDnJ8uKQAwAABQXF0Zm80yKtOlgD74Z47OThkvBAAGAACK6ZbsmhH5%20uxDQAH/KGzMijwgBgAEAgGJ5LIdll9wiBDRMV8ZmczcCAGAAAKA45uaMbJGLhICGm/nijQAAYAAA%20oO1+l20y0qf+oWn+maMzPPcLAYABAIB2vjE5Jm/OvUJAk12XrXJCnhcCAAMAAK03N2dk05wnBLTo%20J+70bOLDAAAYAABotWuyaUb6fSS01KQcnX3zsBAAGAAAaI1nclzemoeEgDa4Olvk5MwRAgADAADN%201ZXzs3HGpEsKaJOZOSk7+NJNAAwAADTT37JPjs7TQkCb3Z1dc1yeEwIAAwAAjTc3o7NlxgkBhdCV%20MS4FBMAAAEDj3ZStMyqzhIACeTxH5+2ZJAQABgAAGmNmRmXP3CcEFNCl2dytHAAYAABohAnZJqPT%20KQQU1LM5LvvmMSEAMAAA0HsvZFTemAeEgIL7bbZ0DgAAAwAAvTXe7/6hNJ7LcXmrcwAAGAAA6KkX%20Mip75EEhoESuyZY5w2gHgAEAgO67IZv73T+U0HMZmbfkH0IAYAAAYPHm5uQMz6NCQEmNy5YZIwMA%20BgAAFu2e7JSTMl8IKLFnc1xG5BkhADAAALBgXTkj2+cOIaACxmbz/EYGAAwAALzWY3lzRma2EFAR%20k/O2HJcXhADAAADAy43NtrleBqiUrozJjk71AGAAAOA/ns27fF4YKure7JJvp0sIAAwAANyWHXKB%20DFBZs/Op7JPJQgBgAACos66ckd3yNyGg4sZlm1wjAwAGAIC6ejoHZGTmCAE18ETemhMyVwgAAwAA%209XNDts6VMkBtdOX07J5HhAAwAABQJ/NzcobnX0JAzfwx22asDAAGAADqYlL2ykmZLwTU0LN5Zz7h%20owAABgAA6uDG7JCbZIDa6spp2TV/FwLAAABAtV/4n5Hhvg4Mau+27JBrZQAwAABQVc/lsIx09BdI%208nT2zcnpFALAAABA9dyZ7XKxDMCL5uekHJipQgAYAAColvOzWx6SAXiFK7NNbpUBwAAAQFXMzgdz%20dF4QAniNx7JnzpUBwAAAQBU8nj3zQxmAhZiZ9+U4t4MAGAAAKLvbs3NukQFYpDF5c56UAcAAAEB5%20/SLD8pgMwGLdlB0yUQYAAwAAZTQ/o3JEZgoBdMs/skcukgHAAABA2TyTfTNaBqAHZmRERqVTCAAD%20AADl8dfslmtlAHqoK6NzQJ4VAsAAAEA5XJkdc78MQK9cld3yqAwABgAAim9MDs50GYBeuyc75CYZ%20AAwAABTZ/IzMcZknBNAnU7J3fiYDgAEAgKJ6Pm/PGTIADTA7R+XkdAkBYAAAoHgm5Y25XAagQbpy%20Uo7ILCEADAAAFMud2Tl3yAA01AV5c56SAcAAAEBxXJRd808ZgIb7Q3bLgzIAGAAAKIYz887MlAFo%20igezcybIAGAAAKDdunJyjk+nEEDTPJN9coUMAAYAANppXj6Yk2QAmuyFHJwxMgAYAABolxk5MOfI%20ALTA/ByXUTIAGAAAaIcnskd+IwPQMqPzvsyTAcAAAEBrPZzdM1EGoKXOzTvyggwABgAAWue27OyL%20uYA2uCz7ZKoMAAYAAFrjxrw5T8kAtMWE7J5/yQBgAACg+a7MW/OcDEDb3JNheUgGAAMAAM11Qd6e%20mTIAbfVIds9fZAAwAADQPGfn3ZkrA9B2j2eP3CoDgAEAgOY4Ix9OpwxAITyTfTJeBgADAACNNzoj%200yUDUBjP5i25WgYAAwAAjdSVj2aUDEDBvJCDcrEMAAYAABr39v9jOUsGoIDm5J35qQwABgAAGvP2%20/6Pe/gOFNT/vyXkyAJRDfwkACv3S+v35iQxAoR+n3pfOvEcIgOJzAgCg2C+rvf0HyvBY9X8yABgA%20AOj9S2oHa4Fy6MpH8z0ZAAwAAPTu7f8xrtYCSjQBfDxnygBQbO4AACiiuTk8l8gAlGoCGJnk40IA%20FJcTAADFMz9He/sPlHIC8K0lAAYAALqtM+/JBTIApZwAPpYxMgAYAADo3svnj/jsP1Dix7AP52cy%20ABgAAFj8S+eP5WwZgBLrzDFOMQEYAABYnFE+PwuU3vwcnctkADAAALBwn8s3RQAqYG4Oy5UyABgA%20AFiwk/INEYCKmJPDcr0MAAYAAF7r1JwsAlAhM3Ng/igDgAEAgFc6P/8jAlAxz+etuUsGAAMAAP91%20Wd6XLhmAypmW/fKIDAAGAAD+7fq8M/NkACrpX9k7k2UAMAAAkNyVQzJLBqCyHso+mSoDgAEAoO4e%20zFsyTQag0u7O2zJDBgADAECd/TN75wkZgMq7OYdnrgwABgCAupqSvfN3GYBauCIfcNkpgAEAoJ5m%205qDcLwNQG+fl8yIAGAAA6qczR2aCDECtfCPfFQHAAABQN5/IJSIAtXNCfiUCgAEAoE6+lTNEAGpo%20ft6dm2UAMAAA1MWFGSUCUFMzc2AekAHAAABQBzfm6HTKANTW09kvT8oAYAAAqLp7c3BmywDU2kPZ%20PzNkADAAAFTZE9kvU2UAau9PzkIBGAAAqmxW3p6/ywCQ5JJ8UQQAAwBANXXlg+6+BnjJ1/NDEQAM%20AABV9LX8VASAl/lofi8CgAEAoGouyUkiALzCnLwjD8kAYAAAqJLbXXcFsABTckCelQHAAABQFY/n%20IF94BbBA9+XwzJcBwAAAUAUzc3D+KQPAQlydz4gAYAAAKL+uvCe3ygCwCN/Jj0QAMAAAlN3oXCgC%20wGJ8xFQKYAAAKLdr8wURABZrdg7Ov2QAMAAAlNWjOcLVVgDd8ngOyxwZAAwAAGX0fA7M0zIAdNMf%208kkRAAwAAOXTlffnbhkAeuB7+aEIAAYAgLI5xeV/AD32MZcBAhgAAMrl2nxRBIAecxkggAEAoFQe%20zeEu/wPolcdzRObJAGAAACiDuTkiz8gA0Eu/z5dEADAAAJTBJ3KzCAB9cEp+LQKAAQCg6C7M90QA%206JOuvDePyABgAAAosgfzQREA+mxq3pnZMgAYAACKalbemedkAGiAP+UzIgAYAACK6iO5QwSABjkz%20PxMBwAAAUEQ/yrkiADTQh3K/CAAGAICiuScfFwGgoZ7P4ZklA4ABAKBIZufdeUEGgAa7KyeKAGAA%20ACiST+UuEQCa4MxcJgKAAQCgKK7KWSIANEVXPpDHZQAwAAAUwaQcky4ZAJrkqRyRThkADAAA7daZ%20Y/K0DABNdENOFQHAAADQbqfkOhEAmuzzuUUEAAMAQDv9KSeJANB083JknpMBwAAA0C7Tc3jmygDQ%20Ag/l4yIAGAAA2uUTeVgEgBY5L2NFADAAALTD5TlHBIAW+kgmiwBgAABotadzrAgAHnkBDAAAVef3%20UACt5+wVgAEAoMXO90lUgLYYmb+JAGAAAGiVSRkpAkBbzMh7Ml8GAAMAQCt05QOZKgNAm0zId0QA%20MAAAtMJ3c7UIAG30hdwtAoABAKDZHsnnRABoq9k5OnNlADAAADRTV47N8zIAtNmd+bYIAAYAgGY6%20O+NEACiAL+deEQAMAADN8q98VgSAQpidD6RTBgADAEBzfDjTRAAoiJtzlggABgCAZjgvl4kAUCCj%208rAIAAYAgEZ7Kp8WAaBQZuSD6ZIBwAAA0FgfzlMiABTM73KuCAAGAIBGuiQXiwBQQJ/K4yIAGAAA%20GmV6jhcBoJCm5ZMiABgAABrlC5kkAkBBXZArRQAwAAA0wsR8TwSAAhuZmSIAGAAA+qozH8t8GQAK%207KF8XQQAAwBAX30vt4gAUHDfzH0iABgAAPpicr4kAkDhzcmH0iUDgAEAoPdGZpoIACVwY84TAcAA%20ANBbv82FIgCUxKfytAgABgCA3piVj4oAUBpT8jkRAAwAAL1xah4SAaBEzsmtIgAYAAB66p85RQSA%20UunMCa4CBDAAAPTUZzJDBICSuTk/FQHAAADQE+PzSxEASugzeVYEAAMAQHfNz8ccIgUopSfydREA%20DAAA3fX93CUCQEmdlr+KALBg/SUAeIUp+ZIIlNyyWTUrZaWskpWzUpbPoCyVgVkm/bNs+mW5vC5D%200vHSf3p65uW5zM+0dGVqujIt8zM1T+XpPJnJeSpP5ylnYiiROflErpIBwAAAsHhfzDMiUCpLZf0X%20/zE0q2SVrJRBPfr/XybJ8ov8T8zPU3kqT+YfeSgP5eE8lKdlp8B+k8tzgAwABgCARbs7Y0Sg8JbM%20Ftko6734tn/Vpv/1+mXVV/1Vns1DL/3jLqMZhfOpvDUDZAAwAAAsymcyXwQKaki2yPbZPptlywxs%2083+X5bJdtnvpXz2ee3JvJmZi7kunPygK4MH8X46XAcAAALBw1+S3IlAwq2eXbJttsk3WKOx/x9Wy%20WoYnSZ7Nnbkzd+bW3OfeANrqKzk6Q2QAMAAALFhnRolAgd7475bhGZZNX3ZdX/Etlz2yR5Lkudya%20cZmQWzPHHyZtMCXfyGgZAAwAAAt2bu4QgbZbL8MzLHtkaMn/PpbN8AxPMiN3ZnzGZUJm+sOlpU7L%20sVlfBoCX65CgCQ7LhSJA6czIxpkkA22zWvbLfnlTZQ8tz87NuSpX5l5/1LTMu/JzEaDERmSsCI3m%20BADAv53q7T9tsnn2zwHZJa+r9N/loOyZPfPNPJprMi6/yfP+4Gm6C/Lx7CIDwH85AdAMTgBA+TyZ%20DTJdBlpqqbwp+2f/rF7Dv/eZmZAr8qs85n8GNNUumeDVLpSWEwBN8DoJAJJ80dt/Wmi5vCdXZ2ou%20y7G1fPufDM7wnJa/Z2L+p/S3HVBkN+fXIgAYAABe7v6cIwIteuN7aC7J5Jybt2SAHNkuo/NobspH%20s5IYNMVnM18EAAMAwH99yQtEmq5fhuXsTM7YvD1LyPEyHRmW7+bxjM+xWU4OGuz+nCcCgAEA4D9u%20z0Ui0FQ75axMzk05NsuKsRD9slvOzuRcnINcUUxDnZzZIgAYAAD+7QvpEoEmWSbH5vbckg9nRTG6%20YYkckkvzWE7JOmLQIH/PGBEADAAASTIhvxGBptg0p+TvOTvbStFDq+XEPJRrc5izADTEV13zCmAA%20AEiSL0hAww3KYbk29+bELC9Gr1+hDM+FeTSnZC0x6KOn8l0RAAwAAL/JDSLQUOvmO5mcCzNcigZY%20IyfmoYzNblLQJ9/KNBEADABAvXX5/T8NtXXOywM5IUOkaKABOTTjc1uOTj8x6KWpOVUEAAMAUG9j%20c7sINMiwXJ47cpRPrTfJ9vlJ7s9IX6FIL52WJ0QAMAAA9dWZk0SgAfrn8EzMTdk/HWI01QY5LX/L%20Z3yZIr0wI6eIAGAAAOprbO4TgT4anI/lgfwi20nRImvkm3ksp2RVKeihMc4AABgAgLrqyv+KQJ8M%20yLF5MGdmXSlabLmcmIdyelaWgh54wT0AAAYAoK4uzt0i0Ifnz8NyT87OGlK0yZI5Pg/llCwnBd32%20f3lSBMAAAFA/XfmaCPTa8EzMhdlQiDZbOifmoZyYwVLQLTPyHREAAwBA/Vyau0SgV4blxlybbYQo%20iBVySh7IyAyUgm44M0+JABgAAOrF7//pnR3yu9yU3YUomDVzWv6SEUKwWDNyugiAAQCgXq7I7SLQ%20Qyvk9NySvYQoqA3zy/w+WwvBYpyZZ0QADAAAdeL3//RM/4zMQzk+/aQotDfm9pyXlYRgEZ7LGSIA%20BgCA+rg6t4pAD+ydP+c0t82X5HXNUbkvHzbVsAin51kRAAMAQF2cIgHdtlbOyzXZVIgSWSFn5e7s%20IwQLMS3fFwEwAADUw635vQh0y+B8NQ/kKCFKaNNcnV9kDSFYoNMzWwTAAABQB6MloFt2yx35QpYQ%20oqQ6cnjuzUivdFiAx3O+CIABAKD6HsilIrBYS+aU3JiNhSi5ZXNabshGQvAap6ZTBMAAAOBFH7wl%209+VEz5AVsXvuzIkuBeRV/ppfiwAYAACq7QnHPlmMITk7v8lQISpkcE7J+GwmBK/gOljAAABQcd/J%20LBFYhP3zlxybDiEqZ+fcmVMyUAhecmtuFAEwAABU13M5WwQWavn8Mpe7N76yBuTE3OIcAC/zTQkA%20AwBAdZ2daSKwEDvntoyQoeK2zcSMlIEXXZU7RQAMAADVNC9nisAC9ctJGZ/1hKiBJXJafpUVhCBJ%20V84QATAAAFTTJfmHCCzA0FyfL7slvkYOzp3ZQwaS/DxPiAAYAACq6HQJWIBDckd2l6Fm1sz1OT0D%20hKi92fmBCIABAKB6bs8fROBVBuf0XJzXC1FDHTk+47O+ELV3VuaIABgAAKrmNAl4lc1zR46Xocbe%20kIl5uww193guEgEwAABUy5O5UARe4YBMyMYy1NxyuTineC1Uc9+WADAAAFTLWZktAi/pyIm5NMsJ%20QTpyYq7I8kLU2MTcIgJgAACojjk5WwResmx+5be+vMy+uTVbyFBjrogFDAAAFXJBJovAizbOH3OQ%20DLzCBrk5h8pQWxf5kljAAABQHWdKwIsOzW3ZRAZeY+lcmP/1qqim5uX7IgAGAIBquC23iUCS1+Xr%20uTBLC8ECdeRzuSJDhKilH2WuCIABAKAK/GaHJBmUn+Wz6RCCRdg3EzJUhhqanEtFAAwAAOX3bC4Q%20gSyfa3K4DCzWZrkl28lQQ66KBQwAABVwfmaIUHvr5A95owx0y2r5ffaVoXZ+lwdEAAwAAGU3RoLa%202yrjXfxHDyydy3KsDDXTlR+IABgAAMptfO4Woeb2zk1ZQwZ6pH++n5NkqJlzM0sEwAAAUGY+1Vl3%20782VWVYGeqwjX865GSBEjUzJxSIABgCAMr+cu0iEWjspP/IWjl57Ty7NkjLUiO+MAQwAACXmQGe9%20fS1fFoE+2S9XZxkZamN8/iICYAAAKKtzJKitjpyZz8tAn+2eq7OcDJ41AAwAAMV2c+4XocZv/z8m%20Aw2xa36XFWSoifMzRwTAAABQRj+WoKb65Uf5qAw0zHa5MavJUAtTcpUIgAEAoHxm5UIRavr2/8d5%20jww01Gb5XVaXoRZ+IgFgAAAon0syTYQaGpgLc6QMNNwmuT5ryVADV2SyCIABAKBsfixBLd/+X5JD%20ZKApNsrvs7YMlTcvvxABMAAAlMuk/E6E2umX8/M2GWiadTPOXQA18CMJAAMAQLn8OPNFqJmOfD8j%20ZKCpNshv83oZKu4vuUMEwAAAUCbnS1A738oHRKDptsxVWVqGivuxBIABAKA8JuSvItTMV/IpEWiJ%20nfKrDJKh0n6WOSIABgCAsvD7/7o5Pl8UgZYZngvTX4YKm5KrRQAMAADlMDcXi1Arx+Q0EWipA3Ou%20V1CV5psAAAMAQElck6dFqJFDck46ZKDFjsyZIlTYZXleBMAAAFAGF0hQI3vlF+knA23wkXxOhMp6%20IZeJABgAAMrwsu1SEWpj41ycgTLQJl/LESJUlg8BAAYAgBK4wsHN2lghl2d5GWibjpyTXWSoqN9m%20igiAAQCg6PzWpi4G5qJsKANttUQuywYyVJLrZAEDAEDhPefLm2qiIz/MnjLQdivmsgyRoZLMyYAB%20AKDgLsosEWrhyzlKBAph0/zKTRSVdGMmiQAYAACKzDcA1MO78yURKIw9fSVgJXXmQhEAAwBAcU3J%209SLUwLCckw4ZKJBj82kRKugiCQADAEBx/TrzRKi8VXNhBslAwYzOW0SonFvyLxEAAwBAUf1Kgsrr%20nwuzmgwU8PXUz7OODBXTmUtFAAwAAMX0fMaJUHnfyu4iUEivzwUuA6ycSyQADAAAxXSFbwCovIMz%20UgQKa6ecKkLF3JCnRQAMAABF5Dc1VbdRfuLyPwrt4zlahEqZn8tFAAwAAMUzK1eLUGlL55IsKwMF%20d1Y2F6FSTMuAAQCggH6b6SJ4YwVttlR+leVkqJBr85wIgAEAoGgulaDSjs9RIlAKG+aHIlTI7Fwl%20AmAAACiWeblMhArbOt8UgdI4NMeJUCE+BAAYAAAKZkKeEaGyBuW8DJKBEvl2NhahMn6bOSIABgCA%20IrlSggo7JVuJQKksmZ9lgAwV8VzGiwAYAACK5AoJKmt4RopA6WyfL4hQGSZmwAAAUCCP5D4RKmpI%20zkmHDJTQ57KLCBVhYgYMAABenNEC/5ehIlBK/fPTLCNDJTyQB0UADAAAReF4ZlUdmcNFoLTWy7dF%20qAhfBQgYAAAKYkZ+L0IlrZkzRKDUPpBDRagEMzNgAAAoiHGZJUIFdeTHWV4GSu6srChCBdyY6SIA%20BgCAIvCbmWo6Jm8WgdJbKd8SoQJmZ5wIgAEAoP26fDazom+bThWBSjgmbxKhAkzNgAEAoADuySQR%20KujbWUEEKqEj389gGUrvtxIABgCA9nMss4r2yrtFoDI2zOdFKL1/5q8iAAYAAAMAjTY4P0iHDFTI%20idlaBM82AAYAgL6Zl5tEqJwvZ30RqJT+OdsrLgMAgAEAoG9uznMiVMyW+aQIVM5OOU6Ekvtd5ooA%20GAAA2slvZKqmX36YATJQQd/I6iKU2nP5kwiAAQCgna6VoGLelzeIQCUtl9EilNx1EgAGAID2mZ7b%20RKiUZXKyCFTWu81bJWdyBgwAAG3kE5lV87msJgKV1ZHTfL9Fqbl1BjAAALSR45jVsnZOEIFK2yWH%20iVBi83KjCIABAKBdrpegUkZnCRGouFOzpAgl9nsJAAMAQHs8k3tFqJCdM0IEKm+tHC9CiTkBABgA%20ANrkpnSKUBkdOdWno6kFN12U2e2ZLgJgAABozwBAdRyR3USgFnzXRZnNyy0iAAYAgHZwFLM6Bufr%20IlAb78tWIpSW6RkwAAC0wfO5Q4TK+HCGikBt9MtXRTAAABgAALrvD5knQkUsmf8RgVo5MDuKUFK3%20ZJYIgAEAoNX8FqY6PpJVRKBmviRBSc3KRBEAAwBAq7kBoCqWymdEoHb2zxtE8OwDYAAA6I7ZuVWE%20ivhoVhaBGvqyBCXl/BlgAABosYk+hVkRS+fTIlBL+2VnEUrpD+kUATAAALSSb2Kuio9lJRGoKWcA%20yunZ/FUEwAAA0Ep/lKASls4nRaC23pphIngGAjAAACyOGwCq4Xi//6fWviiBAQDAAACwaE/mUREq%20YHA+IQK1tk92FMEAAGAAAPDiq/qOzooiUHNGsDK6OzNEAAwAAAYAuq8jI0Wg9g7LUBFKZ17uEAEw%20AAAYAOi+fbOpCNRe/3xUBM9CAAYAgIXpym0iVICjz5AkH8qyIhgAAAwAAAt2f6aJUHpb5M0iQJJl%208x4RDAAABgCABfuTBBXwyXSIAEmS49NPhJJ5LJNFAAwAAK1wuwSlt3LeJQK8aP0cJELpuAYQMAAA%20tMSdEpTex7KECPASN2J4JgIwAAAsQFfuEqHkBuVDIsDLDMv2IhgAAAwAAK/2qCsAS+/grCQCvMIH%20JTAAABgAAF7N5y7L7/0SwKu8K0uKUCp/y/MiAAYAgGa7U4KSWytvEgFeZdkcKkKpdObPIgAGAAAD%20AIv2AV95BgvgZEzZOI8GGAAAvORiMc86x4gAC/DGbCJCqbiQFjAAADTZlPxThFLbJ2uLAAtkHCuX%20OyUADAAAXnCxKO+TABY6APQXoUTuzjwRAAMAQDO5dKncVsiBIsBCrJZ9RSiRWfmbCIABAKCZ7pOg%201I7JIBFgoVwE6BkJwAAA4OVWRRwlASzC27KiCCVyrwSAAQDAAMCCbZRtRIBF6J+DRfCMBGAAAEiS%20JzJFhBI7TALwU1IhTgAABgCAJvLblnI7VAJYjDdlJRFK46/pFAEwAAA0i9+2lNl6PgAAi9XfN2WU%20yAv5uwiAAQCgWZwAKLN3SgDd4EMAZWKWBgwAAAYAvK2BXnpTVhDBAABgAADwUqu81su2IkA3DMhB%20IpSGWRowAAA0ybN5XITS8vt/6C7XZRoAAAwAQO39TQIDANTA8LxeBM9LAAYAoN4ekqC01sx2IkA3%20Dci+IpTE03lWBMAAAGAA4OXekg4RoNv2kaA0HpYAMAAAGAB45QAA9GQAMJl5ZgIwAAC15rOWZdUv%20bxYBemDVbCWCAQDAAAB4mUX57OhKM+ghp2Y8MwEYAIAam5V/ieCtDPipwQAAYAAAqu7hdIrgrQzU%20xLAsLYIBAMAAAHiRRbkMyY4iQA8NzB4ilMI/MlsEwAAAYADg34anvwjQY07OlENn/i4CYAAAaLRH%20JfA2BmrkrRKUxCMSAAYAgEb7pwQl9SYJoBc2zFoilMI/JAAMAACN9pgEpbRK1hMBemVXCUrBPA0Y%20AAC8xCJJspsE0Eu7SFAKTgAABgCABpubJ0TwFgZqxQkAAwCAAQCopUnpFMEAALWyTZYUoQScTwMM%20AABeYJFkQLYTAXr987ODCCXgBABgAADwAosk22WwCNBrTtCUwfOZJgJgAABoJCcAyslnmMEAUH0m%20asAAAGAAwNsX6JPd0iGCZygAAwDg5RVlsLME0AcrZn0RSsAJAMAAANBQkyUoodWzlgjQJ0Y0z1AA%20BgCgdp6QoIS2lgD6aEsJSuBJCQADAICXV3W3hQTgp8gzFIABAKAnZma6CN66gJ8iDAAABgDAiyu8%20dYEqWitDRPAcBWAAALy4otj6ZVMRoI86spkInqMADACAF1cU2/oZLAL0mZM0xfdM5ooAGAAADAB1%205vZyMADUQ1eeFgEwAAAYALxtAfwkeZYCMAAAdNtTEnjbAjXlLI0BAMAAABgAKLjNJYAGWDGriOBZ%20CsAAANTHMxKU8NllfRGgITaUoPCmSgAYAAAaZZoEpbN6BooADbG2BIX3rASAAQDASytvWQA/TZ6l%20AAwAAN02TQJvWcBPE56lAAwAQPX53Yq3LOCnCQMAgAEAqLzOTBfBWxaorXUkKDwzNWAAAGjYC6su%20EQwAUFtD0yFCwU2TADAAAHhhZQAA+mpwVhLB8xSAAQCoB0cry2ioBNAwBjXPUwAGAKAmpklQOitm%20KRHAAFAbUyUADAAAjeEKwPLx+38wANTJ7MwRATAAADTCCxKUzsoSQAO5A6D4ZkoAGAAAvKyqpxUk%20gAZ6vQSeqQAMAICXVXi7An6i8EwFYAAAKsJHALxdAT9ReKYCMAAANeD3KuWzvARgAPBMBWAAAPCy%20ytsVwE+UZyoAAwCAl1XergB+ojxTARgAAC+rKAPfAgCNtFSWEMEzFYABAPCyiiLy+0rwM+WZCsAA%20AOBllTcrgJ8pz1QABgCA15otQeksJwE01BAJCm6WBIABAKAR5ktQMh0ZIAI01EAJPFMBGAAAL6so%20Hm//wU+VZyoAAwBAL3RK4K0K+KnCAABgAAC8rMJbFag6HwEoOlM1YAAA8LLKAAD4qaoBUzVgAADw%20sspbFcBPlWcqAAMAQPc4AeCtCtSdjwAYAAAMAICXVRgAwE8VbWeqBgwAAF5W1ZLfVYIBoG5M1YAB%20AMDLKm9VAD9VNWCqBgwAAHhmARqgvwQFZ6oGvEwD8DhVS3MkgAabLUHBOaMBeGEN0BB+81U2syQA%20P1U1008CwAAAYACoI7+rBAOAZyoAAwCAl1XeqgB+qjxTARgAABbEwcqycQIADAAGAAADAICXVd6q%20AH6qPFMBGAAAvKyqgrm+EAsazLkaz1QABgDAyyq8WYEacALAMxWAAQCoBXcAGADAAIABAMAAAHhZ%20hTcr4GcKz1QABgCgCgZIUDozJICGekECz1QABgCgDpaUoHSelgAa6ikJPFMBGAAAL6vwZgWqbrqP%20ABTeUhIABgAAL6vqyQkA8BNVL6ZqwAAA0BCDJSgdJwDAT5QBAMAAANBjTgCUj99XggHAMxWAAQCg%20x/xexdsVqDeTmmcqAAMA4GUVBgDwE4VnKgADAFAVDlaWj99Xgp8oz1QABgCAHvN7lfLx+0rwE1Un%20/TJIBMAAAGAA8HYF8BPleQrAAADQLctIUDrT87wI0DCTJSi4pSUADAAAjTFEghJ6RAJomIclKLjl%20JQAMAABeWHnDAvTVc5kigucpAAMAUA/LZIAIpeMEADTKQxIYAAAMAEB9LCeBAQD8NGEAADAAAF5a%20UTw+AgB+mjxLARgAALy08pYF6DYnADxLARgAgBoZIkEJ37J0iQANYU4zAAAYAAAvrSiwmb65HAwA%20tTFEAsAAAGAAqDPHlqEROvN3ETxLARgAAC+tKDJfXQaNMCmzRSi8IRIABgCARllBghK6RwLwk+RZ%20CsAAANAzq0hQQndJAA1wpwQlsJoEgAEAwABgAAD65s8SFN4AH1QDDAAAjbOqBCX0eJ4UAfrMlFZ8%20K6dDBMAAANAoTgCUk99cQl/NzgMieI4CMAAAdbJi+otQQn5zCX31l8wTofCcUgMMAAANfaRaSYQS%20cgIA+sqMVgZOAAAGAAAvr7x1kQD6yIzmGQrAAADUjgOWZXRf5ogAfWJGMwAAGAAAL68ogTm5XwTo%20k7sl8AwFYAAAvLyiDCZKAH3wSKaIUAIrSwAYAAAaaQ0JSmmCBNAH4yUohTUlAAwAAI00VAJvX8BP%20EIW0lgSAAQDAAMADeVIE6LWbJCiBlbKkCIABAMAAQJcPAUCvPe0aTc9PAAYAoI5W9BuWknKEGXpr%20QrpEMAAAGACAOvIZSwMA+OnBAABgAAC8xKKgbs/zIoABoMLM04ABAMAAQJJkXm4VAXphZm4XwbMT%20gAEAqCe/Yykrv8WE3rglc0QwAAAYAAAvsSiTGyWAXvAVgGVhngYMAAAGAF403i0A0AtXS1AKg7Kq%20CIABAKDR1pegpGbndyJADz3j9oySWNdracAAANB4QzNIhJL6jQTQ45+a+SKUwoYSAAYAgGY8Wq0r%20QkldKQH0eACgHDaQADAAADSD37OU1T/yFxGgBzpzrQgGAAADAOBlFmV0lQTQA7fmSRE8MwEYAAAv%20sygjx5nBT4xnJgADAICXWTUwPtNEAANA5Qz0FbWAAQCgOdwBUF7zMk4E6KanMlGEklg3/UUADAAA%20zeCLAMvMNwFAd12VThFKwsk0wAAA0CT9so4IpXVpZosA3XKhBAYAAAMAwMYSlNY0X2sG3fKMD8yU%20yEYSAAYAgGbZTIIS+6UE0A0XZ44IpbG5BIABAMBLLV7r15kpAiyWqaxMzNKAAQDAAMACTM9VIsBi%20TM4NIpTGyllJBMAAANAsm6afCCXmN5uwOGMzX4TSMEoDBgCAJloi64pQYpfnORFgkcxkBgAAAwCA%20l1sVMCtXiACL8I/cLIJnJAADAICXW1Xgt5uw6J+QThE8IwEYAAC83KqC32aKCLBQF0hQKr4DADAA%20AHi5xULNzvkiwELclYkilMiqWUEEwAAA0Eyb+B6AkhsjASzE9yUoFSfSAAMAQJMtkU1EKLX7cpMI%20sAAz8nMRSmVbCQADAECzbSdByf1AAliAX/iaTAMAgAEAwEuuahmbZ0SA1zCNeTYCMAAAvIoTAGU3%20y0WA8Bp/zq0ilMqS2UgEwAAA0GzbpkOEkvt+ukSAV3A9Ztls40pawAAA0HzLZn0RSu7+TBABXmam%20CwBLxwcAAAMAgJdddItPO8PLXZCpIngmAjAAALyWWwDK78I8IQK85HsSGAAADAAAXnZV06x8VwR4%200e8yUYSSGZgtRAAMAACtsL0EFXBWnhcBkiTfkqB0tshAEQADAEArrJihIpTeMzlXBEhyd34rQun4%20KBpgAABomZ0lqIDvZJ4IkG/5WswS2kUCwAAAYACg+x7JJSJQe5PySxE8CwEYAAC89Ko6n3yG72SO%20CKUzJJuIABgAAFpluwwSoQJuy+9FoNaeyw9FKKGdvH4GDAAArTMo24hQCc4AUG/fz7MilJBTaIAB%20AMDLL3rsqvxFBGprVs4QoZR2kgAwAAAYAOiprpwkArV1diaJUEIdBgDAAADQWr6CqSouya0iUEsz%20cooIpbRxXi8CYAAAaKW1s7oIldCVk0Wgls7MZBFKyQk0wAAA0HKOYFbFVZkgArXzXE4VwQAAYAAA%206J43SlAZn5WA2vl2pohQUntIABgAALwEo7duynUiUCtTc7oIJbVyNhYBMAAAtNrWGSJCZXw2XSJQ%20I6MzTYSS2iMdIgAGAIDWP3oNE6Ey/pSrRKA2nsr3RCjxAABgAADwMow++WI6RaAmvpbnRSgt988A%20BgAAAwB9dEd+LAK1cH/+T4TSen02FwEwAAC0w7ZZVoQK+WyeFYEa+GTmilBae3jlDBgAANqjf3YV%20oUKezP+KQOVdnt+IUOoBAMAAAOClGA1weh4QgUqbk0+L4FkHwAAA4KUYc/IpEai0M4xcpTYkW4oA%20GAAA2mXHLCdCpVzheDQV9mS+JkKpvSn9RAAMAADt0j97iVAxLkijuka56LLk9pYAMAAAeDlG49yf%2074lAJd2en4hQcvtIABgAALwco5FOzhMiUDmd+Vg6ZSi19bOeCIABAKCdNvCCrHKm5XgRqJyzcrMI%20JfcWCQADAEC7+RBA9VyYS0WgUh7L50TwbANgAADwkozX+kimikCFfDzTRSg5l84CBgCAAnhz+otQ%20OY9nlAhUxs9ymQilt7OvnQUMAADtNyQ7ilBBP8h1IlAJU/JJESrAaTPAAABQCL4JoIq68uHMlIEK%20OCFPimAAADAAADTGvhJU0oM5WQRK7zf5qQgVsELeIAJgAAAogh2zqgiV9P8yUQRKbUY+KkIlvC39%20RAAMAADFeBzbT4RKmpf3ZZYMlNgn84gIFRkAAAwAAAWxvwQV9WffBkCJXZoxIlTCAHfNAAYAgOLY%20J0uIUFFn5AoRKKVJ+YAIFbFHhogAGAAAimKp7ClCRXXl/ZksA6XTmWMyRYaKcMoMMAAAeHlGSzyZ%2096ZLBkrmm7lOhMpwAwBgAAAolAPSIUJlXZ3vikCpTMyXRaiMzbKBCIABAKBIhmZLESrsM7lLBEpj%20Rt6dOTJUhhNmgAEAoHAOkKDCZufdmSkDJXF8/iqCAQDAAADQPAdJUGn35NMiUAq/zI9EqJCVs6sI%20gAEAoGh2zHoiVNpZOVcECu/+HCtCpbw9/UQADAAAxXOwBBX3kdwmAoU2PYfkORkq5R0SAAYAAC/T%20aL1ZeUeeloHC6sp7cp8MlbJC9hIBMAAAFNEuWUuEinssh2e+DBTUV3KJCBVzcPqLABgAAIqow4cA%20auC6fEEECumafFWEynGyDDAAAHipRhuNzlgRKJxHc4TTKZUzJG8WATAAABTV7llNhMrryvtyjwwU%20yswckikyVM6BGSgCYAAAKO4j2oEi1MDzeUemykBhdOU9uUOGCnKqDDAAABTaoRLUwl9zSObIQEF8%20LheKUEHLZB8RAAMAQJHtmVVEqIUbcky6ZKAAzskpIlTSwVlCBMAAAFBk/TNChJq4IF8Sgba7Oh8S%20oaKOkAAwAAB4yUZRfC3/JwJt9ZccnnkyVNJKGS4CYAAAKLqds6EItTEyvxWBtpmU/fKsDBV1ePqL%20ABgAAMrwso26mJvDcqcMtMVzeVv+IUNlOU0GGAAASuEoCWpkujdhtMXcHJq7ZKis9bOTCIABAKAM%20NswOItTIv7JfpshAS3XmPblWhgp7VzpEAAwAAGV56Uad/CXDM1UGWqYrH8nPZag0HyUDDAAAJRoA%20+olQK3dmv0yXgRb5n5wtQqVtl81FAAwAAGWxWvYSoWZuycGZKQMt8LmcKkLFuQAQMAAAlMoxEtTO%2073JwZstAk/1vviFCxfU3AAAGAIByeUeGiFA71+TwzJOBJjozXxCh8vbLaiIABgCAMhmcd4pQQ5fm%20XZkvA01ybkaKUAPvlQAwAAB4CUcZXJTj0ikDTfCTfCBdMlTeKnmbCIABAKBsdsqWItTSOXl35spA%20g52d95mWauGoDBABMAAAlM/REtTUBTkks2Sggb6ZD3v775kDwAAAUOSXcX6PU1dXZN9Ml4EGGZ0T%20Hf6viZ2dHQMMAADltLJPctbYDRmeZ2Sgz7ryyYySoTbcHgMYAAC8lKOEbs3eeUoG+mR+PpjvyFAb%20gzNCBMAAAFBWvs253m7PXnlcBnptbo7IOTLUyKEZIgJgAAAoq/75gAi1dk/emIdloFdm5O25UIZa%20+ZAEgAEAoMyOTX8Rau1veUNukoEem5w9c6UMtbJVdhUBMAAAlNmaLgKsvSnZOz+XgR65JzvnNhlq%205iMSAAYAgLL7sAS1NztH5mQZ6LbrMix/l6Fmlsm7RAAMAABlt082EqH2unJS3p+5QtAN52bfTJOh%20do7KsiIABgCAsuvIB0UgyY+yX56VgUXqysl5n6mollwACBgAACrhvVlCBJKMc7CbRZqdI3OSDLU0%20LFuKABgAAKpghYwQgSTJX7JLJsjAAk3KXq6LrK3jJAAMAABV4SJA/uPx7JnRMvAaN2WH3CxDTa2Y%20Q0UADAAAVbFztheBF83LqByZGULwkq78v7wpk4WorQ/6oBhgAACokhMk4GV+lh1ynwwkSZ7P4fl0%205glRWwPyEREAAwBAlbwza4rAy9yfnXKxDOSB7JILZai1EZ4fAAMAQLUM8BVPvMr0HJZRmS9ErV2W%20N+QvMtTc8RIABgCAqjkug0XgFboyOvvlCSFqak4+nYPzrBA1NyxvEAEwAABUzYo5UgRe45psmctk%20qKH7s0v+X7qEqL1PSAAYAACq6IR0iMBrPJWDcoxvBaiZ87NDbpeBrJODRAAMAABVtFn2FoEFOs/b%20wRp5KgflaJMPSZKR6ScCYAAAqKYTJGAh7s/OOTmdQlTetdnGhz540TJ5rwiAAQCgqt6aTUVgIebm%20pOydfwpRYTNzfN6SfwnBi96f5UQADAAAVdWRT4vAIvwuW+dnMlTUn7JjznTtHy8Z4AJAwAAAUG1H%20ZagILMIzOTL75lEhKuaFjMouuUcIXubdng8AAwBAtQ3ISBFYjKuzeUZnvhD+RKkwJ8IAAwBADRyX%20FUVgMV7IqOyQiUJUwNQc50wHC3BQNhcBMAAAVN1S+YgIdMOd2Tkn+LK4khubjTNGBhbgMxIABgCA%20Ovh4lhKBbpiX07NtbhCipB7OPhmRp4RgAfbMriIABgCAOlgx7xeBbnowe+XAPCJEybyQk7NFrhWC%20hRglAWAAAKiLz2SgCHTb5dk8ozJdiJLoythsmpMyUwoWYuvsIwJgAACoizXzLhHogZkZnU0yJp1S%20FN6fMiwj8pgQLMJn0yECYAAAqI/Pp78I9Mi/clzekPFCFNikHJOd8gchWKQN8w4RAAMAQL1eAL5T%20BHpsYnbPgb5SrpBeyOhskvPSJQWL8WUDMGAAAKibL6SfCPTC5dksn3a3fKHMznezYUbleSlYrI1z%20uAiAAQCgbjZxBoBempn/l3VzQp6QogDm5vxslo/nX1LQLV80/gIGAIA6OsnLQHptRk7PBhmVqVK0%20UWfGZrMcnYeloJt8/AswAEgAeCEIvfB8RmftjMqzUrTpzf+mGZG/SUEP+Pw/YACQAKgtR0Hpq+kZ%20nfUzOtOlaKH5uSBbZEQekIIe8fl/AAMAUGPuAaARpmRU1sgJvnu+JZ7PmGyed+U+Kegxoy+AAQCo%20NfcA0BjTc3o2yIj8UYomeiInZ50cl79KQS/42BeAAQCo/QvCd4lAg8zN2Oyc4fmN76Jvgrvz3gzN%20SZkiBb10ks//AxgAgLr7agaJQANdl/2ycc7ITCkaZkIOzNb5ceZIQa9t6fP/AAYAgHXyARFosAcz%20MqvnuPxZij6amjHZOsNyuVMV9NEpXvMCGAAAki9lGRFouGkZk62zQ8Zkhhi90JlxOSZrmFFoiGHZ%20TwQAAwBAsnKOF4EmmZjjsnqOy0QpeuDxjM6G2Tvn+SAFDfI1CQAMAAD/9um8XgSa5rmMyQ7ZId/P%20VDEWY04uzQFZK6PysBg0zP7ZQwQAAwDAvw3JiSLQZBPz4ayU3XNGnhZjAeZnQk7Imnl7rsh8OWjo%20a92vigBgAAD4r+Ozpgi04E3u+IzMmjkw5+c5OV7x1n/1DMvpeUoOGu6IbCMCwH/4RlSAZIl8IR+S%20gZaYnctzeQZlnxyWg7JsjUt05uaMzQV5wv8oaJoBOUkEAAMAwCu9P9/JX2WgxTPA4Lwpb81bs0HN%20/u6fzjW5Olf7jT9Nd2zWFwHAAADw6kfDb+YgGWixmbkyVyZZL8MzPG+p/HmAztyRcRmXGzLPHz4t%20MMTv/wEMAAALcmCGZ5wMtMXDGZMx6Z+ds3+GZ7t0VO7v8KnckHG5LJP9YdNCn8+KIgAYAAAW5NRs%20l04ZaJt5GZ/xSVbJG7JbhmWHDCr939PDmZCJGZ/b0+UPmBZbNx8XAcAAALBgW+fo/FgG2u6JXJ7L%20kwzIVhmW3bJX6X6LOS93ZULG5waf8qeNvlmBCQ2gwTokaILDcqEIUEqTsnFmyEDhnqs3y07ZKltm%20q0JPATNyb+7K3bktEzPbHxtttltu8joXSm5ExorQaE4AAPzXGvmMK6MonK7ck3te/OfLZ/Nsn82y%20ebbNkoX4b/d4Juae3JuJuT/z/WFREB35prf/AAYAgEX7dMbkXzJQWFNfvCcg6Z8Ns0HWzTpZN+tk%20nQxp0X+DWXk0j+TRPJpH8kjuzQv+UCigd2VXEQAMAACLtlS+lvfJQAnMy32572X/esiLQ8A6WSEr%20ZIWslBWyTB//GjMzJVMyJU9lSia9+Kb/cekpvMH5uggABgCAxTsm38tEGSidabkjd7zq3xv44hiw%20QlZMslQGpiNDkgzKkkmWSf9MS1fmZEaS5zM3XZmWZPqLb/mf9tt9SuqTWVsEAAMAwOK9LmdmN19Z%20RiXMyeN+Y0/trJnPigCwsBe6ALzSLjlGBICS+naWEgHAAADQXaNbdqEaAI30phwmAoABAKD7Vs6X%20RAAonf45TQQAAwBAz3w8W4kAUDIjs6UIAAYAgJ7pn++mQwaAElklXxQBwAAA0HO7Z4QIACXyzSwn%20AoABAKA3Ts3SIgCUxK45SgQAAwBA76zpKkCAkuifs3xwC8AAANB7n8i2IgCU4vF6axEADAAAvdc/%20Z6efDAAFN9SJLQADAEBf7ZgPiQBQcN91ZwuAAQCg776eNUQAKLAROUAEAAMAQN8tm++IAFDgR+lv%20iwBgAABojMNyoAgABTXaOS0AAwBA45zp06UAhfSGHCsCgAEAoHGG5iQRAApnQH7o1SyAAQCgsT6R%20XUUAKJjPZksRAAwAAI1+tDwnS8gAUCCb5nMiABgAABpvk3xRBIDC6J+fZJAMAAYAgGb4n+wgAkBB%20fCY7igBgAABojv45JwNlACiATfIlEQAMAADNs5XPmwIU4hXsD93LAmAAAGiuz2d7EQDa7JPZTQQA%20AwBAc/XPORkgA0AbbZSviABgAABovq3zWREA2qZfzslgGQAMAACt8MXsJAJAm/xPhokAYAAAaI3+%20+XGWlAGgDbbJSSIAGAAAWmeTjBYBoOUG5TxfxwpgAABorY9mPxEAWuwb2VIEAAMAQGt15AdZQQaA%20Fto9I0UAMAAAtN7q+YEIAC2zXH7qlSuAAQCgPd6eI0UAaJGzMlQEAAMAQLuc6eUoQEu8M0eIAGAA%20AGifIflp+skA0GRr5SwRAAwAAO21e74oAkBT9c8v8noZAAwAAO32xbxJBIAmOjm7iQBgAAAowuPo%20eVlRBoAm2SMnigBgAAAohjXyk3TIANAEK+Xn7loBMAAAFMd++ZgIAA3XkXOyugwABgCAIvlWthUB%20oME+kQNEADAAABTLoFyYZWQAaKDt8w0RAAwAAMWzgW+pBmigIfllBsoAYAAAKKIj8yERABqiI+dk%20fRkADAAARXVadhQBoAH+J4eIAGAAACiuQbkoK8oA0Ed75GsiABgAAIptaH7ikRWgT1bJz9NfBgAD%20AEDR7ZfPigDQa/1zYVaXAcAAAFAGX8k+IgD00jfyRhEADAAAZXlkPT9rygDQCwfmUyIAGAAAymPl%20XJhBMgD00MY5Lx0yABgAAMpkl5wtAkCPLJNLspwMAAYAgLI5Jh8RAaAHr0p/ns1kADAAAJTRadlT%20BIBu+kr2FwHAAABQTgNyUdaVAaAbDs7nRAAwAACU1wq5JEvKALAYm+YnLv8DMAAAlNs2brQGWIzl%20c1mWlQHAAABQdu/Ip0UAWKh++Vk2kAHAAABQBd/IfiIALMSp2VcEAAMAQDX0ywXZSgaABXh/ThAB%20wAAAUB3L5KqsIQPAq+yT74sAYAAAqJY18mvfBwDwCpvml+kvA4ABAKBqts9PPOYCvGSFXJYhMgAY%20AACq6NCcLAJAkmRgLnb3P4ABAKC6Pp+jRABIR87JHjIAGAAAqv2Sdy8ZgNr7co4UAcAAAFBtAzI2%20m8gA1NoR+ZIIAAYAgOpbIddmTRmA2npTzk2HDAAGAIA6WDNXufkaqKktc0kGygBgAACo0wvgQTIA%20tbNurslyMgAYAADqZC9HYIHaWSG/yaoyABgAAOrmXfm6CECNDM6vs7EMAAYAgDoaleNFAGqiX36a%203WQAMAAA1NW3c4gIQC181+MdgAEAoM765Rd5qwxA5f1vPiQCgAEAoN4G5uIMkwGotOPzOREADAAA%20LJkrsq0MQGUdk9NEADAAAJAky+VqN2MDFfX2/NCXngIYAAD4j5VzbYbKAFTO8Pwi/WUAMAAA8F9r%205dqsLANQKTvnVxkkA4ABAIBX2ihXZBkZgMrYMldlaRkADAAAvNaOuTxLygBUwqYZl+VlADAAALBg%20e+SyDJYBKL0NM87HmgAMAAAsypvz6ywhA1Bqa+farC4DgAEAgEXbO5e6NAsosaG5PmvLAGAAAGDx%203uLebKC01sz1WVcGAAMAAN2zb37um7OBElol12Y9GQAMAAB03yH5hQkAKJmV87tsIgOAAQCAnjk0%2056afDEBprJLfZTMZAAwAAPTckfl5BsgAlMKquS6bywBgAACgd0bkEtcBAiUwNDd5+w9gAACgL/bP%20r7KEDEChrZ3rs4EMAAYAAPpm31yawTIAhbVhxrv5H8AAAEAjvCVXZxkZgELaONdnTRkADAAANMYb%20c1WWlQEonE1zfdaQAcAAAEDjDMvVGSIDUCjb58asJgOAAQCAxtol47O6DEBhvDHXZUUZAAwAADTe%205hnvnm2gIPbP1VlOBgADAADNsW5uylYyAG13RC7x/SQABgAAmmnV3JBdZADa6iM5PwNkADAAANBc%20y+fa7CMD0DYn5nteQQIYAABohaVyeQ6VAWiDjpyaU2QAMAAA0CoDc0HeLwPQYgPyk3xKBgADAACt%201C8/zCnpEAJomaXz6xwlA4ABAIDWOzE/cg0X0CKr5ffZVwYAAwAA7fGeXJVlZQCabtPcnO1kADAA%20ANA+w3NT1pABaKpdcmPWlgHAAABAe22Vm7KJDEDTvD3XZUUZAAwAALTfupmQYTIATTEyF2WwDAAG%20AACK4fW5JofKADRYv5yW07xa/P/t3Xusl/Vhx/EPcDhc5SKCXEQQsXKpILJ5AbReWHV4sJvtsbUM%20tnbtSdY1kDXZTrKkhWx/9KxZN2mbtGjTBeKqgzoXKK0WkFqhgAWRmxcuioJDRQreFRT2R6mrLSLn%20cH6/87u8XomJmJjo+5zk/J7P+T7PA2AAAKCUdMnCzPFaQKAVdc+9mSUDgAEAgFLTLrNzl4O6QCsZ%20lF9kqgwABgAAStOnsyL9ZABO22VZn3EyABgAAChdV2RtRskAnJb6rEx/GQAMAACUtvOyNnUyAC3U%20Lo252+1EAAYAAMrBGbk3fysD0AKd859p8vkQwAAAQLmoyXeyIJ2FAJplUB7MrTIAGAAAKC/TsyID%20ZABO2aSsz6UyABgAACg/E7I+l8sAnJKGrPDgPwADAADlamB+ni/IAHyITvl+5qVWCAADAADl/LH+%20Dh/rgZMamJ/nr2UAMAAAUP4a8oCDvcAHmOhmIQADAACV9AH/YR/wgRP4ch7wuFAAAwAAlWRwHkpj%202gkBvKd7fphvu0UIwAAAQKWpSVP+O72EAJIkI7Imt8oAYAAAoDL9WR7OGBmATMv6fFQGAAMAAJXr%20gqzzYkCocp0yN3emmxAABgAAKlvn3JEF6SoEVKlz82BmygBgAACgOkzPqlwgA1ShT+TRXCYDgAEA%20gOoxLpsySwaoKp0zN/emtxAABgAAqkuX3JZF3goAVWNE1maml4ECGAAAqE6fyqOZIANUgRlZn7Ey%20ABgAAKheQ/Jg5vhZABWtZ+7KfE/9B8AAAFDtajI7yzJQCKhQl+WRfEYGAAwAACTJtdmYKTJAxanJ%207KzKMCEAMAAA8Fv9sjQL0l0IqCDnZWXmpEYIAAwAALzf9GzOVTJAhZiRzZkkAwAGAABO5LyszNzU%20CgFl7uwsznxnegAwAABwsp8KM70sDMrcp7I1U2UAwAAAwIe5KGvT6OcDlKUemZdFOUsIAAwAAJyK%20zmnKCk8Oh7JzfbamQQYADAAANMfV2ZrGdBACykTPzMtPM1gIAAwAADRXlzTloYwUAsrAlGxNQ9oJ%20AYABAICWuSKPZE46CgElrHfmZWnOEQIAAwAAp6NzZudXuUQIKFFT3fcPgAEAgNYyNmvTlFohoMSc%20nR9lcQYKAYABAIDW0jGN2ZJrhYCS0S4zsi2fFAIAAwAAre0jWZ4F3i8OJeGirMr89BECAAMAAIXQ%20LtPzpCeNQxvrkjlZnwlCAGAAAKCQzsy8rMwIIaCNTMljme2ZHAAYAAAoho9lc5rSSQgosv5ZkKUZ%20KgQABgAAiqVjGvNorhMCiqYmM/NEpgsBgAEAgGIbkeVZ4neRUBQfy4bMTU8hADAAANA26vJY5qSz%20EFBAA7MgKzNGCAAMAAC0pS6ZnR2ZIQQURMfMyhOZ7t0bABgAACgF52R+VmS0ENDKJmdTbssZQgBg%20AACgdFybR/KN9BACWsmFWZplGSkEAAYAAEpNbf4+T6XR+8nhtJ2ZpmzKFCEAMAAAUKr6pCmbUy8E%20tFhtZmVXGtNJCgAMAACUtguzMCsyTghogal5PLellxAAGAAAKA/XZkMWZogQ0AyX5qEszjAhADAA%20AFBO2qU+j+WfPL8cTsnwLMzaTBICAAMAAOWoa76ap9OYLlLASfRLU7amPu2kAMAAAED56pOmbE9D%20aqSAEzgzTdntkX8AGAAAqAznZF52pCEdpIDf0S2N2eWMDAAGAAAqy9DMyyYvCITjatOQnWnyvH8A%20DAAAVKLRWZiHco0QuPjPzsxLfykAMAAAULkm5YGsylQhqFIdMyPbMi+DpQDAAABA5ZuYxVltBKDq%201GZGHs/8DJcCAAMAANVjQhbnl0YAqu7i/3wpADAAAFB9rsjirMlUbz+n4i/+G7Ir8zNMCgAMAABU%20r8uzOA/nU34eUaF65B+yO/NyjhQAGAAA4I+yKDsyy9vQqTD9Mie78y8ZIAUABgAA+K1huS27Mye9%20paBCvqPnZndm+44GwAAAAH+oX2bnmczNICkoaxdnQZ7MTGdaADAAAMAHOyMzsyu3Z5QUlKF2+dMs%20y8ZMT40YABgAAODDdMoXsy2rUp8OYlA2OmdGtuQnmSwFAAYAAGiOiVmYJzIr3aSg5A3InOzN/IyW%20AgADAAC0xPDclv/N3AyRgpI1PgvyTGanjxQAGAAA4HT0yMzszMJcJQUlplOmZV3WZ3o6igGAAQAA%20WkNN6vNgnkyj37JSIoanKXtyZy6VAgADAAC0to+kKXuz0EPWaOPPTpOzME+kMX3FAMAAAACF0jn1%20WZb1aUh3MSi6AWnM01nmDRUAGAAAoDjGZ1725tu5WAqKpCZT8z/Zk6acKwYABgAAKKae+XI2Zlsa%20008MCmpE5mRXFucTfu8PgAEAANrKqDRlT5ak3nPYKYCemZFleSyz/d4fgEpQIwEAZa42danLvizK%20D7JJDlpF+0zI9ExLNykAqKQfbwBQCQZkZh7NmszM2WJwWsbk63k6D6XB5T8AlcUJAAAqyeW5PP+e%20NVmQu/OKHDTT4NycGblECAAMAABQDtpnYibmW1mWRbknrwvCKTgzdZme69JOCgAq+UMSAFSiTqnL%20/DyXH+TjHhDISfTOX+a+vJD5mezyH4DK5gQAAJWsZz6Xz+Vgfpwl+YnTALzPmalLfT6eWikAMAAA%20QGXonemZnjfyQBbl3rwqSNU7K1NSn+udDQHAAAAAlahr6lKX7+a+3JOleVmQqjQ0N+eTudxNkAAY%20AACg8meAm3Nz3s3aLMnybBCkSrTPuExNXS5xnz8ABgAAqCYdMjETkzyV5flx7s9hSSpWt1ybutyU%20/lIAYAAAgOo1LA1pyMu5P0vz0+wXpKKMzI25MZN82gEAAwAA/EbP3JJb8tvzAMvyliRl7axck8m5%20PkOkAAADAACcyG/OA7yZ1Vme5dmYo5KU2aeasZmauozziD8AMAAAwIfrksmZnOSFrMjyPJinJClx%20HTIuV2dyrkoXMQDAAAAAzXV2PpvPJnk+D2V1VuWRHBOlxD7FjM2kTMzk9BYDAAwAAHC6+qc+9Ule%20zMNZ5daAEtAxYzI5k3JVeogBAAYAAGht/VKXuiSHsjbrsi7r8mtRimporshluSyXpFYMADAAAECh%209coNuSFJsi+rsjob8qu8LUvBdM/FGZ+JuSpniwEABgAAaAsDjt8c8EY2ZH025tE8nndkaaXL/jG5%20OJfk0oxKBzkAwAAAAKWga67MlUmSI9mRDdmQDdmY14Vptl75aMZnfMbnQpf9AGAAAIDS1TGjMirT%20k7yb7dmUrXk8W/OUcwEn0TUjMyqjMzrjMkgOADAAAEB56ZCRGXn8749kTx7LtjyWbdmWt8RJbS7I%20qIzOqIzOiLQXBAAMAABQCTpmWIalLklyOE9lV3ZkV3ZmV3bnSJU06JbhGZ7zj/81OO18WwCAAQAA%20KlltRmTEe396J88cnwKeyd48m+dzrGL+PwdlcIbk3AzP8AxPf196ADAAAEA1/xw+P+fn4+/9+XCe%20y548k73Zkz3ZkxezvyyeH9AlfTMoAzM4QzI45+Tc9Pc7fgAwAAAAH6Q25+W83/tn+/Ni9mdf9ufF%207Mv+vJRDOZRDebMN/vvOSO/0Sq/0Tf/0Tb8MSN/0zcB096UDAAMAAHB6+qbvCf/52zl4fAo4lEN5%20OW/njbyWIzmUd/JK3sqbee34EwZez+H3/p03jv9dj/des9cttUmSrumUHqlJr9SmW7qmU3qmY3ql%20V3odv+zv5dV8AGAAAACKrVP6u7MeADh1XrwDAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAA%20AAwAAAAAgAEAAAAAMAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAA%20DAAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAAAYACQAAAAA%20AwAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAADAAAAAAAAYAAAAAAAD%20AAAAAGAAAAAAAAwAAAAAgAEAAAAAMAAAAAAABgAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMA%20AAAAYAAAAAAADAAAAACAAQAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAA%20AABgAAAAAAAMAAAAAGAAAAAAAAwAAAAAgAEAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAA%20ABgAAAAAAAMAAAAAYAAAAAAADAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAAAYAAAAAwAAAAAAA%20GAAAAAAAAwAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAMABwOo5KAAAA4KrKAFD5jkgA%20AABwGt6WwADgWxUAAMBVFQaAEnFYAgAAAAOAAcC3KgAAACfj16oGgDJxSAIAAIDTcFACA0B5eEkC%20AAAAV1WlpZ0EBVCTw8oCAAC00NHU5l0ZWpsTAIXwTl4WAQAAoIUOuvw3AJSPfRIAAAC00PMSGADK%20x24JAAAAWuhpCQwABgAAAAADAAYAAwAAAIArKgwAxbRTAgAAgBbaJYEBoHxskQAAAKCFNktQCN5W%20Xxjt83K6ywAAANBsr6ZnjslQiAtVCuFotokAAADQAltc/hsAyssmCQAAAFrADQAGgDKzRgIAAIAW%20+KUEBoDysloCAACAFlglQWF4CGDh7Et/EQAAAJrl+QwQoTCcACgcNwEAAAA0l9//GwDK0DIJAAAA%20mul+CQrFLQCFMzRPiwAAANAsQ/KsCIXhBEDh7M6TIgAAADTDVpf/BoDy9BMJAAAAmuGnEhgAytM9%20EgAAADTDjyQoHM8AKGzd3TlXBgAAgFPybIbmmAyF4gRAIR1zBgAAAOCU3eXy3wBQvv5LAgAAgFO0%20UIJCcgtAoW3NaBEAAAA+1OaMFaGQnAAotO9LAAAAcArukKCwnAAotD7Zm84yAAAAnNSbGZSDMhSS%20EwCFdsBrLAAAAD7UIpf/heYEQOGNzaMiAAAAnNQl2ShCYTkBUHibslIEAACAk/iZy38DQGX4pgQA%20AACumtqWWwCKU3lTLpIBAADghDZmfI7JUGgdJCiKF/JpEQAAAE6oIdtFKDwnAIrVeV3+WAYAAIA/%20sD6X+v1/MTgBUCz78lkRAAAA/sDns1OEYnACoHiWZbIIAAAA7/NArhPBAFBpxmaDExcAAAC/492M%20yxYZisNrAItnU34gAgAAwO/4nsv/4nECoJj65cn0kgEAACBJciAX5oAMxeJIejG9nl9nqgwAAABJ%20ki9ljQjF4wRAsXv/zKMAAQAAkqzMdV7/ZwCoZBdkU7rIAAAAVLk3Mia7ZCgmtwAU26/zWm6QAQAA%20qHJfyf0iFJcTAG3RfElulAEAAKhi92WK4/8GgGrQL5tztgwAAECVejFj87wMxdZegjb5Zv98jsoA%20AABUpaOZ4fK/LXgGQNvYkfa5WgYAAKAKfS3/IUJbcAtAW2mfxZ4EAAAAVJ0f5xNORBsAqk3vPJzh%20MgAAAFVkey7LIRnahmcAtJ2DuSH7ZQAAAKrGgUx1+W8AqE67cnPekgEAAKgKb+WmbJeh7XgIYNt6%20Nk/lz92IAQAAVLyjmZb7ZTAAVLOt2ZubTAAAAEBFO5YvZYEMBoBqtzGHcoMMAABABWvMt0QwAJCs%20y7FcIwMAAFChvpavi2AA4DcezJv5ExkAAIAKNDv/LIIBgP+3Oi9kimcBAAAAFeVY/i7fkMEAwPut%20z7O50VcEAACoGIfz+dwuQ6nwG+fScl3uSU8ZAACACvBqbsl9MhgA+CCjszRDZAAAAMrcc7kxm2Qo%20Je0lKDHbckVWywAAAJS1X2S8y/9S447z0vNaFqRTJgkBAACUqdvzmbwiQ6lxC0Cp+ot8L91kAAAA%20ysyracjdMhgAaI7zcmcmyAAAAJSRX2VadshQmtwCULoOZUGO5UrPaQAAAMrC0Xw7t2a/EKXKCYBS%20NzF3ZKQMAABAiduWL2aNDKXMCYBStye35/VcmRopAACAEnUk/5pbs1uI0uYEQHkYnbm5TgYAAKAE%20/Syz8oQMpc/95eVhWybnpuwSAgAAKCk7c0uud/lfHtwCUD62Z14OZZyXAwIAACXhxXw1f5UtQpQL%20twCUm275Qv4x/YQAAADa0IF8J/+WV4QwAFBYPfM3mZkBQgAAAG3guXwr382rQhgAKI7aTMtX8lEh%20AACAItqSb+auHBbCAECxjU9DpnkqAAAAUHBvZUluz4ock8IAQFvplWm5NRN8LQEAgII4mtW5Kz/M%20y1IYACgFg1Of+lzqxY4AAEArXvqvy8L8KHulMABQas7KNZmcugyUAgAAOA0vZWWWZ0n2SWEAoLS/%20qiMzMZMyIcPFAAAAmmFHfplVWZ0n3OtvAKC89MxFuShjcmGGZnBqBAEAAH7PkezN09meTdmSLXlF%20EAMA5a8m52Rw+qRPzkrv9EiHdEx3WQAAoKq8liN5J6/mYF7KgRzIs3ku78gCAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVJX/A4zlkop3bSFJAAAAJXRFWHRkYXRlOmNy%20ZWF0ZQAyMDIxLTA0LTIzVDA0OjAwOjA2KzAwOjAwrEF0SQAAACV0RVh0ZGF0ZTptb2RpZnkAMjAy%20MS0wNC0yM1QwNDowMDowNiswMDowMN0czPUAAAAASUVORK5CYII=%22%20x=%221.824%22%20y=%22-5.821%22/%3E%3Cimage%20width=%2261.444%22%20height=%2261.444%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAAA3NCSVQICAjb4U/gAAAACXBIWXMA%20AbrqAAG66gHB8Tn1AAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAArhQTFRF%20////RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20REREREREREREREREZ3VqbAAAAOd0Uk5TAAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8g%20ISIjJCUnKCkqKywtLi8wMTI0NTY3ODs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlRVV1hZW1xdXl9g%20YWNlZmhpamtsbW5vcHFyc3R1dnd5ent8fX5/gIGCg4SFhoeIiYyNjo+QkZKTlJWWmJmam5ydnqCh%20oqSlpqeoqaqrrK6vsLGys7S4ubq8vb6/wMLDxMXGx8nKy8zNzs/Q0dLT1NXW19jZ2tzd3t/g4eLj%205OXm5+jp6uvs7e7v8PHy8/T19vf4+fr7/P3+fB0t5wAAIL1JREFUeNrtnf1DVUX+xwcUBBHvwiUI%20n1ZsUXkIbMFt1bUlrXYxClhxdb8gsX5JLXfTIEDchF0fulFafYNQd4XFtNowMR82EO3CUklUmviw%20Fo8J997zb3zBpwC5954z85lz5pzzef+qnPnMvF/3M3Nm5swQIrZiJEbFEH3LW/2IwVXECkARAqBr%202VkBsCMAehZzD6D7PsDkABSxA1CEAJi5B9B9H2BuAGIlAMUiAGbuAfTeB5gbADsEAHYEwNQ9gM77%20AFMDUAQDQBECoFO1wADQggCYugcQvg8I5AVAIPYAeugDihpD+QAQ2qjzSbAWKABaBMfcEwH0AIQ2%206nz4A9YDCN0H3ExzHgigBmDYf30TUAwHQLHo3VxTKDQAoU26fwVqgQOgRXD/hwiwwgJgbdL9SzBg%20DyBsHzBimHvGCgmA9Yz+p0GKIQEoFt3/cQgIejSntPKot5rVv/liVown/3VLQAskAC3C+z+GAEtW%20TZ/86p3MCXbvv04JiJNAFaeDaY7msDv/NKfqhsL69ZRZ7j44rNkIk+HFsAAUi+//XQIibAMUNbz6%20rJ87/3VJQAssAC068F+Szg4TsLaHso6fZ9z0/6whFsSAewDh+gA309xnw/z3MFTyxMNu/NcfAcXQ%20ABTrwf8hAk6wVbPmrEEWxVuhAWjVhf88VWTqHkCoPkAT//VFQDF89YvN7r+uCGiFr32r6f3XEQFx%20PGofZ3r/9UNACY/Kl6D/uiGglUfdW9F/vRAQx6fucei/Tggo4VP1EvSfPwHpr/5M0B4ApA/42av/%20w/DXgY0iANDIc7d4+qDkPPgLxofE86p6PGNgvzjolKStDA8IFYAAj5vQAfwfVsOTPgL2AIx9gM+T%20DbeeUuWvZwLU8H9IbWsDaB8SsvprXpX/JvcB2qgC1rbdfczREAYCmrT1v0kd/4fUWWileER4zpEB%20rg1w/vV0CvushZ2jBhNReiVAPf+H1Puqwt/b9HX1DhUawXmydMlEJXE98GrvmEd0JtM309gNe2rq%20jFVF/4ebWsF4MOq5j13qtcSV1x+ZoGTkN1Z9T+mRALX9H9YxWePBuZs/Ub01OiuW+MoY+R1zk0Y2%206I8ALfwf0n+8jQfnFH+q0S/i21cSvIz8/uP+j3f70hPQrEVtm7Xxf/i3VuC+6IlPv+eSNNSHqW4z%20lLWg0+OfHgqibq4wDQj4cdO52v4Pjwdt448HZ229qPnESFveuEY+YOv19pen76cn4Kza1Tyrpf83%20x4MLx/6Vb+phpwhTo9J/t08fG9vCg3JC+zJGNwRo7f/N8eCKUdn28XOSMOrfOnnkyG/FMZl/990j%20OiFABP9HjwcXfCAJpa8yZY38xmpgDXWz1SiKb7Bh5wvZqQujgoKiFqZmv7CzYVDRn5/wF8H/H8eD%20sypdkmg6+qCckR/Y4urDCspof+0py9i/tzz1WruCR+wRw/+b48E5lrJ+SUA5bKFzvI/87lEl3Y9L%209gcgXaXR7p4RXdolO8y1gvg/PB78ThJU31MNSj/8CUW7Zci1f5vH2fvQbXIR6IkQxX/jqWW24nbz%20+1zWk7tf9jp5Y325W16UNvSfmy4lKW24Z2U999R0WWtop+SNV+eg/9zU+6SyhrNclfPUt2XuqQh4%20W1aQVeg/PznzFbVcmZwxqYLlpg1yltFvWNB/jtqlYG0oWMYRENdTlHiRcl1GiFnoP0/9c7LspsuR%208ftPUeZGiowcUIP+c9Up2S9aJ70/TPF2gw3en9kXhP5zVft8eW0n4zLEt5U7ImMk+Cj6z1fXl8pq%20vCzvyYRiT3WA97fBHPSfs278Xk7rveh1/mc6jSnTvc4IlaL/3FUoo/ne9PaQl+lsednrsgX6z1//%205+e1/eq9zf9Tbt6zelsXOIr+q6B/jZ5voXjCNlpntlEUhv6Dy/5TNgC6qL/eCe1SAQD036u+/TkT%20AAxDtVL+AKD/MtSTygJAND0A0dwBQP9lyfm/9AC0s4zP2jkDgP7L1Q5fWgBeYwHgNb4AoP/yVRNI%20CcBTLAA8xRUA9F+JToZTATDItGpvGeQIAPqvTOfn0QDQwDZJ08APAPRfqf67hAKAnWwA7OQGAPqv%20XDeylAPwAhsAL/ACAP2nUoFiALLZAMjmBAD6T6k3lP5BKhsAqXwAQP9ptV/pHyxkA2AhFwDQf+op%20wRilfxHFBkAUDwDQf/oEoHgMwLhxM4gHADvQSOoEYAgA7u9DK2kTgGIAROwCMAXQJwDFAAg5CMQU%20QJ0AFAMg5msgpgDaBGCQiSBMAbQJwChTwZgCKBOAURaDMAVQJgDDLAdjCqBLAIbZEIIpgC4BGGdL%202N/QUpoEYJxNoZgCqBKAgbaFYwqgSQAG+jAEUwBNAjDSp2GYAigSgJE+DsUUQJEADPV5uCAp4Ad7%20bdmGnJWpS5Pmzwzx8wuZOT9paerKnA1ltfYfhEsA4+motxTA64CIesaTISK0TgHtR3avWx7l4URG%2036jl63YfaRcoAYynSm9/zuuImDdZzwbRMAW4ztkyZJ/DF5FhO+cSNgF4H6rxOiTqRaLPFOBs3JGm%20OCta03Y0OoVMADIOCuV0TBz7WbF/Vb8xBw5lUs+OWzIPDYiXAMij3h/B56DIGKK3FOBqyGW87tKa%202+ASLAGQIBmtyOOo2JOE6CsF2DfPBgiZzN5sFyoByLowjMdh0RAHhaqXAm7sTSRgStx7Q5wEIOes%20WB7HxfcEE/2kgO7yaQRU08q7hUkAxCIHR/ALI8pAGjKiV4U2vFIQQsAVUnBFkARASJWsJ8FeGXMV%206MIQ/imgI38y4aLJ+R1CJABC5sh7OQG9NOpZoFbknQIu5/gRbvLLuSxCAiDEJrMnhLs27nOwZuWa%20Ahy2EMJVITaH9glg6GfUI/N5YBdHZoA1Ic8UcDyRcFfice0TACFrZT8R5urYE4AtWM6r8S6t8SEq%20yGfNJa0TwJD2KFkEY788+mHABuSUAgZ3WohKsuwc1DgBEOJ/QlnrsF0fD3thGJcU0J5MVFRyu8YJ%20gISdVXN28mwYZOuFc0gBBy1EVVkOapsA1PUfmgDwFNCfR1RXXr+GCUBt/4EJgE4BbQlEAyW0QTfy%2093LTWFiz+ovUzWHCpoDKKUQTTamEbmSZ0+1WDfwfIsAqZgoYyCaaKRt4v0j/LFn+n5E00RlAAv4F%20FlXPcqKhlvfAtnGlwP5DEvBLuKn/JKKpkmAXB1wLBPYfjgDfJqiIzkcTjRV9HrSJP/BWXmiTpKGa%20QkEaLReMyEiiuSJhf5GPi+w/EAEhV4GiqZ9KBNDUesgWPufr0f9GSWM1AhBgA4qldhIRQpNqIVs4%20VWj/IQh4EGhFvV4Q/4cIgMwBh92XEyiA/0MEBDI214dA/f9UIoymAo4DnB7mAopEAKCIsbEWwoRx%20PpIIpEjAd4GtRGgCWP0nB2De/6OJUIqGmw+4OFFkApj9/ynICKAniQimJLg5waeJuAQw+w+zDjSw%20nAin5WDrAu8RYQlg9z/4e4g4somAyoZqZdccUQlg95+sV2vJRAOBrQ4XEzEJAPB/AsRouW2KmABM%20gdoh8ikRkgAA/8kTAHH0JxBBlQC1S2yuiARA+E/eBggkjwirPKC23kxoCThbw1byibNc/ff/jr1x%20DhKBBbRX+BNCScDZMPLwCYaC9/i7224K4r/yK4nuVbtFZAAs7TAERNERcGvrbsbntLMra4m7Dccw%20/sv8rt2TBpOJ0EqG+WboOUJDwJ2Nu37P0iy4D9hunaM33pZjIP8DuphbZicRXDtBAPiYUBAwYuO2%20pUzpxOSNqruzD/cSAOQ/SWNumEsW0QGwgHw56pqunIDRG/aCc07KL66vJmtkw47ddgjlP9nH3DBr%20iPBaA5IC1hGlBNy7YTMm68U3ve5UOFpZmvPo2AuHRxMA5r8/8zlLx33EB8AH5PwAeecyF3ny/5a8%20FTT+X40kAMx/8ivWVnEkEh0oEWK90xGujIAmdxu26QAg1iZ4/8lfWFvFRnQhG0QKkHkq420C3G/W%20pQTg7vZjQP/Jv1k3gcCd/xMUvWTlxvLq+rbu7rb66vKNK5dEB4E9PARic8gRooAADxs1aQG4vQEV%200n+rU50fhVdFb2oYJxRnwyaoXUY5AAAMhMgnwNNGXWoAbhIA6T/JZGySDoiDynySt3k4+de+LRli%20mOkHcZ7garmlFXncqE0PwBABoP6TNxlbJJ89hJSKC95KuVCRwl5OPgAAX5fEyyzN4zZtBgBIIKj/%205Cu2BrnCfP7nIpnLJCcWsZY0GeZU2daSOOZWZwEAVvMYW6OAsfzYd+WX9W4sY2EFUIvwzAyIAsCM%20zENsLdHN9gow4y1FQ1DnWzPYXgQAzxZvLY7TNwC+iX+sZh8VlTP5UaZ4r05/GRNxsIfgMDCgMQBT%20fv3S+10QTXCD5fz/x67RFHntMYYip0HfMNFCyYCGAMzI3P0J2MnKexkCWU8ZhWM9Q6F74TfltRTH%206gWACSBZf6ToVwH836Av9Q1/+hUBiYeUM6A+AFNSgLL+qBka6nDu+4il3I/uoy6Y101TLUWx4gIw%2083evNHI5T38zbUTxjJv02uNpS94scZMSBlQDYCjr7/uKV41dsymjWsH8Ota9grLo2VzvG7TLZUAV%20AIJ5ZP2ROkbrP8Dlr05aAhokvrIXxYgAALesP1K5lPkfZDqmm7IXyJW4SwYD3AGQVNAA3fmE97XD%20FN9ONxK0qnLvMNFaalTyEN3730dQ5X9E9zZ4CAEAUiZVZG/ABfCGJhsgEIA7wzCqjwHWQ4ZANSdo%20cSIAIGqkmv8HHZk6qNYFGhEAEO2gWf+7BhvDNZq1wR0IAIjSKMIqgw6C5u7sNAQAZBqQ4iVwBviN%20Tv0UO0SsLgQAQOcoonoLPoy3KMI4hwAAiOJ7oFgO428nxWK8DQEAEMW91e/yiONd5XFkIAAAilAc%200yI+gSjfLR6BAADMxCuP6QSfSCiuUG9HAJh1RHFIKbxCSVEcyhEEgFm7FYdUwSuUCsWh7EYAmLVO%20aUQ+F3iFckHxl6PrEABmKT4ZPplfLIrPqFuOADArSmlE2/jFsk1pLFEIAKt+8FUakZ1fMIp3p/v+%20gACo3ebRPKOJFohGkwBQqzSgTTyj2aQ0mloEQO1lWK67sRs0X5Y2HQAbFMYTxHUfllPpWWIbEABG%205Yg0BFA+CMhBABi1UmE8S/iGs0RhOCsRAEalitXiSnlMRQAYtVRhPBv5hrNRYThLEQBGKb0jtpxv%20OEqPKkpCABg1X2E81XzDqVYYznwEgFEzFcZTzzeceoXhzEQAGKX0g4w2vuG0KQwnBAFglNITorv5%20htOtMBw/BAABQACwC0AAcBCIAOBrIAKAE0EIAE4FIwC4GIQA8GtxXA7GDSE8hRtC1AYAt4SZHADc%20FGpyAHBbuMkBwA9DTA4AfhpmcgDw41CzA4Cfh5scADwgwuQA4BExJgcAD4kyOQB4TJzJAcCDIs0O%20AB4Va3IA8LBokwOAx8WbHAC8MMLkAOCVMWYHAC+NMjkAeG2cyQHAiyNNDgBeHWt2APDyaJMDgNfH%20CwxATJGdfy1z6WKLBzksoDuervRc/u1iL4ohAog/A8coI1sBMAxzrqAsvMEc7t+efOfLgGs2LQHM%20OaCb1v/ZLr7uxxLBFFvUwq++m2mjimccB7TH05a8mV9rtIjnPm8G7NQx3cf0LvDRfdQF283m/m0G%20ivkwkEgdkT/DfMAb/tTFJvJxv1ho9zkysJchoPWUs8KO9QyF7jWp+7cUB87AjWkM4TxGtTJ07TGG%20IqfdAHc/juhKccWtoA1QzhJMSJni/QH9ZSEsJcIeVdSqN/c5MNDN5AeZ8ZaiKQHnWzOYigvpNr37%20txkoAWOggHVoomCn6LusnW0BmPslOnYfloErk1kjWSTze4ETi1hLmnwF3R81G1PyNUBz5LMHklLh%209bvBCxUp7OXkA1T3m5J4YhytBmiRDj+AQHySt3mYobFvS/YBKMSvQ7sFMEEVArE0mgMUTPSmhnFG%20hM6GTdFABYAcDfaAoQAA+UrycghYOEHRS1ZuLK+ub+vubquvLt+4ckl0EBztlwEqe95Y/sP8KGz6%20qKsNoq6vGwyAcIhNuo5EPVQ1EWQ/crrBAIA5x/+4j/gV9TkOUVNniNEAgDksZY34FV0DUtGTRvOf%20TAfZIHPJIno9LZdAACg1HADkY5CG2Sl6NXfCTAEvMR4Az4E0zGCy2LVMHoSZ955oPACAzkxsF7oT%20sLTD1PJ1YkB9AtM2B0Wu40GgRcBHjAgA1DbZPHGrmAdUxc4JRgRgLlDr9CeIWsMEqHNJKogh9SlQ%2087RNEbN+U8BuLV1iTACKodqnUsz6VULV71tfYwIwB+xjqWwRq5cNtgvwFWJQvQfVQgPLxavccriv%20wROMCsDTYE3UkyRa3ZJ6wCr3oVH9JxMvgjXS5WixqhZ9Gaxqii9L1ZG2wrXS+UiRKhZ5Hq5mbT7G%20BWAW4LlZZ6aKU6+pZwA/A8ojBtZhwIaqnyRKrSbVA1brv0FGBgD0Mu1aQQiYBHo75HYj+098Qc/P%20rheiF5gK+fuX+qcbGgDyOGRjSWcEGAlGngGt0lZicH0A2lznNX8bjD4PWqGvJhsdgAWwh2dd1nhG%20KOkyaHUoT8XVlSphW6xH01nh5T2wtTlqfP/JLODLPAY0XBnKBj4N1vGgCQCAv8yjUqP9AVMqoWti%20M4P/xPIddLu1abJ8ltAGXY/vQ00BwBz4exT6NZg+zQO/l0pyxpgCAJvEQQdV3i1uOcijFvvN4L+1%20l0fTSe2qfjGS3M6lEqZIAQUSHw3uVC0JWHYOcqqECVJAQKfES5fWqLKS7rPmErcqmCAFrJU46rgK%20J0gkHudZA8OnAJ//8Gw+yWHjfLBCiM3BtQKGTwErJM66nOPHL3q/nMu84zd6CjgmcVdHPqcVtcn5%20HfyjN3gKWCipoSsFHDqCkIIrqgRv7BRwUFJH3eXTYAOfVt6tUuiGTgEPOCW1dGMv4BtB4t4bqgVu%206BRgk9SUffNsiKBnb7arGraBUwCnWWD3cjXkWhlDzm1wqRy0gVNAgaS+Bg5lUk8RWzIPDWgQsmFT%20AMdZYM8N2rgjTXEisKbtaHRqE69hU8BaSTu5ztkyIuQGGpFhO+fSMFiDpgDOs8ByloyP7F63PMrD%208Ru+UcvX7T7SrnWcBk0BT0pi6Ad7bdmGnJWpS5Pmzwzx8wuZOT9paerKnA1ltfYfBAnRmCngmIQC%20TwEx3p4kDkq/QFs5pIAib08qMt0ssLlSgNc5Krso/j/gRFfhU0Cs9yeJcuH0q2gqhxRQ5P1BgvQB%20qs8CmyMFyLikvUUMAArRUg4pIFbOg4ToA7SaBTZ4CpB1+G6x2WeBDZwCWuQ8R4Q+wKcN/eSQAmLl%20PUiAPuBJtJNHCpB5/LoAfUADuskjBbTIe472fQDOAnNJAXFynxOHs8CGTAGyL+DQug/4Gc4Cc0kB%20rXIf04qzwEZMAXHyn6NxH5A+iFZySAEl8h9TQpAA46WAVvmP0boPQAI4pIB4JY+JRwJ0qgPuVlfz%20mpU8pjlP/r74ZX9GAoTRP8a9RXxSep3iD1YG6tLlXa/wJwefLQRIAJD/Pov3XKd72vU9i70eojR5%20//D/RAKE9X9e6ZcsT/yydJ5Hk6JudyxIgJD+h+efZn/q6fxwtxY9eu3O/0ICxPN/2WGg9hs8vGx8%20gzaNOAALCRDL/wmZjZAPb8yccG/3v2/Uf0ECBPI/4JkvoJ//xTMBY7r/sXcfIQGi+B+8hcuOys4t%20wSOcSbl6z39AArTTeyP8X3WRVykXV90t5Pnxzr9EAjSTs3r+7fZawHU3VcOCW91/9fj/jARoiMC+%20YQRCKzjvpXBWhBIyu8ndPyMBmiIQl3uVfzFXc5d5KAUJMLuQACQACUACkAAkAAlAApAAJAAJQAKQ%20ACQACUACtCWg91/oiNr6gzgE9JaHk182oSWqyjFXlO8Fhu0fkq8a8+Sou6oS5IuR2/YPi/cdjsr1%20vXE/g3bOJSIQ0Fs+6sz/Bz8UqY36yywx+52YAPgR0PvXe658WHhAlCzgqpw1HJBBEeCXAOQTMI79%20w/pp+fcitNAHC+4EZEgE3tH8y9G+v7q98CV4/Xmt2+fc4yMDMh4Cznkafzvswf6bm+afePs7DVvn%20cOrYW2iMhgDfBOCVAC/235R/alWXJm1zceus8eIxFAK8E4BnAvr+JvO2r4C0fd0qt4zrvacnugvH%20QAhUa3iChGz7b+WBX/3l3+o1+6fFczxGYxQEVEgA7gjo+9v9ih9kzXzzKxVa5ZPNMt6MjIGAGglg%20XAJo7L/9Ff0hvpn/4+eiZEZiAASc87U5R4je/iFl8msPR/266UpC0T0CKiWAMQT07bif5VEzODXG%20wJGccMXB6BsB1RLASAIY7R9SB4+2+Hp1CF004yHQrBMA9hGiNgHs9hNSzaMtGA7cvAeBfwRfwgQw%20LgEQ9hPyRx6NwXTc4mgE/jGRbMAEMB4BIPYTksihLVoZYxqBwPD5D4Hf6gEAze8aoJRvl1A9wBgE%20bp3/oYsUkKtTAMj7Yv4YbiJw+/wXXaSAq6E6BeAl4XqAuwgcuLN+sF4PKaBCpwD8WsAeYKy2wM1O%20fVa3ffWihKgwf/+wqIRFq7fXfQa1Vcq5QJ8ATHGI2AOM0kyg+5T7arKm3vv0qVk1fSCPb9BpCvhE%20zB5ghP4OEVbPgYwgdwUEZRzoAShilT4B2A0MAPjVW4+wx9RVlRbouZDANPaNMheDdQlApuA9wMRP%20mRcmdsm6BcK6a4CxoC26BGCG4D0A8ytAbbTcoqJr2UrqDNAlAR1C9wARjNtYTy9WUtpitnPmn9El%20ANVC9wA2pmg6snyUFeeTxfJ7+GKCHgEAXQ+CvoA5nOUVzVVKkZMDSl30JWbqEYBEkXuAUoZYetMp%20F9ro5x0a9QjAhC5xe4Dg6/ShfPMQbakPfUNd6DKTrwdB9wDP04dyKpK+2MhTtKUeNvl6EHAP4H+B%20OpL9gSwFB+6nLHYwXIcApMABEAsbWTb18K+QtehCyqFgvqnXg6B7gBZa/wGm5VfREXBaj31Ao6A9%20wM9p4yiEKL2Qrux5OgTgFUF7gF20/T9M8XTjgFIdAvA7MXuAiZSXgJ0KhCk/kOpd4Esf/QEwEwgA%204FMyH6d8/4+ECiCSaj5gsQ5TwFdC9gDv0M3/PQQXwUM0c4J7dAjAPhF7gClUM7KudMgY0ileBa5P%200h8AfxSxB/i9CGMwmrWIdP0BkChiD0A1Q90BvCcjgGJ1uE5/AICsB9lhY4qkmp7Kgm6aLIotaFb9%20EfC+eD3ARqp5OPB3MB+KPUJ5+gPgJfF6AKrpSQ6vYIuVR9EcrzsAUoTrAWKo9n/yaBuanaKtJTr7%20WjjYIVoP8DLN/u9oHm0TTbdbvLVYVwywrwfFgMYTTrM3cxeftqFdkpBaimN1A8Ar4vQAEU8U/PNr%20mhC6OI2+rQzvSLph4HdC9AD3/6awjn4/HrfLGqrYJkiL9MDATK17gMjfvnToAlsIabwaJ405PRbF%20EJRnsb+G9ATyii0Q4NthdJg7AAf4BXcAAdABABn8gstAAMQHoC+IX3BBfQiA8ADU8IyuBgEQHoAs%20ntFlIQCiA+CYyjO6qQ4EQHAAPuMb3mcIgOAA1PENrw4BEByA7XzD244ACA7Aar7hrUYABAdgEd/w%20FiEAggOQwDe8BARAcACi+IYXhQAIDkAY3/DCEADBAfDnG54/AoAAIADYBSAAOAhEAPA1EAHAiSAE%20QDQAcCrY5ADgYpDJAajjGx4uB4sOAG4IMTkAuCXM5ADgplCzA4Dbwk0OAH4YYnIA8NMwswOAH4ea%20HAD8PFzXiimys7YxHhChc8UWtTA1Mx4RYwAGihkYwEOizM4AHhNnEMUVt1I1OB4UaSAGSmgYwKNi%20jaT4ZuUNj4dFG0l5ypsej4s3kqwUnS9eGGEkUWzDwStjjKR0iuEXXhplIE26rrz18do4I2kPxe8P%20L440kBbTzMDg1bHGkc+XNA7g5dHGEc0YDK+PN5Dm0a3CFEKUXUhX9jx0DVKnqUxwrWIveZWLqujT%206Bmo8ul+hi7mHFBI57+Uj56BKnyQci1+P9NIMHA/ZbGD4egZrA7T7sY4xfA2GHmKttTD6BiwllHv%20xvqGekboIfqr65ahY9Civ9O0l3JWOL2XushG9AtcmfQ7Ml2lFGuDAaUu+hIz0S9wTfiCYUt2R5bC%20eTmfrA6G4r6YgH7B6xmmXfmnFU3NLz7NVNgz6BYHBXSyfZZTK3uvcHQtW0mdAegWD21h/DBrYJes%20PVrWXQOMBW1Br7go+CLrt3ldVWle5oUC06q6WEu5GIxe8dEq9o9zpZ4DGW5PkAjKOADw/a+0Cp3i%20pQYJQn01WeOcJDU1q6YP5PEN6BM3LXBKMHJ8Vrd99aKEqDB//7CohEWrt9d95gB6tHMB+sRPFZLw%20qkCXOCr0quj+Xw1Fl3gqV3QActEjrooTHQBcBuSrfcJ3AbPRJI6a7xR+ENg0GW0ycQIYUjXaZOYE%20MKTn0SheqtaD/5IjBZ0ycwIYGghGoVcmTgBDOoMDQR6a59QLANI+dMvMCWBIm9AuMyeAoYHgo2gY%20tN6R9KRrOBA0cwIYUjMOBM2cACSw4ylQtzTXqTcApD+ha4Cq0p3/kgOXhk2dACTpz+ibmROAVIS2%20wSUAB/pvav0B/Te5itB/JAD9RwLQfyQA/UcC0H8kAP1HAtB/JAD9RwLQfyRA5T3fuXH7nOi/WQlw%20Vgx//z/fHQLov8EJaLhz/sv8aif6LyAB367f0svP/osjz/8aBwH0X2MCvt0QSMjMv3Oyv3PLmPP/%205o1BAP3XloBLG24fAvnIpxzs/+KZcc5/nfeOE/0XhIBLG388A3Ti+u+A7W/MdHP+948IoP9aEtD5%203Ohd+BG2Pjj3Bw972t05t8qJ/mtMQOfz936EEV56Hcb+0/ne7n+aW+VA/zUk4PKm8b/BCX7+ArP7%20X5bKuv9x7h/QD60IuPwnt2c/E//sFhb3r+9ZjPf/Ck7AFQ/239TPd1FeMzFQlz4Jm1hwvfDnIO//%20aeLj7yifG2rOs2LzGkdTfv++wu8K4rHRDKbIjUruHWzFBjOgYl6WfRNcCbaWIRUuF4A4bCtj6mvs%20Acytf8oDoBhbyqAqwB7A3HpClv8t2FBGVQT2ACbXN3IAiMV2MqzqsAcwtwqxBzC3foM9gLl1P/YA%20Jpf3TUK4ucvQOoQ9gLn1kjf/7dhGhtZvsQcwtyK9ARDDOYD/BwDF42JUCDSGAAAAAElFTkSuQmCC%22%20x=%2263.223%22%20y=%22-33.465%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c7eb44d2-1692-40a9-aaf9-1f7b1675c04a",
              "type": "basic.output",
              "data": {
                "name": "cnt_reg_test",
                "range": "[5:0]",
                "size": 6
              },
              "position": {
                "x": 1232,
                "y": 16
              }
            },
            {
              "id": "f51b568d-ac69-4203-9499-defb12e9622a",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -144,
                "y": 80
              }
            },
            {
              "id": "07d985d1-3743-42a3-b436-7711d43b5619",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": -144,
                "y": 128
              }
            },
            {
              "id": "e8a3cc8a-5ae0-4dd9-8404-6ec7058d7e55",
              "type": "basic.output",
              "data": {
                "name": "ov7670_sioc"
              },
              "position": {
                "x": 1232,
                "y": 144
              }
            },
            {
              "id": "0e8058b3-d909-4728-a7c3-43d38e9ccbf8",
              "type": "basic.output",
              "data": {
                "name": "sdat_on"
              },
              "position": {
                "x": 1232,
                "y": 200
              }
            },
            {
              "id": "44ef1b5d-c37c-4ee5-9917-dde654188819",
              "type": "basic.output",
              "data": {
                "name": "sdat_out"
              },
              "position": {
                "x": 1232,
                "y": 256
              }
            },
            {
              "id": "53aa1fd4-6330-475b-b766-6e746228bc52",
              "type": "basic.input",
              "data": {
                "name": "rgbmode",
                "clock": false
              },
              "position": {
                "x": -144,
                "y": 360
              }
            },
            {
              "id": "baae5b29-67f9-41ce-b1e3-370a0b0d731a",
              "type": "basic.output",
              "data": {
                "name": "ov7670_cfgdone"
              },
              "position": {
                "x": 1232,
                "y": 376
              }
            },
            {
              "id": "d6b3dc26-25b7-4476-95a2-14a2c250dad1",
              "type": "basic.input",
              "data": {
                "name": "testmode",
                "clock": false
              },
              "position": {
                "x": -144,
                "y": 416
              }
            },
            {
              "id": "78d12cc4-7d6d-4a27-b046-e68e2a9c4fb1",
              "type": "basic.output",
              "data": {
                "name": "ov7670_rst_n"
              },
              "position": {
                "x": 1232,
                "y": 432
              }
            },
            {
              "id": "1ec398c7-8274-48f3-9d64-a1cc7c85369c",
              "type": "basic.output",
              "data": {
                "name": "ov7670_xclk"
              },
              "position": {
                "x": 1232,
                "y": 488
              }
            },
            {
              "id": "3520b631-32aa-4b4f-bd27-2f6c43b998f3",
              "type": "basic.output",
              "data": {
                "name": "ov7670_pwdn"
              },
              "position": {
                "x": 1232,
                "y": 544
              }
            },
            {
              "id": "5734eefa-7d5e-4455-aeab-bbf98bad5ae0",
              "type": "66a960ad8fab67afcb3f1f8cd6fad36d7084b28b",
              "position": {
                "x": -32,
                "y": 464
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\r\n//   Felipe Machado Sanchez\r\n//   Area de Tecnologia Electronica\r\n//   Universidad Rey Juan Carlos\r\n//   https://github.com/felipe-m\r\n//\r\n//   ov7670_ctrl_reg.vhd\r\n//   Module in charge of telling the SCCB module what registers to write\r\n//   in the camera camera and to control the camera inputs:\r\n//     - ov7670_rst_n\r\n//          0: camera reset\r\n//          1: normal mode            \r\n//     - pwdn: power down mode selection\r\n//          0: normal mode\r\n//          1: power down mode\r\n//     - xclk: system clock input\r\n//          freq   :  min: 10 MHz  -- typ: 24 MHz  -- Max: 48 MHz\r\n//          Period : max: 100 ns   -- typ: 42 ns   -- Max: 21 ns\r\n//   Register values taken from\r\n//   http://hamsterworks.co.nz/mediawiki/index.php/Zedboard_OV7670\r\n//   http://hamsterworks.co.nz/mediawiki/index.php/OV7670_camera\r\n//------------------------------------------------------------------------------\r\n/*\r\nmodule ov7670_ctrl_reg\r\n  (\r\n    input         rst,          //reset, active high\r\n    input         clk,          //fpga clock\r\n    input         rgbmode,      //if '1': in RGB mode\r\n    input         testmode,     //if '1': in test mode\r\n    input         resend,       //resend all the sequence\r\n    input         sccb_ready,   //SCCB ready to transmit\r\n    output [5:0]  cnt_reg_test,     //to test the count\r\n    output        start_tx,     //start transmission\r\n    output        done,         //all the registers written\r\n    output [6:0]  id,           //id of the slave\r\n    output [7:0]  addr,         //address to be written\r\n    output [7:0]  data_wr,      //data to write to slave\r\n    output        ov7670_rst_n, //camera reset\r\n    output        ov7670_clk,   //camera system clock\r\n    output        ov7670_pwdn   //camera power down\r\n  );\r\n*/\r\n\r\n  // frequency divider for camera clk (divide by 4) \r\n  //signal cnt_cam_clk : unsigned (1 downto 0);\r\n  // frequency divider for camera clk (divide by 8) \r\n  reg  [2:0]   cnt_cam_clk;\r\n\r\n  // 6 bits: less than 64 registers to be written, change if the number\r\n  // of registers to be written change\r\n  reg  [5:0]   cnt_reg;\r\n\r\n  // auxiliary signal, connected to output port done\r\n  wire         alltx_done;\r\n\r\n  // auxiliary signal connected to output port ov7670_rst_n\r\n  reg          cam_rst_n;\r\n\r\n  // auxiliary signal, connected to start_tx\r\n  reg          start_tx_aux;\r\n\r\n  reg [25-1:0] cnt300ms;\r\n  wire         end300ms;\r\n  reg          ena_cnt300ms;\r\n  parameter    c_end300ms = 30000000;\r\n  //parameter    c_end300ms = 30;\r\n\r\n\r\n\r\n  //id of the slave; 0x21.\r\n  // if adding the write bit, would be 0x42 for writing and 0x43 for reading\r\n  parameter c_id_write  = 7'b0100_001;\r\n  wire  [7:0]   addr_aux; //address to be written\r\n  //wire  [7:0]   data_aux; //data to write to slave\r\n  // register from the register memory: address & data\r\n  reg  [15:0]   reg_i;\r\n\r\n  parameter RSTCAM_ST      = 0,  // Reset camera during 300ms\r\n            WAIT_RSTCAM_ST = 1,  // Wait 300ms for the camera to be ready\r\n            WAIT_ST        = 2,  // waiting to send, until not busy\r\n            WRITE_REG_ST   = 3,  // sending the initial sequence\r\n            DONE_ST        = 4;  // all the registers written\r\n\r\n  // present state, next state\r\n  reg  [2:0]  pr_ctrl_st, nx_ctrl_st;  // present state, next state\r\n\r\n  // save the mode values to see if the have changed\r\n  reg         rgbmode_old;\r\n  reg         testmode_old;\r\n  wire        mode_change;\r\n\r\n  reg [15:0] reg_yuv422, reg_yuv422_test, reg_rgb444, reg_rgb444_test;\r\n\r\n  assign cnt_reg_test = cnt_reg;\r\n\r\n  // msb 8 bits are the address (15 downto 8)\r\n  // lsb 8 bits are the register value to be written\r\n\r\n  always @ (cnt_reg) begin\r\n    // *IG means Implementation guide\r\n    case (cnt_reg)\r\n      6'h00:\r\n        reg_rgb444_test <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h01:\r\n        reg_rgb444_test <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h02:\r\n        reg_rgb444_test <= 16'h1204;\r\n               // 12: COM7 Common Control 7\r\n               // [1]=0: disable color bar (dont know what it is\r\n               //        because a 0 also shows the test 8bar\r\n               // [2,0]=\"10\": Output format RGB \r\n      6'h03:\r\n        reg_rgb444_test <= 16'h0900; \r\n               // 09:COM2 Common Control 2. Default: 01 \r\n               // [7:5] : Reserved\r\n               // [4]   : Soft sleep mode\r\n               // [3:2] : Reserved\r\n               // [1:0] : output drive capability, to increase IOL/OH drive\r\n               //   00: 1x\r\n               //   01: 2x\r\n               //   10: 3x\r\n               //   11: 4x\r\n      6'h04:\r\n        reg_rgb444_test <= 16'h40F0;\r\n               // 40: COM15 Full 0-255 output, RGB 444\r\n               // [7:6]=\"11\": Full output range\r\n               // [5:4]=\"11\": RGB 555 only if RGB444 is low\r\n               //             so, this is to have RGB444\r\n               // [3:0]=0: Reserved\r\n      6'h05:\r\n        reg_rgb444_test <= 16'h8C02;\r\n               // 8C: RGB444\r\n               // [7:2]=0: Reserved\r\n               // [1]=1: Enable RGB444\r\n               // [0]=0: word format: xR GB\r\n               //    =1: word format: RG Bx\r\n      6'h06:\r\n        reg_rgb444_test <= 16'h1180;\r\n               // 11: CLKRC Internal Clock\r\n               // [7]=1: Reserved  **IG says 0, but 1 seems stable\r\n               // [6]=0: Use pre-scale\r\n               // [5:0]: Interal clock pre-scalar\r\n               //    F(internal clk) = F(input clk)/([5:0]+1)\r\n               // [5:0]= 0: No prescale (internal clk)\r\n\r\n      6'h07:\r\n        //reg_rgb444_test <= 16'h0F43; // 0F: COM6 Common Control 6\r\n        reg_rgb444_test <= 16'h0F4B;\r\n               // 0F: COM6 Common Control 6\r\n               // [7]=0: Disable HREF at optical blank\r\n               // [1]=1: Resets timming when format changes\r\n               // others reserved\r\n               // [3] = 1 (reserved) hamster\r\n\r\n      6'h08:\r\n        reg_rgb444_test <= 16'h1E37;\r\n             // MVFP Mirror/flip enable. Default 00\r\n             // [7:6]= 00 : reserved\r\n             // [5]= 1 : Mirror image\r\n             // [4]= 1 : Flip image\r\n             // [3] : Reserved\r\n             // [2] : Black Sun Enable\r\n             // [1:0] : Reserved\r\n\r\n      // color from hamster\r\n      6'h09:\r\n        reg_rgb444_test <= 16'h1438;\r\n             // COM9 reserved: default 4A\r\n             // [6:4] Automatic Gain Ceiling - maximum AGC value\r\n             //   100 : 32x (default)\r\n             //   011 : 16x (default)\r\n             // [3:1] Reserved (default 101)\r\n             //   100 : Hamster\r\n\r\n     //x\"4F40\", --x\"4fb3\", -- MTX1  - colour conversion matrix\r\n     //x\"5034\", --x\"50b3\", -- MTX2  - colour conversion matrix\r\n     //x\"510C\", --x\"5100\", -- MTX3  - colour conversion matrix\r\n     //x\"5217\", --x\"523d\", -- MTX4  - colour conversion matrix\r\n     //x\"5329\", --x\"53a7\", -- MTX5  - colour conversion matrix\r\n     //x\"54E4\", -- MTX6  - colour conversion matrix\r\n     //x\"581E\", --x\"589e\", -- MTXS  - Matrix sign and auto contrast\r\n\r\n      6'h0A:\r\n        reg_rgb444_test <= 16'h4FB3; // MTX1  - colour conversion matrix\r\n      6'h0B:\r\n        reg_rgb444_test <= 16'h50B3; // MTX2  - colour conversion matrix\r\n      6'h0C:\r\n        reg_rgb444_test <= 16'h5100; // MTX3  - colour conversion matrix\r\n      6'h0D:\r\n        reg_rgb444_test <= 16'h523D; // MTX4  - colour conversion matrix\r\n      6'h0E:\r\n        reg_rgb444_test <= 16'h53A7; // MTX5  - colour conversion matrix\r\n      6'h0F:\r\n        reg_rgb444_test <= 16'h54E4; // MTX6  - colour conversion matrix\r\n      6'h10:\r\n        reg_rgb444_test <= 16'h589E; // MTXS  - Matrix sign and auto contrast\r\n\r\n      6'h11:\r\n        reg_rgb444_test <= 16'h3DC0; // COM13: default 88\r\n              // [7]=1 : Gamma enable (defaul)\r\n              // [6]=1 : UV Saturation Level - UV autoadjustment\r\n              // [5:1]: Reserved\r\n              // [0]: UV swap\r\n\r\n\r\n    // Trial and error\r\n      6'h12:\r\n        reg_rgb444_test <= 16'hB084; // recommended TFG (reserved)\r\n    // hamster\r\n      6'h13:\r\n        reg_rgb444_test <= 16'h0E61; // COM5 reserved: default 01\r\n      6'h14:\r\n        reg_rgb444_test <= 16'h1602; // reserved\r\n      6'h15:\r\n        reg_rgb444_test <= 16'h2102; // ADCCTR0 (reserved): default 02 \r\n      6'h16:\r\n        reg_rgb444_test <= 16'h2291; // ADCCTR1 (reserved): default 01 \r\n      6'h17:\r\n        reg_rgb444_test <= 16'h2907; // RSVD (reserved): default XX \r\n      6'h18:\r\n        reg_rgb444_test <= 16'h330B; // CHLF Array Current Control (reserved):\r\n                                     // default 08 \r\n      6'h19:\r\n        reg_rgb444_test <= 16'h350B; // RSVD (reserved): default XX\r\n      6'h1A:\r\n        reg_rgb444_test <= 16'h371D; // ADC (reserved): default 3F\r\n      6'h1B:\r\n        reg_rgb444_test <= 16'h3871; // ACOM (reserved): default 01.\r\n                                     // ADC and Analog Common Mode Control\r\n      6'h1C:\r\n        reg_rgb444_test <= 16'h392A; // OFON (reserved): default 00.\r\n                                     // ADC Offset Control \r\n\r\n      6'h1D:\r\n        reg_rgb444_test <= 16'h3C78; // COM12 (default 69)\r\n             // [7]= 0: No HREF when VSYNC is low\r\n             // [6:0]: Reserved\r\n      6'h1E:\r\n        reg_rgb444_test <= 16'h4D40; // RSVD (reserved): default XX\r\n      6'h1F:\r\n        reg_rgb444_test <= 16'h4E20; // RSVD (reserved): default XX\r\n      6'h20:\r\n        reg_rgb444_test <= 16'h7410; // REG74 default 00\r\n             // [4]=1 : Digital Gain control by REG74[1:0]\r\n             // [1:0]=00: Bypass\r\n      6'h21:\r\n        reg_rgb444_test <= 16'h8D4F; // RSVD (reserved): default XX\r\n      6'h22:\r\n        reg_rgb444_test <= 16'h8E00; // RSVD (reserved): default XX\r\n      6'h23:\r\n        reg_rgb444_test <= 16'h8F00; // RSVD (reserved): default XX\r\n      6'h24:\r\n        reg_rgb444_test <= 16'h9000; // RSVD (reserved): default XX\r\n      6'h25:\r\n        reg_rgb444_test <= 16'h9100; // RSVD (reserved): default XX\r\n      6'h26:\r\n        reg_rgb444_test <= 16'h9600; // RSVD (reserved): default XX\r\n      6'h27:\r\n        reg_rgb444_test <= 16'h9A00; // RSVD (reserved): default XX\r\n      6'h28:\r\n        reg_rgb444_test <= 16'hB10C; // ABLC1: default 00.\r\n             // Automatic Black Level Calibration\r\n             // [3]=1 : Reserved (hamster=1)\r\n             // [2]=1 : Enable ABLC\r\n      6'h29:\r\n        reg_rgb444_test <= 16'hB20E; // RSVD (reserved): default XX\r\n      6'h2A:\r\n        reg_rgb444_test <= 16'hB382; // THL_ST: ABLC Target: default 80\r\n             // Lower limit of black leve +0x80\r\n      6'h2B:\r\n        reg_rgb444_test <= 16'hB80A; // RSVD (reserved): default XX\r\n\r\n\r\n      // ---------\r\n\r\n      6'h2C:\r\n        reg_rgb444_test <= 16'h1520; // 15: COM10 Common Control 10\r\n                             // [7]=0: Reserved\r\n                             // [6]=0: Use HREF not HSYNC\r\n                             // [5]=1: PCLK doesnt toggle during horizontl blank\r\n                             // others default\r\n      6'h2D:\r\n        reg_rgb444_test <= 16'h1711; // HSTART HREF start high 8-bit.\r\n              // The first pixels flicker\r\n              // 1700; // HSTART HREF start high 8-bit.\r\n              // For windowing. Dont want to do\r\n      6'h2E:\r\n        reg_rgb444_test <= 16'h1800; // HSTOP HREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h2F:\r\n        reg_rgb444_test <= 16'h1900; // VSTRT VREF start high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h30:\r\n        reg_rgb444_test <= 16'h1A00; // VSTOP VREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h31:\r\n        reg_rgb444_test <= 16'h3200; // HREF Control\r\n             // [7:6] : HREF edge offset to data ouput\r\n             // [5:3] : HREF end LSB (high 8MSB at HSTOP)\r\n             // [2:0] : HREF start LSB (high 8MSB at HSTART\r\n\r\n\r\n      // -- QQVGA2\r\n      6'h32:\r\n        reg_rgb444_test <= 16'h0C04; // 0C: COM3 Common Control 3\r\n                             // [3]=1: Enable scale (for QQVGA/2)\r\n                             // [2]=0: Disable DCW\r\n                             // others default\r\n      6'h33:\r\n        reg_rgb444_test <= 16'h3E1B; // 3E: COM14 Common Control 14\r\n                             //    Scaling can be adjusted manually\r\n                             // [7:5]: Reserved\r\n                             // [4]=1: Scaling PCLK and DCW enabled\r\n                             //        Controlled by [2:0] and SCALING_PCLK_DIV\r\n                             // [3]=1: Manual scaling enabled for predefined\r\n                             //        modes such QVGA\r\n                             // [2:0] PCLK divided when COM14[4]=1\r\n                             // [2:0]=011: Divided by 8-> QQVGA/2: 80x60\r\n      6'h34:\r\n        reg_rgb444_test <= 16'h703A; // 70: SCALING_XSC\r\n                             // [7]: test_pattern[0], works with test_pattern[1]\r\n                             //  00: No test output                            \r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 0 -> 8-bar color bar (test_pattern[1]=1)\r\n                             // [6:0]: default horizontal scale factor\r\n      6'h35:\r\n        reg_rgb444_test <= 16'h71B5; // 71: SCALING_YSC\r\n                             // [7]: test_pattern[1], works with test_pattern[0]\r\n                             //  00: No test output                            \r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 1 -> 8-bar color bar (test_pattern[0]=0)\r\n                             // [6:0]: default vertical scale factor\r\n      6'h36:\r\n        reg_rgb444_test <= 16'h7233; // 72: SCALING_DCWCTR DCW Control\r\n                             // [7]=0: Vertical average calc truncation(default)\r\n                             // [6]=0: Vertical truncation downsampling(default)\r\n                             // [5:4]: Vertical down sampling rate\r\n                             // [5:4]=11: Vertical down sampling by 8->QQVGA/2\r\n                             // [3]=0: Horztal average calc truncation(default)\r\n                             // [2]=0: Horztal truncation downsampling(default)\r\n                             // [1:0]: Horztal down sampling rate\r\n                             // [1:0]=11: Horztal down sampling by 8->QQVGA/2\r\n      6'h37:\r\n        reg_rgb444_test <= 16'h73F3; // 73: SCALING_PCLK_DIV\r\n                             // [7:4]=F: Reserved, and manual says default is 0\r\n                             //          but IG says F\r\n                             // [3]=0: Enable clk divider for DSP scale control\r\n                             // [2:0]=011: Divided by 8 -> QQVGA/2\r\n      6'h38:\r\n        reg_rgb444_test <= 16'hA202; // A2: SCALING_PCLK_DELAY Pixel Clock Delay\r\n                             // [7]: Reserved\r\n                             // [6:0]=02: Default scaling ouput delay\r\n      //  end QQVGA\r\n      6'h39:\r\n        reg_rgb444_test <= 16'hFFFF;  // FINISH CONDITION, register FF doesnt exist\r\n      default:\r\n        reg_rgb444_test <= 16'hFFFF;  // FINISH CONDITION\r\n    endcase\r\n  end\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n  always @ (cnt_reg) begin\r\n    // *IG means Implementation guide\r\n    case (cnt_reg)\r\n      6'h00:\r\n        reg_rgb444 <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h01:\r\n        reg_rgb444 <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h02:\r\n        reg_rgb444 <= 16'h1204;\r\n               // 12: COM7 Common Control 7\r\n               // [1]=0: disable color bar (dont know what it is\r\n               //        because a 0 also shows the test 8bar\r\n               // [2,0]=\"10\": Output format RGB \r\n      6'h03:\r\n        reg_rgb444 <= 16'h0900; \r\n               // 09:COM2 Common Control 2. Default: 01 \r\n               // [7:5] : Reserved\r\n               // [4]   : Soft sleep mode\r\n               // [3:2] : Reserved\r\n               // [1:0] : output drive capability, to increase IOL/OH drive\r\n               //   00: 1x : works best\r\n               //   01: 2x\r\n               //   10: 3x\r\n               //   11: 4x\r\n      6'h04:\r\n        reg_rgb444 <= 16'h40F0;\r\n               // 40: COM15 Full 0-255 output, RGB 444\r\n               // [7:6]=\"11\": Full output range\r\n               // [5:4]=\"11\": RGB 555 only if RGB444 is low\r\n               //             so, this is to have RGB444\r\n               // [3:0]=0: Reserved\r\n      6'h05:\r\n        reg_rgb444 <= 16'h8C02;\r\n               // 8C: RGB444\r\n               // [7:2]=0: Reserved\r\n               // [1]=1: Enable RGB444\r\n               // [0]=0: word format: xR GB\r\n               //    =1: word format: RG Bx\r\n      6'h06:\r\n        reg_rgb444 <= 16'h1180;\r\n               // 11: CLKRC Internal Clock\r\n               // [7]=1: Reserved  **IG says 0, but 1 seems stable\r\n               // [6]=0: Use pre-scale\r\n               // [5:0]: Interal clock pre-scalar\r\n               //    F(internal clk) = F(input clk)/([5:0]+1)\r\n               // [5:0]= 0: No prescale (internal clk)\r\n\r\n      6'h07:\r\n        //reg_rgb444 <= 16'h0F43; // 0F: COM6 Common Control 6\r\n        reg_rgb444 <= 16'h0F4B;\r\n               // 0F: COM6 Common Control 6\r\n               // [7]=0: Disable HREF at optical blank\r\n               // [1]=1: Resets timming when format changes\r\n               // others reserved\r\n               // [3] = 1 (reserved) hamster\r\n\r\n      6'h08:\r\n        reg_rgb444 <= 16'h1E37;\r\n             // MVFP Mirror/flip enable. Default 00\r\n             // [7:6]= 00 : reserved\r\n             // [5]= 1 : Mirror image\r\n             // [4]= 1 : Flip image\r\n             // [3] : Reserved\r\n             // [2] : Black Sun Enable\r\n             // [1:0] : Reserved\r\n\r\n      // color from hamster\r\n      6'h09:\r\n        reg_rgb444 <= 16'h1438;\r\n             // COM9 reserved: default 4A\r\n             // [6:4] Automatic Gain Ceiling - maximum AGC value\r\n             //   100 : 32x (default)\r\n             //   011 : 16x (default)\r\n             // [3:1] Reserved (default 101)\r\n             //   100 : Hamster\r\n\r\n     //x\"4F40\", --x\"4fb3\", -- MTX1  - colour conversion matrix\r\n     //x\"5034\", --x\"50b3\", -- MTX2  - colour conversion matrix\r\n     //x\"510C\", --x\"5100\", -- MTX3  - colour conversion matrix\r\n     //x\"5217\", --x\"523d\", -- MTX4  - colour conversion matrix\r\n     //x\"5329\", --x\"53a7\", -- MTX5  - colour conversion matrix\r\n     //x\"54E4\", -- MTX6  - colour conversion matrix\r\n     //x\"581E\", --x\"589e\", -- MTXS  - Matrix sign and auto contrast\r\n\r\n      6'h0A:\r\n        reg_rgb444 <= 16'h4FB3; // MTX1  - colour conversion matrix\r\n      6'h0B:\r\n        reg_rgb444 <= 16'h50B3; // MTX2  - colour conversion matrix\r\n      6'h0C:\r\n        reg_rgb444 <= 16'h5100; // MTX3  - colour conversion matrix\r\n      6'h0D:\r\n        reg_rgb444 <= 16'h523D; // MTX4  - colour conversion matrix\r\n      6'h0E:\r\n        reg_rgb444 <= 16'h53A7; // MTX5  - colour conversion matrix\r\n      6'h0F:\r\n        reg_rgb444 <= 16'h54E4; // MTX6  - colour conversion matrix\r\n      6'h10:\r\n        reg_rgb444 <= 16'h589E; // MTXS  - Matrix sign and auto contrast\r\n\r\n      6'h11:\r\n        reg_rgb444 <= 16'h3DC0; // COM13: default 88\r\n              // [7]=1 : Gamma enable (defaul)\r\n              // [6]=1 : UV Saturation Level - UV autoadjustment\r\n              // [5:1]: Reserved\r\n              // [0]: UV swap\r\n\r\n\r\n    // Trial and error\r\n      6'h12:\r\n        reg_rgb444 <= 16'hB084; // recommended TFG (reserved)\r\n    // hamster\r\n      6'h13:\r\n        reg_rgb444 <= 16'h0E61; // COM5 reserved: default 01\r\n      6'h14:\r\n        reg_rgb444 <= 16'h1602; // reserved\r\n      6'h15:\r\n        reg_rgb444 <= 16'h2102; // ADCCTR0 (reserved): default 02 \r\n      6'h16:\r\n        reg_rgb444 <= 16'h2291; // ADCCTR1 (reserved): default 01 \r\n      6'h17:\r\n        reg_rgb444 <= 16'h2907; // RSVD (reserved): default XX \r\n      6'h18:\r\n        reg_rgb444 <= 16'h330B; // CHLF Array Current Control (reserved):\r\n                                     // default 08 \r\n      6'h19:\r\n        reg_rgb444 <= 16'h350B; // RSVD (reserved): default XX\r\n      6'h1A:\r\n        reg_rgb444 <= 16'h371D; // ADC (reserved): default 3F\r\n      6'h1B:\r\n        reg_rgb444 <= 16'h3871; // ACOM (reserved): default 01.\r\n                                     // ADC and Analog Common Mode Control\r\n      6'h1C:\r\n        reg_rgb444 <= 16'h392A; // OFON (reserved): default 00.\r\n                                     // ADC Offset Control \r\n\r\n      6'h1D:\r\n        reg_rgb444 <= 16'h3C78; // COM12 (default 69)\r\n             // [7]= 0: No HREF when VSYNC is low\r\n             // [6:0]: Reserved\r\n      6'h1E:\r\n        reg_rgb444 <= 16'h4D40; // RSVD (reserved): default XX\r\n      6'h1F:\r\n        reg_rgb444 <= 16'h4E20; // RSVD (reserved): default XX\r\n      6'h20:\r\n        reg_rgb444 <= 16'h7410; // REG74 default 00\r\n             // [4]=1 : Digital Gain control by REG74[1:0]\r\n             // [1:0]=00: Bypass\r\n      6'h21:\r\n        reg_rgb444 <= 16'h8D4F; // RSVD (reserved): default XX\r\n      6'h22:\r\n        reg_rgb444 <= 16'h8E00; // RSVD (reserved): default XX\r\n      6'h23:\r\n        reg_rgb444 <= 16'h8F00; // RSVD (reserved): default XX\r\n      6'h24:\r\n        reg_rgb444 <= 16'h9000; // RSVD (reserved): default XX\r\n      6'h25:\r\n        reg_rgb444 <= 16'h9100; // RSVD (reserved): default XX\r\n      6'h26:\r\n        reg_rgb444 <= 16'h9600; // RSVD (reserved): default XX\r\n      6'h27:\r\n        reg_rgb444 <= 16'h9A00; // RSVD (reserved): default XX\r\n      6'h28:\r\n        reg_rgb444 <= 16'hB10C; // ABLC1: default 00.\r\n             // Automatic Black Level Calibration\r\n             // [3]=1 : Reserved (hamster=1)\r\n             // [2]=1 : Enable ABLC\r\n      6'h29:\r\n        reg_rgb444 <= 16'hB20E; // RSVD (reserved): default XX\r\n      6'h2A:\r\n        reg_rgb444 <= 16'hB382; // THL_ST: ABLC Target: default 80\r\n             // Lower limit of black leve +0x80\r\n      6'h2B:\r\n        reg_rgb444 <= 16'hB80A; // RSVD (reserved): default XX\r\n\r\n\r\n      // ---------\r\n\r\n      6'h2C:\r\n        reg_rgb444 <= 16'h1520; // 15: COM10 Common Control 10\r\n                             // [7]=0: Reserved\r\n                             // [6]=0: Use HREF not HSYNC\r\n                             // [5]=1: PCLK doesnt toggle during horizontl blank\r\n                             // others default\r\n      6'h2D:\r\n        reg_rgb444 <= 16'h1711; // HSTART HREF start high 8-bit.\r\n              // The first pixels flicker\r\n              // 1700; // HSTART HREF start high 8-bit.\r\n              // For windowing. Dont want to do\r\n      6'h2E:\r\n        reg_rgb444 <= 16'h1800; // HSTOP HREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h2F:\r\n        reg_rgb444 <= 16'h1900; // VSTRT VREF start high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h30:\r\n        reg_rgb444 <= 16'h1A00; // VSTOP VREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h31:\r\n        reg_rgb444 <= 16'h3200; // HREF Control\r\n             // [7:6] : HREF edge offset to data ouput\r\n             // [5:3] : HREF end LSB (high 8MSB at HSTOP)\r\n             // [2:0] : HREF start LSB (high 8MSB at HSTART\r\n\r\n\r\n      // -- QQVGA2\r\n      6'h32:\r\n        reg_rgb444 <= 16'h0C04; // 0C: COM3 Common Control 3\r\n                             // [3]=1: Enable scale (for QQVGA/2)\r\n                             // [2]=0: Disable DCW\r\n                             // others default\r\n      6'h33:\r\n        reg_rgb444 <= 16'h3E1B; // 3E: COM14 Common Control 14\r\n                             //    Scaling can be adjusted manually\r\n                             // [7:5]: Reserved\r\n                             // [4]=1: Scaling PCLK and DCW enabled\r\n                             //        Controlled by [2:0] and SCALING_PCLK_DIV\r\n                             // [3]=1: Manual scaling enabled for predefined\r\n                             //        modes such QVGA\r\n                             // [2:0] PCLK divided when COM14[4]=1\r\n                             // [2:0]=011: Divided by 8-> QQVGA/2: 80x60\r\n      6'h34:\r\n        reg_rgb444 <= 16'h703A; // 70: SCALING_XSC\r\n                             // [7]: test_pattern[0], works with test_pattern[1]\r\n                             //  00: No test output  <-\r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 0 -> 8-bar color bar (test_pattern[1]=1)\r\n                             // [6:0]: default horizontal scale factor\r\n      6'h35:\r\n        reg_rgb444 <= 16'h7135; // 71: SCALING_YSC\r\n                             // [7]: test_pattern[1], works with test_pattern[0]\r\n                             //  00: No test output  <-\r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 1 -> 8-bar color bar (test_pattern[0]=0)\r\n                             // [6:0]: default vertical scale factor\r\n      6'h36:\r\n        reg_rgb444 <= 16'h7233; // 72: SCALING_DCWCTR DCW Control\r\n                             // [7]=0: Vertical average calc truncation(default)\r\n                             // [6]=0: Vertical truncation downsampling(default)\r\n                             // [5:4]: Vertical down sampling rate\r\n                             // [5:4]=11: Vertical down sampling by 8->QQVGA/2\r\n                             // [3]=0: Horztal average calc truncation(default)\r\n                             // [2]=0: Horztal truncation downsampling(default)\r\n                             // [1:0]: Horztal down sampling rate\r\n                             // [1:0]=11: Horztal down sampling by 8->QQVGA/2\r\n      6'h37:\r\n        reg_rgb444 <= 16'h73F3; // 73: SCALING_PCLK_DIV\r\n                             // [7:4]=F: Reserved, and manual says default is 0\r\n                             //          but IG says F\r\n                             // [3]=0: Enable clk divider for DSP scale control\r\n                             // [2:0]=011: Divided by 8 -> QQVGA/2\r\n      6'h38:\r\n        reg_rgb444 <= 16'hA202; // A2: SCALING_PCLK_DELAY Pixel Clock Delay\r\n                             // [7]: Reserved\r\n                             // [6:0]=02: Default scaling ouput delay\r\n      //  end QQVGA\r\n      6'h39:\r\n        reg_rgb444 <= 16'hFFFF;  // FINISH CONDITION, register FF doesnt exist\r\n      default:\r\n        reg_rgb444 <= 16'hFFFF;  // FINISH CONDITION\r\n    endcase\r\n  end\r\n\r\n\r\n\r\n\r\n\r\n  always @ (cnt_reg) begin\r\n    // *IG means Implementation guide\r\n    case (cnt_reg)\r\n      6'h00:\r\n        reg_yuv422_test <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h01:\r\n        reg_yuv422_test <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h02:\r\n        reg_yuv422_test <= 16'h1200;\r\n               // 12: COM7 Common Control 7\r\n               // [2,0]= 00 : Output format YUV \r\n      6'h03:\r\n        reg_yuv422_test <= 16'h0900; \r\n               // 09:COM2 Common Control 2. Default: 01 \r\n               // [7:5] : Reserved\r\n               // [4]   : Soft sleep mode\r\n               // [3:2] : Reserved\r\n               // [1:0] : output drive capability, to increase IOL/OH drive\r\n               //   00: 1x : works best\r\n               //   01: 2x\r\n               //   10: 3x\r\n               //   11: 4x\r\n      6'h04:\r\n        reg_yuv422_test <= 16'h40C0;\r\n               // 40: COM15 Full 0-255 output, RGB 444\r\n               // [7:6] = 11 : Full output range\r\n               // [5:4] = x0 : Normal RGB output and YUV\r\n               // [5:4] = 11: RGB 55 only if RGB444 is low\r\n               // [3:0] = 0:  Reserved \r\n      6'h05:\r\n        reg_yuv422_test <= 16'h8C00;\r\n               // 8C: RGB444\r\n               // [7:2]=0: Reserved\r\n               // [1]=1: Enable RGB444\r\n               // [0]=0: word format: xR GB\r\n      6'h06:\r\n        reg_yuv422_test <= 16'h1180;\r\n               // 11: CLKRC Internal Clock\r\n               // [7]=1: Reserved  **IG says 0, but 1 seems stable\r\n               // [6]=0: Use pre-scale\r\n               // [5:0]: Interal clock pre-scalar\r\n               //    F(internal clk) = F(input clk)/([5:0]+1)\r\n               // [5:0]= 0: No prescale (internal clk)\r\n\r\n      6'h07:\r\n        //reg_yuv422_test <= 16'h0F43; // 0F: COM6 Common Control 6\r\n        reg_yuv422_test <= 16'h0F4B;  //** check 0F4B\r\n               // 0F: COM6 Common Control 6\r\n               // [7]=0: Disable HREF at optical blank\r\n               // [1]=1: Resets timming when format changes\r\n               // others reserved\r\n               // [3] = 1 (reserved) hamster\r\n\r\n      // check\r\n      6'h08:\r\n        reg_yuv422_test <= 16'h1E37;\r\n             // MVFP Mirror/flip enable. Default 00\r\n             // [7:6]= 00 : reserved\r\n             // [5]= 1 : Mirror image\r\n             // [4]= 1 : Flip image\r\n             // [3] : Reserved\r\n             // [2] : Black Sun Enable\r\n             // [1:0] : Reserved\r\n\r\n      // check\r\n\r\n      // check\r\n      6'h09:\r\n        reg_yuv422_test <= 16'h3DC0; // COM13: default 88\r\n              // [7]=1 : Gamma enable (defaul)\r\n              // [6]=1 : UV Saturation Level - UV autoadjustment\r\n              // [5:1]: Reserved\r\n              // [0]: UV swap\r\n\r\n      // ---------\r\n\r\n      6'h0A:\r\n        reg_yuv422_test <= 16'h1520; // 15: COM10 Common Control 10\r\n                             // [7]=0: Reserved\r\n                             // [6]=0: Use HREF not HSYNC\r\n                             // [5]=1: PCLK doesnt toggle during horizontl blank\r\n                             // others default\r\n      6'h0B:\r\n        reg_yuv422_test <= 16'h1711; // HSTART HREF start high 8-bit.\r\n              // The first pixels flicker\r\n              // 1700; // HSTART HREF start high 8-bit.\r\n              // For windowing. Dont want to do\r\n      6'h0C:\r\n        reg_yuv422_test <= 16'h1800; // HSTOP HREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h0D:\r\n        reg_yuv422_test <= 16'h1900; // VSTRT VREF start high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h0E:\r\n        reg_yuv422_test <= 16'h1A00; // VSTOP VREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h0F:\r\n        reg_yuv422_test <= 16'h3200; // HREF Control\r\n             // [7:6] : HREF edge offset to data ouput\r\n             // [5:3] : HREF end LSB (high 8MSB at HSTOP)\r\n             // [2:0] : HREF start LSB (high 8MSB at HSTART\r\n\r\n      6'h10:\r\n        reg_yuv422_test <= 16'h3A04; // TLSB: Line buffer test option\r\n             // (default 0C)\r\n             // [7:6] : reserved\r\n             // [5]   : negative image enable\r\n             // [5]=0 : Normal image \r\n             // [4]=0 : Use normal UV output\r\n             // [3]   : Output sequence with COM13[1]\r\n             //      TSLB[3], COM13[1]:\r\n             //    00: Y U Y V\r\n             //    01: Y U Y V\r\n             //    10: U Y V Y\r\n             //    11: V Y U Y\r\n             // [2:1] : Reserved\r\n\r\n\r\n\r\n\r\n      // -- QQVGA2\r\n      6'h11:\r\n        reg_yuv422_test <= 16'h0C04; // 0C: COM3 Common Control 3\r\n                             // [3]=1: Enable scale (for QQVGA/2)\r\n                             // [2]=0: Disable DCW\r\n                             // others default\r\n      6'h12:\r\n        reg_yuv422_test <= 16'h3E1B; // 3E: COM14 Common Control 14\r\n                             //    Scaling can be adjusted manually\r\n                             // [7:5]: Reserved\r\n                             // [4]=1: Scaling PCLK and DCW enabled\r\n                             //        Controlled by [2:0] and SCALING_PCLK_DIV\r\n                             // [3]=1: Manual scaling enabled for predefined\r\n                             //        modes such QVGA\r\n                             // [2:0] PCLK divided when COM14[4]=1\r\n                             // [2:0]=011: Divided by 8-> QQVGA/2: 80x60\r\n      6'h13:\r\n        reg_yuv422_test <= 16'h703A; // 70: SCALING_XSC\r\n                             // [7]: test_pattern[0], works with test_pattern[1]\r\n                             //  00: No test output                            \r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 0 -> 8-bar color bar (test_pattern[1]=1)\r\n                             // [6:0]: default horizontal scale factor\r\n      6'h14:\r\n        reg_yuv422_test <= 16'h71B5; // 71: SCALING_YSC\r\n                             // [7]: test_pattern[1], works with test_pattern[0]\r\n                             //  00: No test output                            \r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 1 -> 8-bar color bar (test_pattern[0]=0)\r\n                             // [6:0]: default vertical scale factor\r\n      6'h15:\r\n        reg_yuv422_test <= 16'h7233; // 72: SCALING_DCWCTR DCW Control\r\n                             // [7]=0: Vertical average calc truncation(default)\r\n                             // [6]=0: Vertical truncation downsampling(default)\r\n                             // [5:4]: Vertical down sampling rate\r\n                             // [5:4]=11: Vertical down sampling by 8->QQVGA/2\r\n                             // [3]=0: Horztal average calc truncation(default)\r\n                             // [2]=0: Horztal truncation downsampling(default)\r\n                             // [1:0]: Horztal down sampling rate\r\n                             // [1:0]=11: Horztal down sampling by 8->QQVGA/2\r\n      6'h16:\r\n        reg_yuv422_test <= 16'h73F3; // 73: SCALING_PCLK_DIV\r\n                             // [7:4]=F: Reserved, and manual says default is 0\r\n                             //          but IG says F\r\n                             // [3]=0: Enable clk divider for DSP scale control\r\n                             // [2:0]=011: Divided by 8 -> QQVGA/2\r\n      6'h17:\r\n        reg_yuv422_test <= 16'hA202; // A2: SCALING_PCLK_DELAY Pixel Clock Delay\r\n                             // [7]: Reserved\r\n                             // [6:0]=02: Default scaling ouput delay\r\n      //  end QQVGA\r\n      6'h18:\r\n        reg_yuv422_test <= 16'hFFFF;  // FINISH CONDITION, register FF doesnt exist\r\n      default:\r\n        reg_yuv422_test <= 16'hFFFF;  // FINISH CONDITION\r\n    endcase\r\n  end\r\n\r\n\r\n\r\n\r\n\r\n  always @ (cnt_reg) begin\r\n    // *IG means Implementation guide\r\n    case (cnt_reg)\r\n      6'h00:\r\n        reg_yuv422 <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h01:\r\n        reg_yuv422 <= 16'h1280;\r\n               // 12: COM7 Common Control 7\r\n               // [7]=1: Reset all registers to default values\r\n      6'h02:\r\n        reg_yuv422 <= 16'h1200;\r\n               // 12: COM7 Common Control 7\r\n               // [2,0]= 00 : Output format YUV \r\n      6'h03:\r\n        reg_yuv422 <= 16'h0900; \r\n               // 09:COM2 Common Control 2. Default: 01 \r\n               // [7:5] : Reserved\r\n               // [4]   : Soft sleep mode\r\n               // [3:2] : Reserved\r\n               // [1:0] : output drive capability, to increase IOL/OH drive\r\n               //   00: 1x\r\n               //   01: 2x\r\n               //   10: 3x\r\n               //   11: 4x\r\n      6'h04:\r\n        reg_yuv422 <= 16'h40C0;\r\n               // 40: COM15 Full 0-255 output, RGB 444\r\n               // [7:6] = 11 : Full output range\r\n               // [5:4] = x0 : Normal RGB output and YUV\r\n               // [5:4] = 11: RGB 55 only if RGB444 is low\r\n               // [3:0] = 0:  Reserved \r\n      6'h05:\r\n        reg_yuv422 <= 16'h8C00;\r\n               // 8C: RGB444\r\n               // [7:2]=0: Reserved\r\n               // [1]=1: Enable RGB444\r\n               // [0]=0: word format: xR GB\r\n      6'h06:\r\n        reg_yuv422 <= 16'h1180;\r\n               // 11: CLKRC Internal Clock\r\n               // [7]=1: Reserved  **IG says 0, but 1 seems stable\r\n               // [6]=0: Use pre-scale\r\n               // [5:0]: Interal clock pre-scalar\r\n               //    F(internal clk) = F(input clk)/([5:0]+1)\r\n               // [5:0]= 0: No prescale (internal clk)\r\n\r\n      6'h07:\r\n        //reg_yuv422 <= 16'h0F43; // 0F: COM6 Common Control 6\r\n        reg_yuv422 <= 16'h0F4B;  //** check 0F4B\r\n               // 0F: COM6 Common Control 6\r\n               // [7]=0: Disable HREF at optical blank\r\n               // [1]=1: Resets timming when format changes\r\n               // others reserved\r\n               // [3] = 1 (reserved) hamster\r\n\r\n      6'h08:\r\n        reg_yuv422 <= 16'h1E37;\r\n             // MVFP Mirror/flip enable. Default 00\r\n             // [7:6]= 00 : reserved\r\n             // [5]= 1 : Mirror image\r\n             // [4]= 1 : Flip image\r\n             // [3] : Reserved\r\n             // [2] : Black Sun Enable\r\n             // [1:0] : Reserved\r\n\r\n      6'h09:\r\n        reg_yuv422 <= 16'h3DC0; // COM13: default 88\r\n              // [7]=1 : Gamma enable (defaul)\r\n              // [6]=1 : UV Saturation Level - UV autoadjustment\r\n              // [5:1]: Reserved\r\n              // [0]: UV swap\r\n\r\n\r\n      // ---------\r\n\r\n      6'h0A:\r\n        reg_yuv422 <= 16'h1520; // 15: COM10 Common Control 10\r\n                             // [7]=0: Reserved\r\n                             // [6]=0: Use HREF not HSYNC\r\n                             // [5]=1: PCLK doesnt toggle during horizontl blank\r\n                             // others default\r\n      6'h0B:\r\n        reg_yuv422 <= 16'h1711; // HSTART HREF start high 8-bit.\r\n              // The first pixels flicker\r\n              // 1700; // HSTART HREF start high 8-bit.\r\n              // For windowing. Dont want to do\r\n      6'h0C:\r\n        reg_yuv422 <= 16'h1800; // HSTOP HREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h0D:\r\n        reg_yuv422 <= 16'h1900; // VSTRT VREF start high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h0E:\r\n        reg_yuv422 <= 16'h1A00; // VSTOP VREF end high 8-bit.\r\n             // For windowing. Dont want to do\r\n      6'h0F:\r\n        reg_yuv422 <= 16'h3200; // HREF Control\r\n             // [7:6] : HREF edge offset to data ouput\r\n             // [5:3] : HREF end LSB (high 8MSB at HSTOP)\r\n             // [2:0] : HREF start LSB (high 8MSB at HSTART\r\n\r\n      6'h10:\r\n        reg_yuv422 <= 16'h3A04; // TLSB: Line buffer test option\r\n             // (default 0C)\r\n             // [7:6] : reserved\r\n             // [5]   : negative image enable\r\n             // [5]=0 : Normal image \r\n             // [4]=0 : Use normal UV output\r\n             // [3]   : Output sequence with COM13[1]\r\n             //      TSLB[3], COM13[1]:\r\n             //    00: Y U Y V\r\n             //    01: Y U Y V\r\n             //    10: U Y V Y\r\n             //    11: V Y U Y\r\n             // [2:1] : Reserved\r\n\r\n\r\n\r\n\r\n      // -- QQVGA2\r\n      6'h11:\r\n        reg_yuv422 <= 16'h0C04; // 0C: COM3 Common Control 3\r\n                             // [3]=1: Enable scale (for QQVGA/2)\r\n                             // [2]=0: Disable DCW\r\n                             // others default\r\n      6'h12:\r\n        reg_yuv422 <= 16'h3E1B; // 3E: COM14 Common Control 14\r\n                             //    Scaling can be adjusted manually\r\n                             // [7:5]: Reserved\r\n                             // [4]=1: Scaling PCLK and DCW enabled\r\n                             //        Controlled by [2:0] and SCALING_PCLK_DIV\r\n                             // [3]=1: Manual scaling enabled for predefined\r\n                             //        modes such QVGA\r\n                             // [2:0] PCLK divided when COM14[4]=1\r\n                             // [2:0]=011: Divided by 8-> QQVGA/2: 80x60\r\n      6'h13:\r\n        reg_yuv422 <= 16'h703A; // 70: SCALING_XSC\r\n                             // [7]: test_pattern[0], works with test_pattern[1]\r\n                             //  00: No test output <-\r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 0 -> 8-bar color bar (test_pattern[1]=1)\r\n                             // [6:0]: default horizontal scale factor\r\n      6'h14:\r\n        reg_yuv422 <= 16'h7135; // 71: SCALING_YSC\r\n                             // [7]: test_pattern[1], works with test_pattern[0]\r\n                             //  00: No test output  <-\r\n                             //  01: Shifting \"1\"\r\n                             //  10: 8-bar color bar\r\n                             //  11: Fade to gray color bar\r\n                             // [7]= 1 -> 8-bar color bar (test_pattern[0]=0)\r\n                             // [6:0]: default vertical scale factor\r\n      6'h15:\r\n        reg_yuv422 <= 16'h7233; // 72: SCALING_DCWCTR DCW Control\r\n                             // [7]=0: Vertical average calc truncation(default)\r\n                             // [6]=0: Vertical truncation downsampling(default)\r\n                             // [5:4]: Vertical down sampling rate\r\n                             // [5:4]=11: Vertical down sampling by 8->QQVGA/2\r\n                             // [3]=0: Horztal average calc truncation(default)\r\n                             // [2]=0: Horztal truncation downsampling(default)\r\n                             // [1:0]: Horztal down sampling rate\r\n                             // [1:0]=11: Horztal down sampling by 8->QQVGA/2\r\n      6'h16:\r\n        reg_yuv422 <= 16'h73F3; // 73: SCALING_PCLK_DIV\r\n                             // [7:4]=F: Reserved, and manual says default is 0\r\n                             //          but IG says F\r\n                             // [3]=0: Enable clk divider for DSP scale control\r\n                             // [2:0]=011: Divided by 8 -> QQVGA/2\r\n      6'h17:\r\n        reg_yuv422 <= 16'hA202; // A2: SCALING_PCLK_DELAY Pixel Clock Delay\r\n                             // [7]: Reserved\r\n                             // [6:0]=02: Default scaling ouput delay\r\n      //  end QQVGA\r\n      6'h18:\r\n        reg_yuv422 <= 16'hFFFF;  // FINISH CONDITION, register FF doesnt exist\r\n      default:\r\n        reg_yuv422 <= 16'hFFFF;  // FINISH CONDITION\r\n    endcase\r\n  end\r\n\r\n\r\n\r\n  // camera system clock:\r\n  //     freq   :  min: 10 MHz  -- typ: 24 MHz  -- Max: 48 MHz\r\n  //     Period : max: 100 ns   -- typ: 42 ns   -- Max: 21 ns\r\n  // duty cycle between 45% and 55%\r\n  // Since our clock is 10 ns (100 MHz), we have to divide frequency by:\r\n  //  4: 25 MHz - 40 ns\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_cam_clk <= 0;\r\n    else begin\r\n      if (cnt_cam_clk == 3'b011)\r\n        cnt_cam_clk <= 0;\r\n      else\r\n        cnt_cam_clk <= cnt_cam_clk + 1;\r\n    end\r\n  end\r\n\r\n  // when cnt_cam_clk = 0 | 1 => '0', when 2 | 3 => '1'\r\n  assign ov7670_clk = cnt_cam_clk[1];\r\n\r\n  // camera reset and power down\r\n  assign ov7670_pwdn  = 1'b0;\r\n\r\n  //------ controlling the registers to be sent ------------\r\n\r\n  assign id        = c_id_write; // 0x21\r\n  assign addr_aux  = reg_i[15:8];\r\n  assign addr      = addr_aux;\r\n  assign data_wr   = reg_i[7:0];\r\n\r\n\r\n  assign ov7670_rst_n   = cam_rst_n;\r\n  assign done      = alltx_done;\r\n  assign start_tx  = start_tx_aux;\r\n\r\n  // sequentially counts the registers to be sent to the SCCB\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_reg <= 0;\r\n    else begin\r\n      if (resend || mode_change)\r\n        cnt_reg <= 0; // start again sending the sequence\r\n      else if (~alltx_done) begin\r\n        if (start_tx_aux)\r\n          cnt_reg <= cnt_reg + 1;\r\n      end\r\n    end\r\n  end\r\n        \r\n  // instead of comparing addr_aux = 16'hFF, to simplify, since there is no\r\n  // address in F (\"1111\"), it can be compared\r\n  assign alltx_done = (addr_aux[7:4] == 4'b1111) ? 1'b1 : 1'b0; \r\n\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      rgbmode_old <= 1'b1; //starts in RGB mode\r\n      testmode_old <= 1'b0; //starts in normal mode\r\n    end\r\n    else begin\r\n      rgbmode_old  <= rgbmode;\r\n      testmode_old <= testmode;\r\n    end\r\n  end\r\n\r\n  // ^: xor (different). So if any are different\r\n  assign mode_change = (rgbmode ^ rgbmode_old) | (testmode ^ testmode_old);\r\n\r\n  // without clk -> Distributed CLBS\r\n  // reg_i <= registers(to_integer(unsigned(cnt_reg));\r\n  // process with clk -> BRAM\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      reg_i <= 16'h1280; // reset\r\n    else begin\r\n      if (rgbmode) begin\r\n        if (testmode)\r\n          reg_i <= reg_rgb444_test;\r\n        else\r\n          reg_i <= reg_rgb444;\r\n      end\r\n      else begin\r\n        if (testmode)\r\n          reg_i <= reg_yuv422_test;\r\n        else\r\n          reg_i <= reg_yuv422;\r\n      end\r\n    end\r\n  end\r\n\r\n\r\n  // FSM sequential process\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      pr_ctrl_st <= RSTCAM_ST;\r\n    else\r\n      pr_ctrl_st <= nx_ctrl_st;\r\n  end\r\n\r\n  // FSM combinatorial process\r\n  always @ (pr_ctrl_st or alltx_done or sccb_ready or end300ms)\r\n  begin\r\n    // default values\r\n    nx_ctrl_st <= pr_ctrl_st;\r\n    start_tx_aux <= 1'b0;\r\n    cam_rst_n <= 1'b1; //camera reset inactive\r\n    ena_cnt300ms <= 1'b0;\r\n    case  (pr_ctrl_st)\r\n      RSTCAM_ST: begin // Reset camera during 300ms\r\n        cam_rst_n <= 1'b0; //activate reset\r\n        ena_cnt300ms <= 1'b1;\r\n        if (end300ms) begin\r\n          nx_ctrl_st <= WAIT_RSTCAM_ST;\r\n        end\r\n      end\r\n      WAIT_RSTCAM_ST: begin // wait 300ms for the camera to be ready to receive\r\n        ena_cnt300ms <= 1'b1;\r\n        if (end300ms) begin\r\n          nx_ctrl_st <= WAIT_ST;\r\n        end\r\n      end\r\n      WAIT_ST: begin // waiting for the SCCB to be available\r\n        if (alltx_done)\r\n          nx_ctrl_st <= DONE_ST;\r\n        else if (sccb_ready) begin\r\n          nx_ctrl_st <= WRITE_REG_ST;\r\n          start_tx_aux <= 1'b1;\r\n        end\r\n      end\r\n      WRITE_REG_ST: begin // writting a new register (maybe not necessary)\r\n        ena_cnt300ms <= 1'b1;\r\n        if (end300ms) begin\r\n          nx_ctrl_st <= WAIT_ST;\r\n        end\r\n      end\r\n      DONE_ST: // writting a new register\r\n        if (~alltx_done) // in case of resend = '1'\r\n          nx_ctrl_st <= RSTCAM_ST;\r\n    endcase\r\n  end\r\n\r\n\r\n  // counting 300 ms at 100MHz clk: 30 million. 25 bits\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt300ms <= 25'd0;\r\n    else begin\r\n      if (ena_cnt300ms) begin\r\n        if (end300ms) \r\n            cnt300ms <= 25'd0;\r\n        else\r\n            cnt300ms <= cnt300ms + 1;\r\n      end\r\n      else\r\n        cnt300ms <= 25'd0;\r\n    end\r\n  end \r\n\r\n  assign end300ms =  (cnt300ms == c_end300ms) ? 1'b1 : 1'b0;\r\n\r\n\r\n\r\n\r\n// endmodule\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rgbmode"
                    },
                    {
                      "name": "testmode"
                    },
                    {
                      "name": "resend"
                    },
                    {
                      "name": "sccb_ready"
                    }
                  ],
                  "out": [
                    {
                      "name": "cnt_reg_test",
                      "range": "[5:0]",
                      "size": 6
                    },
                    {
                      "name": "start_tx"
                    },
                    {
                      "name": "done"
                    },
                    {
                      "name": "id",
                      "range": "[6:0]",
                      "size": 7
                    },
                    {
                      "name": "addr",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "data_wr",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ov7670_rst_n"
                    },
                    {
                      "name": "ov7670_clk"
                    },
                    {
                      "name": "ov7670_pwdn"
                    }
                  ]
                }
              },
              "position": {
                "x": 216,
                "y": 272
              },
              "size": {
                "width": 272,
                "height": 296
              }
            },
            {
              "id": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
              "type": "basic.code",
              "data": {
                "code": "//-- sccb_master.v\r\n\r\n//------------------------------------------------------------------------------\r\n//   Felipe Machado Sanchez\r\n//   Area de Tecnologia Electronica\r\n//   Universidad Rey Juan Carlos\r\n//   https://github.com/felipe-m\r\n//\r\n//   sccb_master.v\r\n//   Module in charge of the SCCB communication with the OmniVision OV7670\r\n//   camera.\r\n//   SCCB (Serial Camera Control Bus) is like the I2C\r\n//   This module is the master.\r\n//   For this first version, it will only write to the camera, therefore\r\n//   it will be a 3-phase write transmission cycle\r\n//   As explained in the Register Set section of the datasheet, the camera\r\n//   slave address is x\"42\" (0x42, hexadecimal) for writting and and x\"43\" for\r\n//   reading\r\n//\r\n//   Instead of generics, constants are defined in packages\r\n//\r\n//                 0 1 2 3\r\n//       :________:     ___:     ___:\r\n//  SCL  :        :\\___/   :\\___/   :\r\n//       :        :        :        :\r\n//       :__      :   _____:__ _____:\r\n//  SDA  :  \\_____:__/__d7_:__X__d6_:\r\n//       :0 1 2 3 :0 1 2 3 :0 1 2 3\r\n//                :        :\r\n//                :.Tsccb..:\r\n\r\n//          init                                  dont   Another phase\r\n//        sequence 0 1 2 3                        care    OR end bit\r\n//       :______  :   ___  :   ___  : :   ___  :   ___  :  ______\r\n//  SCL  :      \\_:__/   \\_:__/   \\_: :__/   \\_:__/   \\_:_/\r\n//       :        :        :        : :        :        :\r\n//       :__      : _______: _______: : _______: _______:    ____\r\n//  SDA  :  \\_____:/__d7___:X__d6___: :X__d0___:X___Z___:___/    \r\n//       :0 1 2 3 :0 1 2 3 :0 1 2 3\r\n//                :        :\r\n//                :.Tsccb..:                     DNTC_ST:END_SEQ_ST\r\n//       INIT_SEQ_ST\r\n//\r\n//     The period Tsccb is divided in 4 parts.\r\n//     SCL changes at the end of 1st and 3rd quarters\r\n//     SDA changes at the end of the peridod (end of last (4th) quarter)\r\n//     When transmiting bits, SDA must not change when SCL is high\r\n//     Max frequency of the sccb clock 400 KHz: Period 2.5 us\r\n//     Half of the time will be high, the other half low: 1.25 us\r\n//     However, the minimum clok low period for the sccb_clk is 1.3 us\r\n//     making low and high the same time, would be 2.6 us (~384,6 KHz)\r\n//     We will make a divider of the 1/4 the period, to be able to change\r\n//     the signals at the quarter. That would be 650 ns.\r\n\r\n//\r\n\r\n/*\r\nmodule sccb_master\r\n  #(parameter\r\n    c_off                  = 1'b0, // push button off\r\n    c_on                   = ~c_off, // push button on\r\n    c_clk_period           = 10, // fpga clk peridod in ns\r\n    // quarter of a period in ns\r\n    c_sclk_period_div4     = 650, // see explanation above\r\n    // frequency divider counter end value. Divided by 4 to have it divided\r\n    // in 4 slots\r\n    // we use div_ceil, to avoid having a smaller end count,\r\n    // which would mean higher frequency\r\n    c_sclk_div4_endcnt     = 65, // div_ceil(c_sclk_period_div4,c_clk_period);\r\n    // number of bits necessary to represent c_sclk_endcont in binary\r\n    c_nb_cnt_sclk_div4     =  7  // log2i(c_sclk_div4_endcnt-1) + 1;\r\n   )\r\n   (\r\n    input         rst,       //reset, active high\r\n    input         clk,       //fpga clock\r\n    input         start_tx,  //start transmission\r\n    input  [6:0]  id,        //id of the slave\r\n    input  [7:0]  addr,      //address to be written\r\n    input  [7:0]  data_wr,   //data to write to slave\r\n    output        ready,     //ready to send\r\n    output reg    finish_tx, //transmission finished(pulse\r\n    output reg    sclk,      //sccb clock\r\n    output reg    sdat_on,   //transmitting serial ('1')\r\n    //input         sdat_in, //sccb serial data in\r\n    output reg    sdat_out   //sccb serial data out\r\n   );*/\r\n\r\nparameter\r\n    c_off                  = 1'b0, // push button off\r\n    c_on                   = ~c_off, // push button on\r\n    c_clk_period           = 10, // fpga clk peridod in ns\r\n    // quarter of a period in ns\r\n    c_sclk_period_div4     = 650, // see explanation above\r\n    // frequency divider counter end value. Divided by 4 to have it divided\r\n    // in 4 slots\r\n    // we use div_ceil, to avoid having a smaller end count,\r\n    // which would mean higher frequency\r\n    c_sclk_div4_endcnt     = 65, // div_ceil(c_sclk_period_div4,c_clk_period);\r\n    // number of bits necessary to represent c_sclk_endcont in binary\r\n    c_nb_cnt_sclk_div4     =  7;  // log2i(c_sclk_div4_endcnt-1) + 1;\r\n\t\r\n\treg    finish_tx_r;\r\n\treg    sclk_r;\r\n\treg    sdat_on_r;\r\n\treg    sdat_out_r;\r\n\t\r\n  // saving in registers the slave ID, address or the register\r\n  // and data to be written. 8x3 = 24 bits\r\n  //signal id_rg    : std_logic_vector(7 downto 0); //id of the slave\r\n  //signal addr_rg  : std_logic_vector(7 downto 0); //address to be written\r\n  //signal data_rg  : std_logic_vector(7 downto 0); //data to write to slave\r\n  reg [24-1:0] send_rg; //id, addr and data\r\n\r\n\r\n  // frequency divider, but 4 time faster than the sccb period\r\n  reg [c_nb_cnt_sclk_div4-1:0] cnt_sclk_div4;\r\n  // indicates that the count reached the end: end of a quarter\r\n  wire       sclk_div4_end;\r\n\r\n  // count of the four quarters of the scc clock\r\n  reg  [1:0] cnt_4sclk;\r\n  wire       sclk_end; // end of a sccb_clk cycle\r\n\r\n  // count the 3 phases of the sending:\r\n  //   0: slave ID\r\n  //   1: address of the register to be written\r\n  //   2: data to be written\r\n  reg  [1:0] cnt_phases;\r\n  reg        new_phase;  // end of a phase, starting a new one\r\n  wire       phases_end; // end of the 3 phases\r\n\r\n  reg        ready_aux;  // not busy, ready to receive\r\n\r\n  // sccb_states:\r\n  parameter IDLE_ST      = 0, // waiting to send, not busy\r\n            INIT_SEQ_ST  = 1, // sending the initial sequence\r\n            SEND_BYTE_ST = 2, // sending the byte of any of the 3 phases\r\n            DNTC_ST      = 3, // dont care bit, in i2c would be ack\r\n            END_SEQ_ST   = 4; // sending the end sequence\r\n\r\n  reg  [2:0]  pr_sccb_st; // present state\r\n  reg  [2:0]  nx_sccb_st; // next state\r\n\r\n  // enable the counter of bits to send data and shifting the registers\r\n  // in any of the 3 phases: ID_ADDR_ST, REG_ADDR_ST, SEND_BYTE_ST\r\n  reg        send_data;\r\n  // counter \r\n  reg  [2:0] cnt_8bits; // 3 bits to count 0 to 7\r\n  // end of the 8 bit count\r\n  wire       cnt_8bits_end;\r\n\r\n  // indication to save id, address and data to write\r\n  reg        save_indata;\r\n  //clear registers where the data to send is saved\r\n  reg        clr_datarg;\r\n\r\n  assign ready = (rst == c_off) ? ready_aux : 1'b0; // if reset, not ready\r\n\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      // the line is inactive at '1'\r\n      send_rg   <= {24{1'b1}}; // '1' in all 24 bits\r\n    else begin\r\n      if (clr_datarg)\r\n        send_rg  <= {24{1'b1}}; // all to '1'\r\n      else if (save_indata)\r\n        //'0' indicates we are writting in the slave. Reading not implemented\r\n        // id has 7 bits\r\n        send_rg   <= {id, 1'b0, addr, data_wr};\r\n      else if (send_data) begin\r\n        if (sclk_end)\r\n          // rotate left, fillings with '1'\r\n          send_rg <= {send_rg[23-1:0], 1'b1};\r\n      end\r\n    end\r\n  end\r\n\r\n  // counting a quarter of the sccb clk period\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_sclk_div4 <= 0;\r\n    else begin\r\n      if (ready_aux)\r\n        cnt_sclk_div4 <= 0;\r\n      else begin\r\n        if (sclk_div4_end)\r\n          cnt_sclk_div4 <= 0;\r\n        else\r\n          cnt_sclk_div4 <= cnt_sclk_div4 + 1;\r\n      end\r\n    end\r\n  end\r\n\r\n  assign sclk_div4_end = (cnt_sclk_div4 == c_sclk_div4_endcnt-1)? 1'b1 : 1'b0;\r\n\r\n  // counting the 4 quarters of the sccb clk period\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_4sclk <= 0;\r\n    else begin\r\n      if (ready_aux) // if inactive, no count and start counting\r\n        cnt_4sclk <= 0;\r\n      else if (sclk_end)\r\n        cnt_4sclk <= 0;\r\n      else if (sclk_div4_end)\r\n        cnt_4sclk <= cnt_4sclk + 1;\r\n    end\r\n  end\r\n\r\n  assign sclk_end = (sclk_div4_end==1'b1 && cnt_4sclk == 4-1)? 1'b1 : 1'b0;\r\n\r\n  // counting the 8 bits of each of the 3 phases\r\n  // counting down to keep track of the bits, the first is the bit 7\r\n  // the last the bit 0\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_8bits <= 3'b111;\r\n    else begin\r\n      // send_data active in any of the 3 phases (SEND_BYTE_ST)\r\n      if (send_data==1'b0) // if inactive, no count and start counting\r\n        cnt_8bits <= 3'b111;\r\n      else if (cnt_8bits_end)\r\n        cnt_8bits <= 3'b111;\r\n      else if (sclk_end)\r\n        cnt_8bits <= cnt_8bits - 1;\r\n    end\r\n  end\r\n\r\n  assign cnt_8bits_end = (sclk_end==1'b1 && cnt_8bits == 0)? 1'b1 : 1'b0;\r\n\r\n  // counting the 3 phases of a SCCB write\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_phases <= 2'd0;\r\n    else begin\r\n      if (ready_aux)\r\n        cnt_phases <= 2'd0;\r\n      else if (phases_end)\r\n        cnt_phases <= 2'd0;\r\n      else if (new_phase)\r\n        cnt_phases <= cnt_phases + 1;\r\n    end\r\n  end\r\n\r\n  // 3 phases for writting\r\n  assign phases_end = (cnt_phases == 3-1 && new_phase ==1'b1) ? 1'b1 : 1'b0;\r\n\r\n  // FSM sequential process\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      pr_sccb_st <= IDLE_ST;\r\n    else\r\n      pr_sccb_st <= nx_sccb_st;\r\n  end\r\n\r\n  // FSM combinatorial process\r\n  always @ (pr_sccb_st or start_tx or cnt_4sclk or sclk_end or send_rg or\r\n            cnt_8bits  or  cnt_phases or cnt_8bits_end)\r\n  begin\r\n    // default values\r\n    ready_aux   = 1'b0;  // only ready in IDLE\r\n    sdat_on_r     = 1'b0;\r\n    sdat_out_r    = 1'b1;\r\n    nx_sccb_st  = pr_sccb_st;\r\n    save_indata = 1'b0;\r\n    clr_datarg  = 1'b0;\r\n    send_data   = 1'b0;\r\n    new_phase   = 1'b0;\r\n    finish_tx_r   = 1'b0;\r\n\t//<SC> \r\n\tsclk_r\t\t= 1'b1;\r\n    case (pr_sccb_st)\r\n      IDLE_ST: begin  // waiting to send, not busy\r\n        ready_aux = 1'b1;  // ready to send\r\n        sclk_r      = 1'b1;\r\n        sdat_on_r   = 1'b0;  //Z\r\n        sdat_out_r  = 1'b1;\r\n        if (start_tx) begin\r\n          nx_sccb_st   = INIT_SEQ_ST;\r\n          save_indata  = 1'b1;  //id, address and data to write have to be saved\r\n        end\r\n      end\r\n      INIT_SEQ_ST: begin   // sending the initial sequence\r\n        sclk_r    = 1'b1;\r\n        sdat_on_r = 1'b1;\r\n        case (cnt_4sclk)\r\n          2'b00 : begin\r\n            sclk_r     = 1'b1;\r\n            sdat_out_r = 1'b1;\r\n          end\r\n          2'b01, 2'b10 : begin\r\n            sclk_r     = 1'b1;\r\n            sdat_out_r = 1'b0;\r\n          end\r\n          default : begin //3\r\n            sclk_r     = 1'b0;\r\n            sdat_out_r = 1'b0;\r\n          end\r\n        endcase\r\n        if (sclk_end)\r\n          nx_sccb_st = SEND_BYTE_ST;\r\n      end\r\n      SEND_BYTE_ST: begin // sending the bytes of any of the 3 phases\r\n        send_data = 1'b1;  // enable the 8 bit counter\r\n        sdat_on_r   = 1'b1;\r\n        case (cnt_4sclk)\r\n          2'b00, 2'b11:\r\n            sclk_r  = 1'b0;\r\n          default: //1, 2\r\n            sclk_r  = 1'b1;\r\n        endcase\r\n        sdat_out_r = send_rg[23];\r\n        if (cnt_8bits_end)\r\n          nx_sccb_st = DNTC_ST;\r\n      end\r\n      DNTC_ST: begin     // dont care bit, in i2c would be ack\r\n        sdat_on_r   = 1'b0;  // it will be Z\r\n        case (cnt_4sclk)\r\n          2'b00, 2'b11:\r\n            sclk_r = 1'b0;\r\n          default: //1, 2\r\n            sclk_r = 1'b1;\r\n        endcase\r\n        if (sclk_end) begin\r\n          new_phase   = 1'b1;\r\n          if (cnt_phases == 3-1)\r\n            nx_sccb_st = END_SEQ_ST; // end of the transimission\r\n          else\r\n            nx_sccb_st = SEND_BYTE_ST; // new phase\r\n        end\r\n      end\r\n      END_SEQ_ST: begin   // sending the end sequence\r\n        clr_datarg = 1'b1; //clear registers where the data to send is saved\r\n        sdat_on_r    = 1'b1;\r\n        case (cnt_4sclk)\r\n          2'b00: begin\r\n            sclk_r     = 1'b0;\r\n            sdat_out_r = 1'b0;\r\n          end\r\n          2'b01: begin\r\n            sclk_r     = 1'b1;\r\n            sdat_out_r = 1'b0;\r\n          end\r\n          default: begin // 2 or 3\r\n            sclk_r     = 1'b1;\r\n            sdat_out_r = 1'b1;\r\n          end\r\n        endcase\r\n        if (sclk_end) begin\r\n          nx_sccb_st = IDLE_ST;\r\n          finish_tx_r  = 1'b1; // pulse to tell that transimission is done\r\n        end\r\n      end\r\n    endcase\r\n  end\r\n    \r\n\tassign  finish_tx = finish_tx_r;\r\n\tassign  sclk = sclk_r;\r\n\tassign  sdat_on = sdat_on_r;\r\n\tassign  sdat_out = sdat_out_r;\r\n\t\r\n// endmodule\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "start_tx"
                    },
                    {
                      "name": "id",
                      "range": "[6:0]",
                      "size": 7
                    },
                    {
                      "name": "addr",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "data_wr",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "ready"
                    },
                    {
                      "name": "sclk"
                    },
                    {
                      "name": "sdat_on"
                    },
                    {
                      "name": "sdat_out"
                    },
                    {
                      "name": "finish_tx"
                    }
                  ]
                }
              },
              "position": {
                "x": 760,
                "y": 88
              },
              "size": {
                "width": 264,
                "height": 288
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "07d985d1-3743-42a3-b436-7711d43b5619",
                "port": "out"
              },
              "target": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f51b568d-ac69-4203-9499-defb12e9622a",
                "port": "out"
              },
              "target": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "start_tx"
              },
              "target": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "start_tx"
              },
              "vertices": [
                {
                  "x": 624,
                  "y": 264
                }
              ]
            },
            {
              "source": {
                "block": "07d985d1-3743-42a3-b436-7711d43b5619",
                "port": "out"
              },
              "target": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 64,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "f51b568d-ac69-4203-9499-defb12e9622a",
                "port": "out"
              },
              "target": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 112,
                  "y": 224
                }
              ]
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "id"
              },
              "target": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "id"
              },
              "vertices": [
                {
                  "x": 640,
                  "y": 288
                }
              ],
              "size": 7
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "addr"
              },
              "target": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "addr"
              },
              "vertices": [
                {
                  "x": 664,
                  "y": 336
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "data_wr"
              },
              "target": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "data_wr"
              },
              "vertices": [
                {
                  "x": 696,
                  "y": 408
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "ready"
              },
              "target": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "sccb_ready"
              },
              "vertices": [
                {
                  "x": 1176,
                  "y": 616
                }
              ]
            },
            {
              "source": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "sclk"
              },
              "target": {
                "block": "e8a3cc8a-5ae0-4dd9-8404-6ec7058d7e55",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "sdat_on"
              },
              "target": {
                "block": "0e8058b3-d909-4728-a7c3-43d38e9ccbf8",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "47d2d8d2-ec3b-4df9-87df-f1de344a81e6",
                "port": "sdat_out"
              },
              "target": {
                "block": "44ef1b5d-c37c-4ee5-9917-dde654188819",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "53aa1fd4-6330-475b-b766-6e746228bc52",
                "port": "out"
              },
              "target": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "rgbmode"
              }
            },
            {
              "source": {
                "block": "d6b3dc26-25b7-4476-95a2-14a2c250dad1",
                "port": "out"
              },
              "target": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "testmode"
              }
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "cnt_reg_test"
              },
              "target": {
                "block": "c7eb44d2-1692-40a9-aaf9-1f7b1675c04a",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 600,
                  "y": 136
                }
              ],
              "size": 6
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "done"
              },
              "target": {
                "block": "baae5b29-67f9-41ce-b1e3-370a0b0d731a",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 584,
                  "y": 392
                }
              ]
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "ov7670_rst_n"
              },
              "target": {
                "block": "78d12cc4-7d6d-4a27-b046-e68e2a9c4fb1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "ov7670_clk"
              },
              "target": {
                "block": "1ec398c7-8274-48f3-9d64-a1cc7c85369c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "ov7670_pwdn"
              },
              "target": {
                "block": "3520b631-32aa-4b4f-bd27-2f6c43b998f3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "5734eefa-7d5e-4455-aeab-bbf98bad5ae0",
                "port": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45"
              },
              "target": {
                "block": "dddef3cf-5f10-459f-9771-d7c7cd4a208e",
                "port": "resend"
              }
            }
          ]
        }
      }
    },
    "66a960ad8fab67afcb3f1f8cd6fad36d7084b28b": {
      "package": {
        "name": "0",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 584,
                "y": 200
              }
            },
            {
              "id": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
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
                "x": 304,
                "y": 168
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
                "block": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
                "port": "v"
              },
              "target": {
                "block": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "0b18a78cdc88f50f1d74d815e65f6d8118ec280d": {
      "package": {
        "name": "ov7670_capture",
        "version": "1.0",
        "description": "",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22309.034%22%20height=%22314.085%22%20viewBox=%220%200%2081.765259%2083.101609%22%3E%3Cg%20transform=%22translate(-.374%201.071)%22%3E%3Cimage%20width=%2235.948%22%20height=%2235.948%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAACAAAAAgACAQAAAAYrhu7AAAABGdBTUEAALGPC/xhBQAAACBjSFJN%20AAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAHVDSURB%20VHja7N13lJ1lofbhe0wj1CC9hd57kxYENKAgTYSISLGClWA7xA7qUaJ8SlGORBEFCxJApIkQBCER%20REIRKYIU0UgoIYEQ0me+P0SkpEzZ5S3X5VpnqcuzkF+cXe559rMTAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgJ7qkACg8N6YVUQACu6J3CgCgAEAgL5YOpOyrAxAwT2f%20NfKcDABF9joJAAru3d7+AyWwdA4XAaDYnAAAKLrbsr0IQAncmW1FACgyJwAAim0Hb/+BktjG4xWA%20AQCA3vugBIBHLAAawUcAAIrMBYBAmbgIEKDQnAAAKDIXAAJl4iJAgEJzAgCgyFwACJSLiwABCswJ%20AIDicgEgUDYuAgQwAADQC67TAjxyAdAwPgIAUFQuAATKyEWAAIXlBABAUbkAECgjFwECFJYTAABF%205QJAoJxcBAhQUE4AABSTCwCBsnIRIIABAIAecI0W4BEMgIbyEQCAInIBIFBmLgIEKCQnAACKyAWA%20QJm5CBCgkJwAACgiFwAC5eYiQIACcgIAoHhcAAiUnYsAAQwAAHSD67MAj2QANJyPAAAUjQsAgSpw%20ESBA4TgBAFA0LgAEqsBFgACF4wQAQNG4ABCoBhcBAhSMEwAAxeICQKAqXAQIYAAAYBFcmwV4RAOg%20KXwEAKBIXAAIVImLAAEKxQkAgCJxASBQJS4CBCgUJwAAisQFgEC1uAgQoECcAAAoDhcAAlXjIkAA%20AwAAC+C6LMAjGwBN4yMAAEXhAkCgilwECFAYTgAAFIULAIEqchEgQGE4AQBQFC4ABKrJRYAABeEE%20AEAxuAAQqCoXAQIYAAB4GddkAR7hAGgqHwEAKAIXAAJV5iJAgEJwAgCgCFwACFSZiwABCsEJAIAi%20cAEgUG0uAgQoACcAANrPBYBA1bkIEMAAAEBcjwV4pAOgBXwEAKDdXAAI1IGLAAHazgkAgHZzASBQ%20By4CBGg7JwAA2s0FgEA9uAgQoM2cAABoLxcAAnXhIkAAAwBArbkWC/CIB0BL+AgAQDu5ABCoExcB%20ArSVEwAA7eQCQKBOXAQI0FZOAAC0kwsAgXpxESBAGzkBANA+LgAE6sZFgAAGAIBach0W4JEPgJbx%20EQCAdnEBIFBHLgIEaBsnAADaxQWAQB25CBCgbZwAAGgXFwAC9eQiQIA2cQIAoD1cAAjUlYsAAQwA%20ALXiGizAIyAALeUjAADt4AJAoM5cBAjQFk4AALSDCwCBOnMRIEBbOAEA0A4uAATqzUWAAG3gBABA%2067kAEKg7FwECGAAAasH1VwAeCQFazkcAAFrNBYAALgIEaAMnAABazQWAAC4CBGgDJwAAWs0FgACJ%20iwABWs4JAIDWcgEgwL+5CBDAAABQaa69AvCICNAWPgIA0EouAAT4LxcBArSUEwAAreQCQID/chEg%20QEs5AQDQSi4ABHg5FwECtJATAACt4wJAgFdyESCAAQCgklx3BeCREaBtfAQAoFVcAAjwWi4CBGgZ%20JwAAWsUFgACv5SJAgJZxAgCgVVwACLAgLgIEaBEnAABawwWAAAvmIkAAAwBApbjmCsAjJEBb+QgA%20QCu4ABBg4VwECNASTgAAtIILAAEWzkWAAC3hBABAK7gAEGBRXAQI0AJOAAA0nwsAARbNRYAABgCA%20SnC9FYBHSoC28xEAgGZzASDA4rkIEKDpnAAAaDYXAAIsnosAAZrOCQCAZnMBIEB3uAgQoMmcAABo%20LhcAAnSPiwABDAAApeZaKwCPmACF4CMAAM3kAkCA7nMRIEBTOQEA0EwuAAToPhcBAjSVEwAAzeQC%20QICecBEgQBM5AQDQPC4ABOgZFwECGAAASsl1VgAeOQEKw0cAAJrFBYAAPeciQICmcQIAoFlcAAjQ%20cy4CBGgaJwAAmsUFgAC94SJAgCZxAgCgOVwACNA7LgIEMAAAlIprrAA8ggIUio8AADSDCwABes9F%20gABN4QQAQDO4ABCg91wECNAUTgAANIMLAAH6wkWAAE3gBABA47kAEKBvXAQIYAAAKAXXVwF4JAUo%20HB8BAGg0FwAC9J2LAAEazgkAgEZzASBA37kIEKDhnAAAaDQXAAI0gosAARrMCQCAxnIBIEBjuAgQ%20wAAAUGiurQLwiApQSD4CANBILgAEaBwXAQI0lBMAAI3kAkCAxnERIEBDOQEA0EguAARoJBcBAjSQ%20EwAAjeMCQIDGchEggAEAoJBcVwXgkRWgsHwEAKBRXAAI0HguAgRoGCcAABrFBYAAjeciQICGcQIA%20oFFcAAjQDC4CBGgQJwAAGsMFgADN4SJAAAMAQKG4pgrAIyxAofkIAEAjuAAQoHlcBAjQEE4AADSC%20CwABmsdFgAAN4QQAQCO4ABCgmVwECNAATgAA9J0LAAGay0WAAAYAgEJwPRWAR1qAwvMRAIC+cgEg%20QPO5CBCgz5wAAOgrFwACNJ+LAAH6zAkAgL5yASBAK7gIEKCPnAAA6BsXAAK0hosAAQwAAG3lWioA%20j7gApeAjAAB94QJAgNZxESBAnzgBANAXLgAEaB0XAQL0iRMAAH3hAkCAVnIRIEAfOAEA0HsuAARo%20LRcBAhgAANrCdVQAHnkBSsNHAAB6ywWAAK3nIkCAXnMCAKC3XAAI0HouAgToNScAAHrLBYAA7eAi%20QIBecgIAoHdcAAjQHi4CBDAAALSUa6gAPAIDlIqPAAD0hgsAAdrHRYAAveIEAEBvuAAQoH1cBAjQ%20K04AAPSGCwAB2slFgAC94AQAQM+5ABCgvVwECGAAAGgJ108BeCQGKB0fAQDoKRcAArSfiwABeswJ%20AICecgEgQPu5CBCgx5wAAOgpFwACFIGLAAF6yAkAgJ5xASBAMbgIEMAAANBUrp0C8IgMUEo+AgDQ%20Ey4ABCgOFwEC9IgTAAA94QJAgOJwESBAjzgBANATLgAEKBIXAQL0gBMAAN3nAkCAYnERIIABAKAp%20XDcF4JEZoLR8BACgu1wACFA8LgIE6DYnAAC6ywWAAMXjIkCAbnMCAKC7XAAIUEQuAgToJicAALrH%20BYAAxeQiQAADAEBDuWYKwCM0QKn5CABAd7gAEKC4XAQI0C1OAAB0hwsAAYrLRYAA3eIEAEB3uAAQ%20oMhcBAjQDU4AACyeCwABis1FgAAGAICGcL0UgEdqgNLzEQCAxXEBIEDxuQgQYLGcAABYHBcAAhSf%20iwABFssJAIDFcQEgQBm4CBBgMZwAAFg0FwAClIOLAAEMAAB94lopAI/YAJXgIwAAi+ICQIDycBEg%20wCI5AQCwKC4ABCgPFwECLJITAACL4gJAgDJxESDAIjgBALBwLgAEKBcXAQIYAAB6xXVSAB65ASrD%20RwAAFsYFgADl4yJAgIVyAgBgYVwACFA+LgIEWCgnAAAWxgWAAGXkIkCAhXACAGDBXAAIUE4uAgQw%20AAD0iGukADyCA1SKjwAALIgLAAHKy0WAAAvkBADAgrgAEKC8XAQIsEBOAAAsiAsAAcrMRYAAC+AE%20AMBruQAQoNxcBAhgAADoFtdHAXgkB6gcHwEAeDUXAAKUn4sAAV7DCQCAV3MBIED5uQgQ4DWcAAB4%20NRcAAlSBiwABXsUJAIBXcgEgQDW4CBDAAACwSK6NAvCIDlBJPgIA8HIuAASoDhcBAryCEwAAL+cC%20QIDqcBEgwCs4AQDwci4ABKgSFwECvIwTAAD/5QJAgGpxESCAAQBggVwXBeCRHaCyfAQA4D9cAAhQ%20PS4CBHiJEwAA/+ECQIDqcREgwEucAAD4DxcAAlSRiwABXuQEAMC/uQAQoJpcBAhgAAB4BddEAXiE%20B6g0HwEASFwACFBlLgIESOIEAMC/uQAQoLpcBAiQxAkAgH9zASBAlbkIECBOAAAkLgAEqDoXAQIY%20AACSuB4KwCM9QA34CACACwABqs9FgABOAAC4ABCgBlwECOAEAIALAAFqwUWAQO05AQDUnQsAAerB%20RYCAAUACoOZcCwXgER+gFnwEAKg3FwAC1IeLAIGacwIAqDcXAALUh4sAgZpzAgCoNxcAAtSJiwCB%20WnMCAKgzFwAC1IuLAAEDAEBNuQ4KwCM/QG34CABQXy4ABKgfFwECNeYEAFBfLgAEqB8XAQIGAIAa%20cgwUoI6OlQCoKx8BqIdVsk7WyTpZKytkhayUZbN8koFZShoAAKiVGZmTZGqezdN5OlPyjzyaR/No%20npTGAEB59c/W2S5bZctsleXlAAAAFmFq7srduTsT8+fMk8MAQDkskd2ze4blDX6/DwAA9Njz+WMm%205KbclNliGAAoqnWzX/bNXllSCgAAoI9m5Pr8JlflUSkMABTJWjkkh2VXf54AAECD3ZuxOT8PCWEA%20oN2WzIh8wFt/AACgiboyIT/I2MyUwgBAe2yRD+fdWU4IAACgBablp/l+7hHCAEBrDcuJeZs/PwAA%20oMUmZHSuSJcQBgCa73U5LJ/LVkIAAABtcmf+NxcbAQwANNfwjM52MgAAAG32l3wlFxkBDAA0x+75%20dnaQAQAAKIhb88lMkKEsXidBSayZ8/J7b/8BAIACeUPG5/KsK0Q59JOgBAbmi/lltndeAwAAKJyN%20cmw6cnM6pSg6bymLb5f8IJvLAAAAFNhf8sHcIkOx+QhAsS2ZMzLe238AAKDgtsj4fCeDhSgyJwCK%20/SP082wpAwAAUBL35d25Q4aicgdAUb0un84vs7oQAABAaayU92RG/ihEMTkBUEzL5ic5WAYAAKCE%20rsyRmSaDAYDu2CS/yiYyAAAAJfW3HJK7ZSgalwAWz4jc5u0/AABQYhvkD3mHDEXjDoCiGZkfZJAM%20AABAqQ3MYenIDUIYAFjYn8b38kUfywAAACqgI3tmrfwmnVIU54+EolgiY7O/DAAAQIVclhGZLYMB%20gJdbMpdmbxkAAICKuSEHZroMBgD+Y7lcmd1kAAAAKmh89s+zMhgASJIlc3V2lwEAAKioW7KPUwDt%2052sA229wrvD2HwAAqLCdc2kGy2AAqLuBuSR7yQAAAFTamzI2A2VoL18D2F4dOTfvkAEAAKi8jbJh%20LpHBAFBfX83HRQAAAGphi3Tl9zIYAOrpvfl/IgAAALWxRx7NXTK0i28BaJ/dcn0GyAAAANTInOyR%20W2QwANTLKpmYNWQAAABqZnK2z79kaAffAtAeA3Kht/8AAEANrer7ANrFHQDt8c28SwQAAKCW1srA%20jJOh9XwEoB32ztXOXgAAALXVmX1ynQwGgOpbPndlLRkAAIAam5StM0WG1vJ76Nb7obf/AABAza2R%20/xPBAFB1I3KICAAAQO0d5r1Rq/kIQGu9PvdmFRkAAAAyOZtlqgyt41sAWuusDBMBAAAgydJZPlfI%200DpOALTSsNyoOAAAwIu6smtukcEAUD2vyy3ZUQYAAICXTMwb0ilDq96U0irv8fYfAADgFbbPu0Vo%20FScAWmXpPJDVZAAAAHiFSdkoL8jQCk4AtMrx3v4DAAC8xhr5qAit4QRAayyXh/N6GQAAAF5jStbN%20dBmazwmA1viEt/8AAAALtEKOF6EVnABoheXyWJaVAQAAYIGmZm1nAJrPCYBWONbbfwAAgIVaPu8X%20ofmcAGi+AflbhsoAAACwUH/PBpknQ3M5AdB8I7z9BwAAWKS1c6gIBoDy+7gEAAAA3jm1m48ANNuW%20+bMIAAAAi7VF7hGhmZwAaLZjJQAAAOiGD0jQXE4ANNfgTMryMgAAACzWlKyZWTI0jxMAzXWQt/8A%20AADdskL2E8EAUF4jJAAAAPAOqgh8BKCZlskTGSwDAABAt7yQlTNDhmZxAqCZDvD2HwAAoNuWzNtE%20MACU00ESAAAA9MCBEjSPjwA0T788mdfLAAAA0G1PZ5V0ytAcTgA0z07e/gMAAPTIitleBANA+ewr%20AQAAgHdSBoDqe5MEAAAA3kkVhTsAmmVQpmUJGQAAAHpkZoZkjgzN4ARAs+zg7T8AAECPDc62IhgA%20ymU3CQAAALybMgBU3w4SAAAA9MIbJDAAlMvWEgAAAPTCVhI0h0sAm2NwpqefDAAAAD02P8tkpgyN%205wRAc2zp7T8AAECv9MumIhgAymMzCQAAAHppcwkMAOWxrgQAAAC9tI4EBgD/cwUAAKg+v1I1ABgA%20AAAAvKPCAFAka0sAAABgACgSXwPYHC9ksAgAAAC9MiNLi9B4TgA0w1Le/gMAAPThPdUSIhgAymEF%20CQAAALyrMgBU3+slAAAAMAAYAKpvGQkAAAD6wB0ABoCSGCgBAABAHwySwADgf6oAAADeVWEAKAgn%20AAAAALyrMgDUQH8JAAAADAAGgOrrkAAAAMC7KgMAAAAAYAAAAAAADAAAAACAAQAAAAAwAAAAAIAB%20AAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAABgAAAAAAAMAAAAAGAAAAAAAAwAAAAAgAEA%20AAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAAAAMAAAAAYAAAAAAADAAAAACAAQAA%20AAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAwAAAAAAAGAAAAAAAAwAAAABgAAAAAAAMAAAAAIABAAAA%20ADAAAAAAAAYAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAAAAwAAAAAgAEAAAAA%20MAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAADAAAAABgAAAAAAAM%20AAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAAAYAAAAAAADAAAAAGAAAAAAAAwA%20AAAAgAEAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAADAAA%20AACAAQAAAAAwAAAAAAAGAAAAADAAAAAAAAYAAAAAwAAAAAAAFFJ/CQCgYp7N7DyfZFq6knRlWpKk%20M8++4j/1uiz34muBZZIkA7J0kuUzKEtKCAAGAACgvWZkaqbmmVf83+cyO9MyM7MyLbPyQgP+Kstl%20UJbOMlkiy2SpLJvl8/os/4r/O9AfBQAYAACAxrzV/1eeyOQ8niczKU9mcibn6cxuyV/72SRPLvI/%20sVRWyapZOWtk5az24j9bKYP8sQGAAQAAWJS5+Wcey9/z9zyWf+SxPJYZhf7vOyMP5+HX/LsrZs0M%20zToZ+uI/VvMHCwAGAACouyl5MA/mwfwtj+XRPJ7OCvw9PZ2nc+fL/vWgDM3QrJMNs0E2zIYZ7I8d%20AAwAAFB9z+Wv+VsezAN5MH/LMzX4O56dB/PgS/+qI2u+OARskI2ygXsEAMAAAADVMSd/yz25N/fk%203txXid/y915X/pF/5PqXXoMMzebZLJtns2zh9gAAMAAAQPl05sHckbtzb+7OIzV/079w8/JwHs7l%20SZJB2SybZYtsme3cGwAABgAAKLb5+Wvuyb2ZmAm1ON7fSLNzR+548Z8vn82zfbbP9tk0HdIAgAEA%20AIqhM/fmT5mY23NXXpCjAaZmfMYnSVbKdtku2+cNWUsWADAAAEB7TM+fMz4T/La/iZ7Kb/PbJMlq%202SHbZ7fs5nsEAMAAAACt8XAmZGLG5w6f7W+hx3N5Lk/SPxtntwzL9tlMFAAwAABA483PXzM+43Kd%203/e31bzck3syJslqGZbhGWYIAAADAAA05o3/nZmQ8RmXqWIUyuMZm7GGAAAwAABA33TlzozLDbkp%2008UoxRCwRvbKntnHdYEAYAAAgO55KjdkXK7MJClKZVJ+mp8mWS/DMzxvybKSAIABAAAWZF7+mMsz%20LrenS4wSezhjMib9s3P2z/Bslw5JAMAAAAD/9lguz5X5fV6QojLmZXzGJ1k1+2R/5wEAwAAAQN3d%20m8tzRSb4nX9lTc55OS/9skv2z8HZWBAADAAAUC+zMj5X5CKf86+J+Rmf8RmV9XJADssueZ0kABgA%20AKDqpubX+VXGOe5fSw/n9JyeVXJA3pE3Z4AgABgAAKCKnsmVGZvfZo4UNfdEfpgfZkgOzGHZO4ME%20AcAAAABVMSVXZWyuzlwpeMm0nJfzsmTenMNySJYSBAADAACU2VMZm4tyY+ZLwQK9kMtzeT6a/XNY%209nMaAAADAACUz6yMy3m51G/96Ybp+UV+keVyUA7LvuknCAAGAAAog87cnPPyi0yXgh55NuflvKyR%20Q3NUtpcDgCryRTgAVMe9GZU1MyxjvP2nlybl9OyQLXJyHhEDgKpxAgCAKpic83Ju7heChrgn9+Qr%202SvvzTuyhBwAVIUTAACU2/yMy4gMzYne/tNQnbkuR2bVHJcJYgBgAACA9nogJ2e97J2xLvujSZ7N%20mAzL5hmdp8QAwAAAAK33fM7N7tk4J+UxMWi6ezMqa+XwXJNOMQAwAABAqzyQUVk778t4KWih2fll%203pKhOdlZAAAMAADQbPNzRfbOJhmdZ8SgLSblpKyVERknBQAGAABojskZnXVzQMalSwzaanbGZu9s%20nzGZIQYABgAAaJyuXJdDs1ZG5R9iUBi357ismU/kASkAMAAAQN/NzvnZOsNzceaJQeFMy2nZJHvn%20CudSADAAAEDvPZnRWS9H524pKLCujMsB2SRnZKYYABgAAKCn/pzjsk5G5V9SUAoPZGTWyahMkgIA%20AwAAdE9XxuXAbJMxfp9Kyfz7zMoxzqwAYAAAgMWZk3OzWfbO5T5RTWn/N3xets6++b0UABgAAGDB%20ZuSMbJD35X4pKLmuXJ09s33GGrIAMAAAwCs9lzOyQUb6mj8q5PaMyFY53/dXAGAAAIB/eyInZ+2M%20zGQpqJy/5OhsmDPyghQAGAAAqLdHcmzWzkmZJgWV9WhGZr18M89LAYABAIB6eiwnZNP8ILOloPKe%20yIlZJyfnOSkAMAAAUL83/xvldG/+qZEpOSnrGwEAMAAAUK83/xt7808tPW0EAMAAAEA9/OPFN/+z%20pKDmI8BoFwMCYAAAoKqezPHZwJt/SPJ0RmX9fC9zpQDAAABAtTyf0dkwZ2aOFPCiyflYNsiYzJcC%20AAMAANUwJ2OyQUb51DO8xmM5LltnrBAAGAAAKLvOjM2mOS5PSAELcU9GZNfcKAQABgAAymtctsuI%20PCwELMbN2SN75y4hADAAAFA+E7OnNzTQA+OyXY7JZCEAMAAAUB6Tclx2yu+FgB7pzHnZICf7pgwA%20DAAAlMELGZ1N3WwOvTQjJ2XDnJ8uKQAwAABQXF0Zm80yKtOlgD74Z47OThkvBAAGAACK6ZbsmhH5%20uxDQAH/KGzMijwgBgAEAgGJ5LIdll9wiBDRMV8ZmczcCAGAAAKA45uaMbJGLhICGm/nijQAAYAAA%20oO1+l20y0qf+oWn+maMzPPcLAYABAIB2vjE5Jm/OvUJAk12XrXJCnhcCAAMAAK03N2dk05wnBLTo%20J+70bOLDAAAYAABotWuyaUb6fSS01KQcnX3zsBAAGAAAaI1nclzemoeEgDa4Olvk5MwRAgADAADN%201ZXzs3HGpEsKaJOZOSk7+NJNAAwAADTT37JPjs7TQkCb3Z1dc1yeEwIAAwAAjTc3o7NlxgkBhdCV%20MS4FBMAAAEDj3ZStMyqzhIACeTxH5+2ZJAQABgAAGmNmRmXP3CcEFNCl2dytHAAYAABohAnZJqPT%20KQQU1LM5LvvmMSEAMAAA0HsvZFTemAeEgIL7bbZ0DgAAAwAAvTXe7/6hNJ7LcXmrcwAAGAAA6KkX%20Mip75EEhoESuyZY5w2gHgAEAgO67IZv73T+U0HMZmbfkH0IAYAAAYPHm5uQMz6NCQEmNy5YZIwMA%20BgAAFu2e7JSTMl8IKLFnc1xG5BkhADAAALBgXTkj2+cOIaACxmbz/EYGAAwAALzWY3lzRma2EFAR%20k/O2HJcXhADAAADAy43NtrleBqiUrozJjk71AGAAAOA/ns27fF4YKure7JJvp0sIAAwAANyWHXKB%20DFBZs/Op7JPJQgBgAACos66ckd3yNyGg4sZlm1wjAwAGAIC6ejoHZGTmCAE18ETemhMyVwgAAwAA%209XNDts6VMkBtdOX07J5HhAAwAABQJ/NzcobnX0JAzfwx22asDAAGAADqYlL2ykmZLwTU0LN5Zz7h%20owAABgAA6uDG7JCbZIDa6spp2TV/FwLAAABAtV/4n5Hhvg4Mau+27JBrZQAwAABQVc/lsIx09BdI%208nT2zcnpFALAAABA9dyZ7XKxDMCL5uekHJipQgAYAAColvOzWx6SAXiFK7NNbpUBwAAAQFXMzgdz%20dF4QAniNx7JnzpUBwAAAQBU8nj3zQxmAhZiZ9+U4t4MAGAAAKLvbs3NukQFYpDF5c56UAcAAAEB5%20/SLD8pgMwGLdlB0yUQYAAwAAZTQ/o3JEZgoBdMs/skcukgHAAABA2TyTfTNaBqAHZmRERqVTCAAD%20AADl8dfslmtlAHqoK6NzQJ4VAsAAAEA5XJkdc78MQK9cld3yqAwABgAAim9MDs50GYBeuyc75CYZ%20AAwAABTZ/IzMcZknBNAnU7J3fiYDgAEAgKJ6Pm/PGTIADTA7R+XkdAkBYAAAoHgm5Y25XAagQbpy%20Uo7ILCEADAAAFMud2Tl3yAA01AV5c56SAcAAAEBxXJRd808ZgIb7Q3bLgzIAGAAAKIYz887MlAFo%20igezcybIAGAAAKDdunJyjk+nEEDTPJN9coUMAAYAANppXj6Yk2QAmuyFHJwxMgAYAABolxk5MOfI%20ALTA/ByXUTIAGAAAaIcnskd+IwPQMqPzvsyTAcAAAEBrPZzdM1EGoKXOzTvyggwABgAAWue27OyL%20uYA2uCz7ZKoMAAYAAFrjxrw5T8kAtMWE7J5/yQBgAACg+a7MW/OcDEDb3JNheUgGAAMAAM11Qd6e%20mTIAbfVIds9fZAAwAADQPGfn3ZkrA9B2j2eP3CoDgAEAgOY4Ix9OpwxAITyTfTJeBgADAACNNzoj%200yUDUBjP5i25WgYAAwAAjdSVj2aUDEDBvJCDcrEMAAYAABr39v9jOUsGoIDm5J35qQwABgAAGvP2%20/6Pe/gOFNT/vyXkyAJRDfwkACv3S+v35iQxAoR+n3pfOvEcIgOJzAgCg2C+rvf0HyvBY9X8yABgA%20AOj9S2oHa4Fy6MpH8z0ZAAwAAPTu7f8xrtYCSjQBfDxnygBQbO4AACiiuTk8l8gAlGoCGJnk40IA%20FJcTAADFMz9He/sPlHIC8K0lAAYAALqtM+/JBTIApZwAPpYxMgAYAADo3svnj/jsP1Dix7AP52cy%20ABgAAFj8S+eP5WwZgBLrzDFOMQEYAABYnFE+PwuU3vwcnctkADAAALBwn8s3RQAqYG4Oy5UyABgA%20AFiwk/INEYCKmJPDcr0MAAYAAF7r1JwsAlAhM3Ng/igDgAEAgFc6P/8jAlAxz+etuUsGAAMAAP91%20Wd6XLhmAypmW/fKIDAAGAAD+7fq8M/NkACrpX9k7k2UAMAAAkNyVQzJLBqCyHso+mSoDgAEAoO4e%20zFsyTQag0u7O2zJDBgADAECd/TN75wkZgMq7OYdnrgwABgCAupqSvfN3GYBauCIfcNkpgAEAoJ5m%205qDcLwNQG+fl8yIAGAAA6qczR2aCDECtfCPfFQHAAABQN5/IJSIAtXNCfiUCgAEAoE6+lTNEAGpo%20ft6dm2UAMAAA1MWFGSUCUFMzc2AekAHAAABQBzfm6HTKANTW09kvT8oAYAAAqLp7c3BmywDU2kPZ%20PzNkADAAAFTZE9kvU2UAau9PzkIBGAAAqmxW3p6/ywCQ5JJ8UQQAAwBANXXlg+6+BnjJ1/NDEQAM%20AABV9LX8VASAl/lofi8CgAEAoGouyUkiALzCnLwjD8kAYAAAqJLbXXcFsABTckCelQHAAABQFY/n%20IF94BbBA9+XwzJcBwAAAUAUzc3D+KQPAQlydz4gAYAAAKL+uvCe3ygCwCN/Jj0QAMAAAlN3oXCgC%20wGJ8xFQKYAAAKLdr8wURABZrdg7Ov2QAMAAAlNWjOcLVVgDd8ngOyxwZAAwAAGX0fA7M0zIAdNMf%208kkRAAwAAOXTlffnbhkAeuB7+aEIAAYAgLI5xeV/AD32MZcBAhgAAMrl2nxRBIAecxkggAEAoFQe%20zeEu/wPolcdzRObJAGAAACiDuTkiz8gA0Eu/z5dEADAAAJTBJ3KzCAB9cEp+LQKAAQCg6C7M90QA%206JOuvDePyABgAAAosgfzQREA+mxq3pnZMgAYAACKalbemedkAGiAP+UzIgAYAACK6iO5QwSABjkz%20PxMBwAAAUEQ/yrkiADTQh3K/CAAGAICiuScfFwGgoZ7P4ZklA4ABAKBIZufdeUEGgAa7KyeKAGAA%20ACiST+UuEQCa4MxcJgKAAQCgKK7KWSIANEVXPpDHZQAwAAAUwaQcky4ZAJrkqRyRThkADAAA7daZ%20Y/K0DABNdENOFQHAAADQbqfkOhEAmuzzuUUEAAMAQDv9KSeJANB083JknpMBwAAA0C7Tc3jmygDQ%20Ag/l4yIAGAAA2uUTeVgEgBY5L2NFADAAALTD5TlHBIAW+kgmiwBgAABotadzrAgAHnkBDAAAVef3%20UACt5+wVgAEAoMXO90lUgLYYmb+JAGAAAGiVSRkpAkBbzMh7Ml8GAAMAQCt05QOZKgNAm0zId0QA%20MAAAtMJ3c7UIAG30hdwtAoABAKDZHsnnRABoq9k5OnNlADAAADRTV47N8zIAtNmd+bYIAAYAgGY6%20O+NEACiAL+deEQAMAADN8q98VgSAQpidD6RTBgADAEBzfDjTRAAoiJtzlggABgCAZjgvl4kAUCCj%208rAIAAYAgEZ7Kp8WAaBQZuSD6ZIBwAAA0FgfzlMiABTM73KuCAAGAIBGuiQXiwBQQJ/K4yIAGAAA%20GmV6jhcBoJCm5ZMiABgAABrlC5kkAkBBXZArRQAwAAA0wsR8TwSAAhuZmSIAGAAA+qozH8t8GQAK%207KF8XQQAAwBAX30vt4gAUHDfzH0iABgAAPpicr4kAkDhzcmH0iUDgAEAoPdGZpoIACVwY84TAcAA%20ANBbv82FIgCUxKfytAgABgCA3piVj4oAUBpT8jkRAAwAAL1xah4SAaBEzsmtIgAYAAB66p85RQSA%20UunMCa4CBDAAAPTUZzJDBICSuTk/FQHAAADQE+PzSxEASugzeVYEAAMAQHfNz8ccIgUopSfydREA%20DAAA3fX93CUCQEmdlr+KALBg/SUAeIUp+ZIIlNyyWTUrZaWskpWzUpbPoCyVgVkm/bNs+mW5vC5D%200vHSf3p65uW5zM+0dGVqujIt8zM1T+XpPJnJeSpP5ylnYiiROflErpIBwAAAsHhfzDMiUCpLZf0X%20/zE0q2SVrJRBPfr/XybJ8ov8T8zPU3kqT+YfeSgP5eE8lKdlp8B+k8tzgAwABgCARbs7Y0Sg8JbM%20Ftko6734tn/Vpv/1+mXVV/1Vns1DL/3jLqMZhfOpvDUDZAAwAAAsymcyXwQKaki2yPbZPptlywxs%2083+X5bJdtnvpXz2ee3JvJmZi7kunPygK4MH8X46XAcAAALBw1+S3IlAwq2eXbJttsk3WKOx/x9Wy%20WoYnSZ7Nnbkzd+bW3OfeANrqKzk6Q2QAMAAALFhnRolAgd7475bhGZZNX3ZdX/Etlz2yR5Lkudya%20cZmQWzPHHyZtMCXfyGgZAAwAAAt2bu4QgbZbL8MzLHtkaMn/PpbN8AxPMiN3ZnzGZUJm+sOlpU7L%20sVlfBoCX65CgCQ7LhSJA6czIxpkkA22zWvbLfnlTZQ8tz87NuSpX5l5/1LTMu/JzEaDERmSsCI3m%20BADAv53q7T9tsnn2zwHZJa+r9N/loOyZPfPNPJprMi6/yfP+4Gm6C/Lx7CIDwH85AdAMTgBA+TyZ%20DTJdBlpqqbwp+2f/rF7Dv/eZmZAr8qs85n8GNNUumeDVLpSWEwBN8DoJAJJ80dt/Wmi5vCdXZ2ou%20y7G1fPufDM7wnJa/Z2L+p/S3HVBkN+fXIgAYAABe7v6cIwIteuN7aC7J5Jybt2SAHNkuo/NobspH%20s5IYNMVnM18EAAMAwH99yQtEmq5fhuXsTM7YvD1LyPEyHRmW7+bxjM+xWU4OGuz+nCcCgAEA4D9u%20z0Ui0FQ75axMzk05NsuKsRD9slvOzuRcnINcUUxDnZzZIgAYAAD+7QvpEoEmWSbH5vbckg9nRTG6%20YYkckkvzWE7JOmLQIH/PGBEADAAASTIhvxGBptg0p+TvOTvbStFDq+XEPJRrc5izADTEV13zCmAA%20AEiSL0hAww3KYbk29+bELC9Gr1+hDM+FeTSnZC0x6KOn8l0RAAwAAL/JDSLQUOvmO5mcCzNcigZY%20IyfmoYzNblLQJ9/KNBEADABAvXX5/T8NtXXOywM5IUOkaKABOTTjc1uOTj8x6KWpOVUEAAMAUG9j%20c7sINMiwXJ47cpRPrTfJ9vlJ7s9IX6FIL52WJ0QAMAAA9dWZk0SgAfrn8EzMTdk/HWI01QY5LX/L%20Z3yZIr0wI6eIAGAAAOprbO4TgT4anI/lgfwi20nRImvkm3ksp2RVKeihMc4AABgAgLrqyv+KQJ8M%20yLF5MGdmXSlabLmcmIdyelaWgh54wT0AAAYAoK4uzt0i0Ifnz8NyT87OGlK0yZI5Pg/llCwnBd32%20f3lSBMAAAFA/XfmaCPTa8EzMhdlQiDZbOifmoZyYwVLQLTPyHREAAwBA/Vyau0SgV4blxlybbYQo%20iBVySh7IyAyUgm44M0+JABgAAOrF7//pnR3yu9yU3YUomDVzWv6SEUKwWDNyugiAAQCgXq7I7SLQ%20Qyvk9NySvYQoqA3zy/w+WwvBYpyZZ0QADAAAdeL3//RM/4zMQzk+/aQotDfm9pyXlYRgEZ7LGSIA%20BgCA+rg6t4pAD+ydP+c0t82X5HXNUbkvHzbVsAin51kRAAMAQF2cIgHdtlbOyzXZVIgSWSFn5e7s%20IwQLMS3fFwEwAADUw635vQh0y+B8NQ/kKCFKaNNcnV9kDSFYoNMzWwTAAABQB6MloFt2yx35QpYQ%20oqQ6cnjuzUivdFiAx3O+CIABAKD6HsilIrBYS+aU3JiNhSi5ZXNabshGQvAap6ZTBMAAAOBFH7wl%209+VEz5AVsXvuzIkuBeRV/ppfiwAYAACq7QnHPlmMITk7v8lQISpkcE7J+GwmBK/gOljAAABQcd/J%20LBFYhP3zlxybDiEqZ+fcmVMyUAhecmtuFAEwAABU13M5WwQWavn8Mpe7N76yBuTE3OIcAC/zTQkA%20AwBAdZ2daSKwEDvntoyQoeK2zcSMlIEXXZU7RQAMAADVNC9nisAC9ctJGZ/1hKiBJXJafpUVhCBJ%20V84QATAAAFTTJfmHCCzA0FyfL7slvkYOzp3ZQwaS/DxPiAAYAACq6HQJWIBDckd2l6Fm1sz1OT0D%20hKi92fmBCIABAKB6bs8fROBVBuf0XJzXC1FDHTk+47O+ELV3VuaIABgAAKrmNAl4lc1zR46Xocbe%20kIl5uww193guEgEwAABUy5O5UARe4YBMyMYy1NxyuTineC1Uc9+WADAAAFTLWZktAi/pyIm5NMsJ%20QTpyYq7I8kLU2MTcIgJgAACojjk5WwResmx+5be+vMy+uTVbyFBjrogFDAAAFXJBJovAizbOH3OQ%20DLzCBrk5h8pQWxf5kljAAABQHWdKwIsOzW3ZRAZeY+lcmP/1qqim5uX7IgAGAIBquC23iUCS1+Xr%20uTBLC8ECdeRzuSJDhKilH2WuCIABAKAK/GaHJBmUn+Wz6RCCRdg3EzJUhhqanEtFAAwAAOX3bC4Q%20gSyfa3K4DCzWZrkl28lQQ66KBQwAABVwfmaIUHvr5A95owx0y2r5ffaVoXZ+lwdEAAwAAGU3RoLa%202yrjXfxHDyydy3KsDDXTlR+IABgAAMptfO4Woeb2zk1ZQwZ6pH++n5NkqJlzM0sEwAAAUGY+1Vl3%20782VWVYGeqwjX865GSBEjUzJxSIABgCAMr+cu0iEWjspP/IWjl57Ty7NkjLUiO+MAQwAACXmQGe9%20fS1fFoE+2S9XZxkZamN8/iICYAAAKKtzJKitjpyZz8tAn+2eq7OcDJ41AAwAAMV2c+4XocZv/z8m%20Aw2xa36XFWSoifMzRwTAAABQRj+WoKb65Uf5qAw0zHa5MavJUAtTcpUIgAEAoHxm5UIRavr2/8d5%20jww01Gb5XVaXoRZ+IgFgAAAon0syTYQaGpgLc6QMNNwmuT5ryVADV2SyCIABAKBsfixBLd/+X5JD%20ZKApNsrvs7YMlTcvvxABMAAAlMuk/E6E2umX8/M2GWiadTPOXQA18CMJAAMAQLn8OPNFqJmOfD8j%20ZKCpNshv83oZKu4vuUMEwAAAUCbnS1A738oHRKDptsxVWVqGivuxBIABAKA8JuSvItTMV/IpEWiJ%20nfKrDJKh0n6WOSIABgCAsvD7/7o5Pl8UgZYZngvTX4YKm5KrRQAMAADlMDcXi1Arx+Q0EWipA3Ou%20V1CV5psAAAMAQElck6dFqJFDck46ZKDFjsyZIlTYZXleBMAAAFAGF0hQI3vlF+knA23wkXxOhMp6%20IZeJABgAAMrwsu1SEWpj41ycgTLQJl/LESJUlg8BAAYAgBK4wsHN2lghl2d5GWibjpyTXWSoqN9m%20igiAAQCg6PzWpi4G5qJsKANttUQuywYyVJLrZAEDAEDhPefLm2qiIz/MnjLQdivmsgyRoZLMyYAB%20AKDgLsosEWrhyzlKBAph0/zKTRSVdGMmiQAYAACKzDcA1MO78yURKIw9fSVgJXXmQhEAAwBAcU3J%209SLUwLCckw4ZKJBj82kRKugiCQADAEBx/TrzRKi8VXNhBslAwYzOW0SonFvyLxEAAwBAUf1Kgsrr%20nwuzmgwU8PXUz7OODBXTmUtFAAwAAMX0fMaJUHnfyu4iUEivzwUuA6ycSyQADAAAxXSFbwCovIMz%20UgQKa6ecKkLF3JCnRQAMAABF5Dc1VbdRfuLyPwrt4zlahEqZn8tFAAwAAMUzK1eLUGlL55IsKwMF%20d1Y2F6FSTMuAAQCggH6b6SJ4YwVttlR+leVkqJBr85wIgAEAoGgulaDSjs9RIlAKG+aHIlTI7Fwl%20AmAAACiWeblMhArbOt8UgdI4NMeJUCE+BAAYAAAKZkKeEaGyBuW8DJKBEvl2NhahMn6bOSIABgCA%20IrlSggo7JVuJQKksmZ9lgAwV8VzGiwAYAACK5AoJKmt4RopA6WyfL4hQGSZmwAAAUCCP5D4RKmpI%20zkmHDJTQ57KLCBVhYgYMAABenNEC/5ehIlBK/fPTLCNDJTyQB0UADAAAReF4ZlUdmcNFoLTWy7dF%20qAhfBQgYAAAKYkZ+L0IlrZkzRKDUPpBDRagEMzNgAAAoiHGZJUIFdeTHWV4GSu6srChCBdyY6SIA%20BgCAIvCbmWo6Jm8WgdJbKd8SoQJmZ5wIgAEAoP26fDazom+bThWBSjgmbxKhAkzNgAEAoADuySQR%20KujbWUEEKqEj389gGUrvtxIABgCA9nMss4r2yrtFoDI2zOdFKL1/5q8iAAYAAAMAjTY4P0iHDFTI%20idlaBM82AAYAgL6Zl5tEqJwvZ30RqJT+OdsrLgMAgAEAoG9uznMiVMyW+aQIVM5OOU6Ekvtd5ooA%20GAAA2slvZKqmX36YATJQQd/I6iKU2nP5kwiAAQCgna6VoGLelzeIQCUtl9EilNx1EgAGAID2mZ7b%20RKiUZXKyCFTWu81bJWdyBgwAAG3kE5lV87msJgKV1ZHTfL9Fqbl1BjAAALSR45jVsnZOEIFK2yWH%20iVBi83KjCIABAKBdrpegUkZnCRGouFOzpAgl9nsJAAMAQHs8k3tFqJCdM0IEKm+tHC9CiTkBABgA%20ANrkpnSKUBkdOdWno6kFN12U2e2ZLgJgAABozwBAdRyR3USgFnzXRZnNyy0iAAYAgHZwFLM6Bufr%20IlAb78tWIpSW6RkwAAC0wfO5Q4TK+HCGikBt9MtXRTAAABgAALrvD5knQkUsmf8RgVo5MDuKUFK3%20ZJYIgAEAoNX8FqY6PpJVRKBmviRBSc3KRBEAAwBAq7kBoCqWymdEoHb2zxtE8OwDYAAA6I7ZuVWE%20ivhoVhaBGvqyBCXl/BlgAABosYk+hVkRS+fTIlBL+2VnEUrpD+kUATAAALSSb2Kuio9lJRGoKWcA%20yunZ/FUEwAAA0Ep/lKASls4nRaC23pphIngGAjAAACyOGwCq4Xi//6fWviiBAQDAAACwaE/mUREq%20YHA+IQK1tk92FMEAAGAAAPDiq/qOzooiUHNGsDK6OzNEAAwAAAYAuq8jI0Wg9g7LUBFKZ17uEAEw%20AAAYAOi+fbOpCNRe/3xUBM9CAAYAgIXpym0iVICjz5AkH8qyIhgAAAwAAAt2f6aJUHpb5M0iQJJl%208x4RDAAABgCABfuTBBXwyXSIAEmS49NPhJJ5LJNFAAwAAK1wuwSlt3LeJQK8aP0cJELpuAYQMAAA%20tMSdEpTex7KECPASN2J4JgIwAAAsQFfuEqHkBuVDIsDLDMv2IhgAAAwAAK/2qCsAS+/grCQCvMIH%20JTAAABgAAF7N5y7L7/0SwKu8K0uKUCp/y/MiAAYAgGa7U4KSWytvEgFeZdkcKkKpdObPIgAGAAAD%20AIv2AV95BgvgZEzZOI8GGAAAvORiMc86x4gAC/DGbCJCqbiQFjAAADTZlPxThFLbJ2uLAAtkHCuX%20OyUADAAAXnCxKO+TABY6APQXoUTuzjwRAAMAQDO5dKncVsiBIsBCrJZ9RSiRWfmbCIABAKCZ7pOg%201I7JIBFgoVwE6BkJwAAA4OVWRRwlASzC27KiCCVyrwSAAQDAAMCCbZRtRIBF6J+DRfCMBGAAAEiS%20JzJFhBI7TALwU1IhTgAABgCAJvLblnI7VAJYjDdlJRFK46/pFAEwAAA0i9+2lNl6PgAAi9XfN2WU%20yAv5uwiAAQCgWZwAKLN3SgDd4EMAZWKWBgwAAAYAvK2BXnpTVhDBAABgAADwUqu81su2IkA3DMhB%20IpSGWRowAAA0ybN5XITS8vt/6C7XZRoAAAwAQO39TQIDANTA8LxeBM9LAAYAoN4ekqC01sx2IkA3%20Dci+IpTE03lWBMAAAGAA4OXekg4RoNv2kaA0HpYAMAAAGAB45QAA9GQAMJl5ZgIwAAC15rOWZdUv%20bxYBemDVbCWCAQDAAAB4mUX57OhKM+ghp2Y8MwEYAIAam5V/ieCtDPipwQAAYAAAqu7hdIrgrQzU%20xLAsLYIBAMAAAHiRRbkMyY4iQA8NzB4ilMI/MlsEwAAAYADg34anvwjQY07OlENn/i4CYAAAaLRH%20JfA2BmrkrRKUxCMSAAYAgEb7pwQl9SYJoBc2zFoilMI/JAAMAACN9pgEpbRK1hMBemVXCUrBPA0Y%20AAC8xCJJspsE0Eu7SFAKTgAABgCABpubJ0TwFgZqxQkAAwCAAQCopUnpFMEAALWyTZYUoQScTwMM%20AABeYJFkQLYTAXr987ODCCXgBABgAADwAosk22WwCNBrTtCUwfOZJgJgAABoJCcAyslnmMEAUH0m%20asAAAGAAwNsX6JPd0iGCZygAAwDg5RVlsLME0AcrZn0RSsAJAMAAANBQkyUoodWzlgjQJ0Y0z1AA%20BgCgdp6QoIS2lgD6aEsJSuBJCQADAICXV3W3hQTgp8gzFIABAKAnZma6CN66gJ8iDAAABgDAiyu8%20dYEqWitDRPAcBWAAALy4otj6ZVMRoI86spkInqMADACAF1cU2/oZLAL0mZM0xfdM5ooAGAAADAB1%205vZyMADUQ1eeFgEwAAAYALxtAfwkeZYCMAAAdNtTEnjbAjXlLI0BAMAAABgAKLjNJYAGWDGriOBZ%20CsAAANTHMxKU8NllfRGgITaUoPCmSgAYAAAaZZoEpbN6BooADbG2BIX3rASAAQDASytvWQA/TZ6l%20AAwAAN02TQJvWcBPE56lAAwAQPX53Yq3LOCnCQMAgAEAqLzOTBfBWxaorXUkKDwzNWAAAGjYC6su%20EQwAUFtD0yFCwU2TADAAAHhhZQAA+mpwVhLB8xSAAQCoB0cry2ioBNAwBjXPUwAGAKAmpklQOitm%20KRHAAFAbUyUADAAAjeEKwPLx+38wANTJ7MwRATAAADTCCxKUzsoSQAO5A6D4ZkoAGAAAvKyqpxUk%20gAZ6vQSeqQAMAICXVXi7An6i8EwFYAAAKsJHALxdAT9ReKYCMAAANeD3KuWzvARgAPBMBWAAAPCy%20ytsVwE+UZyoAAwCAl1XergB+ojxTARgAAC+rKAPfAgCNtFSWEMEzFYABAPCyiiLy+0rwM+WZCsAA%20AOBllTcrgJ8pz1QABgCA15otQeksJwE01BAJCm6WBIABAKAR5ktQMh0ZIAI01EAJPFMBGAAAL6so%20Hm//wU+VZyoAAwBAL3RK4K0K+KnCAABgAAC8rMJbFag6HwEoOlM1YAAA8LLKAAD4qaoBUzVgAADw%20sspbFcBPlWcqAAMAQPc4AeCtCtSdjwAYAAAMAICXVRgAwE8VbWeqBgwAAF5W1ZLfVYIBoG5M1YAB%20AMDLKm9VAD9VNWCqBgwAAHhmARqgvwQFZ6oGvEwD8DhVS3MkgAabLUHBOaMBeGEN0BB+81U2syQA%20P1U1008CwAAAYACoI7+rBAOAZyoAAwCAl1XeqgB+qjxTARgAABbEwcqycQIADAAGAAADAICXVd6q%20AH6qPFMBGAAAvKyqgrm+EAsazLkaz1QABgDAyyq8WYEacALAMxWAAQCoBXcAGADAAIABAMAAAHhZ%20hTcr4GcKz1QABgCgCgZIUDozJICGekECz1QABgCgDpaUoHSelgAa6ikJPFMBGAAAL6vwZgWqbrqP%20ABTeUhIABgAAL6vqyQkA8BNVL6ZqwAAA0BCDJSgdJwDAT5QBAMAAANBjTgCUj99XggHAMxWAAQCg%20x/xexdsVqDeTmmcqAAMA4GUVBgDwE4VnKgADAFAVDlaWj99Xgp8oz1QABgCAHvN7lfLx+0rwE1Un%20/TJIBMAAAGAA8HYF8BPleQrAAADQLctIUDrT87wI0DCTJSi4pSUADAAAjTFEghJ6RAJomIclKLjl%20JQAMAABeWHnDAvTVc5kigucpAAMAUA/LZIAIpeMEADTKQxIYAAAMAEB9LCeBAQD8NGEAADAAAF5a%20UTw+AgB+mjxLARgAALy08pYF6DYnADxLARgAgBoZIkEJ37J0iQANYU4zAAAYAAAvrSiwmb65HAwA%20tTFEAsAAAGAAqDPHlqEROvN3ETxLARgAAC+tKDJfXQaNMCmzRSi8IRIABgCARllBghK6RwLwk+RZ%20CsAAANAzq0hQQndJAA1wpwQlsJoEgAEAwABgAAD65s8SFN4AH1QDDAAAjbOqBCX0eJ4UAfrMlFZ8%20K6dDBMAAANAoTgCUk99cQl/NzgMieI4CMAAAdbJi+otQQn5zCX31l8wTofCcUgMMAAANfaRaSYQS%20cgIA+sqMVgZOAAAGAAAvr7x1kQD6yIzmGQrAAADUjgOWZXRf5ogAfWJGMwAAGAAAL68ogTm5XwTo%20k7sl8AwFYAAAvLyiDCZKAH3wSKaIUAIrSwAYAAAaaQ0JSmmCBNAH4yUohTUlAAwAAI00VAJvX8BP%20EIW0lgSAAQDAAMADeVIE6LWbJCiBlbKkCIABAMAAQJcPAUCvPe0aTc9PAAYAoI5W9BuWknKEGXpr%20QrpEMAAAGACAOvIZSwMA+OnBAABgAAC8xKKgbs/zIoABoMLM04ABAMAAQJJkXm4VAXphZm4XwbMT%20gAEAqCe/Yykrv8WE3rglc0QwAAAYAAAvsSiTGyWAXvAVgGVhngYMAAAGAF403i0A0AtXS1AKg7Kq%20CIABAKDR1pegpGbndyJADz3j9oySWNdracAAANB4QzNIhJL6jQTQ45+a+SKUwoYSAAYAgGY8Wq0r%20QkldKQH0eACgHDaQADAAADSD37OU1T/yFxGgBzpzrQgGAAADAOBlFmV0lQTQA7fmSRE8MwEYAAAv%20sygjx5nBT4xnJgADAICXWTUwPtNEAANA5Qz0FbWAAQCgOdwBUF7zMk4E6KanMlGEklg3/UUADAAA%20zeCLAMvMNwFAd12VThFKwsk0wAAA0CT9so4IpXVpZosA3XKhBAYAAAMAwMYSlNY0X2sG3fKMD8yU%20yEYSAAYAgGbZTIIS+6UE0A0XZ44IpbG5BIABAMBLLV7r15kpAiyWqaxMzNKAAQDAAMACTM9VIsBi%20TM4NIpTGyllJBMAAANAsm6afCCXmN5uwOGMzX4TSMEoDBgCAJloi64pQYpfnORFgkcxkBgAAAwCA%20l1sVMCtXiACL8I/cLIJnJAADAICXW1Xgt5uw6J+QThE8IwEYAAC83KqC32aKCLBQF0hQKr4DADAA%20AHi5xULNzvkiwELclYkilMiqWUEEwAAA0Eyb+B6AkhsjASzE9yUoFSfSAAMAQJMtkU1EKLX7cpMI%20sAAz8nMRSmVbCQADAECzbSdByf1AAliAX/iaTAMAgAEAwEuuahmbZ0SA1zCNeTYCMAAAvIoTAGU3%20y0WA8Bp/zq0ilMqS2UgEwAAA0GzbpkOEkvt+ukSAV3A9Ztls40pawAAA0HzLZn0RSu7+TBABXmam%20CwBLxwcAAAMAgJdddItPO8PLXZCpIngmAjAAALyWWwDK78I8IQK85HsSGAAADAAAXnZV06x8VwR4%200e8yUYSSGZgtRAAMAACtsL0EFXBWnhcBkiTfkqB0tshAEQADAEArrJihIpTeMzlXBEhyd34rQun4%20KBpgAABomZ0lqIDvZJ4IkG/5WswS2kUCwAAAYACg+x7JJSJQe5PySxE8CwEYAAC89Ko6n3yG72SO%20CKUzJJuIABgAAFpluwwSoQJuy+9FoNaeyw9FKKGdvH4GDAAArTMo24hQCc4AUG/fz7MilJBTaIAB%20AMDLL3rsqvxFBGprVs4QoZR2kgAwAAAYAOiprpwkArV1diaJUEIdBgDAAADQWr6CqSouya0iUEsz%20cooIpbRxXi8CYAAAaKW1s7oIldCVk0Wgls7MZBFKyQk0wAAA0HKOYFbFVZkgArXzXE4VwQAAYAAA%206J43SlAZn5WA2vl2pohQUntIABgAALwEo7duynUiUCtTc7oIJbVyNhYBMAAAtNrWGSJCZXw2XSJQ%20I6MzTYSS2iMdIgAGAIDWP3oNE6Ey/pSrRKA2nsr3RCjxAABgAADwMow++WI6RaAmvpbnRSgt988A%20BgAAAwB9dEd+LAK1cH/+T4TSen02FwEwAAC0w7ZZVoQK+WyeFYEa+GTmilBae3jlDBgAANqjf3YV%20oUKezP+KQOVdnt+IUOoBAMAAAOClGA1weh4QgUqbk0+L4FkHwAAA4KUYc/IpEai0M4xcpTYkW4oA%20GAAA2mXHLCdCpVzheDQV9mS+JkKpvSn9RAAMAADt0j97iVAxLkijuka56LLk9pYAMAAAeDlG49yf%2074lAJd2en4hQcvtIABgAALwco5FOzhMiUDmd+Vg6ZSi19bOeCIABAKCdNvCCrHKm5XgRqJyzcrMI%20JfcWCQADAEC7+RBA9VyYS0WgUh7L50TwbANgAADwkozX+kimikCFfDzTRSg5l84CBgCAAnhz+otQ%20OY9nlAhUxs9ymQilt7OvnQUMAADtNyQ7ilBBP8h1IlAJU/JJESrAaTPAAABQCL4JoIq68uHMlIEK%20OCFPimAAADAAADTGvhJU0oM5WQRK7zf5qQgVsELeIAJgAAAogh2zqgiV9P8yUQRKbUY+KkIlvC39%20RAAMAADFeBzbT4RKmpf3ZZYMlNgn84gIFRkAAAwAAAWxvwQV9WffBkCJXZoxIlTCAHfNAAYAgOLY%20J0uIUFFn5AoRKKVJ+YAIFbFHhogAGAAAimKp7ClCRXXl/ZksA6XTmWMyRYaKcMoMMAAAeHlGSzyZ%2096ZLBkrmm7lOhMpwAwBgAAAolAPSIUJlXZ3vikCpTMyXRaiMzbKBCIABAKBIhmZLESrsM7lLBEpj%20Rt6dOTJUhhNmgAEAoHAOkKDCZufdmSkDJXF8/iqCAQDAAADQPAdJUGn35NMiUAq/zI9EqJCVs6sI%20gAEAoGh2zHoiVNpZOVcECu/+HCtCpbw9/UQADAAAxXOwBBX3kdwmAoU2PYfkORkq5R0SAAYAAC/T%20aL1ZeUeeloHC6sp7cp8MlbJC9hIBMAAAFNEuWUuEinssh2e+DBTUV3KJCBVzcPqLABgAAIqow4cA%20auC6fEEECumafFWEynGyDDAAAHipRhuNzlgRKJxHc4TTKZUzJG8WATAAABTV7llNhMrryvtyjwwU%20yswckikyVM6BGSgCYAAAKO4j2oEi1MDzeUemykBhdOU9uUOGCnKqDDAAABTaoRLUwl9zSObIQEF8%20LheKUEHLZB8RAAMAQJHtmVVEqIUbcky6ZKAAzskpIlTSwVlCBMAAAFBk/TNChJq4IF8Sgba7Oh8S%20oaKOkAAwAAB4yUZRfC3/JwJt9ZccnnkyVNJKGS4CYAAAKLqds6EItTEyvxWBtpmU/fKsDBV1ePqL%20ABgAAMrwso26mJvDcqcMtMVzeVv+IUNlOU0GGAAASuEoCWpkujdhtMXcHJq7ZKis9bOTCIABAKAM%20NswOItTIv7JfpshAS3XmPblWhgp7VzpEAAwAAGV56Uad/CXDM1UGWqYrH8nPZag0HyUDDAAAJRoA%20+olQK3dmv0yXgRb5n5wtQqVtl81FAAwAAGWxWvYSoWZuycGZKQMt8LmcKkLFuQAQMAAAlMoxEtTO%2073JwZstAk/1vviFCxfU3AAAGAIByeUeGiFA71+TwzJOBJjozXxCh8vbLaiIABgCAMhmcd4pQQ5fm%20XZkvA01ybkaKUAPvlQAwAAB4CUcZXJTj0ikDTfCTfCBdMlTeKnmbCIABAKBsdsqWItTSOXl35spA%20g52d95mWauGoDBABMAAAlM/REtTUBTkks2Sggb6ZD3v775kDwAAAUOSXcX6PU1dXZN9Ml4EGGZ0T%20Hf6viZ2dHQMMAADltLJPctbYDRmeZ2Sgz7ryyYySoTbcHgMYAAC8lKOEbs3eeUoG+mR+PpjvyFAb%20gzNCBMAAAFBWvs253m7PXnlcBnptbo7IOTLUyKEZIgJgAAAoq/75gAi1dk/emIdloFdm5O25UIZa%20+ZAEgAEAoMyOTX8Rau1veUNukoEem5w9c6UMtbJVdhUBMAAAlNmaLgKsvSnZOz+XgR65JzvnNhlq%205iMSAAYAgLL7sAS1NztH5mQZ6LbrMix/l6Fmlsm7RAAMAABlt082EqH2unJS3p+5QtAN52bfTJOh%20do7KsiIABgCAsuvIB0UgyY+yX56VgUXqysl5n6mollwACBgAACrhvVlCBJKMc7CbRZqdI3OSDLU0%20LFuKABgAAKpghYwQgSTJX7JLJsjAAk3KXq6LrK3jJAAMAABV4SJA/uPx7JnRMvAaN2WH3CxDTa2Y%20Q0UADAAAVbFztheBF83LqByZGULwkq78v7wpk4WorQ/6oBhgAACokhMk4GV+lh1ynwwkSZ7P4fl0%205glRWwPyEREAAwBAlbwza4rAy9yfnXKxDOSB7JILZai1EZ4fAAMAQLUM8BVPvMr0HJZRmS9ErV2W%20N+QvMtTc8RIABgCAqjkug0XgFboyOvvlCSFqak4+nYPzrBA1NyxvEAEwAABUzYo5UgRe45psmctk%20qKH7s0v+X7qEqL1PSAAYAACq6IR0iMBrPJWDcoxvBaiZ87NDbpeBrJODRAAMAABVtFn2FoEFOs/b%20wRp5KgflaJMPSZKR6ScCYAAAqKYTJGAh7s/OOTmdQlTetdnGhz540TJ5rwiAAQCgqt6aTUVgIebm%20pOydfwpRYTNzfN6SfwnBi96f5UQADAAAVdWRT4vAIvwuW+dnMlTUn7JjznTtHy8Z4AJAwAAAUG1H%20ZagILMIzOTL75lEhKuaFjMouuUcIXubdng8AAwBAtQ3ISBFYjKuzeUZnvhD+RKkwJ8IAAwBADRyX%20FUVgMV7IqOyQiUJUwNQc50wHC3BQNhcBMAAAVN1S+YgIdMOd2Tkn+LK4khubjTNGBhbgMxIABgCA%20Ovh4lhKBbpiX07NtbhCipB7OPhmRp4RgAfbMriIABgCAOlgx7xeBbnowe+XAPCJEybyQk7NFrhWC%20hRglAWAAAKiLz2SgCHTb5dk8ozJdiJLoythsmpMyUwoWYuvsIwJgAACoizXzLhHogZkZnU0yJp1S%20FN6fMiwj8pgQLMJn0yECYAAAqI/Pp78I9Mi/clzekPFCFNikHJOd8gchWKQN8w4RAAMAQL1eAL5T%20BHpsYnbPgb5SrpBeyOhskvPSJQWL8WUDMGAAAKibL6SfCPTC5dksn3a3fKHMznezYUbleSlYrI1z%20uAiAAQCgbjZxBoBempn/l3VzQp6QogDm5vxslo/nX1LQLV80/gIGAIA6OsnLQHptRk7PBhmVqVK0%20UWfGZrMcnYeloJt8/AswAEgAeCEIvfB8RmftjMqzUrTpzf+mGZG/SUEP+Pw/YACQAKgtR0Hpq+kZ%20nfUzOtOlaKH5uSBbZEQekIIe8fl/AAMAUGPuAaARpmRU1sgJvnu+JZ7PmGyed+U+Kegxoy+AAQCo%20NfcA0BjTc3o2yIj8UYomeiInZ50cl79KQS/42BeAAQCo/QvCd4lAg8zN2Oyc4fmN76Jvgrvz3gzN%20SZkiBb10ks//AxgAgLr7agaJQANdl/2ycc7ITCkaZkIOzNb5ceZIQa9t6fP/AAYAgHXyARFosAcz%20MqvnuPxZij6amjHZOsNyuVMV9NEpXvMCGAAAki9lGRFouGkZk62zQ8Zkhhi90JlxOSZrmFFoiGHZ%20TwQAAwBAsnKOF4EmmZjjsnqOy0QpeuDxjM6G2Tvn+SAFDfI1CQAMAAD/9um8XgSa5rmMyQ7ZId/P%20VDEWY04uzQFZK6PysBg0zP7ZQwQAAwDAvw3JiSLQZBPz4ayU3XNGnhZjAeZnQk7Imnl7rsh8OWjo%20a92vigBgAAD4r+Ozpgi04E3u+IzMmjkw5+c5OV7x1n/1DMvpeUoOGu6IbCMCwH/4RlSAZIl8IR+S%20gZaYnctzeQZlnxyWg7JsjUt05uaMzQV5wv8oaJoBOUkEAAMAwCu9P9/JX2WgxTPA4Lwpb81bs0HN%20/u6fzjW5Olf7jT9Nd2zWFwHAAADw6kfDb+YgGWixmbkyVyZZL8MzPG+p/HmAztyRcRmXGzLPHz4t%20MMTv/wEMAAALcmCGZ5wMtMXDGZMx6Z+ds3+GZ7t0VO7v8KnckHG5LJP9YdNCn8+KIgAYAAAW5NRs%20l04ZaJt5GZ/xSVbJG7JbhmWHDCr939PDmZCJGZ/b0+UPmBZbNx8XAcAAALBgW+fo/FgG2u6JXJ7L%20kwzIVhmW3bJX6X6LOS93ZULG5waf8qeNvlmBCQ2gwTokaILDcqEIUEqTsnFmyEDhnqs3y07ZKltm%20q0JPATNyb+7K3bktEzPbHxtttltu8joXSm5ExorQaE4AAPzXGvmMK6MonK7ck3te/OfLZ/Nsn82y%20ebbNkoX4b/d4Juae3JuJuT/z/WFREB35prf/AAYAgEX7dMbkXzJQWFNfvCcg6Z8Ns0HWzTpZN+tk%20nQxp0X+DWXk0j+TRPJpH8kjuzQv+UCigd2VXEQAMAACLtlS+lvfJQAnMy32572X/esiLQ8A6WSEr%20ZIWslBWyTB//GjMzJVMyJU9lSia9+Kb/cekpvMH5uggABgCAxTsm38tEGSidabkjd7zq3xv44hiw%20QlZMslQGpiNDkgzKkkmWSf9MS1fmZEaS5zM3XZmWZPqLb/mf9tt9SuqTWVsEAAMAwOK9LmdmN19Z%20RiXMyeN+Y0/trJnPigCwsBe6ALzSLjlGBICS+naWEgHAAADQXaNbdqEaAI30phwmAoABAKD7Vs6X%20RAAonf45TQQAAwBAz3w8W4kAUDIjs6UIAAYAgJ7pn++mQwaAElklXxQBwAAA0HO7Z4QIACXyzSwn%20AoABAKA3Ts3SIgCUxK45SgQAAwBA76zpKkCAkuifs3xwC8AAANB7n8i2IgCU4vF6axEADAAAvdc/%20Z6efDAAFN9SJLQADAEBf7ZgPiQBQcN91ZwuAAQCg776eNUQAKLAROUAEAAMAQN8tm++IAFDgR+lv%20iwBgAABojMNyoAgABTXaOS0AAwBA45zp06UAhfSGHCsCgAEAoHGG5iQRAApnQH7o1SyAAQCgsT6R%20XUUAKJjPZksRAAwAAI1+tDwnS8gAUCCb5nMiABgAABpvk3xRBIDC6J+fZJAMAAYAgGb4n+wgAkBB%20fCY7igBgAABojv45JwNlACiATfIlEQAMAADNs5XPmwIU4hXsD93LAmAAAGiuz2d7EQDa7JPZTQQA%20AwBAc/XPORkgA0AbbZSviABgAABovq3zWREA2qZfzslgGQAMAACt8MXsJAJAm/xPhokAYAAAaI3+%20+XGWlAGgDbbJSSIAGAAAWmeTjBYBoOUG5TxfxwpgAABorY9mPxEAWuwb2VIEAAMAQGt15AdZQQaA%20Fto9I0UAMAAAtN7q+YEIAC2zXH7qlSuAAQCgPd6eI0UAaJGzMlQEAAMAQLuc6eUoQEu8M0eIAGAA%20AGifIflp+skA0GRr5SwRAAwAAO21e74oAkBT9c8v8noZAAwAAO32xbxJBIAmOjm7iQBgAAAowuPo%20eVlRBoAm2SMnigBgAAAohjXyk3TIANAEK+Xn7loBMAAAFMd++ZgIAA3XkXOyugwABgCAIvlWthUB%20oME+kQNEADAAABTLoFyYZWQAaKDt8w0RAAwAAMWzgW+pBmigIfllBsoAYAAAKKIj8yERABqiI+dk%20fRkADAAARXVadhQBoAH+J4eIAGAAACiuQbkoK8oA0Ed75GsiABgAAIptaH7ikRWgT1bJz9NfBgAD%20AEDR7ZfPigDQa/1zYVaXAcAAAFAGX8k+IgD00jfyRhEADAAAZXlkPT9rygDQCwfmUyIAGAAAymPl%20XJhBMgD00MY5Lx0yABgAAMpkl5wtAkCPLJNLspwMAAYAgLI5Jh8RAaAHr0p/ns1kADAAAJTRadlT%20BIBu+kr2FwHAAABQTgNyUdaVAaAbDs7nRAAwAACU1wq5JEvKALAYm+YnLv8DMAAAlNs2brQGWIzl%20c1mWlQHAAABQdu/Ip0UAWKh++Vk2kAHAAABQBd/IfiIALMSp2VcEAAMAQDX0ywXZSgaABXh/ThAB%20wAAAUB3L5KqsIQPAq+yT74sAYAAAqJY18mvfBwDwCpvml+kvA4ABAKBqts9PPOYCvGSFXJYhMgAY%20AACq6NCcLAJAkmRgLnb3P4ABAKC6Pp+jRABIR87JHjIAGAAAqv2Sdy8ZgNr7co4UAcAAAFBtAzI2%20m8gA1NoR+ZIIAAYAgOpbIddmTRmA2npTzk2HDAAGAIA6WDNXufkaqKktc0kGygBgAACo0wvgQTIA%20tbNurslyMgAYAADqZC9HYIHaWSG/yaoyABgAAOrmXfm6CECNDM6vs7EMAAYAgDoaleNFAGqiX36a%203WQAMAAA1NW3c4gIQC181+MdgAEAoM765Rd5qwxA5f1vPiQCgAEAoN4G5uIMkwGotOPzOREADAAA%20LJkrsq0MQGUdk9NEADAAAJAky+VqN2MDFfX2/NCXngIYAAD4j5VzbYbKAFTO8Pwi/WUAMAAA8F9r%205dqsLANQKTvnVxkkA4ABAIBX2ihXZBkZgMrYMldlaRkADAAAvNaOuTxLygBUwqYZl+VlADAAALBg%20e+SyDJYBKL0NM87HmgAMAAAsypvz6ywhA1Bqa+farC4DgAEAgEXbO5e6NAsosaG5PmvLAGAAAGDx%203uLebKC01sz1WVcGAAMAAN2zb37um7OBElol12Y9GQAMAAB03yH5hQkAKJmV87tsIgOAAQCAnjk0%2056afDEBprJLfZTMZAAwAAPTckfl5BsgAlMKquS6bywBgAACgd0bkEtcBAiUwNDd5+w9gAACgL/bP%20r7KEDEChrZ3rs4EMAAYAAPpm31yawTIAhbVhxrv5H8AAAEAjvCVXZxkZgELaONdnTRkADAAANMYb%20c1WWlQEonE1zfdaQAcAAAEDjDMvVGSIDUCjb58asJgOAAQCAxtol47O6DEBhvDHXZUUZAAwAADTe%205hnvnm2gIPbP1VlOBgADAADNsW5uylYyAG13RC7x/SQABgAAmmnV3JBdZADa6iM5PwNkADAAANBc%20y+fa7CMD0DYn5nteQQIYAABohaVyeQ6VAWiDjpyaU2QAMAAA0CoDc0HeLwPQYgPyk3xKBgADAACt%201C8/zCnpEAJomaXz6xwlA4ABAIDWOzE/cg0X0CKr5ffZVwYAAwAA7fGeXJVlZQCabtPcnO1kADAA%20ANA+w3NT1pABaKpdcmPWlgHAAABAe22Vm7KJDEDTvD3XZUUZAAwAALTfupmQYTIATTEyF2WwDAAG%20AACK4fW5JofKADRYv5yW07xa/P/t3Xusl/Vhx/EPcDhc5SKCXEQQsXKpILJ5AbReWHV4sJvtsbUM%20tnbtSdY1kDXZTrKkhWx/9KxZN2mbtGjTBeKqgzoXKK0WkFqhgAWRmxcuioJDRQreFRT2R6mrLSLn%20cH6/87u8XomJmJjo+5zk/J7P+T7PA2AAAKCUdMnCzPFaQKAVdc+9mSUDgAEAgFLTLrNzl4O6QCsZ%20lF9kqgwABgAAStOnsyL9ZABO22VZn3EyABgAAChdV2RtRskAnJb6rEx/GQAMAACUtvOyNnUyAC3U%20Lo252+1EAAYAAMrBGbk3fysD0AKd859p8vkQwAAAQLmoyXeyIJ2FAJplUB7MrTIAGAAAKC/TsyID%20ZABO2aSsz6UyABgAACg/E7I+l8sAnJKGrPDgPwADAADlamB+ni/IAHyITvl+5qVWCAADAADl/LH+%20Dh/rgZMamJ/nr2UAMAAAUP4a8oCDvcAHmOhmIQADAACV9AH/YR/wgRP4ch7wuFAAAwAAlWRwHkpj%202gkBvKd7fphvu0UIwAAAQKWpSVP+O72EAJIkI7Imt8oAYAAAoDL9WR7OGBmATMv6fFQGAAMAAJXr%20gqzzYkCocp0yN3emmxAABgAAKlvn3JEF6SoEVKlz82BmygBgAACgOkzPqlwgA1ShT+TRXCYDgAEA%20gOoxLpsySwaoKp0zN/emtxAABgAAqkuX3JZF3goAVWNE1maml4ECGAAAqE6fyqOZIANUgRlZn7Ey%20ABgAAKheQ/Jg5vhZABWtZ+7KfE/9B8AAAFDtajI7yzJQCKhQl+WRfEYGAAwAACTJtdmYKTJAxanJ%207KzKMCEAMAAA8Fv9sjQL0l0IqCDnZWXmpEYIAAwAALzf9GzOVTJAhZiRzZkkAwAGAABO5LyszNzU%20CgFl7uwsznxnegAwAABwsp8KM70sDMrcp7I1U2UAwAAAwIe5KGvT6OcDlKUemZdFOUsIAAwAAJyK%20zmnKCk8Oh7JzfbamQQYADAAANMfV2ZrGdBACykTPzMtPM1gIAAwAADRXlzTloYwUAsrAlGxNQ9oJ%20AYABAICWuSKPZE46CgElrHfmZWnOEQIAAwAAp6NzZudXuUQIKFFT3fcPgAEAgNYyNmvTlFohoMSc%20nR9lcQYKAYABAIDW0jGN2ZJrhYCS0S4zsi2fFAIAAwAAre0jWZ4F3i8OJeGirMr89BECAAMAAIXQ%20LtPzpCeNQxvrkjlZnwlCAGAAAKCQzsy8rMwIIaCNTMljme2ZHAAYAAAoho9lc5rSSQgosv5ZkKUZ%20KgQABgAAiqVjGvNorhMCiqYmM/NEpgsBgAEAgGIbkeVZ4neRUBQfy4bMTU8hADAAANA26vJY5qSz%20EFBAA7MgKzNGCAAMAAC0pS6ZnR2ZIQQURMfMyhOZ7t0bABgAACgF52R+VmS0ENDKJmdTbssZQgBg%20AACgdFybR/KN9BACWsmFWZplGSkEAAYAAEpNbf4+T6XR+8nhtJ2ZpmzKFCEAMAAAUKr6pCmbUy8E%20tFhtZmVXGtNJCgAMAACUtguzMCsyTghogal5PLellxAAGAAAKA/XZkMWZogQ0AyX5qEszjAhADAA%20AFBO2qU+j+WfPL8cTsnwLMzaTBICAAMAAOWoa76ap9OYLlLASfRLU7amPu2kAMAAAED56pOmbE9D%20aqSAEzgzTdntkX8AGAAAqAznZF52pCEdpIDf0S2N2eWMDAAGAAAqy9DMyyYvCITjatOQnWnyvH8A%20DAAAVKLRWZiHco0QuPjPzsxLfykAMAAAULkm5YGsylQhqFIdMyPbMi+DpQDAAABA5ZuYxVltBKDq%201GZGHs/8DJcCAAMAANVjQhbnl0YAqu7i/3wpADAAAFB9rsjirMlUbz+n4i/+G7Ir8zNMCgAMAABU%20r8uzOA/nU34eUaF65B+yO/NyjhQAGAAA4I+yKDsyy9vQqTD9Mie78y8ZIAUABgAA+K1huS27Mye9%20paBCvqPnZndm+44GwAAAAH+oX2bnmczNICkoaxdnQZ7MTGdaADAAAMAHOyMzsyu3Z5QUlKF2+dMs%20y8ZMT40YABgAAODDdMoXsy2rUp8OYlA2OmdGtuQnmSwFAAYAAGiOiVmYJzIr3aSg5A3InOzN/IyW%20AgADAAC0xPDclv/N3AyRgpI1PgvyTGanjxQAGAAA4HT0yMzszMJcJQUlplOmZV3WZ3o6igGAAQAA%20WkNN6vNgnkyj37JSIoanKXtyZy6VAgADAAC0to+kKXuz0EPWaOPPTpOzME+kMX3FAMAAAACF0jn1%20WZb1aUh3MSi6AWnM01nmDRUAGAAAoDjGZ1725tu5WAqKpCZT8z/Zk6acKwYABgAAKKae+XI2Zlsa%20008MCmpE5mRXFucTfu8PgAEAANrKqDRlT5ak3nPYKYCemZFleSyz/d4fgEpQIwEAZa42danLvizK%20D7JJDlpF+0zI9ExLNykAqKQfbwBQCQZkZh7NmszM2WJwWsbk63k6D6XB5T8AlcUJAAAqyeW5PP+e%20NVmQu/OKHDTT4NycGblECAAMAABQDtpnYibmW1mWRbknrwvCKTgzdZme69JOCgAq+UMSAFSiTqnL%20/DyXH+TjHhDISfTOX+a+vJD5mezyH4DK5gQAAJWsZz6Xz+Vgfpwl+YnTALzPmalLfT6eWikAMAAA%20QGXonemZnjfyQBbl3rwqSNU7K1NSn+udDQHAAAAAlahr6lKX7+a+3JOleVmQqjQ0N+eTudxNkAAY%20AACg8meAm3Nz3s3aLMnybBCkSrTPuExNXS5xnz8ABgAAqCYdMjETkzyV5flx7s9hSSpWt1ybutyU%20/lIAYAAAgOo1LA1pyMu5P0vz0+wXpKKMzI25MZN82gEAAwAA/EbP3JJb8tvzAMvyliRl7axck8m5%20PkOkAAADAACcyG/OA7yZ1Vme5dmYo5KU2aeasZmauozziD8AMAAAwIfrksmZnOSFrMjyPJinJClx%20HTIuV2dyrkoXMQDAAAAAzXV2PpvPJnk+D2V1VuWRHBOlxD7FjM2kTMzk9BYDAAwAAHC6+qc+9Ule%20zMNZ5daAEtAxYzI5k3JVeogBAAYAAGht/VKXuiSHsjbrsi7r8mtRimporshluSyXpFYMADAAAECh%209coNuSFJsi+rsjob8qu8LUvBdM/FGZ+JuSpniwEABgAAaAsDjt8c8EY2ZH025tE8nndkaaXL/jG5%20OJfk0oxKBzkAwAAAAKWga67MlUmSI9mRDdmQDdmY14Vptl75aMZnfMbnQpf9AGAAAIDS1TGjMirT%20k7yb7dmUrXk8W/OUcwEn0TUjMyqjMzrjMkgOADAAAEB56ZCRGXn8749kTx7LtjyWbdmWt8RJbS7I%20qIzOqIzOiLQXBAAMAABQCTpmWIalLklyOE9lV3ZkV3ZmV3bnSJU06JbhGZ7zj/81OO18WwCAAQAA%20KlltRmTEe396J88cnwKeyd48m+dzrGL+PwdlcIbk3AzP8AxPf196ADAAAEA1/xw+P+fn4+/9+XCe%20y548k73Zkz3ZkxezvyyeH9AlfTMoAzM4QzI45+Tc9Pc7fgAwAAAAH6Q25+W83/tn+/Ni9mdf9ufF%207Mv+vJRDOZRDebMN/vvOSO/0Sq/0Tf/0Tb8MSN/0zcB096UDAAMAAHB6+qbvCf/52zl4fAo4lEN5%20OW/njbyWIzmUd/JK3sqbee34EwZez+H3/p03jv9dj/des9cttUmSrumUHqlJr9SmW7qmU3qmY3ql%20V3odv+zv5dV8AGAAAACKrVP6u7MeADh1XrwDAAAABgAAAADAAAAAAAAYAAAAAAADAAAAAGAAAAAA%20AAwAAAAAgAEAAAAAMAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMAAAAAYAAAAAAA%20DAAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAAAAAYACQAAAAA%20AwAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAADAAAAAAAAYAAAAAAAD%20AAAAAGAAAAAAAAwAAAAAgAEAAAAAMAAAAAAABgAAAAAwAAAAAAAGAAAAAMAAAAAAABgAAAAAAAMA%20AAAAYAAAAAAADAAAAACAAQAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAwAAAAAAAGAAAAAAAAwAA%20AABgAAAAAAAMAAAAAGAAAAAAAAwAAAAAgAEAAAAAMAAAAAAABgAAAADAAAAAAAAYAAAAAAADAAAA%20ABgAAAAAAAMAAAAAYAAAAAAADAAAAACAAQAAAAAwAAAAAAAGAAAAAMAAAAAAAAYAAAAAwAAAAAAA%20GAAAAAAAAwAAAABgAAAAAAAMAAAAAIABAAAAADAAAAAAAAYAAAAAMABwOo5KAAAA4KrKAFD5jkgA%20AABwGt6WwADgWxUAAMBVFQaAEnFYAgAAAAOAAcC3KgAAACfj16oGgDJxSAIAAIDTcFACA0B5eEkC%20AAAAV1WlpZ0EBVCTw8oCAAC00NHU5l0ZWpsTAIXwTl4WAQAAoIUOuvw3AJSPfRIAAAC00PMSGADK%20x24JAAAAWuhpCQwABgAAAAADAAYAAwAAAIArKgwAxbRTAgAAgBbaJYEBoHxskQAAAKCFNktQCN5W%20Xxjt83K6ywAAANBsr6ZnjslQiAtVCuFotokAAADQAltc/hsAyssmCQAAAFrADQAGgDKzRgIAAIAW%20+KUEBoDysloCAACAFlglQWF4CGDh7Et/EQAAAJrl+QwQoTCcACgcNwEAAAA0l9//GwDK0DIJAAAA%20mul+CQrFLQCFMzRPiwAAANAsQ/KsCIXhBEDh7M6TIgAAADTDVpf/BoDy9BMJAAAAmuGnEhgAytM9%20EgAAADTDjyQoHM8AKGzd3TlXBgAAgFPybIbmmAyF4gRAIR1zBgAAAOCU3eXy3wBQvv5LAgAAgFO0%20UIJCcgtAoW3NaBEAAAA+1OaMFaGQnAAotO9LAAAAcArukKCwnAAotD7Zm84yAAAAnNSbGZSDMhSS%20EwCFdsBrLAAAAD7UIpf/heYEQOGNzaMiAAAAnNQl2ShCYTkBUHibslIEAACAk/iZy38DQGX4pgQA%20AACumtqWWwCKU3lTLpIBAADghDZmfI7JUGgdJCiKF/JpEQAAAE6oIdtFKDwnAIrVeV3+WAYAAIA/%20sD6X+v1/MTgBUCz78lkRAAAA/sDns1OEYnACoHiWZbIIAAAA7/NArhPBAFBpxmaDExcAAAC/492M%20yxYZisNrAItnU34gAgAAwO/4nsv/4nECoJj65cn0kgEAACBJciAX5oAMxeJIejG9nl9nqgwAAABJ%20ki9ljQjF4wRAsXv/zKMAAQAAkqzMdV7/ZwCoZBdkU7rIAAAAVLk3Mia7ZCgmtwAU26/zWm6QAQAA%20qHJfyf0iFJcTAG3RfElulAEAAKhi92WK4/8GgGrQL5tztgwAAECVejFj87wMxdZegjb5Zv98jsoA%20AABUpaOZ4fK/LXgGQNvYkfa5WgYAAKAKfS3/IUJbcAtAW2mfxZ4EAAAAVJ0f5xNORBsAqk3vPJzh%20MgAAAFVkey7LIRnahmcAtJ2DuSH7ZQAAAKrGgUx1+W8AqE67cnPekgEAAKgKb+WmbJeh7XgIYNt6%20Nk/lz92IAQAAVLyjmZb7ZTAAVLOt2ZubTAAAAEBFO5YvZYEMBoBqtzGHcoMMAABABWvMt0QwAJCs%20y7FcIwMAAFChvpavi2AA4DcezJv5ExkAAIAKNDv/LIIBgP+3Oi9kimcBAAAAFeVY/i7fkMEAwPut%20z7O50VcEAACoGIfz+dwuQ6nwG+fScl3uSU8ZAACACvBqbsl9MhgA+CCjszRDZAAAAMrcc7kxm2Qo%20Je0lKDHbckVWywAAAJS1X2S8y/9S447z0vNaFqRTJgkBAACUqdvzmbwiQ6lxC0Cp+ot8L91kAAAA%20ysyracjdMhgAaI7zcmcmyAAAAJSRX2VadshQmtwCULoOZUGO5UrPaQAAAMrC0Xw7t2a/EKXKCYBS%20NzF3ZKQMAABAiduWL2aNDKXMCYBStye35/VcmRopAACAEnUk/5pbs1uI0uYEQHkYnbm5TgYAAKAE%20/Syz8oQMpc/95eVhWybnpuwSAgAAKCk7c0uud/lfHtwCUD62Z14OZZyXAwIAACXhxXw1f5UtQpQL%20twCUm275Qv4x/YQAAADa0IF8J/+WV4QwAFBYPfM3mZkBQgAAAG3guXwr382rQhgAKI7aTMtX8lEh%20AACAItqSb+auHBbCAECxjU9DpnkqAAAAUHBvZUluz4ock8IAQFvplWm5NRN8LQEAgII4mtW5Kz/M%20y1IYACgFg1Of+lzqxY4AAEArXvqvy8L8KHulMABQas7KNZmcugyUAgAAOA0vZWWWZ0n2SWEAoLS/%20qiMzMZMyIcPFAAAAmmFHfplVWZ0n3OtvAKC89MxFuShjcmGGZnBqBAEAAH7PkezN09meTdmSLXlF%20EAMA5a8m52Rw+qRPzkrv9EiHdEx3WQAAoKq8liN5J6/mYF7KgRzIs3ku78gCAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVJX/A4zlkop3bSFJAAAAJXRFWHRkYXRlOmNy%20ZWF0ZQAyMDIxLTA0LTIzVDA0OjAwOjA2KzAwOjAwrEF0SQAAACV0RVh0ZGF0ZTptb2RpZnkAMjAy%20MS0wNC0yM1QwNDowMDowNiswMDowMN0czPUAAAAASUVORK5CYII=%22%20x=%2246.191%22%20y=%22-1.071%22/%3E%3Cimage%20width=%2262.502%22%20height=%2262.502%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AAAABHNCSVQICAgIfAhkiAAAG+VJREFU%20eJzt3Xu8f/lA7/HXmDHjlnGLXDrkNieJikNRoYQoPU6d9MijkFxySSmSCOUSuolyLcJUOEedXHMp%20HAolko5Gbl3cjdvIfcbv/LHmd2aMGb/f3mvtvfb3+3k+H4/9x/jt9fm+9/b9rvXea63P+hQAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADOGYtQPsk/NVP1L9ePUt1aUb52cH4Mg+%20VL2xemb1rOqL68bZeyMcBC9XPbf61rWDALAR/rb6oeo9awfZS9teAC5Rva662tpBANgo766uV526%20dpC9cr61A+yxx+TgD8DOfV31u2uH2EvbfAbgitW72v6SA8DeOFSdVL197SB7YZsPjrdqu38+APbW%20MU3Hkq20zQfIq64dAICNt7XHkm0uABdeOwAAG++r1g6wV7a5AAAA50EBAIABKQAAMCAFAAAGpAAA%20wIAUAAAY0HFrBziA7lo9ee0QACzqLtWT1g5xkDgDAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAak%20AADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoA%20AAxIAQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADA%20gBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxI%20AQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQA%20ABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwoOPWDsDijquuVV2+usDK%20WZb22eq91ZurM1bOAmfnc8fGUQC2x4nV/as7V5dYOcte+0j15OqR1WkrZ2FsPndwAD2pOrSLr7us%20EXamq1Rva3c/7yZ/nVJdeYHfH+yGz91muUu7+3mfvkbY/eAegM13YvWi6uprB1nBSU0/+0XXDsJw%20fO587jaeArD57t+YO6HDTqrut3YIhuNz53O38RSAzXZsdae1QxwAd839LOwfn7uJz92GUwA227Wr%20S64d4gC4ZHXNtUMwDJ+7ic/dhlMANtvl1g5wgPhdsF8uu3aAA+QKawdg9xSAzXb82gEOkI+vHYBh%20mAJ3FvugDaYAsA2+UL117RAM45+q09cOAXMpAGyDF+cMAPvnY9VfrB0C5lIA2HSfqx64dgiG88Cm%209x5sLAWATXZ603Sst6wdhOG8uenJcp6Nz8ZSANhUb6++tzp57SAM6xlN78F3rB0EdsNDHMb03upv%201g6xC6dX76v+qnpZ081/sKaXVdeoblbdpGk66ibuV2/QtJIhA9nENyrzvb66zdohYEt8oXrhmV+b%206rnVD64dgv3lEgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAYASH1g5w0CgAADAgBQAABqQAAMCAFAAA%20GJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIAB%20KQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAAR23dgDYhQtWN6++pbp0dcy6cRjU%20oepD1Rurl1afXjcO7IwCwKa5U/XwpgM/HBQfqh5Q/f7aQeBouQSw2T6/z9ut7THVU3Lw5+C5dNN7%2083fWDrJLo+1LSAHYdO/b5XbvXTTF/rhT9TNrh4AjuFd157VD7MJu9yXvWTQF+0oB2Gxvrk7dxXZ/%20uXSQPXahptP+sAkeXl147RA79IpdbPOR6i1LB2H/KACb7YzqyTvc5u3Vy/cgy166WU77szm+uuk9%20u0leWr1zh9s8sWkfxIZSADbfo6pTjvJ7z6juXn1h7+LsieusHQB26LprB9ihzzftG472gH5K076H%20DaYAbL7Tqlt15BLwueoObd5f/1WXWjsA7NAmnrF6afUTTfuKr+SUpn3OJ/c8EXtKAdgO76qu13Tt%208SPn+LcvVM9r+ovk5H3OtRTvUzbNpr5nn9m0L3l+X36m8NSmfcz1mvY5bDjPAdgen6weWD24ulZ1%20ueoT1T9VH18xF7BZ/rG6dXXx6huqE5tmDr0l1/y3igKwfc6o3nTmF8Bufax6zdoh2DubepoKAJhB%20AQCAASkAADAg9wCwzZ5R/fXaIdhoN6xut3YI2AsKANvsVdVT1w7BRjs9BYAt5RIAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABjQcWsHAIZy%20oeq61QnVp6t/qD61aiIYlDMAwH742uoPqo9Vr6peWr3mzP/+w+qKqyWDQSkAwF67cfXG6o7V8ef4%20t/NXtz/z32+yv7FgbAoAsJduVb24utQRvu8S1Z9VX7/niYBKAQD2zq2r51YXOMrvP7H646azAsAe%20UwCAvfCjTQf/E3a43TdV910+DnBOCgCwtDtXJ7f7WUYPqq65XBzg3CgAwJLuXj2pefuWE6pn5FIA%207CkFAFjK/arfq45ZYKxvru69wDjAeVAAgCU8pHrkwmP+avUNC48JnEkBAOY4pvqt6sF7MPYJTQ8P%20OnYPxobhKQDAbh1TPba9PVV//epn9nB8GJYCAOzGsdXTqnvuw2s9PA8IgsUpAMBOHV89q+kRvvvh%20ArkUAItTAICdOKF6TvU/9vl1v626xz6/Jmw1BQA4WheuXlD9wEqv/2vVVVd6bdg6CgBwNE5sWsL3%20pitmuFDT0sH2W7AAHyTgSC5evaS6wdpBqhtWP7V2CNgGCgDwlVymelXTdLwlnF69ZeYYj6quND8K%20jE0BAM7LZau/rL5xofE+X/1IdYvqYzPGuUj11JZ55DAMSwEAzs2Vqle33KN4P13duvrT6n3VfWaO%20d5OmVQeBXVIAYDk3r57X9Nftoaa/eF9f/XTTDWyb4r9Wr6mustB4n6xu1XQfwWFPO8d/78avV/9l%205hgwLAUA5rtw9UfVX1TfX13szP/9/NX1mh6X+8Y2Y2Gba1WvrC6/0Hgfr2525phnd6i6S3XajLEv%20Wj05lwJgVxQAmOfEpr9kb3uE7zup6SB45b0ONMN1mq75X2ah8T7adPB/3Xn8+79X9535GjevfmLm%20GDAkBQB275JNB8wbHuX3X6o6uYP5SNtvr/6qKeMS3l99R/V3R/i+p1Qvn/lav9VyZyxgGAoA7M5l%20mg6Y19nhdt/WwVvd7kbVi5pOqS/h388c861H8b2Hqjs13SewWyc2XQoAdkABgJ07PD3uWrvc/mHV%201ZaLM8stqxdXX7XQeO9uukP/7TvY5t+qX5z5uresbjdzDBiKAgA7c6XmT4+7YPX01r8UcHha3gUX%20Gu+UptP+79rFtk+oXjbz9R9bXWHmGDAMBQCO3klNB/8lpsetvbrdbavnNq3ut4R/qL6zeu8utz88%20K+A/Z2Q4salIAEdBAYCjc43qFS37F+Zaq9vdpXpmddxC472haZGgD88c51+rB8wc4/s68owMIAUA%20jsZ1mp6Hf9mFx71Q013w+zmP/R7VE1vus//q6rurjyw03u9W/2fmGI+tvmaBLLDVFAD4ypaeHndO%20N67utkdjn9P9mg6wSxWOVzTdfDfnYT7n9MXqDtWnZoxxyepJi6SBLaYAwHm7cdMd8ktNjzsvj265%20x+6el1+pHrngeC9oOvjPuWZ/Xt5dPWjmGLeubrNAFrbHobUDHDQKAJy7WzUd/C+yD6914fbukbbH%20VL/d/APq2T27+sHqswuOeU6PaVqPYI7fa7mnGsLWUQDgy92m+rPqAvv4mt/V8qvbHVM9rvrZBcc8%20ufqx6gsLjnluvtj0gKDPzBjjUk33AwDnQgGAL3XbpoV9zr/Cay+5ut2xTSvuLTnV8InV7avTFxzz%20K3lb9ZCZY9ym+qH5UWD7KABwlru27PS4nbpo9dTmXwo4vuk0/e1nJzrLo5tuVvzigmMejd+o/nrm%20GE+oLr1AFtgqCgBM7tF0oFj7M/HdzVvd7oTqOS37V++jmmYQrOHwpYA59xt8ddN9EMDZrL2zg4Pg%20l1t2etycKWxVv9nuVre7SNONiz8w8/UPO1Tdp/nP6Z/rlOqhM8e4bcv9XmArKACM7leqX11wvOc1%20LRL08RljXKydr253YvWSpoV4lnCo6ebB31xovLke3ZGXFj6SJ1SXWCALbAUFgFHtxfS4P2469f6u%209nd1u4tXL61uMPM1Dzuj+skO1h30pzfd0/C5GWNcNpcC4P9TABjRsU2P4F1yetyTqx/vrDvkn9x0%20UJ7jsR35UsBlqldW15v5Woed3vQkvqctNN6S/rl6xMwxbpdLAVApAIzn2KY77X9ywTF/r/qpvvQO%20+cOr231yxrgnNk29Oy9f2/Tc/GvNeI2z+3zTtLmTFxpvLzyi+vuZYzy+6awJDE0BYCTHN90hf7Sn%201o/Go6p7du6PGf236v4zx/++6kfP5X+/UtOz+K8+c/zDPl19f9MDkA6y05vK25wHEV2uaXohDE0B%20YBQXarpB7wcXHPPBHfla/+Orl898ncf1pY+0PalpFb6l1g/4z6aD/9xLFvvlzc1f1+CO1S0WyAIb%20SwFgBBduOvjffKHxDlX37uhmDxy+FDBn0ZxLdtasgGs0/eV/hRnjnd3Hq+9pWvFwkzy0etPMMX6/%20acYFDEkBYNtdrOkv8O9eaLwvNj2z/zE72Obd1QNnvu6tmw56r266m30JH2pa8fB1C423n77Q9P/D%20nMcSX77pEg4MSQFgm128aW78ty403hlNp47/YBfbPq7phr05Hthy89g/0FSK3rzQeGv4+6b1E+a4%20c3WzBbLAxlEA2Ga/1nLT4z5f/XD19F1uf/jMwZzV7Zbyr9UNq39aOccSfqV664ztj6me1P4s+wwH%20igLANltqRb/PNR38594h/y9Njx1e079U39n0sKJt8LmmtRPOmDHGlXIpgAEpAPCVfappKt7zFhrv%20t6vXLDTWTv1z06OC/2Ol198rf9v8RxbfrbrpAllgYygAcN4+3nR9eO40vrM7vLrdfl8KeGPTX/7v%202+fX3S8Pav6lgCfnUgADUQDg3H2sadrg3+zB2G9runa9X/6uaarfqfv4mvvtc00PCJpzKeDrqocv%20EwcOPgUAvtwHqxs1nVreK7/R/NXtjsarmu72/+g+vNbaXlf9zswx7tl0pgS2ngIAX+rfq++o3rLH%20r3NG0+p2n93D13hx9b3NW49g0zywevuM7c/XtBDShZeJAweXAgBn+demm+TmHEB24p+rh+3R2M+v%20/nsHY9rhfvpMU7H64pG+8Su4ckf3lEfYaAoATE6pvr39nx73qOoNC4/5J01rHnxu4XE3xWur3505%20xs82vR9gaykAUP/QdN33vSu89uHV7T6/0HhPqX6seY/I3Qb3r94xY/vzNa0VcIFl4sDBowAwutdX%2031V9eMUM/9i0zv1cf1LdtXmnv7fFp5uevHhuyzQfrZOq+ywTBw4eBYCRvbppnv/H1g7SNP3sjTPH%20uEHmsZ/dK6snzBzj6xbIAQeSAsCoXlHdsjpt7SBnOr1poaEvzBjjinmk7Tn9QvXOtUPAQaQAMKI/%20b5oe959rBzmHNzf/AP5TTTMZmHyq6Xcy51IAbCUFgNE8u2lhn4N6h/xDm/cMgmOqp+ZSwNm9vOnm%20SOBsFABGcnLTHfJzTrPvtc83zWOfk/FKLXNT4Ta5b9NDnoAzKQCM4olNB9ZNmB73puavbnePpscZ%20Mzmt6R4LlwLgTAoAI/j1puVeN2l63EOq/ztj+8OPtHUp4Cx/2fQ7AVIA2H6ParoTfNMstbrdQ5eJ%20szV+rvqPtUPAQaAAsM1+s/rFtUPM8PrqMTPHuFd1wwWybItPNJ0NguEpAGyzt64dYAEPaN7Pcb6m%20WQEXXCbOVnhh9Yy1Q8DaFAA42D5X3al5lwKuntXtzulerbP2AxwYCgAcfK+tHjdzjJ/L6nZn94mm%20BwTBsBQA2AwPqN4+Y3ur2325F1R/vHYIWIsCAJvh09UdmjeV8aTqwYuk2R73qj64dghYgwIAm+Nv%20qsfPHOM+1X9bIMu2+Eh1l7VDwBoUANgs92ve6nbHVU/PpYCze171nLVDwH5TAGCzfLq6c/Meafv1%20TfcUcJZ7VB9aOwTsJwUANs8rqifNHOMXq+sukGVbnNp0PwAMQwGAzXSf6l0ztj+u+oPq+GXibIVn%20V89dOwTsFwUANtOnmn8p4FrVLy0TZ2vcrfrw2iFgPygAsLn+qumv+DkeUH3LAlm2xYere68dAvaD%20AgCb7eebt7rdcU1rBZx/mThb4Y+qP1s7BOw1BQA222nVHZt3KeDaTdMLOcs9qo+uHQL2kgIAm+/l%20TXP75/jl6hsXyLIt3t+0fgJsLQUAtsPPVu+Zsf3xTSXCpYCzPL3687VDwF5RAGA7LLG63Tc33VPA%20WZ63dgDYKwoAbI8XVifPHOMh1TfMjwIcdAoAbJefrt47Y/sTmqYWHrtMHOCgUgBgu3y86WE2c1w/%20c+Fh6ykAsH2eXz1r5hgPq66xQBbggFIAYDvds/rgjO1dCoAtpwDAdvpI0/0Ac3zrAmMAB5QCANvr%20f1b/a+YYD6+utkAW4IBRAGC73a360IztL1T9YfYVsHV8qGG7ndr0lMA5blDdfYEswAGiAMD2+5Pq%20T2eO8ajqqgtkAQ4IBQDGMHd1uwtVT6mOWSYOsDYFAMbwgeZfCrhx89cbAA4IBQDG8czqf88c49er%20Ky+QBViZAgBjuUf1sRnbXziXAmArKAAwlvc1f8nf76rutEAWYEUKAIznadWLZ47xG9V/WSALsBIF%20AMZ056aVA3frok1rBbgUABtKAYAxvbf6hZlj3LS6w/wowBoUABjX71cvmTnGb1dXWCALsM8UABjX%20oequ1SdnjHFi9cRl4gD76bi1A8AeulHe40fjtdXNZmx/q+rR1TuWiXOg3HDtALBX7BzZZrc784u9%20d9+1AwA74xIAAAxIAQCAASkAADAg9wBsn+Oqa1WXrT5RvbV5y8ACY7pEdY2mmR7vr95cnbFqIhbl%20DMD2OLF6ZPXB6u+rF1SvPvO/n19de71owAb5pqb9xweb9iEvaNqnfLB6RNNTINkCCsB2uEr1t9X9%20mlr72R1XfV/1+jb3jvgvrh0AdmhT37O3b9pX3KovP0N8yer+TfsaS0JvAQVg851Yvai6+hG+74Tq%20qdX37Hmi5X147QCwQx9aO8Au3LxpfYfjj/B9JzXtc5wJ2HAKwOa7f0c++B92bPX46vx7F2dPvGHt%20ALBDf7d2gB06vmnfcOxRfv9JTWcc2WAKwGY7tp2vy37V5j31bQ0va7r+CJvgQ9VL1w6xQ7do56f1%2075obyTeaArDZrt10XW6nbrJ0kD32meqX1g4BR+mXqk+vHWKHbryLbS5ZXXPhHOwjBWCzXW6X211+%200RT746nVb60dAo7gMU3X0TfNZXe5nZUgN5gCsNmOdLPO0tut7eerO+ZyAAfPB5rem/deO8gujbYv%20Iddv2DxPq55V3bS6bnWZ6phVEzGqQ03X+9/QdJ/KZ9aNAzujALCJPtP0cKPnrx0EYFO5BAAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAgBQAA%20BqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAAEZwaO0AB40CAAAD%20UgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAF%20AAAGpAAAwIAUAAAYkAIAAANSAABgQMetHYBVXL96ztohduH06v3VK6uXVJ9fNQ1Mjq9uXt24umyb%20uV+9/toB2H+b+EZlvstXP7x2iBl+rnpndffqpStnYWw3rx5fXXntILBTLgGwqa5Svaj68bWDMKzb%20Vy/MwZ8NpQCwyY6tnlJda+0gDOebqic3vQdhIykAbLoTqoetHYLhPKzp2j9sLAWAbXCL6mJrh2AY%20l2i69g8bTQFgG5y/uubaIRjGNXMDNVtAAdhspsGd5aJrB2AYF1k7wAFiH7TBFIDN9r61Axwgfhfs%20lw+sHeAAec/aAdg9BWCzvbk6de0QB8BHqresHYJh+NxNfO42nAKw2c5omoo0uic2/S5gP5zRNP10%20dD53G04B2HyPqk5ZO8SKTmn6HcB+emT1trVDrMjnbgsoAJvvtOpWjVkCTmn62T+5dhCGc1p1y8Ys%20AT53W0IB2A7vqq5XPbzputy2O7XpZ71e088Oazj8uXtEY9wT4HO3Zcxl3R6frB5YPbjp0bhXqC6w%20aqLlfbb6j6Ybj1x75CA4rXpA9aB87tgwCsD2OaN605lfwP7wuWPjuAQAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQ%20AgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAAIzg0NoB%20Dprj1g5wAD3pzC8A2FrOAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABbXMB+OTaAQDYeKetHWCv%20bHMBeNfaAQDYeO9cO8BeOWbtAHvoik0lYJtLDgB751B19eodawfZC9t8cPy36o/WDgHAxnpWW3rw%20r+0+A1B1iep11dXWDgLARnlXdf3q1LWD7JVtPgNQ9dHqxtVrV84BwOZ4fXWjtvjgX9t/BuCw81U/%20XP1YdZ3qaxrnZwfgKztUfbB6Y3Vy9ezqi6smAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAACW8v8AxyHd8amiKS4AAAAASUVORK5CYII=%22%20x=%22.374%22%20y=%2219.528%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "13f4dbe3-4d9a-49c1-9861-f6752ab437ba",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": -24
              }
            },
            {
              "id": "e6183e3b-2fe5-4ad1-9100-131b86e944dd",
              "type": "basic.output",
              "data": {
                "name": "capture_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 968,
                "y": 24
              }
            },
            {
              "id": "96b8580d-c157-4c3f-8d9f-a9a78ba9f250",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": 72,
                "y": 32
              }
            },
            {
              "id": "c32611f5-ece2-4234-a65f-b5a85a3988c0",
              "type": "basic.input",
              "data": {
                "name": "ov7670_pclk",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 88
              }
            },
            {
              "id": "8879957f-53f1-43e6-82ab-0c193136629b",
              "type": "basic.input",
              "data": {
                "name": "ov7670_vsync",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 144
              }
            },
            {
              "id": "8c4d501b-883d-4063-8735-3011e2352203",
              "type": "basic.output",
              "data": {
                "name": "capture_data",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 976,
                "y": 176
              }
            },
            {
              "id": "64e80ac2-8d86-421b-a9b2-d2b0275f4f49",
              "type": "basic.input",
              "data": {
                "name": "ov7670_href",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 208
              }
            },
            {
              "id": "efd6da35-ded9-4b6a-b3bf-58146a52594b",
              "type": "basic.input",
              "data": {
                "name": "ov7670_d",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 72,
                "y": 264
              }
            },
            {
              "id": "ced72741-07bf-4908-a1a2-2a6e965d04dd",
              "type": "basic.input",
              "data": {
                "name": "rgbmode",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 320
              }
            },
            {
              "id": "d737ffc7-edfb-45f0-836c-d2937afab898",
              "type": "basic.output",
              "data": {
                "name": "capture_we"
              },
              "position": {
                "x": 976,
                "y": 328
              }
            },
            {
              "id": "fda7ee68-674a-41e9-b1a2-f33278ec5d91",
              "type": "5eacbbbc2f119b18952619f7db95097ca1014e5a",
              "position": {
                "x": 72,
                "y": 392
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\n//   Felipe Machado Sanchez\n//   Area de Tecnologia Electronica\n//   Universidad Rey Juan Carlos\n//   https://github.com/felipe-m\n//\n//   ov7670_capture.v\n//   \n//-----------------------------------------------------------------------------\n/*\nmodule ov7670_capture\n  #(parameter\n    // VGA\n    //c_img_cols    = 640, // 10 bits\n    //c_img_rows    = 480, //  9 bits\n    //c_img_pxls    = c_img_cols * c_img_rows,\n    //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;\n    // c_nb_img_pxls = log2i(c_img_pxls-1) + 1\n    //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288\n    // QQVGA\n    //c_img_cols    = 160, // 8 bits\n    //c_img_rows    = 120, //  7 bits\n    //c_img_pxls    = c_img_cols * c_img_rows,\n    //c_nb_line_pxls = 8, // log2i(c_img_cols-1) + 1;\n    //c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15\n    // QQVGA/2\n    c_img_cols    = 80, // 7 bits\n    c_img_rows    = 60, // 6 bits\n    c_img_pxls    = c_img_cols * c_img_rows,\n    c_nb_line_pxls = 7, // log2i(c_img_cols-1) + 1;\n    c_nb_img_pxls =  13,  //80*60=4800 -> 2^13\n\n\n    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)\n    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)\n    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)\n    // word width of the memory (buffer)\n    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue\n  )\n  (\n   input              rst,    // FPGA reset\n   input              clk,    // FPGA clock\n    // camera pclk (byte clock) (~40ns)  \n    // 2 bytes is a pixel\n    input             pclk,\n    input             href,\n    input             vsync,\n    input             rgbmode,   // RGB444 or YUV422\n    input             swap_r_b,  // swaps red with blue\n    output     [11:0] dataout_test,\n    output reg [3:0]  led_test,\n    input      [7:0]  data,\n    output     [c_nb_img_pxls-1:0] addr,\n    output     [c_nb_buf-1:0]      dout,\n    output            we\n  );\n*/\nparameter\n    // QQVGA/2\n    c_img_cols    = 80, // 7 bits\n    c_img_rows    = 60, // 6 bits\n    c_img_pxls    = c_img_cols * c_img_rows,\n    c_nb_line_pxls = 7, // log2i(c_img_cols-1) + 1;\n    c_nb_img_pxls =  13,  //80*60=4800 -> 2^13\n\n\n    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)\n    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)\n    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)\n    // word width of the memory (buffer)\n    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue;\n  \n  reg [3:0]  led_test;\n\n  reg        pclk_rg1, pclk_rg2;  // registered pclk\n  reg        href_rg1, href_rg2;  // registered href\n  reg        vsync_rg1, vsync_rg2;// registered vsync\n  reg [7:0]  data_rg1, data_rg2;  //registered data\n\n  reg        pclk_rg3, href_rg3, vsync_rg3; //3rd\n  reg [7:0]  data_rg3;     // registered data 3rd\n\n  // it seems that vsync has some spurious \n  wire       vsync_3up;\n\n  wire       pclk_fall;\n  wire       pclk_rise_prev;\n  wire       pclk_rise;\n  reg        pclk_rise_post;\n\n  reg        cnt_byte; // count to 2: 2 bytes per pixel\n  reg [c_nb_img_pxls-1:0]  cnt_pxl;\n  // number of pixels in the previous lines, not considering the actual line\n  reg [c_nb_img_pxls-1:0]  cnt_pxl_base;\n  reg [c_nb_line_pxls-1:0] cnt_line_pxl;\n  reg [c_nb_line_pxls-1:0] cnt_line_totpxls;\n\n   // there should be 4 clks in a pclk (byte), but just in case, make \n   // another bit to avoid overflow and go back in 0 before time\n  reg [4:0]    cnt_clk;\n  reg [4:0]    cnt_pclk_max;\n  reg [4:0]    cnt_pclk_max_freeze;\n\n  parameter    c_cnt_05seg_end = 50_000_000;\n\n  reg  [7:0]   gray;\n  reg  [c_nb_buf_red-1:0]   red;\n  reg  [c_nb_buf_red-1:0]   green;\n  reg  [c_nb_buf_red-1:0]   blue;\n   \n  // to test the number of\n  always @ (posedge rst, posedge clk)\n  begin\n    if (rst) begin\n      cnt_clk <= 0;\n      cnt_pclk_max <= 0;\n      cnt_pclk_max_freeze <= 0;\n      led_test[0] <= 1'b0;\n    end\n    else begin\n      if (href_rg2) begin\n        if (pclk_rise) begin\n          cnt_clk <= 0;\n          led_test[0] <= 1'b1;\n          cnt_pclk_max <= cnt_clk;\n          cnt_pclk_max_freeze <= cnt_pclk_max;\n        end\n        else\n          cnt_clk <= cnt_clk + 1;\n      end\n      else\n        cnt_clk <= cnt_clk + 1;\n    end\n  end\n\n  // register 3 times all the camera inputs to synchronize\n  always @ (posedge rst, posedge clk)\n  begin\n    if (rst) begin\n      pclk_rg1  <= 1'b0;\n      pclk_rg2  <= 1'b0;\n      href_rg1  <= 1'b0;\n      href_rg2  <= 1'b0;\n      vsync_rg1 <= 1'b0;\n      vsync_rg2 <= 1'b0;\n      data_rg1  <= 0;\n      data_rg2  <= 0;\n      // 3rd to detect falling edge\n      pclk_rg3  <= 1'b0;\n      href_rg3  <= 1'b0;\n      vsync_rg3 <= 1'b0;\n      data_rg3  <= 0;\n      pclk_rise_post <= 1'b0;\n    end\n    else begin\n      pclk_rg1  <= pclk;\n      pclk_rg2  <= pclk_rg1;\n      href_rg1  <= href;\n      href_rg2  <= href_rg1;\n      vsync_rg1 <= vsync;\n      vsync_rg2 <= vsync_rg1;\n      data_rg1  <= data;\n      data_rg2  <= data_rg1;\n      // 3rd\n      pclk_rg3  <= pclk_rg2;\n      href_rg3  <= href_rg2;\n      vsync_rg3 <= vsync_rg2;\n      data_rg3  <= data_rg2;\n      pclk_rise_post <= pclk_rise;\n    end\n  end\n\n  // since some times it is up up to 2 cycles, has to be '1' during\n  // the 3 following cycles\n  assign vsync_3up = vsync_rg3 && vsync_rg2 && vsync_rg1 && vsync;\n\n  // FPGA clock is 10ns and pclk is 40ns\n  //pclk_fall <= '1' when (pclk_rg2='0' and pclk_rg3='1') else '0';\n  assign pclk_fall = ((pclk_rg2 == 1'b0) && pclk_rg3)? 1'b1 : 1'b0;\n  assign pclk_rise_prev = (pclk_rg1 && (pclk_rg2 == 1'b0))? 1'b1 : 1'b0;\n  assign pclk_rise = (pclk_rg2 && (pclk_rg3 == 1'b0))? 1'b1 : 1'b0;\n\n  // each pixel has 2 bytes, each byte in each pclk\n  // each pixel -> 2 pclk\n  always @ (posedge rst, posedge clk)\n  begin\n    if (rst) begin\n      cnt_pxl          <= 0;\n      cnt_line_pxl     <= 0;\n      cnt_pxl_base     <= 0;\n      cnt_line_totpxls <= 0;\n      cnt_byte         <= 1'b0;\n    end\n    else begin\n      //if vsync_rg3 = '1' then // there are some glitches\n      if (vsync_3up) begin // new screen\n        cnt_pxl      <= 0;\n        cnt_pxl_base <= 0;\n        cnt_line_pxl <= 0;\n        cnt_byte     <= 1'b0;\n      end\n      else if (href_rg3) begin // is zero at optical blank COM[6]\n        if (pclk_rise) begin\n          if (cnt_byte) begin\n            cnt_pxl <= cnt_pxl + 1;\n            cnt_line_pxl <= cnt_line_pxl + 1;\n          end\n          cnt_byte <= ~cnt_byte;\n        end\n        if (href_rg2 == 1'b0) begin // will be a falling edge\n          cnt_line_totpxls <= cnt_line_pxl; // cnt_line_totpxls is to test\n          // it is not reliable to count all the pixels of a line,\n          // some lines have more other less\n          cnt_pxl <= cnt_pxl_base + c_img_cols;\n          cnt_pxl_base <= cnt_pxl_base + c_img_cols;\n          cnt_line_pxl <= 0;\n        end\n      end\n      else begin\n        cnt_byte <= 1'b0;\n        cnt_line_pxl <= 0;\n      end\n    end\n  end\n\n  //dataout_test <= \"00\" & std_logic_vector(cnt_line_totpxls); // 2 + 10 bits\n  // assign dataout_test = {7'b0000000, cnt_pclk_max_freeze}; // 7 + 5 bits\n\n  always @ (posedge rst, posedge clk)\n  begin\n    if (rst) begin\n      red   <= 0;\n      green <= 0;\n      blue  <= 0;\n      gray  <= 0;\n    end\n    else begin\n      if (href_rg3) begin  // visible\n        //if (cnt_clk == 3'b001) begin // I think this is the safest\n        if (pclk_rise == 1'b1) begin\n          if (cnt_byte == 1'b0) begin\n            if (rgbmode) begin\n              if (swap_r_b == 1'b0)\n                red <= data_rg3[3:0];\n              else\n                blue <= data_rg3[3:0];\n            end\n            else  // YUV (gray first byte)\n              gray  <= data_rg3;\n          end\n          else begin\n            if (rgbmode) begin\n              green <= data_rg3[7:4];\n              if (swap_r_b == 1'b0)\n                blue <= data_rg3[3:0];\n              else\n                red <= data_rg3[3:0];\n            end\n            //else\n               // do nothing, not getting U or V\n          end\n        end\n      end\n    end\n  end\n\n  //dout <= (red & green & blue) when unsigned(sw13_rgbmode) < 3 else gray;\n  assign dout = (rgbmode) ? {red, green, blue} : {4'b000, gray};\n  //dout <= std_logic_vector(cnt_pxl(7 downto 0));\n  assign addr = cnt_pxl;\n\n  assign we = (href_rg3 && cnt_byte && pclk_rise_post)? 1'b1 : 1'b0;\n\n//endmodule\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "pclk"
                    },
                    {
                      "name": "vsync"
                    },
                    {
                      "name": "href"
                    },
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "rgbmode"
                    },
                    {
                      "name": "swap_r_b"
                    }
                  ],
                  "out": [
                    {
                      "name": "addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "dout",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "we"
                    }
                  ]
                }
              },
              "position": {
                "x": 280,
                "y": -24
              },
              "size": {
                "width": 536,
                "height": 464
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "13f4dbe3-4d9a-49c1-9861-f6752ab437ba",
                "port": "out"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "rst"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "ced72741-07bf-4908-a1a2-2a6e965d04dd",
                "port": "out"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "rgbmode"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "fda7ee68-674a-41e9-b1a2-f33278ec5d91",
                "port": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "swap_r_b"
              }
            },
            {
              "source": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "we"
              },
              "target": {
                "block": "d737ffc7-edfb-45f0-836c-d2937afab898",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "dout"
              },
              "target": {
                "block": "8c4d501b-883d-4063-8735-3011e2352203",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "addr"
              },
              "target": {
                "block": "e6183e3b-2fe5-4ad1-9100-131b86e944dd",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "efd6da35-ded9-4b6a-b3bf-58146a52594b",
                "port": "out"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "data"
              },
              "size": 8
            },
            {
              "source": {
                "block": "64e80ac2-8d86-421b-a9b2-d2b0275f4f49",
                "port": "out"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "href"
              }
            },
            {
              "source": {
                "block": "8879957f-53f1-43e6-82ab-0c193136629b",
                "port": "out"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "vsync"
              }
            },
            {
              "source": {
                "block": "c32611f5-ece2-4234-a65f-b5a85a3988c0",
                "port": "out"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "pclk"
              }
            },
            {
              "source": {
                "block": "96b8580d-c157-4c3f-8d9f-a9a78ba9f250",
                "port": "out"
              },
              "target": {
                "block": "67f6ed5d-b26a-49f7-843e-1f65a136ba18",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "5eacbbbc2f119b18952619f7db95097ca1014e5a": {
      "package": {
        "name": "1",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 584,
                "y": 200
              }
            },
            {
              "id": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
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
                "x": 304,
                "y": 168
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
                "block": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
                "port": "v"
              },
              "target": {
                "block": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "f79bd00eef4bd1a8ed5c1743705859b152db76fe": {
      "package": {
        "name": "bus8bits",
        "version": "1.0",
        "description": "Joins 8 cables in a 8bit bus",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9b523903-6033-48ee-9911-17cd4a0098fa",
              "type": "basic.input",
              "data": {
                "name": "in0",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 112
              }
            },
            {
              "id": "c3ded014-3d4c-4fe4-b6eb-60cebda43db0",
              "type": "basic.input",
              "data": {
                "name": "in1",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 160
              }
            },
            {
              "id": "727214f6-871c-4086-b363-38e9c9d6fa77",
              "type": "basic.input",
              "data": {
                "name": "in2",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 208
              }
            },
            {
              "id": "2f0c37bf-782f-4ff4-a948-092d72f663cb",
              "type": "basic.input",
              "data": {
                "name": "in3",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 256
              }
            },
            {
              "id": "869657d7-2582-484e-a7f9-b3767aa8572c",
              "type": "basic.output",
              "data": {
                "name": "dout",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 936,
                "y": 280
              }
            },
            {
              "id": "733d6c10-c99e-4ddc-8d03-29793ec8c46a",
              "type": "basic.input",
              "data": {
                "name": "in4",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 304
              }
            },
            {
              "id": "a31b590a-a4ef-4f19-bf04-082d40c70adb",
              "type": "basic.input",
              "data": {
                "name": "in5",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 352
              }
            },
            {
              "id": "40ac0610-323e-4121-8b8c-22221388630d",
              "type": "basic.input",
              "data": {
                "name": "in6",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 400
              }
            },
            {
              "id": "3512f8a7-dbc9-4dfe-be01-605af3aac1e1",
              "type": "basic.input",
              "data": {
                "name": "in7",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 448
              }
            },
            {
              "id": "147a73f0-707a-4bca-afed-7733cf4c0adb",
              "type": "basic.code",
              "data": {
                "code": "//-- 8bits_bus.v\r\n//-- Bit aggregator to generate a 8 bits bus.\r\n//-- Author: JdeRobot [FPGA-Robotics]\r\n/*\r\nmodule bus_8bits( \r\n\t\t//-- Inputs ports\r\n\t\tinput wire in0,\r\n\t\tinput wire in1,\r\n\t\tinput wire in2,\r\n\t\tinput wire in3,\r\n\t\tinput wire in4,\r\n\t\tinput wire in5,\r\n\t\tinput wire in6,\r\n\t\tinput wire in7,\r\n\t\t\r\n\t\t//-- Output ports\r\n\t\toutput wire [7:0] dout\r\n\t);\r\n*/\r\n\tassign dout[0] = in0;\r\n\tassign dout[1] = in1;\r\n\tassign dout[2] = in2;\r\n\tassign dout[3] = in3;\r\n\tassign dout[4] = in4;\r\n\tassign dout[5] = in5;\r\n\tassign dout[6] = in6;\r\n\tassign dout[7] = in7;\r\n\t\r\n//endmodule",
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
                      "name": "in2"
                    },
                    {
                      "name": "in3"
                    },
                    {
                      "name": "in4"
                    },
                    {
                      "name": "in5"
                    },
                    {
                      "name": "in6"
                    },
                    {
                      "name": "in7"
                    }
                  ],
                  "out": [
                    {
                      "name": "dout",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 360,
                "y": 120
              },
              "size": {
                "width": 480,
                "height": 384
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9b523903-6033-48ee-9911-17cd4a0098fa",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in0"
              }
            },
            {
              "source": {
                "block": "727214f6-871c-4086-b363-38e9c9d6fa77",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in2"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "c3ded014-3d4c-4fe4-b6eb-60cebda43db0",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in1"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "2f0c37bf-782f-4ff4-a948-092d72f663cb",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in3"
              }
            },
            {
              "source": {
                "block": "733d6c10-c99e-4ddc-8d03-29793ec8c46a",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in4"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "a31b590a-a4ef-4f19-bf04-082d40c70adb",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in5"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "40ac0610-323e-4121-8b8c-22221388630d",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in6"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "3512f8a7-dbc9-4dfe-be01-605af3aac1e1",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in7"
              }
            },
            {
              "source": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "dout"
              },
              "target": {
                "block": "869657d7-2582-484e-a7f9-b3767aa8572c",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "ca20160ef23057cb15d0594c21d2b02092446c79": {
      "package": {
        "name": "framebuf_80x60_12b",
        "version": "1.0",
        "description": "memory for 80x60 image, double port, one for writting and the other for reading. 12-bit word length",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22348.116%22%20height=%22333.816%22%20viewBox=%220%200%2092.105598%2088.322113%22%3E%3Cg%20transform=%22translate(1.23%205.286)%22%3E%3Cimage%20y=%228.953%22%20x=%22-1.229%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20preserveAspectRatio=%22none%22%20height=%2274.083%22%20width=%2274.083%22/%3E%3Crect%20ry=%221.388%22%20y=%2217.648%22%20x=%2246.023%22%20height=%2246.536%22%20width=%2239.376%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20y=%221.539%22%20x=%2242.801%22%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%221.539%22%20x=%2244.171%22%20font-size=%229.878%22%20font-family=%22Gill%20Sans%22%3EFrame%20buffer%20%3C/tspan%3E%3Ctspan%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%2212.449%22%20x=%2242.801%22%20font-size=%229.878%22%20font-family=%22Gill%20Sans%22%3E80x60%20image%3C/tspan%3E%3C/text%3E%3Cimage%20width=%2250.808%22%20height=%2250.808%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AAAABHNCSVQICAgIfAhkiAAAG+VJREFU%20eJzt3Xu8f/lA7/HXmDHjlnGLXDrkNieJikNRoYQoPU6d9MijkFxySSmSCOUSuolyLcJUOEedXHMp%20HAolko5Gbl3cjdvIfcbv/LHmd2aMGb/f3mvtvfb3+3k+H4/9x/jt9fm+9/b9rvXea63P+hQAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADOGYtQPsk/NVP1L9ePUt1aUb52cH4Mg+%20VL2xemb1rOqL68bZeyMcBC9XPbf61rWDALAR/rb6oeo9awfZS9teAC5Rva662tpBANgo766uV526%20dpC9cr61A+yxx+TgD8DOfV31u2uH2EvbfAbgitW72v6SA8DeOFSdVL197SB7YZsPjrdqu38+APbW%20MU3Hkq20zQfIq64dAICNt7XHkm0uABdeOwAAG++r1g6wV7a5AAAA50EBAIABKQAAMCAFAAAGpAAA%20wIAUAAAY0HFrBziA7lo9ee0QACzqLtWT1g5xkDgDAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAak%20AADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoA%20AAxIAQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADA%20gBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxI%20AQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQA%20ABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwoOPWDsDijquuVV2+usDK%20WZb22eq91ZurM1bOAmfnc8fGUQC2x4nV/as7V5dYOcte+0j15OqR1WkrZ2FsPndwAD2pOrSLr7us%20EXamq1Rva3c/7yZ/nVJdeYHfH+yGz91muUu7+3mfvkbY/eAegM13YvWi6uprB1nBSU0/+0XXDsJw%20fO587jaeArD57t+YO6HDTqrut3YIhuNz53O38RSAzXZsdae1QxwAd839LOwfn7uJz92GUwA227Wr%20S64d4gC4ZHXNtUMwDJ+7ic/dhlMANtvl1g5wgPhdsF8uu3aAA+QKawdg9xSAzXb82gEOkI+vHYBh%20mAJ3FvugDaYAsA2+UL117RAM45+q09cOAXMpAGyDF+cMAPvnY9VfrB0C5lIA2HSfqx64dgiG88Cm%209x5sLAWATXZ603Sst6wdhOG8uenJcp6Nz8ZSANhUb6++tzp57SAM6xlN78F3rB0EdsNDHMb03upv%201g6xC6dX76v+qnpZ081/sKaXVdeoblbdpGk66ibuV2/QtJIhA9nENyrzvb66zdohYEt8oXrhmV+b%206rnVD64dgv3lEgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAYASH1g5w0CgAADAgBQAABqQAAMCAFAAA%20GJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIAB%20KQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAAR23dgDYhQtWN6++pbp0dcy6cRjU%20oepD1Rurl1afXjcO7IwCwKa5U/XwpgM/HBQfqh5Q/f7aQeBouQSw2T6/z9ut7THVU3Lw5+C5dNN7%2083fWDrJLo+1LSAHYdO/b5XbvXTTF/rhT9TNrh4AjuFd157VD7MJu9yXvWTQF+0oB2Gxvrk7dxXZ/%20uXSQPXahptP+sAkeXl147RA79IpdbPOR6i1LB2H/KACb7YzqyTvc5u3Vy/cgy166WU77szm+uuk9%20u0leWr1zh9s8sWkfxIZSADbfo6pTjvJ7z6juXn1h7+LsieusHQB26LprB9ihzzftG472gH5K076H%20DaYAbL7Tqlt15BLwueoObd5f/1WXWjsA7NAmnrF6afUTTfuKr+SUpn3OJ/c8EXtKAdgO76qu13Tt%208SPn+LcvVM9r+ovk5H3OtRTvUzbNpr5nn9m0L3l+X36m8NSmfcz1mvY5bDjPAdgen6weWD24ulZ1%20ueoT1T9VH18xF7BZ/rG6dXXx6huqE5tmDr0l1/y3igKwfc6o3nTmF8Bufax6zdoh2DubepoKAJhB%20AQCAASkAADAg9wCwzZ5R/fXaIdhoN6xut3YI2AsKANvsVdVT1w7BRjs9BYAt5RIAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABjQcWsHAIZy%20oeq61QnVp6t/qD61aiIYlDMAwH742uoPqo9Vr6peWr3mzP/+w+qKqyWDQSkAwF67cfXG6o7V8ef4%20t/NXtz/z32+yv7FgbAoAsJduVb24utQRvu8S1Z9VX7/niYBKAQD2zq2r51YXOMrvP7H646azAsAe%20UwCAvfCjTQf/E3a43TdV910+DnBOCgCwtDtXJ7f7WUYPqq65XBzg3CgAwJLuXj2pefuWE6pn5FIA%207CkFAFjK/arfq45ZYKxvru69wDjAeVAAgCU8pHrkwmP+avUNC48JnEkBAOY4pvqt6sF7MPYJTQ8P%20OnYPxobhKQDAbh1TPba9PVV//epn9nB8GJYCAOzGsdXTqnvuw2s9PA8IgsUpAMBOHV89q+kRvvvh%20ArkUAItTAICdOKF6TvU/9vl1v626xz6/Jmw1BQA4WheuXlD9wEqv/2vVVVd6bdg6CgBwNE5sWsL3%20pitmuFDT0sH2W7AAHyTgSC5evaS6wdpBqhtWP7V2CNgGCgDwlVymelXTdLwlnF69ZeYYj6quND8K%20jE0BAM7LZau/rL5xofE+X/1IdYvqYzPGuUj11JZ55DAMSwEAzs2Vqle33KN4P13duvrT6n3VfWaO%20d5OmVQeBXVIAYDk3r57X9Nftoaa/eF9f/XTTDWyb4r9Wr6mustB4n6xu1XQfwWFPO8d/78avV/9l%205hgwLAUA5rtw9UfVX1TfX13szP/9/NX1mh6X+8Y2Y2Gba1WvrC6/0Hgfr2525phnd6i6S3XajLEv%20Wj05lwJgVxQAmOfEpr9kb3uE7zup6SB45b0ONMN1mq75X2ah8T7adPB/3Xn8+79X9535GjevfmLm%20GDAkBQB275JNB8wbHuX3X6o6uYP5SNtvr/6qKeMS3l99R/V3R/i+p1Qvn/lav9VyZyxgGAoA7M5l%20mg6Y19nhdt/WwVvd7kbVi5pOqS/h388c861H8b2Hqjs13SewWyc2XQoAdkABgJ07PD3uWrvc/mHV%201ZaLM8stqxdXX7XQeO9uukP/7TvY5t+qX5z5uresbjdzDBiKAgA7c6XmT4+7YPX01r8UcHha3gUX%20Gu+UptP+79rFtk+oXjbz9R9bXWHmGDAMBQCO3klNB/8lpsetvbrdbavnNq3ut4R/qL6zeu8utz88%20K+A/Z2Q4salIAEdBAYCjc43qFS37F+Zaq9vdpXpmddxC472haZGgD88c51+rB8wc4/s68owMIAUA%20jsZ1mp6Hf9mFx71Q013w+zmP/R7VE1vus//q6rurjyw03u9W/2fmGI+tvmaBLLDVFAD4ypaeHndO%20N67utkdjn9P9mg6wSxWOVzTdfDfnYT7n9MXqDtWnZoxxyepJi6SBLaYAwHm7cdMd8ktNjzsvj265%20x+6el1+pHrngeC9oOvjPuWZ/Xt5dPWjmGLeubrNAFrbHobUDHDQKAJy7WzUd/C+yD6914fbukbbH%20VL/d/APq2T27+sHqswuOeU6PaVqPYI7fa7mnGsLWUQDgy92m+rPqAvv4mt/V8qvbHVM9rvrZBcc8%20ufqx6gsLjnluvtj0gKDPzBjjUk33AwDnQgGAL3XbpoV9zr/Cay+5ut2xTSvuLTnV8InV7avTFxzz%20K3lb9ZCZY9ym+qH5UWD7KABwlru27PS4nbpo9dTmXwo4vuk0/e1nJzrLo5tuVvzigmMejd+o/nrm%20GE+oLr1AFtgqCgBM7tF0oFj7M/HdzVvd7oTqOS37V++jmmYQrOHwpYA59xt8ddN9EMDZrL2zg4Pg%20l1t2etycKWxVv9nuVre7SNONiz8w8/UPO1Tdp/nP6Z/rlOqhM8e4bcv9XmArKACM7leqX11wvOc1%20LRL08RljXKydr253YvWSpoV4lnCo6ebB31xovLke3ZGXFj6SJ1SXWCALbAUFgFHtxfS4P2469f6u%209nd1u4tXL61uMPM1Dzuj+skO1h30pzfd0/C5GWNcNpcC4P9TABjRsU2P4F1yetyTqx/vrDvkn9x0%20UJ7jsR35UsBlqldW15v5Woed3vQkvqctNN6S/rl6xMwxbpdLAVApAIzn2KY77X9ywTF/r/qpvvQO%20+cOr231yxrgnNk29Oy9f2/Tc/GvNeI2z+3zTtLmTFxpvLzyi+vuZYzy+6awJDE0BYCTHN90hf7Sn%201o/Go6p7du6PGf236v4zx/++6kfP5X+/UtOz+K8+c/zDPl19f9MDkA6y05vK25wHEV2uaXohDE0B%20YBQXarpB7wcXHPPBHfla/+Orl898ncf1pY+0PalpFb6l1g/4z6aD/9xLFvvlzc1f1+CO1S0WyAIb%20SwFgBBduOvjffKHxDlX37uhmDxy+FDBn0ZxLdtasgGs0/eV/hRnjnd3Hq+9pWvFwkzy0etPMMX6/%20acYFDEkBYNtdrOkv8O9eaLwvNj2z/zE72Obd1QNnvu6tmw56r266m30JH2pa8fB1C423n77Q9P/D%20nMcSX77pEg4MSQFgm128aW78ty403hlNp47/YBfbPq7phr05Hthy89g/0FSK3rzQeGv4+6b1E+a4%20c3WzBbLAxlEA2Ga/1nLT4z5f/XD19F1uf/jMwZzV7Zbyr9UNq39aOccSfqV664ztj6me1P4s+wwH%20igLANltqRb/PNR38594h/y9Njx1e079U39n0sKJt8LmmtRPOmDHGlXIpgAEpAPCVfappKt7zFhrv%20t6vXLDTWTv1z06OC/2Ol198rf9v8RxbfrbrpAllgYygAcN4+3nR9eO40vrM7vLrdfl8KeGPTX/7v%202+fX3S8Pav6lgCfnUgADUQDg3H2sadrg3+zB2G9runa9X/6uaarfqfv4mvvtc00PCJpzKeDrqocv%20EwcOPgUAvtwHqxs1nVreK7/R/NXtjsarmu72/+g+vNbaXlf9zswx7tl0pgS2ngIAX+rfq++o3rLH%20r3NG0+p2n93D13hx9b3NW49g0zywevuM7c/XtBDShZeJAweXAgBn+demm+TmHEB24p+rh+3R2M+v%20/nsHY9rhfvpMU7H64pG+8Su4ckf3lEfYaAoATE6pvr39nx73qOoNC4/5J01rHnxu4XE3xWur3505%20xs82vR9gaykAUP/QdN33vSu89uHV7T6/0HhPqX6seY/I3Qb3r94xY/vzNa0VcIFl4sDBowAwutdX%2031V9eMUM/9i0zv1cf1LdtXmnv7fFp5uevHhuyzQfrZOq+ywTBw4eBYCRvbppnv/H1g7SNP3sjTPH%20uEHmsZ/dK6snzBzj6xbIAQeSAsCoXlHdsjpt7SBnOr1poaEvzBjjinmk7Tn9QvXOtUPAQaQAMKI/%20b5oe959rBzmHNzf/AP5TTTMZmHyq6Xcy51IAbCUFgNE8u2lhn4N6h/xDm/cMgmOqp+ZSwNm9vOnm%20SOBsFABGcnLTHfJzTrPvtc83zWOfk/FKLXNT4Ta5b9NDnoAzKQCM4olNB9ZNmB73puavbnePpscZ%20Mzmt6R4LlwLgTAoAI/j1puVeN2l63EOq/ztj+8OPtHUp4Cx/2fQ7AVIA2H6ParoTfNMstbrdQ5eJ%20szV+rvqPtUPAQaAAsM1+s/rFtUPM8PrqMTPHuFd1wwWybItPNJ0NguEpAGyzt64dYAEPaN7Pcb6m%20WQEXXCbOVnhh9Yy1Q8DaFAA42D5X3al5lwKuntXtzulerbP2AxwYCgAcfK+tHjdzjJ/L6nZn94mm%20BwTBsBQA2AwPqN4+Y3ur2325F1R/vHYIWIsCAJvh09UdmjeV8aTqwYuk2R73qj64dghYgwIAm+Nv%20qsfPHOM+1X9bIMu2+Eh1l7VDwBoUANgs92ve6nbHVU/PpYCze171nLVDwH5TAGCzfLq6c/Meafv1%20TfcUcJZ7VB9aOwTsJwUANs8rqifNHOMXq+sukGVbnNp0PwAMQwGAzXSf6l0ztj+u+oPq+GXibIVn%20V89dOwTsFwUANtOnmn8p4FrVLy0TZ2vcrfrw2iFgPygAsLn+qumv+DkeUH3LAlm2xYere68dAvaD%20AgCb7eebt7rdcU1rBZx/mThb4Y+qP1s7BOw1BQA222nVHZt3KeDaTdMLOcs9qo+uHQL2kgIAm+/l%20TXP75/jl6hsXyLIt3t+0fgJsLQUAtsPPVu+Zsf3xTSXCpYCzPL3687VDwF5RAGA7LLG63Tc33VPA%20WZ63dgDYKwoAbI8XVifPHOMh1TfMjwIcdAoAbJefrt47Y/sTmqYWHrtMHOCgUgBgu3y86WE2c1w/%20c+Fh6ykAsH2eXz1r5hgPq66xQBbggFIAYDvds/rgjO1dCoAtpwDAdvpI0/0Ac3zrAmMAB5QCANvr%20f1b/a+YYD6+utkAW4IBRAGC73a360IztL1T9YfYVsHV8qGG7ndr0lMA5blDdfYEswAGiAMD2+5Pq%20T2eO8ajqqgtkAQ4IBQDGMHd1uwtVT6mOWSYOsDYFAMbwgeZfCrhx89cbAA4IBQDG8czqf88c49er%20Ky+QBViZAgBjuUf1sRnbXziXAmArKAAwlvc1f8nf76rutEAWYEUKAIznadWLZ47xG9V/WSALsBIF%20AMZ056aVA3frok1rBbgUABtKAYAxvbf6hZlj3LS6w/wowBoUABjX71cvmTnGb1dXWCALsM8UABjX%20oequ1SdnjHFi9cRl4gD76bi1A8AeulHe40fjtdXNZmx/q+rR1TuWiXOg3HDtALBX7BzZZrc784u9%20d9+1AwA74xIAAAxIAQCAASkAADAg9wBsn+Oqa1WXrT5RvbV5y8ACY7pEdY2mmR7vr95cnbFqIhbl%20DMD2OLF6ZPXB6u+rF1SvPvO/n19de71owAb5pqb9xweb9iEvaNqnfLB6RNNTINkCCsB2uEr1t9X9%20mlr72R1XfV/1+jb3jvgvrh0AdmhT37O3b9pX3KovP0N8yer+TfsaS0JvAQVg851Yvai6+hG+74Tq%20qdX37Hmi5X147QCwQx9aO8Au3LxpfYfjj/B9JzXtc5wJ2HAKwOa7f0c++B92bPX46vx7F2dPvGHt%20ALBDf7d2gB06vmnfcOxRfv9JTWcc2WAKwGY7tp2vy37V5j31bQ0va7r+CJvgQ9VL1w6xQ7do56f1%2075obyTeaArDZrt10XW6nbrJ0kD32meqX1g4BR+mXqk+vHWKHbryLbS5ZXXPhHOwjBWCzXW6X211+%200RT746nVb60dAo7gMU3X0TfNZXe5nZUgN5gCsNmOdLPO0tut7eerO+ZyAAfPB5rem/deO8gujbYv%20Iddv2DxPq55V3bS6bnWZ6phVEzGqQ03X+9/QdJ/KZ9aNAzujALCJPtP0cKPnrx0EYFO5BAAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAgBQAA%20BqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAAEZwaO0AB40CAAAD%20UgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAF%20AAAGpAAAwIAUAAAYkAIAAANSAABgQMetHYBVXL96ztohduH06v3VK6uXVJ9fNQ1Mjq9uXt24umyb%20uV+9/toB2H+b+EZlvstXP7x2iBl+rnpndffqpStnYWw3rx5fXXntILBTLgGwqa5Svaj68bWDMKzb%20Vy/MwZ8NpQCwyY6tnlJda+0gDOebqic3vQdhIykAbLoTqoetHYLhPKzp2j9sLAWAbXCL6mJrh2AY%20l2i69g8bTQFgG5y/uubaIRjGNXMDNVtAAdhspsGd5aJrB2AYF1k7wAFiH7TBFIDN9r61Axwgfhfs%20lw+sHeAAec/aAdg9BWCzvbk6de0QB8BHqresHYJh+NxNfO42nAKw2c5omoo0uic2/S5gP5zRNP10%20dD53G04B2HyPqk5ZO8SKTmn6HcB+emT1trVDrMjnbgsoAJvvtOpWjVkCTmn62T+5dhCGc1p1y8Ys%20AT53W0IB2A7vqq5XPbzputy2O7XpZ71e088Oazj8uXtEY9wT4HO3Zcxl3R6frB5YPbjp0bhXqC6w%20aqLlfbb6j6Ybj1x75CA4rXpA9aB87tgwCsD2OaN605lfwP7wuWPjuAQAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQ%20AgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAAIzg0NoB%20Dprj1g5wAD3pzC8A2FrOAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABbXMB+OTaAQDYeKetHWCv%20bHMBeNfaAQDYeO9cO8BeOWbtAHvoik0lYJtLDgB751B19eodawfZC9t8cPy36o/WDgHAxnpWW3rw%20r+0+A1B1iep11dXWDgLARnlXdf3q1LWD7JVtPgNQ9dHqxtVrV84BwOZ4fXWjtvjgX9t/BuCw81U/%20XP1YdZ3qaxrnZwfgKztUfbB6Y3Vy9ezqi6smAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAACW8v8AxyHd8amiKS4AAAAASUVORK5CYII=%22%20x=%2240.068%22%20y=%2215.511%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b2b9d2ce-7cd2-4e09-ab14-b65cc710b349",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 40
              }
            },
            {
              "id": "4609e8ba-4336-4956-b19d-9ca2284eb95f",
              "type": "basic.input",
              "data": {
                "name": "addra",
                "range": "[12:0]",
                "clock": false,
                "size": 13
              },
              "position": {
                "x": -112,
                "y": 208
              }
            },
            {
              "id": "0c3d577e-24c0-4184-85c3-3135c17c8d75",
              "type": "basic.output",
              "data": {
                "name": "doutb",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 920,
                "y": 208
              }
            },
            {
              "id": "5f7e35e0-3e2d-48ee-ac2e-ed81cd595bce",
              "type": "basic.input",
              "data": {
                "name": "dina",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -112,
                "y": 288
              }
            },
            {
              "id": "04eeb1c6-d5f8-4317-a875-94f0a697cdfc",
              "type": "basic.input",
              "data": {
                "name": "wea",
                "clock": false
              },
              "position": {
                "x": -112,
                "y": 376
              }
            },
            {
              "id": "8e6bcd2c-4b42-45f5-a49d-9f0710f2ed46",
              "type": "basic.input",
              "data": {
                "name": "addrb",
                "range": "[12:0]",
                "clock": false,
                "size": 13
              },
              "position": {
                "x": -112,
                "y": 440
              }
            },
            {
              "id": "d151fbe5-29a7-4800-bebb-aff7030706bd",
              "type": "basic.code",
              "data": {
                "code": "  parameter c_img_cols = 80; // # cols\r\n  parameter c_img_rows = 60; // # rows\r\n  parameter c_img_pxls = c_img_cols * c_img_rows; //4800=80x60\r\n  parameter c_nb_img_pxls =  13;  //80*60=4800 -> 2^13\r\n  parameter c_nb_buf = 12; //4 bits for each color\r\n  \r\n  reg doutb;\r\n  reg  [c_nb_buf-1:0] ram[c_img_pxls-1:0];\r\n\r\n  always @ (posedge clk)\r\n  begin\r\n    if (wea)\r\n      ram[addra] <= dina;\r\n      doutb <= ram[addrb];\r\n  end",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "wea"
                    },
                    {
                      "name": "addra",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "dina",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "addrb",
                      "range": "[12:0]",
                      "size": 13
                    }
                  ],
                  "out": [
                    {
                      "name": "doutb",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ]
                }
              },
              "position": {
                "x": 216,
                "y": 32
              },
              "size": {
                "width": 616,
                "height": 408
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d151fbe5-29a7-4800-bebb-aff7030706bd",
                "port": "doutb"
              },
              "target": {
                "block": "0c3d577e-24c0-4184-85c3-3135c17c8d75",
                "port": "in"
              },
              "vertices": [],
              "size": 12
            },
            {
              "source": {
                "block": "b2b9d2ce-7cd2-4e09-ab14-b65cc710b349",
                "port": "out"
              },
              "target": {
                "block": "d151fbe5-29a7-4800-bebb-aff7030706bd",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "04eeb1c6-d5f8-4317-a875-94f0a697cdfc",
                "port": "out"
              },
              "target": {
                "block": "d151fbe5-29a7-4800-bebb-aff7030706bd",
                "port": "wea"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "4609e8ba-4336-4956-b19d-9ca2284eb95f",
                "port": "out"
              },
              "target": {
                "block": "d151fbe5-29a7-4800-bebb-aff7030706bd",
                "port": "addra"
              },
              "vertices": [],
              "size": 13
            },
            {
              "source": {
                "block": "5f7e35e0-3e2d-48ee-ac2e-ed81cd595bce",
                "port": "out"
              },
              "target": {
                "block": "d151fbe5-29a7-4800-bebb-aff7030706bd",
                "port": "dina"
              },
              "vertices": [],
              "size": 12
            },
            {
              "source": {
                "block": "8e6bcd2c-4b42-45f5-a49d-9f0710f2ed46",
                "port": "out"
              },
              "target": {
                "block": "d151fbe5-29a7-4800-bebb-aff7030706bd",
                "port": "addrb"
              },
              "vertices": [],
              "size": 13
            }
          ]
        }
      }
    },
    "7b72bc7140454f0fca917a28f17e8ee0e612230a": {
      "package": {
        "name": "GoPiGo_Controller",
        "version": "1.0",
        "description": "GoPiGo Controller",
        "author": "JdeRobot [FPGA-Robotics] (Rey Juan Carlos University)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22327.358%22%20height=%22369.959%22%20viewBox=%220%200%2086.61349%2097.885009%22%3E%3Cg%20transform=%22translate(4.236%203.646)%22%3E%3Cimage%20y=%2216.948%22%20x=%22.575%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20preserveAspectRatio=%22none%22%20height=%2274.083%22%20width=%2274.083%22%20transform=%22translate(-4.81%203.207)%22/%3E%3Ctext%20y=%224.846%22%20x=%2244.104%22%20style=%22line-height:11.90999985px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20transform=%22translate(-4.81%203.207)%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22line-height:11.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%224.846%22%20x=%2244.104%22%20font-size=%2216.933%22%20font-family=%22Gill%20Sans%22%3EGoPiGo%20SPI%3C/tspan%3E%3Ctspan%20style=%22line-height:11.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%2219.914%22%20x=%2244.104%22%20font-size=%2216.933%22%20font-family=%22Gill%20Sans%22%3EController%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(1.23155%200%200%201.23155%20-17.642%20-4.892)%22%3E%3Crect%20ry=%221.388%22%20y=%2233.836%22%20x=%2247.347%22%20height=%2214.165%22%20width=%2226.994%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Crect%20ry=%221.702%22%20y=%2247.066%22%20x=%2253.628%22%20height=%2217.373%22%20width=%2213.631%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cimage%20width=%2280.044%22%20height=%2266.948%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPoAAAD6CAYAAACI7Fo9AAAABHNCSVQICAgIfAhkiAAADXNJREFU%20eJzt3VuMXdddx/Hff+3L8YwvjV0ncUjSJm4T0zYXQ6KC8hCkPiDRhxIJBYm2XISECq0qoYBQK3iu%20UMtNVFAuFaXiIkVVRFHhKQJRQPDAQ4JJY4uE+BLs1HawHXtuZ5+915+Hc8aZuDPnMnMu+8z+fqSR%20PeM9x/85c35n7b3W2mtJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwOylWZb9TpLnN9JW%20y/t9JHkekzyvkoWFZyUdlmSzLh7TFWZdAIDJI+hAAxB0oAEIOtAABB1oAIIONABBBxqAoAMNQNCB%20BkhnXQB2LLq7JHmfY7r/VlXMiGsogj6/3M2uBrNz0WxR/YMuSSazNyXFKdSGmiHo8yu2suyba+4v%20qCyTIY4PeZKcX5WWJl4ZAAAAAGA76IWdXybpTuX5bRpmmDTPTXl+XVeuXJBUTbo41AudcfMrhDT9%20ZAjhqei+EELo2+seiyKETucfSukLkq5pcC89dhGCPr8sMbs3xviYSXu86t9I907dTksapoceuwwz%204+ZbJanT+7sP+IjuXs6iSMweLfr8MzOT+vS3eG/qnBIa86aiRQcagKADDUDQgQYg6EADEPT5FTX6%20WLhv8/sw5+h139pdqu/MQV+QQpkk+xTjwBrNzNxdFuNiLh0ppD3TKHKboqSrktqzLmQ3qesLeebS%20Vusbqu8boUsylx4y6T4NWaebnTf3F/X22HvdBHd/K7j/XqfTOSGJcf8xIehbSPJ8VVJr1nUMsj6I%20Poyb4+n1ZQrhUur+M+12+x9V3zekuVPXFqsOXBotSHVX959lw5JYdX9Dmjt0xm2NF9ts8LxPAEEH%20GoCgAw1A0IEGIOhAAxB0oAEYXhuT3hh1rYevZsTrPqzXBLToY9Ab/+XFvDmr/zyd3Y8WfYfcvVQI%20Z3tTS02MA98qmPsD0f0BM6v9TMPdiqDvXKEYv10ePPh5Xbwo0bK/06FDebqy8kuqqk+JoM8MQd85%20l/uqLl68NOtCaunKlSzm+ZKxueNMcY0+HrTiWwvi+Zk5gg40AEEHGoCgAw1A0IEGoNe9XkyjdVyN%20ukjDpB8fNUXQ6yWVtKDhw+iSVjX8kksLkrIR6ulIWhnheNQUQa+RLMsetiR5uorxLg3ewzzIfbVq%20tf5QS0svq/84tUmyLMs+EZPkh4ZZOVYhVKGq/qPT6XxVtOpzj6DXSMyyu72qPmbSBzR4gkmQ2ZVW%20p/M3benUEMdbNHtCMX5Cw5zCx7gWzTJJfzps/agvgl4/pu46jn23Pl2/UcTMRmltvffYfX/vvTvx%206KjdRfhl1tCs7+rkttLdh6ADDUDQgQYg6EADEHSgAQg60AAEHWgAgl4/oyymOOow2FBz3Tcsdskw%202y7BhJl6qYL7skvL7j54CmwIKxpliaYQ2orxhrsPDnEIbUlrQz82ao2g18hCCGfXYnw2mN1pIfQL%208PrMtbW1GC9o8Lx4SfLE7Nsye6v3eb+gu6SoGE9UrGy7KxD0GllaWjop6b97nw572lxqcBBdkher%20q9+Q9NwIJcUhHhtzgKDXS9RkV0stJ/jYqDE644AGIOhAAxB0oAEIOtAABB1oAIIONABBBxqAoAMN%20QNCBBiDoQAMQdKABCDrQAAR9PCZ5I8q8q8TzM3PcvbZzITE7tLh//zFJarfbrMrS02q1PMaYF2V5%20R5T67jyDySLoO2RmeSU9udrp/IEkU+Akad1qp7vJq0vvNbN9My6n0Qj6ziVyv8fd75l1ITXlkkzs%208jRTBH0M2KqsL56cGuA8E2gAgg40AEEHGoCgAw1A0IEGIOhAAzC8tjWXbu5DBsw1gr61TIwBT1+M%20WVlVTJcdM4K+BTP7fUm52JJomkxmy2VRnBE3wowVLdbW3iWen1lwScti+ygAGA3XQpgXm+3pbuqe%20ebUkFVOvaI5waoo6W399buwnSXTgwNGkLL/fYvwBuR8PZieKtbXflXRd9Klsis441MVmoQ6SDmj/%20/tuTqnowkR6PVfWItdtHo9lhj/FdknJ3PyLpz9QNOjZB0DFLG8O9HvBF5fl9ifShJE2Px6p6yDud%20DynGw1X3FD11yeRuZhbcXTGEo0rT+1WW59Vdugq3IOiYllsvE13d4csD2rv3SNLpPJiE8Fh0P27S%20e6PZ4aos90tK5Z6sf799783/rhj3hiR5JJblv07+x5hPBB2TtN6B5uqehgdJ+7Isu1/SQwrhUTd7%202KvqmKTbqxhTSaE3JTFsEuqtLJj7Y+q+cayO/afYBQg6xmljMIO6ozp3aHHxrjzGY+7+uJs9GqV7%20FeMhue/ttdY377kYIdw3j3f3EKRjlXRE0umx/CS7DEHHTqyHMvT+nktaUJbdK+nhNIRHzOyHY4wP%20VDEeUnd9vfUW3kYNdR8eQ3hPq9V6f7vdJuibIOizM8qLfBpDRqPUY+q21rmkQ5LuyhcW3h/L8gcl%20HfcQjsr9oLvvdfd3vMZ64R73sK4pxsMds2OSnh/zY+8KBH36EkkL6t40M4xS0oom25sc1K0pH+LY%20RaXpfSFJHrIYj5v0QQ/hfVVVHZFZIsl7rXbUeFvtLfVO31Nz//Ck/695RdCnK1GePxCknzDpgxo8%20nztz6UQsiq9LemNCNZmkfaHV+ilzf3JATS1zv8dDuF/uB2S26FLYcC+vSzdXxZ3+Wgch/MjU/885%20QdCnJ9Pi4vGkLH9F0tMaMgghhDvTPP9mURSTDPqCuT8h6eODDnYzqZvrjaGeyQxL777BxN5HpRgP%20zKKOeUDQp6OVpumHVVWfc+mjva8Nuu5eH5IqW61WLIqJTeVen6xSbfh8SxtOxace7l6w18PdkVQo%20hMsm/a/H+FqaJC8xW2ZzBH3yFpMk+YhC+Lx3W82hWkHvXudK05u7vdWElJly90rdN6FKIVyX+5KZ%20nfOq+k7Ishe8KE6VBw++psuXv0vIt0bQJydI2q88/1GXfl3SoxK7umzF33mdX0oq5N4OIVz2GF/3%20GP/HzV4MVfVS+e53v6KLF69Xnc6aJOny5VmVPTcI+mQESbeHVusnZfarFuN7JEJ+q16211vsQiHc%20CO5XXTpnMb4s6cUsSU6ttNtnJV1SVXWXnbl4cXZFzymCPn6JpLtDnn/czJ5RjLdLhNzf7sBzda+v%202wphJcR4yc3OWYyvqqpeyrLsxMrKyml170QrOr0dWbEzBH28EklHs1br0zHGTynGBUlet+veaepd%20Y5eS1hTCtRDjFTc7F8xeqmL8z05RvCLpdUn/J0kEezII+vik2rv3A0lVfTpW1c/JbM8sh55moddq%20d4e6pFWZLZt0XmZngtmrQXqpKorvlNIZSTfELaVTQ9DHI9fi4qNWlp+T+1MyC01pxHvhbktqy+xq%20cH/Tzc4Hs5NB+q+1dvsFSRckXZtpoQ1H0HduUXv2PJFW1S+7+0dVvxGqSajc/YbMrgfpspudUQiv%20WlmezLLs5WRl5bUb0lWxZHNtEPSdOaA8/0hq9hse42NSIzrdopu9HmJ8Lkr/lmfZK8vLyxfENXat%20EfTtO6gs+/EgPeNV9bDUiJDL3aOZvdLpdL4s6ezy5GbsYYwI+vbcEVqtp2X2a70x8qb1rG+crWea%203uw9bBNBH41JOhLS9GclfcZivEfbCLm776Y3BkI+Bwj68EzS+/I9e36+ivEX5X5wO8Nn7r6kEJY8%20xjvMjG2rMRUEfTip8vzBxP2zVVV9Umb7ttMge4yXZPa8Yiwl/bS7N+K6HrNH0AdrpWn6uEufkdnT%20ktJRw+nuktl3kyT582Jt7S/DwsKPWVXRmmNqCHp/JuluJckzcn9K0sgTYdzdFcJZk/4iDeErhXRV%20VcXzjqniBTdIqxXU3SFk5E4nd49udkruX6na7b8qu5NI9o69RmAAgt6fq90+rTT9kqXpPo/xSQ3Z%20+ebuHZNeCDH+UafTeVbdBR417PcD48R14mBVWZb/UibJZ83s7919w1qI36v37zck/XWZZb/Q6XS+%20prdDDswEQR9O1PLyydLst839nyRtGnZ3l9yvBPevVdIXtbx8YtqFApvh1H14pdbW/j1ptX6z436b%20Scc3Do+5uxTCpUT6arG29seSzs22XOBttOijabfb7X9OpS+62Unp5qm6K4QzVpZfKvbv/7IIOWqG%20Fn10q0VR/F22Z09emX3BYvy+YHZKVfVbnbJ8TpcvvzXrAoFbEfTtudE5cuRvwxtv3GYhfMzM/qRo%20t78lOt1QUwR9u86ceStKX0/z/PmiKE6LfblRYwR9+1zStaIoWCIJtUdnHNAABB1oAIIONABBBxqA%20oAMNQNCBBiDoQAMQdKABCDrQAAQdaACCDjQAQQcagKADDUDQgQYg6FjnUm/DCew63I8+G+tru6/n%206tZwrW9FHDS9N+ONNfmGGm5+/ZY/MUcI+vS5zG7I7IKksu9xUsvN3gwh9DtuHGJwvxaT5A1Jhfpv%20MhE9xiuSqgnXBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAMMj/A8GNh+0W8+UtAAAAAElFTkSuQmCC%22%20x=%2223.094%22%20y=%229.583%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "975dcf9d-b904-4e2b-8963-ffcc0920bc94",
              "type": "basic.output",
              "data": {
                "name": "SPI_SS_n"
              },
              "position": {
                "x": 1168,
                "y": -200
              }
            },
            {
              "id": "b1b80a6d-32e6-4f8c-84aa-426b59b523bb",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -304,
                "y": -16
              }
            },
            {
              "id": "a9a6c276-1882-4abe-bda7-95e688d4b037",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": -304,
                "y": 48
              }
            },
            {
              "id": "bbffdd92-4d2c-4fd1-a551-a24f3338f119",
              "type": "basic.output",
              "data": {
                "name": "SPI_SCLK_o"
              },
              "position": {
                "x": 1184,
                "y": 48
              }
            },
            {
              "id": "9fd7f1b0-1758-4e0d-ab2e-6e25d627ab33",
              "type": "basic.input",
              "data": {
                "name": "motor_pwm_left_i",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -304,
                "y": 128
              }
            },
            {
              "id": "fe31784b-e760-4283-b505-e19a3ddc0895",
              "type": "basic.input",
              "data": {
                "name": "motor_pwm_rght_i",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -408,
                "y": 168
              }
            },
            {
              "id": "4353b952-9d6b-4335-b9a3-cfa90f43349e",
              "type": "basic.output",
              "data": {
                "name": "SPI_MOSI_o"
              },
              "position": {
                "x": 1184,
                "y": 168
              }
            },
            {
              "id": "b68b5517-04d2-4143-9012-05a562906299",
              "type": "basic.output",
              "data": {
                "name": "RPI_RUN"
              },
              "position": {
                "x": 1184,
                "y": 288
              }
            },
            {
              "id": "c2fe82db-229d-4dce-8e53-d2efeb5954cf",
              "type": "basic.input",
              "data": {
                "name": "led_eye_left_rgb_i",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": -312,
                "y": 328
              }
            },
            {
              "id": "0c2eeac9-6ece-4a35-b5ee-c74709a3d699",
              "type": "basic.input",
              "data": {
                "name": "led_eye_rght_rgb_i",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": -416,
                "y": 368
              }
            },
            {
              "id": "8d6114a2-11be-4a47-b259-8da053e463f7",
              "type": "basic.input",
              "data": {
                "name": "led_blink_left_rgb_i",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": -312,
                "y": 408
              }
            },
            {
              "id": "d03913c3-daf9-4dd3-9580-ed6d6147fdb1",
              "type": "basic.input",
              "data": {
                "name": "led_blink_rght_rgb_i",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": -416,
                "y": 448
              }
            },
            {
              "id": "6226871a-97d6-48f8-bf98-c8b4be0512c2",
              "type": "basic.input",
              "data": {
                "name": "SPI_MISO_i",
                "clock": false
              },
              "position": {
                "x": -312,
                "y": 648
              }
            },
            {
              "id": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
              "type": "basic.code",
              "data": {
                "code": "//////////////////////////////////////////////////////////////////////////////////\r\n// Clock frequency defined with parameter G_CLK_FREQ_MHZ\r\n\r\n//Receives Motor PWM and leds commands for the GoPiGo3, and send them via SPI\r\n//before sending them, check if there has been any change since the last sending\r\n/*\r\nmodule spi_ctrl\r\n  #(\r\n    // it has to be an integer number, if not integer, round it to the closest\r\n    parameter G_CLK_FREQ_MHZ = 100  // Alhambra II 12MHz\r\n  )\r\n  (\r\n    input            rst,\r\n    input            clk,\r\n    input            busy_spi,\r\n\r\n    input  [7:0] motor_pwm_left_i,  // left pwm motor ca2: -100 to 100\r\n    input  [7:0] motor_pwm_rght_i, // right pwm motor ca2: -100 to 100\r\n\r\n    // DPS (degrees per second) Limits for both of the motors.\r\n    // for our purposes, no need to have a different limit for right and left\r\n    // 0-1000 is the preferred speed under standard conditions.\r\n    // 0: no limit\r\n    // Any value over 32 767 will be capped down (not that the motor is capable\r\n    // of going at that speed.\r\n    // Default speed is 300: 0x012C. MSB: 8'h01  LSB: 8'h2C\r\n    input  [15:0] motor_dps_limit_i,\r\n\r\n    input  [15:0] motor_dps_left_i, // left motor DPS (degrees per second)\r\n                                    // limited by motor_dps_limit_i\r\n    input  [15:0] motor_dps_rght_i, // right motor DPS (degrees per second)\r\n\r\n\r\n    // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n    input  [24-1:0] led_eye_left_rgb_i, \r\n\r\n    // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n    input  [24-1:0] led_eye_rght_rgb_i,\r\n\r\n    // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n    input  [24-1:0] led_blink_left_rgb_i,\r\n\r\n    // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n    input  [24-1:0] led_blink_rght_rgb_i,\r\n  \r\n    output reg       spi_ss_n, // spi slave select, active low\r\n    output reg       spi_send, // command to send a new SPI byte\r\n    output           ena_2clk, // ena spi, twice the frequency\r\n    output     [7:0] data_spi\r\n  );\r\n*/\r\n    parameter G_CLK_FREQ_MHZ = 100;  // Alhambra II 12MHz\r\n\treg       spi_ss_n_r;\r\n\treg       spi_send_r;\r\n\t\r\n\tassign spi_send = spi_send_r;\r\n\tassign spi_ss_n = spi_ss_n_r;\r\n\t\r\n  // register of the inputs, to check if they have been modified since\r\n  // the last update to the SPI\r\n  reg  [7:0] motor_pwm_left_rg; // 0: left pwm motor ca2: -100 to 100\r\n  reg  [7:0] motor_pwm_rght_rg; // 1: right pwm motor ca2: -100 to 100\r\n\r\n  reg  [15:0] motor_dps_limit_rg; // DPS limit for both motors (degrees/second)\r\n  reg  [15:0] motor_dps_left_rg; // DPS for left motor (degrees/second)\r\n  reg  [15:0] motor_dps_rght_rg; // DPS for right motor (degrees/second)\r\n\r\n  // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n  reg  [24-1:0] led_eye_left_rgb_rg; // 2\r\n\r\n  // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n  reg  [24-1:0] led_eye_rght_rgb_rg; // 3\r\n\r\n  // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n  reg  [24-1:0] led_blink_left_rgb_rg; // 4\r\n\r\n  // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]\r\n  reg  [24-1:0] led_blink_rght_rgb_rg; // 5\r\n\r\n  // Register type\r\n  parameter\r\n    MOTOR_PWM_LEFT  = 0,\r\n    MOTOR_PWM_RGHT  = 1,\r\n    MOTOR_DPS_LIMIT = 2,\r\n    MOTOR_DPS_LEFT  = 3,\r\n    MOTOR_DPS_RGHT  = 4,\r\n    LED_EYE_LEFT    = 5,\r\n    LED_EYE_RGHT    = 6,\r\n    LED_BLINK_LEFT  = 7,\r\n    LED_BLINK_RGHT  = 8;\r\n\r\n  parameter NUM_RGS = LED_BLINK_RGHT;\r\n  // counter to check all the register 0 to 8\r\n  reg  [3:0] cnt_chk_rgs; // range depends on NUM_RGS\r\n  // indicates if there has been any change in the registers having checked all\r\n  // of them\r\n  wire   cnt_chk_rgs_ended;\r\n  // comparison between the input and the last sent command (registered)\r\n  reg [32-1:0] compare_port; // input port to compare\r\n  reg [32-1:0] compare_reg;  // The largest argument so far has 4 bytes\r\n  //reg    any_rg_change;\r\n\r\n  integer indx; // for the loop\r\n \r\n  // 1: if the new command is the same as the last sent. Depends on the actual\r\n  // register that is being compared (cnt_chk_rgs)\r\n  wire    rg_change;\r\n\r\n  // counter for the SPI registers\r\n  reg [5:0] cnt_spi_byte;\r\n  reg       incr_spi_byte; // increment the the SPI byte counter\r\n\r\n  // FSM states to send SPI\r\n  parameter\r\n     CHK_NEW_SPI    = 0, // check if there is any new SPI command to be sent\r\n     UPDATE_SPI_RGS = 1, // update the SPI registers, to send them\r\n     EN_SPI_ST      = 2, // to have some time to active the SPI enable\r\n                         // before sending any command\r\n     WAIT_SPI_ST    = 3, // wait for the SPI to be ready (not busy)\r\n     SPI_SEND_ST    = 4, // Send the SPI byte\r\n     SPI_SEND2_ST   = 5, // wait for the SPI to be busy\r\n     EN_SPI2_ST     = 6, // keeping the SPI enabled before dissabling it\r\n     FINISH_ST      = 7; // Finish, and back to 0\r\n\r\n  reg [2:0] spi_state, spi_state_nxt; // present and next state\r\n\r\n  // Maximum number of bytes to be sent in a command to SPI\r\n  // dont think there are more than 15 bytes to be sent via SPI\r\n  parameter N_SPI_BYTES = 16;\r\n  reg [8-1:0] spi_bytes [N_SPI_BYTES-1:0];\r\n  parameter NB_SPI_BYTES = $clog2(N_SPI_BYTES); // number of bits\r\n  reg [NB_SPI_BYTES-1:0] last_spi_byte; // indicates the last SPI byte to be sent\r\n     \r\n  // slave select (chip enable) for the SPI of the slave (gopigo)\r\n  parameter C_SPI_SS_ON  = 1'b0; // active low\r\n  parameter C_SPI_SS_OFF = 1'b1;\r\n\r\n  // number of bits of the counter for the SPI clock\r\n  parameter NB_CNT_SPICLK = $clog2(G_CLK_FREQ_MHZ);\r\n\r\n  reg [NB_CNT_SPICLK-1:0] cnt_spi_clk;  // count to 12 for the spi clock divider\r\n  //wire end_ena_2clk;\r\n  reg  ena_spi_clk;  // enable SPI clk\r\n  wire end_cnt_spi_clk;\r\n\r\n  // counter that has a variable end of the count\r\n  reg [28:0] cnt_var; // to have time before sending the commands\r\n                      // 25 bits: 33.5 millions -> 12MHz -> ~2.8 segs\r\n  wire cnt_var_ended; // indicates the end of the count\r\n  //reg [28:0] end_cnt_val;   // indicates the value at the count finish\r\n  reg  ena_cnt_var;  // enable of the counter\r\n\r\n  //parameter C_STARTUP_END = 2**25-1; // for synthesis\r\n                                      // 12MHz -> 83.3 ns  x 33,554,432 ->\r\n                                      // 0,36Hz  -> 2,8 s\r\n  //parameter C_STARTUP_END = 2**22-1; // for synthesis\r\n                                      // 12MHz -> 83.3 ns  x 4,192,304 ->\r\n                                      // 2,86Hz  -> 349ms\r\n  //parameter C_STARTUP_END = 1500-1; // for simulation\r\n\r\n  //parameter C_EN_SPI_END = 2**20-1; // for synthesis\r\n                                      // 12MHz -> 83.3 ns  x 10**6 ->\r\n                                      // 12Hz  -> 83.3 ms\r\n  //parameter C_EN_SPI_END = 2**16-1; // for synthesis\r\n                                      // 12MHz -> 83.3 ns  x 65000 ->\r\n                                      // 183Hz -> 5.5 ms\r\n  parameter C_EN_SPI_END = 500-1; // for simulation\r\n\r\n\r\n  always @(posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      last_spi_byte <= 0;\r\n      spi_bytes[0] <= 8'h08; // SPI address, always first byte to be sent\r\n      for (indx=1; indx < N_SPI_BYTES; indx=indx+1) begin\r\n        spi_bytes[indx] <= 8'h00;\r\n      end\r\n    end\r\n    else begin\r\n      if (spi_state == CHK_NEW_SPI) begin\r\n        last_spi_byte <= 0;\r\n        spi_bytes[0] <= 8'h08; // SPI address, always first byte to be sent\r\n        // all registers to zero\r\n        for (indx=1; indx < N_SPI_BYTES; indx=indx+1) begin\r\n          spi_bytes[indx] <= 8'h00;\r\n        end\r\n      end\r\n      else if (spi_state == UPDATE_SPI_RGS) begin\r\n        case (cnt_chk_rgs)\r\n          MOTOR_PWM_LEFT: begin\r\n            spi_bytes[1] <= 8'h0A; // SPI Message type SET_MOTOR_PWM\r\n            spi_bytes[2] <= 8'h01; // MOTOR_LEFT\r\n            spi_bytes[3] <= motor_pwm_left_i; // PWM speed -100 to 100\r\n            last_spi_byte <= 3;\r\n          end\r\n          MOTOR_PWM_RGHT: begin\r\n            spi_bytes[1] <= 8'h0A; // SPI Message type SET_MOTOR_PWM\r\n            spi_bytes[2] <= 8'h02; // MOTOR_RIGHT\r\n            spi_bytes[3] <= motor_pwm_rght_i; // PWM speed -100 to 100\r\n            last_spi_byte <= 3;\r\n          end\r\n          MOTOR_DPS_LIMIT: begin\r\n            spi_bytes[1] <= 8'h0F; // SPI Message type SET_MOTOR_LIMITS\r\n            spi_bytes[2] <= 8'h03; // For both motors: MOTOR_RIGHT & MOTOR_LEFT\r\n            spi_bytes[3] <= 8'h00; // Power limit in percent=0. Limit in DPS\r\n                                   // not power\r\n            spi_bytes[4] <= motor_dps_limit_i[15:8]; // MSB DPS limit\r\n            spi_bytes[5] <= motor_dps_limit_i[7:0]; // LSB DPS limit\r\n            last_spi_byte <= 5;\r\n          end\r\n          MOTOR_DPS_LEFT: begin\r\n            spi_bytes[1] <= 8'h0E; // SPI Message type SET_MOTOR_DPS\r\n            spi_bytes[2] <= 8'h01; // For left motor: MOTOR_LEFT\r\n            spi_bytes[3] <= motor_dps_left_i[15:8]; // MSB DPS left\r\n            spi_bytes[4] <= motor_dps_left_i[7:0]; // LSB DPS left\r\n            last_spi_byte <= 4;\r\n          end\r\n          MOTOR_DPS_RGHT: begin\r\n            spi_bytes[1] <= 8'h0E; // SPI Message type SET_MOTOR_DPS\r\n            spi_bytes[2] <= 8'h02; // For left motor: MOTOR_RIGHT\r\n            spi_bytes[3] <= motor_dps_rght_i[15:8]; // MSB DPS right\r\n            spi_bytes[4] <= motor_dps_rght_i[7:0]; // LSB DPS right\r\n            last_spi_byte <= 4;\r\n          end\r\n          LED_EYE_LEFT: begin\r\n            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED\r\n            spi_bytes[2] <= 8'h02; // LED_EYE_LEFT\r\n            spi_bytes[3] <= led_eye_left_rgb_i[23:16]; // Red 0 to 255\r\n            spi_bytes[4] <= led_eye_left_rgb_i[15:8];  // Green 0 to 255\r\n            spi_bytes[5] <= led_eye_left_rgb_i[7:0];   // Blue 0 to 255\r\n            last_spi_byte <= 5;\r\n          end\r\n          LED_EYE_RGHT: begin\r\n            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED\r\n            spi_bytes[2] <= 8'h01; // LED_EYE_RIGHT\r\n            spi_bytes[3] <= led_eye_rght_rgb_i[23:16]; // Red 0 to 255\r\n            spi_bytes[4] <= led_eye_rght_rgb_i[15:8];  // Green 0 to 255\r\n            spi_bytes[5] <= led_eye_rght_rgb_i[7:0];   // Blue 0 to 255\r\n            last_spi_byte <= 5;\r\n          end\r\n          LED_BLINK_LEFT: begin\r\n            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED\r\n            spi_bytes[2] <= 8'h04; // LED_BLINK_LEFT\r\n            spi_bytes[3] <= led_blink_left_rgb_i[23:16]; // Red 0 to 255\r\n            spi_bytes[4] <= led_blink_left_rgb_i[15:8];  // Green 0 to 255\r\n            spi_bytes[5] <= led_blink_left_rgb_i[7:0];   // Blue 0 to 255\r\n            last_spi_byte <= 5;\r\n          end\r\n          LED_BLINK_RGHT: begin\r\n            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED\r\n            spi_bytes[2] <= 8'h08; // LED_BLINK_RIGHT\r\n            spi_bytes[3] <= led_blink_rght_rgb_i[23:16]; // Red 0 to 255\r\n            spi_bytes[4] <= led_blink_rght_rgb_i[15:8];  // Green 0 to 255\r\n            spi_bytes[5] <= led_blink_rght_rgb_i[7:0];   // Blue 0 to 255\r\n            last_spi_byte <= 5;\r\n          end\r\n        endcase\r\n      end\r\n    end\r\n  end\r\n\r\n  // register the new commands that have been sent (are just going to be sent)\r\n  always @(posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      motor_pwm_left_rg <= 0;      // 0\r\n      motor_pwm_rght_rg <= 0;      // 1\r\n      motor_dps_limit_rg <= 0;     // 2\r\n      motor_dps_left_rg <= 0;      // 3\r\n      motor_dps_rght_rg <= 0;      // 4\r\n      led_eye_left_rgb_rg <= 0;    // 5\r\n      led_eye_rght_rgb_rg <= 0;    // 6\r\n      led_blink_left_rgb_rg <= 0;  // 7\r\n      led_blink_rght_rgb_rg <= 0;  // 8\r\n    end\r\n    else begin\r\n      if (spi_state == UPDATE_SPI_RGS) begin\r\n        case (cnt_chk_rgs)\r\n          MOTOR_PWM_LEFT:\r\n            motor_pwm_left_rg <= motor_pwm_left_i;\r\n          MOTOR_PWM_RGHT:\r\n            motor_pwm_rght_rg <= motor_pwm_rght_i;\r\n          MOTOR_DPS_LIMIT:\r\n            motor_dps_limit_rg <= motor_dps_limit_i;\r\n          MOTOR_DPS_LEFT:\r\n            motor_dps_left_rg <= motor_dps_left_i;\r\n          MOTOR_DPS_RGHT:\r\n            motor_dps_rght_rg <= motor_dps_rght_i;\r\n          LED_EYE_LEFT:\r\n            led_eye_left_rgb_rg <= led_eye_left_rgb_i;\r\n          LED_EYE_RGHT:\r\n            led_eye_rght_rgb_rg <= led_eye_rght_rgb_i;\r\n          LED_BLINK_LEFT:\r\n            led_blink_left_rgb_rg <= led_blink_left_rgb_i;\r\n          LED_BLINK_RGHT:\r\n            led_blink_rght_rgb_rg <= led_blink_rght_rgb_i;\r\n        endcase\r\n      end\r\n    end\r\n  end\r\n\r\n\r\n\r\n  // counter to check all the registers\r\n\r\n  always @(posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_chk_rgs <= 0;\r\n    else begin\r\n      // only counts when checking if there are new SPI commands to be sent\r\n      if (spi_state == CHK_NEW_SPI) begin\r\n        if (rg_change==1'b0) begin // if no change, check the next one\r\n          if (cnt_chk_rgs_ended)\r\n            cnt_chk_rgs <= 0;\r\n          else\r\n            cnt_chk_rgs <= cnt_chk_rgs + 1'b1;\r\n        end\r\n      end\r\n    end\r\n  end\r\n\r\n  assign cnt_chk_rgs_ended = (cnt_chk_rgs == NUM_RGS) ? 1'b1 : 1'b0;\r\n\r\n  // depending on the register to be checked (given by cnt_chk_rgs)\r\n  // the register length is different. In order to use just one comparator, we'll\r\n  // select the registers and the inputs to be compared\r\n  always @(*)\r\n  begin\r\n    compare_port = 32'b0;\r\n    compare_reg = 32'b0;\r\n    case (cnt_chk_rgs)\r\n      MOTOR_PWM_LEFT: begin // one byte\r\n        compare_port[7:0] = motor_pwm_left_i;\r\n        compare_reg [7:0] = motor_pwm_left_rg;\r\n      end\r\n      MOTOR_PWM_RGHT: begin // one byte\r\n        compare_port[7:0] = motor_pwm_rght_i;\r\n        compare_reg [7:0] = motor_pwm_rght_rg;\r\n      end\r\n      MOTOR_DPS_LIMIT: begin // two bytes\r\n        compare_port[16-1:0] = motor_dps_limit_i;\r\n        compare_reg [16-1:0] = motor_dps_limit_rg;\r\n      end\r\n      MOTOR_DPS_LEFT: begin // two bytes\r\n        compare_port[16-1:0] = motor_dps_left_i;\r\n        compare_reg [16-1:0] = motor_dps_left_rg;\r\n      end\r\n      MOTOR_DPS_RGHT: begin // two bytes\r\n        compare_port[16-1:0] = motor_dps_rght_i;\r\n        compare_reg [16-1:0] = motor_dps_rght_rg;\r\n      end\r\n      LED_EYE_LEFT: begin // 3 bytes\r\n        compare_port[24-1:0] = led_eye_left_rgb_i;\r\n        compare_reg [24-1:0] = led_eye_left_rgb_rg;\r\n      end\r\n      LED_EYE_RGHT: begin // 3 bytes\r\n        compare_port[24-1:0] = led_eye_rght_rgb_i;\r\n        compare_reg [24-1:0] = led_eye_rght_rgb_rg;\r\n      end\r\n      LED_BLINK_LEFT: begin // 3 bytes\r\n        compare_port[24-1:0] = led_blink_left_rgb_i;\r\n        compare_reg [24-1:0] = led_blink_left_rgb_rg;\r\n      end\r\n      LED_BLINK_RGHT: begin // 3 bytes\r\n        compare_port[24-1:0] = led_blink_rght_rgb_i;\r\n        compare_reg [24-1:0] = led_blink_rght_rgb_rg;\r\n      end\r\n    endcase\r\n  end\r\n\r\n  // -- compare if the actual command is the same as the last command sent\r\n  assign rg_change = (compare_port == compare_reg) ? 1'b0 : 1'b1;\r\n\r\n  // -------------- timer (counter) to wait a configurable amount of time\r\n\r\n  always @(posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_var <= 0;\r\n    else begin\r\n      if (ena_cnt_var) begin\r\n        if (cnt_var_ended)\r\n          cnt_var <= 0;\r\n        else\r\n          cnt_var <= cnt_var + 1'b1;\r\n      end\r\n      else\r\n        cnt_var <= 0;\r\n    end\r\n  end\r\n\r\n  assign cnt_var_ended = (cnt_var == C_EN_SPI_END) ? 1'b1 : 1'b0;\r\n\r\n\r\n  // -------------- SPI clock generation -----------------------\r\n  // clk divider. \r\n  // from the logic analyzer, SCK is 500 kHz, then ena_2clk has to be 1MHz\r\n  // count to G_CLK_FREQ_MHZ\r\n  always @(posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_spi_clk <= 0;\r\n    else begin\r\n      if ((end_cnt_spi_clk) || (ena_spi_clk == 1'b0))\r\n        cnt_spi_clk <= 0;\r\n      else\r\n        cnt_spi_clk <= cnt_spi_clk + 1'b1;\r\n    end\r\n  end\r\n\r\n  // end of the count 0 to G_CLK_FREQ_MHZ-1: 1 MHz signal\r\n  assign end_cnt_spi_clk = (cnt_spi_clk == G_CLK_FREQ_MHZ-1) ? 1'b1 : 1'b0;\r\n  assign ena_2clk = end_cnt_spi_clk;\r\n\r\n  \r\n  // ------------------- SPI register counter -----------------------\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_spi_byte <= 0;\r\n    else begin\r\n      if (spi_state == CHK_NEW_SPI)\r\n        cnt_spi_byte <= 0;\r\n      else if (incr_spi_byte)\r\n        cnt_spi_byte <= cnt_spi_byte + 1'b1;\r\n    end\r\n  end\r\n\r\n  // --------------- FINITE STATE MACHINE (FSM) ------------\r\n\r\n  // FSM sequential process\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      spi_state <= CHK_NEW_SPI;\r\n    else\r\n      spi_state <= spi_state_nxt;\r\n  end\r\n\r\n  // FSM combinational process\r\n  always @ (*)\r\n  begin\r\n    spi_state_nxt = spi_state; // default value\r\n    ena_cnt_var = 1'b0;\r\n    spi_ss_n_r  = C_SPI_SS_OFF; // disable the slave SPI\r\n    incr_spi_byte = 1'b0;\r\n    spi_send_r  = 1'b0;\r\n    ena_spi_clk = 1'b0; // disable the generation of the SPI clock\r\n    case (spi_state)\r\n      CHK_NEW_SPI: begin // check if there is a new SPI command\r\n        if (rg_change) begin // There is a new SPI command to send\r\n          spi_state_nxt = UPDATE_SPI_RGS; // \r\n        end\r\n      end\r\n      UPDATE_SPI_RGS: begin // update the SPI registers\r\n        spi_state_nxt = EN_SPI_ST; // \r\n      end\r\n      EN_SPI_ST: begin // enable the SPI slave, and wait some time\r\n        ena_spi_clk = 1'b1; // enable the generation of the SPI clock\r\n        spi_ss_n_r  = C_SPI_SS_ON; // enable the slave SPI\r\n        ena_cnt_var = 1'b1;\r\n        if (cnt_var_ended) begin\r\n          spi_state_nxt = SPI_SEND_ST; //SPI shouldnt be busy when just starting\r\n          ena_cnt_var = 1'b0;\r\n        end\r\n      end\r\n      WAIT_SPI_ST: begin\r\n        ena_spi_clk = 1'b1; // enable the generation of the SPI clock\r\n        spi_ss_n_r  = C_SPI_SS_ON; // enable the slave SPI\r\n        if (!busy_spi) begin\r\n          spi_state_nxt = SPI_SEND_ST;\r\n          if (cnt_spi_byte == last_spi_byte)\r\n            spi_state_nxt = EN_SPI2_ST; // we are done\r\n          else // next byte\r\n            incr_spi_byte = 1'b1; // increment the byte except when 1\r\n        end\r\n      end\r\n      SPI_SEND_ST: begin // send the new byte\r\n        ena_spi_clk = 1'b1; // enable the generation of the SPI clock\r\n        spi_ss_n_r = C_SPI_SS_ON; // enable the slave SPI\r\n        spi_send_r  = 1'b1;\r\n        spi_state_nxt = SPI_SEND2_ST;\r\n      end\r\n      SPI_SEND2_ST: begin // to give time for the SPI to be busy\r\n        ena_spi_clk = 1'b1; // enable the generation of the SPI clock\r\n        spi_ss_n_r  = C_SPI_SS_ON; // enable the slave SPI\r\n        spi_send_r  = 1'b0;  // the send command was activated in the transition\r\n        incr_spi_byte = 1'b0;\r\n        if (busy_spi)\r\n          spi_state_nxt = WAIT_SPI_ST;\r\n      end\r\n      EN_SPI2_ST: begin // finishing the transmission, enabling the SPI slave,\r\n                        // before dissabling it\r\n        ena_spi_clk = 1'b1; // enable the generation of the SPI clock\r\n        spi_ss_n_r = C_SPI_SS_ON; // enable the slave SPI\r\n        ena_cnt_var  = 1'b1;\r\n        if (cnt_var_ended) begin\r\n          spi_state_nxt = FINISH_ST;\r\n          ena_cnt_var = 1'b0;\r\n        end\r\n      end\r\n      FINISH_ST: begin // transmission ended, maybe not necessary and just jump\r\n                       // to CHK_NEW_SPI\r\n        spi_state_nxt = CHK_NEW_SPI;\r\n      end\r\n    endcase\r\n  end\r\n\r\n  // the SPI byte to send\r\n  assign data_spi = spi_bytes[cnt_spi_byte];\r\n\r\n\r\n\r\n// endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "busy_spi"
                    },
                    {
                      "name": "motor_pwm_left_i",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "motor_pwm_rght_i",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "motor_dps_limit_i",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "motor_dps_left_i",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "motor_dps_rght_i",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "led_eye_left_rgb_i",
                      "range": "[23:0]",
                      "size": 24
                    },
                    {
                      "name": "led_eye_rght_rgb_i",
                      "range": "[23:0]",
                      "size": 24
                    },
                    {
                      "name": "led_blink_left_rgb_i",
                      "range": "[23:0]",
                      "size": 24
                    },
                    {
                      "name": "led_blink_rght_rgb_i",
                      "range": "[23:0]",
                      "size": 24
                    }
                  ],
                  "out": [
                    {
                      "name": "spi_ss_n"
                    },
                    {
                      "name": "spi_send"
                    },
                    {
                      "name": "ena_2clk"
                    },
                    {
                      "name": "data_spi",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": -16,
                "y": 16
              },
              "size": {
                "width": 512,
                "height": 488
              }
            },
            {
              "id": "ef01dc36-1165-45ef-85fe-334d3e7bd09a",
              "type": "0d3b531181185ce4d5021273261876ea6404d47d",
              "position": {
                "x": -360,
                "y": 248
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
              "type": "basic.code",
              "data": {
                "code": "/***********************************************************************\r\n\r\n  SPI Master\r\n\r\n  This file is part FPGA Libre project http://fpgalibre.sf.net/\r\n\r\n  Description:\r\n  Configurable Master Serial Protocol Interface controller.\r\n  This is different than SPI_controller:\r\n  - Modes can be configured with signals, not just generics.\r\n  - The SS logic is left to the upper level.\r\n  - We always return to IDLE before transmitting again.\r\n  - IMPORTANT! assumes that start_i resets the ena_i generator. In\r\n    this way start_i can last 1 clock cycle (no need to wait for\r\n    busy_o to become 1).\r\n\r\n  To Do:\r\n  -\r\n\r\n  Author:\r\n    - Salvador E. Tropea, salvador en inti gob ar\r\n\r\n------------------------------------------------------------------------------\r\n\r\n Copyright (c) 2017 Salvador E. Tropea <salvador en inti gob ar>\r\n Copyright (c) 2017 Instituto Nacional de Tecnología Industrial\r\n\r\n Distributed under the GPL v2 or newer license\r\n\r\n------------------------------------------------------------------------------\r\n\r\n Design unit:      SPI_Master(RTL) (Entity and architecture)\r\n File name:        spi_master.v\r\n Note:             None\r\n Limitations:      None known\r\n Errors:           None known\r\n Library:          None\r\n Dependencies:     IEEE.std_logic_1164\r\n                   IEEE.numeric_std\r\n Target FPGA:\r\n Language:         Verilog\r\n Wishbone:         None\r\n Synthesis tools:\r\n Simulation tools: GHDL [Sokcho edition] (0.2x)\r\n Text editor:      SETEdit 0.5.x\r\n\r\n***********************************************************************/\r\n\r\n/*\r\nmodule SPI_Master\r\n  #(\r\n    parameter DATA_W=8   // Transaction data width\r\n   )\r\n   (\r\n    // System\r\n    input  clk_i,\r\n    input  rst_i,\r\n    input  ena_i,  // 2*SCK\r\n    // Interface\r\n    input  start_i,\r\n    input  [DATA_W-1:0] tx_i,\r\n    output [DATA_W-1:0] rx_o, \r\n    output busy_o, \r\n    output reg irq_o,\r\n    input  ack_i,  // IRQ Ack\r\n    // Mode options\r\n    // SPI\r\n    output sclk_o, \r\n    input  miso_i,\r\n    output mosi_en_o, \r\n    output mosi_o,\r\n    output rpi_running\r\n   );\r\n*/\r\nparameter DATA_W=8;   // Transaction data width\r\n\r\n//localparam integer CNT_BITS=$clog2(DATA_W);\r\nlocalparam integer CNT_BITS=3; //log2(8)\r\nlocalparam IDLE=0, LEADING_SCLK=1, TRAILING_SCLK=2, STOP=3; // state_t\r\n\r\nreg  [DATA_W-1:0] reg_r=0;\r\nreg  sclk_r=0;\r\nreg  [CNT_BITS-1:0] bit_cnt=0;\r\nreg  [1:0] state=IDLE; // states for shifter_FSM.\r\nreg  miso_r; // Sampled MISO\r\n\r\nreg irq_o_r;\r\nassign irq_o = irq_o_r;\r\n\r\n    wire  cpol_i;  // SCK value for idle\r\n    wire  dord_i;  // 1 LSB first\r\n    wire  cpha_i;  // 1 Trailing sample\r\n\r\n\r\n\r\nalways @(posedge clk_i)\r\nbegin : shifter_FSM\r\n  if (rst_i)\r\n     begin\r\n     state  <= IDLE;\r\n     sclk_r <= 0;\r\n     irq_o_r  <= 0;\r\n     miso_r <= 1'b0;\r\n     end\r\n  else\r\n     begin\r\n     if (ack_i)\r\n        irq_o_r <= 0;\r\n     case (state)\r\n        IDLE:\r\n          if (start_i) // init transaction\r\n             begin\r\n             state   <= LEADING_SCLK;\r\n             reg_r   <= tx_i;\r\n             bit_cnt <= 0;\r\n             end\r\n        LEADING_SCLK:\r\n          if (ena_i)\r\n             begin\r\n             state  <= TRAILING_SCLK;\r\n             sclk_r <= !sclk_r;\r\n             if (!cpha_i) // Leading sample\r\n                miso_r <= miso_i;\r\n             end\r\n        TRAILING_SCLK:\r\n          if (ena_i)\r\n             begin\r\n             sclk_r <= !sclk_r;\r\n             if (bit_cnt==DATA_W-1)\r\n                begin\r\n                state <= STOP;\r\n                bit_cnt <= 0;\r\n                end\r\n             else\r\n                begin\r\n                state <= LEADING_SCLK;\r\n                bit_cnt <= bit_cnt+1;\r\n                end\r\n             if (cpha_i) // Leading sample\r\n                miso_r <= miso_i;\r\n             end\r\n        default: // STOP\r\n          // Maintain the last bit for half the clock to finish\r\n          // If we don't do it we could violate the slave hold time\r\n          if (ena_i)\r\n             begin\r\n             irq_o_r <= 1;\r\n             state <= IDLE;\r\n             end\r\n     endcase\r\n     // Shift in cases\r\n     if (ena_i)\r\n        if (  (state==TRAILING_SCLK && !cpha_i) ||\r\n            (((state==LEADING_SCLK && bit_cnt) || state==STOP) && cpha_i))\r\n           begin\r\n           // Shift\r\n           if (dord_i)\r\n              // Right\r\n              reg_r <= {miso_r,reg_r[DATA_W-1:1]};\r\n           else\r\n              // Left\r\n              reg_r <= {reg_r[DATA_W-2:0],miso_r};\r\n           end\r\n     end // !rst_i\r\nend // shifter_FSM\r\n\r\nassign  cpol_i = 1'b0;  // SCK value for idle\r\nassign  dord_i = 1'b0;  // 1 LSB first\r\nassign cpha_i = 1'b0;\r\n\r\n\r\n\r\n// The FSM generates CPOL=0, if CPOL is 1 we just invert\r\nassign sclk_o=sclk_r^cpol_i;\r\n// MOSI takes the LSB or MSB according to DORD\r\nassign mosi_o=dord_i ? reg_r[0] : reg_r[DATA_W-1];\r\nassign mosi_en_o=state==IDLE; //cambio Felipe\r\nassign rx_o=reg_r;\r\nassign busy_o=state!=IDLE;\r\nassign rpi_running = ~rst_i;\r\n\r\n// endmodule // SPI_Master\r\n\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk_i"
                    },
                    {
                      "name": "rst_i"
                    },
                    {
                      "name": "start_i"
                    },
                    {
                      "name": "ena_i"
                    },
                    {
                      "name": "tx_i",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ack_i"
                    },
                    {
                      "name": "miso_i"
                    }
                  ],
                  "out": [
                    {
                      "name": "busy_o"
                    },
                    {
                      "name": "sclk_o"
                    },
                    {
                      "name": "mosi_o"
                    },
                    {
                      "name": "rpi_running"
                    },
                    {
                      "name": "rx_o"
                    },
                    {
                      "name": "irq_o"
                    },
                    {
                      "name": "mosi_en_o"
                    }
                  ]
                }
              },
              "position": {
                "x": 712,
                "y": -104
              },
              "size": {
                "width": 384,
                "height": 840
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "spi_ss_n"
              },
              "target": {
                "block": "975dcf9d-b904-4e2b-8963-ffcc0920bc94",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 592,
                  "y": 32
                }
              ]
            },
            {
              "source": {
                "block": "6226871a-97d6-48f8-bf98-c8b4be0512c2",
                "port": "out"
              },
              "target": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "miso_i"
              }
            },
            {
              "source": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "mosi_o"
              },
              "target": {
                "block": "4353b952-9d6b-4335-b9a3-cfa90f43349e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "sclk_o"
              },
              "target": {
                "block": "bbffdd92-4d2c-4fd1-a551-a24f3338f119",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "rpi_running"
              },
              "target": {
                "block": "b68b5517-04d2-4143-9012-05a562906299",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a9a6c276-1882-4abe-bda7-95e688d4b037",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "b1b80a6d-32e6-4f8c-84aa-426b59b523bb",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "9fd7f1b0-1758-4e0d-ab2e-6e25d627ab33",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "motor_pwm_left_i"
              },
              "size": 8
            },
            {
              "source": {
                "block": "fe31784b-e760-4283-b505-e19a3ddc0895",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "motor_pwm_rght_i"
              },
              "size": 8
            },
            {
              "source": {
                "block": "c2fe82db-229d-4dce-8e53-d2efeb5954cf",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "led_eye_left_rgb_i"
              },
              "size": 24
            },
            {
              "source": {
                "block": "0c2eeac9-6ece-4a35-b5ee-c74709a3d699",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "led_eye_rght_rgb_i"
              },
              "size": 24
            },
            {
              "source": {
                "block": "8d6114a2-11be-4a47-b259-8da053e463f7",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "led_blink_left_rgb_i"
              },
              "size": 24
            },
            {
              "source": {
                "block": "d03913c3-daf9-4dd3-9580-ed6d6147fdb1",
                "port": "out"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "led_blink_rght_rgb_i"
              },
              "size": 24
            },
            {
              "source": {
                "block": "ef01dc36-1165-45ef-85fe-334d3e7bd09a",
                "port": "518cf0e3-0064-4c9f-bf0a-fcb4db676253"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "motor_dps_left_i"
              },
              "size": 16
            },
            {
              "source": {
                "block": "ef01dc36-1165-45ef-85fe-334d3e7bd09a",
                "port": "518cf0e3-0064-4c9f-bf0a-fcb4db676253"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "motor_dps_limit_i"
              },
              "size": 16
            },
            {
              "source": {
                "block": "ef01dc36-1165-45ef-85fe-334d3e7bd09a",
                "port": "518cf0e3-0064-4c9f-bf0a-fcb4db676253"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "motor_dps_rght_i"
              },
              "size": 16
            },
            {
              "source": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "spi_send"
              },
              "target": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "start_i"
              }
            },
            {
              "source": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "ena_2clk"
              },
              "target": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "ena_i"
              }
            },
            {
              "source": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "data_spi"
              },
              "target": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "tx_i"
              },
              "size": 8
            },
            {
              "source": {
                "block": "b1b80a6d-32e6-4f8c-84aa-426b59b523bb",
                "port": "out"
              },
              "target": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "rst_i"
              },
              "vertices": [
                {
                  "x": -40,
                  "y": -16
                }
              ]
            },
            {
              "source": {
                "block": "a9a6c276-1882-4abe-bda7-95e688d4b037",
                "port": "out"
              },
              "target": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "clk_i"
              },
              "vertices": [
                {
                  "x": -136,
                  "y": -40
                }
              ]
            },
            {
              "source": {
                "block": "5e48cb31-19d5-449a-9dd0-3b02b34aed79",
                "port": "busy_o"
              },
              "target": {
                "block": "fe014b6d-a22a-4b4c-810d-40499bda7f3f",
                "port": "busy_spi"
              },
              "vertices": [
                {
                  "x": -24,
                  "y": -216
                }
              ]
            }
          ]
        }
      }
    },
    "0d3b531181185ce4d5021273261876ea6404d47d": {
      "package": {
        "name": "bus_16bits_0",
        "version": "1.0",
        "description": "Bus 16 bits of 0s",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22325.484%22%20height=%22331.315%22%20viewBox=%220%200%2086.117617%2087.660347%22%3E%3Cg%20transform=%22translate(24.511%20-5.902)%22%3E%3Cimage%20width=%2274.083%22%20height=%2274.083%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20x=%22-24.511%22%20y=%2219.479%22/%3E%3Ctext%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2215.082%22%20y=%2221.501%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2215.082%22%20y=%2221.501%22%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2222.578%22%20font-family=%22Gill%20Sans%22%3E16%20bits%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(4.94259%200%200%204.94259%20-30.902%2010.634)%22%3E%3Cellipse%20ry=%222.457%22%20rx=%223.307%22%20cy=%226.237%22%20cx=%2212.388%22%20fill=%22#fff%22/%3E%3Ctext%20transform=%22scale(1.02972%20.97114)%22%20y=%228.87%22%20x=%229.622%22%20style=%22line-height:1.25%22%20font-weight=%22400%22%20font-size=%226.171%22%20font-family=%22sans-serif%22%20stroke-width=%22.154%22%3E%3Ctspan%20y=%228.87%22%20x=%229.622%22%20fill=%22#00f%22%3E0&apos;s%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "518cf0e3-0064-4c9f-bf0a-fcb4db676253",
              "type": "basic.output",
              "data": {
                "name": "dout",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 864,
                "y": 216
              }
            },
            {
              "id": "147a73f0-707a-4bca-afed-7733cf4c0adb",
              "type": "basic.code",
              "data": {
                "code": "//-- bus_0_16bits.v\r\n//-- Bit aggregator to generate a 8 bits bus.\r\n//-- Author: JdeRobot [FPGA-Robotics]\r\n/*\r\nmodule bus_0_16bits( \r\n\t\t//-- Output ports\r\n\t\toutput wire [15:0] dout\r\n\t);\r\n*/\r\n\tassign dout = 16'h00;\r\n\t\r\n//endmodule",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "dout",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ]
                }
              },
              "position": {
                "x": 360,
                "y": 120
              },
              "size": {
                "width": 416,
                "height": 248
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "dout"
              },
              "target": {
                "block": "518cf0e3-0064-4c9f-bf0a-fcb4db676253",
                "port": "in"
              },
              "size": 16
            }
          ]
        }
      }
    },
    "893758fe64e858cbd68d98e76bf44c7021f420d1": {
      "package": {
        "name": "0",
        "version": "1.0",
        "description": "",
        "author": "JdeRobot [FPGA-Robotics] (URJC)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 584,
                "y": 200
              }
            },
            {
              "id": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
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
                "x": 304,
                "y": 168
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
                "block": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
                "port": "v"
              },
              "target": {
                "block": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "660e27c2711fe7e78bed19c817157bbb367fa977": {
      "package": {
        "name": "1",
        "version": "1.0",
        "description": "",
        "author": "JdeRobot [FPGA-Robotics] (URJC)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 584,
                "y": 200
              }
            },
            {
              "id": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
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
                "x": 304,
                "y": 168
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
                "block": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
                "port": "v"
              },
              "target": {
                "block": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "0fc5449ef62ab71af0dd4af99e474de6c7d9a3d7": {
      "package": {
        "name": "color_processing_v3",
        "version": "v3",
        "description": "",
        "author": "JdeRobot [FPGA-Robotics]",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22346.318%22%20height=%22331.649%22%20viewBox=%220%200%2091.630012%2087.748825%22%3E%3Cg%20transform=%22translate(4.59%20-3.78)%22%3E%3Crect%20ry=%221.388%22%20y=%223.78%22%20x=%22-4.591%22%20height=%2287.749%22%20width=%2291.63%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cimage%20width=%2274.083%22%20height=%2274.083%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20x=%22-1.229%22%20y=%228.953%22%20transform=%22translate(-3.699%208.83)%22/%3E%3Crect%20width=%2239.376%22%20height=%2246.536%22%20x=%2246.023%22%20y=%2217.648%22%20ry=%221.388%22%20transform=%22translate(-3.699%208.83)%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2243.755%22%20y=%224.403%22%20transform=%22translate(-3.699%208.83)%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2243.755%22%20y=%224.403%22%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2211.289%22%20font-family=%22Gill%20Sans%22%3EImage%20Processing%3C/tspan%3E%3C/text%3E%3Cimage%20y=%2215.511%22%20x=%2240.068%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AAAABHNCSVQICAgIfAhkiAAAG+VJREFU%20eJzt3Xu8f/lA7/HXmDHjlnGLXDrkNieJikNRoYQoPU6d9MijkFxySSmSCOUSuolyLcJUOEedXHMp%20HAolko5Gbl3cjdvIfcbv/LHmd2aMGb/f3mvtvfb3+3k+H4/9x/jt9fm+9/b9rvXea63P+hQAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADOGYtQPsk/NVP1L9ePUt1aUb52cH4Mg+%20VL2xemb1rOqL68bZeyMcBC9XPbf61rWDALAR/rb6oeo9awfZS9teAC5Rva662tpBANgo766uV526%20dpC9cr61A+yxx+TgD8DOfV31u2uH2EvbfAbgitW72v6SA8DeOFSdVL197SB7YZsPjrdqu38+APbW%20MU3Hkq20zQfIq64dAICNt7XHkm0uABdeOwAAG++r1g6wV7a5AAAA50EBAIABKQAAMCAFAAAGpAAA%20wIAUAAAY0HFrBziA7lo9ee0QACzqLtWT1g5xkDgDAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAak%20AADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoA%20AAxIAQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADA%20gBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxI%20AQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQA%20ABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwoOPWDsDijquuVV2+usDK%20WZb22eq91ZurM1bOAmfnc8fGUQC2x4nV/as7V5dYOcte+0j15OqR1WkrZ2FsPndwAD2pOrSLr7us%20EXamq1Rva3c/7yZ/nVJdeYHfH+yGz91muUu7+3mfvkbY/eAegM13YvWi6uprB1nBSU0/+0XXDsJw%20fO587jaeArD57t+YO6HDTqrut3YIhuNz53O38RSAzXZsdae1QxwAd839LOwfn7uJz92GUwA227Wr%20S64d4gC4ZHXNtUMwDJ+7ic/dhlMANtvl1g5wgPhdsF8uu3aAA+QKawdg9xSAzXb82gEOkI+vHYBh%20mAJ3FvugDaYAsA2+UL117RAM45+q09cOAXMpAGyDF+cMAPvnY9VfrB0C5lIA2HSfqx64dgiG88Cm%209x5sLAWATXZ603Sst6wdhOG8uenJcp6Nz8ZSANhUb6++tzp57SAM6xlN78F3rB0EdsNDHMb03upv%201g6xC6dX76v+qnpZ081/sKaXVdeoblbdpGk66ibuV2/QtJIhA9nENyrzvb66zdohYEt8oXrhmV+b%206rnVD64dgv3lEgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAYASH1g5w0CgAADAgBQAABqQAAMCAFAAA%20GJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIAB%20KQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAAR23dgDYhQtWN6++pbp0dcy6cRjU%20oepD1Rurl1afXjcO7IwCwKa5U/XwpgM/HBQfqh5Q/f7aQeBouQSw2T6/z9ut7THVU3Lw5+C5dNN7%2083fWDrJLo+1LSAHYdO/b5XbvXTTF/rhT9TNrh4AjuFd157VD7MJu9yXvWTQF+0oB2Gxvrk7dxXZ/%20uXSQPXahptP+sAkeXl147RA79IpdbPOR6i1LB2H/KACb7YzqyTvc5u3Vy/cgy166WU77szm+uuk9%20u0leWr1zh9s8sWkfxIZSADbfo6pTjvJ7z6juXn1h7+LsieusHQB26LprB9ihzzftG472gH5K076H%20DaYAbL7Tqlt15BLwueoObd5f/1WXWjsA7NAmnrF6afUTTfuKr+SUpn3OJ/c8EXtKAdgO76qu13Tt%208SPn+LcvVM9r+ovk5H3OtRTvUzbNpr5nn9m0L3l+X36m8NSmfcz1mvY5bDjPAdgen6weWD24ulZ1%20ueoT1T9VH18xF7BZ/rG6dXXx6huqE5tmDr0l1/y3igKwfc6o3nTmF8Bufax6zdoh2DubepoKAJhB%20AQCAASkAADAg9wCwzZ5R/fXaIdhoN6xut3YI2AsKANvsVdVT1w7BRjs9BYAt5RIAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABjQcWsHAIZy%20oeq61QnVp6t/qD61aiIYlDMAwH742uoPqo9Vr6peWr3mzP/+w+qKqyWDQSkAwF67cfXG6o7V8ef4%20t/NXtz/z32+yv7FgbAoAsJduVb24utQRvu8S1Z9VX7/niYBKAQD2zq2r51YXOMrvP7H646azAsAe%20UwCAvfCjTQf/E3a43TdV910+DnBOCgCwtDtXJ7f7WUYPqq65XBzg3CgAwJLuXj2pefuWE6pn5FIA%207CkFAFjK/arfq45ZYKxvru69wDjAeVAAgCU8pHrkwmP+avUNC48JnEkBAOY4pvqt6sF7MPYJTQ8P%20OnYPxobhKQDAbh1TPba9PVV//epn9nB8GJYCAOzGsdXTqnvuw2s9PA8IgsUpAMBOHV89q+kRvvvh%20ArkUAItTAICdOKF6TvU/9vl1v626xz6/Jmw1BQA4WheuXlD9wEqv/2vVVVd6bdg6CgBwNE5sWsL3%20pitmuFDT0sH2W7AAHyTgSC5evaS6wdpBqhtWP7V2CNgGCgDwlVymelXTdLwlnF69ZeYYj6quND8K%20jE0BAM7LZau/rL5xofE+X/1IdYvqYzPGuUj11JZ55DAMSwEAzs2Vqle33KN4P13duvrT6n3VfWaO%20d5OmVQeBXVIAYDk3r57X9Nftoaa/eF9f/XTTDWyb4r9Wr6mustB4n6xu1XQfwWFPO8d/78avV/9l%205hgwLAUA5rtw9UfVX1TfX13szP/9/NX1mh6X+8Y2Y2Gba1WvrC6/0Hgfr2525phnd6i6S3XajLEv%20Wj05lwJgVxQAmOfEpr9kb3uE7zup6SB45b0ONMN1mq75X2ah8T7adPB/3Xn8+79X9535GjevfmLm%20GDAkBQB275JNB8wbHuX3X6o6uYP5SNtvr/6qKeMS3l99R/V3R/i+p1Qvn/lav9VyZyxgGAoA7M5l%20mg6Y19nhdt/WwVvd7kbVi5pOqS/h388c861H8b2Hqjs13SewWyc2XQoAdkABgJ07PD3uWrvc/mHV%201ZaLM8stqxdXX7XQeO9uukP/7TvY5t+qX5z5uresbjdzDBiKAgA7c6XmT4+7YPX01r8UcHha3gUX%20Gu+UptP+79rFtk+oXjbz9R9bXWHmGDAMBQCO3klNB/8lpsetvbrdbavnNq3ut4R/qL6zeu8utz88%20K+A/Z2Q4salIAEdBAYCjc43qFS37F+Zaq9vdpXpmddxC472haZGgD88c51+rB8wc4/s68owMIAUA%20jsZ1mp6Hf9mFx71Q013w+zmP/R7VE1vus//q6rurjyw03u9W/2fmGI+tvmaBLLDVFAD4ypaeHndO%20N67utkdjn9P9mg6wSxWOVzTdfDfnYT7n9MXqDtWnZoxxyepJi6SBLaYAwHm7cdMd8ktNjzsvj265%20x+6el1+pHrngeC9oOvjPuWZ/Xt5dPWjmGLeubrNAFrbHobUDHDQKAJy7WzUd/C+yD6914fbukbbH%20VL/d/APq2T27+sHqswuOeU6PaVqPYI7fa7mnGsLWUQDgy92m+rPqAvv4mt/V8qvbHVM9rvrZBcc8%20ufqx6gsLjnluvtj0gKDPzBjjUk33AwDnQgGAL3XbpoV9zr/Cay+5ut2xTSvuLTnV8InV7avTFxzz%20K3lb9ZCZY9ym+qH5UWD7KABwlru27PS4nbpo9dTmXwo4vuk0/e1nJzrLo5tuVvzigmMejd+o/nrm%20GE+oLr1AFtgqCgBM7tF0oFj7M/HdzVvd7oTqOS37V++jmmYQrOHwpYA59xt8ddN9EMDZrL2zg4Pg%20l1t2etycKWxVv9nuVre7SNONiz8w8/UPO1Tdp/nP6Z/rlOqhM8e4bcv9XmArKACM7leqX11wvOc1%20LRL08RljXKydr253YvWSpoV4lnCo6ebB31xovLke3ZGXFj6SJ1SXWCALbAUFgFHtxfS4P2469f6u%209nd1u4tXL61uMPM1Dzuj+skO1h30pzfd0/C5GWNcNpcC4P9TABjRsU2P4F1yetyTqx/vrDvkn9x0%20UJ7jsR35UsBlqldW15v5Woed3vQkvqctNN6S/rl6xMwxbpdLAVApAIzn2KY77X9ywTF/r/qpvvQO%20+cOr231yxrgnNk29Oy9f2/Tc/GvNeI2z+3zTtLmTFxpvLzyi+vuZYzy+6awJDE0BYCTHN90hf7Sn%201o/Go6p7du6PGf236v4zx/++6kfP5X+/UtOz+K8+c/zDPl19f9MDkA6y05vK25wHEV2uaXohDE0B%20YBQXarpB7wcXHPPBHfla/+Orl898ncf1pY+0PalpFb6l1g/4z6aD/9xLFvvlzc1f1+CO1S0WyAIb%20SwFgBBduOvjffKHxDlX37uhmDxy+FDBn0ZxLdtasgGs0/eV/hRnjnd3Hq+9pWvFwkzy0etPMMX6/%20acYFDEkBYNtdrOkv8O9eaLwvNj2z/zE72Obd1QNnvu6tmw56r266m30JH2pa8fB1C423n77Q9P/D%20nMcSX77pEg4MSQFgm128aW78ty403hlNp47/YBfbPq7phr05Hthy89g/0FSK3rzQeGv4+6b1E+a4%20c3WzBbLAxlEA2Ga/1nLT4z5f/XD19F1uf/jMwZzV7Zbyr9UNq39aOccSfqV664ztj6me1P4s+wwH%20igLANltqRb/PNR38594h/y9Njx1e079U39n0sKJt8LmmtRPOmDHGlXIpgAEpAPCVfappKt7zFhrv%20t6vXLDTWTv1z06OC/2Ol198rf9v8RxbfrbrpAllgYygAcN4+3nR9eO40vrM7vLrdfl8KeGPTX/7v%202+fX3S8Pav6lgCfnUgADUQDg3H2sadrg3+zB2G9runa9X/6uaarfqfv4mvvtc00PCJpzKeDrqocv%20EwcOPgUAvtwHqxs1nVreK7/R/NXtjsarmu72/+g+vNbaXlf9zswx7tl0pgS2ngIAX+rfq++o3rLH%20r3NG0+p2n93D13hx9b3NW49g0zywevuM7c/XtBDShZeJAweXAgBn+demm+TmHEB24p+rh+3R2M+v%20/nsHY9rhfvpMU7H64pG+8Su4ckf3lEfYaAoATE6pvr39nx73qOoNC4/5J01rHnxu4XE3xWur3505%20xs82vR9gaykAUP/QdN33vSu89uHV7T6/0HhPqX6seY/I3Qb3r94xY/vzNa0VcIFl4sDBowAwutdX%2031V9eMUM/9i0zv1cf1LdtXmnv7fFp5uevHhuyzQfrZOq+ywTBw4eBYCRvbppnv/H1g7SNP3sjTPH%20uEHmsZ/dK6snzBzj6xbIAQeSAsCoXlHdsjpt7SBnOr1poaEvzBjjinmk7Tn9QvXOtUPAQaQAMKI/%20b5oe959rBzmHNzf/AP5TTTMZmHyq6Xcy51IAbCUFgNE8u2lhn4N6h/xDm/cMgmOqp+ZSwNm9vOnm%20SOBsFABGcnLTHfJzTrPvtc83zWOfk/FKLXNT4Ta5b9NDnoAzKQCM4olNB9ZNmB73puavbnePpscZ%20Mzmt6R4LlwLgTAoAI/j1puVeN2l63EOq/ztj+8OPtHUp4Cx/2fQ7AVIA2H6ParoTfNMstbrdQ5eJ%20szV+rvqPtUPAQaAAsM1+s/rFtUPM8PrqMTPHuFd1wwWybItPNJ0NguEpAGyzt64dYAEPaN7Pcb6m%20WQEXXCbOVnhh9Yy1Q8DaFAA42D5X3al5lwKuntXtzulerbP2AxwYCgAcfK+tHjdzjJ/L6nZn94mm%20BwTBsBQA2AwPqN4+Y3ur2325F1R/vHYIWIsCAJvh09UdmjeV8aTqwYuk2R73qj64dghYgwIAm+Nv%20qsfPHOM+1X9bIMu2+Eh1l7VDwBoUANgs92ve6nbHVU/PpYCze171nLVDwH5TAGCzfLq6c/Meafv1%20TfcUcJZ7VB9aOwTsJwUANs8rqifNHOMXq+sukGVbnNp0PwAMQwGAzXSf6l0ztj+u+oPq+GXibIVn%20V89dOwTsFwUANtOnmn8p4FrVLy0TZ2vcrfrw2iFgPygAsLn+qumv+DkeUH3LAlm2xYere68dAvaD%20AgCb7eebt7rdcU1rBZx/mThb4Y+qP1s7BOw1BQA222nVHZt3KeDaTdMLOcs9qo+uHQL2kgIAm+/l%20TXP75/jl6hsXyLIt3t+0fgJsLQUAtsPPVu+Zsf3xTSXCpYCzPL3687VDwF5RAGA7LLG63Tc33VPA%20WZ63dgDYKwoAbI8XVifPHOMh1TfMjwIcdAoAbJefrt47Y/sTmqYWHrtMHOCgUgBgu3y86WE2c1w/%20c+Fh6ykAsH2eXz1r5hgPq66xQBbggFIAYDvds/rgjO1dCoAtpwDAdvpI0/0Ac3zrAmMAB5QCANvr%20f1b/a+YYD6+utkAW4IBRAGC73a360IztL1T9YfYVsHV8qGG7ndr0lMA5blDdfYEswAGiAMD2+5Pq%20T2eO8ajqqgtkAQ4IBQDGMHd1uwtVT6mOWSYOsDYFAMbwgeZfCrhx89cbAA4IBQDG8czqf88c49er%20Ky+QBViZAgBjuUf1sRnbXziXAmArKAAwlvc1f8nf76rutEAWYEUKAIznadWLZ47xG9V/WSALsBIF%20AMZ056aVA3frok1rBbgUABtKAYAxvbf6hZlj3LS6w/wowBoUABjX71cvmTnGb1dXWCALsM8UABjX%20oequ1SdnjHFi9cRl4gD76bi1A8AeulHe40fjtdXNZmx/q+rR1TuWiXOg3HDtALBX7BzZZrc784u9%20d9+1AwA74xIAAAxIAQCAASkAADAg9wBsn+Oqa1WXrT5RvbV5y8ACY7pEdY2mmR7vr95cnbFqIhbl%20DMD2OLF6ZPXB6u+rF1SvPvO/n19de71owAb5pqb9xweb9iEvaNqnfLB6RNNTINkCCsB2uEr1t9X9%20mlr72R1XfV/1+jb3jvgvrh0AdmhT37O3b9pX3KovP0N8yer+TfsaS0JvAQVg851Yvai6+hG+74Tq%20qdX37Hmi5X147QCwQx9aO8Au3LxpfYfjj/B9JzXtc5wJ2HAKwOa7f0c++B92bPX46vx7F2dPvGHt%20ALBDf7d2gB06vmnfcOxRfv9JTWcc2WAKwGY7tp2vy37V5j31bQ0va7r+CJvgQ9VL1w6xQ7do56f1%2075obyTeaArDZrt10XW6nbrJ0kD32meqX1g4BR+mXqk+vHWKHbryLbS5ZXXPhHOwjBWCzXW6X211+%200RT746nVb60dAo7gMU3X0TfNZXe5nZUgN5gCsNmOdLPO0tut7eerO+ZyAAfPB5rem/deO8gujbYv%20Iddv2DxPq55V3bS6bnWZ6phVEzGqQ03X+9/QdJ/KZ9aNAzujALCJPtP0cKPnrx0EYFO5BAAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAgBQAA%20BqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAAEZwaO0AB40CAAAD%20UgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAF%20AAAGpAAAwIAUAAAYkAIAAANSAABgQMetHYBVXL96ztohduH06v3VK6uXVJ9fNQ1Mjq9uXt24umyb%20uV+9/toB2H+b+EZlvstXP7x2iBl+rnpndffqpStnYWw3rx5fXXntILBTLgGwqa5Svaj68bWDMKzb%20Vy/MwZ8NpQCwyY6tnlJda+0gDOebqic3vQdhIykAbLoTqoetHYLhPKzp2j9sLAWAbXCL6mJrh2AY%20l2i69g8bTQFgG5y/uubaIRjGNXMDNVtAAdhspsGd5aJrB2AYF1k7wAFiH7TBFIDN9r61Axwgfhfs%20lw+sHeAAec/aAdg9BWCzvbk6de0QB8BHqresHYJh+NxNfO42nAKw2c5omoo0uic2/S5gP5zRNP10%20dD53G04B2HyPqk5ZO8SKTmn6HcB+emT1trVDrMjnbgsoAJvvtOpWjVkCTmn62T+5dhCGc1p1y8Ys%20AT53W0IB2A7vqq5XPbzputy2O7XpZ71e088Oazj8uXtEY9wT4HO3Zcxl3R6frB5YPbjp0bhXqC6w%20aqLlfbb6j6Ybj1x75CA4rXpA9aB87tgwCsD2OaN605lfwP7wuWPjuAQAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQ%20AgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAAIzg0NoB%20Dprj1g5wAD3pzC8A2FrOAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABbXMB+OTaAQDYeKetHWCv%20bHMBeNfaAQDYeO9cO8BeOWbtAHvoik0lYJtLDgB751B19eodawfZC9t8cPy36o/WDgHAxnpWW3rw%20r+0+A1B1iep11dXWDgLARnlXdf3q1LWD7JVtPgNQ9dHqxtVrV84BwOZ4fXWjtvjgX9t/BuCw81U/%20XP1YdZ3qaxrnZwfgKztUfbB6Y3Vy9ezqi6smAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAACW8v8AxyHd8amiKS4AAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2250.808%22%20width=%2250.808%22%20transform=%22translate(-3.699%208.83)%22/%3E%3Cpath%20d=%22M76.568%2027.543a6.92%205.727%200%200%201-7.05%205.616%206.92%205.727%200%200%201-6.79-5.832%206.92%205.727%200%200%201%207.045-5.621%206.92%205.727%200%200%201%206.795%205.827%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cimage%20y=%2217.648%22%20x=%2258.928%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAAA3NCSVQICAjb4U/gAAAACXBIWXMA%20AbrqAAG66gHB8Tn1AAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAArhQTFRF%20////RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20REREREREREREREREZ3VqbAAAAOd0Uk5TAAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8g%20ISIjJCUnKCkqKywtLi8wMTI0NTY3ODs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlRVV1hZW1xdXl9g%20YWNlZmhpamtsbW5vcHFyc3R1dnd5ent8fX5/gIGCg4SFhoeIiYyNjo+QkZKTlJWWmJmam5ydnqCh%20oqSlpqeoqaqrrK6vsLGys7S4ubq8vb6/wMLDxMXGx8nKy8zNzs/Q0dLT1NXW19jZ2tzd3t/g4eLj%205OXm5+jp6uvs7e7v8PHy8/T19vf4+fr7/P3+fB0t5wAAIL1JREFUeNrtnf1DVUX+xwcUBBHvwiUI%20n1ZsUXkIbMFt1bUlrXYxClhxdb8gsX5JLXfTIEDchF0fulFafYNQd4XFtNowMR82EO3CUklUmviw%20Fo8J997zb3zBpwC5954z85lz5pzzef+qnPnMvF/3M3Nm5swQIrZiJEbFEH3LW/2IwVXECkARAqBr%202VkBsCMAehZzD6D7PsDkABSxA1CEAJi5B9B9H2BuAGIlAMUiAGbuAfTeB5gbADsEAHYEwNQ9gM77%20AFMDUAQDQBECoFO1wADQggCYugcQvg8I5AVAIPYAeugDihpD+QAQ2qjzSbAWKABaBMfcEwH0AIQ2%206nz4A9YDCN0H3ExzHgigBmDYf30TUAwHQLHo3VxTKDQAoU26fwVqgQOgRXD/hwiwwgJgbdL9SzBg%20DyBsHzBimHvGCgmA9Yz+p0GKIQEoFt3/cQgIejSntPKot5rVv/liVown/3VLQAskAC3C+z+GAEtW%20TZ/86p3MCXbvv04JiJNAFaeDaY7msDv/NKfqhsL69ZRZ7j44rNkIk+HFsAAUi+//XQIibAMUNbz6%20rJ87/3VJQAssAC068F+Szg4TsLaHso6fZ9z0/6whFsSAewDh+gA309xnw/z3MFTyxMNu/NcfAcXQ%20ABTrwf8hAk6wVbPmrEEWxVuhAWjVhf88VWTqHkCoPkAT//VFQDF89YvN7r+uCGiFr32r6f3XEQFx%20PGofZ3r/9UNACY/Kl6D/uiGglUfdW9F/vRAQx6fucei/Tggo4VP1EvSfPwHpr/5M0B4ApA/42av/%20w/DXgY0iANDIc7d4+qDkPPgLxofE86p6PGNgvzjolKStDA8IFYAAj5vQAfwfVsOTPgL2AIx9gM+T%20DbeeUuWvZwLU8H9IbWsDaB8SsvprXpX/JvcB2qgC1rbdfczREAYCmrT1v0kd/4fUWWileER4zpEB%20rg1w/vV0CvushZ2jBhNReiVAPf+H1Puqwt/b9HX1DhUawXmydMlEJXE98GrvmEd0JtM309gNe2rq%20jFVF/4ebWsF4MOq5j13qtcSV1x+ZoGTkN1Z9T+mRALX9H9YxWePBuZs/Ub01OiuW+MoY+R1zk0Y2%206I8ALfwf0n+8jQfnFH+q0S/i21cSvIz8/uP+j3f70hPQrEVtm7Xxf/i3VuC+6IlPv+eSNNSHqW4z%20lLWg0+OfHgqibq4wDQj4cdO52v4Pjwdt448HZ229qPnESFveuEY+YOv19pen76cn4Kza1Tyrpf83%20x4MLx/6Vb+phpwhTo9J/t08fG9vCg3JC+zJGNwRo7f/N8eCKUdn28XOSMOrfOnnkyG/FMZl/990j%20OiFABP9HjwcXfCAJpa8yZY38xmpgDXWz1SiKb7Bh5wvZqQujgoKiFqZmv7CzYVDRn5/wF8H/H8eD%20sypdkmg6+qCckR/Y4urDCspof+0py9i/tzz1WruCR+wRw/+b48E5lrJ+SUA5bKFzvI/87lEl3Y9L%209gcgXaXR7p4RXdolO8y1gvg/PB78ThJU31MNSj/8CUW7Zci1f5vH2fvQbXIR6IkQxX/jqWW24nbz%20+1zWk7tf9jp5Y325W16UNvSfmy4lKW24Z2U999R0WWtop+SNV+eg/9zU+6SyhrNclfPUt2XuqQh4%20W1aQVeg/PznzFbVcmZwxqYLlpg1yltFvWNB/jtqlYG0oWMYRENdTlHiRcl1GiFnoP0/9c7LspsuR%208ftPUeZGiowcUIP+c9Up2S9aJ70/TPF2gw3en9kXhP5zVft8eW0n4zLEt5U7ImMk+Cj6z1fXl8pq%20vCzvyYRiT3WA97fBHPSfs278Xk7rveh1/mc6jSnTvc4IlaL/3FUoo/ne9PaQl+lsednrsgX6z1//%205+e1/eq9zf9Tbt6zelsXOIr+q6B/jZ5voXjCNlpntlEUhv6Dy/5TNgC6qL/eCe1SAQD036u+/TkT%20AAxDtVL+AKD/MtSTygJAND0A0dwBQP9lyfm/9AC0s4zP2jkDgP7L1Q5fWgBeYwHgNb4AoP/yVRNI%20CcBTLAA8xRUA9F+JToZTATDItGpvGeQIAPqvTOfn0QDQwDZJ08APAPRfqf67hAKAnWwA7OQGAPqv%20XDeylAPwAhsAL/ACAP2nUoFiALLZAMjmBAD6T6k3lP5BKhsAqXwAQP9ptV/pHyxkA2AhFwDQf+op%20wRilfxHFBkAUDwDQf/oEoHgMwLhxM4gHADvQSOoEYAgA7u9DK2kTgGIAROwCMAXQJwDFAAg5CMQU%20QJ0AFAMg5msgpgDaBGCQiSBMAbQJwChTwZgCKBOAURaDMAVQJgDDLAdjCqBLAIbZEIIpgC4BGGdL%202N/QUpoEYJxNoZgCqBKAgbaFYwqgSQAG+jAEUwBNAjDSp2GYAigSgJE+DsUUQJEADPV5uCAp4Ad7%20bdmGnJWpS5Pmzwzx8wuZOT9paerKnA1ltfYfhEsA4+motxTA64CIesaTISK0TgHtR3avWx7l4URG%2036jl63YfaRcoAYynSm9/zuuImDdZzwbRMAW4ztkyZJ/DF5FhO+cSNgF4H6rxOiTqRaLPFOBs3JGm%20OCta03Y0OoVMADIOCuV0TBz7WbF/Vb8xBw5lUs+OWzIPDYiXAMij3h/B56DIGKK3FOBqyGW87tKa%202+ASLAGQIBmtyOOo2JOE6CsF2DfPBgiZzN5sFyoByLowjMdh0RAHhaqXAm7sTSRgStx7Q5wEIOes%20WB7HxfcEE/2kgO7yaQRU08q7hUkAxCIHR/ALI8pAGjKiV4U2vFIQQsAVUnBFkARASJWsJ8FeGXMV%206MIQ/imgI38y4aLJ+R1CJABC5sh7OQG9NOpZoFbknQIu5/gRbvLLuSxCAiDEJrMnhLs27nOwZuWa%20Ahy2EMJVITaH9glg6GfUI/N5YBdHZoA1Ic8UcDyRcFfice0TACFrZT8R5urYE4AtWM6r8S6t8SEq%20yGfNJa0TwJD2KFkEY788+mHABuSUAgZ3WohKsuwc1DgBEOJ/QlnrsF0fD3thGJcU0J5MVFRyu8YJ%20gISdVXN28mwYZOuFc0gBBy1EVVkOapsA1PUfmgDwFNCfR1RXXr+GCUBt/4EJgE4BbQlEAyW0QTfy%2093LTWFiz+ovUzWHCpoDKKUQTTamEbmSZ0+1WDfwfIsAqZgoYyCaaKRt4v0j/LFn+n5E00RlAAv4F%20FlXPcqKhlvfAtnGlwP5DEvBLuKn/JKKpkmAXB1wLBPYfjgDfJqiIzkcTjRV9HrSJP/BWXmiTpKGa%20QkEaLReMyEiiuSJhf5GPi+w/EAEhV4GiqZ9KBNDUesgWPufr0f9GSWM1AhBgA4qldhIRQpNqIVs4%20VWj/IQh4EGhFvV4Q/4cIgMwBh92XEyiA/0MEBDI214dA/f9UIoymAo4DnB7mAopEAKCIsbEWwoRx%20PpIIpEjAd4GtRGgCWP0nB2De/6OJUIqGmw+4OFFkApj9/ynICKAniQimJLg5waeJuAQw+w+zDjSw%20nAin5WDrAu8RYQlg9z/4e4g4somAyoZqZdccUQlg95+sV2vJRAOBrQ4XEzEJAPB/AsRouW2KmABM%20gdoh8ikRkgAA/8kTAHH0JxBBlQC1S2yuiARA+E/eBggkjwirPKC23kxoCThbw1byibNc/ff/jr1x%20DhKBBbRX+BNCScDZMPLwCYaC9/i7224K4r/yK4nuVbtFZAAs7TAERNERcGvrbsbntLMra4m7Dccw%20/sv8rt2TBpOJ0EqG+WboOUJDwJ2Nu37P0iy4D9hunaM33pZjIP8DuphbZicRXDtBAPiYUBAwYuO2%20pUzpxOSNqruzD/cSAOQ/SWNumEsW0QGwgHw56pqunIDRG/aCc07KL66vJmtkw47ddgjlP9nH3DBr%20iPBaA5IC1hGlBNy7YTMm68U3ve5UOFpZmvPo2AuHRxMA5r8/8zlLx33EB8AH5PwAeecyF3ny/5a8%20FTT+X40kAMx/8ivWVnEkEh0oEWK90xGujIAmdxu26QAg1iZ4/8lfWFvFRnQhG0QKkHkq420C3G/W%20pQTg7vZjQP/Jv1k3gcCd/xMUvWTlxvLq+rbu7rb66vKNK5dEB4E9PARic8gRooAADxs1aQG4vQEV%200n+rU50fhVdFb2oYJxRnwyaoXUY5AAAMhMgnwNNGXWoAbhIA6T/JZGySDoiDynySt3k4+de+LRli%20mOkHcZ7garmlFXncqE0PwBABoP6TNxlbJJ89hJSKC95KuVCRwl5OPgAAX5fEyyzN4zZtBgBIIKj/%205Cu2BrnCfP7nIpnLJCcWsZY0GeZU2daSOOZWZwEAVvMYW6OAsfzYd+WX9W4sY2EFUIvwzAyIAsCM%20zENsLdHN9gow4y1FQ1DnWzPYXgQAzxZvLY7TNwC+iX+sZh8VlTP5UaZ4r05/GRNxsIfgMDCgMQBT%20fv3S+10QTXCD5fz/x67RFHntMYYip0HfMNFCyYCGAMzI3P0J2MnKexkCWU8ZhWM9Q6F74TfltRTH%206gWACSBZf6ToVwH836Av9Q1/+hUBiYeUM6A+AFNSgLL+qBka6nDu+4il3I/uoy6Y101TLUWx4gIw%2083evNHI5T38zbUTxjJv02uNpS94scZMSBlQDYCjr7/uKV41dsymjWsH8Ota9grLo2VzvG7TLZUAV%20AIJ5ZP2ROkbrP8Dlr05aAhokvrIXxYgAALesP1K5lPkfZDqmm7IXyJW4SwYD3AGQVNAA3fmE97XD%20FN9ONxK0qnLvMNFaalTyEN3730dQ5X9E9zZ4CAEAUiZVZG/ABfCGJhsgEIA7wzCqjwHWQ4ZANSdo%20cSIAIGqkmv8HHZk6qNYFGhEAEO2gWf+7BhvDNZq1wR0IAIjSKMIqgw6C5u7sNAQAZBqQ4iVwBviN%20Tv0UO0SsLgQAQOcoonoLPoy3KMI4hwAAiOJ7oFgO428nxWK8DQEAEMW91e/yiONd5XFkIAAAilAc%200yI+gSjfLR6BAADMxCuP6QSfSCiuUG9HAJh1RHFIKbxCSVEcyhEEgFm7FYdUwSuUCsWh7EYAmLVO%20aUQ+F3iFckHxl6PrEABmKT4ZPplfLIrPqFuOADArSmlE2/jFsk1pLFEIAKt+8FUakZ1fMIp3p/v+%20gACo3ebRPKOJFohGkwBQqzSgTTyj2aQ0mloEQO1lWK67sRs0X5Y2HQAbFMYTxHUfllPpWWIbEABG%205Yg0BFA+CMhBABi1UmE8S/iGs0RhOCsRAEalitXiSnlMRQAYtVRhPBv5hrNRYThLEQBGKb0jtpxv%20OEqPKkpCABg1X2E81XzDqVYYznwEgFEzFcZTzzeceoXhzEQAGKX0g4w2vuG0KQwnBAFglNITorv5%20htOtMBw/BAABQACwC0AAcBCIAOBrIAKAE0EIAE4FIwC4GIQA8GtxXA7GDSE8hRtC1AYAt4SZHADc%20FGpyAHBbuMkBwA9DTA4AfhpmcgDw41CzA4Cfh5scADwgwuQA4BExJgcAD4kyOQB4TJzJAcCDIs0O%20AB4Va3IA8LBokwOAx8WbHAC8MMLkAOCVMWYHAC+NMjkAeG2cyQHAiyNNDgBeHWt2APDyaJMDgNfH%20CwxATJGdfy1z6WKLBzksoDuervRc/u1iL4ohAog/A8coI1sBMAxzrqAsvMEc7t+efOfLgGs2LQHM%20OaCb1v/ZLr7uxxLBFFvUwq++m2mjimccB7TH05a8mV9rtIjnPm8G7NQx3cf0LvDRfdQF283m/m0G%20ivkwkEgdkT/DfMAb/tTFJvJxv1ho9zkysJchoPWUs8KO9QyF7jWp+7cUB87AjWkM4TxGtTJ07TGG%20IqfdAHc/juhKccWtoA1QzhJMSJni/QH9ZSEsJcIeVdSqN/c5MNDN5AeZ8ZaiKQHnWzOYigvpNr37%20txkoAWOggHVoomCn6LusnW0BmPslOnYfloErk1kjWSTze4ETi1hLmnwF3R81G1PyNUBz5LMHklLh%209bvBCxUp7OXkA1T3m5J4YhytBmiRDj+AQHySt3mYobFvS/YBKMSvQ7sFMEEVArE0mgMUTPSmhnFG%20hM6GTdFABYAcDfaAoQAA+UrycghYOEHRS1ZuLK+ub+vubquvLt+4ckl0EBztlwEqe95Y/sP8KGz6%20qKsNoq6vGwyAcIhNuo5EPVQ1EWQ/crrBAIA5x/+4j/gV9TkOUVNniNEAgDksZY34FV0DUtGTRvOf%20TAfZIHPJIno9LZdAACg1HADkY5CG2Sl6NXfCTAEvMR4Az4E0zGCy2LVMHoSZ955oPACAzkxsF7oT%20sLTD1PJ1YkB9AtM2B0Wu40GgRcBHjAgA1DbZPHGrmAdUxc4JRgRgLlDr9CeIWsMEqHNJKogh9SlQ%2087RNEbN+U8BuLV1iTACKodqnUsz6VULV71tfYwIwB+xjqWwRq5cNtgvwFWJQvQfVQgPLxavccriv%20wROMCsDTYE3UkyRa3ZJ6wCr3oVH9JxMvgjXS5WixqhZ9Gaxqii9L1ZG2wrXS+UiRKhZ5Hq5mbT7G%20BWAW4LlZZ6aKU6+pZwA/A8ojBtZhwIaqnyRKrSbVA1brv0FGBgD0Mu1aQQiYBHo75HYj+098Qc/P%20rheiF5gK+fuX+qcbGgDyOGRjSWcEGAlGngGt0lZicH0A2lznNX8bjD4PWqGvJhsdgAWwh2dd1nhG%20KOkyaHUoT8XVlSphW6xH01nh5T2wtTlqfP/JLODLPAY0XBnKBj4N1vGgCQCAv8yjUqP9AVMqoWti%20M4P/xPIddLu1abJ8ltAGXY/vQ00BwBz4exT6NZg+zQO/l0pyxpgCAJvEQQdV3i1uOcijFvvN4L+1%20l0fTSe2qfjGS3M6lEqZIAQUSHw3uVC0JWHYOcqqECVJAQKfES5fWqLKS7rPmErcqmCAFrJU46rgK%20J0gkHudZA8OnAJ//8Gw+yWHjfLBCiM3BtQKGTwErJM66nOPHL3q/nMu84zd6CjgmcVdHPqcVtcn5%20HfyjN3gKWCipoSsFHDqCkIIrqgRv7BRwUFJH3eXTYAOfVt6tUuiGTgEPOCW1dGMv4BtB4t4bqgVu%206BRgk9SUffNsiKBnb7arGraBUwCnWWD3cjXkWhlDzm1wqRy0gVNAgaS+Bg5lUk8RWzIPDWgQsmFT%20AMdZYM8N2rgjTXEisKbtaHRqE69hU8BaSTu5ztkyIuQGGpFhO+fSMFiDpgDOs8ByloyP7F63PMrD%208Ru+UcvX7T7SrnWcBk0BT0pi6Ad7bdmGnJWpS5Pmzwzx8wuZOT9paerKnA1ltfYfBAnRmCngmIQC%20TwEx3p4kDkq/QFs5pIAib08qMt0ssLlSgNc5Krso/j/gRFfhU0Cs9yeJcuH0q2gqhxRQ5P1BgvQB%20qs8CmyMFyLikvUUMAArRUg4pIFbOg4ToA7SaBTZ4CpB1+G6x2WeBDZwCWuQ8R4Q+wKcN/eSQAmLl%20PUiAPuBJtJNHCpB5/LoAfUADuskjBbTIe472fQDOAnNJAXFynxOHs8CGTAGyL+DQug/4Gc4Cc0kB%20rXIf04qzwEZMAXHyn6NxH5A+iFZySAEl8h9TQpAA46WAVvmP0boPQAI4pIB4JY+JRwJ0qgPuVlfz%20mpU8pjlP/r74ZX9GAoTRP8a9RXxSep3iD1YG6tLlXa/wJwefLQRIAJD/Pov3XKd72vU9i70eojR5%20//D/RAKE9X9e6ZcsT/yydJ5Hk6JudyxIgJD+h+efZn/q6fxwtxY9eu3O/0ICxPN/2WGg9hs8vGx8%20gzaNOAALCRDL/wmZjZAPb8yccG/3v2/Uf0ECBPI/4JkvoJ//xTMBY7r/sXcfIQGi+B+8hcuOys4t%20wSOcSbl6z39AArTTeyP8X3WRVykXV90t5Pnxzr9EAjSTs3r+7fZawHU3VcOCW91/9fj/jARoiMC+%20YQRCKzjvpXBWhBIyu8ndPyMBmiIQl3uVfzFXc5d5KAUJMLuQACQACUACkAAkAAlAApAAJAAJQAKQ%20ACQACUACtCWg91/oiNr6gzgE9JaHk182oSWqyjFXlO8Fhu0fkq8a8+Sou6oS5IuR2/YPi/cdjsr1%20vXE/g3bOJSIQ0Fs+6sz/Bz8UqY36yywx+52YAPgR0PvXe658WHhAlCzgqpw1HJBBEeCXAOQTMI79%20w/pp+fcitNAHC+4EZEgE3tH8y9G+v7q98CV4/Xmt2+fc4yMDMh4Cznkafzvswf6bm+afePs7DVvn%20cOrYW2iMhgDfBOCVAC/235R/alWXJm1zceus8eIxFAK8E4BnAvr+JvO2r4C0fd0qt4zrvacnugvH%20QAhUa3iChGz7b+WBX/3l3+o1+6fFczxGYxQEVEgA7gjo+9v9ih9kzXzzKxVa5ZPNMt6MjIGAGglg%20XAJo7L/9Ff0hvpn/4+eiZEZiAASc87U5R4je/iFl8msPR/266UpC0T0CKiWAMQT07bif5VEzODXG%20wJGccMXB6BsB1RLASAIY7R9SB4+2+Hp1CF004yHQrBMA9hGiNgHs9hNSzaMtGA7cvAeBfwRfwgQw%20LgEQ9hPyRx6NwXTc4mgE/jGRbMAEMB4BIPYTksihLVoZYxqBwPD5D4Hf6gEAze8aoJRvl1A9wBgE%20bp3/oYsUkKtTAMj7Yv4YbiJw+/wXXaSAq6E6BeAl4XqAuwgcuLN+sF4PKaBCpwD8WsAeYKy2wM1O%20fVa3ffWihKgwf/+wqIRFq7fXfQa1Vcq5QJ8ATHGI2AOM0kyg+5T7arKm3vv0qVk1fSCPb9BpCvhE%20zB5ghP4OEVbPgYwgdwUEZRzoAShilT4B2A0MAPjVW4+wx9RVlRbouZDANPaNMheDdQlApuA9wMRP%20mRcmdsm6BcK6a4CxoC26BGCG4D0A8ytAbbTcoqJr2UrqDNAlAR1C9wARjNtYTy9WUtpitnPmn9El%20ANVC9wA2pmg6snyUFeeTxfJ7+GKCHgEAXQ+CvoA5nOUVzVVKkZMDSl30JWbqEYBEkXuAUoZYetMp%20F9ro5x0a9QjAhC5xe4Dg6/ShfPMQbakPfUNd6DKTrwdB9wDP04dyKpK+2MhTtKUeNvl6EHAP4H+B%20OpL9gSwFB+6nLHYwXIcApMABEAsbWTb18K+QtehCyqFgvqnXg6B7gBZa/wGm5VfREXBaj31Ao6A9%20wM9p4yiEKL2Qrux5OgTgFUF7gF20/T9M8XTjgFIdAvA7MXuAiZSXgJ0KhCk/kOpd4Esf/QEwEwgA%204FMyH6d8/4+ECiCSaj5gsQ5TwFdC9gDv0M3/PQQXwUM0c4J7dAjAPhF7gClUM7KudMgY0ileBa5P%200h8AfxSxB/i9CGMwmrWIdP0BkChiD0A1Q90BvCcjgGJ1uE5/AICsB9lhY4qkmp7Kgm6aLIotaFb9%20EfC+eD3ARqp5OPB3MB+KPUJ5+gPgJfF6AKrpSQ6vYIuVR9EcrzsAUoTrAWKo9n/yaBuanaKtJTr7%20WjjYIVoP8DLN/u9oHm0TTbdbvLVYVwywrwfFgMYTTrM3cxeftqFdkpBaimN1A8Ar4vQAEU8U/PNr%20mhC6OI2+rQzvSLph4HdC9AD3/6awjn4/HrfLGqrYJkiL9MDATK17gMjfvnToAlsIabwaJ405PRbF%20EJRnsb+G9ATyii0Q4NthdJg7AAf4BXcAAdABABn8gstAAMQHoC+IX3BBfQiA8ADU8IyuBgEQHoAs%20ntFlIQCiA+CYyjO6qQ4EQHAAPuMb3mcIgOAA1PENrw4BEByA7XzD244ACA7Aar7hrUYABAdgEd/w%20FiEAggOQwDe8BARAcACi+IYXhQAIDkAY3/DCEADBAfDnG54/AoAAIADYBSAAOAhEAPA1EAHAiSAE%20QDQAcCrY5ADgYpDJAajjGx4uB4sOAG4IMTkAuCXM5ADgplCzA4Dbwk0OAH4YYnIA8NMwswOAH4ea%20HAD8PFzXiimys7YxHhChc8UWtTA1Mx4RYwAGihkYwEOizM4AHhNnEMUVt1I1OB4UaSAGSmgYwKNi%20jaT4ZuUNj4dFG0l5ypsej4s3kqwUnS9eGGEkUWzDwStjjKR0iuEXXhplIE26rrz18do4I2kPxe8P%20L440kBbTzMDg1bHGkc+XNA7g5dHGEc0YDK+PN5Dm0a3CFEKUXUhX9jx0DVKnqUxwrWIveZWLqujT%206Bmo8ul+hi7mHFBI57+Uj56BKnyQci1+P9NIMHA/ZbGD4egZrA7T7sY4xfA2GHmKttTD6BiwllHv%20xvqGekboIfqr65ahY9Civ9O0l3JWOL2XushG9AtcmfQ7Ml2lFGuDAaUu+hIz0S9wTfiCYUt2R5bC%20eTmfrA6G4r6YgH7B6xmmXfmnFU3NLz7NVNgz6BYHBXSyfZZTK3uvcHQtW0mdAegWD21h/DBrYJes%20PVrWXQOMBW1Br7go+CLrt3ldVWle5oUC06q6WEu5GIxe8dEq9o9zpZ4DGW5PkAjKOADw/a+0Cp3i%20pQYJQn01WeOcJDU1q6YP5PEN6BM3LXBKMHJ8Vrd99aKEqDB//7CohEWrt9d95gB6tHMB+sRPFZLw%20qkCXOCr0quj+Xw1Fl3gqV3QActEjrooTHQBcBuSrfcJ3AbPRJI6a7xR+ENg0GW0ycQIYUjXaZOYE%20MKTn0SheqtaD/5IjBZ0ycwIYGghGoVcmTgBDOoMDQR6a59QLANI+dMvMCWBIm9AuMyeAoYHgo2gY%20tN6R9KRrOBA0cwIYUjMOBM2cACSw4ylQtzTXqTcApD+ha4Cq0p3/kgOXhk2dACTpz+ibmROAVIS2%20wSUAB/pvav0B/Te5itB/JAD9RwLQfyQA/UcC0H8kAP1HAtB/JAD9RwLQfyRA5T3fuXH7nOi/WQlw%20Vgx//z/fHQLov8EJaLhz/sv8aif6LyAB367f0svP/osjz/8aBwH0X2MCvt0QSMjMv3Oyv3PLmPP/%205o1BAP3XloBLG24fAvnIpxzs/+KZcc5/nfeOE/0XhIBLG388A3Ti+u+A7W/MdHP+948IoP9aEtD5%203Ohd+BG2Pjj3Bw972t05t8qJ/mtMQOfz936EEV56Hcb+0/ne7n+aW+VA/zUk4PKm8b/BCX7+ArP7%20X5bKuv9x7h/QD60IuPwnt2c/E//sFhb3r+9ZjPf/Ck7AFQ/239TPd1FeMzFQlz4Jm1hwvfDnIO//%20aeLj7yifG2rOs2LzGkdTfv++wu8K4rHRDKbIjUruHWzFBjOgYl6WfRNcCbaWIRUuF4A4bCtj6mvs%20Acytf8oDoBhbyqAqwB7A3HpClv8t2FBGVQT2ACbXN3IAiMV2MqzqsAcwtwqxBzC3foM9gLl1P/YA%20Jpf3TUK4ucvQOoQ9gLn1kjf/7dhGhtZvsQcwtyK9ARDDOYD/BwDF42JUCDSGAAAAAElFTkSuQmCC%22%20preserveAspectRatio=%22none%22%20height=%2226.471%22%20width=%2226.471%22%20fill=%22#ffaad5%22%20stroke=%22#a6006d%22/%3E%3Ctext%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2272.979%22%20y=%2288.017%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2272.979%22%20y=%2288.017%22%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans%20Bold'%22%20font-weight=%22700%22%20font-size=%2219.756%22%20font-family=%22Gill%20Sans%22%20fill=%22red%22%3Ev3%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "63094452-e4c3-4d0c-9268-cc8402354532",
              "type": "basic.output",
              "data": {
                "name": "orig_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 840,
                "y": 48
              }
            },
            {
              "id": "3b5982a3-dbd5-49c4-847b-18dd1c3603d8",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -96,
                "y": 64
              }
            },
            {
              "id": "b390aaf0-6da0-4582-82ca-b051780b1836",
              "type": "basic.output",
              "data": {
                "name": "proc_we"
              },
              "position": {
                "x": 944,
                "y": 88
              }
            },
            {
              "id": "8d008849-f223-4597-83fd-11ca982935e0",
              "type": "basic.output",
              "data": {
                "name": "proc_pxl",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 840,
                "y": 128
              }
            },
            {
              "id": "01b7de49-be8a-40be-9c15-a615d855e526",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": -96,
                "y": 152
              }
            },
            {
              "id": "f72b6df5-08aa-4595-8423-aa969fbcbe5f",
              "type": "basic.output",
              "data": {
                "name": "proc_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 944,
                "y": 168
              }
            },
            {
              "id": "ed77abcc-9687-4a31-a53d-02cb20b7ee74",
              "type": "basic.output",
              "data": {
                "name": "centroid",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 840,
                "y": 216
              }
            },
            {
              "id": "4f0b11a7-98a3-484a-b7b8-b70813231ea7",
              "type": "basic.input",
              "data": {
                "name": "proc_ctrl",
                "clock": false
              },
              "position": {
                "x": -96,
                "y": 232
              }
            },
            {
              "id": "6c7d6095-1295-4de4-95b4-3932d19eca6c",
              "type": "basic.output",
              "data": {
                "name": "new_centroid"
              },
              "position": {
                "x": 952,
                "y": 256
              }
            },
            {
              "id": "620f3a87-b603-48c2-a9db-3c3b8ce3f205",
              "type": "basic.output",
              "data": {
                "name": "proximity",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 840,
                "y": 296
              }
            },
            {
              "id": "1f66055f-b02f-44d1-8d8d-ef6560d5108d",
              "type": "basic.input",
              "data": {
                "name": "orig_pxl",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -96,
                "y": 320
              }
            },
            {
              "id": "34fd5a84-b672-4782-ac30-87152c3f3861",
              "type": "basic.output",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 952,
                "y": 336
              }
            },
            {
              "id": "909826df-b630-445c-a006-e0149b7ab18c",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\r\n//\r\n//   color_proc.v\r\n//   Takes an image from a memory, light leds depending on red pixel position on frame\r\n//   \r\n\r\nparameter\r\n\t/* // VGA\r\n\tc_img_cols    = 640, // 10 bits\r\n\tc_img_rows    = 480, //  9 bits\r\n\tc_img_pxls    = c_img_cols * c_img_rows,\r\n\tc_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;\r\n\tc_nb_img_pxls = log2i(c_img_pxls-1) + 1\r\n\tc_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288 \r\n\t*/\r\n\t/* // QQVGA\r\n\tc_img_cols    = 160, // 8 bits\r\n\tc_img_rows    = 120, //  7 bits\r\n\tc_img_pxls    = c_img_cols * c_img_rows,\r\n\tc_nb_img_pxls =  15,  //160*120=19.200 -> 2^15\r\n\t*/\r\n\t// QQVGA /2\r\n\tc_img_cols    = 80, // 7 bits\r\n\tc_img_rows    = 60, //  6 bits\r\n\tc_img_pxls    = c_img_cols * c_img_rows,\r\n\tc_nb_img_pxls = $clog2(c_img_pxls), // 13,  //80*60=4800 -> 2^13\r\n\r\n\t// number of bits of the image colums and rows\r\n\tc_nb_cols     = 7,\r\n\tc_nb_rows     = 6,\r\n\r\n\t// inner frame size\r\n\tc_inframe_cols = 64, // 6 bits (0 to 63)\r\n\tc_inframe_rows = 48, // 6 bits (0 to 47)\r\n\t// total pixels in the inner frame\r\n\tc_inframe_pxls = c_inframe_cols * c_inframe_rows, // 64x48 = 3072\r\n\t// number of bits for the number of total pixels in the inner frame\r\n\tc_nb_inframe_pxls = $clog2(c_inframe_pxls), // = 12\r\n\r\n\t// histogram\r\n\t// number of bins (buckets)\r\n\tc_hist_bins = 8, // 7:0\r\n\t// number of bits needed for the histogram bins: 8 bins -> 3 bits\r\n\tc_nb_hist_bins = $clog2(c_hist_bins), // 3 bits\r\n\t// since we have 48 rows and 8 column in each ben\r\n\t// for each bin 384 (48 x 8) is the max number: 9 bits\r\n\tc_nb_hist_val = $clog2(c_inframe_rows * (c_inframe_cols/c_hist_bins)), // = 9,\r\n\r\n\t// centroid has 8 bits, it is decoded, so its not a number, to match the leds\r\n\tc_nb_centroid = 8,\r\n\r\n\t// proximity calculation, for now just 3 bits 0 to 7 (0: far, 7:close)\r\n\tc_nb_prox  = 3,\r\n\r\n\t// minimum number to consider an image detected and not being noise\r\n\t// change this value\r\n\tc_min_colorpixels = 32,\r\n\r\n\tc_nb_buf_red   =  4,  // n bits for red in the buffer (memory)\r\n\tc_nb_buf_green =  4,  // n bits for green in the buffer (memory)\r\n\tc_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)\r\n\t// word width of the memory (buffer)\r\n\tc_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,\r\n\t// position of the most significant bits of each color\r\n\tc_msb_blue  = c_nb_buf_blue-1,\r\n\tc_msb_red   = c_nb_buf-1,\r\n\tc_msb_green = c_msb_blue + c_nb_buf_green;\r\n\t\r\n\treg proc_we_r;\r\n\treg [c_nb_centroid-1:0] centroid_r;\r\n\treg new_centroid_r;\r\n\treg [2:0] rgbfilter_r;\r\n\treg [c_nb_prox-1:0] proximity_r;\r\n    \r\n  reg [c_nb_img_pxls-1:0]  cnt_pxl;\r\n  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;\r\n\r\n  wire end_pxl_cnt;\r\n  wire end_ln;\r\n  wire inner_frame; //if we are in the inner frame col=[8,71], row=[6,53]\r\n\r\n  wire   red_limit;\r\n  wire   green_limit;\r\n  wire   blue_limit;\r\n  wire   yellow_limit;\r\n  wire   cyan_limit;\r\n  wire   magen_limit;\r\n  wire   white_limit;\r\n  reg    color_threshold; // if color threshold is active\r\n  \r\n  parameter limite_azul = 4'b1001; // 9 en decimal\r\n  parameter limite_verde = 4'b1001; // 9 en decimal\r\n  parameter  BLACK_PXL = {c_nb_img_pxls{1'b0}};\r\n  \r\n  integer ind; \r\n\r\n  // from 0 to 79 columns, 0 to 7, and 72 to 79 are taken out\r\n  // so column  8 -> 0\r\n  //    column 71 -> 63\r\n  // In the inner frame In each column there are 48 rows (inner frame),\r\n  // c_nb_hist_val: number of  bits for the value of the histogram bins\r\n  // c_hist_bins: number of bins of the histogram\r\n  reg [c_nb_hist_val-1:0] histogram [c_hist_bins-1:0]; \r\n\r\n  // total number of pixels that are above the threshold\r\n  reg [c_nb_inframe_pxls-1:0] colorpxls;\r\n\r\n  // total number of pixels that are above the threshold on the left side\r\n  // bins 0 to 3\r\n  reg [c_nb_inframe_pxls-2:0] colorpxls_left;\r\n  reg [c_nb_inframe_pxls-2:0] colorpxls_rght;\r\n\r\n  // total number of pixels that are above the threshold on the bins 0to2\r\n  reg [c_nb_inframe_pxls-2:0] colorpxls_bin012;\r\n  reg [c_nb_inframe_pxls-2:0] colorpxls_bin567; // bins 5to7\r\n\r\n  // total number of pixels that are above the threshold on the bins 0,1\r\n  reg [c_nb_inframe_pxls-2:0] colorpxls_bin01;\r\n  reg [c_nb_inframe_pxls-2:0] colorpxls_bin67; // bins 6to7\r\n\r\n  // total color pixels divided by 2\r\n  wire [c_nb_inframe_pxls-2:0] colorpxls_half;\r\n\r\n  // result of the division of the total number of threshold pixels\r\n  // initially, divided by 16, could be 8\r\n  wire [c_nb_inframe_pxls-2:0] colorpxls_div;\r\n\r\n  //proximity, combinational, value not valid until reaching the end of the frame\r\n  reg [c_nb_prox-1:0] proximity_cmb; //proximity, combinational, so \r\n\r\n  \r\n  reg [c_nb_cols-1:0] col, col_rg;\r\n  // col_inframe is a bit less, but just in case\r\n  wire [c_nb_cols-1:0] col_inframe;\r\n\r\n  // indicates in which bin we are\r\n  wire [c_nb_hist_bins-1:0] hist_bin;\r\n\r\n  // Row number\r\n  reg [c_nb_rows-1:0] row_num;\r\n\r\n  // temporal calculation of the centroid\r\n  reg [c_nb_centroid-1:0] centroid_tmp;\r\n\r\n  // indicates if there are more threshold pixels on the left half of the\r\n  // inner frame\r\n  wire left;\r\n\r\n  // indicates the absolute difference (positive) between the pixels on the\r\n  // right and left\r\n  wire [c_nb_inframe_pxls-2:0] absdif_lft_rght;\r\n\r\n  reg       proc_ctrl_rg1, proc_ctrl_rg2;\r\n  wire      pulse_proc_ctrl;\r\n\r\n  assign proc_we = proc_we_r;\r\n  \r\n  // memory address count. Pixel counter from 0 to (80x60)-1 = 4799\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      cnt_pxl <= 0;\r\n      cnt_pxl_proc <= 0;\r\n      proc_we_r <= 1'b0;    \r\n    end\r\n    else begin\r\n      proc_we_r <= 1'b1;\r\n      // data from memory received a clock cycle later\r\n      // data stored in processed memory is delayed one clock cycle\r\n      cnt_pxl_proc <= cnt_pxl;\r\n      if (end_pxl_cnt ) begin\r\n        cnt_pxl <= 0;\r\n      end\r\n      else\r\n        cnt_pxl <= cnt_pxl + 1'b1;\r\n    end\r\n  end\r\n  \r\n  // end of the frame\r\n  assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;\r\n  assign orig_addr = cnt_pxl;\r\n  assign proc_addr = cnt_pxl_proc;\r\n\r\n  // end of the line (column number 79)\r\n  assign end_ln = (col == c_img_cols-1)? 1'b1 : 1'b0;\r\n  \r\n  //Row counter, from 0 to 59\r\n  always @ (posedge clk, posedge rst) \r\n  begin\r\n    if (rst) begin   \r\n      row_num <=0;\r\n    end \r\n    else if (end_pxl_cnt) begin\r\n      row_num <= 0;\r\n    end\r\n    else if (end_ln) begin\r\n      row_num <= row_num +1'b1;\r\n    end \r\n  end\r\n\r\n  // number of column counter. Counts columns, from 0 to 79\r\n  always @ (posedge clk, posedge rst) \r\n  begin\r\n    if (rst) begin   \r\n      col <=0;\r\n    end \r\n    else if (end_ln) begin\r\n      col <= 0;\r\n    end\r\n    else begin\r\n      col <= col +1'b1;\r\n    end \r\n  end\r\n\r\n  //delay col, (columns)\r\n  always @ (posedge clk, posedge rst)\r\n  begin\r\n    if (rst) begin\r\n      col_rg <= 0;\r\n    end\r\n    else begin\r\n      col_rg <= col;\r\n    end\r\n  end \r\n\r\n  //if we are in the inner frame col=[8,71], row=[6,53]\r\n  assign inner_frame = (col_rg >= 8 && col_rg <= 71 &&\r\n                        row_num >= 6 && row_num <= 53) ? 1'b1 : 1'b0;\r\n\r\n\r\n  // inner column, when we are out of the range it doesn't matter the value\r\n  // because shouldnt be used\r\n  assign col_inframe = col_rg - 7'd8;\r\n  // divide col_inframe by 8, from 64 columns to 8 -> 3 bits\r\n  assign hist_bin = col_inframe[c_nb_hist_bins+3-1:3];\r\n\r\n  // color filter thresholds\r\n  assign red_limit = (orig_pxl[c_msb_red] && !orig_pxl[c_msb_green] && !orig_pxl[c_msb_blue]) ?\r\n                      1'b1 : 1'b0;\r\n  assign green_limit = (!orig_pxl[c_msb_red] && orig_pxl[c_msb_green] && !orig_pxl[c_msb_blue]) ?\r\n                      1'b1 : 1'b0;\r\n  assign blue_limit = (!orig_pxl[c_msb_red] && !orig_pxl[c_msb_green] && orig_pxl[c_msb_blue]) ?\r\n                      1'b1 : 1'b0;\r\n  assign yellow_limit = (orig_pxl[c_msb_red] && orig_pxl[c_msb_green] && !orig_pxl[c_msb_blue]) ?\r\n                      1'b1 : 1'b0;\r\n  assign cyan_limit = (!orig_pxl[c_msb_red] && orig_pxl[c_msb_green] && orig_pxl[c_msb_blue]) ?\r\n                      1'b1 : 1'b0;\r\n  assign magen_limit = (orig_pxl[c_msb_red] && !orig_pxl[c_msb_green] && orig_pxl[c_msb_blue]) ?\r\n                      1'b1 : 1'b0;\r\n  assign white_limit = (orig_pxl[c_msb_red] && orig_pxl[c_msb_green] && orig_pxl[c_msb_blue]) ?\r\n                      1'b1 : 1'b0;\r\n\r\n\r\n  //reg [c_nb_hist_val-1:0] histograma [c_hist_bins-1:0];\r\n  // saves how many red pixels are in each column. Reset in each frame\r\n  always @ (posedge clk, posedge rst) \r\n  begin\r\n    if (rst) begin  \r\n      for(ind=0;ind<c_hist_bins;ind=ind+1) begin\r\n        histogram[ind] <=  0; //c_nb_hist_val'd0; \r\n      end\r\n      colorpxls         <= 0; // c_nb_inframe_pxls'd0;\r\n      colorpxls_left    <= 0; // (c_nb_inframe_pxls-2)'d0\r\n      colorpxls_rght    <= 0; // 4567\r\n      colorpxls_bin012 <= 0;\r\n      colorpxls_bin567 <= 0; \r\n      colorpxls_bin01  <= 0; \r\n      colorpxls_bin67  <= 0; \r\n    end \r\n    else begin \r\n      if (end_pxl_cnt) begin\r\n        for(ind=0;ind<c_hist_bins;ind=ind+1) begin\r\n          histogram[ind]  <= 0; //  c_nb_hist_val'd0; \r\n        end\r\n        colorpxls         <= 0; // c_nb_inframe_pxls'd0;\r\n        colorpxls_left    <= 0; // (c_nb_inframe_pxls-2)'d0\r\n        colorpxls_rght    <= 0; // 4567\r\n        colorpxls_bin012 <= 0;\r\n        colorpxls_bin567 <= 0; \r\n        colorpxls_bin01  <= 0; \r\n        colorpxls_bin67  <= 0; \r\n      end\r\n      else begin\r\n        // taking inner frame from 8 to 71-> 64 columns.\r\n        // Taking away 8 columns at each end\r\n        // and 6 to 53-> 48 rows. Taking away 6 rows at each end\r\n        if (inner_frame == 1'b1) begin\r\n          if (color_threshold == 1'b1) begin \r\n            histogram[hist_bin] <= histogram[hist_bin] + 1'b1;\r\n            colorpxls <= colorpxls + 1;\r\n            // these increments could be done combinationally by adding histograms\r\n            // bins. not sure what is more efficient, and if done combinationally\r\n            // it may add too many delays\r\n            case (hist_bin)\r\n              //c_nb_hist_bins'd0: begin\r\n              3'd0: begin\r\n                colorpxls_left    <= colorpxls_left + 1'b1;    //0123\r\n                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012\r\n                colorpxls_bin01  <= colorpxls_bin01 + 1'b1;  //01\r\n              end\r\n              3'd1: begin\r\n                colorpxls_left    <= colorpxls_left + 1'b1;    //0123\r\n                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012\r\n                colorpxls_bin01  <= colorpxls_bin01 + 1'b1;  //01\r\n              end\r\n              3'd2: begin\r\n                colorpxls_left    <= colorpxls_left + 1'b1;    //0123\r\n                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012\r\n              end\r\n              3'd3: begin\r\n                colorpxls_left    <= colorpxls_left + 1'b1;    //0123\r\n              end\r\n              3'd4: begin\r\n                colorpxls_rght    <= colorpxls_rght + 1'b1;    //4567\r\n              end\r\n              3'd5: begin\r\n                colorpxls_rght    <= colorpxls_rght + 1'b1;     //4567\r\n                colorpxls_bin567 <= colorpxls_bin567 + 1'b1;  //567\r\n              end\r\n              3'd6: begin\r\n                colorpxls_rght    <= colorpxls_rght + 1'b1;     //4567\r\n                colorpxls_bin567 <= colorpxls_bin567 + 1'b1;  //567\r\n                colorpxls_bin67  <= colorpxls_bin67 + 1'b1;   //67\r\n              end\r\n              3'd7: begin\r\n                colorpxls_rght    <= colorpxls_rght + 1'b1;     //4567\r\n                colorpxls_bin567 <= colorpxls_bin567 + 1'b1;  //567\r\n                colorpxls_bin67  <= colorpxls_bin67 + 1'b1;   //67\r\n              end\r\n            endcase\r\n          end\r\n        end\r\n      end\r\n    end\r\n  end\r\n\r\n\r\n  assign left = (colorpxls_left > colorpxls_rght) ? 1'b1 : 1'b0;\r\n  assign absdif_lft_rght = (left == 1'b1) ? (colorpxls_left - colorpxls_rght) :\r\n                                            (colorpxls_rght - colorpxls_left);\r\n\r\n  // divided by 2 -> 1 bit\r\n  assign colorpxls_half = colorpxls[c_nb_inframe_pxls-1:1];\r\n\r\n  // divided by 16 -> 4 bits\r\n  assign colorpxls_div = {4'b0 , colorpxls[c_nb_inframe_pxls-1:4]};\r\n\r\n  always @(*) \r\n  begin\r\n    centroid_tmp = 0; // default assignment\r\n    // first if the difference between the colored pixels on de left is less than\r\n    // 16 percent (maybe it could be 8%)\r\n    if (colorpxls <= c_min_colorpixels) // not enough color pixels detected\r\n      centroid_tmp = 0;\r\n    else if (absdif_lft_rght < colorpxls_div)  // consider in the middle\r\n      centroid_tmp[4:3] = 2'b11; // 0001 1000\r\n      //centroid_tmp = 8'b00011000;\r\n    else if (left) begin // more threshold pixels on the left\r\n      // start checking from the edges\r\n      if (histogram[0] >= colorpxls_half) \r\n        centroid_tmp[0] = 1'b1; // 1000 0000\r\n      else if (colorpxls_bin01 >= colorpxls_half) \r\n        centroid_tmp[1] = 1'b1; // 0100 0000\r\n      else if (colorpxls_bin012 >= colorpxls_half) \r\n        centroid_tmp[2] = 1'b1; // 0010 0000\r\n      else if (colorpxls_left > colorpxls_half) \r\n        centroid_tmp[3] = 1'b1; // 0001 0000\r\n    end\r\n    else begin // more pixels on the right side\r\n      // start checking from the edges\r\n      if (histogram[7] >= colorpxls_half) \r\n        centroid_tmp[7] = 1'b1; // 0000 0001\r\n      else if (colorpxls_bin67 >= colorpxls_half) \r\n        centroid_tmp[6] = 1'b1; // 0000 0010\r\n      else if (colorpxls_bin567 >= colorpxls_half) \r\n        centroid_tmp[5] = 1'b1; // 0000 0100\r\n      else if (colorpxls_rght > colorpxls_half) \r\n        centroid_tmp[4] = 1'b1; // 0000 1000\r\n    end\r\n  end\r\n\r\n  // proximity measurement (color pixel count\r\n  // making the assumption that all pixels are together and that there is no \r\n  // noise. In the future we will consider this\r\n  // only considering pixles in the inner frame\r\n\r\n  // distance: how many pixels are detected\r\n  // since in the inner frame there are 3072 pixels (64x48) -> 12 bits\r\n  // (c_nb_inframe_pxls),\r\n  // lets say that we are too close if we have 2048 or more, that is,\r\n  //    bit 12 is one\r\n  // Total : 3072\r\n  // ---->= 2048            : 2/3 - bits: 11         ='1'    7 -> Max, very close\r\n  // >= 1536 = 1024+512 : 1/2 - bits:   10:9       ='11'   7 -> Max, very close\r\n  // >= 1024            : 1/3 - bits:   10         ='1'    6\r\n  // >=  512            : 1/6 - bits:      9       ='1'    5\r\n  // >=  256            : 1/12- bits:        8     ='1'    4\r\n  // >=  128            : 1/24- bits:         7    ='1'    3\r\n  // >=   64            : 1/48- bits:          6   ='1'    2\r\n  // >=   32            : 1/96- bits:           5  ='1'    1\r\n  // <    32                                               0 -> Min\r\n\r\n  always @(*)\r\n  begin\r\n    if (colorpxls[c_nb_inframe_pxls-2] == 1'b1) begin // bit 10\r\n      if (colorpxls[c_nb_inframe_pxls-3] == 1'b1) begin // bit 9\r\n        proximity_cmb <= 3'd7;  // bits 10:9 too close, max proximity >=1536 : 1/2\r\n      end\r\n      else\r\n        proximity_cmb <= 3'd6;  // bit 10 too close, max proximity >=1024 : 1/3\r\n    end\r\n    else if (colorpxls[c_nb_inframe_pxls-3] == 1'b1) begin // bit 9\r\n      proximity_cmb <= 3'd5;  // 6: bit 9  >= 512 - 1/6\r\n    end\r\n    else if (colorpxls[c_nb_inframe_pxls-4] == 1'b1) begin // bit 8\r\n      proximity_cmb <= 3'd4;  // 5: bit 8  >= 256 - 1/12\r\n    end\r\n    else if (colorpxls[c_nb_inframe_pxls-5] == 1'b1) begin // bit 7\r\n      proximity_cmb <= 3'd3;  // 4: bit 7  >= 128 - 1/24\r\n    end\r\n    else if (colorpxls[c_nb_inframe_pxls-6] == 1'b1) begin // bit 6\r\n      proximity_cmb <= 3'd2;  // 3: bit 6  >= 64 - 1/48\r\n    end\r\n    else if (colorpxls[c_nb_inframe_pxls-7] == 1'b1) begin // bit 5\r\n      proximity_cmb <= 3'd1;  // bit 5  >= 32 - 1/96\r\n    end\r\n    else\r\n      proximity_cmb <= 3'd0;  // < 32\r\n  end\r\n\r\n  assign centroid = centroid_r;\r\n  assign new_centroid = new_centroid_r;\r\n  assign proximity = proximity_r;\r\n  // save the centroid and proximity when finishing the frame\r\n  always @ (posedge clk, posedge rst) \r\n  begin\r\n    if (rst) begin\r\n      centroid_r <= 0; \r\n      new_centroid_r <= 1'b0;\r\n      proximity_r <= 0;\r\n    end\r\n    else if (end_pxl_cnt) begin\r\n      centroid_r <= centroid_tmp; \r\n      new_centroid_r <= 1'b1;\r\n      proximity_r <= proximity_cmb;\r\n    end\r\n    else\r\n      new_centroid_r <= 1'b0;\r\n  end\r\n\r\n\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      proc_ctrl_rg1 <= 1'b0;\r\n      proc_ctrl_rg2 <= 1'b0;\r\n    end\r\n    else begin\r\n      proc_ctrl_rg1 <= proc_ctrl;\r\n      proc_ctrl_rg2 <= proc_ctrl_rg1;\r\n    end\r\n  end\r\n\r\n  // detect a pulse in proc_ctrl\r\n  assign pulse_proc_ctrl = (proc_ctrl_rg1 & ~proc_ctrl_rg2);\r\n  \r\n  assign rgbfilter = rgbfilter_r;\r\n  \r\n  // changes the filter\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      rgbfilter_r <= 3'b000; // no filter\r\n    end\r\n    else begin\r\n      if (pulse_proc_ctrl) begin\r\n        case (rgbfilter_r)\r\n          3'b000: // no filter, output same as input\r\n            rgbfilter_r <= 3'b100; // red filter\r\n          3'b100: // red filter\r\n            rgbfilter_r <= 3'b010; // green filter\r\n          3'b010: // green filter\r\n            rgbfilter_r <= 3'b001; // blue filter\r\n          3'b001: // blue filter\r\n            rgbfilter_r <= 3'b110; // red and green filter\r\n          3'b110: // red and green filter\r\n            rgbfilter_r <= 3'b101; // red and blue filter\r\n          3'b101: // red and blue filter\r\n            rgbfilter_r <= 3'b011; // green and blue filter\r\n          3'b011: // green and blue filter\r\n            rgbfilter_r <= 3'b111; // red, green and blue filter\r\n          3'b111: // red, green and blue filter\r\n            rgbfilter_r <= 3'b000; // no filter\r\n        endcase\r\n      end\r\n    end\r\n  end\r\n\r\n  assign proc_pxl = color_threshold ? orig_pxl : BLACK_PXL;\r\n  \r\n  always @ (*) // should include RGB mode\r\n  begin\r\n    // check on RED\r\n    color_threshold = 1'b1;\r\n    case (rgbfilter_r)\r\n      3'b000: // no filter, output same as input\r\n        color_threshold = 1'b1;\r\n      3'b100: begin // red filter\r\n        color_threshold = red_limit;\r\n      end\r\n      3'b010: begin // green filter\r\n        color_threshold = green_limit;\r\n      end\r\n      3'b001: begin // filter blue\r\n        color_threshold = blue_limit;\r\n      end\r\n      3'b110: begin // filter red and green\r\n        color_threshold = yellow_limit;\r\n      end\r\n      3'b101: begin // filter red and blue\r\n        color_threshold = magen_limit;\r\n      end\r\n      3'b011: begin // filter green and blue\r\n        color_threshold = green_limit;\r\n      end\r\n      3'b111: begin // red, green and blue filter\r\n        color_threshold = white_limit;\r\n      end\r\n    endcase\r\n  end\r\n\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "proc_ctrl"
                    },
                    {
                      "name": "orig_pxl",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ],
                  "out": [
                    {
                      "name": "orig_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "proc_we"
                    },
                    {
                      "name": "proc_pxl",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "proc_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "centroid",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "new_centroid"
                    },
                    {
                      "name": "proximity",
                      "range": "[2:0]",
                      "size": 3
                    },
                    {
                      "name": "rgbfilter",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ]
                }
              },
              "position": {
                "x": 104,
                "y": 56
              },
              "size": {
                "width": 608,
                "height": 336
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3b5982a3-dbd5-49c4-847b-18dd1c3603d8",
                "port": "out"
              },
              "target": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "1f66055f-b02f-44d1-8d8d-ef6560d5108d",
                "port": "out"
              },
              "target": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "orig_pxl"
              },
              "size": 12
            },
            {
              "source": {
                "block": "4f0b11a7-98a3-484a-b7b8-b70813231ea7",
                "port": "out"
              },
              "target": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "proc_ctrl"
              }
            },
            {
              "source": {
                "block": "01b7de49-be8a-40be-9c15-a615d855e526",
                "port": "out"
              },
              "target": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "orig_addr"
              },
              "target": {
                "block": "63094452-e4c3-4d0c-9268-cc8402354532",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "proc_we"
              },
              "target": {
                "block": "b390aaf0-6da0-4582-82ca-b051780b1836",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "proc_pxl"
              },
              "target": {
                "block": "8d008849-f223-4597-83fd-11ca982935e0",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "proc_addr"
              },
              "target": {
                "block": "f72b6df5-08aa-4595-8423-aa969fbcbe5f",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "centroid"
              },
              "target": {
                "block": "ed77abcc-9687-4a31-a53d-02cb20b7ee74",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "new_centroid"
              },
              "target": {
                "block": "6c7d6095-1295-4de4-95b4-3932d19eca6c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "rgbfilter"
              },
              "target": {
                "block": "34fd5a84-b672-4782-ac30-87152c3f3861",
                "port": "in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "909826df-b630-445c-a006-e0149b7ab18c",
                "port": "proximity"
              },
              "target": {
                "block": "620f3a87-b603-48c2-a9db-3c3b8ce3f205",
                "port": "in"
              },
              "size": 3
            }
          ]
        }
      }
    },
    "5b1d4ef73a854630ce8a25008f28dfe262f57afc": {
      "package": {
        "name": "Motors_ctrl_v4",
        "version": "4.0",
        "description": "Motors controls for centroide and proximity",
        "author": "JdeRobot [FPGA-Robotics]",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22352.669%22%20height=%22405.885%22%20viewBox=%220%200%2093.310328%20107.3904%22%3E%3Cg%20transform=%22translate(25.227%2013.59)%22%3E%3Crect%20ry=%221.388%22%20y=%22-13.589%22%20x=%22-25.227%22%20height=%22107.39%22%20width=%2293.31%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cimage%20width=%2274.083%22%20height=%2274.083%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20x=%22-24.511%22%20y=%2219.479%22/%3E%3Ctext%20style=%22line-height:13.90999985px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2217.946%22%20y=%222.41%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2221.076%22%20y=%222.41%22%20style=%22line-height:13.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2222.578%22%20font-family=%22Gill%20Sans%22%3EMotors%20%3C/tspan%3E%3Ctspan%20x=%2217.946%22%20y=%2220.891%22%20style=%22line-height:13.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2222.578%22%20font-family=%22Gill%20Sans%22%3EControl%3C/tspan%3E%3C/text%3E%3Cellipse%20ry=%222.457%22%20rx=%223.307%22%20cy=%226.237%22%20cx=%2212.388%22%20fill=%22#fff%22%20transform=%22matrix(8.04535%200%200%206.78815%20-64.328%2013.204)%22/%3E%3Cimage%20y=%2226.037%22%20x=%2213.922%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABkAAAAZACAMAAAAW0n6VAAAAAXNSR0IArs4c6QAAAARnQU1BAACx%20jwv8YQUAAAMAUExURQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMwAAZgAAmQAAzAAA/wAzAAAzMwAzZgAzmQAzzAAz/wBm%20AABmMwBmZgBmmQBmzABm/wCZAACZMwCZZgCZmQCZzACZ/wDMAADMMwDMZgDMmQDMzADM/wD/AAD/%20MwD/ZgD/mQD/zAD//zMAADMAMzMAZjMAmTMAzDMA/zMzADMzMzMzZjMzmTMzzDMz/zNmADNmMzNm%20ZjNmmTNmzDNm/zOZADOZMzOZZjOZmTOZzDOZ/zPMADPMMzPMZjPMmTPMzDPM/zP/ADP/MzP/ZjP/%20mTP/zDP//2YAAGYAM2YAZmYAmWYAzGYA/2YzAGYzM2YzZmYzmWYzzGYz/2ZmAGZmM2ZmZmZmmWZm%20zGZm/2aZAGaZM2aZZmaZmWaZzGaZ/2bMAGbMM2bMZmbMmWbMzGbM/2b/AGb/M2b/Zmb/mWb/zGb/%20/5kAAJkAM5kAZpkAmZkAzJkA/5kzAJkzM5kzZpkzmZkzzJkz/5lmAJlmM5lmZplmmZlmzJlm/5mZ%20AJmZM5mZZpmZmZmZzJmZ/5nMAJnMM5nMZpnMmZnMzJnM/5n/AJn/M5n/Zpn/mZn/zJn//8wAAMwA%20M8wAZswAmcwAzMwA/8wzAMwzM8wzZswzmcwzzMwz/8xmAMxmM8xmZsxmmcxmzMxm/8yZAMyZM8yZ%20ZsyZmcyZzMyZ/8zMAMzMM8zMZszMmczMzMzM/8z/AMz/M8z/Zsz/mcz/zMz///8AAP8AM/8AZv8A%20mf8AzP8A//8zAP8zM/8zZv8zmf8zzP8z//9mAP9mM/9mZv9mmf9mzP9m//+ZAP+ZM/+ZZv+Zmf+Z%20zP+Z///MAP/MM//MZv/Mmf/MzP/M////AP//M///Zv//mf//zP///69WTRwAAAAodFJOUzS84/5z%20S5vJiWKqROuV2VSCw7PyWtA7aaN7AAAAAAAAAAAAAAAAAADNmw+1AAAACXBIWXMAAA7DAAAOwwHH%20b6hkAABJqElEQVR4Xu3d6ULbSBaAUWAgrCEJhC3v/6CT5TYQx4B9tdR2zq+Z7sRWW1X6bEsqH/wA%20gAQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAA%20UgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABI%20ERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBF%20QABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQB%20ASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQE%20gBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAA%20UgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABI%20ERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBASBFQABIERAAUgQEgBQBoUaX%20x5++3dGIb4cXn76en8S+YyACQmUOng5v/0eLbk8/f4+9yBgEhJo83IhH444ez2Nn0j8BoRpfbuIY%20ROMOH2KX0jkBoRKffPboyO3FZexXeiYg1ODAh4/unH6JnUu/BITyLg/jmENXrn2T1TsBoTifPrp1%205KqsvgkIhX117qNn32I30yUBoaiTozjQ0KvPsavpkIBQ0uc4yNCxKxdkdUtAKOguDjH07Sz2N70R%20EIp5iMML3TuNXU5nBIRSfH01kFs3hXRJQCjExbtjeYr9Tk8EhDJO47jCKD7FnqcjAkIRrt4dz0Xs%20e/ohIJSgHyM6jL1PNwSEAq7jiMJYbmL/0wsBYX1u/xiVb7E6IyCszvnzcVnXpC8Cwtoe41jCiKzw%203hUBYWXHcSRhTBbG6omAsK77OI4wqKMYCPRAQFjXVRxHGJWLeTsiIKzKAiYcx1igfQLCmr7HMYSR%203cdooHkCwpp8gcX//ncdo4HmCQgruogjCGP7GuOB1gkI67mM4wejiwFB6wSE9VjChD8sitUJAWE1%20X+LoAW4n7IOAsBpr8PIfP5LeBwFhLQ9x7ACX8nZCQFiLH5HihbMgXRAQVnISRw74JYYFTRMQVnIY%20Bw745THGBS0TEFYSxw34I8YFLRMQ1vE5DhvwhzUVOyAgrMMqWPztLkYGDRMQVuF3pNgUQ4OGCQir%20OIuDBvzHkortExBW4SYQNvlx2/YJCKuIYwa8iLFBuwSENTzFIQNeuA6reQLCGvwUOv86jNFBswSE%20NbiIl3/dxuigWQLCGuKIAa/F6KBZAsIKvscBA157iPFBqwSEFbgLhG0+x/igVQLCCpxDZxs/CtI6%20AWEFd3HAgNeuY3zQKgFhBS7CYqsYH7RKQFhBHC7gbzE+aJWAsII4XMDfLmOA0CgBYXnWcme7LzFC%20aJSAsLzLOFzA385jhNAoAWF5J3G4gL9ZTrFxAsLyBITtnmKE0CgBYXlWMmE7AWmcgLA8AWG7sxgh%20NEpAWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5A%20WJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6A%20sJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2A%20NE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5A%20WJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6A%20sJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2A%20NE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5A%20WJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6A%20sJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2A%20NE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsJ2ANE5AWJ6AsN3XGCE0SkBYnoCw3VOM%20EBolICzvSxwu4G8C0jgBYXmXcbiAvz3ECKFRAsLyDuJwAX/7HiOERgkIK4jDBfztMgYIjRIQVhCH%20C/hbjA9aJSCs4CiOF/CXGB+0SkBYwWEcL+C1oxgftEpAWMGnOGDAa4cxPmiVgLCCpzhgwGufYnzQ%20KgFhBe4kZBu3gbROQFhDHDDgtfsYHrRKQFjDdRwx4JUYHTRLQFiDs+j86zRGB80SENZgPV7+ZTH3%205gkIq4hDBrxwCqR5AsIqnARh01WMDdolIKzCnSBs+hxjg3YJCOuIgwb8xzdY7RMQ1nEXRw34w0JY%20HRAQ1nEchw344yxGBg0TEFYShw34I8YFLRMQVnIRxw345VuMC1omIKwlDhzwy0kMC1omIKzFr0rx%204i5GBU0TENZyEocO+N//vseooGkCwmpcyct/XMPbBwFhNZdx8IDzGBO0TUBYz00cPRidhdw7ISCs%20KA4fjO4yBgSNExBW9DWOH4ztIsYDrRMQ1nQURxBGdhujgeYJCGtyKS/OoHdEQFjVWRxDGNdjjAXa%20JyCsy80go7uOkUAHBISV3cZxhEHFOKAHAsLKzuM4wpgeYhzQAwFhbU6DjMwVvF0REFbnl0HG5VdA%20+iIgrO9bHE0YjUXcOyMgFOBSrDFZg7c3AkIJCjIi/eiOgFCEb7HG4waQ/ggIZVjafTTOf3RIQCjE%20tVhjuYn9Tk8EhFKe4sjCCM5ir9MVAaGYy6s4uNC7q5PY5/RFQCjIqfQxuH2wVwJCSX6icARfY2/T%20HQGhLB9Cend3H7ua/ggIhT1Y371nt0+xn+mRgFDcpzjW0J9PsY/pk4BQAQnpkx+v7Z2AUIXHOOTQ%20jVu3fvRPQKjE03UceOjBkUuvRiAgVOPy0fn0Plx9duXVGASEmnx5dHd6644+XcbepHsCQm2OL3yZ%201arrx4fYiwxBQKjR/fnXi2/XV77SasTR9eHn4y+x8xiHgMCGOCi2xWrpFCAgsCEOyW0REAoQENgQ%20h+S2CAgFCAhsiENyWwSEAgQENsQhuS0CQgECAhvikNwWAaEAAYENcUhui4BQgIDAhjgkt0VAKEBA%20YEMcktsiIBQgILAhDsltERAKEBDYEIfktggIBQgIbIhDclsEhAIEBDbEIbktAkIBAgIb4pDcFgGh%20AAGBDXFIbouAUICAwIY4JLdFQChAQGBDHJLbIiAUICCwIQ7JbREQChAQ2BCH5LYICAUICGyIQ3Jb%20BIQCBAQ2xCG5LQJCAQICG+KQ3BYBoQABgQ1xSG6LgFCAgMCGOCS3RUAoQEBgQxyS2yIgFCAgsCEO%20yW0REAoQENgQh+S2CAgFCAhsiENyWwSEAgQENsQhuS0CQgECAhvikNwWAaEAAYENcUhui4BQgIDA%20hjgkt0VAKEBAYEMcktsiIBQgILAhDsltERAKEBDYEIfktggIBQgIbIhDclsEhAIEBDbEIbktAkIB%20AgIb4pDcFgGhAAGBDXFIbouAUICAwIY4JLdFQChAQGBDHJLbIiAUICCwIQ7JbREQChAQ2BCH5LYI%20CAUICGyIQ3JbBIQCBAQ2xCG5LQJCAQICG+KQ3BYBoQABgQ1xSG6LgFCAgMCGOCS3RUAoQEBgQxyS%202yIgFCAgsCEOyW0REAoQENgQh+S2CAgFCAhsiENyWwSEAgQENsQhuS0CQgECAhvikNwWAaEAAYEN%20cUhui4BQgIDAhjgkt0VAKEBAYEMcktsiIBQgILAhDsltERAKEBDYEIfktggIBQgIbIhDclsEhAIE%20BDZctOgpNh5WJCAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAA%20pAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQ%20IiAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAApAgIACkCAkCK%20gACQIiAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAApAgIACkCAkCKgACQIiAApAgIACkC%20AkCKgACQIiAs5Pzs4hAqd/F4dvz9PsYs+xIQFnD56eh/0I7b00/nMXjZg4Awu4frmJXQkqsLEdmT%20gDCzcx8+aNfpcYxjdiEgzOq7Tx807uYkBjMfEhDmdBhzEBp27WPIjgSE+XyN+QeNu3qKMc27BIS5%203Pv2in5cPcS45h0Cwkx8/KAvR86FfEhAmMddzDroxkUMbt4iIMzh+DamHHTk6ksMcLYTEGbg4is6%205UPIuwSEyb77+EG37mKUs42AMNVFzDTo0ZVz6W8TEKb5fhXzDDrltsI3CQiT+PhB/z7FaGeTgDCB%20jx8M4TEGPBsEhLT705he0DkF2U5AyHqMuQX9cznvVgJCzolrdxmJgmwjIKScxLSCQXyNoc8rAkKG%20fjCc7zH4eSEgJHyJKQUDuY/hzzMBYX/6wYiuYvzzTEDYm34wpm8xA/iPgLAv/WBUFjXZICDs6XvM%20JRhPTAKCgLAf/WBgFnf/m4Cwl/OYSDCks5gI/CYg7EM/GFzMBH4TEPagH4zOkiavCQi70w9wO+Er%20AsLOHmIGwcCcR39FQNiVfsBP1sR6ISDs6DimD4zNR5AXAsJufP6APy5jTiAg7MbnDwiHMSkQEHai%20H/AsZgUCwi6eYuIA//vfY8wLBISP6Qe8chsTAwHhQ19j2gC/uZI3CAgf0Q/4m/VMgoDwAf2ATTE5%20hicgvO8sZgzw7Dymx+gEhHfpB/zLd1h/CAjv0Q/Y4iomyOgEhHd8jukC/CVmyOgEhLfpB2z3EHNk%20cALCm/QD3uBm9N8EhLd8iqkCbDqKWTI4AeEN+gFvi2kyOAFhO/2Ad8Q8GZyAsNVjTBNgG8th/SIg%20bKMf8K6nmCpjExC20A94n8uwfhEQ/nURcwR4w7eYLGMTEP6hH/CRu5gtYxMQNukHfOg6psvYBIQN%20+gEfcyfhLwLC325ifgDv8LvovwgIf9EP2EnMmLEJCK/pB+wmpszYBIRXDmNuAB+IOTM2AeGFfsCu%20YtKMTUB4ph+ws5g1YxMQ/vMtJgbwsZg2YxMQgn7AHmLejE1A+EM/YB8xccYmIPymH7CXmDljExB+%200Q/YT0ydsQkIP53GnAB2FHNnbAKCfsD+YvKMTUD4cRczAthZzJ6xCQg+f8D+YvqMTUCG5/MHJMT8%20GZuAjE4/ICMm0NgEZHD6ASkxg8YmIGO7jskA7Cem0NgEZGj6AUkxh8YmICPTD8iKSTQ2ARmYfkBa%20zKKxCci49APyYhqNTUCGpR8wQcyjsQnIqI5iGgAZMZHGJiCD0g+YJGbS2ARkTPoB08RUGpuADEk/%20YKKYS2MTkBHpB0wVk2lsAjKgq5gBQFrMprEJyHh8/oDpYjqNTUCG4/MHzCDm09gEZDT6AXOICTU2%20ARmMfsAsYkaNTUDGoh8wj5hSYxOQoegHzCTm1NgEZCS3MfSBqWJSjU1AxnGgHzCbmFZjE5Bh3OsH%20zCfm1dgEZBT6AXOKiTU2ARmEfsCsYmaNTUDGoB8wr5haYxOQIVzqB8wr5tbYBGQE+gFzi8k1NgEZ%20gH7A7GJ2jU1A+qcfML+YXmMTkO6d6AfML+bX2ASkdycx3IE5xQQbm4B0Tj9gETHDxiYgfdMPWEZM%20sbEJSNe+xFgHZhZzbGwC0jP9gKXEJBubgHTse4x0YHYxy8YmIP3SD1hOTLOxCUi39AMWFPNsbALS%20K/2AJcVEG5uAdOo8RjmwiJhpYxOQPukHLCum2tgEpEv6AQuLuTY2AenRQwxxYCkx2cYmIB3SD1hc%20zLaxCUh/jmOAA8uJ6TY2AemOzx+wgphvYxOQ3vj8AWuICTc2AemMfsAqYsaNTUD68hSDG1hWTLmx%20CUhX9ANWEnNubALSk68xtIGlxaQbm4B0RD9gNTHrxiYg/dAPWE9Mu7EJSDfOYlwDK4h5NzYB6YV+%20wJpi4o1NQDqhH7CqmHljE5A+6AesK6be2ASkC59jTAMribk3NgHpgX7A2mLyjU1AOqAfsLqYfWMT%20kPZ9igENrCem39gEpHn6AQXE/BubgLTuMYYzsKaYgGMTkMbpBxQRM3BsAtI2/YAyYgqOTUCadhFj%20GVhZzMGxCUjL9ANKiUk4NgFpmH5AMTELxyYg7dIPKCem4dgEpFk3MY6BAmIejk1AWqUfUFJMxLEJ%20SKP0A4qKmTg2AWnTYQxioIyYimMTkCbpBxQWc3FsAtIi/YDSYjKOTUAapB9QXMzGsQlIe77FAAbK%20iek4NgFpjn5ABWI+jk1AWqMfUIOYkGMTkMboB1QhZuTYBKQtpzF4gbJiSo5NQJqiH1CJmJNjE5CW%203MXQBUqLSTk2AWmIzx9QjZiVYxOQdvj8AfWIaTk2AWmGfkBFYl6OTUBaoR9Qk5iYYxOQRlzHqAWq%20EDNzbALSBv2AusTUHJuANEE/oDIxN8cmIC3QD6hNTM6xCUgD9AOqE7NzbAJSP/2A+sT0HJuAVE8/%20oEIxP8cmILU7iuEK1CQm6NgEpHL6AVWKGTo2AambfkCdYoqOTUCqph9QqZijYxOQmukH1Com6dgE%20pGL6AdWKWTo2AanXVQxUoD4xTccmINXSD6hYzNOxCUit9ANqFhN1bAJSKf2AqsVMHZuA1Ek/oG4x%20VccmIFW6jTEKVCrm6tgEZCdfjj/dfLu+vrpdR4xQoFpxbFjN/fevFzff7o6O4iiRc3V9d/P5Ybbj%20voB86PjG90nAhjg+rOH+6+HMB6Hbw+N47GkE5H3Hd/GCA7wSh4jFff0WTzi3bw/xDBMIyHse45UG%20+FscJJb1tOw72It4mrRUQA7GyM5FvMgAm+IwsaCH03iqBR1expPl7JWCy6eLu+cTvNc3TyeXU9zX%20naHP8d8JH/l2WJWlvvLgL3GgWMzTSudeT6cciHf+uwdfF6nh7fXN54f7eI6KnDtxzq4OY9DU4jy2%20i0XFq72QNd/AfornTNgxIGcL/zD39afzeKY6eA/H7mr7KO3Nzyri1V7E13iOldymL8naZeyfHMbT%20LOvurJZPIsexRbCDmxg2tfDl6zri5V7A+fo/5HAaT72vjwPyZYUTOf+5/hpPWpSPH+wjhk01YrNY%20WLzcs7svcuvAbe6a3o8CsmY+frs5iWcu5cF94Oxj8pWQM/P+ZyXxes/tLB5+dalP0h8EZO18/HL9%20PZ68iJvYCthNDJxafI/NYmnxgs+sxCE3XCXOIbwbkFJfph4VS8iJ84/s5zGGTi38DvJa4gWfVeHv%20P/Y/8L4TkMuCQ/Fu2t0tWZ/i6WFXMXRqUewLkPHEKz6n4vcu730S+u2AFB6JBb5Zvl/4WmU6NOES%20+kXEZrG8eMVnVPDrq//se9x9MyDF/1uSVwXkrXzpNV2IwVOLda6455d4yedTxbePe94V+0ZA7ms4%20F7Du9fWW3WV/n2P0VMIZ9BXFaz6Xy0ou//wW27Ob7QGpZC2Eo/XuLHTvIAm3MXxq4Qz6iuI1n0kt%20/dizIFsD8hSPVN5aX2O5dp6Msxg/lfAt7JriRZ9HPf3Y7670bQGp6UKOVc5Rnrt3kIzaPoDEZrGK%20eNFncV/VIWiPzyBbAlLXUjrZNVr24N5BcqpYeeeFgbyqeNXncFDZW9jdr8X6NyC1LcV2Hdu1lEv3%20DpJT2QeQk9gs1hEv+xyqOwbt/N3sPwGp70akZQvi7DlZTzGGKuE2pnXFyz6DCq8A3fXs82ZAHuLv%201+Qotm0JfraWrKsYQ5Wo59KXQcTrPt1jPGBVdlzUdiMgdX4KXq4g7rsiLf0jPMtwJcjK4nWfrMY3%207Tu/PdoISKWD8C42b24VLB1Aq5b8YJzgs/Ta4oWf6j4erja7XYr1d0CqvRt7mZvS3XxOXl0fQC5j%20q1hNvPJTVXvqaqdTfH8FpOLFaJdYMsLdg+RV9gHEGfTVxSs/UcUH3V2WRH8dkKoX0pn/nnSf+Zng%20PIZRHVxMuL546aep+ZPjLu+RXgek7rNwc6+LZcoxwdK3J+3JGfT1xUs/TdWfHHf43udVQCq/j3Xm%20GVvrqSvaUPR3l/9R5YWgvYvXfpLK38Z+/K79JSBf4u9Ua95lsXxnzAR1fQDxbqiEePEnqfyT48eX%20v74EpP6VoL/Els7BL38yxZxjcTqXE5YQL/4Uta0b9Y8PLzV8DkgDK0HPeedvPCRkLHVjUk6dd6J1%20L179KeKR6vXhcm/PAWnhLNxjbOt0FV87RwN2XOdhJc6gFxGv/gQNfA/y0aqK/wWkjbNwsbHTxeNB%20xgq/MbAH74bKiJd/ggbK/9FHkP8CEn+8cvv9XO/b/HIbU+xyh9VqDmKjWFm8/nlNLH/5waW8EZBW%203sTMdO7ST4AwwVzvY+ZhQbdC4vXPa+MX7GNj3xABiT9bvXmunrRuEFPMfU/rJOexUawtdkBaIz8A%209v7tE38C0s5XOrMsIOFLYyY4jGFUB5+mS4kdkNbIWkrvnwX5E5B2BuEsH0Ha+OhIpar6AFL9nQT9%20ij2QFg9TvXeXIfwdkJY+Bc9xAWU8FCQs89MCWbFRrC/2QFYzR913b3r6HZCW1jWf4QRm1asOU7sY%20RXXwkwTlxC7IqnztwVfe+8j9OyDx59rwe7MnsYwJeRcxiqrgvVBBsQ+y2rn9870buH8FpK1f45++%20pqIfQicvBlEdnM0rKPZBUiPXYP3y3mn0XwFpaym2D1dn+ZBZR9p8y+nMwGfpkmInJLV0M/M7J55/%20BST+VCsm30wYjwP7izFUh9gmioidkNTS2at3vvX5GZDW1vKc/B4wHgf2Nu+P0kzku9iiYi8kxYM0%204Z3ftv0ZkHauBgix6VnWDiItxlAVnEEvK3ZDUjxIG2Kbt/gZkOYWg574HZaFTMja4Uei1+NcXlmx%20G3LaWoHm7XsJfwYk/kw7Js7i6n+7l1pNv4BjRpaULiz2Q05bKwi8fdrgoPafdd9i4nImVp8j6aNf%2011lVbBOlxH7Iaev81duH3INGfkrqL7HtSX4AlJyqPoA0d+qyO7Ejcq7jQRoRW/2vgxZ/kH/aSZC2%207pukHl9jBNWgofvQehV7IiceoxWx1f86aPGT8LSTIO6+IqWqDyCNvYPtUeyJnHiMVnyPzf5HkwGZ%20tqCigJDyFAOoBj5Glxe7IiceoxXHsdn/OGjxo/BVbHyOgJAxbdTNrLlr7zsUuyLlPh6jFW9ePnLQ%203kVYP8XG5wgIGW++CSugkR+z61vsi5TW3re/eR3vQZO/aDbpN+EEhISaPoC4F7YGsTNSWrsZ7c1f%20UTto8r3Mm6d0duEX0Ul494c9V+YMeg1iZ6S0tgzN2wFp8ifNJl1P6Vek2d8768mtrsmvnfsTeyOl%20tYC8ed3SQYO3gUy8jldA2F9NH0CcQa9C7I2UfgLS5Ipsk1Z0FxD2NnH5nFk1uHZEl2J3pPQTkCbf%20zUz6XWoBYW+TzrrNq7UrQLsV+yNFQIo6jK1PERD2VdMHkCa/dO5R7I+UfgISf6Atb/7n7EJA2Nfk%20n1Gej7VAaxE7JEVAirqLrU8REPY0abzNzBn0WsQOSRGQogSENZ3E0KmAu5iqEXskRUCKEhBWdBoj%20pwJ+0L8esUtSBKQoAWFFlzFyKnAam0R5sUtSBKQoAWE9b06e9fk55orEPkkRkKIEhPVMWrpzXlex%20SVQg9kmKgBQlIKxm0k1H8zJ0axI7JUVAihIQVlPRB5DYIqoQOyVFQIoSENby5kLW62ty5ex+xV5J%20EZCiBIS1xKipQGsHnd7FbkkRkKIEhJVMWrdzXk0unN2x2C0pAlKUgLCSGDQV8FPMlYn9kiIgRQkI%2065j0yzPzii2iFrFfUgSkKAFhHTFmKnAYW0QtYsekCEhRAsIqPsWYKa+1I84AYs+kCEhRAsIqYshU%20wBn06sSeSRGQogSENXyOIVPe19gi6hG7JkVAihIQVnAbI6YCsUVUJHZNioAUJSCs4CxGTHk3sUVU%20JPZNioAUJSAsr54PICexRdQkdk6KgBQlICzvawyY8q5ji6hJ7JwUASlKQFhcPR9AnmKLqErsnRQB%20KUpAWNxTjJfybmOLqErsnRQBKUpAWNpVDJfyLmKLqEvsnhQBKUpAWNpxDJfiLmODqEzsnxQBKUpA%20WNhRjJbynEGvVOyfFAEpSkBY2EOMluKOY4OoTeygFAEpSkBYVj0fQJxBr1XsoBQBKUpAWNZ5DJbi%20HmODqE7soRQBKUpAWNR1jJXi7mODqE/sohQBKUpAWNT3GCvF3cUGUZ/YRSkCUpSAsKRJ42tOD7FB%20VCj2UYqAFCUgLOlLDJXinEGvWOyjFAEpSkBY0GmMlOI+xQZRo9hJKQJSlICwoJMYKaW1OTmHEXsp%20RUCKEhCWU80HkNPYIKoUeylFQIoSEJZzGQOltPPYHuoUuylFQIoSEBZzGOOkuKvYIOoUuylFQIoS%20EBZzH+OkNOO0crGfUgSkKAFhKdV8AIntoVaxn1IEpCgBYSkHMUxK+xbbQ61iR6UISFECwkJuYpSU%201toRZkCxp1IEpCgBYSExSIo7iu2hWrGnUgSkKAFhGRcxSEo7i+2hXrGrUgSkKAFhGTFGiovNoWKx%20q1IEpCgBYRGPMUZKO4ztoWKxr1IEpCgBYRExREpr7fAypthZKQJSlICwhE8xREpzBr0FsbNSBKQo%20AWEJMUJK+xqbQ9Vib6UISFECwgI+xwgpLTaHusXeShGQogSEBcQAKe0mNoe6xe5KEZCiBIT5ncUA%20KewkNofKxf5KEZCiBITZ3cb4KO06tofKxf5KEZCiBITZfY3xUdhTbA61ix2WIiBFCQhzq+UDyG1s%20D7WLHZYiIEUJCHN7iuFR2EVsDtWLPZYiIEUJCDO7itFR2GVsDvWLXZYiIEUJCDM7jtFRmDPo7Yhd%20liIgRQkI8zqKwVHYcWwODYh9liIgRQkI83qIwVGYM+gNiX2WIiBFCQizquQDiDPoLYmdliIgRQkI%20szqPsVHWfWwNTYi9liIgRQkIc7qOoVHYXWwOTYi9liIgRQkIc/oeQ6Osh9ga2hC7LUVAihIQZjRp%20OM3HGfS2xG5LEZCiBIQZfYmRUdan2BoaEfstRUCKEhDmcxoDo6w2Z+LIYselCEhRAsJ8TmJglHUa%20W0MrYselCEhRAsJs3pwbqzqPraEZsedSBKQoAWE2lzEuyrqKraEZsedSBKQoAWEuhzEsyjIo2xO7%20LkVAihIQ5nIfw6Ks2BgaErsuRUCKEhBmchOjoqxvsTU0JPZdioAUJSDMJAZFWa0dTvgldl6KgBQl%20IMzjIgZFWUexNbQkdl6KgBQlIMwjxkRZZ7ExNCX2XoqAFCUgzKKODyCxMbQl9l6KgBQlIMwihkRZ%20h7ExtCV2X4qAFCUgzOFTDImiWjuWEGL/pQhIUQLCHGJElOUMeqNi/6UISFECwgyq+ADyNTaG1sQO%20TBGQogSE6W5jQJQVG0NzYgemCEhRAsJ0ZzEgirqJjaE5sQdTBKQoAWGyKj6AnMTG0J7YhSkCUpSA%20MFkVH0CuY2NoT+zCFAEpSkCYqooPIE+xMTQo9mGKgBQlIEz1FMOhqNvYGBoU+zBFQIoSECa6itFQ%201EVsDC2KnZgiIEUJCBMdx2go6TK2hSbFXkwRkKIEhGmq+ADiDHrTYi+mCEhRAsI0NXwAOY5toU2x%20G1MEpCgBYZKjGAtFOYPettiNKQJSlIAwyUOMhZKcQW9c7McUASlKQJjiOoZCSfexLbQqdmSKgBQl%20IExxHkOhpLvYFloVOzJFQIoSECao4QPIQ2wLzYo9mSIgRQkIE3yPkVCSM+jNiz2ZIiBFCQh5k0bP%20TD7FttCu2JUpAlKUgJD3JQZCQW1OO/4S+zJFQIoSENJOYxyUdBrbQsNiX6YISFECQtpJjIOCzmNT%20aFnszBQBKUpAyHpzKqzoKraFlsXOTBGQogSErMsYBgUZgV2IvZkiIEUJCEmHMQpKik2hbbE3UwSk%20KAEh6SBGQUHfYlNoW+zOFAEpSkDIuYlBUFBrxw7eEPszRUCKEhByYgyUdBSbQuNif6YISFECQspF%20jIGCzmJTaF3s0BQBKUpASIkhUFJsCc2LHZoiIEUJCBmPMQQKOoxNoXmxR1MEpCgBISNGQEGtHTh4%20W+zSFAEpSkBI+BQjoCBn0PsRuzRFQIoSEBJiABT0NbaEDsQ+TRGQogSE/X2OAVBQbAk9iH2aIiBF%20CQh7u439X9BNbAo9iJ2aIiBFTfpR64t4EMZyFvu/nJPYEroQezXlOB6jFZ0FBPZVwQeQ69gUaIyA%20MLivMeLLcQadVgkIY6vgA8htbAq0RkAYW/kPIM690SwBYWhXMd7LuYwtgfYICEM7jvFejjPotEtA%20GNlRDPdyWrtuE14REEZW/gOIM+g0TEAYWPkPIM6g0zIBYWDnMdqLuY8NgSYJCOOatPLNLO5iS6BJ%20AsK4in8AeYgNgTYJCMMq/wHEGXTaJiAM60uM9WI+xYZAowSEUU368Zg5mGO0TkAY1UkM9WJOY0Og%20VQLCoE5jpBdzHhsCzRIQBnUZI72Yq9gQaJaAMKY3R/5a/AQ/7RMQxnQfA72Y2A5omIAwpMMY58V8%20iw2BhgkIQyr9AeR7bAe0TEAY0U0M82KOYkOgZQLCiGKUF3MW2wFNExAGdBGjvJjYDmibgDCgGOTF%20HMZ2QNsEhPE8xiAv5UtsBzROQBhPjPFinEGnEwLCcD7FGC/la2wHtE5AGE4M8WJiM6B5AsJoPscQ%20L+UmtgOaJyAM5jZGeCknsR3QPgFhMGcxwku5ju2A9gkIYyn9AcQZdDoiIIzlawzwUm5jO6ADAsJQ%20Sn8AuYjtgB4ICEN5ivFdyGVsBnRBQBjJVQzvUpxBpysCwkiOY3gXchybAX0QEAZS+gOIM+j0RUAY%20yEOM7kKcQaczAsI4jmJwF3IfmwG9EBDGUfgDyF1sBvRCQBjGdYztQh5iM6AbAsIwvsfYLsQZdLoj%20IIyi8AeQT7EZ0A8BYRRfYmiXYULRIQFhEHcxsgs5jc2AjggIgziJkV3GeWwF9ERAGMNpDOxCrmIz%20oCcCwhguY2CX8Tm2AroiIAzhzYG+jtgK6IuAMIT7GNdlfIutgL4ICCM4jGFdxvfYCuiMgDCCsh9A%20jmIroDMCwgBuYlSXcRZbAb0REAYQg7qQ2AjojoDQv4sY1GUcxlZAdwSE/sWYLuNLbAT0R0Do3mOM%206TKcQadfAkL3YkiX8TU2orCLp5/cD8/MBITefYohXUZsRGm/f0zrOv4PzERA6F2M6DJuYiNK+xUQ%20/WBuAkLnPseILuIkNqK4nwHRD2YnIPTtNgZ0GdUctL/rBwsQEPp2FgO6iErOoP90rB8sQEDoWtkP%20ID8OKnHpB61YgoDQta8xngd3ES8HzEpA6FnhDyC1OI6XA+YlIPTsKYbz2O7j1YCZCQgdu4rRPDir%20qbAQAaFjxzGax2Y5YJYiIPTrKAbz2PyeFYsREPr1EIN5aNXcDE+HBIRu+QDyy228GjA/AaFb5zGW%20h3YXLwYsQEDo1XUM5aE9xosBSxAQevX7JzAGdx6vBSxCQOjUXYzkocVrAcsQEDr1JUbyyNxByLIE%20hD6dxkAemTsIWZiA0KeTGMgDe4qXApYiIHTJBxB3ELI8AaFLlzGOB+Y3pFicgNCjwxjGAzuNlwKW%20IyD06D6G8bg+xysBCxIQOuQDiDsIWYOA0KGDGMXjsoQiaxAQ+nMTg3hc1/FKwKIEhP7EGB7XTbwQ%20sCwBoTsXMYaHdRwvBCxMQOhODOFhXcbrAEsTEHrzGEN4WO4gZC0CQm9iBA/rW7wOsDgBoTOfYgSP%20yh2ErEdA6EwM4FF9j5cBViAg9OVzDOBRuYOQFQkIfYnxOyp3ELImAaErZzF+B3URLwOsQkDoyW0M%2030G5g5B1CQg9+RrDd0z38SrASgSEjgz+AeQoXgZYiYDQkacYvWM6jFcB1iIg9OMqBu+YzuJVgNUI%20CP04jsE7pJN4EWA9AkI3jmLsjskdhKxPQOjGQ4zdId3FiwArEhB6MfQHkMd4EWBNAkIvzmPojug8%20XgNYlYDQiesYuUOK1wDWJSB04nuM3BG5g5AyBIQ+3MXAHZE7CClEQOjDlxi4A3qKlwDWJiB04TTG%207YDcQUgxAkIXTmLcDugqXgJYnYDQgzfHcf9O4yWA9QkIPbiMYTuez/EKQAECQgcOY9SOxx2ElCQg%20dOA+Ru14LKFISQJC+25i0I7nOl4BKEJAaF+M2fHcxAsAZQgIzbuIMTuc43gBoBABoXkxZIdzGf/9%20UIqA0LphP4C4g5DSBITWxYgdzrf474diBITGfYoROxp3EFKegNC4GLCj+R7/+VCQgNC2UT+AuIOQ%20CggITbuN8ToadxBSAwGhaWcxXgdzEf/5UJSA0LJBP4A8xH8+lCUgtGzMDyD38V8PhQkILft0VtZ5%20TJd1HcV/PRQmIJB3HNNlVYfx5FCagEBezJZVncVzQ3ECAmklfojkJJ4byhMQSPses2VN7iCkHgIC%20WSUuIr6L54YKCAhkFVhG5TGeGmogIJB1GZNlPefxzFAFAYGko5gr6zErqYuAQNL6t8G7g5C6CAgk%20xVRZjzsIqYyAQM5pTJXVPMUTQy0EBHLWXsbEHYRUR0AgJ2bKaq7ieaEaAgIpay9jchrPC/UQEEj5%20EjNlJZ/jaaEiAgIZKy9j4g5CaiQgkLHyMiaWUKRGAgIZ6y5jch3PClUREEhYdxmTm3hWqIuAQMLX%20mCerOI4nhcoICCTENFnFZTwn1EZAYH+rLmPiDkJqJSCwvzWXMfkWzwnVERDYX8ySNbiDkHoJCOxt%20xWVMvsdTQoUEBPb2PWbJCtxBSMUEBPa14jIm7iCkZgIC+1pvGZOLeEaokoDAvu5jkizuIZ4Q6iQg%20sKfrmCOLu48nhEoJCOxptWVMjuIJoVICAnuKKbK4w3g+qJWAwH7WWsbkLJ4PqiUgsJ+HmCILO4mn%20g3oJCOwnZsjS3EFI/QQE9rLSMiZ38XRQMQGBvXyJGbKsx3g2qJmAwD7WWcbkPJ4NqiYgsI9VljEx%20+2iDgMA+VlnGxB2EtEFAYA+rLGPiDkIaISCwhzWWMXmK54LaCQjsIabHktxBSDMEBHa3xjImV/Fc%20UD0Bgd2tsIzJaTwV1E9AYHcxOxb0OZ4JGiAgsLPllzFxByEtERDY2fLLmFhCkZYICOxq+WVMruOZ%20oAkCArv6HJNjMTfxRNAGAYFdLb2MyXE8DzRCQGBHRzE3lnIZzwOtEBDY0VPMjaW4g5DWCAjsKKbG%20Ur7F00AzOgvI0cMEJjDveXOuzMMdhO37FIeSjDZPgHUWkLvY+hQzmPcsu4zJ93gWGvY9dmZKPEZb%20BOSFgPCeGCYLcQdhBwTkmYDAaxcxTJbhDsIeCMgzAYHXFl3G5CKehKYJyDMBgVeuYpQs4iGehLYJ%20yDMBgVeWXMbkPp6DxgnIMwGBV5ZcxuQonoPGCcgzAYEX1zFIlnAYz0HrBOSZgMCLrzFIFnAWT0Hz%20BOSZgMCLGCMLOIlnoH0C8kxA4Nmb82Q6dxD2Q0CeCQg8O48xMr+7eAY6ICDPBASexRCZ32M8AT0Q%20kGcCAv9ZbBmT83gCuiAgzwQE/rPUMiZtzjLeIiDPBATCYsuYuIOwLwLyTEAgLLWMiTsIOyMgzwQE%20wkLLmDzFw9MLAXkmIPDHQsuYuIOwOwLyTEDgj6cYIDO7ioenGwLyTEDgjxgfMzuNR6cfAvJMQOC3%20N+fIJEZbhwTkmYDAb4ssY+IOwh4JyDMBgd9ieMzLEoo9EpBnAgK/LLKMyXU8OF0RkGcCAr+cxPCY%200008Nn0RkGcCAj8tsYzJcTw2nRGQZwICPy2wjMllPDS9EZBnAgI/HcTomJE7CHslIM8EBBZZxuRb%20PDTdEZBnAgJLLGNimPVLQJ4JCCxwE8j3eGA6JCDPBATenh9p7iDsmIA8ExCYfxkTdxD2TECeCQjc%20xtCYzUU8MF0SkGcCAnMvY/IQj0ufBOSZgMDMy5jcx8PSKQF5JiAMb+5lTI7icemUgDwTEIY38zIm%20h/Gw9EpAngkIw4uBMZOzeFS6JSDPBITRzbuMyUk8Kv0SkGcCwujmXcbEHYT9E5BnAsLoYlzM4y4e%20lI4JyDMBYXBvzo2Mx3hQeiYgzwSEwc25jMl5PCZdE5BnAsLY5lzGpM3ZxL4E5JmAMLbHGBZzcAfh%20GATkmYAwthmXMXEH4SAE5JmAMLQZlzF5ioekdwLyTEAY2nzLmLiDcBgC8kxAGFoMihlcxSPSPQF5%20JiCMbNJI+stpPCL9E5BnAsLIZlvGxKgaiIA8ExBGFmNiMncQjkRAngkIAzuMMTGZJRRHIiDPBISB%20zbWMyXU8HkMQkGcCwsBiSEx1Ew/HGATkmYAwrpmWMTmOh2MQAvJMQBjXPMuYXMajMQoBeSYgDOso%20RsRE7iAcjYA8ExCGdRYjYppv8WgM40vs+pR4jLYIyAsB4Y8YENMYTuOZ9NVnPEZbBOSFGc9vk0bR%20f77HgzGQg9j5KfEYbRGQFwLCb8cxICZxB+GAYt/nxGO0RUBeCAi/xXiYxB2EI4qdnxOP0RYBeSEg%20/DLHMiYX8ViM5Dr2fk48SFsE5IWA8MsMy5g8xEMxlIvY/TnxIG0RkBcCwi8xHCa4j0diLNNOnsWD%20tEVAXggIP82wjMlRPBRjid2fFA/SFgF5ISD8NH0Zk8N4JMYycQGDeJS2CMgLAeF//7uK0ZB3Fo/E%20YCYuYBCP0hYBeSEgzLCMyUk8EKOZdBuhgNRAQJgoBkOeOwgHNXUJzniYtgjICwFh2gj65S4eiNE8%20xQjIiodpi4C8EBAmL2PyGI/DcGIEpMXDtEVAXggIU48C5/EwDOdzDIG0eJy2CMgLAWHiMiZtzhrm%20EEMgLx6nLQLyQkCY9JNy7iAc2KcYAnnxQG0RkBcCMrzbGApJ7iAc1sSR80s8UlsE5IWADG/aMiZP%208SiMZ+olWD/FI7VFQF4IyPAuYyikuINwXNMWcv8jHqotAvJCQEY37Vawq3gUxjPpnUeIh2qLgLwQ%20kNFNWsbkNB6E8cywgrOA1EBAmCAGQsqneAzGM3URkz/iwdoiIC8EZHBTRo87CAd2H4NgmniwtgjI%20CwEZ3JRlTCyhOK6vMQYmikdri4C8EJDBxTjIuI6HYDxvHkP3FA/XFgF5ISBjm7CMyU08BOOZ5wTI%20T/F4bRGQFwIytvwyJsfxCAwoxsB08XhtEZAXAjK0/GIUl/EIDOhLDILp4gHbIiAvBGRo+Wv53UE4%20rhmWMPlPPGJbBOSFgAwtfTPxt3gAxjN9Dd4X8ZBtEZAXAjKy9LlQw2ZcFzEGZhGP2RYBeeFIMLLs%20MiZf4u8znpsYA/OIB22LgLwQkJHFINibOwiHNfHnKzfFo7ZFQF4IyMBOYxDsyx2Ew8oOmbfEw7ZF%20QF4IyMCSy5hcxF9nOJOONdvE47ZFQF4IyMBiDOzpIf42w5m9HwJSAQEhJXc69D7+NsOZvx8CUgEB%20ISW3jMlR/G1Gs0A/BKQCAkJGbhmTw/jbjGaJfghIBQSEjNQNxWfxlxnNIv0QkAoICBmZZUxO4u8y%20mmX6ISAVEBASUsuYuINwUAv1Q0AqICAkZJYxuYu/y2CW6oeAVEBASIgBsI/H+KsMZrF+CEgFBIT9%20JdakOI+/ymCW64eAVEBA2N/+y5i0OTuYbMF+CEgFBIT9xf7fgzsIx7RkPwSkAgLC3vZfxsQdhGNa%20tB8CUgEBYW9fYv/v7Cn+ImNZth8CUgEBYV97L2PiDsIxLdwPAamAgLCvvZcxuYq/yFCW7oeAVEBA%202Ne+y5icxt9jKIv3Q0AqICDsad9lTD7F32Moy/dDQCogIOzpa+z9HbmDcEgr9ENAKiAg7Cl2/q4s%20oTiiNfrRZkDevAZeQBjBnsuYXMdfYySr9KPN9yYC8kJABrTfMiY38bcYyTr9aHN5g8fY+H8ICCOI%20fb+b4/hLjGSlfrT56fZzbPw/BgyI62vGs9cyJpfxlxjJWv1o8/rwp9j4fxw0+Y1cYmHuF37jejx7%20LWPiDsIBrdaPHxfxjE15iI3/x0GTs+XNi8p2YYmj4ey1jMm3+EsMZL1+/PgaT9mUk9j4fxw0eUrn%20MLY+5SEehGHss4yJU2QDWrEfP77HczYltv1fB03+5vP+K3O/4h6x4dzHrt/Bl/grDGTNfvy4jydt%20Smz7vw6a/MC+98J4rzlEjGafZUzcQTieVfvR5J2E17Hp/zpo8pL3s9j6FBfZjGaPZUzcQTielfvR%204o0gF7Hp/zpo8pqkN68J2Ek8CKOI/b6DJq+QYZK1+9HiIHvzKt4fB02eUn7zmoCd+JZiLLtf9O36%20ivGs3o8WT8K+/VsIB01+oRMbn9TkdQOk7fx5tcnTm0yyfj9a/AokNnyLgya/0ImNT/I9xVhit3+s%20yUvamaJEP9q7U/Wdz/AHLX6h8/Y1ATtxK/pQdr7m+zD+AsMo0o/23sG+cxXKQYvT5u1rAnbiOt6h%207LqMifcVwynTj/ZuJTyIDd/ioMU769++JmA38TCMYNdlTE7izzOMQv1o7gB0FZu9zUGLt0W8fU3A%20bpxFH8iuN526Nm80xfrx4zG2oBFvruX+088PJ/GnGhLbnma5o4HsuIyJNxWjKdeP1j7tvjeFfgak%20ucVMJq3F+0uTy5mRsuMFF429J2Sygv1o7OPuu1PoZ0CaOwky9RSIkyAD2W0ZEwtsjqZoP9r6DuTd%20KfTr/Hr8uWb82fIp/OTDMGKPv6/N3+Ukr2w/2jrmxiZv9ysgjX39u8/aqm/whnMUuy1j4g7CwZTu%20R0u3grx/08SvgDT2E32TluIN8VD0bqdlTNxBOJji/Whp1ZzY4jf8Ckhjh9Pf2z1Rk4vYs7/Y3+/y%20G8eDKd+Phr5F/2Ahh98BOY0/24RZ9r7rsMawyzIm7iAcTA39aGfU/S7E237/66ZOCUz7LZD/+NZ7%20CLssY9Lc0nZMUkU/mvne9KNlo/70paHD6a4rU3ygwQVc2Nsug6Wpj99MVkk/WjlxEBv7pj8BOY4/%203YD3bqvfRzwcPdthsHyKP8oYqulHGyPvwyuW4huudu6M/LO901nOZAAfL2Pigu6x1NOPJg66H6/j%20EAFpZinrXZfG+1g8IP3a4Y4hSygOpaZ+tPC9z8fL1kZAmplIsbkzsPpR9z5exuQ6/iRDqKofDZxH%203+Ht+n8BaeRa+LnOgPzizWfvYke/ze1AQ6msH9Ufgt77HZD//BeQNi7EmukSrD9ciNW5D1dtbuja%20Eaarrh+13462y+8uPQekiVvr5rkH5D/uBenbR6OlwZ9SI6++flT+PfpxbOS7ngPSwr31k38I5G9u%20R+9b7OY3uYNwJDX2o+qFbB9jE9/3EpD6L0ua9QusXyyi17OP7qG1pv9I6uxHxe9idnzBXgWk+m+E%20d/pItRfvQTv2wTImbgQaSa39+HFQ6Yn0XU6g//IqILW/Id/tpx328iUemv58MAPs+pFU249av0jf%20tR9/BaTuq8p2/k/ah5tBuvXBFd8u4h5Ixf2o8w6K3c8W/BWQqs8q73JN2f5cidWr95cxcQfhQKru%20R40Fuf0rC+/6+09WvKLJ/CdA/vBOtE/vr+LT0C+KMlXl/ajw7PPHa8g920hNtbfm7nZNWYKfE+rT%20U+zfrR7iDzGA6vtRW0F2WELuxeZnlUqvS17gBPp/3I7cpdi7WzX0g9RM1UA/6npHs98L9s+XXVWe%20FFiwH67n7NK795w68TWOJvrx48dlNXcU7PIr0K/8e7akwnsjFh4EvhDvz3vLmLh/dByN9OOnSr77%20+fAXpDb8G5D6CrL4IHAxb3diz27TzG/fMFk7/ajjKHS097WuWwJS2yf8FQaBgnTmnWVMXDUxjpb6%208ePHQ/ErQhOXKm0LSF0FOYyNWpRfxu7LO8uYuG57GG3146eyX67efo/N2MfWgNR0m9WcPyH1Dt9r%209OSdVQsqXv6UeTXXjx8/zgu+vcn9Wvj2gNRzXnneXwB5h7XdO/L2uw5fVg6jwX78VGqAZr/oeSMg%20ldxef7XM+iXbWd2iG2/eSXsef4DutdmPn0r8zMD1STz53t4KyI+TCr4r/ugXHWbm8s5OvLmMyUH8%20AbrXbD9+/Lhc+0D07YNfPnjPmwEpfzy9PY8NWY2b0vvw5jIm7iAcRcP9+Ol+zVMIF3usfPWvdwLy%2043vRO0Jm/v3a3fgQ0oPYmf+wd0fRdj9+eVrnG/W7d9eM28F7ASl5Lv1owqeqKUpeBsE83nrrUeMP%20L7CE9vvxy9nSDbn+Gs80wfsB+XFS5szy7VKLt+/ALSGte+OrT3cQjqKPfvzycLHUt0BXF/Nc4PpB%20QH6+JV//e+Pble79eEu1a9qzk9iNmypc5I0l9NOP376c3cz7Nv765my+08sfBuRnQtb9FHI19Vu5%20GVhesWFvXLt3Gv+aznXWj3Bwcn789HQ2xdfjh+8nc98YsUNAfn74X+/s493ql15td+b9aqu2X9Lu%20m8lB9NmPau0UkJ9WuSjgaN+1hJf03TdZTdq+jIk7CAehH+vaNSA/fV12GaHrz3tsyzrOL1yT1Zzt%20J9DsyDHox8r2O2h/+bxMRK4/ZRaCXMP906FjT1O2jugyFxOyNv1YW+Jd//nZxelcl2bd3l2cnU+6%20E3INX54+HV7rSBO2LmPi28gx6MfqJn1tdDBFPEZbYtuXc2m1jWm2XcNniZox6Mf62jyO98y3LZPE%20q/jaZfwr+qYfBQhIdfzk0QTbljFxRfYQ9KMEAamPNf/yttxGVOL3FVidfhQhIBVyzjfrNl7BVz7H%20v6Jr+lGGgNTIbdNJ/y5j8iX+DV3Tj0IEpEpnMS/Yz7/LmLj6egT6UYqA1MmVpxn/LmPimrYR6Ecx%20AlKph5gb7OGfZUwsqzwC/ShHQGrly/v9xUv3TIVHoB8FCUi1Ln19v6fNZUzu45/TM/0oSUDqdeAO%20uP1sLmNiWZgB6EdRAlIzR8C9xKv2HzdkDkA/yhKQqrmIaA+H8aIFl0IPQD8KE5C6+SXv3f29jMlJ%20/FM6ph+lCUjlfA+zq41lTFyC0D/9KE5AaudWhh39vYyJNY37px/lCUj1LIy1m7+WMXmMf0i/9KMC%20AlI/Z4N38dcyJufxD+mXftRAQBpgYawdvF7G5CD+Gf3SjyoISAu8of5YvFS/uX+me/pRBwFpgoWx%20PvL6gOLKte7pRyUEpA0WxvrAq2VMnuIf0S39qIWAtMLCWO+KV+kndxB2Tz+qISDN8MX+O14tY6K0%20vdOPeghIOyyM9baXZUws/tI7/aiIgDTEsfFN8Qq57bJ/+lETAWmJy4ve8LyMiQuee6cfVRGQplgY%20a7vnZUxcrNY5/aiLgLTFNzTbHMWr4zRR7/SjMgLSmK8xk3jlLF6cm/j/dEo/aiMgrbEw1r+8NGPQ%20j+oISHOcJ94Ux5XL+L90Sj/qIyDtOXGm+G/Hf14XdxD2TT8qJCANsjDW3/68Kt/i/9En/aiRgDTJ%20m+1X/ixj8jn+H33SjyoJSJssjPXi9zImFrzvm37USUAadRcTiz/fYPlWr2v6USkBaZWFscLjr1fD%20HYRd049aCUizLIz1x+XP18ISL13Tj2oJSLscNX+5+vlKPMT/pkv6US8BaZiFsX46+/HjPv4nXdKP%20iglIyyyM9fsUukvSeqYfNROQpvnu5ufhxcmgnulH1QSkbd9jmg3r+MdZ/C96pB91E5DGjb4w1o+T%20+B/0SD8qJyCtux+6IIfuIOyZftROQNo38sJY5+7I75h+VE9AOjDubdi37oXpmH7UT0B6MOzbcN9f%20dUw/GiAgXfBbGPRGP1ogIH24iVkHfdCPJghIJx5j3kEP9KMNAtILv8hHP/SjEQLSDQtj0Qv9aIWA%209MPCWPRBP5ohIB0ZfmEsuqAf7RCQnoy+MBY90I+GCEhXxl4Yix7oR0sEpDN+XImm6UdTBKQ3CkLD%209KMtAtId69PSLP1ojID0x8JYNEo/WiMgHbIwFk3Sj+YISI8sjEWD9KM9AtIlC2PRHP1okID0ycJY%20NEY/WiQgnbIwFk3RjyYJSK8sjEVD9KNNAtKty5iaUD39aJSA9OvAwli0QT9aJSA9s6wJLdCPZglI%20165jhkK99KNdAtI3C2NRO/1omIB0zsJY1E0/WiYgvbMwFjXTj6YJSPcsjEW99KNtAtK/s5irUBv9%20aJyADOApZivURT9aJyAjsDAWNdKP5gnIECyMRX30o30CMoZLy5pQGf3ogIAM4v4qpi1UQT96ICDD%20sDAWFdGPLgjIOCyMRTX0ow8CMhALY1EJ/eiEgIzkMKYvFKUfvRCQoVgYiwroRzcEZCyfYgpDMfrR%20DwEZjIWxKEw/OiIgo7EwFkXpR08EZDgWxqIg/eiKgIznS0xlWJ1+9EVABmRhLArRj84IyIgOLIxF%20CfrRGwEZk4WxWJ9+dEdABmVhLNamH/0RkFGdxqyGdehHhwRkWBbGYk360SMBGddFzGxYnn50SUAG%20ZmEs1qIffRKQkVkYi3XoR6cEZGjHMb9hSfrRKwEZ23nMcFiOfnRLQAZnYSyWph/9EpDRWRiLZelH%20xwQEC2OxIP3omYBgYSyWox9dExAsjMVi9KNvAsJPFsZiEfrROQHhFwtjsQD96J2A8JuFsZidfnRP%20QPjDwljMTD/6JyCErzHtYRb6MQAB4T8WxmJG+jECAeGZhbGYjX4MQUB4cWJZE+ahH2MQEF6xMBaz%200I9BCAh/sTAW0+nHKASEv1kYi6n0YxgCwoa7OApAjn6MQ0DYZGEsptCPgQgI/7AwFnn6MRIB4V8W%20xiJLP4YiIGxhYSxy9GMsAsI2FsYiQz8GIyBs9RBHBNidfoxGQNjuexwTYFf6MRwB4Q0WxmI/+jEe%20AeEt9wrCHvRjQALC2yyMxc70Y0QCwjuu4+AAH9CPIQkI77EwFjvRjzEJCO+yMBY70I9BCQjvu4lD%20BLxJP0YlIHzgMQ4S8Ab9GJaA8JHPcZiArfRjXALChyyMxTv0Y2ACwscsjMWb9GNkAsIOLIzFG/Rj%20aALCLiyMxVb6MTYBYScWxmIL/RicgLCjozhmwH/0Y3QCwq4UhL/px/AEhJ1ZGIvX9AMBYXff4sgB%20+sFPAsIeLIzFf/QDAWE/FsbiD/3gJwFhLxbG4hf94BcBYT8WxkI/CALCniyMhX7wh4CwLwtjjU4/%20CALC3k7iOMKY9IP/CAj7szDWyPSDZwJChmVNhqUfvBAQUq7jcMJg9INXBIQcC2MNST94TUBIsjDW%20gE5j58NvAkLWYRxUGMa32PXwh4CQZmnFwdzEjocgIORZWnEoF7Hb4T8CwgSWVhzIp9jp8ExAmOI4%20Di507yl2ObwQECY5cVP6EG5PYofDKwLCRG4pHMBR7Gz4i4Awlct5u3cYuxr+JiBM5kRI545jR8MG%20AWG6A2srdszqJbxJQJiDO0K6dRa7GP4lIMzi0uKKXXL2g/cICDM5dkFvd+5cvMu7BITZfIrDDn24%20+x47Ft4gIMzozKeQblxcxk6FNwkIs3pyX2EPvrlyl10ICHM7c1Fv044ez2NPwgcEhAUcP7ooq0FX%20pxdPX2IXwg4EhKXcX36hFZfOeJAgIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgA%20KQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACk%20CAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAi%20IACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqA%20AJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQIC%20QIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgA%20KQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACk%20CAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAi%20IACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqA%20AJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQIC%20QIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgA%20KQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACk%20CAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAi%20IACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqA%20AJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQIC%20QIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgA%20KQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACk%20CAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgAKQICQIqAAJAiIACkCAgACT9+/B9OBtmP%20+E7prAAAAABJRU5ErkJggg==%22%20preserveAspectRatio=%22none%22%20height=%2253.433%22%20width=%2253.433%22/%3E%3Ctext%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2253.263%22%20y=%2288.368%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2253.263%22%20y=%2288.368%22%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans%20Bold'%22%20font-weight=%22700%22%20font-size=%2219.756%22%20font-family=%22Gill%20Sans%22%20fill=%22red%22%3Ev4%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c6aedbaa-642d-4188-a731-9e9687b22227",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 80,
                "y": 48
              }
            },
            {
              "id": "1676fb59-5f37-42e5-9769-51fcf974fc64",
              "type": "basic.output",
              "data": {
                "name": "vel_left_motor",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1096,
                "y": 128
              }
            },
            {
              "id": "e3330317-c1e1-4847-8ce7-48a4683af59f",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 152
              }
            },
            {
              "id": "c4ddd126-7d64-451c-a9fa-e755548849c4",
              "type": "basic.input",
              "data": {
                "name": "centroid_i",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 72,
                "y": 264
              }
            },
            {
              "id": "3972f4a3-d45c-404c-b539-c86d8a464059",
              "type": "basic.input",
              "data": {
                "name": "new_centroid",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 376
              }
            },
            {
              "id": "9c6e4097-d802-4954-b5b4-6dde0f18d5fe",
              "type": "basic.output",
              "data": {
                "name": "vel_rgth_motor",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1088,
                "y": 400
              }
            },
            {
              "id": "2730a968-5f45-41e7-a0e6-1c3c610215aa",
              "type": "basic.input",
              "data": {
                "name": "proximity",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": 72,
                "y": 480
              }
            },
            {
              "id": "5e1acbf3-4251-4082-b7cb-2b112485b1da",
              "type": "basic.code",
              "data": {
                "code": "parameter  nb_vel_motor = 8,\r\n           nb_Pctrl = 3,\r\n           nb_counter = 32;\r\n\r\n// Variables for motor speed and direction\r\nreg signed [nb_vel_motor-1:0] vel_motor_left;\r\nreg signed [nb_vel_motor-1:0] vel_motor_rgth;\r\nreg signed [nb_vel_motor-1:0] direction;\r\n\r\n // Proportional control variable\r\nreg signed [nb_Pctrl-1:0] Prgth;\r\nreg signed [nb_Pctrl-1:0] Pleft;\r\n\r\nreg lost_obj = 1'b1; // 0=lost; 1=looking\r\n\r\n// Counter register\r\nreg [nb_counter-1:0] counter = 0;\r\n\r\n// Last known centroid\r\nreg [nb_vel_motor-1:0] last_cent_valid;\r\n\r\n// Output assign \r\nassign v_left_motor_o = (vel_motor_rgth + direction) * lost_obj;\r\nassign v_rgth_motor_o = (vel_motor_left + direction) * lost_obj;\r\n\r\nalways @(posedge clk)\r\nbegin\r\n\r\n    // Direction calculation\r\n    // Range: (proximity - 3'd3) [-3d to 4d];\r\n    // Range: direction [48 32 16 0 -16 -32 -48 -64]\r\n\tdirection <= (proximity - 3'd3) * (-7'd16);\r\n\t\r\n\t// Only the most significant bits are used for each side.\r\n\tPrgth = last_cent_valid[7:5];\r\n\tPleft = {last_cent_valid[0], last_cent_valid[1], last_cent_valid[2]};\r\n\t\r\n\t// Values: [0 8 16 32]\r\n\tvel_motor_rgth <=  5'd8 * Prgth;\r\n\tvel_motor_left <=  5'd8 * Pleft;\r\nend\r\n\r\n// Process to stop the searching if the counter limit is reached.\r\nalways @(posedge clk)\r\nbegin\r\n\tif(counter > 32'h40000000) begin\r\n\t\tlost_obj <= 1'b0;\r\n\tend else begin\r\n\t\tlost_obj <= 1'b1;\r\n\tend\r\nend\r\n\r\n// Process to find the object from the last known position.\r\nalways @(posedge clk) begin\r\n  if(centroid_i == 8'h00) begin\r\n    counter <= counter + 1;\r\n  end else begin\r\n    last_cent_valid[7:0] <= centroid_i[7:0];\r\n\tcounter <= 32'h00000000;\r\n  end\r\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "centroid_i",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "new_centroid"
                    },
                    {
                      "name": "proximity",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "v_left_motor_o",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "v_rgth_motor_o",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 304,
                "y": 24
              },
              "size": {
                "width": 648,
                "height": 544
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "5e1acbf3-4251-4082-b7cb-2b112485b1da",
                "port": "v_rgth_motor_o"
              },
              "target": {
                "block": "9c6e4097-d802-4954-b5b4-6dde0f18d5fe",
                "port": "in"
              },
              "vertices": [],
              "size": 8
            },
            {
              "source": {
                "block": "5e1acbf3-4251-4082-b7cb-2b112485b1da",
                "port": "v_left_motor_o"
              },
              "target": {
                "block": "1676fb59-5f37-42e5-9769-51fcf974fc64",
                "port": "in"
              },
              "vertices": [],
              "size": 8
            },
            {
              "source": {
                "block": "3972f4a3-d45c-404c-b539-c86d8a464059",
                "port": "out"
              },
              "target": {
                "block": "5e1acbf3-4251-4082-b7cb-2b112485b1da",
                "port": "new_centroid"
              }
            },
            {
              "source": {
                "block": "e3330317-c1e1-4847-8ce7-48a4683af59f",
                "port": "out"
              },
              "target": {
                "block": "5e1acbf3-4251-4082-b7cb-2b112485b1da",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "c6aedbaa-642d-4188-a731-9e9687b22227",
                "port": "out"
              },
              "target": {
                "block": "5e1acbf3-4251-4082-b7cb-2b112485b1da",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "2730a968-5f45-41e7-a0e6-1c3c610215aa",
                "port": "out"
              },
              "target": {
                "block": "5e1acbf3-4251-4082-b7cb-2b112485b1da",
                "port": "proximity"
              },
              "size": 3
            }
          ]
        }
      }
    }
  }
}