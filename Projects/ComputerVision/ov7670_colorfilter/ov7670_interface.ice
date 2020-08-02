{
  "version": "1.2",
  "package": {
    "name": "ov7670_interface",
    "version": "1.0",
    "description": "ov7670 camera interface. Configures camera and captures pixels",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "75402cb7-9429-4bc5-b9f4-7c786a4d6ed5",
          "type": "basic.output",
          "data": {
            "name": "cnt_reg_test",
            "range": "[5:0]",
            "pins": [
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 512,
            "y": -32
          }
        },
        {
          "id": "aecc1de2-8c3f-49bf-a60c-7174416bee3a",
          "type": "basic.output",
          "data": {
            "name": "ov7670_cfgdone",
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
            "x": 528,
            "y": 8
          }
        },
        {
          "id": "3232cbf0-f394-44bc-95cb-73c28c42fa34",
          "type": "basic.output",
          "data": {
            "name": "ov7670_sioc",
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
            "x": 536,
            "y": 48
          }
        },
        {
          "id": "e1a8af51-4d1c-48ad-9c1d-86be50a7db95",
          "type": "basic.input",
          "data": {
            "name": "rst",
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
            "x": 16,
            "y": 64
          }
        },
        {
          "id": "f1d87b29-eb08-4299-a540-533fb6117945",
          "type": "basic.output",
          "data": {
            "name": "ov7670_sdat_on",
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
            "x": 536,
            "y": 96
          }
        },
        {
          "id": "17cbaf9a-48b6-4f84-a9c2-6df9d928d021",
          "type": "basic.input",
          "data": {
            "name": "clk100mhz",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 16,
            "y": 112
          }
        },
        {
          "id": "c1e4faf5-6809-4479-91e0-ba807320a78f",
          "type": "basic.output",
          "data": {
            "name": "ov7670_sdat_out",
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
            "x": 528,
            "y": 144
          }
        },
        {
          "id": "87aaf691-b202-4dc5-8c8e-f09e2ac0b826",
          "type": "basic.output",
          "data": {
            "name": "ov7670_rst_n",
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
            "x": 528,
            "y": 184
          }
        },
        {
          "id": "de11fb70-f8d9-4ed4-b41d-3322f166017b",
          "type": "basic.input",
          "data": {
            "name": "testmode",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 32,
            "y": 224
          }
        },
        {
          "id": "ab22ec1b-91ee-4f49-b32f-d5440487a6bd",
          "type": "basic.output",
          "data": {
            "name": "ov7670_xclk",
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
            "x": 528,
            "y": 232
          }
        },
        {
          "id": "6d85c6cc-2222-4ad2-a0dc-ca0c1a4c583a",
          "type": "basic.output",
          "data": {
            "name": "ov7670_pwdn",
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
            "x": 528,
            "y": 280
          }
        },
        {
          "id": "066d2385-991a-4d38-a4e5-1b0bf59cf99c",
          "type": "basic.output",
          "data": {
            "name": "capture_addr",
            "range": "[12:0]",
            "pins": [
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 512,
            "y": 368
          }
        },
        {
          "id": "39a65195-8ffd-49ac-ad1f-f4e3ef32a78f",
          "type": "basic.input",
          "data": {
            "name": "ov7670_pclk",
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
            "x": 32,
            "y": 392
          }
        },
        {
          "id": "0cbd1f10-d032-43dd-af91-f8ad8d15e73a",
          "type": "basic.output",
          "data": {
            "name": "capture_data",
            "range": "[11:0]",
            "pins": [
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 520,
            "y": 440
          }
        },
        {
          "id": "548589b6-f63b-4fd1-a16b-4631af0b83a3",
          "type": "basic.input",
          "data": {
            "name": "ov7670_vsync",
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
            "x": 32,
            "y": 448
          }
        },
        {
          "id": "b7e432dc-1572-4971-bdd6-5b4aaad78afb",
          "type": "basic.input",
          "data": {
            "name": "ov7670_href",
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
            "x": 32,
            "y": 496
          }
        },
        {
          "id": "3f5cf141-30a5-4632-8608-37c5427134f9",
          "type": "basic.output",
          "data": {
            "name": "capture_we",
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
            "x": 504,
            "y": 504
          }
        },
        {
          "id": "f02d9881-e6e1-43df-8b49-66367f6edd19",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
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
            "x": 32,
            "y": 544
          }
        },
        {
          "id": "aa530509-0752-4ebf-bb9c-bd9c2014bad2",
          "type": "basic.input",
          "data": {
            "name": "rgbmode",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -152,
            "y": 560
          }
        },
        {
          "id": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
          "type": "9d9474044436a4b68de35890bda35a2f396613ba",
          "position": {
            "x": 288,
            "y": 376
          },
          "size": {
            "width": 96,
            "height": 224
          }
        },
        {
          "id": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
          "type": "3d210b4c9f5f9fbf6c28f11e6238a289039b9c17",
          "position": {
            "x": 280,
            "y": 32
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
            "block": "e1a8af51-4d1c-48ad-9c1d-86be50a7db95",
            "port": "out"
          },
          "target": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "fc67e6bc-f539-46c2-aad2-9e12d93fdb43"
          }
        },
        {
          "source": {
            "block": "e1a8af51-4d1c-48ad-9c1d-86be50a7db95",
            "port": "out"
          },
          "target": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "7188770e-5968-4580-83f3-4e82d4c1469e"
          },
          "vertices": [
            {
              "x": 160,
              "y": 168
            }
          ]
        },
        {
          "source": {
            "block": "17cbaf9a-48b6-4f84-a9c2-6df9d928d021",
            "port": "out"
          },
          "target": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "cd42d85e-f5a1-4da3-af0f-2cf2df5ae69f"
          }
        },
        {
          "source": {
            "block": "17cbaf9a-48b6-4f84-a9c2-6df9d928d021",
            "port": "out"
          },
          "target": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "ec9fab67-5ae0-4f7f-b4a9-addeaad534b6"
          }
        },
        {
          "source": {
            "block": "39a65195-8ffd-49ac-ad1f-f4e3ef32a78f",
            "port": "out"
          },
          "target": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "f43f11f8-0882-4053-8f68-ea8c2618ed78"
          }
        },
        {
          "source": {
            "block": "548589b6-f63b-4fd1-a16b-4631af0b83a3",
            "port": "out"
          },
          "target": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "0225814f-ce1b-4803-8d37-68341dddc112"
          }
        },
        {
          "source": {
            "block": "b7e432dc-1572-4971-bdd6-5b4aaad78afb",
            "port": "out"
          },
          "target": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "48889635-149d-47e0-9c92-fbcd38e60aec"
          }
        },
        {
          "source": {
            "block": "f02d9881-e6e1-43df-8b49-66367f6edd19",
            "port": "out"
          },
          "target": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "d0b9ffdd-61d6-4bcc-aaf9-ecf5407bcfd7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "ce76c178-bc55-4ea1-bd6d-3ce445bc1709"
          },
          "target": {
            "block": "75402cb7-9429-4bc5-b9f4-7c786a4d6ed5",
            "port": "in"
          },
          "size": 6
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "119c2b46-d420-41e7-99bd-61948ac04392"
          },
          "target": {
            "block": "aecc1de2-8c3f-49bf-a60c-7174416bee3a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "59f4f893-d1a5-4ee9-8e0f-779762132772"
          },
          "target": {
            "block": "3232cbf0-f394-44bc-95cb-73c28c42fa34",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "00a4b164-0fd1-410c-9092-468df22d7ec3"
          },
          "target": {
            "block": "c1e4faf5-6809-4479-91e0-ba807320a78f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "08b8aa22-8b87-435a-b790-ef8822895486"
          },
          "target": {
            "block": "f1d87b29-eb08-4299-a540-533fb6117945",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "b5cbb24e-4c52-4963-aeb6-30a84f977c1b"
          },
          "target": {
            "block": "ab22ec1b-91ee-4f49-b32f-d5440487a6bd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "7fd08a02-253a-4cd9-8f4d-2515efe3acca"
          },
          "target": {
            "block": "87aaf691-b202-4dc5-8c8e-f09e2ac0b826",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "1652a04a-a200-41e9-9126-d824e62daf73"
          },
          "target": {
            "block": "6d85c6cc-2222-4ad2-a0dc-ca0c1a4c583a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "54b35ab3-5f2d-4978-9e8a-4866c9a458d8"
          },
          "target": {
            "block": "066d2385-991a-4d38-a4e5-1b0bf59cf99c",
            "port": "in"
          },
          "size": 13
        },
        {
          "source": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "b3563b5a-0a1d-4784-b441-de091b95c160"
          },
          "target": {
            "block": "0cbd1f10-d032-43dd-af91-f8ad8d15e73a",
            "port": "in"
          },
          "size": 12
        },
        {
          "source": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "11962766-de30-4117-96ce-859e68ae6514"
          },
          "target": {
            "block": "3f5cf141-30a5-4632-8608-37c5427134f9",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa530509-0752-4ebf-bb9c-bd9c2014bad2",
            "port": "out"
          },
          "target": {
            "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
            "port": "4f2fa73f-3858-4bd7-8fb7-8876d104519d"
          }
        },
        {
          "source": {
            "block": "aa530509-0752-4ebf-bb9c-bd9c2014bad2",
            "port": "out"
          },
          "target": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "0eede1f6-a152-43dc-8b3a-e3c92cbf35fd"
          }
        },
        {
          "source": {
            "block": "de11fb70-f8d9-4ed4-b41d-3322f166017b",
            "port": "out"
          },
          "target": {
            "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
            "port": "f87cbc2f-23c5-49c5-84ac-113c13d348dd"
          }
        }
      ]
    }
  },
  "dependencies": {
    "9d9474044436a4b68de35890bda35a2f396613ba": {
      "package": {
        "name": "ov7670_capture",
        "version": "1.0",
        "description": "Capture for the ov7670 camera",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "7188770e-5968-4580-83f3-4e82d4c1469e",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 144
              }
            },
            {
              "id": "54b35ab3-5f2d-4978-9e8a-4866c9a458d8",
              "type": "basic.output",
              "data": {
                "name": "capture_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 912,
                "y": 184
              }
            },
            {
              "id": "ec9fab67-5ae0-4f7f-b4a9-addeaad534b6",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": 96,
                "y": 200
              }
            },
            {
              "id": "f43f11f8-0882-4053-8f68-ea8c2618ed78",
              "type": "basic.input",
              "data": {
                "name": "ov7670_pclk",
                "clock": false
              },
              "position": {
                "x": 96,
                "y": 256
              }
            },
            {
              "id": "b3563b5a-0a1d-4784-b441-de091b95c160",
              "type": "basic.output",
              "data": {
                "name": "capture_data",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 928,
                "y": 320
              }
            },
            {
              "id": "0225814f-ce1b-4803-8d37-68341dddc112",
              "type": "basic.input",
              "data": {
                "name": "ov7670_vsync",
                "clock": false
              },
              "position": {
                "x": 96,
                "y": 320
              }
            },
            {
              "id": "48889635-149d-47e0-9c92-fbcd38e60aec",
              "type": "basic.input",
              "data": {
                "name": "ov7670_href",
                "clock": false
              },
              "position": {
                "x": 88,
                "y": 376
              }
            },
            {
              "id": "d0b9ffdd-61d6-4bcc-aaf9-ecf5407bcfd7",
              "type": "basic.input",
              "data": {
                "name": "ov7670_d",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 88,
                "y": 432
              }
            },
            {
              "id": "11962766-de30-4117-96ce-859e68ae6514",
              "type": "basic.output",
              "data": {
                "name": "capture_we"
              },
              "position": {
                "x": 912,
                "y": 456
              }
            },
            {
              "id": "4f2fa73f-3858-4bd7-8fb7-8876d104519d",
              "type": "basic.input",
              "data": {
                "name": "rgbmode",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "clock": false
              },
              "position": {
                "x": 88,
                "y": 488
              }
            },
            {
              "id": "0a902920-d58a-4157-bf37-a86e6fb383f5",
              "type": "basic.code",
              "data": {
                "code": "// @include ov7670_capture.v\n\nwire    swap_r_b;\nassign  swap_r_b = 1'b1;\n\n  ov7670_capture lnk2vrlg \n  (\n     .rst          (rst),\n     .clk          (clk100mhz),\n     .pclk         (ov7670_pclk),\n     .vsync        (ov7670_vsync),\n     .href         (ov7670_href),\n     .rgbmode      (rgbmode),\n     .swap_r_b     (swap_r_b),\n     .data         (ov7670_d),\n     .addr         (capture_addr),\n     .dout         (capture_data),\n     .we           (capture_we)\n  );\n  ",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk100mhz"
                    },
                    {
                      "name": "ov7670_pclk"
                    },
                    {
                      "name": "ov7670_vsync"
                    },
                    {
                      "name": "ov7670_href"
                    },
                    {
                      "name": "ov7670_d",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "rgbmode"
                    }
                  ],
                  "out": [
                    {
                      "name": "capture_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "capture_data",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "capture_we"
                    }
                  ]
                }
              },
              "position": {
                "x": 280,
                "y": 144
              },
              "size": {
                "width": 536,
                "height": 408
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7188770e-5968-4580-83f3-4e82d4c1469e",
                "port": "out"
              },
              "target": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "ec9fab67-5ae0-4f7f-b4a9-addeaad534b6",
                "port": "out"
              },
              "target": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "clk100mhz"
              }
            },
            {
              "source": {
                "block": "f43f11f8-0882-4053-8f68-ea8c2618ed78",
                "port": "out"
              },
              "target": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "ov7670_pclk"
              }
            },
            {
              "source": {
                "block": "0225814f-ce1b-4803-8d37-68341dddc112",
                "port": "out"
              },
              "target": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "ov7670_vsync"
              }
            },
            {
              "source": {
                "block": "48889635-149d-47e0-9c92-fbcd38e60aec",
                "port": "out"
              },
              "target": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "ov7670_href"
              }
            },
            {
              "source": {
                "block": "d0b9ffdd-61d6-4bcc-aaf9-ecf5407bcfd7",
                "port": "out"
              },
              "target": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "ov7670_d"
              },
              "size": 8
            },
            {
              "source": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "capture_addr"
              },
              "target": {
                "block": "54b35ab3-5f2d-4978-9e8a-4866c9a458d8",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "capture_data"
              },
              "target": {
                "block": "b3563b5a-0a1d-4784-b441-de091b95c160",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "capture_we"
              },
              "target": {
                "block": "11962766-de30-4117-96ce-859e68ae6514",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4f2fa73f-3858-4bd7-8fb7-8876d104519d",
                "port": "out"
              },
              "target": {
                "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
                "port": "rgbmode"
              }
            }
          ]
        }
      }
    },
    "3d210b4c9f5f9fbf6c28f11e6238a289039b9c17": {
      "package": {
        "name": "ov7670_ctrl",
        "version": "1.0",
        "description": "configures ov7670 camera",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ce76c178-bc55-4ea1-bd6d-3ce445bc1709",
              "type": "basic.output",
              "data": {
                "name": "cnt_reg_test",
                "range": "[5:0]",
                "size": 6
              },
              "position": {
                "x": 800,
                "y": 24
              }
            },
            {
              "id": "fc67e6bc-f539-46c2-aad2-9e12d93fdb43",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 64
              }
            },
            {
              "id": "119c2b46-d420-41e7-99bd-61948ac04392",
              "type": "basic.output",
              "data": {
                "name": "ov7670_cfgdone"
              },
              "position": {
                "x": 800,
                "y": 72
              }
            },
            {
              "id": "59f4f893-d1a5-4ee9-8e0f-779762132772",
              "type": "basic.output",
              "data": {
                "name": "ov7670_sioc"
              },
              "position": {
                "x": 800,
                "y": 120
              }
            },
            {
              "id": "cd42d85e-f5a1-4da3-af0f-2cf2df5ae69f",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": 32,
                "y": 120
              }
            },
            {
              "id": "08b8aa22-8b87-435a-b790-ef8822895486",
              "type": "basic.output",
              "data": {
                "name": "sdat_on"
              },
              "position": {
                "x": 800,
                "y": 168
              }
            },
            {
              "id": "00a4b164-0fd1-410c-9092-468df22d7ec3",
              "type": "basic.output",
              "data": {
                "name": "sdat_out"
              },
              "position": {
                "x": 800,
                "y": 224
              }
            },
            {
              "id": "7fd08a02-253a-4cd9-8f4d-2515efe3acca",
              "type": "basic.output",
              "data": {
                "name": "ov7670_rst_n"
              },
              "position": {
                "x": 800,
                "y": 272
              }
            },
            {
              "id": "0eede1f6-a152-43dc-8b3a-e3c92cbf35fd",
              "type": "basic.input",
              "data": {
                "name": "rgbmode",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 272
              }
            },
            {
              "id": "b5cbb24e-4c52-4963-aeb6-30a84f977c1b",
              "type": "basic.output",
              "data": {
                "name": "ov7670_xclk"
              },
              "position": {
                "x": 800,
                "y": 320
              }
            },
            {
              "id": "f87cbc2f-23c5-49c5-84ac-113c13d348dd",
              "type": "basic.input",
              "data": {
                "name": "testmode",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 352
              }
            },
            {
              "id": "1652a04a-a200-41e9-9126-d824e62daf73",
              "type": "basic.output",
              "data": {
                "name": "ov7670_pwdn"
              },
              "position": {
                "x": 800,
                "y": 368
              }
            },
            {
              "id": "df66099b-afea-4d27-85fe-cc32c7645103",
              "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
              "position": {
                "x": 24,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
              "type": "basic.code",
              "data": {
                "code": "  // @include ov7670_top_ctrl.v\r\n  // @include ov7670_ctrl_reg.v\r\n  // @include sccb_master.v\r\n  \r\n  ov7670_top_ctrl lnk2vrlg \r\n  (\r\n     .rst          (rst),\r\n     .clk          (clk100mhz),\r\n     .resend       (resend),\r\n     .rgbmode      (rgbmode),\r\n     .testmode     (testmode),         \r\n     .cnt_reg_test (cnt_reg_test[5:0]),\r\n     .done         (ov7670_cfgdone),\r\n     .sclk         (ov7670_sioc),\r\n     .sdat_on      (sdat_on),\r\n     .sdat_out     (sdat_out),\r\n     .ov7670_rst_n (ov7670_rst_n),\r\n     .ov7670_clk   (ov7670_xclk),\r\n     .ov7670_pwdn  (ov7670_pwdn)\r\n  );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk100mhz"
                    },
                    {
                      "name": "resend"
                    },
                    {
                      "name": "rgbmode"
                    },
                    {
                      "name": "testmode"
                    }
                  ],
                  "out": [
                    {
                      "name": "cnt_reg_test",
                      "range": "[5:0]",
                      "size": 6
                    },
                    {
                      "name": "ov7670_cfgdone"
                    },
                    {
                      "name": "ov7670_sioc"
                    },
                    {
                      "name": "sdat_on"
                    },
                    {
                      "name": "sdat_out"
                    },
                    {
                      "name": "ov7670_rst_n"
                    },
                    {
                      "name": "ov7670_xclk"
                    },
                    {
                      "name": "ov7670_pwdn"
                    }
                  ]
                }
              },
              "position": {
                "x": 200,
                "y": 32
              },
              "size": {
                "width": 480,
                "height": 392
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "fc67e6bc-f539-46c2-aad2-9e12d93fdb43",
                "port": "out"
              },
              "target": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "cd42d85e-f5a1-4da3-af0f-2cf2df5ae69f",
                "port": "out"
              },
              "target": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "clk100mhz"
              }
            },
            {
              "source": {
                "block": "df66099b-afea-4d27-85fe-cc32c7645103",
                "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
              },
              "target": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "resend"
              }
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "cnt_reg_test"
              },
              "target": {
                "block": "ce76c178-bc55-4ea1-bd6d-3ce445bc1709",
                "port": "in"
              },
              "size": 6
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "sdat_on"
              },
              "target": {
                "block": "08b8aa22-8b87-435a-b790-ef8822895486",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "sdat_out"
              },
              "target": {
                "block": "00a4b164-0fd1-410c-9092-468df22d7ec3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "ov7670_rst_n"
              },
              "target": {
                "block": "7fd08a02-253a-4cd9-8f4d-2515efe3acca",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "ov7670_pwdn"
              },
              "target": {
                "block": "1652a04a-a200-41e9-9126-d824e62daf73",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "ov7670_sioc"
              },
              "target": {
                "block": "59f4f893-d1a5-4ee9-8e0f-779762132772",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "ov7670_cfgdone"
              },
              "target": {
                "block": "119c2b46-d420-41e7-99bd-61948ac04392",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "ov7670_xclk"
              },
              "target": {
                "block": "b5cbb24e-4c52-4963-aeb6-30a84f977c1b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "0eede1f6-a152-43dc-8b3a-e3c92cbf35fd",
                "port": "out"
              },
              "target": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "rgbmode"
              }
            },
            {
              "source": {
                "block": "f87cbc2f-23c5-49c5-84ac-113c13d348dd",
                "port": "out"
              },
              "target": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "testmode"
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
    }
  }
}