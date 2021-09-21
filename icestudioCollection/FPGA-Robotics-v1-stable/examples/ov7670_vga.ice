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
            "x": -720,
            "y": -376
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
            "x": -720,
            "y": -232
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
            "x": -184,
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
          "id": "dd3b537e-aa66-40fa-a0c5-ce9a5be5e2e1",
          "type": "basic.output",
          "data": {
            "name": "vga_hs",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "10"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 2248,
            "y": 152
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
          "id": "2f3bfdf6-eb6b-4b44-b95f-fd60e44f05cd",
          "type": "basic.output",
          "data": {
            "name": "vga_vs",
            "pins": [
              {
                "index": "0",
                "name": "D7",
                "value": "9"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 2248,
            "y": 224
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
            "y": 296
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
          "id": "7492ffbe-ce55-4491-8a14-8fea18ae549b",
          "type": "basic.output",
          "data": {
            "name": "VGA_R0",
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
            "x": 2248,
            "y": 336
          }
        },
        {
          "id": "9820ae35-9983-496a-bf2b-75ec61fe7034",
          "type": "basic.output",
          "data": {
            "name": "VGA_R1",
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
            "x": 2248,
            "y": 408
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
            "x": -520,
            "y": 472
          }
        },
        {
          "id": "a6316f6c-ff7d-46fc-875e-5f5dcae72127",
          "type": "basic.output",
          "data": {
            "name": "VGA_G0",
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
            "x": 2248,
            "y": 480
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
            "x": 1232,
            "y": 528
          }
        },
        {
          "id": "a89de252-48fd-4a34-8a3d-3580cb3d7a1f",
          "type": "basic.output",
          "data": {
            "name": "VGA_G1",
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
            "x": 2248,
            "y": 552
          }
        },
        {
          "id": "0ce80620-ba8a-4ed1-9912-c556ae256dfa",
          "type": "basic.output",
          "data": {
            "name": "VGA_B0",
            "pins": [
              {
                "index": "0",
                "name": "D5",
                "value": "7"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 2248,
            "y": 624
          }
        },
        {
          "id": "68def850-9633-466b-ace3-cb84ec9deaf2",
          "type": "basic.output",
          "data": {
            "name": "VGA_B1",
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
            "x": 2248,
            "y": 696
          }
        },
        {
          "id": "8d1e5612-805b-493e-9d80-eebe3362d12c",
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
          "id": "4cbca66a-218f-4158-b254-c6dc725303fe",
          "type": "ca20160ef23057cb15d0594c21d2b02092446c79",
          "position": {
            "x": 1240,
            "y": 184
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "6b4167ff-8958-4366-9c90-174d64a12b1d",
          "type": "e1dd3b2cd19148b21c540060a3ea83704d6c07b4",
          "position": {
            "x": -520,
            "y": -376
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "bfca9867-7da8-4667-b5cc-9a908778a8e7",
          "type": "893758fe64e858cbd68d98e76bf44c7021f420d1",
          "position": {
            "x": -296,
            "y": 56
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8442e994-1926-4396-80ae-79f8fc7c3bc6",
          "type": "893758fe64e858cbd68d98e76bf44c7021f420d1",
          "position": {
            "x": -176,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "37422765-e1ca-4cbf-893d-eef4bf1e76bb",
          "type": "893758fe64e858cbd68d98e76bf44c7021f420d1",
          "position": {
            "x": -296,
            "y": 216
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c2860b32-89ae-4b06-8ed1-9d1072146217",
          "type": "basic.info",
          "data": {
            "info": "#### OV7670 Camera and Alhambra II pin connection\r\n![OV7670 camera and alhambra pin connection](https://raw.githubusercontent.com/Javi-Garci/ObjectDetect_OV7670/master/IMG/ov7670_alhambra_interface.png)\r\n\r\n\r\n",
            "readonly": true
          },
          "position": {
            "x": 1512,
            "y": -448
          },
          "size": {
            "width": 944,
            "height": 952
          }
        },
        {
          "id": "fc056515-c692-4ca6-b772-f5ea78b50cba",
          "type": "basic.info",
          "data": {
            "info": " ## Object detection with camera OV7670\r\n \r\nThe objective of this project is to track an object using the 0V7670 camera and an FPGA. To do this, the colour filter corresponding to that of the object will be applied and its centroid will be detected. The result of the processing is shown through the LEDs.\r\n \r\n EXAMPLE VIDEO: https://youtu.be/yu4rbgJa0q8",
            "readonly": true
          },
          "position": {
            "x": 1112,
            "y": -560
          },
          "size": {
            "width": 1344,
            "height": 216
          }
        },
        {
          "id": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
          "type": "d7c2e5b25c0dbff0804d68d38c132f56555a898c",
          "position": {
            "x": 912,
            "y": 232
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "1823414f-bdb3-42f6-8484-d34a579a3d74",
          "type": "d67a99f8ed7313328079eb6768ee92d9511d866e",
          "position": {
            "x": -352,
            "y": 424
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "8157617a-0ce6-4766-b53d-143857c5e423",
          "type": "5d5e7185b7816de87f0b4af031af69180b756d9d",
          "position": {
            "x": 1552,
            "y": 184
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "3ce731ed-1a42-4ba2-ac76-122480a8c4af",
          "type": "062506cb9e94eb05aae45c3f3c00606254bb6a4e",
          "position": {
            "x": 2032,
            "y": 328
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "4d5310d0-b2ba-4919-8296-479d0852fb25",
          "type": "062506cb9e94eb05aae45c3f3c00606254bb6a4e",
          "position": {
            "x": 2032,
            "y": 472
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "ac95ad48-eae6-4e57-8bcb-4df72321414a",
          "type": "062506cb9e94eb05aae45c3f3c00606254bb6a4e",
          "position": {
            "x": 2032,
            "y": 616
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
          "type": "827cf4ce5ced29aeecb0d284fa83a3df1d466d65",
          "position": {
            "x": 64,
            "y": -56
          },
          "size": {
            "width": 96,
            "height": 480
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
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "48b9338f-1828-4c0b-b389-6fb616ec5e28"
          }
        },
        {
          "source": {
            "block": "0bb9ea23-240e-4ede-a85f-74ee291c98af",
            "port": "out"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "3ba849c6-05d4-48ff-8d54-be37e4e75bb6"
          }
        },
        {
          "source": {
            "block": "3584f4ef-7efb-4b3b-8756-a154a967aaee",
            "port": "out"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "f731eb81-7b9d-453a-9300-a79f4d40a8be"
          }
        },
        {
          "source": {
            "block": "b615a18e-be5b-4c9a-acbc-fd4f940111f8",
            "port": "out"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "989c3718-33f4-4a9d-a56b-bb1e1ee58367"
          }
        },
        {
          "source": {
            "block": "2bbeb9bb-bc4b-4979-9405-26fa6f7edcd0",
            "port": "out"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "cc757d2d-942a-437d-bb6b-340f7104b99d"
          }
        },
        {
          "source": {
            "block": "44c9b50f-df3c-49b3-8a9f-871a1788d663",
            "port": "out"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
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
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
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
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "cac2fb92-01e7-48e7-b6c2-d448cca3b434"
          }
        },
        {
          "source": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "d72b4174-f259-4972-919d-c031b9d25af7"
          },
          "target": {
            "block": "1f5768ae-a1ab-43b2-9ff5-b115c0ce95b9",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "33d14280-55bc-45ab-af5b-40dff5784f86"
          },
          "target": {
            "block": "b8a39daf-af95-4d8f-87d5-dee29cbe4e2c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "2a5cb73b-b7f7-4719-9d7e-2b5789bb998e"
          },
          "target": {
            "block": "070c148e-68f3-4b55-9102-f8921b95f339",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "54acda2c-f70a-4af7-b57f-0970132342ff"
          },
          "target": {
            "block": "0ce0e3a8-6645-49b2-8275-74721a51bc4f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "f4c20f3d-47b2-43e0-9474-cf379dd06019"
          },
          "target": {
            "block": "8d1e5612-805b-493e-9d80-eebe3362d12c",
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
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "60bc29bf-2f81-4e0a-b81c-844756d89d96"
          },
          "target": {
            "block": "8d1e5612-805b-493e-9d80-eebe3362d12c",
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
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "a63c9de5-2bbe-4bf8-87c3-078fc03cd312"
          },
          "target": {
            "block": "8d1e5612-805b-493e-9d80-eebe3362d12c",
            "port": "5f7e35e0-3e2d-48ee-ac2e-ed81cd595bce"
          },
          "vertices": [],
          "size": 12
        },
        {
          "source": {
            "block": "8d1e5612-805b-493e-9d80-eebe3362d12c",
            "port": "0c3d577e-24c0-4184-85c3-3135c17c8d75"
          },
          "target": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "42fa8d87-4417-445a-8aa1-fe3e788fab93"
          },
          "size": 12
        },
        {
          "source": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "670e772a-d87e-434a-894d-d041562431ba"
          },
          "target": {
            "block": "4cbca66a-218f-4158-b254-c6dc725303fe",
            "port": "4609e8ba-4336-4956-b19d-9ca2284eb95f"
          },
          "size": 13
        },
        {
          "source": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "f601bcbf-3211-4eae-b6f7-0ac328314785"
          },
          "target": {
            "block": "4cbca66a-218f-4158-b254-c6dc725303fe",
            "port": "5f7e35e0-3e2d-48ee-ac2e-ed81cd595bce"
          },
          "size": 12
        },
        {
          "source": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "f8572b55-003e-401b-9b2e-79ec1db7f901"
          },
          "target": {
            "block": "8d1e5612-805b-493e-9d80-eebe3362d12c",
            "port": "8e6bcd2c-4b42-45f5-a49d-9f0710f2ed46"
          },
          "vertices": [
            {
              "x": 752,
              "y": 472
            }
          ],
          "size": 13
        },
        {
          "source": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "ddfee140-db14-458d-9764-645ccbdf517c"
          },
          "target": {
            "block": "4cbca66a-218f-4158-b254-c6dc725303fe",
            "port": "04eeb1c6-d5f8-4317-a875-94f0a697cdfc"
          }
        },
        {
          "source": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "54a12c13-efa4-4701-8e89-c916a9cdb4f7"
          },
          "target": {
            "block": "daf7db18-d3b7-4951-9287-54be5755d726",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1128,
              "y": 488
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "9b95db21-3045-4d45-b199-9e7b5e206fa5"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "f3fe17a9-5326-4a3e-8102-c9b868d3d14f"
          },
          "vertices": [
            {
              "x": 800,
              "y": -16
            }
          ]
        },
        {
          "source": {
            "block": "f81b6b23-b975-4521-a94c-98718b4d3e3e",
            "port": "out"
          },
          "target": {
            "block": "6b4167ff-8958-4366-9c90-174d64a12b1d",
            "port": "7109ab6e-72a5-4bd1-aea2-a7e0c9dff7fc"
          }
        },
        {
          "source": {
            "block": "6b4167ff-8958-4366-9c90-174d64a12b1d",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "d6c45f84-0898-42f6-88ae-448a142560d8"
          }
        },
        {
          "source": {
            "block": "6b4167ff-8958-4366-9c90-174d64a12b1d",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "8d1e5612-805b-493e-9d80-eebe3362d12c",
            "port": "b2b9d2ce-7cd2-4e09-ab14-b65cc710b349"
          },
          "vertices": [
            {
              "x": 584,
              "y": 144
            }
          ]
        },
        {
          "source": {
            "block": "6b4167ff-8958-4366-9c90-174d64a12b1d",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "518ec16a-1b03-4801-a576-b48651508d95"
          },
          "vertices": [
            {
              "x": 832,
              "y": 72
            }
          ]
        },
        {
          "source": {
            "block": "6b4167ff-8958-4366-9c90-174d64a12b1d",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "4cbca66a-218f-4158-b254-c6dc725303fe",
            "port": "b2b9d2ce-7cd2-4e09-ab14-b65cc710b349"
          },
          "vertices": [
            {
              "x": 1128,
              "y": 80
            }
          ]
        },
        {
          "source": {
            "block": "6b4167ff-8958-4366-9c90-174d64a12b1d",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "7d827d03-b8f6-4089-be99-f99d2f0267ab"
          },
          "vertices": [
            {
              "x": 1432,
              "y": 168
            }
          ]
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "80e42b44-7e25-477d-b06f-65fc2addc0ef"
          },
          "vertices": [
            {
              "x": 1400,
              "y": 8
            },
            {
              "x": 1232,
              "y": -200
            }
          ]
        },
        {
          "source": {
            "block": "4cbca66a-218f-4158-b254-c6dc725303fe",
            "port": "0c3d577e-24c0-4184-85c3-3135c17c8d75"
          },
          "target": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "dc853db0-0672-4276-992d-98f7d5244111"
          },
          "size": 12
        },
        {
          "source": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "2103e68a-891c-45f4-b510-7583b0171adc"
          },
          "target": {
            "block": "4cbca66a-218f-4158-b254-c6dc725303fe",
            "port": "8e6bcd2c-4b42-45f5-a49d-9f0710f2ed46"
          },
          "vertices": [
            {
              "x": 1920,
              "y": 424
            }
          ],
          "size": 13
        },
        {
          "source": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "4d59374a-af00-4e3d-9a38-fcab8a534b71"
          },
          "target": {
            "block": "4a2055a6-0b57-4ffb-9deb-f4a58acb6169",
            "port": "fa48900f-a283-4d8c-91a1-b7c384a6c82b"
          },
          "size": 3
        },
        {
          "source": {
            "block": "6b4167ff-8958-4366-9c90-174d64a12b1d",
            "port": "98c7ba47-e4ca-4605-bcf3-e6c9dff20f63"
          },
          "target": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "4abb07af-ade5-4c64-9b99-499421543b17"
          },
          "vertices": [
            {
              "x": -392,
              "y": 304
            }
          ]
        },
        {
          "source": {
            "block": "51d35fc9-33ce-486f-b74a-a7353cd9bfcb",
            "port": "out"
          },
          "target": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "cc7ce441-03ef-4af1-a4b5-3fc62d97c5d0"
          },
          "vertices": [
            {
              "x": -456,
              "y": 272
            }
          ]
        },
        {
          "source": {
            "block": "b02f1780-0891-42d5-9db5-5b42c5567a21",
            "port": "out"
          },
          "target": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "3b813806-335f-43fb-8e25-8ebbe19b722a"
          }
        },
        {
          "source": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "64464fb0-84cf-4bee-9a36-9bded32f6a6c"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "cd410d7a-c16d-4dfa-bc87-14b47b830714"
          }
        },
        {
          "source": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "378faa26-e079-4c7d-91b3-339fb79813af"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "338b5d2f-c57a-448e-9e5b-d906f74e0fb4"
          }
        },
        {
          "source": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "378faa26-e079-4c7d-91b3-339fb79813af"
          },
          "target": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "773cbdd4-2b73-4acc-ae15-ff85abc869eb"
          },
          "vertices": [
            {
              "x": 1392,
              "y": 384
            }
          ]
        },
        {
          "source": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "64464fb0-84cf-4bee-9a36-9bded32f6a6c"
          },
          "target": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "1857b812-efde-4633-9119-31deb74c311a"
          },
          "vertices": [
            {
              "x": 1368,
              "y": 424
            }
          ]
        },
        {
          "source": {
            "block": "1823414f-bdb3-42f6-8484-d34a579a3d74",
            "port": "4d59374a-af00-4e3d-9a38-fcab8a534b71"
          },
          "target": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "a0693160-59c0-4a09-aeed-14087acdc7a1"
          },
          "vertices": [
            {
              "x": 1424,
              "y": 472
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "da91d9fd-3ca1-4af3-b290-efb6457958d1"
          },
          "target": {
            "block": "dd3b537e-aa66-40fa-a0c5-ce9a5be5e2e1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "89bf4aeb-4e2e-4016-8c38-46b945330713"
          },
          "target": {
            "block": "2f3bfdf6-eb6b-4b44-b95f-fd60e44f05cd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "73214898-d65c-4fb4-82cb-6b133e3d3c7c"
          },
          "target": {
            "block": "3ce731ed-1a42-4ba2-ac76-122480a8c4af",
            "port": "cac1a1d5-cfd9-4e82-ac0a-a65c676f1895"
          },
          "size": 4
        },
        {
          "source": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "7bc5ccd0-08c4-43fe-aa6b-8e04a3b0e62f"
          },
          "target": {
            "block": "4d5310d0-b2ba-4919-8296-479d0852fb25",
            "port": "cac1a1d5-cfd9-4e82-ac0a-a65c676f1895"
          },
          "vertices": [
            {
              "x": 1872,
              "y": 496
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "8157617a-0ce6-4766-b53d-143857c5e423",
            "port": "892fd2df-a2c4-4a57-a564-90232fccfb74"
          },
          "target": {
            "block": "ac95ad48-eae6-4e57-8bcb-4df72321414a",
            "port": "cac1a1d5-cfd9-4e82-ac0a-a65c676f1895"
          },
          "vertices": [
            {
              "x": 1800,
              "y": 608
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "3ce731ed-1a42-4ba2-ac76-122480a8c4af",
            "port": "58a18b31-d1ab-4c1e-be55-d902fdbcab58"
          },
          "target": {
            "block": "7492ffbe-ce55-4491-8a14-8fea18ae549b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3ce731ed-1a42-4ba2-ac76-122480a8c4af",
            "port": "06d156a8-45c7-4a2d-b725-f8755c86e14d"
          },
          "target": {
            "block": "9820ae35-9983-496a-bf2b-75ec61fe7034",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4d5310d0-b2ba-4919-8296-479d0852fb25",
            "port": "58a18b31-d1ab-4c1e-be55-d902fdbcab58"
          },
          "target": {
            "block": "a6316f6c-ff7d-46fc-875e-5f5dcae72127",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4d5310d0-b2ba-4919-8296-479d0852fb25",
            "port": "06d156a8-45c7-4a2d-b725-f8755c86e14d"
          },
          "target": {
            "block": "a89de252-48fd-4a34-8a3d-3580cb3d7a1f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ac95ad48-eae6-4e57-8bcb-4df72321414a",
            "port": "06d156a8-45c7-4a2d-b725-f8755c86e14d"
          },
          "target": {
            "block": "68def850-9633-466b-ace3-cb84ec9deaf2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ac95ad48-eae6-4e57-8bcb-4df72321414a",
            "port": "58a18b31-d1ab-4c1e-be55-d902fdbcab58"
          },
          "target": {
            "block": "0ce80620-ba8a-4ed1-9912-c556ae256dfa",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bfca9867-7da8-4667-b5cc-9a908778a8e7",
            "port": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
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
            "block": "8442e994-1926-4396-80ae-79f8fc7c3bc6",
            "port": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "4359b806-c7a0-471f-9da9-e5271beb68de"
          }
        },
        {
          "source": {
            "block": "37422765-e1ca-4cbf-893d-eef4bf1e76bb",
            "port": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45"
          },
          "target": {
            "block": "ce68cd39-d32d-4a8e-b9cb-516537a401b0",
            "port": "bb9f2f06-9bd9-4650-acb4-8c3920e14503"
          }
        }
      ]
    }
  },
  "dependencies": {
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
    "d7c2e5b25c0dbff0804d68d38c132f56555a898c": {
      "package": {
        "name": "ov7670_rgb_yuv",
        "version": "1.1",
        "description": "Configures ov7670 in either RGB444 or YUV and shows it",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22348.116%22%20height=%22333.816%22%20viewBox=%220%200%2092.105598%2088.322113%22%3E%3Cg%20transform=%22translate(4.928%20-3.544)%22%3E%3Cimage%20width=%2274.083%22%20height=%2274.083%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20x=%22-1.229%22%20y=%228.953%22%20transform=%22translate(-3.699%208.83)%22/%3E%3Crect%20width=%2239.376%22%20height=%2246.536%22%20x=%2246.023%22%20y=%2217.648%22%20ry=%221.388%22%20transform=%22translate(-3.699%208.83)%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2243.755%22%20y=%224.403%22%20transform=%22translate(-3.699%208.83)%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2243.755%22%20y=%224.403%22%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2211.289%22%20font-family=%22Gill%20Sans%22%3EImage%20Processing%3C/tspan%3E%3C/text%3E%3Cimage%20y=%2215.511%22%20x=%2240.068%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AAAABHNCSVQICAgIfAhkiAAAG+VJREFU%20eJzt3Xu8f/lA7/HXmDHjlnGLXDrkNieJikNRoYQoPU6d9MijkFxySSmSCOUSuolyLcJUOEedXHMp%20HAolko5Gbl3cjdvIfcbv/LHmd2aMGb/f3mvtvfb3+3k+H4/9x/jt9fm+9/b9rvXea63P+hQAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADOGYtQPsk/NVP1L9ePUt1aUb52cH4Mg+%20VL2xemb1rOqL68bZeyMcBC9XPbf61rWDALAR/rb6oeo9awfZS9teAC5Rva662tpBANgo766uV526%20dpC9cr61A+yxx+TgD8DOfV31u2uH2EvbfAbgitW72v6SA8DeOFSdVL197SB7YZsPjrdqu38+APbW%20MU3Hkq20zQfIq64dAICNt7XHkm0uABdeOwAAG++r1g6wV7a5AAAA50EBAIABKQAAMCAFAAAGpAAA%20wIAUAAAY0HFrBziA7lo9ee0QACzqLtWT1g5xkDgDAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAak%20AADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoA%20AAxIAQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADA%20gBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxI%20AQCAASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQA%20ABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwoOPWDsDijquuVV2+usDK%20WZb22eq91ZurM1bOAmfnc8fGUQC2x4nV/as7V5dYOcte+0j15OqR1WkrZ2FsPndwAD2pOrSLr7us%20EXamq1Rva3c/7yZ/nVJdeYHfH+yGz91muUu7+3mfvkbY/eAegM13YvWi6uprB1nBSU0/+0XXDsJw%20fO587jaeArD57t+YO6HDTqrut3YIhuNz53O38RSAzXZsdae1QxwAd839LOwfn7uJz92GUwA227Wr%20S64d4gC4ZHXNtUMwDJ+7ic/dhlMANtvl1g5wgPhdsF8uu3aAA+QKawdg9xSAzXb82gEOkI+vHYBh%20mAJ3FvugDaYAsA2+UL117RAM45+q09cOAXMpAGyDF+cMAPvnY9VfrB0C5lIA2HSfqx64dgiG88Cm%209x5sLAWATXZ603Sst6wdhOG8uenJcp6Nz8ZSANhUb6++tzp57SAM6xlN78F3rB0EdsNDHMb03upv%201g6xC6dX76v+qnpZ081/sKaXVdeoblbdpGk66ibuV2/QtJIhA9nENyrzvb66zdohYEt8oXrhmV+b%206rnVD64dgv3lEgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAYASH1g5w0CgAADAgBQAABqQAAMCAFAAA%20GJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIAB%20KQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAAR23dgDYhQtWN6++pbp0dcy6cRjU%20oepD1Rurl1afXjcO7IwCwKa5U/XwpgM/HBQfqh5Q/f7aQeBouQSw2T6/z9ut7THVU3Lw5+C5dNN7%2083fWDrJLo+1LSAHYdO/b5XbvXTTF/rhT9TNrh4AjuFd157VD7MJu9yXvWTQF+0oB2Gxvrk7dxXZ/%20uXSQPXahptP+sAkeXl147RA79IpdbPOR6i1LB2H/KACb7YzqyTvc5u3Vy/cgy166WU77szm+uuk9%20u0leWr1zh9s8sWkfxIZSADbfo6pTjvJ7z6juXn1h7+LsieusHQB26LprB9ihzzftG472gH5K076H%20DaYAbL7Tqlt15BLwueoObd5f/1WXWjsA7NAmnrF6afUTTfuKr+SUpn3OJ/c8EXtKAdgO76qu13Tt%208SPn+LcvVM9r+ovk5H3OtRTvUzbNpr5nn9m0L3l+X36m8NSmfcz1mvY5bDjPAdgen6weWD24ulZ1%20ueoT1T9VH18xF7BZ/rG6dXXx6huqE5tmDr0l1/y3igKwfc6o3nTmF8Bufax6zdoh2DubepoKAJhB%20AQCAASkAADAg9wCwzZ5R/fXaIdhoN6xut3YI2AsKANvsVdVT1w7BRjs9BYAt5RIAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABjQcWsHAIZy%20oeq61QnVp6t/qD61aiIYlDMAwH742uoPqo9Vr6peWr3mzP/+w+qKqyWDQSkAwF67cfXG6o7V8ef4%20t/NXtz/z32+yv7FgbAoAsJduVb24utQRvu8S1Z9VX7/niYBKAQD2zq2r51YXOMrvP7H646azAsAe%20UwCAvfCjTQf/E3a43TdV910+DnBOCgCwtDtXJ7f7WUYPqq65XBzg3CgAwJLuXj2pefuWE6pn5FIA%207CkFAFjK/arfq45ZYKxvru69wDjAeVAAgCU8pHrkwmP+avUNC48JnEkBAOY4pvqt6sF7MPYJTQ8P%20OnYPxobhKQDAbh1TPba9PVV//epn9nB8GJYCAOzGsdXTqnvuw2s9PA8IgsUpAMBOHV89q+kRvvvh%20ArkUAItTAICdOKF6TvU/9vl1v626xz6/Jmw1BQA4WheuXlD9wEqv/2vVVVd6bdg6CgBwNE5sWsL3%20pitmuFDT0sH2W7AAHyTgSC5evaS6wdpBqhtWP7V2CNgGCgDwlVymelXTdLwlnF69ZeYYj6quND8K%20jE0BAM7LZau/rL5xofE+X/1IdYvqYzPGuUj11JZ55DAMSwEAzs2Vqle33KN4P13duvrT6n3VfWaO%20d5OmVQeBXVIAYDk3r57X9Nftoaa/eF9f/XTTDWyb4r9Wr6mustB4n6xu1XQfwWFPO8d/78avV/9l%205hgwLAUA5rtw9UfVX1TfX13szP/9/NX1mh6X+8Y2Y2Gba1WvrC6/0Hgfr2525phnd6i6S3XajLEv%20Wj05lwJgVxQAmOfEpr9kb3uE7zup6SB45b0ONMN1mq75X2ah8T7adPB/3Xn8+79X9535GjevfmLm%20GDAkBQB275JNB8wbHuX3X6o6uYP5SNtvr/6qKeMS3l99R/V3R/i+p1Qvn/lav9VyZyxgGAoA7M5l%20mg6Y19nhdt/WwVvd7kbVi5pOqS/h388c861H8b2Hqjs13SewWyc2XQoAdkABgJ07PD3uWrvc/mHV%201ZaLM8stqxdXX7XQeO9uukP/7TvY5t+qX5z5uresbjdzDBiKAgA7c6XmT4+7YPX01r8UcHha3gUX%20Gu+UptP+79rFtk+oXjbz9R9bXWHmGDAMBQCO3klNB/8lpsetvbrdbavnNq3ut4R/qL6zeu8utz88%20K+A/Z2Q4salIAEdBAYCjc43qFS37F+Zaq9vdpXpmddxC472haZGgD88c51+rB8wc4/s68owMIAUA%20jsZ1mp6Hf9mFx71Q013w+zmP/R7VE1vus//q6rurjyw03u9W/2fmGI+tvmaBLLDVFAD4ypaeHndO%20N67utkdjn9P9mg6wSxWOVzTdfDfnYT7n9MXqDtWnZoxxyepJi6SBLaYAwHm7cdMd8ktNjzsvj265%20x+6el1+pHrngeC9oOvjPuWZ/Xt5dPWjmGLeubrNAFrbHobUDHDQKAJy7WzUd/C+yD6914fbukbbH%20VL/d/APq2T27+sHqswuOeU6PaVqPYI7fa7mnGsLWUQDgy92m+rPqAvv4mt/V8qvbHVM9rvrZBcc8%20ufqx6gsLjnluvtj0gKDPzBjjUk33AwDnQgGAL3XbpoV9zr/Cay+5ut2xTSvuLTnV8InV7avTFxzz%20K3lb9ZCZY9ym+qH5UWD7KABwlru27PS4nbpo9dTmXwo4vuk0/e1nJzrLo5tuVvzigmMejd+o/nrm%20GE+oLr1AFtgqCgBM7tF0oFj7M/HdzVvd7oTqOS37V++jmmYQrOHwpYA59xt8ddN9EMDZrL2zg4Pg%20l1t2etycKWxVv9nuVre7SNONiz8w8/UPO1Tdp/nP6Z/rlOqhM8e4bcv9XmArKACM7leqX11wvOc1%20LRL08RljXKydr253YvWSpoV4lnCo6ebB31xovLke3ZGXFj6SJ1SXWCALbAUFgFHtxfS4P2469f6u%209nd1u4tXL61uMPM1Dzuj+skO1h30pzfd0/C5GWNcNpcC4P9TABjRsU2P4F1yetyTqx/vrDvkn9x0%20UJ7jsR35UsBlqldW15v5Woed3vQkvqctNN6S/rl6xMwxbpdLAVApAIzn2KY77X9ywTF/r/qpvvQO%20+cOr231yxrgnNk29Oy9f2/Tc/GvNeI2z+3zTtLmTFxpvLzyi+vuZYzy+6awJDE0BYCTHN90hf7Sn%201o/Go6p7du6PGf236v4zx/++6kfP5X+/UtOz+K8+c/zDPl19f9MDkA6y05vK25wHEV2uaXohDE0B%20YBQXarpB7wcXHPPBHfla/+Orl898ncf1pY+0PalpFb6l1g/4z6aD/9xLFvvlzc1f1+CO1S0WyAIb%20SwFgBBduOvjffKHxDlX37uhmDxy+FDBn0ZxLdtasgGs0/eV/hRnjnd3Hq+9pWvFwkzy0etPMMX6/%20acYFDEkBYNtdrOkv8O9eaLwvNj2z/zE72Obd1QNnvu6tmw56r266m30JH2pa8fB1C423n77Q9P/D%20nMcSX77pEg4MSQFgm128aW78ty403hlNp47/YBfbPq7phr05Hthy89g/0FSK3rzQeGv4+6b1E+a4%20c3WzBbLAxlEA2Ga/1nLT4z5f/XD19F1uf/jMwZzV7Zbyr9UNq39aOccSfqV664ztj6me1P4s+wwH%20igLANltqRb/PNR38594h/y9Njx1e079U39n0sKJt8LmmtRPOmDHGlXIpgAEpAPCVfappKt7zFhrv%20t6vXLDTWTv1z06OC/2Ol198rf9v8RxbfrbrpAllgYygAcN4+3nR9eO40vrM7vLrdfl8KeGPTX/7v%202+fX3S8Pav6lgCfnUgADUQDg3H2sadrg3+zB2G9runa9X/6uaarfqfv4mvvtc00PCJpzKeDrqocv%20EwcOPgUAvtwHqxs1nVreK7/R/NXtjsarmu72/+g+vNbaXlf9zswx7tl0pgS2ngIAX+rfq++o3rLH%20r3NG0+p2n93D13hx9b3NW49g0zywevuM7c/XtBDShZeJAweXAgBn+demm+TmHEB24p+rh+3R2M+v%20/nsHY9rhfvpMU7H64pG+8Su4ckf3lEfYaAoATE6pvr39nx73qOoNC4/5J01rHnxu4XE3xWur3505%20xs82vR9gaykAUP/QdN33vSu89uHV7T6/0HhPqX6seY/I3Qb3r94xY/vzNa0VcIFl4sDBowAwutdX%2031V9eMUM/9i0zv1cf1LdtXmnv7fFp5uevHhuyzQfrZOq+ywTBw4eBYCRvbppnv/H1g7SNP3sjTPH%20uEHmsZ/dK6snzBzj6xbIAQeSAsCoXlHdsjpt7SBnOr1poaEvzBjjinmk7Tn9QvXOtUPAQaQAMKI/%20b5oe959rBzmHNzf/AP5TTTMZmHyq6Xcy51IAbCUFgNE8u2lhn4N6h/xDm/cMgmOqp+ZSwNm9vOnm%20SOBsFABGcnLTHfJzTrPvtc83zWOfk/FKLXNT4Ta5b9NDnoAzKQCM4olNB9ZNmB73puavbnePpscZ%20Mzmt6R4LlwLgTAoAI/j1puVeN2l63EOq/ztj+8OPtHUp4Cx/2fQ7AVIA2H6ParoTfNMstbrdQ5eJ%20szV+rvqPtUPAQaAAsM1+s/rFtUPM8PrqMTPHuFd1wwWybItPNJ0NguEpAGyzt64dYAEPaN7Pcb6m%20WQEXXCbOVnhh9Yy1Q8DaFAA42D5X3al5lwKuntXtzulerbP2AxwYCgAcfK+tHjdzjJ/L6nZn94mm%20BwTBsBQA2AwPqN4+Y3ur2325F1R/vHYIWIsCAJvh09UdmjeV8aTqwYuk2R73qj64dghYgwIAm+Nv%20qsfPHOM+1X9bIMu2+Eh1l7VDwBoUANgs92ve6nbHVU/PpYCze171nLVDwH5TAGCzfLq6c/Meafv1%20TfcUcJZ7VB9aOwTsJwUANs8rqifNHOMXq+sukGVbnNp0PwAMQwGAzXSf6l0ztj+u+oPq+GXibIVn%20V89dOwTsFwUANtOnmn8p4FrVLy0TZ2vcrfrw2iFgPygAsLn+qumv+DkeUH3LAlm2xYere68dAvaD%20AgCb7eebt7rdcU1rBZx/mThb4Y+qP1s7BOw1BQA222nVHZt3KeDaTdMLOcs9qo+uHQL2kgIAm+/l%20TXP75/jl6hsXyLIt3t+0fgJsLQUAtsPPVu+Zsf3xTSXCpYCzPL3687VDwF5RAGA7LLG63Tc33VPA%20WZ63dgDYKwoAbI8XVifPHOMh1TfMjwIcdAoAbJefrt47Y/sTmqYWHrtMHOCgUgBgu3y86WE2c1w/%20c+Fh6ykAsH2eXz1r5hgPq66xQBbggFIAYDvds/rgjO1dCoAtpwDAdvpI0/0Ac3zrAmMAB5QCANvr%20f1b/a+YYD6+utkAW4IBRAGC73a360IztL1T9YfYVsHV8qGG7ndr0lMA5blDdfYEswAGiAMD2+5Pq%20T2eO8ajqqgtkAQ4IBQDGMHd1uwtVT6mOWSYOsDYFAMbwgeZfCrhx89cbAA4IBQDG8czqf88c49er%20Ky+QBViZAgBjuUf1sRnbXziXAmArKAAwlvc1f8nf76rutEAWYEUKAIznadWLZ47xG9V/WSALsBIF%20AMZ056aVA3frok1rBbgUABtKAYAxvbf6hZlj3LS6w/wowBoUABjX71cvmTnGb1dXWCALsM8UABjX%20oequ1SdnjHFi9cRl4gD76bi1A8AeulHe40fjtdXNZmx/q+rR1TuWiXOg3HDtALBX7BzZZrc784u9%20d9+1AwA74xIAAAxIAQCAASkAADAg9wBsn+Oqa1WXrT5RvbV5y8ACY7pEdY2mmR7vr95cnbFqIhbl%20DMD2OLF6ZPXB6u+rF1SvPvO/n19de71owAb5pqb9xweb9iEvaNqnfLB6RNNTINkCCsB2uEr1t9X9%20mlr72R1XfV/1+jb3jvgvrh0AdmhT37O3b9pX3KovP0N8yer+TfsaS0JvAQVg851Yvai6+hG+74Tq%20qdX37Hmi5X147QCwQx9aO8Au3LxpfYfjj/B9JzXtc5wJ2HAKwOa7f0c++B92bPX46vx7F2dPvGHt%20ALBDf7d2gB06vmnfcOxRfv9JTWcc2WAKwGY7tp2vy37V5j31bQ0va7r+CJvgQ9VL1w6xQ7do56f1%2075obyTeaArDZrt10XW6nbrJ0kD32meqX1g4BR+mXqk+vHWKHbryLbS5ZXXPhHOwjBWCzXW6X211+%200RT746nVb60dAo7gMU3X0TfNZXe5nZUgN5gCsNmOdLPO0tut7eerO+ZyAAfPB5rem/deO8gujbYv%20Iddv2DxPq55V3bS6bnWZ6phVEzGqQ03X+9/QdJ/KZ9aNAzujALCJPtP0cKPnrx0EYFO5BAAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAgBQAA%20BqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAAEZwaO0AB40CAAAD%20UgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABKQAAMCAF%20AAAGpAAAwIAUAAAYkAIAAANSAABgQMetHYBVXL96ztohduH06v3VK6uXVJ9fNQ1Mjq9uXt24umyb%20uV+9/toB2H+b+EZlvstXP7x2iBl+rnpndffqpStnYWw3rx5fXXntILBTLgGwqa5Svaj68bWDMKzb%20Vy/MwZ8NpQCwyY6tnlJda+0gDOebqic3vQdhIykAbLoTqoetHYLhPKzp2j9sLAWAbXCL6mJrh2AY%20l2i69g8bTQFgG5y/uubaIRjGNXMDNVtAAdhspsGd5aJrB2AYF1k7wAFiH7TBFIDN9r61Axwgfhfs%20lw+sHeAAec/aAdg9BWCzvbk6de0QB8BHqresHYJh+NxNfO42nAKw2c5omoo0uic2/S5gP5zRNP10%20dD53G04B2HyPqk5ZO8SKTmn6HcB+emT1trVDrMjnbgsoAJvvtOpWjVkCTmn62T+5dhCGc1p1y8Ys%20AT53W0IB2A7vqq5XPbzputy2O7XpZ71e088Oazj8uXtEY9wT4HO3Zcxl3R6frB5YPbjp0bhXqC6w%20aqLlfbb6j6Ybj1x75CA4rXpA9aB87tgwCsD2OaN605lfwP7wuWPjuAQAAANSAABgQAoAAAxIAQCA%20ASkAADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQ%20AgAAA1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkA%20ADAgBQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAA%20A1IAAGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAADAg%20BQAABqQAAMCAFAAAGJACAAADUgAAYEAKAAAMSAEAgAEpAAAwIAUAAAakAADAgBQAABiQAgAAA1IA%20AGBACgAADEgBAIABKQAAMCAFAAAGpAAAwIAUAAAYkAIAAANSAABgQAoAAAxIAQCAASkAAIzg0NoB%20Dprj1g5wAD3pzC8A2FrOAADAgBQAABiQAgAAA1IAAGBACgAADEgBAIABbXMB+OTaAQDYeKetHWCv%20bHMBeNfaAQDYeO9cO8BeOWbtAHvoik0lYJtLDgB751B19eodawfZC9t8cPy36o/WDgHAxnpWW3rw%20r+0+A1B1iep11dXWDgLARnlXdf3q1LWD7JVtPgNQ9dHqxtVrV84BwOZ4fXWjtvjgX9t/BuCw81U/%20XP1YdZ3qaxrnZwfgKztUfbB6Y3Vy9ezqi6smAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAACW8v8AxyHd8amiKS4AAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2250.808%22%20width=%2250.808%22%20transform=%22translate(-3.699%208.83)%22/%3E%3Cpath%20d=%22M76.568%2027.543a6.92%205.727%200%200%201-7.05%205.616%206.92%205.727%200%200%201-6.79-5.832%206.92%205.727%200%200%201%207.045-5.621%206.92%205.727%200%200%201%206.795%205.827%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Cimage%20y=%2217.648%22%20x=%2258.928%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAAA3NCSVQICAjb4U/gAAAACXBIWXMA%20AbrqAAG66gHB8Tn1AAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAArhQTFRF%20////RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERE%20REREREREREREREREZ3VqbAAAAOd0Uk5TAAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8g%20ISIjJCUnKCkqKywtLi8wMTI0NTY3ODs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlRVV1hZW1xdXl9g%20YWNlZmhpamtsbW5vcHFyc3R1dnd5ent8fX5/gIGCg4SFhoeIiYyNjo+QkZKTlJWWmJmam5ydnqCh%20oqSlpqeoqaqrrK6vsLGys7S4ubq8vb6/wMLDxMXGx8nKy8zNzs/Q0dLT1NXW19jZ2tzd3t/g4eLj%205OXm5+jp6uvs7e7v8PHy8/T19vf4+fr7/P3+fB0t5wAAIL1JREFUeNrtnf1DVUX+xwcUBBHvwiUI%20n1ZsUXkIbMFt1bUlrXYxClhxdb8gsX5JLXfTIEDchF0fulFafYNQd4XFtNowMR82EO3CUklUmviw%20Fo8J997zb3zBpwC5954z85lz5pzzef+qnPnMvF/3M3Nm5swQIrZiJEbFEH3LW/2IwVXECkARAqBr%202VkBsCMAehZzD6D7PsDkABSxA1CEAJi5B9B9H2BuAGIlAMUiAGbuAfTeB5gbADsEAHYEwNQ9gM77%20AFMDUAQDQBECoFO1wADQggCYugcQvg8I5AVAIPYAeugDihpD+QAQ2qjzSbAWKABaBMfcEwH0AIQ2%206nz4A9YDCN0H3ExzHgigBmDYf30TUAwHQLHo3VxTKDQAoU26fwVqgQOgRXD/hwiwwgJgbdL9SzBg%20DyBsHzBimHvGCgmA9Yz+p0GKIQEoFt3/cQgIejSntPKot5rVv/liVown/3VLQAskAC3C+z+GAEtW%20TZ/86p3MCXbvv04JiJNAFaeDaY7msDv/NKfqhsL69ZRZ7j44rNkIk+HFsAAUi+//XQIibAMUNbz6%20rJ87/3VJQAssAC068F+Szg4TsLaHso6fZ9z0/6whFsSAewDh+gA309xnw/z3MFTyxMNu/NcfAcXQ%20ABTrwf8hAk6wVbPmrEEWxVuhAWjVhf88VWTqHkCoPkAT//VFQDF89YvN7r+uCGiFr32r6f3XEQFx%20PGofZ3r/9UNACY/Kl6D/uiGglUfdW9F/vRAQx6fucei/Tggo4VP1EvSfPwHpr/5M0B4ApA/42av/%20w/DXgY0iANDIc7d4+qDkPPgLxofE86p6PGNgvzjolKStDA8IFYAAj5vQAfwfVsOTPgL2AIx9gM+T%20DbeeUuWvZwLU8H9IbWsDaB8SsvprXpX/JvcB2qgC1rbdfczREAYCmrT1v0kd/4fUWWileER4zpEB%20rg1w/vV0CvushZ2jBhNReiVAPf+H1Puqwt/b9HX1DhUawXmydMlEJXE98GrvmEd0JtM309gNe2rq%20jFVF/4ebWsF4MOq5j13qtcSV1x+ZoGTkN1Z9T+mRALX9H9YxWePBuZs/Ub01OiuW+MoY+R1zk0Y2%206I8ALfwf0n+8jQfnFH+q0S/i21cSvIz8/uP+j3f70hPQrEVtm7Xxf/i3VuC+6IlPv+eSNNSHqW4z%20lLWg0+OfHgqibq4wDQj4cdO52v4Pjwdt448HZ229qPnESFveuEY+YOv19pen76cn4Kza1Tyrpf83%20x4MLx/6Vb+phpwhTo9J/t08fG9vCg3JC+zJGNwRo7f/N8eCKUdn28XOSMOrfOnnkyG/FMZl/990j%20OiFABP9HjwcXfCAJpa8yZY38xmpgDXWz1SiKb7Bh5wvZqQujgoKiFqZmv7CzYVDRn5/wF8H/H8eD%20sypdkmg6+qCckR/Y4urDCspof+0py9i/tzz1WruCR+wRw/+b48E5lrJ+SUA5bKFzvI/87lEl3Y9L%209gcgXaXR7p4RXdolO8y1gvg/PB78ThJU31MNSj/8CUW7Zci1f5vH2fvQbXIR6IkQxX/jqWW24nbz%20+1zWk7tf9jp5Y325W16UNvSfmy4lKW24Z2U999R0WWtop+SNV+eg/9zU+6SyhrNclfPUt2XuqQh4%20W1aQVeg/PznzFbVcmZwxqYLlpg1yltFvWNB/jtqlYG0oWMYRENdTlHiRcl1GiFnoP0/9c7LspsuR%208ftPUeZGiowcUIP+c9Up2S9aJ70/TPF2gw3en9kXhP5zVft8eW0n4zLEt5U7ImMk+Cj6z1fXl8pq%20vCzvyYRiT3WA97fBHPSfs278Xk7rveh1/mc6jSnTvc4IlaL/3FUoo/ne9PaQl+lsednrsgX6z1//%205+e1/eq9zf9Tbt6zelsXOIr+q6B/jZ5voXjCNlpntlEUhv6Dy/5TNgC6qL/eCe1SAQD036u+/TkT%20AAxDtVL+AKD/MtSTygJAND0A0dwBQP9lyfm/9AC0s4zP2jkDgP7L1Q5fWgBeYwHgNb4AoP/yVRNI%20CcBTLAA8xRUA9F+JToZTATDItGpvGeQIAPqvTOfn0QDQwDZJ08APAPRfqf67hAKAnWwA7OQGAPqv%20XDeylAPwAhsAL/ACAP2nUoFiALLZAMjmBAD6T6k3lP5BKhsAqXwAQP9ptV/pHyxkA2AhFwDQf+op%20wRilfxHFBkAUDwDQf/oEoHgMwLhxM4gHADvQSOoEYAgA7u9DK2kTgGIAROwCMAXQJwDFAAg5CMQU%20QJ0AFAMg5msgpgDaBGCQiSBMAbQJwChTwZgCKBOAURaDMAVQJgDDLAdjCqBLAIbZEIIpgC4BGGdL%202N/QUpoEYJxNoZgCqBKAgbaFYwqgSQAG+jAEUwBNAjDSp2GYAigSgJE+DsUUQJEADPV5uCAp4Ad7%20bdmGnJWpS5Pmzwzx8wuZOT9paerKnA1ltfYfhEsA4+motxTA64CIesaTISK0TgHtR3avWx7l4URG%2036jl63YfaRcoAYynSm9/zuuImDdZzwbRMAW4ztkyZJ/DF5FhO+cSNgF4H6rxOiTqRaLPFOBs3JGm%20OCta03Y0OoVMADIOCuV0TBz7WbF/Vb8xBw5lUs+OWzIPDYiXAMij3h/B56DIGKK3FOBqyGW87tKa%202+ASLAGQIBmtyOOo2JOE6CsF2DfPBgiZzN5sFyoByLowjMdh0RAHhaqXAm7sTSRgStx7Q5wEIOes%20WB7HxfcEE/2kgO7yaQRU08q7hUkAxCIHR/ALI8pAGjKiV4U2vFIQQsAVUnBFkARASJWsJ8FeGXMV%206MIQ/imgI38y4aLJ+R1CJABC5sh7OQG9NOpZoFbknQIu5/gRbvLLuSxCAiDEJrMnhLs27nOwZuWa%20Ahy2EMJVITaH9glg6GfUI/N5YBdHZoA1Ic8UcDyRcFfice0TACFrZT8R5urYE4AtWM6r8S6t8SEq%20yGfNJa0TwJD2KFkEY788+mHABuSUAgZ3WohKsuwc1DgBEOJ/QlnrsF0fD3thGJcU0J5MVFRyu8YJ%20gISdVXN28mwYZOuFc0gBBy1EVVkOapsA1PUfmgDwFNCfR1RXXr+GCUBt/4EJgE4BbQlEAyW0QTfy%2093LTWFiz+ovUzWHCpoDKKUQTTamEbmSZ0+1WDfwfIsAqZgoYyCaaKRt4v0j/LFn+n5E00RlAAv4F%20FlXPcqKhlvfAtnGlwP5DEvBLuKn/JKKpkmAXB1wLBPYfjgDfJqiIzkcTjRV9HrSJP/BWXmiTpKGa%20QkEaLReMyEiiuSJhf5GPi+w/EAEhV4GiqZ9KBNDUesgWPufr0f9GSWM1AhBgA4qldhIRQpNqIVs4%20VWj/IQh4EGhFvV4Q/4cIgMwBh92XEyiA/0MEBDI214dA/f9UIoymAo4DnB7mAopEAKCIsbEWwoRx%20PpIIpEjAd4GtRGgCWP0nB2De/6OJUIqGmw+4OFFkApj9/ynICKAniQimJLg5waeJuAQw+w+zDjSw%20nAin5WDrAu8RYQlg9z/4e4g4somAyoZqZdccUQlg95+sV2vJRAOBrQ4XEzEJAPB/AsRouW2KmABM%20gdoh8ikRkgAA/8kTAHH0JxBBlQC1S2yuiARA+E/eBggkjwirPKC23kxoCThbw1byibNc/ff/jr1x%20DhKBBbRX+BNCScDZMPLwCYaC9/i7224K4r/yK4nuVbtFZAAs7TAERNERcGvrbsbntLMra4m7Dccw%20/sv8rt2TBpOJ0EqG+WboOUJDwJ2Nu37P0iy4D9hunaM33pZjIP8DuphbZicRXDtBAPiYUBAwYuO2%20pUzpxOSNqruzD/cSAOQ/SWNumEsW0QGwgHw56pqunIDRG/aCc07KL66vJmtkw47ddgjlP9nH3DBr%20iPBaA5IC1hGlBNy7YTMm68U3ve5UOFpZmvPo2AuHRxMA5r8/8zlLx33EB8AH5PwAeecyF3ny/5a8%20FTT+X40kAMx/8ivWVnEkEh0oEWK90xGujIAmdxu26QAg1iZ4/8lfWFvFRnQhG0QKkHkq420C3G/W%20pQTg7vZjQP/Jv1k3gcCd/xMUvWTlxvLq+rbu7rb66vKNK5dEB4E9PARic8gRooAADxs1aQG4vQEV%200n+rU50fhVdFb2oYJxRnwyaoXUY5AAAMhMgnwNNGXWoAbhIA6T/JZGySDoiDynySt3k4+de+LRli%20mOkHcZ7garmlFXncqE0PwBABoP6TNxlbJJ89hJSKC95KuVCRwl5OPgAAX5fEyyzN4zZtBgBIIKj/%205Cu2BrnCfP7nIpnLJCcWsZY0GeZU2daSOOZWZwEAVvMYW6OAsfzYd+WX9W4sY2EFUIvwzAyIAsCM%20zENsLdHN9gow4y1FQ1DnWzPYXgQAzxZvLY7TNwC+iX+sZh8VlTP5UaZ4r05/GRNxsIfgMDCgMQBT%20fv3S+10QTXCD5fz/x67RFHntMYYip0HfMNFCyYCGAMzI3P0J2MnKexkCWU8ZhWM9Q6F74TfltRTH%206gWACSBZf6ToVwH836Av9Q1/+hUBiYeUM6A+AFNSgLL+qBka6nDu+4il3I/uoy6Y101TLUWx4gIw%2083evNHI5T38zbUTxjJv02uNpS94scZMSBlQDYCjr7/uKV41dsymjWsH8Ota9grLo2VzvG7TLZUAV%20AIJ5ZP2ROkbrP8Dlr05aAhokvrIXxYgAALesP1K5lPkfZDqmm7IXyJW4SwYD3AGQVNAA3fmE97XD%20FN9ONxK0qnLvMNFaalTyEN3730dQ5X9E9zZ4CAEAUiZVZG/ABfCGJhsgEIA7wzCqjwHWQ4ZANSdo%20cSIAIGqkmv8HHZk6qNYFGhEAEO2gWf+7BhvDNZq1wR0IAIjSKMIqgw6C5u7sNAQAZBqQ4iVwBviN%20Tv0UO0SsLgQAQOcoonoLPoy3KMI4hwAAiOJ7oFgO428nxWK8DQEAEMW91e/yiONd5XFkIAAAilAc%200yI+gSjfLR6BAADMxCuP6QSfSCiuUG9HAJh1RHFIKbxCSVEcyhEEgFm7FYdUwSuUCsWh7EYAmLVO%20aUQ+F3iFckHxl6PrEABmKT4ZPplfLIrPqFuOADArSmlE2/jFsk1pLFEIAKt+8FUakZ1fMIp3p/v+%20gACo3ebRPKOJFohGkwBQqzSgTTyj2aQ0mloEQO1lWK67sRs0X5Y2HQAbFMYTxHUfllPpWWIbEABG%205Yg0BFA+CMhBABi1UmE8S/iGs0RhOCsRAEalitXiSnlMRQAYtVRhPBv5hrNRYThLEQBGKb0jtpxv%20OEqPKkpCABg1X2E81XzDqVYYznwEgFEzFcZTzzeceoXhzEQAGKX0g4w2vuG0KQwnBAFglNITorv5%20htOtMBw/BAABQACwC0AAcBCIAOBrIAKAE0EIAE4FIwC4GIQA8GtxXA7GDSE8hRtC1AYAt4SZHADc%20FGpyAHBbuMkBwA9DTA4AfhpmcgDw41CzA4Cfh5scADwgwuQA4BExJgcAD4kyOQB4TJzJAcCDIs0O%20AB4Va3IA8LBokwOAx8WbHAC8MMLkAOCVMWYHAC+NMjkAeG2cyQHAiyNNDgBeHWt2APDyaJMDgNfH%20CwxATJGdfy1z6WKLBzksoDuervRc/u1iL4ohAog/A8coI1sBMAxzrqAsvMEc7t+efOfLgGs2LQHM%20OaCb1v/ZLr7uxxLBFFvUwq++m2mjimccB7TH05a8mV9rtIjnPm8G7NQx3cf0LvDRfdQF283m/m0G%20ivkwkEgdkT/DfMAb/tTFJvJxv1ho9zkysJchoPWUs8KO9QyF7jWp+7cUB87AjWkM4TxGtTJ07TGG%20IqfdAHc/juhKccWtoA1QzhJMSJni/QH9ZSEsJcIeVdSqN/c5MNDN5AeZ8ZaiKQHnWzOYigvpNr37%20txkoAWOggHVoomCn6LusnW0BmPslOnYfloErk1kjWSTze4ETi1hLmnwF3R81G1PyNUBz5LMHklLh%209bvBCxUp7OXkA1T3m5J4YhytBmiRDj+AQHySt3mYobFvS/YBKMSvQ7sFMEEVArE0mgMUTPSmhnFG%20hM6GTdFABYAcDfaAoQAA+UrycghYOEHRS1ZuLK+ub+vubquvLt+4ckl0EBztlwEqe95Y/sP8KGz6%20qKsNoq6vGwyAcIhNuo5EPVQ1EWQ/crrBAIA5x/+4j/gV9TkOUVNniNEAgDksZY34FV0DUtGTRvOf%20TAfZIHPJIno9LZdAACg1HADkY5CG2Sl6NXfCTAEvMR4Az4E0zGCy2LVMHoSZ955oPACAzkxsF7oT%20sLTD1PJ1YkB9AtM2B0Wu40GgRcBHjAgA1DbZPHGrmAdUxc4JRgRgLlDr9CeIWsMEqHNJKogh9SlQ%2087RNEbN+U8BuLV1iTACKodqnUsz6VULV71tfYwIwB+xjqWwRq5cNtgvwFWJQvQfVQgPLxavccriv%20wROMCsDTYE3UkyRa3ZJ6wCr3oVH9JxMvgjXS5WixqhZ9Gaxqii9L1ZG2wrXS+UiRKhZ5Hq5mbT7G%20BWAW4LlZZ6aKU6+pZwA/A8ojBtZhwIaqnyRKrSbVA1brv0FGBgD0Mu1aQQiYBHo75HYj+098Qc/P%20rheiF5gK+fuX+qcbGgDyOGRjSWcEGAlGngGt0lZicH0A2lznNX8bjD4PWqGvJhsdgAWwh2dd1nhG%20KOkyaHUoT8XVlSphW6xH01nh5T2wtTlqfP/JLODLPAY0XBnKBj4N1vGgCQCAv8yjUqP9AVMqoWti%20M4P/xPIddLu1abJ8ltAGXY/vQ00BwBz4exT6NZg+zQO/l0pyxpgCAJvEQQdV3i1uOcijFvvN4L+1%20l0fTSe2qfjGS3M6lEqZIAQUSHw3uVC0JWHYOcqqECVJAQKfES5fWqLKS7rPmErcqmCAFrJU46rgK%20J0gkHudZA8OnAJ//8Gw+yWHjfLBCiM3BtQKGTwErJM66nOPHL3q/nMu84zd6CjgmcVdHPqcVtcn5%20HfyjN3gKWCipoSsFHDqCkIIrqgRv7BRwUFJH3eXTYAOfVt6tUuiGTgEPOCW1dGMv4BtB4t4bqgVu%206BRgk9SUffNsiKBnb7arGraBUwCnWWD3cjXkWhlDzm1wqRy0gVNAgaS+Bg5lUk8RWzIPDWgQsmFT%20AMdZYM8N2rgjTXEisKbtaHRqE69hU8BaSTu5ztkyIuQGGpFhO+fSMFiDpgDOs8ByloyP7F63PMrD%208Ru+UcvX7T7SrnWcBk0BT0pi6Ad7bdmGnJWpS5Pmzwzx8wuZOT9paerKnA1ltfYfBAnRmCngmIQC%20TwEx3p4kDkq/QFs5pIAib08qMt0ssLlSgNc5Krso/j/gRFfhU0Cs9yeJcuH0q2gqhxRQ5P1BgvQB%20qs8CmyMFyLikvUUMAArRUg4pIFbOg4ToA7SaBTZ4CpB1+G6x2WeBDZwCWuQ8R4Q+wKcN/eSQAmLl%20PUiAPuBJtJNHCpB5/LoAfUADuskjBbTIe472fQDOAnNJAXFynxOHs8CGTAGyL+DQug/4Gc4Cc0kB%20rXIf04qzwEZMAXHyn6NxH5A+iFZySAEl8h9TQpAA46WAVvmP0boPQAI4pIB4JY+JRwJ0qgPuVlfz%20mpU8pjlP/r74ZX9GAoTRP8a9RXxSep3iD1YG6tLlXa/wJwefLQRIAJD/Pov3XKd72vU9i70eojR5%20//D/RAKE9X9e6ZcsT/yydJ5Hk6JudyxIgJD+h+efZn/q6fxwtxY9eu3O/0ICxPN/2WGg9hs8vGx8%20gzaNOAALCRDL/wmZjZAPb8yccG/3v2/Uf0ECBPI/4JkvoJ//xTMBY7r/sXcfIQGi+B+8hcuOys4t%20wSOcSbl6z39AArTTeyP8X3WRVykXV90t5Pnxzr9EAjSTs3r+7fZawHU3VcOCW91/9fj/jARoiMC+%20YQRCKzjvpXBWhBIyu8ndPyMBmiIQl3uVfzFXc5d5KAUJMLuQACQACUACkAAkAAlAApAAJAAJQAKQ%20ACQACUACtCWg91/oiNr6gzgE9JaHk182oSWqyjFXlO8Fhu0fkq8a8+Sou6oS5IuR2/YPi/cdjsr1%20vXE/g3bOJSIQ0Fs+6sz/Bz8UqY36yywx+52YAPgR0PvXe658WHhAlCzgqpw1HJBBEeCXAOQTMI79%20w/pp+fcitNAHC+4EZEgE3tH8y9G+v7q98CV4/Xmt2+fc4yMDMh4Cznkafzvswf6bm+afePs7DVvn%20cOrYW2iMhgDfBOCVAC/235R/alWXJm1zceus8eIxFAK8E4BnAvr+JvO2r4C0fd0qt4zrvacnugvH%20QAhUa3iChGz7b+WBX/3l3+o1+6fFczxGYxQEVEgA7gjo+9v9ih9kzXzzKxVa5ZPNMt6MjIGAGglg%20XAJo7L/9Ff0hvpn/4+eiZEZiAASc87U5R4je/iFl8msPR/266UpC0T0CKiWAMQT07bif5VEzODXG%20wJGccMXB6BsB1RLASAIY7R9SB4+2+Hp1CF004yHQrBMA9hGiNgHs9hNSzaMtGA7cvAeBfwRfwgQw%20LgEQ9hPyRx6NwXTc4mgE/jGRbMAEMB4BIPYTksihLVoZYxqBwPD5D4Hf6gEAze8aoJRvl1A9wBgE%20bp3/oYsUkKtTAMj7Yv4YbiJw+/wXXaSAq6E6BeAl4XqAuwgcuLN+sF4PKaBCpwD8WsAeYKy2wM1O%20fVa3ffWihKgwf/+wqIRFq7fXfQa1Vcq5QJ8ATHGI2AOM0kyg+5T7arKm3vv0qVk1fSCPb9BpCvhE%20zB5ghP4OEVbPgYwgdwUEZRzoAShilT4B2A0MAPjVW4+wx9RVlRbouZDANPaNMheDdQlApuA9wMRP%20mRcmdsm6BcK6a4CxoC26BGCG4D0A8ytAbbTcoqJr2UrqDNAlAR1C9wARjNtYTy9WUtpitnPmn9El%20ANVC9wA2pmg6snyUFeeTxfJ7+GKCHgEAXQ+CvoA5nOUVzVVKkZMDSl30JWbqEYBEkXuAUoZYetMp%20F9ro5x0a9QjAhC5xe4Dg6/ShfPMQbakPfUNd6DKTrwdB9wDP04dyKpK+2MhTtKUeNvl6EHAP4H+B%20OpL9gSwFB+6nLHYwXIcApMABEAsbWTb18K+QtehCyqFgvqnXg6B7gBZa/wGm5VfREXBaj31Ao6A9%20wM9p4yiEKL2Qrux5OgTgFUF7gF20/T9M8XTjgFIdAvA7MXuAiZSXgJ0KhCk/kOpd4Esf/QEwEwgA%204FMyH6d8/4+ECiCSaj5gsQ5TwFdC9gDv0M3/PQQXwUM0c4J7dAjAPhF7gClUM7KudMgY0ileBa5P%200h8AfxSxB/i9CGMwmrWIdP0BkChiD0A1Q90BvCcjgGJ1uE5/AICsB9lhY4qkmp7Kgm6aLIotaFb9%20EfC+eD3ARqp5OPB3MB+KPUJ5+gPgJfF6AKrpSQ6vYIuVR9EcrzsAUoTrAWKo9n/yaBuanaKtJTr7%20WjjYIVoP8DLN/u9oHm0TTbdbvLVYVwywrwfFgMYTTrM3cxeftqFdkpBaimN1A8Ar4vQAEU8U/PNr%20mhC6OI2+rQzvSLph4HdC9AD3/6awjn4/HrfLGqrYJkiL9MDATK17gMjfvnToAlsIabwaJ405PRbF%20EJRnsb+G9ATyii0Q4NthdJg7AAf4BXcAAdABABn8gstAAMQHoC+IX3BBfQiA8ADU8IyuBgEQHoAs%20ntFlIQCiA+CYyjO6qQ4EQHAAPuMb3mcIgOAA1PENrw4BEByA7XzD244ACA7Aar7hrUYABAdgEd/w%20FiEAggOQwDe8BARAcACi+IYXhQAIDkAY3/DCEADBAfDnG54/AoAAIADYBSAAOAhEAPA1EAHAiSAE%20QDQAcCrY5ADgYpDJAajjGx4uB4sOAG4IMTkAuCXM5ADgplCzA4Dbwk0OAH4YYnIA8NMwswOAH4ea%20HAD8PFzXiimys7YxHhChc8UWtTA1Mx4RYwAGihkYwEOizM4AHhNnEMUVt1I1OB4UaSAGSmgYwKNi%20jaT4ZuUNj4dFG0l5ypsej4s3kqwUnS9eGGEkUWzDwStjjKR0iuEXXhplIE26rrz18do4I2kPxe8P%20L440kBbTzMDg1bHGkc+XNA7g5dHGEc0YDK+PN5Dm0a3CFEKUXUhX9jx0DVKnqUxwrWIveZWLqujT%206Bmo8ul+hi7mHFBI57+Uj56BKnyQci1+P9NIMHA/ZbGD4egZrA7T7sY4xfA2GHmKttTD6BiwllHv%20xvqGekboIfqr65ahY9Civ9O0l3JWOL2XushG9AtcmfQ7Ml2lFGuDAaUu+hIz0S9wTfiCYUt2R5bC%20eTmfrA6G4r6YgH7B6xmmXfmnFU3NLz7NVNgz6BYHBXSyfZZTK3uvcHQtW0mdAegWD21h/DBrYJes%20PVrWXQOMBW1Br7go+CLrt3ldVWle5oUC06q6WEu5GIxe8dEq9o9zpZ4DGW5PkAjKOADw/a+0Cp3i%20pQYJQn01WeOcJDU1q6YP5PEN6BM3LXBKMHJ8Vrd99aKEqDB//7CohEWrt9d95gB6tHMB+sRPFZLw%20qkCXOCr0quj+Xw1Fl3gqV3QActEjrooTHQBcBuSrfcJ3AbPRJI6a7xR+ENg0GW0ycQIYUjXaZOYE%20MKTn0SheqtaD/5IjBZ0ycwIYGghGoVcmTgBDOoMDQR6a59QLANI+dMvMCWBIm9AuMyeAoYHgo2gY%20tN6R9KRrOBA0cwIYUjMOBM2cACSw4ylQtzTXqTcApD+ha4Cq0p3/kgOXhk2dACTpz+ibmROAVIS2%20wSUAB/pvav0B/Te5itB/JAD9RwLQfyQA/UcC0H8kAP1HAtB/JAD9RwLQfyRA5T3fuXH7nOi/WQlw%20Vgx//z/fHQLov8EJaLhz/sv8aif6LyAB367f0svP/osjz/8aBwH0X2MCvt0QSMjMv3Oyv3PLmPP/%205o1BAP3XloBLG24fAvnIpxzs/+KZcc5/nfeOE/0XhIBLG388A3Ti+u+A7W/MdHP+948IoP9aEtD5%203Ohd+BG2Pjj3Bw972t05t8qJ/mtMQOfz936EEV56Hcb+0/ne7n+aW+VA/zUk4PKm8b/BCX7+ArP7%20X5bKuv9x7h/QD60IuPwnt2c/E//sFhb3r+9ZjPf/Ck7AFQ/239TPd1FeMzFQlz4Jm1hwvfDnIO//%20aeLj7yifG2rOs2LzGkdTfv++wu8K4rHRDKbIjUruHWzFBjOgYl6WfRNcCbaWIRUuF4A4bCtj6mvs%20Acytf8oDoBhbyqAqwB7A3HpClv8t2FBGVQT2ACbXN3IAiMV2MqzqsAcwtwqxBzC3foM9gLl1P/YA%20Jpf3TUK4ucvQOoQ9gLn1kjf/7dhGhtZvsQcwtyK9ARDDOYD/BwDF42JUCDSGAAAAAElFTkSuQmCC%22%20preserveAspectRatio=%22none%22%20height=%2226.471%22%20width=%2226.471%22%20fill=%22#ffaad5%22%20stroke=%22#a6006d%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "518ec16a-1b03-4801-a576-b48651508d95",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": -1016,
                "y": 32
              }
            },
            {
              "id": "f3fe17a9-5326-4a3e-8102-c9b868d3d14f",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -1016,
                "y": 112
              }
            },
            {
              "id": "670e772a-d87e-434a-894d-d041562431ba",
              "type": "basic.output",
              "data": {
                "name": "proc_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 160,
                "y": 168
              }
            },
            {
              "id": "f601bcbf-3211-4eae-b6f7-0ac328314785",
              "type": "basic.output",
              "data": {
                "name": "proc_pxl",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 160,
                "y": 240
              }
            },
            {
              "id": "54a12c13-efa4-4701-8e89-c916a9cdb4f7",
              "type": "basic.output",
              "data": {
                "name": "leds",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1072,
                "y": 288
              }
            },
            {
              "id": "ddfee140-db14-458d-9764-645ccbdf517c",
              "type": "basic.output",
              "data": {
                "name": "proc_we"
              },
              "position": {
                "x": 160,
                "y": 312
              }
            },
            {
              "id": "42fa8d87-4417-445a-8aa1-fe3e788fab93",
              "type": "basic.input",
              "data": {
                "name": "orig_pxl",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -1016,
                "y": 448
              }
            },
            {
              "id": "7572c693-a17e-4038-a41b-5a8c23b44491",
              "type": "basic.output",
              "data": {
                "name": "centroide",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 1072,
                "y": 472
              }
            },
            {
              "id": "fa48900f-a283-4d8c-91a1-b7c384a6c82b",
              "type": "basic.input",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": -1024,
                "y": 568
              }
            },
            {
              "id": "f8572b55-003e-401b-9b2e-79ec1db7f901",
              "type": "basic.output",
              "data": {
                "name": "orig_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 1072,
                "y": 600
              }
            },
            {
              "id": "ba958275-ac7b-4312-81d8-e332d26ec128",
              "type": "basic.code",
              "data": {
                "code": "// `timescale 1ns / 1ps\r\n//////////////////////////////////////////////////////////////////////////////////\r\n// Company: \r\n// Engineer: \r\n// \r\n// Create Date:    12:18:10 06/24/2021 \r\n// Design Name: \r\n// Module Name:    calculo_filter \r\n// Project Name: \r\n// Target Devices: \r\n// Tool versions: \r\n// Description: \r\n//\r\n// Dependencies: \r\n//\r\n// Revision: \r\n// Revision 0.01 - File Created\r\n// Additional Comments: \r\n//\r\n//////////////////////////////////////////////////////////////////////////////////\r\n/*\r\nmodule calculo_filter(\r\n    input clk,\r\n\t input rst,\r\n\t input [5:0] reg_histograma,\r\n\t input [7-1:0] px_pos_ret,\r\n\t input start,\r\n    output reg[8-1:0] leds,\r\n\t output reg[7-1:0] centroide\r\n    );\r\n\t\r\n*/\t\r\n\t reg [12-1:0] suma_areas; \r\n\t reg [17-1:0] suma_mult;\r\n\t reg [8-1:0] leds_r;\r\n\t reg [7-1:0] centroide_r;\r\n\t \r\n\treg [5:0] histograma_calc [79:0];\r\n\treg [5:0] histograma_aux [79:0];\r\n\tinteger j;\r\n\tinteger i;\r\n\treg [7-1:0] px_pos_ret2;\r\n\t\r\n\treg activo;\r\n\twire end_exam;\r\n\treg [7-1:0] cont80;\r\n\t\r\n\t\r\n\t// Se recibe un indice \"px_pos_ret\" y el reg_histograma, el histograma esta retrasado un ciclo de reloj\r\n\t// por tanto, se va a retrasar un ciclo de reloj px_pos_ret para sincronizar los datos.\r\n\talways @ (posedge clk, posedge rst) \r\n\tbegin\r\n\t\t\r\n\t\tif (rst) begin\r\n\t\t\r\n\t\t\tpx_pos_ret2 <= 7'd0;\r\n\t\tend\r\n\t\telse begin\r\n\t\t\t\r\n\t\t\tpx_pos_ret2 <= px_pos_ret;\r\n\t\tend\r\n\tend\r\n\t\r\n\talways @ (posedge clk, posedge rst) \r\n\tbegin\r\n\t\t\r\n\t\tif (rst) begin\r\n\t\t\tfor(i=0;i<=79;i=i+1) begin\r\n\t\t\t\thistograma_aux[i] <= 6'd0; \r\n\t\t\tend\r\n\t\tend\r\n\t\telse begin \r\n\t\t\tif (start) begin \r\n\t\t\t\tfor(i=0;i<=79;i=i+1) begin\r\n\t\t\t\t\thistograma_aux[i] <= 6'd0; \r\n\t\t\t\tend\t\t\t\r\n\t\t\tend\r\n\t\t\telse if (reg_histograma > histograma_aux[px_pos_ret2]) begin\r\n\t\t\t\thistograma_aux[px_pos_ret2] <= reg_histograma; \r\n\t\t\tend\r\n\t\tend\r\n\r\n\tend\t\r\n\r\n\t\r\n\t// Estado \"activo\" que nos permitirá saber cuando se tiene que hacer los calculos. La señal start activará el estado\r\n\t// para el calculo y la señal end_exam nos dirá cuando ha finalizado las operaciones con el histograma\r\n\talways @ (posedge clk, posedge rst)\r\n\tbegin \r\n\r\n\t\tif (rst) begin\r\n\t\t\t\r\n\t\t\tactivo <= 1'b0;\r\n\t\tend\r\n\t\telse begin\r\n\t\t\r\n\t\t\tif (start) begin\r\n\t\t\t\t\r\n\t\t\t\tactivo <= 1'b1;\r\n\t\t\tend\r\n\t\t\telse if (end_exam) begin\r\n\t\t\t\r\n\t\t\t\tactivo <= 1'b0;\r\n\t\t\tend\r\n\t\tend\r\n\tend\r\n\t\r\n\t\r\n\t//Contador hasta 80 \r\n\talways @ (posedge clk, posedge rst) \r\n\t  begin\r\n\t\t if (rst) begin   \r\n\t\t\tcont80 <= 7'd0;\r\n\t\t end \r\n\t\t else begin \r\n\t\t\t if (end_exam) begin\r\n\t\t\t\tcont80 <= 7'd0;\r\n\t\t\t end\r\n\t\t\t else if (activo) begin\r\n\t\t\t\tcont80 <= cont80 +1'b1;\r\n\t\t\t end \r\n\t\tend\r\n\tend\r\n\r\n\tassign end_exam = (cont80 == 80-1)? 1'b1 : 1'b0;\r\n\t\r\n\t\r\n\talways @ (posedge clk, posedge rst) \r\n\tbegin\r\n\t\t\r\n\t\tif (rst) begin\r\n\t\t\tfor(j=0;j<=79;j=j+1) begin\r\n\t\t\t\thistograma_calc[j] = 6'd0; \r\n\t\t\tend\r\n\t\tend\r\n\t\telse begin \r\n\t\t\tif (start) begin\r\n\t\t\t\tfor(j=0;j<=79;j=j+1) begin\r\n\t\t\t\t\thistograma_calc[j] = histograma_aux[j]; \r\n\t\t\t\tend\r\n\t\t\tend\r\n\t\tend\r\n\r\n\tend\r\n\t\r\n\t\r\n\talways @ (posedge clk, posedge rst) \r\n\tbegin\r\n\t\r\n\tif (rst) begin\r\n\t\tsuma_areas <= 12'd0;\r\n\tend\r\n\telse begin \r\n\t\t\r\n\t\tif (activo) begin \r\n\t\t\tsuma_areas <= suma_areas + histograma_calc[cont80];\r\n\t\tend\r\n\t\telse begin\r\n\t\t\tsuma_areas <= 12'b0;\r\n\t\tend\r\n\tend\r\n\r\nend\r\n\r\n\r\n\talways @ (posedge clk, posedge rst) \r\n\tbegin\r\n\t\t\r\n\t\tif (rst) begin\r\n\t\t\tsuma_mult <= 17'd0;\r\n\t\tend\r\n\t\telse begin \r\n\t\t\t\r\n\t\t\tif (activo) begin \r\n\t\t\t\tsuma_mult <= suma_mult + histograma_calc[cont80]*cont80;\r\n\t\t\tend\r\n\t\t\telse begin \r\n\t\t\t\tsuma_mult <= 17'd0;\r\n\t\t\tend\r\n\t\tend\r\n\r\n\tend\r\n\r\n\r\n\r\n\r\n\t \r\n//según col pintamos LEDs\r\nalways @ (posedge clk, posedge rst) \r\nbegin\r\n  if (rst) begin   \r\n\t\tleds_r <= 8'b00000000; \r\n  end\r\n  else begin\r\n  \r\n\tif (centroide_r < 5) begin\r\n\t\tleds_r <= 8'b00000000; \r\n    end  \r\n\telse if (centroide_r < 15) begin\r\n      leds_r <= 8'b10000000;\r\n    end\r\n    else if (centroide_r <25) begin\r\n      leds_r <= 8'b01000000;\r\n    end      \r\n    else if (centroide_r <35) begin\r\n      leds_r <= 8'b00100000;\r\n    end\r\n    else if (centroide_r <45) begin\r\n      leds_r <= 8'b00010000;\r\n    end      \r\n    else if (centroide_r <55) begin\r\n      leds_r <= 8'b00001000;\r\n    end      \r\n    else if (centroide_r <65) begin   \r\n      leds_r <= 8'b00000100;\r\n    end    \r\n    else if (centroide_r <75) begin\r\n      leds_r <= 8'b00000010;\r\n    end      \r\n    else if (centroide_r <85) begin\r\n      leds_r <= 8'b00000001;  \r\n\tend\r\n\t   \r\n\t \r\n  end\r\nend\r\n\r\nassign leds = leds_r;\r\nassign centroide = centroide_r;\r\n\r\n// DIVISION\r\n\treg [4-1:0] bitsdesplaza;\r\n\t\r\n\tparameter\r\n\t\tESPERA = 0,\r\n\t\tDESPLAZA = 1,\r\n\t\tOPERA = 2;\r\n\t\r\n\treg [2-1:0] EstadoDiv;\r\n\treg [17-1:0] Dsor;\r\n\treg [17-1:0] Ddo_aux;\r\n\treg [17-1:0] dividendo_reg;\r\n\treg [17-1:0] cociente;\r\n\treg avisoDiv;\r\n\r\n\r\n\talways @(posedge rst, posedge clk)\r\n\tbegin\r\n\t\r\n\t\tif (rst) begin\r\n\t\t\r\n\t\t\tcociente <= 17'd0;\r\n\t\t\t//resto <= 17'd0;\r\n\t\t\tbitsdesplaza <= 4'd0;\r\n\t\t\tEstadoDiv <= 2'd0; // ESPERA\r\n\t\t\tavisoDiv <= 1'b0;\r\n\t\t\tDsor <= 17'd0;\r\n\t\t\tdividendo_reg <= 17'd0;\r\n\t\t\tDdo_aux = 17'd0;\r\n\t\t\r\n\t\tend\r\n\t\telse begin\r\n\t\t\t\r\n\t\t\tif (EstadoDiv == ESPERA) begin\r\n\t\t\t\r\n\t\t\t\tavisoDiv <= 1'b0;\r\n\t\t\t\tDsor <= {5'd0, suma_areas};\r\n\t\t\t\tdividendo_reg <= suma_mult;\r\n\t\t\t\tif (end_exam) begin\r\n\t\t\t\t\t\r\n\t\t\t\t\tcociente <= 17'd0;\r\n\t\t\t\t\t//resto <= 17'd0;\r\n\t\t\t\t\tif ((dividendo_reg == 0) || (Dsor == 0)) begin\r\n\t\t\t\t\t\r\n\t\t\t\t\t\tEstadoDiv <= 2'd0; // ESPERA\r\n\t\t\t\t\t\tavisoDiv <= 1'b1;\r\n\t\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\t\telse begin\r\n\t\t\t\t\t\r\n\t\t\t\t\t\tEstadoDiv <= 2'd1; // Desplaza\r\n\t\t\t\t\t\tbitsdesplaza <= 4'd0;\r\n\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\tend\r\n\t\t\tend\r\n\t\t\telse if (EstadoDiv == DESPLAZA) begin\r\n\t\t\t\r\n\t\t\t\tif (dividendo_reg > Dsor) begin\r\n\t\t\t\t\t\r\n\t\t\t\t\tif (Dsor[17-1] == 1'b0) begin\r\n\t\t\t\t\t\t\r\n\t\t\t\t\t\tDsor[17-1:1] <= Dsor[17-2:0];\r\n\t\t\t\t\t\tDsor[0] <= 1'b0;\r\n\t\t\t\t\t\tbitsdesplaza <= bitsdesplaza + 1'b1;\r\n                  EstadoDiv <= DESPLAZA;\r\n\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\t\telse begin\r\n\t\t\t\t\t\r\n\t\t\t\t\t\tEstadoDiv <= OPERA;\r\n\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\tend\r\n\t\t\t\telse begin\r\n\t\t\t\t\r\n\t\t\t\t\tEstadoDiv <= OPERA;\r\n\t\t\t\t\r\n\t\t\t\tend\r\n\t\t\tend\r\n\t\t\telse if (EstadoDiv == OPERA) begin\r\n\t\t\t\r\n\t\t\t\tif (dividendo_reg >= Dsor) begin\r\n\t\t\t\t\r\n\t\t\t\t\tDdo_aux = dividendo_reg - Dsor;\r\n\t\t\t\t\tdividendo_reg <= Ddo_aux;\r\n\t\t\t\t\tcociente[bitsdesplaza] <= 1'b1;\r\n\t\t\t\t\tif (bitsdesplaza == 1'b0) begin\r\n\t\t\t\t\t\r\n\t\t\t\t\t\tEstadoDiv <= ESPERA;\r\n\t\t\t\t\t\tavisoDiv <= 1'b1;\r\n\t\t\t\t\t\t//resto <= Ddo_aux;\r\n\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\t\telse begin\r\n\r\n\t\t\t\t\t\tDsor[17-2:0] <= Dsor[17-1:1];\r\n\t\t\t\t\t\tDsor[17-1] <= 1'b0;\r\n\t\t\t\t\t\tEstadoDiv <= OPERA;\r\n\t\t\t\t\t\tbitsdesplaza <= bitsdesplaza - 1'b1;\r\n\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\tend\r\n\t\t\t\telse begin\r\n\t\t\t\t\t\r\n\t\t\t\t\tif (bitsdesplaza == 4'd0) begin\r\n\t\t\t\t\t\r\n\t\t\t\t\t\tEstadoDiv <= ESPERA;\r\n\t\t\t\t\t\t//resto <= Ddo_aux;\r\n\t\t\t\t\t\tavisoDiv <= 1'b1;\r\n\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\t\telse begin\r\n\t\t\t\t\t\r\n\t\t\t\t\t\tDsor[17-2:0] <= Dsor[17-1:1];\r\n\t\t\t\t\t\tDsor[17-1] <= 1'b0;\r\n\t\t\t\t\t\tEstadoDiv <= OPERA;\r\n\t\t\t\t\t\tbitsdesplaza <= bitsdesplaza - 1'b1;\r\n\t\t\t\t\t\r\n\t\t\t\t\tend\r\n\t\t\t\tend\r\n\t\t\tend\r\n\t\t\telse begin\r\n\r\n\t\t\t\tcociente <= 17'd0;\r\n\t\t\t\t//resto <= 17'd0;\r\n\t\t\t\tbitsdesplaza <= 4'd0;\r\n\t\t\t\tEstadoDiv <= 2'd0; // ESPERA\r\n\t\t\t\tavisoDiv <= 1'b0;\t\t\t\r\n\t\t\t\t\r\n\t\t\tend\r\n\t\tend\r\n\tend\r\n\r\n\t\r\n\talways @(posedge rst, posedge clk)\r\n\tbegin\r\n\t\r\n\t\tif (rst) begin\r\n\t\t\r\n\t\t\tcentroide_r <= 7'd0;\r\n\t\t\r\n\t\tend \r\n\t\telse begin\r\n\t\t\r\n\t\t\tif (avisoDiv) begin\r\n\t\t\t\r\n\t\t\t\tcentroide_r <= cociente[6:0];\r\n\t\t\t\r\n\t\t\tend\r\n\t\t\r\n\t\tend\r\n\r\n\tend \r\n\r\n//endmodule\r\n",
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
                      "name": "reg_histograma",
                      "range": "[5:0]",
                      "size": 6
                    },
                    {
                      "name": "px_pos_ret",
                      "range": "[6:0]",
                      "size": 7
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "leds",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "centroide",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ]
                }
              },
              "position": {
                "x": 368,
                "y": 224
              },
              "size": {
                "width": 440,
                "height": 376
              }
            },
            {
              "id": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\n//   Richard A. Nicklas\n//\n//   color_proc.v\n//   Takes an image from a memory, light leds depending on red pixel position on frame\n//   \n//\n/*\nmodule color_proc\n  # (parameter\n      // VGA\n      //c_img_cols    = 640, // 10 bits\n      //c_img_rows    = 480, //  9 bits\n      //c_img_pxls    = c_img_cols * c_img_rows,\n      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;\n      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1\n      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288\n      // QQVGA\n      //c_img_cols    = 160, // 8 bits\n      //c_img_rows    = 120, //  7 bits\n      //c_img_pxls    = c_img_cols * c_img_rows,\n      //c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15\n      // QQVGA /2\n      c_img_cols    = 80, // 7 bits\n      c_img_rows    = 60, //  6 bits\n      c_img_pxls    = c_img_cols * c_img_rows,\n      c_nb_img_pxls =  13,  //80*60=4800 -> 2^13\n\n    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)\n    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)\n    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)\n    // word width of the memory (buffer)\n    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,\n    // position of the most significant bits of each color\n    c_msb_blue  = c_nb_buf_blue-1,\n    c_msb_red   = c_nb_buf-1,\n    c_msb_green = c_msb_blue + c_nb_buf_green\n  )\n  (\n    input          rst,       //reset, active high\n    input          clk,       //fpga clock\n    input  [2:0]   rgbfilter, // color filter to be applied\n    // Address and pixel of original image\n    input  [c_nb_buf-1:0]      orig_pxl,  //pixel from original image\n    output [c_nb_img_pxls-1:0] orig_addr, //pixel mem address original img\n    // Address and pixel of processed image\n    output reg                 proc_we,  //write enable, to write processed pxl\n    output reg [c_nb_buf-1:0]  proc_pxl, // processed pixel to be written\n    output [c_nb_img_pxls-1:0] proc_addr, // address of processed pixel\n\t output [7-1:0] pos_col_ret,\n\t output reg [6-1:0] reg_histograma,\n\t output start\n  );\n*/\nparameter\n      // VGA\n      //c_img_cols    = 640, // 10 bits\n      //c_img_rows    = 480, //  9 bits\n      //c_img_pxls    = c_img_cols * c_img_rows,\n      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;\n      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1\n      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288\n      // QQVGA\n      //c_img_cols    = 160, // 8 bits\n      //c_img_rows    = 120, //  7 bits\n      //c_img_pxls    = c_img_cols * c_img_rows,\n      //c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15\n      // QQVGA /2\n      c_img_cols    = 80, // 7 bits\n      c_img_rows    = 60, //  6 bits\n      c_img_pxls    = c_img_cols * c_img_rows,\n      c_nb_img_pxls =  13,  //80*60=4800 -> 2^13\n\n    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)\n    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)\n    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)\n    // word width of the memory (buffer)\n    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,\n    // position of the most significant bits of each color\n    c_msb_blue  = c_nb_buf_blue-1,\n    c_msb_red   = c_nb_buf-1,\n    c_msb_green = c_msb_blue + c_nb_buf_green;\n    \n    reg [c_nb_buf-1:0]  proc_pxl_r;\n    reg [6-1:0] reg_histograma_r;\n    reg proc_we_r;\n    \n  reg [c_nb_img_pxls-1:0]  cnt_pxl;\n  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;\n\n  wire end_pxl_cnt;\n  wire end_ln;\n  wire tmpw;\n\t\n  parameter limite_azul = 4'b1001; // 9 en decimal\n  parameter limite_verde = 4'b1001; // 9 en decimal\n  parameter  BLACK_PXL = {c_nb_img_pxls{1'b0}};\n  \n\n  reg [5:0] histograma [79:0];\n  integer i; \n  \n  reg [6-1:0] prev_high;\n  reg [7-1:0] px_pos, px_pos_ret;\n\n// Contador de filas para eliminar filas superiores e inferiores (Solo se examina 64x48 px)\n  reg [6-1:0] cnt_filas;\n\n  // memory address count\n  always @ (posedge rst, posedge clk)\n  begin\n    if (rst) begin\n      cnt_pxl <= 0;\n      cnt_pxl_proc <= 0;\n      proc_we_r <= 1'b0;    \n    end\n    else begin\n      proc_we_r <= 1'b1;\n      // data from memory received a clock cycle later\n      cnt_pxl_proc <= cnt_pxl;\n      if (end_pxl_cnt ) begin\n        cnt_pxl <= 0;\n      end\n      else\n        cnt_pxl <= cnt_pxl + 1'b1;\n    end\n  end\n  \n  assign start = end_pxl_cnt;\n  assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;\n  assign orig_addr = cnt_pxl;\n  assign proc_addr = cnt_pxl_proc;\n\n  //wire para contar hasta 80\n  assign end_ln = (px_pos == c_img_cols-1)? 1'b1 : 1'b0;\n  //aqui intento hacer la comprobacion para asignar un nuevo maximo a prev_high\n\t\n\t\n\n//Contador filas hasta 63\n\nalways @ (posedge clk, posedge rst) \n  begin\n    if (rst) begin   \n      cnt_filas <=0;\n    end \n    else if (end_pxl_cnt) begin\n      cnt_filas <= 0;\n    end\n    else if (end_ln) begin\n      cnt_filas <= cnt_filas +1'b1;\n    end \nend\n\t\n\n//Contador hasta 80 \nalways @ (posedge clk, posedge rst) \n  begin\n    if (rst) begin   \n      px_pos <=0;\n    end \n    else if (end_ln) begin\n      px_pos <= 0;\n    end\n    else begin\n      px_pos <= px_pos +1'b1;\n    end \nend\n\n\n\tassign pos_col_ret = px_pos_ret;\n\n\n//Retrasar px_pos\nalways @ (posedge clk, posedge rst)\nbegin\n\n\tif (rst) begin\n\t\tpx_pos_ret <= 0;\n\tend\n\telse begin\n\t\tpx_pos_ret <= px_pos;\n\tend\n\nend \n\n\n//reg [5:0] histograma [79:0];\n//histograma almacena los pixeles rojos en cada columna, se resetea cada frame\nalways @ (posedge clk, posedge rst) \nbegin\n  if (rst) begin  \n    for(i=0;i<=79;i=i+1) begin\n      histograma[i] = 6'd0; \n    end\n\t reg_histograma_r = 6'd0;\n  end \n  else begin \n\t if (end_pxl_cnt) begin\n\t\n\t\t for(i=0;i<=79;i=i+1) begin\n\t\t\thistograma[i] = 6'd0; \n\t\t end\n\t\t reg_histograma_r = 6'd0;\n\t end\n\t else begin\n\t\t if (px_pos_ret >= 8 && px_pos_ret <= 71 && cnt_filas >= 6 && cnt_filas <= 53) begin\n\t\t\t if (orig_pxl[c_msb_red] && orig_pxl[7:4]< limite_verde && orig_pxl[3:0]< limite_azul) begin \n\t\t\t\thistograma[px_pos_ret] = histograma[px_pos_ret] + 1'b1;\n\t\t\t\treg_histograma_r = histograma[px_pos_ret];\n\t\t\t end\n\t\t\t else begin\n\t\t\t\treg_histograma_r = 6'd0;\n\t\t\t end\n\t\t end\n\t\t else begin \n\t\t\treg_histograma_r = 6'd0;\n\t\t end\n\t end\n  end\nend\n\n\n  assign tmpw = (prev_high < histograma[px_pos_ret])? 1'b1 : 1'b0;\n\n//Si prev_high < el valor actual del histograma (tmpw) asignamos el nuevo maximo\n// y guardamos la columna en col\n\n  always @ (posedge clk, posedge rst) \n  begin\n    if (rst) begin   \n      prev_high <=0;\n    end  \n\t else if (end_pxl_cnt) begin\n\t\tprev_high <=0;\n\t end\n    else if(tmpw) begin\n        prev_high <= histograma[px_pos_ret];\n    end \n  end\n\n\n  always @ (orig_pxl, rgbfilter) // should include RGB mode\n  begin\n    // check on RED\n    case (rgbfilter)\n      3'b000: // no filter, output same as input\n        proc_pxl_r <= orig_pxl;\n      3'b100: begin // red filter\n        if (orig_pxl[c_msb_red] && orig_pxl[7:4]< limite_verde && orig_pxl[3:0]< limite_azul)\n          proc_pxl_r <= orig_pxl;\n        else\n          proc_pxl_r <= BLACK_PXL;\n      end\n      3'b010: begin // green filter\n        if (orig_pxl[c_msb_green])\n          proc_pxl_r <= orig_pxl;\n        else\n          proc_pxl_r <= BLACK_PXL;\n      end\n      3'b001: begin // filter blue\n        if (orig_pxl[c_msb_blue])\n          proc_pxl_r <= orig_pxl;\n        else\n          proc_pxl_r <= BLACK_PXL;\n      end\n      3'b110: begin // filter red and green\n        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green])\n          proc_pxl_r <= orig_pxl;\n        else\n          proc_pxl_r <= BLACK_PXL;\n      end\n      3'b101: begin // filter red and blue\n        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_blue])\n          proc_pxl_r <= orig_pxl;\n        else\n          proc_pxl_r <= BLACK_PXL;\n      end\n      3'b011: begin // filter green and blue\n        if (orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])\n          proc_pxl_r <= orig_pxl;\n        else\n          proc_pxl_r <= BLACK_PXL;\n      end\n      3'b111: begin // red, green and blue filter\n        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])\n          proc_pxl_r <= orig_pxl;\n        else\n          proc_pxl_r <= BLACK_PXL;\n      end\n    endcase\n  end\n\nassign proc_pxl = proc_pxl_r;\nassign reg_histograma = reg_histograma_r;\nassign proc_we = proc_we_r;\n\n// /endmodule",
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
                      "name": "orig_pxl",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "rgbfilter",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "proc_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "proc_pxl",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "proc_we"
                    },
                    {
                      "name": "reg_histograma",
                      "range": "[5:0]",
                      "size": 6
                    },
                    {
                      "name": "pos_col_ret",
                      "range": "[6:0]",
                      "size": 7
                    },
                    {
                      "name": "start"
                    },
                    {
                      "name": "orig_addr",
                      "range": "[12:0]",
                      "size": 13
                    }
                  ]
                }
              },
              "position": {
                "x": -552,
                "y": 168
              },
              "size": {
                "width": 600,
                "height": 496
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ba958275-ac7b-4312-81d8-e332d26ec128",
                "port": "centroide"
              },
              "target": {
                "block": "7572c693-a17e-4038-a41b-5a8c23b44491",
                "port": "in"
              },
              "vertices": [],
              "size": 7
            },
            {
              "source": {
                "block": "ba958275-ac7b-4312-81d8-e332d26ec128",
                "port": "leds"
              },
              "target": {
                "block": "54a12c13-efa4-4701-8e89-c916a9cdb4f7",
                "port": "in"
              },
              "vertices": [],
              "size": 8
            },
            {
              "source": {
                "block": "518ec16a-1b03-4801-a576-b48651508d95",
                "port": "out"
              },
              "target": {
                "block": "ba958275-ac7b-4312-81d8-e332d26ec128",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f3fe17a9-5326-4a3e-8102-c9b868d3d14f",
                "port": "out"
              },
              "target": {
                "block": "ba958275-ac7b-4312-81d8-e332d26ec128",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 296,
                  "y": 264
                }
              ]
            },
            {
              "source": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "start"
              },
              "target": {
                "block": "ba958275-ac7b-4312-81d8-e332d26ec128",
                "port": "start"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "reg_histograma"
              },
              "target": {
                "block": "ba958275-ac7b-4312-81d8-e332d26ec128",
                "port": "reg_histograma"
              },
              "vertices": [],
              "size": 6
            },
            {
              "source": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "pos_col_ret"
              },
              "target": {
                "block": "ba958275-ac7b-4312-81d8-e332d26ec128",
                "port": "px_pos_ret"
              },
              "vertices": [],
              "size": 7
            },
            {
              "source": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "proc_we"
              },
              "target": {
                "block": "ddfee140-db14-458d-9764-645ccbdf517c",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "proc_pxl"
              },
              "target": {
                "block": "f601bcbf-3211-4eae-b6f7-0ac328314785",
                "port": "in"
              },
              "vertices": [],
              "size": 12
            },
            {
              "source": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "proc_addr"
              },
              "target": {
                "block": "670e772a-d87e-434a-894d-d041562431ba",
                "port": "in"
              },
              "vertices": [],
              "size": 13
            },
            {
              "source": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "orig_addr"
              },
              "target": {
                "block": "f8572b55-003e-401b-9b2e-79ec1db7f901",
                "port": "in"
              },
              "vertices": [],
              "size": 13
            },
            {
              "source": {
                "block": "518ec16a-1b03-4801-a576-b48651508d95",
                "port": "out"
              },
              "target": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f3fe17a9-5326-4a3e-8102-c9b868d3d14f",
                "port": "out"
              },
              "target": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": -632,
                  "y": 280
                }
              ]
            },
            {
              "source": {
                "block": "fa48900f-a283-4d8c-91a1-b7c384a6c82b",
                "port": "out"
              },
              "target": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "rgbfilter"
              },
              "vertices": [],
              "size": 3
            },
            {
              "source": {
                "block": "42fa8d87-4417-445a-8aa1-fe3e788fab93",
                "port": "out"
              },
              "target": {
                "block": "5559e967-fbaf-43de-a109-f9fdf6b8ef05",
                "port": "orig_pxl"
              },
              "vertices": [],
              "size": 12
            }
          ]
        }
      }
    },
    "d67a99f8ed7313328079eb6768ee92d9511d866e": {
      "package": {
        "name": "ModeSel",
        "version": "1.0",
        "description": "",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22236.86%22%20height=%22206.027%22%20viewBox=%220%200%2062.669229%2054.51139%22%3E%3Cg%20transform=%22translate(12.7%20-4.964)%22%3E%3Cimage%20width=%2241.684%22%20height=%2241.684%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20x=%22-12.699%22%20y=%2217.792%22/%3E%3Crect%20ry=%221.388%22%20y=%2211.866%22%20x=%22-6.017%22%20height=%2214.915%22%20width=%2243.075%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22/%3E%3Ctext%20style=%22line-height:8.90999985px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20x=%2220.577%22%20y=%2214.59%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2220.577%22%20y=%2214.59%22%20style=%22line-height:8.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2214.111%22%20font-family=%22Gill%20Sans%22%3EMode%3C/tspan%3E%3Ctspan%20x=%2220.577%22%20y=%2225.952%22%20style=%22line-height:8.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20font-size=%2214.111%22%20font-family=%22Gill%20Sans%22%3ESelection%3C/tspan%3E%3C/text%3E%3Cimage%20width=%2227.792%22%20height=%2227.792%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAAA3NCSVQICAjb4U/gAAAACXBIWXMA%20AG0GAABtBgHACCdpAAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAAwBQTFRF%20////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACyO34QAAAP90Uk5TAAECAwQFBgcICQoLDA0ODxAR%20EhMUFRYXGBkaGxwdHh8gISIjJCUmJygpKissLS4vMDEyMzQ1Njc4OTo7PD0+P0BBQkNERUZHSElK%20S0xNTk9QUVJTVFVWV1hZWltcXV5fYGFiY2RlZmdoaWprbG1ub3BxcnN0dXZ3eHl6e3x9fn+AgYKD%20hIWGh4iJiouMjY6PkJGSk5SVlpeYmZqbnJ2en6ChoqOkpaanqKmqq6ytrq+wsbKztLW2t7i5uru8%20vb6/wMHCw8TFxsfIycrLzM3Oz9DR0tPU1dbX2Nna29zd3t/g4eLj5OXm5+jp6uvs7e7v8PHy8/T1%209vf4+fr7/P3+6wjZNQAAKgBJREFUGBntwQmcjeXiB/DfmTMrg7HvSxER1y3JGoposd24Wdqo/FtQ%2043IpipL1Um5CIWs3WlBRUWmRFEWNNRMaM8xEqWE2ZubM+f0/n1tzOTPv+zzPe857zpyZ83y/QKBE%20NOs76onp81es+3DHvqQzudQ85J5J2vfVh+tWzJ/xxKi+zSJQltTsMmLupsR8asryEzfNHdGlJkq9%20uncv23WWmpfO7lp2d12UVtUGvpRIzWeJLw2shtKmYu/nE9zUbOJOeL53RZQaVR750kXNZq4vH6mC%20UiCy/4Zcan6Ru6F/JIJbuwVnqPnRmQXtELQaTjpMze8OT2qIYNTxfTe1gHC/3xHB5qbPqAXQZzch%20iDj6fUMtwL7p50BwcA7ZT60E7B/iRMmLuP8ItRJy5P4IlLCeR6iVoCO9UJLqvEGthL1VDyXFGZ9B%20rcRljgtHieiQQC0o7O+CwKu61E0tWKyqgQC771dqQST9EQcCqPI71ILMB9UQMO2PUws6J69HYDjG%205VELQq4nHAiAqu9RC1JbqsPvOp+gFrRSu8C/HBNd1IKYa5IDflRpC7Ug92El+E2tBGpBL6EW/KTJ%20T9RKgZ+awC/anKZWKpxuAz/onkGtlMjoDtvdkUs7nE0+8PVH61e+OONpzcOMF1eu/+jrA8lnaYfc%20O2CzkQX0Te7BDTOHdagCTaJKh2EzNxzKpW8KRsJWU+mLI4sHNXZCs8DZZPCSo/TFVNhoGr12cvW9%209aF5pcGw1SfptWmwzWh6KWFsU2g+aTp2L700GjYZVEBvpM35CzQbtH7uZ3qjYBBs0SOX1mX/p6cT%20mk2cN6/JoXW5PWCDazNpWeqYWGi2qjjuZ1qWeS18dsUvtCrpoShotosemUyrfrkCPqqdRIsSh4VD%2084uI4Ym0KKk2fFJpL605NCgMmt+EDTpEa/ZWgg/CPqYlWeMjoPlVxPgsWvJxGLw3mZZsqA/N7+pv%20oCWT4bVuLlpw7FZoAXHrMVrg6gYvVU+lugtTo6EFSPTUC1SXWh1ecWyhusTW8IoTmjdaJ1LdFge8%208TjVvRoLC2p0vv9fb3741YGUdBdzTh/Z8/nGZRP6t4iEpi72Vap7HF7olE9V2cOhqsGw5Tt/pyHX%200fefvSEamqLh2VSV3wmWVT1BVfubQ0nNwUuOUuL8J5M6hkNT0Xw/VZ2oCoscm6hqaQwUVB25i4rO%20LevqgCYXs5SqNjlgzUNUNQFyEf035NKKpKlXQJObQFUPwZIa6VTjGg6pes+foXVf3REGTWa4i2rS%20a8CKVVST0xcyTZbm0juHh4VDk+ibQzWrYEFXqknvDImWa1z03vGHo6CJdU6nmq5QFnGQSlJbQaze%20m276Ju0elLBOT6z/8binhGUPNYKJJqNW7jsuczRh+wdvvDJv6mO9r4yEr1qlUsnBCKiaQCWpl0Eo%204p9Z9N0XLVGCKr9KQ9mPhcGA8/ELtKbg+NaXx90UCx9clkolE6CoQTZVpLeEUNcDtEX+3FiUlOap%20NPNZJIqJ2UHv5H/zXL+q8FbLdKrIbgA1b1NFTieIVF1N25z4G0pG+Lc0Nw3FzKMP3AcXdnfCK51y%20qOIdKOlNFfl9INIxhXZ6KRol4UkK5F+DIrq46aPTC7s44IU++VTRGwqik6hiGAQc4/Npr4SmKAGp%20FFmIIl6jDVLntYd1w6giKRpyo6hiPASqvkfbZQ5FwNWm0C4UkUh7fH9XBKwaTxWjIBWRTAUvQ+C6%20FPrDkggEWB8KXYiAh0pu2uXEPyvBopepIDkCMsOpICEa5m7Jpn98GIvA6kuhCxHwUMlN+2TMawhL%20ohOoYDgkwhIpl9kU5u7Ko798Uw0BVYdC36CIH2mn/IXVYUXTTMolhkFsEBXcBXNj3PSfxIYIqDSK%20LEIRa2ivcxOiYMFdVDAIQo69lFsBc7PoV6ktEUjPUMDVFkXc6KbNjg92QN0Kyu11QKQP5Q6Vg6nn%206GdnrkQARXxPc7NRzALabmc7KCt3iHJ9ILKTUudbwtR4+l1yXQRQq9M081U0iin/LW3nmhYBVS3P%20U2onBLpT7kmYGsYA2B+HAKr2Fg1dmOCEgYin82m73VdC1ZOU6w5zn1AqMRJm+uQzEL6IRiDd+Mz7%20Kac8HX4t/gqYaDHu9R9PyfyS7aYFOSOhKDKRUp/AVDPK9YCZTjkMjLedKPUc5Wtc3uqWUc+/sz+b%20CjbXhpoelGsGM9Mp9TrM1D7NQJmGsqTxvUsOuilxqj3UvE6p6TDhSKZMRh2YCPuMAePuiTKmSu/5%20qRS6cCeU1MmgTLIDxrpRKh5mnmEA/VIHZY6j8wsnKTLNARXxlLoBxpZRZq8TJm4sYCBtc6IMcnRc%20fp7m1peDAudeyqyAoZhzlOkHEzV/ZmBNR9lUfVIqTe2pAwX9KJNRDkYGU2a/AyY2McDcnVFGRQz5%20lmZ+rAM5x37KDIWRDygzBCb60wu5x79a/+KslR/u/41e2B+OMmvgUZo4XAtyQyizBQZquijxoxPG%20yifTmnOvD/lLNQcKRTXqPHkPLRqHsivi0TM0drAGpJw/UsJVG8WNocx9MDGbVqS+1CsSxdUftTWf%20FmTVRxlWaXYeDe2rBqn7KDMOxe2mREoEjF2VR2WuV65zwEzcvYepbj3KtL/upaGEKpCJSKHE9yim%20mpsSo2BiG5W92wJC4Q/+TGW3oEyLmJpPI19GQmYUZWqgqIGUOBcDYzdT1VedIVX+qQwq+h5lXJv9%20NLIYMjHnKHEHilpEiVdgYjvVHLkdSqq/WEA1t6GMi/4PjTwEmVco8TKK+oESXWDseqp5vyJU3XqO%20SnagzHvCzeLyrodEF0okoojalEhywNgWKpkbBnUtjlJJN5R5/TJZ3On6EHMkUaIuPA2lxFQYa0MV%20ucNgSZVPqeJjlH2tklnc7miITaXEXfC0lBJXwNh6KjjdCRaFv0QVbVH2NTrO4mZD7ApKLIOnYxT7%20GsZquyh3siGse5IKliEENDrOYlxtIfY1xZLgoQElHoaxcZTLuRbeWE25jBiEgEbHWcyBSAg9TIlG%20uNQwStSFsX2UGwSvRH1NuaEIBY2Os5hpEKpLiftwqZUUOwxjf6XcVHipZgqltiAkND/HovKvhtBh%20iq3Gpb6j2CIYe55S6xzw1tXZlHHVRki4pYBFJURAZBHFEnAJRzbFBsJQ+CnKJJSH9wZQ6p8IDWNZ%20zEiIDKRYjgMXNaCYuxoMdaNUB/jiHcrsRIhYwaLSYiBQzU2xhrjoJorthbGplFkPnzR3UcJVEaEh%20cjeLGg+RvRTriYtGU2wejH1Jifxm8M0SyvRGiGiZyyJ+qwiBeRR7FBctpFgfGCqfR4mX4aM62ZR4%20HqFiEot6BgJ9KLYQF22lWA0Y6kWJrFrw1XRKJCBUhO9hERnVYK4GxT7BRScplA5jsykxFT6r+CvF%203FURKlrlsoiZEEin0En8TyzFdsLYNxRzVYXvZlLidoSMmSzilwiY20mxCijUhmKrYMiRQ7FPYYP2%20lJiCkBGXziIGwtwqil2LQndSbCIMNaLEaNjAkUaxNQgdE1nEhzA3kWJ3otBEig2AoZspUR92eJli%20uxE6yp+ip4JGMDWAYhNRaBbFroKheIrthi1uoVgmQshoFvEsTF1FsVkotJBCBVEw9DLFJsEWURkU%20q4PQEZlKTyedMBNVQKGFKLSaQskw9jnFWsAeb1LsBoSQZ1lET5hKptBqFNpAoX0wdpJCmbDJWIo9%20gBDSsICeXoCpfRTagEIfU2gHjGVR6EfYZCjFxiGUfEBPiTC1g0Ifo9BOCm2BoTA3hT6HTbpR7BmE%20kv4s4jKY2UKhnSh0kEJvwVAFiq2BTZpS7DmEkvBUenoYZt6i0EEUSqHQchiqQ7G5sEksxZYgpCyk%20p3dhZjmFUlDodwq9AEPNKPYP2CWDQmsRUvrSU2YETLxAod9RKJ9C02CoDcWGwC6JFNqEkBKbR09d%20YGIahfLxp2iKTYChzhTrCbt8RaGtCC2f0dNomJhAsWj8oRLF4mGoDcWGwi4/UmgTQsvj9PQSTMRT%20rBL+EEexeBhqSrFxsEsWhdYgtFxDT9tgIp5icfhDHMXiYag2xZ6DTSpQbDFCS2Q+PfwKE/EUi8Mf%204igWD0MVKLYWNmlGsecQYg7TUzUYi6dYHP4QS7FxMORwU2gbbHIDxZ5GiFlPT11gbCzFYvEHh5tC%20T8NYFoWOwCZ3UmwcQsxUenoIxp6mkNuBP2VQ6DkYO0GhLNhkHMXuR4gZTE8zYOw5CmWgUBqFlsDY%20pxRrBXuso1g3hJjW9LQAxpZQKA2FEim0FsYWUWwybBGdRbHaCDH16OlVGFtLoUQU2k2h92DsUYp9%20B1vcRrEMhJpK9PQujL1Hod0o9BmFtsFYL0o0gh2WUuxbhBonPX0OY9so9BkKbaTQdzDWkBLxsEHY%20KYq9hpCTTQ/fwdh3FNqIQmsodATGHNkU2wYbdKTEZIScU/RwDMaOUGgNCi2m0PkwGNtJMVd1+O5f%20lOiPkHOUHn6FobDzFFqMQnMp1gjGZlJiBnwW9zvFCqog5Bymh7Mw1Ihic1FoCsV6wdhNlMipC1/N%20psQehJ7D9HAWhnpRbAoKPUixR2GsXC4lXoGP6p+nxFyEnsP0cBaGHqXYgyjUjWILYeILSrhawDcr%20KHMrQs8P9JAOQwsp1g2FalFsK0w8TZmN8EnLAkrkV0Do2UIPCTC0lWK18D9nKXQCJrpQ6nr44j3K%20fIUQNI0eXoGhExQ6i4t2Uaw8jDnTKHOgArw3hFL/QAjqTw8PwUh5iu3CRaso1gEm5lBqYxi81fY8%20ZVw1EYKiDvASJ+NgpAPFVuGiJyg2ESZaUW42vFQ3jVLvIyS1yedFN8PQRIo9gYtup9gnMPM95e6G%20V2K+pdwghKaRefxTwRQY20qx23FRC4qdj4KJMZS70B7eeJ1yZ6MRolrv5X8d7QxjUTkUa4GLIl0U%20uwEmauZT7lQTWDeNCpYgZEV0f3zd20/eXA4mulHMFYlLHKHYszDzBhX8dgMsilxBFddAMzGVYkdw%20qXcptgNm/koV+Q/BkhpfUsVmaGa+pNi7uNQ4iuXHwsx7VLIgHOpaJ1NJZ2gmyudRbBwu1YYS/WGm%20I9V8XBmq+mdRyRfQzPShRBtcKiydYutg6jOqOT7UARV1lrqpphc0M29QLD0MHt6h2IXKMNODqvb0%20gFTF6dlUtBuamUrnKfYOPD1KiQdhaiuVffhXCEU+9iuV3QTNzAhKPApPrSjxJUw1y6Uy93+6OGGm%20xoM/Ud3r0Extp0QreHL8QonGMDWNVvy6ol8Mirti3JcFtCCjDjQzl1PiFweKeJMSU2Aq5idak/PO%208OvqhaNQxSt7zDhIix6DZmoKJd5EUQ9T4ijM3UYvFJz67v2l/35925FseuF7JzRTRynxMIpqRpme%20MLeBAVbQHpqpnpRphmJOUmIbzFU7ycCaAs3cNkqcRHHPU6YzzF3vYiBtDYNmqjNlnkdxV1NmMwQm%20MYB+rgnN3GbKXA0D+ynTBubCPmLAFNwAzVwbyuyHkfGUWQ+BGmkMlMnQBNZTZjyM1C2ghLsFBK7L%20YmC8EQbNXAs3JQrqwtDHlFkLkV55DIRPIqEJrKXMxzB2N6W6QmSom/73XQVoAl0pdTeMlc+izMEI%20iDxGvztWE5pAxEHKZJWHidWUmgChGfSz002giUyg1GqY6UGp7AYQmkK/Ot4MmkiDbEr1gJmwJEq9%20DbEHC+g/++pAE3qbUklhMPUw5W6D2N/O01+2VYImdBvlHoa5qDRK/VQBYl3S6R8boqEJVfiJUmlR%20EBhLuTWQuCqRfuCeEwZNbA3lxkIk9gzlRkCiwuu03W99oEmMoNyZWAhNplxOK8g8coH2+roBNIlW%20OZSbDLHKGZT7oTxk2hyjnZ6LgCZR/gfKZVSGxCwqWAWpSkvctMtPt0CTWkUFsyBTI4cKhkGu/Xe0%20Re60GGhSw6ggpwak5lPB+c6Qc44+S9991BSaXOfzVDAfcvXPU0F6SyiotbqAvjl+BzQFLdOp4Hx9%20KHiKKlIbQkXTZXn03o/DI6ApaJhKFU9BRVQiVRyuBiUNXsyhd/YNDoOmotphqkiMgpIeVLKrPNTU%20nJFGy9yf9nVAU1J+F5X0gKK1VLI5AoqcN6/JoRWHJzaApihiM5W8DlW1z1HJxhgoq3j/tgKq+XVh%20O2jKYjZSybnaUPYY1eyoDAsq959/gBIZ74+9Jgyauso7qOYxqHN+TzUH68GamoMXff4zDV04sH5S%20h3BoltQ7QDXfO2FBezfVpDSHdRWvvXPq6nc/3f3jz9n5vyfv37HlzYWP3Xx5GDTLmqdQjbs9LFlM%20Rb91gFZiOvxGRYthTVwSFWUPgFZCBmRTUVIcLGqXR1UvRkIrAZEvUlVeO1g2lsr2NIYWcI33UNlY%20WOfYRGXn7oAWYHeco7JNDnihagrVLYqGFkDRi6gupSq80imf6hLaQguYtglUl98JXnqcFhQsioMW%20EHGLCmjB4/CWYwutOH0PtAC45zSt2OKA16qn0pJtV0Hzs6u20ZLU6vBB2yxakjenKjQ/qjonj5Zk%20tYVPeuXRmqw5taD5Sa05WbQmrxd8NNRNi84vaADNDxosOE+L3EPhs3halresCTSbNVmWR8viYYOZ%20tM61cWAUNNtEDdzoonUzYYtl9Eb64k7QbNFpcTq9sQz2cL5L7xx7ujE0HzV++hi9864TNonZTm8d%20WnB7FWheqnL7gkP01vYY2Cbua3qvYM+cW2KhWRR7y5w9BfTe13GwUbn36ZO8/eum39MuDpqCuHb3%20TF+3P48+eb8cbBW+kjY4/cXKF6ZNeOTu/t2v+6vm4bru/e9+ZMK0F1Z+cZo2WBkOmzlmUys1Zjtg%20vzFuaqWCewz8YmgetVIgbyj8pGcmtaCX2RN+c+1pakHu9LXwo9qfUwtqn9eGXzmnFlALWgVTnfC3%20HqepBanTPRAAtT6lFpQ+rYWACHumgFrQKXgmDIHS/RS1IHOqOwKo1kZqQWVjLQRWnyRqQSOpDwIu%20ZnoutaCQOz0GJaHZVmpBYGszlJTBqdRKWOoglKAK81zUSpBrXgWUrFbr3NRKiHtdK5S8Fq+6qJUA%2016stEBwaL82lFmC5SxsjeNSbn0MtgHLm10NwqTk7k1qAZM6uieBTefS31ALg29GVEaSaz0yh5lcp%20M5sjmIXduDKTmp9krrwxDEGv3F0fFVCzXcFHd5VDKVFzyJKj1Gx0dMmQmihd6t+7MoWaDVJW3lsf%20pVPjB9akUvNB6poHGqN0q9Jx+Ox3DudRsyTv8Duzh3esgrIivFnf8cu37jqYku6iZsqVnnJo19bl%204/s2C0eZFVP98tadb+nXX7tEv1s6t768Rgw0TdM0TdM0TdM0TdM0TdM0TdM0TdM0TdM0TdM0TdM0%20TdM0TdM0TdM0TdM0TdM0TdM0TdM0TdM0TdMCL6b65a0739Kvv3aJfrd0bn15jRiUWeHN+o5fvnXX%20wZR0FzVTrvSUQ7u2Lh/ft1k4yooqHYfPfudwHjVL8g6/M3t4xyoo3Ro/sCaVmg9S1zzQGKVT/XtX%20plCzQcrKe+ujdKk5ZMlRajY6umRITZQS5e76qICa7Qo+uqscgl7YjSszqflJ5sobwxDMms9MoeZX%20KTObI0hVHv0ttQD4dnRlBJ+aszOpBUjm7JoILvXm51ALoJz59RA8Gi/NpRZguUsbIzi0eNVFrQS4%20Xm2BktdqnZtaCXGva4WSVWGei1oJcs2rgBI0OJVaCUsdhJLSbCu1ILC1GUpCzPRcakEhd3oMAq5P%20ErWgkdQHgVVrI7WgsrEWAqjHKWpB5lQPBIrz2QJqQafgWScCou42akFpW10EwC2/UgtSv94Cfwuf%205aYWtNyzwuFX9XdQC2o76sOPOp6hFuTOdITf3JZNLehl3wY/uTefWimQfy/84p9uaqWC+5+wn+M5%20aqXGcw7YLPxV2uDsN68vnjvlHyMG39alveahy22DR/xjytzFr39zjjZ4NRy2KvcBfVJw5L3n/q9r%20LWgKanX9v+ffP+qmTz4oBxvFfU3vufe90K8yNIuq/G3+fje993UcbBOznd76YeHAatC8VP3vi36g%20t7bHwCbOd+mdY083huajxs/8RO+864Q9ltEb6Ys7QbOD4/olZ+mNZbDFTFrn2jgwCpptou94v4DW%20zYQN4mlZ3rIm0GzWbGU+LYuHz4a6adH5BQ2g+UGjRRdokXsofNQrj9ZkzakFzU9qz82iNXm94JO2%20WbQkb05VaH5UdU4eLclqCx9UT6Ul266C5mdXbaMlqdXhNccWWnH6HmgBcM9pWrHFAW89TgsKFsVB%20C4i4RQW04HF4qVM+1SW0hRYwbROoLr8TvFI1heoWRUNTV67WFW1u6Hv7Te1a1KsYBi9EL6K6lKrw%20gmMTlZ27A5qSujc+/O/NP+XzEu5ftr/yz77NImDNHeeobJMD1o2lsj2NoUmFXTPugwyayv9mdq/y%20sKDxHiobC8va5VHVi5HQJC4f/fbvlMrb/kxnB1RFvkhVee1gUVwSFWUPgCYW9+CXVHZ8WjOoGpBN%20RUlxsGYxFf3WAZpIRJ+3LtCanSOrQk2H36hoMSxp76aalObwWtVrug8cMWHW4je37tn+7zuroSyK%20HfczvZC7tDGUNE+hGnd7WOD8nmoO1oNXqvR4fF0SPfz6d5Q5cZN/o5dc/2kBFfUOUM33Tqh7jGp2%20VIZl5bqPf/MYjSxH2VJ95jn6wL3+GiiovINqHoOy2ueoZGMMLIrsuyaLpu5DGeJ87Bx95F5ZHXIx%20G6nkXG2oWkslmyNgibPn8nSKnKuPMqNDAm3w+8NhkIrYTCWvQ1EPKtlVHhY4rl/4C2UmoYyo9oqb%209vj2WkiV30UlPaAkKpEqDleDusiHjlPBOygbBv1G2xT8OxIy1Q5TRWIUVDxFFakNoSzqkRNUchJl%20QdRLtNXuyyHTMJUqnoKC+uepIL0lVEWNOklFP6MMaPI9bXZ2AGRaplPB+fqQm08F5ztDUfSjqVS2%20CaXfHedov/mRkOh8ngrmQ6pGDhUMg5qwkWm0YApKO8fz9ItdNSAxjApyakBmFhWsgpqmO2hFdmOU%20chFr6SdHG0NiFRXMgkTlDMr9UB4qwv6RQ0tGo5SL/Yh+c+oaiJX/gXIZlSE2mXI5raCi6Q5as96B%200q36t/SjjO4Qa5VDuckQij1DuRFQEPaPHFqSMQKlXINE+lXuHRAbQbkzsRAZS7k1UNB0By3IPLBy%20ZH2UctUT6Wf5t0JsDeXGQiAqjVI/VYDc33Mol7X934/edVuHK2tEoAyI/ZZ+l90OQhV+olRaFMw9%20TLnbIDfOTbHsHfPvuSoMZUjkRwyAM80gdBvlHoapsCRKvQ0p5wIK/fryDU6UMY61DIjjdSD0NqWS%20wmDmJkplN4BMuY0USF/eKxxlzzwGyL4KEGmQTambYGY1pSZApua3NOV6o08kyqJBDJg1EJpAqdUw%20EZtFmYMRkLgyiWZcq5uibGpyjoEzAiIRBymTFQtj91CqKySu/50mXKuuQBkVtYcBlNMKIl0pdQ+M%20baXMWkj8NYPGXCuboMx6kQH1Q3mIrKXMVhiqV0AJdwuINUyjsc+bouy6nQG2GiIt3JQoqAcjj1Nm%20PcQqH6KhrNEOlF2Vf2Gg9YbIeso8DiMHKdMGQlFf0NDnjVGWvUSrLvz4+Wv/emxgh6t7P/jMK5v3%20naVVP8VAoA1lDsJAG8pshpDjTRrJGu1AWda2gJacWdm/HDw42s/8gdY8C5HNlGmD4l6gTGcIzaOR%20rxqjTAvbTQt+mtfVCSNNx+8ooLoLTSHQmTIvoLg0SmyD0BgaeSMKZdsjVLezGwQaLC+gso8gso0S%20aSimOWV6QuQ2Nw3McaBsq5pOVYcHQKLle1Q2AAI9KdMcRY2kxFGIVE5jcQUjUdZNo6K0B8Mh13Un%20Fe13QOAoJUaiqHWUmAKR1Swuuy/KurhzVOJ+thzU/P03qvkbBKZQYh2KcJyhxOUQ6MPiTl+HMm8y%20lWT2g7LGB6lkDwQup8QZBzy1psR2CFROYzHnWqPMq/AbVRxvBQsqvkclt0JgOyVaw1M8JUZAYDWL%20yeuBsm8CVWyvDkvCZlPF1xAYQYl4eNpIsfOVYK4Pi7sHZV/kaSpYFgmr7r5ABd1grtJ5im2EB+dZ%20ir0Bc5XTWMyTCAF/o4Jl8EI/N+VWQeANip114lJtKdEH5lazmCUIBRso92UkvDGRcpnlYK4PJdri%20UuMpllcepuq5WdR7ToSAyrmUSq4B76yl3FCYK59HsfG41CaKfQlzY1jUiUoIBQ9SKvuv8FLMt5Ta%20DIEvKbYJlzpKsakw9xWL6oWQsJ0y7gHwWt00yrhqwtxUih3FJaJcFOsGc0dZxCsICY3clJkFH3R0%20U+YxmOtGMVcULrqKYjlRMLeLnlIqIiSMoszP5eGLVymzFeaicih2FS4aQLGtENhMTz0RGt6mzIPw%20ScMLlDgfDXNbKTYAF02k2EQI/B89LEVocKZT4odw+GYOZW6EuYkUm4iLVlOsAwQiT/ISyRURGq6j%20TD/4qPLvlJgBcx0othoX7aJYeYjcz4ty2yFEPEGJ7fDZWErsgrnyFNuFi85S6ATERrj4p9y7ECo+%20oUR7+CwqmWKuOJg7QaGz+J9aFNsKiVtP8L/2tUGocJ6n2CHYYAYlboW5rRSrhULdKLYQMs4+c958%20bVonhI7GlJgJG7SjxFiYW0ixbij0IMUehVbUrZRoBxs40ii2BOYepdiDKDSFYr2gFTWGYmkO2OFl%20im2DuV4Um4JCcynWCFpRL1HsZdjiZor9DHONKDYXhRZT6HwYtKI+pdjNsEVkBsUqwlTYeQotRqE1%20FDoCrZhUCmVFwh5vUawtzB2h0BoU2kih76AVFU6x/bDJsxQbAHPfUWgjCn1GoW3Qioqj2EewySMU%20GwZz2yj0GQrtptB70IqqT7GVsEl/io2GufcotBuFEim0FlpRzSk2Aza5jmJPwNxaCiWiUBqFlkAr%206jqKjYJN6lFsBswtoVAaCmVQ6DloRd1Isdthk3A3hebD3HMUysCfHG4KPQ1TtWa9se2bWR3DEGr6%20Uaw97HKKQitg7mkKuR34QyzFxsJExMRM/ldSJ4SYARS7GnZJptCrMDeWYrH4QxzF4mFiLgvlP+FA%20SOlFsVthE0cuhV6CuXiKxeEPcRSLh7Hebl70FEJKR4o9AJtUo9i/YC6eYnH4QxzF4mEsiZfIbYFQ%208heKPQWbtKLYZJiLp1gc/lCJYvEwdCU9fIFQchnFXoJNelFsDMzFU6wS/hBNsQkwFE8PBREIIdUp%209i5sMpxiI2BuAsWi8ad8Ck2DocX01AQhJJpi38Imkyg2GOamUSgfhX6n0AswNIeebkIoyaTQKdjk%20ZYp1h7kXKPQ7CiVTaDkMTaKnIQgluynWCvY4RrF6MLecQskodJBCb8HQKHp6CKHkNYo9BVu0oliW%20A+beotBBFNpJoS0wNJSexiOUTKHYbtjiSYp9D4EtFNqJQh9TaAcMdaOn2QglgylRH3bYTbHXIbCD%20Qh+j0AYK7YOhK+jpVYSSqykxEjaoR4lnILCPQhtQaBWFUmCoHD19glBS3k2xj2GDkZQYCoEUCq1C%20oQUUKoiGoUx6OICQcoBieTXgu88p0QTmogsotACFZlGsJQyl08MPCCkvUOJF+Kw7JZIh0JJis1Bo%20IsUGwNA+evgIIaUvJfKawEeOPZRYDoEBFJuIQkMpNhGGltPDDISUii5KvAUf3UmZOyEwkWJDUega%20iq2CoUfo4XaElp2UaQ+fRB2nTC0IrKLYNSgUS7GdMFTlZ17icAxCy3TKbIdPxlLmIER2UiwW/3OC%20Qukw1ocXudojxHSlVH/4oMrvlJkHkXQKncBFWylWA8Zmuvkn1xiEmrATlPmlIbzm3EypthCoQbGt%20uGgBxfrARPdk/tehtgg9syi1tzy8NZdShyHSh2ILcNFois2DmQr9p21+7+nbohGCWlJugwPeuZdy%20kyAyj2KjcdFNFNsLzcD3lJsKr3S4QCl3I4jspdhNuKg+xdzVoBX3Dyr4O7xQ7xTlvoBINTfF6uMi%20RzbFBkIrrlY+5bJvgWX19lHBAxAZSLFsBy7xHcUWQTOwmgpcY2BRh5+p4HQMRBZR7DtcaiXFDkMz%20cGUBVSyLhBX3XqCK8RA6TLGVuNQwStSFZuBNKtleHcrC5lDJb7EQqUuJYbhUA0o8DM1Aa6pJag1F%20cR9QzWQIPUyJBvBwjGJfQzOykWryF9eGgqgxZ6jmXByEvqbYMXhaSokroBm4jqqyp1eEhOOuJKqa%20AaErKLEUnoZSYio0I69R2Zn4SIj0/J7K0ipCaColhsJTbUokOaAZqHWW6pJntHPAWIPRX9KCIRBy%20JFGiNor4gRJdoBkZTUvSXr45EkW1nvIdLfkEYl0o8QOKWkSJV6AZcX5HizLeevaR/tfVCwcc1f5y%208/BJS5JoUe6VEHuFEotQ1EBKnIuBZqS9m15xn0rOpXdmQCzmHCUGoqhqbkqMgmZoIQPsSDmIjaKE%20uxqK2U2JlAhoRqL3MqAuXA2xiBRK7EZxYyhzHzRDTTMZSI9A4j7KjEFxNV2U+NEJzdBQBtAbkHD+%20SAlXTRj4gDJDoBlbwoA5UhESQyjzAYwMpsx+BzRD0d8zQHKuhoRjP2UGw0jMOcr0g2asThIDwtUX%20Mv0ocy4GhpZRZq8TmrGmvzAQHoCMcy9llsFYN0rFQzNxbSb970lIxVOqG4w5kimTUQeaiZty6W8L%20IFUngzLJDpiYTqnXoZm5I5/+tTYMUq9TajrMNKNcD2hmeufQnxaFQaoH5ZrB1CeUSoyEZqZTOv1n%20CuQiEyn1Ccx1p9yT0Ey1SqOfFDwMBU9SrjsEdlLqfEtopi47Qr+4MBAKWp6n1E6I9KHcoXLQTFXd%20RD9IagcF5Q5Rrg9EHHsptwKaOcfYPNptQxxUrKDcXgeEBlHBXdAE2h2nrXIfhZK7qGAQxMISKZfZ%20FJpA5bdpo2NtoKRpJuUSwyAxnAoSoqGJDEmjTfJml4eS6AQqGA6ZiGQqeBmaUMV/u2iHz1tA0ctU%20kBwBqVFUMR6aWOuv6LNTd0HVeKoYBbnoJKoYBk3Mce9R+iRzdiWoGkYVSdFQ0Jsq8vtAk3AOPUCv%20/f5MFSjrk08VvaHkbarI6QRNxvG33fTK6QkVoK5TDlW8AzUNsqkivSU0uR6vZdMi9/YHYmBBy3Sq%20yG4ARROoJPUyaAoqDP/MTXVHJl8GSy5LpZIJUBVxkEpSW0FT0mDijjyqSFzQERa1SqWSgxFQ1pVq%200jtDUxR78792F1AkecXddWFZ53Sq6QoLVlFNTl9o6irfOnbJtlMsJnPPmimDL4c3+uZQzSpYUSOd%20alzDoVlU6bqB98U/NWfxmjeXzZs67v+G3FgXXhvuopr0GrDkIaqaAK3ETKCqh2CNYxNVLY2BViJi%20llLVJgcsqnqCqvY3h1YCmu+nqhNVYVmnfKrKHg4t4IZnU1V+J3jhcap7NRZaQMW+SnWPwxuOLVSX%202BpaALVOpLotDnileirVXZgaDS1AoqdeoLrU6vBSNxctOHYrtIC49RgtcHWD1ybTkg31ofld/Q20%20ZDK8F/YxLckaHwHNryLGZ9GSj8Pgg0p7ac2hQWHQ/CZs0CFas7cSfFI7iRYlDguH5hfhwxJpUVJt%20+OiKX2hV0kNR0GwX9VASrfrlCvjs2kxaljomFpqtYsek0rLMa2GDHrm0Lvs/PZ3QbOLs+Z9sWpfb%20A7YYVEBvpM35CzQb/GVOGr1RMAg2GU0vJYxtCs0nTccm0EujYZtp9NrJ1ffWh+aV+veuPkmvTYON%20ptIXRxYPauyEZoGz8aDFR+iLqbDVyAL6JvfghpnDOlSBJlGlw7CZGw7m0jcFI2GzO3Jph7PJB77+%20aP3KF2c8rXmY8eLK9R99fSD5LO2Qewds1z2DWimR0R1+0OY0tVLhdBv4RZOfqJUCPzWBn9RKoBb0%20EmrBbyptoRbktlSCHzkmuqgFMddEB/yr8wlqQetEZ/hd1feoBan3qiIAHOPyqAWhvHEOBEb749SC%20zvH2CJjK71ALMu9URiDd9yu1IPLrfQiwqkvd1IKEe2lVBF6HBGpBIaEDSoQzPoNaicuId6Kk1HmD%20Wgl7ow5KUs8j1ErQkZ4oYRH3H6FWQo7cH4GS5xyyn1oJ2D/EieDg6PcNtQD7pp8DQeSmz6gF0Gc3%20Idh0fN9NLSDc73dEMGo46TA1vzs8qSGCVrsFZ6j50ZkF7RDcIvtvyKXmF7kb+keiFKjyyJcuajZz%20fflIFZQaFXs/n+CmZhN3wvO9K6K0qTbwpURqPkt8aWA1lFZ171626yw1L53dtezuuij1anYZMXdT%20Yj41ZfmJm+aO6FITZUlEs76jnpg+f8W6D3fsSzqTS81D7pmkfV99uG7F/BlPjOrbLAKB8v/JmAKp%20rusHKgAAAABJRU5ErkJggg==%22%20x=%2222.178%22%20y=%2228.561%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cc7ce441-03ef-4af1-a4b5-3fc62d97c5d0",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 120
              }
            },
            {
              "id": "64464fb0-84cf-4bee-9a36-9bded32f6a6c",
              "type": "basic.output",
              "data": {
                "name": "rgbmode"
              },
              "position": {
                "x": 720,
                "y": 120
              }
            },
            {
              "id": "4abb07af-ade5-4c64-9b99-499421543b17",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 160,
                "y": 208
              }
            },
            {
              "id": "378faa26-e079-4c7d-91b3-339fb79813af",
              "type": "basic.output",
              "data": {
                "name": "testmode"
              },
              "position": {
                "x": 720,
                "y": 208
              }
            },
            {
              "id": "3b813806-335f-43fb-8e25-8ebbe19b722a",
              "type": "basic.input",
              "data": {
                "name": "sig_in",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 288
              }
            },
            {
              "id": "4d59374a-af00-4e3d-9a38-fcab8a534b71",
              "type": "basic.output",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 720,
                "y": 288
              }
            },
            {
              "id": "017baafa-379d-4bcf-b77b-a809fee8b87d",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\r\n//   Felipe Machado Sanchez\r\n//   Area de Tecnologia Electronica\r\n//   Universidad Rey Juan Carlos\r\n//   https://github.com/felipe-m\r\n//\r\n//   mode selection\r\n//\r\n/*\r\nmodule mode_sel\r\n  #(parameter\r\n    c_on    = 1'b1\r\n   )\r\n   (input        rst,\r\n    input        clk,\r\n    input        sig_in,\r\n    output reg   rgbmode,\r\n    output reg   testmode,\r\n    output [2:0] rgbfilter);\r\n*/\r\n\treg   rgbmode_r;\r\n\treg   testmode_r;\r\n\t// reg   [2:0] rgbfilter_r;\r\n\r\n  reg    [20-1:0]  count_10ms;  // ~1.05 million count -> 10 ms\r\n  reg    [8-1:0]   count_2sec;  // count for 2.5 seconds aprox (256 x 10ms)\r\n  wire           pulse_10ms;\r\n  wire           pulse_1sec;\r\n  wire           end1sec;\r\n\r\n  reg    [1:0]   mode;\r\n  reg    [2:0]   rgb_filter;\r\n\r\n  assign rgbfilter = rgb_filter;\r\n assign rgbmode = rgbmode_r;\r\n assign testmode = testmode_r;\r\n  // count around 16 ms approx\r\n  always @(posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      count_10ms <= 20'hF_FFFF;\r\n    end\r\n    else begin\r\n      if (sig_in) begin\r\n        if (count_10ms == 0) begin\r\n          count_10ms <= 20'hF_FFFF;\r\n        end\r\n        else \r\n          count_10ms <= count_10ms - 1;\r\n      end\r\n      else\r\n        count_10ms <= 20'hF_FFFF;\r\n    end\r\n  end\r\n\r\n  assign pulse_10ms = (count_10ms == 0) ? 1'b1 : 1'b0;\r\n\r\n  // to see if it has been pulsed for more than a second\r\n  // the count is of 2 seconds to give time to release the button\r\n  always @(posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      count_2sec    <= 8'b0000_0000;\r\n    end\r\n    else begin\r\n      if (sig_in) begin\r\n        if (pulse_10ms) begin\r\n          if (count_2sec == 8'b1111_1111)\r\n            count_2sec    <= 8'b0000_0000;\r\n          else\r\n            count_2sec <= count_2sec + 1;\r\n        end\r\n      end\r\n      else \r\n        count_2sec  <= 8'b0000_0000;\r\n    end\r\n  end\r\n\r\n  assign end1sec = (count_2sec == 8'b0111_1111) ? 1'b1 : 1'b0;\r\n  assign pulse_1sec = ((end1sec==1'b1) && (pulse_10ms==1'b1)) ? 1'b1 : 1'b0;\r\n\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      rgb_filter <= 3'b000; // no filter\r\n    end\r\n    else begin\r\n      if (pulse_10ms && count_2sec == 0) begin\r\n        case (rgb_filter)\r\n          3'b000: // no filter, output same as input\r\n            rgb_filter <= 3'b100; // red filter\r\n          3'b100: // red filter\r\n            rgb_filter <= 3'b010; // green filter\r\n          3'b010: // green filter\r\n            rgb_filter <= 3'b001; // blue filter\r\n          3'b001: // blue filter\r\n            rgb_filter <= 3'b110; // red and green filter\r\n          3'b110: // red and green filter\r\n            rgb_filter <= 3'b101; // red and blue filter\r\n          3'b101: // red and blue filter\r\n            rgb_filter <= 3'b011; // green and blue filter\r\n          3'b011: // green and blue filter\r\n            rgb_filter <= 3'b111; // red, green and blue filter\r\n          3'b111: // red, green and blue filter\r\n            rgb_filter <= 3'b000; // no filter\r\n        endcase\r\n      end\r\n    end\r\n  end\r\n\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst) begin\r\n      mode <= 2'b0;\r\n    end\r\n    else begin\r\n      if (pulse_1sec) begin\r\n        if (mode == 2'b11) \r\n          mode <= 2'b0;\r\n        else\r\n          mode <= mode + 1;\r\n      end\r\n    end\r\n  end\r\n\r\n\r\n  always @(*)\r\n  begin\r\n    case (mode)\r\n      2'b00: begin  // RGB Normal\r\n        rgbmode_r = 1'b1;\r\n        testmode_r = 1'b0;\r\n      end\r\n      2'b01: begin  // YUV Normal\r\n        rgbmode_r = 1'b0;\r\n        testmode_r = 1'b0;\r\n      end\r\n      2'b10: begin // RGB Test\r\n        rgbmode_r = 1'b1;\r\n        testmode_r = 1'b1;\r\n      end\r\n      default: begin //2'b11: begin  // YUV Test\r\n        rgbmode_r = 1'b0;\r\n        testmode_r = 1'b1;\r\n      end\r\n    endcase\r\n  end\r\n\r\n// endmodule\r\n\r\n",
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
                      "name": "sig_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "rgbmode"
                    },
                    {
                      "name": "testmode"
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
                "x": 320,
                "y": 112
              },
              "size": {
                "width": 312,
                "height": 248
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "017baafa-379d-4bcf-b77b-a809fee8b87d",
                "port": "rgbmode"
              },
              "target": {
                "block": "64464fb0-84cf-4bee-9a36-9bded32f6a6c",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "017baafa-379d-4bcf-b77b-a809fee8b87d",
                "port": "testmode"
              },
              "target": {
                "block": "378faa26-e079-4c7d-91b3-339fb79813af",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "017baafa-379d-4bcf-b77b-a809fee8b87d",
                "port": "rgbfilter"
              },
              "target": {
                "block": "4d59374a-af00-4e3d-9a38-fcab8a534b71",
                "port": "in"
              },
              "vertices": [],
              "size": 3
            },
            {
              "source": {
                "block": "cc7ce441-03ef-4af1-a4b5-3fc62d97c5d0",
                "port": "out"
              },
              "target": {
                "block": "017baafa-379d-4bcf-b77b-a809fee8b87d",
                "port": "rst"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "4abb07af-ade5-4c64-9b99-499421543b17",
                "port": "out"
              },
              "target": {
                "block": "017baafa-379d-4bcf-b77b-a809fee8b87d",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "3b813806-335f-43fb-8e25-8ebbe19b722a",
                "port": "out"
              },
              "target": {
                "block": "017baafa-379d-4bcf-b77b-a809fee8b87d",
                "port": "sig_in"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "5d5e7185b7816de87f0b4af031af69180b756d9d": {
      "package": {
        "name": "top_vga_display_buffer",
        "version": "1.0",
        "description": "Shows the content of a memory (buffer) on a VGA. Just 80x60. 100MHz clock, includes synch",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22286.52%22%20height=%22194.583%22%20viewBox=%220%200%2075.808344%2051.483417%22%3E%3Cg%20transform=%22translate(12.7%20-7.992)%22%3E%3Cimage%20y=%2217.792%22%20x=%22-12.699%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20preserveAspectRatio=%22none%22%20height=%2241.684%22%20width=%2241.684%22/%3E%3Cimage%20transform=%22rotate(13.946)%22%20width=%2235.231%22%20height=%2235.231%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzt3XuwXVWd4PHvzQvyAqVAQwQiKAoSHqZ5tMECKaUFNT7adrTFRrS6Rqd9YY+KUMyMFoxK06UO%20IDCCDjJqtWjTgI0g0NJqFAYEBCU+EAkiJAECQfLohCR3/ljnwE24j3PuWb/9/H6qdl1L7l37t/fK%20/q3f2XuftUCSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmS%20JEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmS%20JEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmS%20JEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmS%20JEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEnSNobKDmAUc4Ddgfmdn91tHjCjxLgkSZrI%20JmAlsGLE9lDn59oS43qWsguAWcBfAG8GFpMG+jmlRiRJUoy1pELgp8AVwHXA+rKCKaMA2A14A2nQ%20PxaYWUIMkiSVbQNwPakY+FfgkSJ3XlQBsAtwEmnQPxKYUtB+JUmqg63AT0jFwCXAY9E7jC4AdgQ+%20BJwGPCd4X5IkNcEa4DPAucB/RO0kqgCYArwLOAPYK2gfkiQ12R+A/wZ8nXSHIKuIAuC1wFnAwQFt%20S5LUNncCpwDfz9lozgLgJcCXgNdkbFOSJCU3AB8AfpujsVwFwHHAPwE7Z2pPkiQ92xPAO4BrB21o%206uCx8PfA/8Gv80mSFG1H4K9JcwrcNEhDgxQAOwAXk55L+LU+SZKKMYX0vt0LSXcCtkymkck+Ang+%208C/AKyb595IkaXA3AW8BVvX7h5MpAA4BrgL2nMTfSpKkvB4A3gj8vJ8/6rcAWADcSprOV5IkVcMj%20wGHA/b3+QT/P7mcDV+LgL0lS1exGGqNn9/oHvRYAQ8ClOLmPJElVdTBprO7p7n6v3wL4NPD+yUYk%20SZIKsT+pAPj3iX6xlwLgr4DzKGfpYEmS1J+jgLuBZeP90kSD+iGk5QlnZQpKkiTFWw8cyTjfDBiv%20AJhOqiD2zRyUJEmKdw9wAPDUaP9xvJcA34eDvyRJdbUvaSwf1Vh3AOYC91L+V/42ASuAhzo/R61i%20JEmqiOnA7sD8zs8Z5YbDI8CLgCd7/YMzgeEStrXAPwN/A8zDFw8lSfU1RBrLTgQuJ41xZYytZ/Ya%208HxgXcHB3QH8Ja4oKElqrpmkse4Oih1j15HG9gldXGBQy4F34Sd9SVJ7DJHGvuUUN95ePFFQC4HN%20BQXzWdKSwpIktdEOpLGwiDF3M2mMH9NlBQSxAXhn/+dJkqRGeidpbIwefy8bK4CZxD/7XwEcMdkz%20JElSQx1BGiMjx+B1jPGu3ZLgHT8JHDjQ6ZEkqbkOJI2VkWPxktF2HPny35axdipJkp62hDRmRo3H%20z3oZcAqwKnCHn8hxViRJaoFPEDcer2K7WYAXB+7sxmynRJKkdriRuHF58cgdnRW0k63AYfnOhyRJ%20rXAYaQyNGJvPGrmjXwft5FsZT4YkSW3yLWLG5l93d7BX0A42kxYgkCRJ/XsRcZPz7TWFVABEuIm0%20oqAkSerfvaSxNMJeU+hxgYBJuCqoXUmS2iJqLJ1vASBJUnXVrgD4HfCbgHYlSWqT35DG1NzCCoBf%20T/wrkiSpBxFjalgB8FBAm5IktVHEmGoBIElSxVkASJLUQmEFwNyAhp8MaFOSpDaKGFPnTpn4dyRJ%20UtNYAEiS1EIWAJIktZAFgCRJLWQBIElSC1kASJLUQhYAkiS1kAWAJEktZAEgSVILWQBIktRCFgCS%20JLWQBYAkSS1kASBJUgtZAEiS1EIWAJIktZAFgCRJLWQBIElSC1kASJLUQhYAkiS1kAWAJEktZAEg%20SVILWQBIktRCFgCSJLWQBYAkSS1kASBJUgtZAEiS1EIWAJIktZAFgCRJLWQBIElSC1kASJLUQhYA%20kiS10LSyA1BtTAEWAC8D9u/83AvYqbPN7WxzgKGSYpSabBhYCzzZ2f7U2f4ALAN+1fl5P7C1pBhV%20IxYAGss04AjgNcCxwCJgZqkRSe02xDOF9ng2ALcD1wM3AP8P2BwbmurIAkAjzQbeDrwZeBUTJxpJ%201TMTOLKzfYp0t+DfgSuAbwHrygpM1eI7AIL0Sf8iYAXwFWAJDv5SU8wlXdNfIV3jF5GuebWcBUB7%20TQXeDfwCuBn4Wxz0paabS7rWbyZd++8m5QK1kAVA+0wBTiC9LHQJsLDUaCSVZSEpBywj5QTHg5ax%20w9vlrcDdwNeBl5Qci6RqeAkpJ9xNyhFqCQuAdlgAXA18B9iv5FgkVdN+pBxxNSlnqOEsAJptKvBR%20UmX/upJjkVQPryPljI/i+wGNZgHQXAtIL/p8nvT1Pknq1WxS7rgZ7wY0lgVAMx1KunAPLTsQSbVm%20LmkwC4DmeRPwQ2Be2YFIaoR5pJzyprIDUV4WAM3yEeByYFbZgUhqlFmk3PKRsgNRPhYAzTAFOAf4%20IvappBhTSDnmHMwzjWAn1t9s0hzfHyo7EEmt8CFSzvHl4pqzAKi33YEfkeb5lqSiLCHlnt3LDkST%20ZwFQXzuTXsxZVHYgklppESkH7Vx2IJocC4B6GgL+L7Bv2YFIarV9SbloqOxA1D8LgHo6HW/7S6qG%20JaScpJqxAKif44BPlR2EJI3wKVJuUo1YANTL3sA3sd8kVcsUUm7au+xA1LtpZQegns0kTcTx3LID%206dgCrAD+uN22svPfJOU1lTQr3x7bbbtTjUV7nkvKUYuBDSXHoh4NB2zvKPQI2uFrxPRVP9tq4GLg%20WCwepaqYRromLyZdo2Xnia/FHm4rvYOYvrIAqIG/o7yL+XHgq6Tne9OjD1TSQKaTrtWvkq7dsvLG%2030UfaMtYALTUQmATxV/AG4AzcF0Bqa5mka7hDRSfPzaRcpfysABoqRso/uL9F3yZR2qKvUnXdNF5%205IYiDq4lLABa6C0Ue8EuIz1LlNQ8x5Ku8SJzylsKObLmswBomR2AeynuQv0qPuOXmm466VovKq/c%20S8plGkxIAeD3yavr74F9CtrXmcB7gacK2p+kcjxFutbPLGh/+5BymSrKOwDVM5tivs6zGXh/Qcck%20qVreT8oB0XlmNS4dPCjvALTI3wK7BO9jA/BW4MLg/UiqpgtJOSB60p5dSDlNFeQdgGqZBiwntiLf%20gi/7SUqOJeWEyJyzHCcPG4R3AFri7cCC4H38D+D64H1IqofrSTkh0gJSblPFeAegWu4gthL/Hq7d%20LWlbQ6TcEJl77ijsaJrHOwAtcCBwSGD79wPvInW+JHUNk3LD/YH7OISU41QRFgDVEnnnZBPwNuCx%20wH1Iqq/HSDliU+A+vDtcIRYA1RJ5cXwOuDWwfUn1dyspV0SxAKgQC4DqOJy4iX+eAL4Q1LakZvkC%20KWdE2IeU61QBFgDVEVkZfxFYE9i+pOZYQ8oZUbwLUBEWANUR9b38J4i9mCU1zxeJuwvgHCQVYQFQ%20DbsCBwS17ad/Sf2KvAtwACnnqWQWANVwFDHfzffTv6TJiroLMETKeSqZBUA1vCqo3cup7qf/OaQk%20cFTnf1fZC4DjgYXA1JJjGc9UUozHk2KuMvu/+taQckiEVwW1qz45E2D57iKmH95W5EH04NXApcAy%20tp17fEvn/7u08ztlmwacDHwXWMG253QdsBT4PDC/rABHmE+KZSkptpGxriAdw8lUYx52+79+3kZM%20brqryINogJCZAAlq1AKgdzOIWYjjKWDnAo9jPHOAC+g99gso71PhQuC2HmIcBh4HTiwnTOjs+/FR%204hptu410bGWw/+trZ1IuyZ2ftpByn3pjAdBQ+xHTBz8q8iDGsRj4Pf3H//vO3xbpFGDjJGK9imJf%20atq1s89+49xIOsYi2f/19yNictR+RR5EzVkANNQSYvrgk0UexBjmAY8y+WN4tNNGEU4YIM7uIFCU%20yQz+I7cTCorT/m+GTxKTo5YUeRA1ZwHQUB8lpg8OLvIgxjDoQFVUYp0HrM4QaxG3g0/MEOdqihlY%207f9mOJiYHPXRIg+i5iwAGup88p//PxV6BKM7iXzHc1JwrFdmivNxYl8Mm0/vz/wn2q4MjBPs/6b5%20E/nz1PmFHkG9WQA01DXkP/+/LfQIRvcg+Y7nwcA4D88Y5zDp7fAon88ca+Sc7PZ/s/yW/HnqmkKP%20oN5CCgDnAShfxJv6KwPa7Mfu5P0kNL/TZoTcg2DkoFqXWO3/5onIKVX5llJrWQCUL+LrTqsC2uzH%20opq0CXBo5vZeTsxkMVM7beeU+9i77P/micgpVZ8AqvEsAMo3N6DNsu8AtHkAmAXsn7lNOm3Oytym%20BUB9+r9sETklIvepDxYA5Yu4CMq+A7BnTdqMarfNbUa1a6zlisgpFgAlswAoXxPvAPyyJm1CzJSk%20bW4T7P8mTnPrHYAGsgAoX8QqgMMBbfbj9pq0CfCzzO2tJOat9QfJn4RzH3uX/d88ETklIvepDxYA%205Vsb0ObzA9rsx8+BrRnb29ppM0LuASBqUI1oOypW+795InJKRO5THywAyhdxERQ1fepY1gK3Zmzv%20VuKSxVJgU8b2/i1jW5FtbyIdewT7v3kicooFQAVkn1wAJwLqxzLyn//LCj2C0R3E5BZW2X7b2Gkr%200mkZ4hwmrSIXuezuNHpfqW6i7bTAOMH+b5rLyJ+nlhV6BPXmTIANdQv5z39VVgI8lcGP5dQC4pzK%204P2wkWKW213I4APrLRTzXXX7vzkiVgS8pdAjqDcLgIa6jvznvwpTAUNKrEuZ/HEspbhJVfYH1g8Q%20a5HL7J4yQJzrKe576vZ/c0RMBXxdoUdQbxYADXUh+c9/FRYD6poFnEN6kavX+Ld2/ib3xDcT2Z/+%20PwmuprjldUc6gf5XsLuF4iepsf+bIWIxoAsLPYJ6swBoqI8R0wd7FHkQPTgGuI+J476v87tlmUp6%20JtzLbfYrKfeFy3n0tpLdRtIxlTlFrf1fX3sQk6M+VuRB1FxIAdDUF1bq5HdB7R4C/DGo7cm4kfSM%209GjS9KvdDdJXp7rbD4F1ZQTYsQX4DPAN4JU8E+dBwAM8E+ctlP8McyXwJtICNIfzTKx7kiaj6ca6%20FLi/pBi77P/6OiSo3ajcpz5EVHbeAejdQmL64PQiD0JSY51OTI5q8kuTubkccEPdS+qM3KKqdknt%20EpFLhkm5TyWyACjfBmJuheVeOlZSO0Xkkt+Rcp9KZAFQDRHTnO4N7BTQrqT22ImUS3KLmtpZfbAA%20qIY7AtocAg4OaFdSexxMzKI9ETlPfbIAqIaoatj3ACQNIiqHeAegAiwAqiHqYvA9AEmDiMohFgAV%20YAFQDSuAhwPa9Q6ApEFE5JCHSTlPJbMAqI6IZ2IHANMD2pXUfNNJOSQ3n/9XhAVAdUTcEptB8XO/%20S2qG/Uk5JDdv/1dEG6cCHgKeB8zvbAAPdbaHiZmUpxeRLwLeFdS2pOZq4guAVc3/pWhDATAE/Dnw%20ZmAJsC9jH/dm4B7gu8AVwM0U9w8i8kXAS4PaltRcTXgBcAg4gpT/30h1839pmroWwC7A2aSXTSZ7%20HCs6bexSQLxTSIug5O6LGwuIXVLz3Ej+fLSOYh491y3/T8TlgHs0EzgFWDNKXJPd1nTanBkc+00Z%20Y+5ujwfHLKmZHid/PropOOY65//xWAD04GjSkp0RxzTcafvowPgvCIp7QWDMkppnATG56ILAmOue%20/8fjaoATeB9wPbBH4D726OzjfUHtOyGQpCqo2/P/JuT/wjWhAJgGnAdcSDHfeZ/e2dd55H+J0imB%20JVVBXb4B0KT8X4qIWyVFPgI4L+gYetnOy3wsM0lvouaO84rMcUpqtivIn4c2k/85epPy/3h8B2AU%207wuKv58t9+2gZQExLs8co6RmW07+PLQsc4xNzP9jsQDYztHApqD4+9k2kffFkG8GxfncjDFKaq7n%20EpODvpkxxqbm/7H4EuAIM4GvU4157qeTYsl1a8v3ACSVqerP/5uc/wtV15cYPkzs25792oMU01kZ%202opaKOMQmj0p0O7Aos62J/BL4HZS0llbYlzbmwq8lGdihRTn7cBvgC0lxTWaOaR/N4uAhaSvQXVj%20rdpqbvZ/PlEFQK7c1uT8X7iI2yKRjwB2Ie8kD7m2NeSZMWq3oPi+liG2KjoJeJCxj3sLaUrPg0qK%20r2su8GXGn+1xXed35pYUY9dBpHO2hbFjfZB07st2EvZ/bl8jJgftliG2puf/sfgOQMfZQTHn2M7O%20dIzjJbTJbndmiq0q5gFX0fvxbwROJX0CK9pRwH19xHpf52+KNpV0jjb2EetVpL4omv0f584x4hpk%20ezBTbG3I/6OxACAt7DDI3M7R24pOjIO6OiC2p4AdMsRWBYuBR5nceVgKzCow1lMZ/5P0WNuWzt8W%20ZRbp3EzmnD5K6pOi2P9xdiDlitz55+oMsbUl/4/GAgB4RVC8ObdXZDjOM4NiW0T9zQF+z2Dn4ZyC%20Yj2KySX/7raF4j4JnjNAnMOkPplTQJz2f6xFA8Q73nZmhtjakv9H47cASEs6Vl2OGP0mwNjOBvYe%20sI0PAsdkiGU8c0nPUge5xqZ02oh+JnwM6ZwMYm9ib4F22f+xqvwNgLbk/0JFVEFRdwAiJsnJveWY%207OLFQbEV9cknyqvJdy7uA2YHxvrljLF+OTDO2fT3fHqi7dWBsdr/8Qa9EzTW9uIMsbUl/4+m9Y8A%20hoh5NpV7e4rBnwMNAX8KiO3HA8ZVtkvJez5eFxTnVMZ/27vfbR1xL6+9LmOcw6Q+imL/x/txxri7%2025/IkxPbkv9H0/pHAM+jHvMWTCPFOohh4K4MsWzvIOJeUinCoRVvr+ul5H3RbFanzQh1OacRbdv/%202xoi5uuSd5Fy2iDalP8LU6cCYH7ZAfQhR6wREwLtBOwT0G4R5pA/CUYNABEvW0a9wJn7HLyUmJcB%207f94+5ByRG45clnb8n8hLABi5IjVFwG3tYj8/14dAPKfgynEHb/9H6vKLwC2Lf8Xok4FQNtEFQAv%20D2pXUr1F5YaoXKYB1akAeKjsAPqQI9ZfktbPzq2udwBuB7ZmbvNnmdvrur0mbUL+c7CVuOO3/2NF%205IbNpFw2qLbl/0JYAMTIEetG4FcZ2tleXQuAtaTFUnJyAMh/Dn5DzOI79n+8iNzwK1IuG1Tb8n8h%206lQAPEzMJ+LcNpNizSHi1tkLgF0D2i1C7oQdNQD8Blifsb315B/8uupyTiPatv+fsSspN+SWK4e1%20Mf+Hq1MBMAzcU3YQPbiHwb/y0uWLgNvKuaLhcuCHGdsbaQvwjYztfYO4ZWJ/SDoXuUSuOmn/x6ny%20C4DQzvwfrk4FAMB3yw6gBzlj9EXAbf0bcGGGdoaB95ImWInyX8kzsC7vtBVlHelc5EhaF5L6KIr9%20H6cOLwC2Lf8XImI2JBcDymOXoBhzfjopmovBxHAxoPzq1P/fGCDO8bZdMsbYtvw/UuunAoZ2Lgd5%20f0Ccd2eOsWguB5ufywHHqEv/3z2JGCfa7s8cYxvzf5cFQMfZQTHn2CJWQ7syIM7NwMyAWIs0D7iK%203o95IymhFjWn+khH0d+CO/dR/DKwkM7NqaRz1WusV5H6omj2fz4zSTkhd565MiDWtuX/LguAjl2A%20NUFxD7KtIe/trq5PB8V7eECsZTgJeJCxj3MLcDMxc5z3Yy5pVbfxFolZ1/mdIpd/Hc1BpHM23ifX%20B0nnvmwnYf8P6vBxYhpk+3RArG3L/10hBUAdFlfY3mPAZ4HPlR3Idj5Lii23yG8C3BLUdpEu6Wy7%20k6ZLXQTsSZp85HbS+Yv4Xnq/ngT+M/BfSHPad2OFFOftpK96Rb/t3Yu7gD8nPW8/hBTnQuABnol1%20RWnRbesS7P9BVf0bACO1Lf+Hi6iGIu8AQLpl9UBQ7JPZHiDulvoLg2I+PyheSfVyPjE55oVB8bYp%20/3e1fjngkTYA7yKtvVy2p0ixbAhqfznp9lJudZ0LQFJeEblgDXnnlxipTfk/VF0LAEiTeHyo7CBI%20MURNKNJ1Z0CbB1Hv/pc0uCnEvB8RkbNGalP+D1P3AeB/A18qcf9f6sQQLeJZ2mxg34B2JdXHvqRc%20kFsRKwC2Jf+HqXsBAHAy5fwj+FJn30W4I6hdHwNI7RaVA6Jy1vbakP/DNKEA2Ax8EHg/xTwTeqqz%20rw9S3OIUrgkgKUKdvgEwmjbk/1ARb0VGfwtgLEcT+3boA519FG06/U3O0ut2bZEHIalyriV/XtlI%20yllFa2r+BycC6tlM4BTyThaxptNmmbPn3TFKXINuKws9AklVs5L8eaWo2/+jaWr+twDo0y6kqRkH%20mTt6RaeNyBmeevVVYvqqjGlcJZVvHjE55atFHsQYmpb/LQAmaYi0QtNZwDLSM5yx4n6q8ztndf4m%20amGHyfgwMX11XJEHIakyjiMmp3y4yIOYwBBpVsvPUe/871TAkzQM3NTZTiF16vOA+Z0N4KHO9nDn%2096so8kVA3wWQ2qfuLwD2Ypi0FsTNwCepb/4P0YYCYHvDwKrOVuazqn7dSYo9d1X68sztSaqHiGt/%20mPhJgAZR1/wfoglfA2yLJ4iZWtOvAkrtFHHtLyflKtWABUC9RFSsLyZmJjBJ1TWbdO3n1vpP1XVi%20AVAvEc/WouYCl1RdUWuBVOn5vyZgAVAvUReX7wFI7RJ1zVsA1IgFQL04JbCkHNrwDQBNwAKgXh4A%20Vge0awEgtUvENb+alKNUExYA9RNRYR8ITA1oV1L1TCVd87n56b9mLADqJ+Ii2xHYL6BdSdWzH+ma%20z80CoGYsAOrH9wAkDcLn/wLaORNg3UV9z/YQ4BtBbXfNJi2neeiIDeBnI7YfAuuC4+jFAuCVPBPn%20QaTnm904b+lsVXB4Z+vGuidwF8/EuhS4v7TonmH/V0NUAeAcADXU9MWAmmYasIH8fXZ9cNzHAPf1%20EMd9nd8ty1TgNNKa5hPFeiXlrqY4rxPDRHFuJB1Tme952P/VcT3588cG/EAZydUA9bRbyd9njwTF%20Ogs4B9jaRyxbO38zKyimsexP+lTXz3lbDZxQcJx09rm6z1hvIR1jkez/6nmE/Pnj1kKPoH0sAPS0%20i4jptz0yxzmVdPt5svEspbhPrfsD6weI9ZSC4qSzr8nGuZ7iigD7v3r2ICZ3XFTkQbSQBYCe9gFi%20+u0NmeM8NUNMp2aOaTRT6f+T3/bbRmBhAbEupLfb0+Ntt1DMwGr/V88biMkdHyjyIFrIAkBPW0xM%20v52eMcaDGHyg6ibW6LUKTssQ5zBwG7HPQad19pEj1tMC4wT7v6pOJyZ3LC7yIFrIAkBPm0N/z1R7%203b6TMcabM8Z1c8a4treAPANVdzs5MNaTM8a5kXTsUez/avoO+fPGVlJOUpyQAsB5AOppLfC7gHZz%20LRAyBzgsU1t02opKMK8EZmRs79UZ24psewbp2CPY/9UVsQjQ70g5STVjAVBfEZNu7A3slKGdQ8j7%20b2sKcd9dPnTiXym1vci2o2K1/6tpJ9I1npsTANWUBUB9RUy6MQQcnKGdRRnaKKJNyJ+w5wEvyNwm%20nTZzf+c8arCy/6vpYNI1npsTANWUBUB9VXlK4Ii3oaPesI54wazNbYL9H/3S4mQ5BbC2YQFQX1EX%20XY5nhBFLgkYtM1qXWOvSZlS7xjq4iOf/YAFQWxYA9bUCeDig3RyfEm7P0EYRbUKa1z2n9cCvMrdJ%20p831mdvMfexd9n81RdwBeJiUi1RDFgD1FvHs7QBg+oBttHkAuAPYkrlNOm3m7m8LgPr0/6Cmk67t%203Hz+X2MWAPUWcettBoNPFbsCeChDLF0PEfcpI/eKbpErxNUlVvu/evYn79cdu7z9X3PZJxfAiYCK%20EjU71LszxHZSxnhOyhDPeHpZUa+X7XFgfmCc8zv7yBHrlYFxgv1fNe8mJleY64vhTIB6lv2I6b9L%20MsV3VYZYrsoUy3jm0f/KeqNtJxYQ64kZ4lxNMcvY2v/VcQkxuWK/Ao+hzSwA9CxTgHXk778HM8U3%20D3h0gDgepbj11k8YIM6iBqquQQfWopavtf+r40Hy54l1+Bi5KBYAGtVNxPThyzLFtxj4/ST2/3uK%20X2DkFCY3L/xVwK4FxrkrkysCNlL8srX2f/leRkyOuKnIg2g5CwCN6nxi+jDnoiZzgAv62PcFlLe4%20yEJ6X3Hvccq97Xsivb8TcBvlLVdr/5cr5yJSI7fzizyIlrMA0KjeSkwfXh0Q66uBS4FlpK9Kdfe1%20pfP/XUo1FlOZRkqa3yW9fT7yvKwDlgKfpxovfM0nxbKUZz8OWkE6hpOpxjK19n85riYmR7y1yINo%20OQsAjeo5wGby9+G6TttR5gBHdbaqLyX6AuB40qfDqSXHMp6ppBiPp7rz0XfZ/8V4DjHvCW0mNj9o%20WxYAGtNSYvrxtCIPQlJ2pxGTG5YWeRCKKQB8g7MZvh/U7oeBHYPalhRrR+AjQW1H5RwVyAKgGa4N%20avf5wHuC2pYU6z3A84Lajso5KpAFQDPcRvrOdISPUb/nnlLbTSVduxEeJeUc1ZwFQDNsBa4Pansf%20ips4RlIeJ5Cu3QjXk3KOas4CoDkib8l9geJmZJM0mHmkazaKt/8bwgKgOa6j87WOALsAFwW1LSmv%20i0jXbIRhUq5RA1gANMdKYibv6XoD8N7A9iUN7r2kazXK1aRco4ZwHoDmOJKY/uxuTwB7FXY0kvqx%20F+kajcwBRxZ2NBrJeQA0oZ8APw5sfyfgcmDnwH1I6t/OpGtzp8B9/JiUY9QQFgDN89ng9v8M+B4w%20O3g/knozm3RN/lnwfqJzi0rgI4DmuYPY24DDwA9wlkCpbDuSrsXo6/2Oog5Io/IRgHr2uQL2cQzp%20luOMAvYl6dlmkK7BYwrYVxE5RSXwDkDzTAXuIf5TwTBpUZA9ijksSR1wQklrAAAI/ElEQVR7ELcI%202PbbPTgbaNm8A6CebQH+oaB9HQn8HHh9QfuT2u71pGuuqDfy/4GUU9RA3gFophkUdxdgmDQ16NnA%20tCIOTmqhaaRrbCvFXdf34GO+Kgi5A0BQoxYA1fAKYDPFJYth4GfAa4s4OKlFXku6toq8ljeTcojK%20ZwGgSTmDYpNGd/spcGwBxyc12bGka6mMa/iMAo5PvbEA0KRMp/hPDiO3pcCbgFnRByo1xCzSNVPU%20S36jbT8j5Q5VgwWAJm1/YAPlJZPhzv6vAT5I3DKlUl3tQ7o2rqEa1+r+sYerPoUUAL6w1Q6/Ak4B%20/leJMewIHNfZzgXuA/5AWlhkJbCq83NDWQFKBZhJWq73+Z2f80hz+O9dZlDbOYWUM9RwFgDtcS6w%20BHhN2YF07E21kp4kuIGUK9QCzgPQHsPAe4A1ZQciqZLWkHLEcNmBqBgWAO3yR9LLRevLDkRSpawn%205YY/lh2IimMB0D4/Ij0K8Fm7JEi5YAkpN6hFLADa6QfAW4CNZQciqVQbSbngB2UHouJZALTX94G3%20ApvKDkRSKTaRcsD3yw5E5bAAaLergbeTpvyU1B6bSdf+1WUHovJYAOgK4J242pfUFltI1/wVZQei%20clkACODbwF8Da8sORFKotaRr/dtlB6LyWQCo69vAIuC2sgORFOI20jXu4C/AAkDbugdYDPwjTgYi%20NcUw6ZpeTLrGJcACQM+2Cfg4ac7+lSXHImkwK0nX8sfxGz/ajgWAxnIdcBDwvbIDkTQp3yNdw9eV%20HYiqyQJA43kEeD3wEXxBUKqLtaRr9vWka1galQWAenEOsAA4AxcTkqpqDekaXUC6ZqVxWQCoV48B%20/x14IXA6sLrUaCR1rSZdky8kXaOPlRqNasMCQP16AvifpE8ZHwdWlRuO1FqrSNfgAtI1+US54ahu%20LAA0WetIXy3aG/gw8Ityw5Fa4xeka25v0jW4rtxwVFfTyg5AtbcBOLezvYD0laPjgdcAO5cYl9QU%20TwA3ANcA1wIPlhuOmsICQDk9CHyls00DXkEqBo4HDgaGygtNqo1h4E7SgH8NcBMu2KUAFgCKshn4%20cWc7DXg+8KLOz3nj/JxZRrBSQTaQJudZNc7Pe/HdGhXAAkBFWYVJTZIqw5cAJUlqIQsASZJayAJA%20kqQWsgCQJKmFLAAkSWohCwBJklrIAkCSpBayAJAkqYUsACRJaiELAEmSWsgCQJKkFrIAkCSphSwA%20JElqIQsASZJayAJAkqQWsgCQJKmFLAAkSWohCwBJklrIAkCSpBayAJAkqYUsACRJaiELAEmSWsgC%20QJKkFrIAkCSphSwAJElqIQsASZJayAJAkqQWsgCQJKmFLAAkSWohCwBJklrIAkCSpBaaAjwZ0O7c%20gDYlSWqjiDH1ySnAQwENzw9oU5KkNooYUx+yAJAkqdosACRJaqFaFQD7BbQpSVIbRYypYQXAi4GX%20BrQrSVKbvJQ0puYWVgAAvDGoXUmS2iJqLLUAkCSpwsIKAIC9gOGAbTPwoqDAJUlquheRxtKIMXqv%207k5+HbSDb2U+GZIktcW3iBmbfz1yJ2cF7WQrcFjGkyFJUhscRhpDI8bms0buaHHQToaBG/OdD0mS%20WuFG4sblxSN3NAVYFbizT2Q7JZIkNdsniBuPVzHKQoAXB+5wC7Akx1mRJKnBlpDGzKjx+OKxdhq1%20w2HSqoMHDnhiJElqqgNJY2XkWDzqh/GZwLrgHa8Ajhjo9EiS1DxHkMbIyDF4HWmsH9VlwTsfBjYA%2075zsGZIkqWHeSRobo8ffy8YLYiFxkw5sv30W2KH/8yRJUiPsQBoLixhzN5PG+HFFvgy4/bYceBcw%201Pv5kiSp1oZIY99yihtvR335b3vziX8XYPvtDuAvGefZhCRJNTeTNNbdQbFj7DrS2N6TMwsOrrut%20Bf4Z+BtgHt4ZkCTV1xBpLDsRuJw0xpUxtp45VnCjmQvcC+w2yYPOZRPprciHOj+fKjccSZLGNR3Y%20nfSJe3dgRrnh8AhpUaEnt/8P433C/iBwblREkiQp3IeA80b7D+MVANOBu4F9IyKSJEmh7gEOYIy7%2058+aD3iEp4D/BKwPCEqSJMVZTxrDx3x0Pl4BAPBz4N2klwgkSVL1DZPG7p+P90tTe2hoGalQODpD%20UJIkKdYZwPkT/VKvX7MbAr5D+v6iJEmqpsuBv6KHO/f9fM9+NvAT4OBJBiVJkuLcCRxJmvhnQv1O%20tLMAuJXy5weQJEnPeAQ4DLi/1z+Y6CXA7d0P/AXwQJ9/J0mSYjxAGpt7Hvyh/wIA0luFhwE3TeJv%20JUlSPjeRxuRx3/gfzWQKAIBVwDHAJZP8e0mSNJhLSGPxqsn8cS9fAxzLFuBK0vzCr2HyxYQkSerd%20FuDjwCc7/3tScq22dxzwT8DOmdqTJEnP9gTwDuDaQRvK9an9WuBw4IZM7UmSpG3dQBprBx78Ie9t%20+98Cx5LuBtyZsV1JktrsTtLYeixprM0i4rn994FFpHmI/xDQviRJbfAH0li6iDS2ZpXrHYCx7Eha%20i/g04DnB+5IkqQnWAJ8BzgX+I2on0QVA1y7AScCbSdMU+o0BSZKesZU03f4VpK/3PRa9w6IKgJF2%20A95AKgaOBWaWEIMkSWXbAFxPGvT/lTSdb2HKKABGmkWavvDNwGJgd2BOqRFJkhRjLbAC+Clp0L8O%20WF9WMGUXAKOZQyoE5nd+drd5wIwS45IkaSKbgJWkgb67PdT5ubbEuCRJkiRJkiRJkiRJkiRJkiRJ%20kiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJ%20kiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJ%20kiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJ%20kiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJ%20kiRJkiRJkiRN5P8DawsM18Xo5D4AAAAASUVORK5CYII=%22%20x=%2227.124%22%20y=%221.499%22/%3E%3Ctext%20y=%2257.426%22%20x=%2240.862%22%20style=%22line-height:6.90999985px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'Gill%20Sans'%22%20y=%2257.426%22%20x=%2240.862%22%20font-size=%2222.578%22%20font-family=%22Gill%20Sans%22%3EVGA%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "da91d9fd-3ca1-4af3-b290-efb6457958d1",
              "type": "basic.output",
              "data": {
                "name": "vga_hsync"
              },
              "position": {
                "x": 1016,
                "y": 136
              }
            },
            {
              "id": "89bf4aeb-4e2e-4016-8c38-46b945330713",
              "type": "basic.output",
              "data": {
                "name": "vga_vsync"
              },
              "position": {
                "x": 1016,
                "y": 248
              }
            },
            {
              "id": "7d827d03-b8f6-4089-be99-f99d2f0267ab",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": false
              },
              "position": {
                "x": -448,
                "y": 264
              }
            },
            {
              "id": "80e42b44-7e25-477d-b06f-65fc2addc0ef",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -448,
                "y": 328
              }
            },
            {
              "id": "2103e68a-891c-45f4-b510-7583b0171adc",
              "type": "basic.output",
              "data": {
                "name": "frame_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 1016,
                "y": 376
              }
            },
            {
              "id": "73214898-d65c-4fb4-82cb-6b133e3d3c7c",
              "type": "basic.output",
              "data": {
                "name": "vga_red",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 1016,
                "y": 520
              }
            },
            {
              "id": "7bc5ccd0-08c4-43fe-aa6b-8e04a3b0e62f",
              "type": "basic.output",
              "data": {
                "name": "vga_green",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 1016,
                "y": 664
              }
            },
            {
              "id": "dc853db0-0672-4276-992d-98f7d5244111",
              "type": "basic.input",
              "data": {
                "name": "frame_pixel",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -456,
                "y": 712
              }
            },
            {
              "id": "1857b812-efde-4633-9119-31deb74c311a",
              "type": "basic.input",
              "data": {
                "name": "rgbmode",
                "clock": false
              },
              "position": {
                "x": -456,
                "y": 760
              }
            },
            {
              "id": "892fd2df-a2c4-4a57-a564-90232fccfb74",
              "type": "basic.output",
              "data": {
                "name": "vga_blue",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 1016,
                "y": 808
              }
            },
            {
              "id": "773cbdd4-2b73-4acc-ae15-ff85abc869eb",
              "type": "basic.input",
              "data": {
                "name": "testmode",
                "clock": false
              },
              "position": {
                "x": -456,
                "y": 808
              }
            },
            {
              "id": "a0693160-59c0-4a09-aeed-14087acdc7a1",
              "type": "basic.input",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": -456,
                "y": 856
              }
            },
            {
              "id": "6d87a790-083c-4a7e-ae99-13755114ed18",
              "type": "basic.constant",
              "data": {
                "name": "c_img_cols",
                "value": "80",
                "local": true
              },
              "position": {
                "x": 520,
                "y": 184
              }
            },
            {
              "id": "989db499-8572-46ab-957d-a113eafcc624",
              "type": "basic.constant",
              "data": {
                "name": "c_img_rows",
                "value": "60",
                "local": true
              },
              "position": {
                "x": 736,
                "y": 184
              }
            },
            {
              "id": "9232910f-a2a1-4927-9639-23aa2236fe75",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\r\n// Felipe Machado Sanchez\r\n// Departameto de Tecnologia Electronica\r\n// Universidad Rey Juan Carlos\r\n// https://github.com/felipe-m\r\n//\r\n/*\r\nmodule vga_sync\r\n  #(parameter\r\n    c_pxl_visible    = 640,\r\n    c_pxl_fporch     = 16,\r\n    // from 0 to front porch\r\n    c_pxl_2_fporch   = c_pxl_visible + c_pxl_fporch, // 656\r\n    c_pxl_synch      = 96,\r\n    // from 0 to synch\r\n    c_pxl_2_synch    = c_pxl_2_fporch + c_pxl_synch, // 752\r\n    // total horizontal pixels\r\n    c_pxl_total      = 800,\r\n    // number of pixels of the backporch\r\n    c_pxl_bporch     = c_pxl_total - c_pxl_2_synch,  //  48\r\n    // --------------- Number of rows (Vertical) ----------\r\n    c_line_visible   = 480,\r\n    c_line_fporch    = 9,\r\n    // from 0 to front porch (vertical)\r\n    c_line_2_fporch  = c_line_visible + c_line_fporch, // 489\r\n    c_line_synch     = 2,\r\n    // from init to synchro (vertical)\r\n    c_line_2_synch   = c_line_2_fporch + c_line_synch, // 491\r\n    // total number of lines\r\n    c_line_total     = 520,\r\n    // number of lines of the back porch\r\n    c_line_bporch    = c_line_total - c_line_2_synch,  //  29\r\n\r\n    // number of bits for each count\r\n    c_nb_pxls        = 10,  //c_pxl_total      :  800, \r\n    c_nb_lines       = 10,  //c_line_total   :  520,\r\n\r\n    // number of bits for each color RGB\r\n    c_nb_red         = 4,\r\n    c_nb_green       = 4,\r\n    c_nb_blue        = 4,\r\n\r\n    // VGA frequency\r\n    c_freq_vga       = 25*10**6, // VGA 25MHz\r\n\r\n    // active level of synchronization\r\n    c_synch_act      = 0\r\n   )\r\n   (\r\n    input           rst,\r\n    input           clk,\r\n    output          visible,\r\n    output          new_pxl,\r\n    output  reg     hsync,\r\n    output  reg     vsync,\r\n    output [10-1:0] col,\r\n    output [10-1:0] row\r\n   );\r\n  */\r\nparameter\r\n    c_pxl_visible    = 640,\r\n    c_pxl_fporch     = 16,\r\n    // from 0 to front porch\r\n    c_pxl_2_fporch   = c_pxl_visible + c_pxl_fporch, // 656\r\n    c_pxl_synch      = 96,\r\n    // from 0 to synch\r\n    c_pxl_2_synch    = c_pxl_2_fporch + c_pxl_synch, // 752\r\n    // total horizontal pixels\r\n    c_pxl_total      = 800,\r\n    // number of pixels of the backporch\r\n    c_pxl_bporch     = c_pxl_total - c_pxl_2_synch,  //  48\r\n    // --------------- Number of rows (Vertical) ----------\r\n    c_line_visible   = 480,\r\n    c_line_fporch    = 9,\r\n    // from 0 to front porch (vertical)\r\n    c_line_2_fporch  = c_line_visible + c_line_fporch, // 489\r\n    c_line_synch     = 2,\r\n    // from init to synchro (vertical)\r\n    c_line_2_synch   = c_line_2_fporch + c_line_synch, // 491\r\n    // total number of lines\r\n    c_line_total     = 520,\r\n    // number of lines of the back porch\r\n    c_line_bporch    = c_line_total - c_line_2_synch,  //  29\r\n\r\n    // number of bits for each count\r\n    c_nb_pxls        = 10,  //c_pxl_total      :  800, \r\n    c_nb_lines       = 10,  //c_line_total   :  520,\r\n\r\n    // number of bits for each color RGB\r\n    c_nb_red         = 4,\r\n    c_nb_green       = 4,\r\n    c_nb_blue        = 4,\r\n\r\n    // VGA frequency\r\n    c_freq_vga       = 25*10**6, // VGA 25MHz\r\n\r\n    // active level of synchronization\r\n    c_synch_act      = 0;\r\n\r\n\treg     hsync_r;\r\n\treg     vsync_r;\r\n\r\n  reg     [1:0]  cnt_clk; // count 0 to 3: 4 clk cycles, from 100MHz to 15MHz\r\n  reg  [10-1:0]  cnt_pxl;\r\n  reg  [10-1:0]  cnt_line;\r\n\r\n  wire   end_cnt_pxl;\r\n  wire   end_cnt_line;\r\n  wire   new_line;\r\n\r\n  reg    visible_pxl;  \r\n  reg    visible_line;\r\n\r\n  // count 4 clock cycles to get a pixel cycle\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_clk <= 2'd0;\r\n    else begin\r\n      if (new_pxl) \r\n        cnt_clk <= 2'd0;\r\n      else\r\n        cnt_clk <= cnt_clk + 1;\r\n    end\r\n  end \r\n\r\n  assign new_pxl =  (cnt_clk==3) ? 1'b1 : 1'b0; \r\n\r\n  assign col     = cnt_pxl;\r\n  assign row     = cnt_line;\r\n  assign visible = visible_pxl && visible_line;\r\n\r\n  // counting 800 pixels (columns)\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_pxl <= 10'd0;\r\n    else begin\r\n      if (new_pxl) begin\r\n        if (end_cnt_pxl) \r\n          cnt_pxl <= 10'd0;\r\n        else\r\n          cnt_pxl <= cnt_pxl + 1;\r\n      end\r\n    end\r\n  end \r\n\r\n  // end of pixel count\r\n  assign end_cnt_pxl =  (cnt_pxl == c_pxl_total-1) ? 1'b1 : 1'b0;\r\n  // nueva linea: cuando es el fin de cuenta y llega un nuevo pixel\r\n  assign new_line = end_cnt_pxl && new_pxl;\r\n\r\n  // combinational outputs of pixel count (horizontal)\r\n  always @ (rst or cnt_pxl)\r\n  begin\r\n    if (rst) begin\r\n      visible_pxl = 1'b0;\r\n      hsync_r = ~c_synch_act;\r\n    end\r\n    else if (cnt_pxl < c_pxl_visible) begin\r\n      visible_pxl = 1'b1;\r\n      hsync_r = ~c_synch_act;\r\n    end\r\n    else if (cnt_pxl < c_pxl_2_fporch) begin\r\n      visible_pxl = 1'b0;\r\n      hsync_r = ~c_synch_act;\r\n    end\r\n    else if (cnt_pxl < c_pxl_2_synch) begin\r\n      visible_pxl = 1'b0;\r\n      hsync_r = c_synch_act; // synch active\r\n    end\r\n    else begin\r\n      visible_pxl = 1'b0;\r\n      hsync_r = ~c_synch_act; \r\n    end\r\n  end\r\n\r\n  // counting 520 lines (rows)\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      cnt_line <= 10'd0;\r\n    else begin\r\n      if (new_line) begin\r\n        if (end_cnt_line) \r\n          cnt_line <= 10'd0;\r\n        else\r\n          cnt_line <= cnt_line + 1;\r\n      end\r\n    end\r\n  end \r\n\r\n  // end of pixel count\r\n  assign end_cnt_line =  (cnt_line == c_line_total-1) ? 1'b1 : 1'b0;\r\n\r\n  // combinational outputs of line count (vertical)\r\n  always @ (rst or cnt_line)\r\n  begin\r\n    if (rst) begin\r\n      visible_line = 1'b0;\r\n      vsync_r = ~c_synch_act;\r\n    end\r\n    else if (cnt_line < c_line_visible) begin\r\n      visible_line = 1'b1;\r\n      vsync_r = ~c_synch_act;\r\n    end\r\n    else if (cnt_line < c_line_2_fporch) begin\r\n      visible_line = 1'b0;\r\n      vsync_r = ~c_synch_act;\r\n    end\r\n    else if (cnt_line < c_line_2_synch) begin\r\n      visible_line = 1'b0;\r\n      vsync_r = c_synch_act; // synch active\r\n    end\r\n    else begin\r\n      visible_line = 1'b0;\r\n      vsync_r = ~c_synch_act; \r\n    end\r\n  end\r\n\r\nassign vsync = vsync_r;\r\nassign hsync = hsync_r;\r\n// endmodule\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "visible"
                    },
                    {
                      "name": "new_pxl"
                    },
                    {
                      "name": "hsync"
                    },
                    {
                      "name": "vsync"
                    },
                    {
                      "name": "col",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "row",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": -176,
                "y": 432
              },
              "size": {
                "width": 424,
                "height": 288
              }
            },
            {
              "id": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\r\n//   Felipe Machado Sanchez\r\n//   Area de Tecnologia Electronica\r\n//   Universidad Rey Juan Carlos\r\n//   https://github.com/felipe-m\r\n//\r\n//   vga_display.vhd\r\n//   Displays the image on the frambuffer to the VGA\r\n//\r\n/*\r\nmodule vga_display\r\n  # (parameter\r\n      // VGA\r\n      //c_img_cols    = 640, // 10 bits\r\n      //c_img_rows    = 480, //  9 bits\r\n      //c_img_pxls    = c_img_cols * c_img_rows,\r\n      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;\r\n      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1\r\n      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288\r\n      // QQVGA\r\n      //c_img_cols    = 160, // 8 bits\r\n      //c_img_rows    = 120, //  7 bits\r\n      //c_img_pxls    = c_img_cols * c_img_rows,\r\n      //c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15\r\n      // QQVGA /2\r\n      c_img_cols    = 80, // 7 bits\r\n      c_img_rows    = 60, //  6 bits\r\n      c_img_pxls    = c_img_cols * c_img_rows,\r\n      c_nb_img_pxls =  13,  //80*60=4800 -> 2^13\r\n\r\n\r\n\r\n    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)\r\n    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)\r\n    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)\r\n    // word width of the memory (buffer)\r\n    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue\r\n  )\r\n  (\r\n    input          rst,       //reset, active high\r\n    input          clk,       //fpga cloc\r\n    input          visible,\r\n    input          new_pxl,\r\n    input          hsync,\r\n    input          vsync,\r\n    input          rgbmode,\r\n    input          testmode,\r\n    input [2:0]    rgbfilter,\r\n    input [10-1:0] col,\r\n    input [10-1:0] row,\r\n    input  [c_nb_buf-1:0] frame_pixel,\r\n    output reg [c_nb_img_pxls-1:0] frame_addr,\r\n    output reg [4-1:0] vga_red,\r\n    output reg [4-1:0] vga_green,\r\n    output reg [4-1:0] vga_blue\r\n  );\r\n*/\r\nparameter\r\n      // VGA\r\n      //c_img_cols    = 640, // 10 bits\r\n      //c_img_rows    = 480, //  9 bits\r\n      //c_img_pxls    = c_img_cols * c_img_rows,\r\n      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;\r\n      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1\r\n      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288\r\n      // QQVGA\r\n      //c_img_cols    = 160, // 8 bits\r\n      //c_img_rows    = 120, //  7 bits\r\n      //c_img_pxls    = c_img_cols * c_img_rows,\r\n      //c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15\r\n      // QQVGA /2\r\n      // c_img_cols    = 80, // 7 bits\r\n      // c_img_rows    = 60, //  6 bits\r\n      c_img_pxls    = c_img_cols * c_img_rows,\r\n      c_nb_img_pxls =  13,  //80*60=4800 -> 2^13\r\n\r\n\r\n\r\n    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)\r\n    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)\r\n    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)\r\n    // word width of the memory (buffer)\r\n    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue;\r\n\r\n\treg [c_nb_img_pxls-1:0] frame_addr_r;\r\n\treg [4-1:0] vga_red_r;\r\n\treg [4-1:0] vga_green_r;\r\n\treg [4-1:0] vga_blue_r;\r\n\r\n\tassign frame_addr = frame_addr_r;\r\n\tassign vga_red = vga_red_r;\r\n\tassign vga_green = vga_green_r;\r\n\tassign vga_blue = vga_blue_r;\r\n\r\n  reg  [7:0] char_rgbmode, char_testmode;\r\n  wire [2:0] char_row;\r\n  wire [2:0] char_col;\r\n  wire [3:0] addr_rom_rgb;\r\n  wire [3:0] addr_rom_test;\r\n\r\n  assign char_row = row[2:0];\r\n  assign char_col = col[2:0];\r\n  assign addr_rom_rgb = {~rgbmode, char_row};\r\n  assign addr_rom_test = {testmode, char_row};\r\n\r\n  always @ (addr_rom_rgb) begin\r\n    case (addr_rom_rgb)\r\n      4'h0: char_rgbmode <= 8'b11111100; // R: RGB\r\n      4'h1: char_rgbmode <= 8'b10000010;\r\n      4'h2: char_rgbmode <= 8'b10000010;\r\n      4'h3: char_rgbmode <= 8'b11111100;\r\n      4'h4: char_rgbmode <= 8'b10001000;\r\n      4'h5: char_rgbmode <= 8'b10000100;\r\n      4'h6: char_rgbmode <= 8'b10000010;\r\n      4'h7: char_rgbmode <= 8'b00000000;\r\n      4'h8: char_rgbmode <= 8'b10000010; // Y: YUV\r\n      4'h9: char_rgbmode <= 8'b01000100;\r\n      4'hA: char_rgbmode <= 8'b00111000;\r\n      4'hB: char_rgbmode <= 8'b00010000;\r\n      4'hC: char_rgbmode <= 8'b00010000;\r\n      4'hD: char_rgbmode <= 8'b00010000;\r\n      4'hE: char_rgbmode <= 8'b00010000;\r\n      4'hF: char_rgbmode <= 8'b00000000;\r\n    endcase\r\n  end\r\n\r\n  always @ (addr_rom_test) begin\r\n    case (addr_rom_test)\r\n      4'h0: char_testmode <= 8'b10000010; // N: Normal\r\n      4'h1: char_testmode <= 8'b11000010;\r\n      4'h2: char_testmode <= 8'b10100010;\r\n      4'h3: char_testmode <= 8'b10010010;\r\n      4'h4: char_testmode <= 8'b10001010;\r\n      4'h5: char_testmode <= 8'b10000110;\r\n      4'h6: char_testmode <= 8'b10000010;\r\n      4'h7: char_testmode <= 8'b00000000;\r\n      4'h8: char_testmode <= 8'b11111110; // T: Test\r\n      4'h9: char_testmode <= 8'b00010000;\r\n      4'hA: char_testmode <= 8'b00010000;\r\n      4'hB: char_testmode <= 8'b00010000;\r\n      4'hC: char_testmode <= 8'b00010000;\r\n      4'hD: char_testmode <= 8'b00010000;\r\n      4'hE: char_testmode <= 8'b00010000;\r\n      4'hF: char_testmode <= 8'b00000000;\r\n    endcase\r\n  end\r\n\r\n\r\n  always @ (posedge rst, posedge clk)\r\n  begin\r\n    if (rst)\r\n      frame_addr_r <= 0;\r\n    else begin\r\n      if (row < c_img_rows) begin\r\n        if (col < c_img_cols) begin\r\n          if (new_pxl)\r\n            //it may have a simulation problem in the last pixel of the last row\r\n            frame_addr_r <= frame_addr_r + 1;\r\n        end\r\n      end\r\n      else\r\n        frame_addr_r <= 0;\r\n    end\r\n  end\r\n\r\n\r\n  always @ (*)\r\n  begin\r\n    vga_red_r   = 0;\r\n    vga_green_r = 0;\r\n    vga_blue_r  = 0;\r\n    if (visible) begin\r\n      vga_red_r   = {4{1'b0}};\r\n      vga_green_r = {4{1'b0}};\r\n      vga_blue_r  = {4{1'b0}};\r\n      if ((col < c_img_cols) && (row < c_img_rows)) begin\r\n          if (rgbmode) begin\r\n            vga_red_r   = frame_pixel[c_nb_buf-1: c_nb_buf-c_nb_buf_red];\r\n            vga_green_r = frame_pixel[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];\r\n            vga_blue_r  = frame_pixel[c_nb_buf_blue-1:0];\r\n          end\r\n          else begin\r\n            vga_red_r   = frame_pixel[7:4];\r\n            vga_green_r = frame_pixel[7:4];\r\n            vga_blue_r  = frame_pixel[7:4];\r\n          end\r\n      end\r\n      else if ((col == c_img_cols) || (row == c_img_rows)) begin\r\n         vga_red_r   = 4'b0000;\r\n         vga_green_r = 4'b1000;\r\n         vga_blue_r  = 4'b1000;\r\n      end\r\n      else if ((col == 2*c_img_cols) || (row == 2*c_img_rows)) begin\r\n         vga_red_r   = 4'b1000;\r\n         vga_green_r = 4'b1000;\r\n         vga_blue_r  = 4'b0000;\r\n      end\r\n      else if ((col == 4*c_img_cols) || (row == 4*c_img_rows)) begin\r\n         vga_red_r   = 4'b1000;\r\n         vga_green_r = 4'b0000;\r\n         vga_blue_r  = 4'b1000;\r\n      end\r\n      else if ((row > 63) && (row < 64 + 8)) begin\r\n         if ((col > 7) && (col < 16)) begin // RGB MODE\r\n           if (char_rgbmode[7-char_col]) begin\r\n             vga_red_r   = 4'b1111;\r\n             vga_green_r = 4'b1111;\r\n             vga_blue_r  = 4'b1111;\r\n           end\r\n           else begin\r\n             vga_red_r   = 4'b0000;\r\n             vga_green_r = 4'b0000;\r\n             vga_blue_r  = 4'b0000;\r\n           end\r\n         end\r\n         else if ((col > 15) && (col < 24)) begin // TEST MODE\r\n           if (char_testmode[7-char_col]) begin\r\n             vga_red_r   = 4'b1111;\r\n             vga_green_r = 4'b1111;\r\n             vga_blue_r  = 4'b1111;\r\n           end\r\n           else begin\r\n             vga_red_r   = 4'b0000;\r\n             vga_green_r = 4'b0000;\r\n             vga_blue_r  = 4'b0000;\r\n           end\r\n         end\r\n         else if ((col > 23) && (col < 32)) begin // Color Filter\r\n           vga_red_r   = {4{rgbfilter[2]}};\r\n           vga_green_r = {4{rgbfilter[1]}};\r\n           vga_blue_r  = {4{rgbfilter[0]}};\r\n         end\r\n      end\r\n      else begin\r\n         vga_red_r   = 4'b0000;\r\n         vga_green_r = 4'b0000;\r\n         vga_blue_r  = 4'b0000;\r\n      end\r\n    end\r\n  end\r\n\r\n// endmodule\r\n",
                "params": [
                  {
                    "name": "c_img_cols"
                  },
                  {
                    "name": "c_img_rows"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "visible"
                    },
                    {
                      "name": "new_pxl"
                    },
                    {
                      "name": "hsync"
                    },
                    {
                      "name": "vsync"
                    },
                    {
                      "name": "col",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "row",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "frame_pixel",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "rgbmode"
                    },
                    {
                      "name": "testmode"
                    },
                    {
                      "name": "rgbfilter",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "frame_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "vga_red",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "vga_green",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "vga_blue",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 456,
                "y": 336
              },
              "size": {
                "width": 440,
                "height": 576
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "frame_addr"
              },
              "target": {
                "block": "2103e68a-891c-45f4-b510-7583b0171adc",
                "port": "in"
              },
              "vertices": [],
              "size": 13
            },
            {
              "source": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "vga_red"
              },
              "target": {
                "block": "73214898-d65c-4fb4-82cb-6b133e3d3c7c",
                "port": "in"
              },
              "vertices": [],
              "size": 4
            },
            {
              "source": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "vga_green"
              },
              "target": {
                "block": "7bc5ccd0-08c4-43fe-aa6b-8e04a3b0e62f",
                "port": "in"
              },
              "vertices": [],
              "size": 4
            },
            {
              "source": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "vga_blue"
              },
              "target": {
                "block": "892fd2df-a2c4-4a57-a564-90232fccfb74",
                "port": "in"
              },
              "vertices": [],
              "size": 4
            },
            {
              "source": {
                "block": "6d87a790-083c-4a7e-ae99-13755114ed18",
                "port": "constant-out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "c_img_cols"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "989db499-8572-46ab-957d-a113eafcc624",
                "port": "constant-out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "c_img_rows"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "dc853db0-0672-4276-992d-98f7d5244111",
                "port": "out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "frame_pixel"
              },
              "vertices": [],
              "size": 12
            },
            {
              "source": {
                "block": "1857b812-efde-4633-9119-31deb74c311a",
                "port": "out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "rgbmode"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "773cbdd4-2b73-4acc-ae15-ff85abc869eb",
                "port": "out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "testmode"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "a0693160-59c0-4a09-aeed-14087acdc7a1",
                "port": "out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "rgbfilter"
              },
              "vertices": [],
              "size": 3
            },
            {
              "source": {
                "block": "80e42b44-7e25-477d-b06f-65fc2addc0ef",
                "port": "out"
              },
              "target": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "rst"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "80e42b44-7e25-477d-b06f-65fc2addc0ef",
                "port": "out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "7d827d03-b8f6-4089-be99-f99d2f0267ab",
                "port": "out"
              },
              "target": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": -280,
                  "y": 408
                }
              ]
            },
            {
              "source": {
                "block": "7d827d03-b8f6-4089-be99-f99d2f0267ab",
                "port": "out"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 296,
                  "y": 312
                }
              ]
            },
            {
              "source": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "new_pxl"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "new_pxl"
              }
            },
            {
              "source": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "visible"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "visible"
              }
            },
            {
              "source": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "hsync"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "hsync"
              }
            },
            {
              "source": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "vsync"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "vsync"
              }
            },
            {
              "source": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "col"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "col"
              },
              "size": 10
            },
            {
              "source": {
                "block": "9232910f-a2a1-4927-9639-23aa2236fe75",
                "port": "row"
              },
              "target": {
                "block": "40d6d19a-2ba0-4c7c-805c-9be7336db225",
                "port": "row"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "062506cb9e94eb05aae45c3f3c00606254bb6a4e": {
      "package": {
        "name": "4bits_split",
        "version": "1.0",
        "description": "split bits from a bus of 4 bits",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22308.284%22%20height=%22314.401%22%20viewBox=%220%200%2081.566879%2083.185188%22%3E%3Cg%20transform=%22translate(-.575%20-7.846)%22%3E%3Cimage%20y=%2216.948%22%20x=%22.575%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20preserveAspectRatio=%22none%22%20height=%2274.083%22%20width=%2274.083%22/%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%3E%3Cpath%20d=%22M82.141%2025.5H68.763L42.429%2042.963h-14.83%2014.83l26.334-6.326H82.14%22%20stroke-width=%222.56349605%22/%3E%3Cpath%20d=%22M82.141%2050.4H68.763l-26.334-7.438h-14.83%2014.83l26.334%2018.573H82.14%22%20stroke-width=%222.56349605%22/%3E%3Cpath%20d=%22M27.6%2042.962h18.465%22%20stroke-width=%225.46556705%22/%3E%3C/g%3E%3Ctext%20y=%2219.546%22%20x=%2237.957%22%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%2219.546%22%20x=%2237.957%22%20font-size=%2216.933%22%20font-family=%22Gill%20Sans%22%3EBus%20Split%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "99995f67-7a3a-4cdd-8539-e17ae835734a",
              "type": "basic.output",
              "data": {
                "name": "out_0"
              },
              "position": {
                "x": 904,
                "y": 136
              }
            },
            {
              "id": "d201ea68-05c2-4e4a-b182-98cd11fab2e4",
              "type": "basic.output",
              "data": {
                "name": "out_1"
              },
              "position": {
                "x": 904,
                "y": 232
              }
            },
            {
              "id": "cac1a1d5-cfd9-4e82-ac0a-a65c676f1895",
              "type": "basic.input",
              "data": {
                "name": "in4bits",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 176,
                "y": 280
              }
            },
            {
              "id": "58a18b31-d1ab-4c1e-be55-d902fdbcab58",
              "type": "basic.output",
              "data": {
                "name": "out_2"
              },
              "position": {
                "x": 904,
                "y": 328
              }
            },
            {
              "id": "06d156a8-45c7-4a2d-b725-f8755c86e14d",
              "type": "basic.output",
              "data": {
                "name": "out_3"
              },
              "position": {
                "x": 904,
                "y": 424
              }
            },
            {
              "id": "147a73f0-707a-4bca-afed-7733cf4c0adb",
              "type": "basic.code",
              "data": {
                "code": "//-- in4_split.v\r\n//-- Bit split froma a 4 bits bus.\r\n//-- Author: JdeRobot [FPGA-Robotics]\r\n/*\r\nmodule in4_split( \r\n\t\t//-- Inputs ports\r\n        input wire [3:0] in4bits\r\n\t\t\r\n\t\t//-- Output ports\r\n\t\toutput wire in0,\r\n\t\toutput wire in1,\r\n\t\toutput wire in2,\r\n\t\toutput wire in3,\r\n\t\t\r\n\t);\r\n*/\r\n    assign out_0 = in4bits[0];\r\n    assign out_1 = in4bits[1];\r\n    assign out_2 = in4bits[2];\r\n    assign out_3 = in4bits[3];\r\n//endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "in4bits",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "out_0"
                    },
                    {
                      "name": "out_1"
                    },
                    {
                      "name": "out_2"
                    },
                    {
                      "name": "out_3"
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
                "block": "cac1a1d5-cfd9-4e82-ac0a-a65c676f1895",
                "port": "out"
              },
              "target": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "in4bits"
              },
              "size": 4
            },
            {
              "source": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "out_3"
              },
              "target": {
                "block": "06d156a8-45c7-4a2d-b725-f8755c86e14d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "out_2"
              },
              "target": {
                "block": "58a18b31-d1ab-4c1e-be55-d902fdbcab58",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "out_1"
              },
              "target": {
                "block": "d201ea68-05c2-4e4a-b182-98cd11fab2e4",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
                "port": "out_0"
              },
              "target": {
                "block": "99995f67-7a3a-4cdd-8539-e17ae835734a",
                "port": "in"
              }
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
    }
  }
}