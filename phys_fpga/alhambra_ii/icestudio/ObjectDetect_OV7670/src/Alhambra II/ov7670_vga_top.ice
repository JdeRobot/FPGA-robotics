{
  "version": "1.2",
  "package": {
    "name": "ov7670_rgb_yuv",
    "version": "1.1",
    "description": "Configures ov7670 in either RGB444 or YUV and shows it",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "5a3fa74b-7100-4e71-a078-2ca149e3559c",
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
            "x": 1688,
            "y": -32
          }
        },
        {
          "id": "14a02d8c-1199-4ea9-9e32-a05fdfbe73b6",
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
            "x": 1696,
            "y": 32
          }
        },
        {
          "id": "fc643432-cfdf-4c14-9b65-757883106a84",
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
            "x": 1016,
            "y": 80
          }
        },
        {
          "id": "5c3a4b49-393c-4ff3-a368-ef77aefbe39f",
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
            "x": -264,
            "y": 88
          }
        },
        {
          "id": "ffaa06b5-796a-4e98-9c55-909eb660a635",
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
            "x": 608,
            "y": 96
          }
        },
        {
          "id": "ac2c4344-5e8a-44d5-83f1-c3716461f8d8",
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
            "x": 736,
            "y": 104
          }
        },
        {
          "id": "a0eb3527-7972-436b-8569-3dbfaa8c1036",
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
            "x": 1760,
            "y": 128
          }
        },
        {
          "id": "b81a0ea6-0c17-40de-be7f-09e7b34b540a",
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
            "x": -224,
            "y": 168
          }
        },
        {
          "id": "d06565e2-0027-4d1c-be1a-72d07474e83c",
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
            "x": 1760,
            "y": 192
          }
        },
        {
          "id": "d8772c8c-9fc7-4753-ae1c-68628ef1253b",
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
            "x": -96,
            "y": 200
          }
        },
        {
          "id": "cc78171e-8916-4ea4-9596-55337729c09c",
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
            "x": 728,
            "y": 240
          }
        },
        {
          "id": "ae231bc1-98fc-4f63-bde3-93e91eb032b6",
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
            "x": -336,
            "y": 256
          }
        },
        {
          "id": "a819189a-46f8-4583-9afd-bf85086c0936",
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
            "x": 1832,
            "y": 280
          }
        },
        {
          "id": "9e8126e0-9379-481a-ade7-c01853c61f6e",
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
            "x": -248,
            "y": 336
          }
        },
        {
          "id": "83a8ff59-c66c-4018-a70f-53293b9e7c5b",
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
            "x": 1816,
            "y": 352
          }
        },
        {
          "id": "812f4fda-cb9d-4e65-8edb-fa3608dea2bb",
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
            "x": -432,
            "y": 400
          }
        },
        {
          "id": "e789260d-f329-4e21-8f38-f3aede7db563",
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
            "x": 1688,
            "y": 464
          }
        },
        {
          "id": "564210a9-ab36-4233-a12c-1ef37c0e0643",
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
            "x": -432,
            "y": 464
          }
        },
        {
          "id": "f01f4d8a-db44-4eae-8e93-0683d5b604ba",
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
            "x": -432,
            "y": 528
          }
        },
        {
          "id": "465d1871-2652-4fa2-9c4b-86c65b1854d2",
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
            "x": 1680,
            "y": 544
          }
        },
        {
          "id": "90058400-323d-4aec-ab67-97de09da9531",
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
            "x": -432,
            "y": 592
          }
        },
        {
          "id": "5c9506f7-f365-48ec-9faf-b658bdb8238c",
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
            "x": -432,
            "y": 656
          }
        },
        {
          "id": "7ffc12d8-533d-4a89-aa35-325abe2cdacc",
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
            "x": -160,
            "y": 688
          }
        },
        {
          "id": "619054f7-91da-4d45-9291-18820fcd69c4",
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
            "x": 1240,
            "y": 704
          }
        },
        {
          "id": "3b9451fc-41ef-46c2-ab38-766fddf941fa",
          "type": "b950e805010aced51a03dc9d58579f8e167a9dbb",
          "position": {
            "x": 664,
            "y": 408
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "707be221-f975-4fff-acd4-4283cefeeb90",
          "type": "b0f50e7d268a151eb4f69940891565b80b9f7306",
          "position": {
            "x": 240,
            "y": 216
          },
          "size": {
            "width": 96,
            "height": 352
          }
        },
        {
          "id": "5c7cc685-1373-458f-b981-8251f23af535",
          "type": "73da7762740ae9875ecc8756beb7e143dd8a9528",
          "position": {
            "x": -96,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "76c4bf5b-e170-4c23-9221-ee9ea2917875",
          "type": "78c6f83432d326d937d55c84c41e5f87d65c07bd",
          "position": {
            "x": 1520,
            "y": -8
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "73126cf4-a5ac-4006-b8bd-0b610c0284f8",
          "type": "78c6f83432d326d937d55c84c41e5f87d65c07bd",
          "position": {
            "x": 1640,
            "y": 120
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "f8d627a1-cb82-4b30-86f7-c3d1784f5de4",
          "type": "78c6f83432d326d937d55c84c41e5f87d65c07bd",
          "position": {
            "x": 1672,
            "y": 264
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "03455873-dfee-4483-b4b8-f35968ac26a3",
          "type": "1bed30028dcc60783f6df923e737c8d159e38a83",
          "position": {
            "x": -248,
            "y": 408
          },
          "size": {
            "width": 96,
            "height": 256
          }
        },
        {
          "id": "3d6b537f-b304-4891-81f3-c1847a767233",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": -432,
            "y": 336
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "94304c33-b298-47c9-83ba-49c8c44636fc",
          "type": "f65facb54fedefd9772f50185bce76bdc2ef46a5",
          "position": {
            "x": 1424,
            "y": 400
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "b6b384f4-03e8-470a-a6d3-6e9d08de1675",
          "type": "d7e6ff61e136e0120db6aaabf8b34ea6fd14c159",
          "position": {
            "x": 888,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7f3dbcf2-79e2-4b28-b4cd-7c3042e305f7",
          "type": "b950e805010aced51a03dc9d58579f8e167a9dbb",
          "position": {
            "x": 1224,
            "y": 408
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
          "type": "728cc4aec2ef1cd6562ae5bbeaddac0e53d22079",
          "position": {
            "x": 912,
            "y": 440
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
          "type": "b72de61b7914682aad3a0682c37b045b610dac8b",
          "position": {
            "x": -32,
            "y": 592
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "df8ee0dc-2118-4aea-9597-548819435f6a",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 768,
            "y": 376
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
            "block": "5c7cc685-1373-458f-b981-8251f23af535",
            "port": "8d0df8c9-1809-40ec-b682-f010a899530b"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "17cbaf9a-48b6-4f84-a9c2-6df9d928d021"
          }
        },
        {
          "source": {
            "block": "5c7cc685-1373-458f-b981-8251f23af535",
            "port": "8d0df8c9-1809-40ec-b682-f010a899530b"
          },
          "target": {
            "block": "3b9451fc-41ef-46c2-ab38-766fddf941fa",
            "port": "41a7d14d-2c2e-4d69-984e-9fa285b1b755"
          }
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "3f5cf141-30a5-4632-8608-37c5427134f9"
          },
          "target": {
            "block": "3b9451fc-41ef-46c2-ab38-766fddf941fa",
            "port": "bd49a723-2ccc-4b91-ba24-43f34e78af92"
          },
          "vertices": [
            {
              "x": 560,
              "y": 480
            }
          ]
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "066d2385-991a-4d38-a4e5-1b0bf59cf99c"
          },
          "target": {
            "block": "3b9451fc-41ef-46c2-ab38-766fddf941fa",
            "port": "4baee360-25c6-424e-a07c-87f7bcc80a67"
          },
          "size": 13
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "0cbd1f10-d032-43dd-af91-f8ad8d15e73a"
          },
          "target": {
            "block": "3b9451fc-41ef-46c2-ab38-766fddf941fa",
            "port": "402293a5-9140-4f6b-a09b-ea21da5f7859"
          },
          "size": 12
        },
        {
          "source": {
            "block": "5c3a4b49-393c-4ff3-a368-ef77aefbe39f",
            "port": "out"
          },
          "target": {
            "block": "5c7cc685-1373-458f-b981-8251f23af535",
            "port": "65dd4fc6-ffd6-4b40-bf5e-b6954a752211"
          }
        },
        {
          "source": {
            "block": "76c4bf5b-e170-4c23-9221-ee9ea2917875",
            "port": "a32fbcfe-f87d-41e6-9ec9-86b3472deeb0"
          },
          "target": {
            "block": "14a02d8c-1199-4ea9-9e32-a05fdfbe73b6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "76c4bf5b-e170-4c23-9221-ee9ea2917875",
            "port": "f22443f0-a80d-47e9-ad8a-520a0d9ca269"
          },
          "target": {
            "block": "5a3fa74b-7100-4e71-a078-2ca149e3559c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "73126cf4-a5ac-4006-b8bd-0b610c0284f8",
            "port": "f22443f0-a80d-47e9-ad8a-520a0d9ca269"
          },
          "target": {
            "block": "a0eb3527-7972-436b-8569-3dbfaa8c1036",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "73126cf4-a5ac-4006-b8bd-0b610c0284f8",
            "port": "a32fbcfe-f87d-41e6-9ec9-86b3472deeb0"
          },
          "target": {
            "block": "d06565e2-0027-4d1c-be1a-72d07474e83c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f8d627a1-cb82-4b30-86f7-c3d1784f5de4",
            "port": "f22443f0-a80d-47e9-ad8a-520a0d9ca269"
          },
          "target": {
            "block": "a819189a-46f8-4583-9afd-bf85086c0936",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f8d627a1-cb82-4b30-86f7-c3d1784f5de4",
            "port": "a32fbcfe-f87d-41e6-9ec9-86b3472deeb0"
          },
          "target": {
            "block": "83a8ff59-c66c-4018-a70f-53293b9e7c5b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b81a0ea6-0c17-40de-be7f-09e7b34b540a",
            "port": "out"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "39a65195-8ffd-49ac-ad1f-f4e3ef32a78f"
          },
          "vertices": [
            {
              "x": -72,
              "y": 280
            }
          ]
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "3232cbf0-f394-44bc-95cb-73c28c42fa34"
          },
          "target": {
            "block": "ffaa06b5-796a-4e98-9c55-909eb660a635",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "87aaf691-b202-4dc5-8c8e-f09e2ac0b826"
          },
          "target": {
            "block": "ac2c4344-5e8a-44d5-83f1-c3716461f8d8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "ab22ec1b-91ee-4f49-b32f-d5440487a6bd"
          },
          "target": {
            "block": "cc78171e-8916-4ea4-9596-55337729c09c",
            "port": "in"
          },
          "vertices": [
            {
              "x": 624,
              "y": 280
            }
          ]
        },
        {
          "source": {
            "block": "d8772c8c-9fc7-4753-ae1c-68628ef1253b",
            "port": "out"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "e1a8af51-4d1c-48ad-9c1d-86be50a7db95"
          }
        },
        {
          "source": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "869657d7-2582-484e-a7f9-b3767aa8572c"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "f02d9881-e6e1-43df-8b49-66367f6edd19"
          },
          "size": 8
        },
        {
          "source": {
            "block": "3d6b537f-b304-4891-81f3-c1847a767233",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "9b523903-6033-48ee-9911-17cd4a0098fa"
          }
        },
        {
          "source": {
            "block": "3d6b537f-b304-4891-81f3-c1847a767233",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "c3ded014-3d4c-4fe4-b6eb-60cebda43db0"
          }
        },
        {
          "source": {
            "block": "3d6b537f-b304-4891-81f3-c1847a767233",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "733d6c10-c99e-4ddc-8d03-29793ec8c46a"
          }
        },
        {
          "source": {
            "block": "f01f4d8a-db44-4eae-8e93-0683d5b604ba",
            "port": "out"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "a31b590a-a4ef-4f19-bf04-082d40c70adb"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "812f4fda-cb9d-4e65-8edb-fa3608dea2bb",
            "port": "out"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "727214f6-871c-4086-b363-38e9c9d6fa77"
          },
          "vertices": [
            {
              "x": -296,
              "y": 464
            }
          ]
        },
        {
          "source": {
            "block": "5c9506f7-f365-48ec-9faf-b658bdb8238c",
            "port": "out"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "3512f8a7-dbc9-4dfe-be01-605af3aac1e1"
          }
        },
        {
          "source": {
            "block": "d8772c8c-9fc7-4753-ae1c-68628ef1253b",
            "port": "out"
          },
          "target": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "8dec1622-1ecb-44dd-aa7c-6c08ce596226"
          }
        },
        {
          "source": {
            "block": "5c7cc685-1373-458f-b981-8251f23af535",
            "port": "8d0df8c9-1809-40ec-b682-f010a899530b"
          },
          "target": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "684a4969-01de-49e0-8962-35c1c389232c"
          }
        },
        {
          "source": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "ec690a06-0ec9-43b8-b5d5-a08dc29f2aa5"
          },
          "target": {
            "block": "76c4bf5b-e170-4c23-9221-ee9ea2917875",
            "port": "76373c63-7291-4047-8eba-bcbc1030c730"
          },
          "vertices": [
            {
              "x": 1568,
              "y": 352
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "9f124f5d-9e55-4251-bc92-4da0950b3ca7"
          },
          "target": {
            "block": "73126cf4-a5ac-4006-b8bd-0b610c0284f8",
            "port": "76373c63-7291-4047-8eba-bcbc1030c730"
          },
          "vertices": [
            {
              "x": 1648,
              "y": 336
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "a89262d2-1400-4664-97b1-9eeb755106e9"
          },
          "target": {
            "block": "f8d627a1-cb82-4b30-86f7-c3d1784f5de4",
            "port": "76373c63-7291-4047-8eba-bcbc1030c730"
          },
          "size": 4
        },
        {
          "source": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "ce7ef2ff-5ae1-457b-8eae-dad1f7e120c4"
          },
          "target": {
            "block": "465d1871-2652-4fa2-9c4b-86c65b1854d2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "577d2445-2595-491c-9084-d994b5c39d8d"
          },
          "target": {
            "block": "e789260d-f329-4e21-8f38-f3aede7db563",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b6b384f4-03e8-470a-a6d3-6e9d08de1675",
            "port": "6459ba21-608e-4f77-8235-c8c1b08ba775"
          },
          "target": {
            "block": "fc643432-cfdf-4c14-9b65-757883106a84",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "f1d87b29-eb08-4299-a540-533fb6117945"
          },
          "target": {
            "block": "b6b384f4-03e8-470a-a6d3-6e9d08de1675",
            "port": "f96a1baf-fc8b-4c25-b132-12552605743f"
          }
        },
        {
          "source": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "c1e4faf5-6809-4479-91e0-ba807320a78f"
          },
          "target": {
            "block": "b6b384f4-03e8-470a-a6d3-6e9d08de1675",
            "port": "04fdb7a7-2740-4ff1-ad26-56407ef5b958"
          }
        },
        {
          "source": {
            "block": "ae231bc1-98fc-4f63-bde3-93e91eb032b6",
            "port": "out"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "548589b6-f63b-4fd1-a16b-4631af0b83a3"
          },
          "vertices": [
            {
              "x": -112,
              "y": 312
            }
          ]
        },
        {
          "source": {
            "block": "9e8126e0-9379-481a-ade7-c01853c61f6e",
            "port": "out"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "b7e432dc-1572-4971-bdd6-5b4aaad78afb"
          },
          "vertices": [
            {
              "x": -120,
              "y": 432
            }
          ]
        },
        {
          "source": {
            "block": "564210a9-ab36-4233-a12c-1ef37c0e0643",
            "port": "out"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "2f0c37bf-782f-4ff4-a948-092d72f663cb"
          },
          "vertices": [
            {
              "x": -296,
              "y": 512
            }
          ]
        },
        {
          "source": {
            "block": "90058400-323d-4aec-ab67-97de09da9531",
            "port": "out"
          },
          "target": {
            "block": "03455873-dfee-4483-b4b8-f35968ac26a3",
            "port": "40ac0610-323e-4121-8b8c-22221388630d"
          }
        },
        {
          "source": {
            "block": "5c7cc685-1373-458f-b981-8251f23af535",
            "port": "8d0df8c9-1809-40ec-b682-f010a899530b"
          },
          "target": {
            "block": "7f3dbcf2-79e2-4b28-b4cd-7c3042e305f7",
            "port": "41a7d14d-2c2e-4d69-984e-9fa285b1b755"
          }
        },
        {
          "source": {
            "block": "7f3dbcf2-79e2-4b28-b4cd-7c3042e305f7",
            "port": "c2a0a356-c1ab-493d-98e8-7ea415913445"
          },
          "target": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "4b01e12d-ff8e-4013-a566-75e88153d55d"
          },
          "size": 12
        },
        {
          "source": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "957075c8-28b9-455f-ba1e-2c786974a544"
          },
          "target": {
            "block": "7f3dbcf2-79e2-4b28-b4cd-7c3042e305f7",
            "port": "46e37124-3720-45e6-9a47-6f30b84f2f38"
          },
          "size": 13
        },
        {
          "source": {
            "block": "5c7cc685-1373-458f-b981-8251f23af535",
            "port": "8d0df8c9-1809-40ec-b682-f010a899530b"
          },
          "target": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "e9ea4f5e-5219-49ea-8ace-3948c71a70ea"
          }
        },
        {
          "source": {
            "block": "d8772c8c-9fc7-4753-ae1c-68628ef1253b",
            "port": "out"
          },
          "target": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "528f5933-e16b-49ad-84ce-ea1ba898ae30"
          }
        },
        {
          "source": {
            "block": "3b9451fc-41ef-46c2-ab38-766fddf941fa",
            "port": "c2a0a356-c1ab-493d-98e8-7ea415913445"
          },
          "target": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "6c9cb566-0074-44fd-8d9b-8b7810e14a18"
          },
          "size": 12
        },
        {
          "source": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "4253eff9-5483-4d7d-9f7e-21a5f121da9b"
          },
          "target": {
            "block": "3b9451fc-41ef-46c2-ab38-766fddf941fa",
            "port": "46e37124-3720-45e6-9a47-6f30b84f2f38"
          },
          "size": 13
        },
        {
          "source": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "630b1e3c-6916-44c2-8935-69f4f5bdf3e1"
          },
          "target": {
            "block": "7f3dbcf2-79e2-4b28-b4cd-7c3042e305f7",
            "port": "bd49a723-2ccc-4b91-ba24-43f34e78af92"
          }
        },
        {
          "source": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "d94ecd50-4fc0-4b18-acbc-84272ff9e389"
          },
          "target": {
            "block": "7f3dbcf2-79e2-4b28-b4cd-7c3042e305f7",
            "port": "4baee360-25c6-424e-a07c-87f7bcc80a67"
          },
          "size": 13
        },
        {
          "source": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "accb0dfb-9f49-4e96-af27-4a5989ae8e1f"
          },
          "target": {
            "block": "7f3dbcf2-79e2-4b28-b4cd-7c3042e305f7",
            "port": "402293a5-9140-4f6b-a09b-ea21da5f7859"
          },
          "size": 12
        },
        {
          "source": {
            "block": "5c7cc685-1373-458f-b981-8251f23af535",
            "port": "8d0df8c9-1809-40ec-b682-f010a899530b"
          },
          "target": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "59d34d5d-e138-470f-a77a-24cf197dba62"
          }
        },
        {
          "source": {
            "block": "d8772c8c-9fc7-4753-ae1c-68628ef1253b",
            "port": "out"
          },
          "target": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "160f7b8b-bdd1-49a8-be04-2e93a9d9f40e"
          },
          "vertices": [
            {
              "x": -88,
              "y": 296
            }
          ]
        },
        {
          "source": {
            "block": "7ffc12d8-533d-4a89-aa35-325abe2cdacc",
            "port": "out"
          },
          "target": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "99bc1efe-34ca-4402-abb0-3ccc5bf89106"
          }
        },
        {
          "source": {
            "block": "df8ee0dc-2118-4aea-9597-548819435f6a",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "877821ee-1b00-4c1f-b4e8-7facac2680ad"
          },
          "vertices": [
            {
              "x": 848,
              "y": 528
            }
          ]
        },
        {
          "source": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "f7ae7ed1-da0e-4656-ace6-d13e4abb8d31"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "afd3f6c2-a0e9-4ccd-b964-dddf9262095d"
          }
        },
        {
          "source": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "ecd97962-3a35-4477-bb4a-4e4832bce1e7"
          },
          "target": {
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "3d241f50-36c2-425a-8fed-1d5926f36bb9"
          }
        },
        {
          "source": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "f7ae7ed1-da0e-4656-ace6-d13e4abb8d31"
          },
          "target": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "d2ed3a8f-d19c-4636-9f68-68a3c6002a1f"
          }
        },
        {
          "source": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "ecd97962-3a35-4477-bb4a-4e4832bce1e7"
          },
          "target": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "e9b72a57-5420-46de-9e7d-54b42d86985e"
          }
        },
        {
          "source": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "19bdf6a7-fac5-4720-9da0-b72eb3953ea0"
          },
          "target": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "3c0c8bf8-77bd-4129-92b7-1536af8543f5"
          },
          "size": 3
        },
        {
          "source": {
            "block": "4b166592-f87c-4bb8-aaa0-8af0437c1e81",
            "port": "19bdf6a7-fac5-4720-9da0-b72eb3953ea0"
          },
          "target": {
            "block": "94304c33-b298-47c9-83ba-49c8c44636fc",
            "port": "c18194a5-939d-46b6-8163-507f9cef5014"
          },
          "size": 3
        },
        {
          "source": {
            "block": "6c34015f-b145-4bcd-a6af-170eee5e79ca",
            "port": "efb0f688-a19d-4dcd-9d1d-f13bfafbe8ed"
          },
          "target": {
            "block": "619054f7-91da-4d45-9291-18820fcd69c4",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1024,
              "y": 792
            }
          ],
          "size": 8
        }
      ]
    }
  },
  "dependencies": {
    "b950e805010aced51a03dc9d58579f8e167a9dbb": {
      "package": {
        "name": "framebuf_80x60_12b",
        "version": "1.0",
        "description": "memory for 80x60 image, double port, one for writting and the other for reading. 12-bit word length",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "41a7d14d-2c2e-4d69-984e-9fa285b1b755",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 32,
                "y": 48
              }
            },
            {
              "id": "bd49a723-2ccc-4b91-ba24-43f34e78af92",
              "type": "basic.input",
              "data": {
                "name": "wea",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 136
              }
            },
            {
              "id": "4baee360-25c6-424e-a07c-87f7bcc80a67",
              "type": "basic.input",
              "data": {
                "name": "addra",
                "range": "[12:0]",
                "clock": false,
                "size": 13
              },
              "position": {
                "x": 16,
                "y": 224
              }
            },
            {
              "id": "c2a0a356-c1ab-493d-98e8-7ea415913445",
              "type": "basic.output",
              "data": {
                "name": "doutb",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 896,
                "y": 224
              }
            },
            {
              "id": "402293a5-9140-4f6b-a09b-ea21da5f7859",
              "type": "basic.input",
              "data": {
                "name": "dina",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 16,
                "y": 304
              }
            },
            {
              "id": "46e37124-3720-45e6-9a47-6f30b84f2f38",
              "type": "basic.input",
              "data": {
                "name": "addrb",
                "range": "[12:0]",
                "clock": false,
                "size": 13
              },
              "position": {
                "x": 16,
                "y": 384
              }
            },
            {
              "id": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
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
                "x": 192,
                "y": 48
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
                "block": "41a7d14d-2c2e-4d69-984e-9fa285b1b755",
                "port": "out"
              },
              "target": {
                "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "bd49a723-2ccc-4b91-ba24-43f34e78af92",
                "port": "out"
              },
              "target": {
                "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
                "port": "wea"
              }
            },
            {
              "source": {
                "block": "4baee360-25c6-424e-a07c-87f7bcc80a67",
                "port": "out"
              },
              "target": {
                "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
                "port": "addra"
              },
              "size": 13
            },
            {
              "source": {
                "block": "402293a5-9140-4f6b-a09b-ea21da5f7859",
                "port": "out"
              },
              "target": {
                "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
                "port": "dina"
              },
              "size": 12
            },
            {
              "source": {
                "block": "46e37124-3720-45e6-9a47-6f30b84f2f38",
                "port": "out"
              },
              "target": {
                "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
                "port": "addrb"
              },
              "size": 13
            },
            {
              "source": {
                "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
                "port": "doutb"
              },
              "target": {
                "block": "c2a0a356-c1ab-493d-98e8-7ea415913445",
                "port": "in"
              },
              "size": 12
            }
          ]
        }
      }
    },
    "b0f50e7d268a151eb4f69940891565b80b9f7306": {
      "package": {
        "name": "ov7670_interface",
        "version": "1.0",
        "description": "ov7670 camera interface. Configures camera and captures pixels",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "75402cb7-9429-4bc5-b9f4-7c786a4d6ed5",
              "type": "basic.output",
              "data": {
                "name": "cnt_reg_test",
                "range": "[5:0]",
                "size": 6
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
                "name": "ov7670_cfgdone"
              },
              "position": {
                "x": 528,
                "y": 8
              }
            },
            {
              "id": "e1a8af51-4d1c-48ad-9c1d-86be50a7db95",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 32
              }
            },
            {
              "id": "3232cbf0-f394-44bc-95cb-73c28c42fa34",
              "type": "basic.output",
              "data": {
                "name": "ov7670_sioc"
              },
              "position": {
                "x": 536,
                "y": 48
              }
            },
            {
              "id": "f1d87b29-eb08-4299-a540-533fb6117945",
              "type": "basic.output",
              "data": {
                "name": "ov7670_sdat_on"
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
                "clock": true
              },
              "position": {
                "x": 24,
                "y": 96
              }
            },
            {
              "id": "c1e4faf5-6809-4479-91e0-ba807320a78f",
              "type": "basic.output",
              "data": {
                "name": "ov7670_sdat_out"
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
                "name": "ov7670_rst_n"
              },
              "position": {
                "x": 528,
                "y": 184
              }
            },
            {
              "id": "3d241f50-36c2-425a-8fed-1d5926f36bb9",
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
                "x": 40,
                "y": 224
              }
            },
            {
              "id": "ab22ec1b-91ee-4f49-b32f-d5440487a6bd",
              "type": "basic.output",
              "data": {
                "name": "ov7670_xclk"
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
                "name": "ov7670_pwdn"
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
                "size": 13
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
                "size": 12
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
                "name": "capture_we"
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
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 32,
                "y": 544
              }
            },
            {
              "id": "afd3f6c2-a0e9-4ccd-b964-dddf9262095d",
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
                "x": -120,
                "y": 568
              }
            },
            {
              "id": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
              "type": "9d9474044436a4b68de35890bda35a2f396613ba",
              "position": {
                "x": 280,
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
                "block": "afd3f6c2-a0e9-4ccd-b964-dddf9262095d",
                "port": "out"
              },
              "target": {
                "block": "8bccd0ca-fdfc-4ce3-a065-e02af95e233d",
                "port": "bfa1c852-d224-4f2a-be3f-78d1521e3f25"
              }
            },
            {
              "source": {
                "block": "afd3f6c2-a0e9-4ccd-b964-dddf9262095d",
                "port": "out"
              },
              "target": {
                "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
                "port": "dcf14357-6123-4a5d-a723-376d0b58069d"
              }
            },
            {
              "source": {
                "block": "3d241f50-36c2-425a-8fed-1d5926f36bb9",
                "port": "out"
              },
              "target": {
                "block": "65311cd6-0ea0-43e9-82a8-aa407e7b3a1d",
                "port": "80010459-89ed-4c6d-8b2d-808b5578ffdd"
              }
            }
          ]
        }
      }
    },
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
                "x": 112,
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
                "x": 88,
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
                "x": 96,
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
                "x": 80,
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
              "id": "bfa1c852-d224-4f2a-be3f-78d1521e3f25",
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
                "x": 112,
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
                "block": "bfa1c852-d224-4f2a-be3f-78d1521e3f25",
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
              "id": "dcf14357-6123-4a5d-a723-376d0b58069d",
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
              "id": "80010459-89ed-4c6d-8b2d-808b5578ffdd",
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
                "x": 32,
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
                "code": "  // @include ov7670_top_ctrl.v\r\n  // @include ov7670_ctrl_reg.v\r\n  // @include sccb_master.v\r\n  \r\n  ov7670_top_ctrl lnk2vrlg \r\n  (\r\n     .rst          (rst),\r\n     .clk          (clk100mhz),\r\n     .resend       (resend),\r\n     .rgbmode      (rgbmode),\r\n     .testmode     (testmode),     \r\n     .cnt_reg_test (cnt_reg_test[5:0]),\r\n     .done         (ov7670_cfgdone),\r\n     .sclk         (ov7670_sioc),\r\n     .sdat_on      (sdat_on),\r\n     .sdat_out     (sdat_out),\r\n     .ov7670_rst_n (ov7670_rst_n),\r\n     .ov7670_clk   (ov7670_xclk),\r\n     .ov7670_pwdn  (ov7670_pwdn)\r\n  );",
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
                "block": "dcf14357-6123-4a5d-a723-376d0b58069d",
                "port": "out"
              },
              "target": {
                "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
                "port": "rgbmode"
              }
            },
            {
              "source": {
                "block": "80010459-89ed-4c6d-8b2d-808b5578ffdd",
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
    },
    "73da7762740ae9875ecc8756beb7e143dd8a9528": {
      "package": {
        "name": "12MHz to 100MHz",
        "version": "1.0",
        "description": "PLL converts the 12MHz clock to 100MHz",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "65dd4fc6-ffd6-4b40-bf5e-b6954a752211",
              "type": "basic.input",
              "data": {
                "name": "clk_brd",
                "clock": true
              },
              "position": {
                "x": 80,
                "y": 232
              }
            },
            {
              "id": "8d0df8c9-1809-40ec-b682-f010a899530b",
              "type": "basic.output",
              "data": {
                "name": "clk100mhz"
              },
              "position": {
                "x": 752,
                "y": 232
              }
            },
            {
              "id": "0b16de18-4e1f-473b-9e42-eaf04c72d062",
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
                "x": 240,
                "y": 96
              },
              "size": {
                "width": 456,
                "height": 328
              }
            },
            {
              "id": "1eab4c2c-99f1-48cd-ba6e-b6f9b72320ca",
              "type": "basic.info",
              "data": {
                "info": "Generates a 100MHz clk from a 12MHz input clock",
                "readonly": false
              },
              "position": {
                "x": 248,
                "y": 48
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
                "block": "65dd4fc6-ffd6-4b40-bf5e-b6954a752211",
                "port": "out"
              },
              "target": {
                "block": "0b16de18-4e1f-473b-9e42-eaf04c72d062",
                "port": "clk_brd"
              }
            },
            {
              "source": {
                "block": "0b16de18-4e1f-473b-9e42-eaf04c72d062",
                "port": "clk100mhz"
              },
              "target": {
                "block": "8d0df8c9-1809-40ec-b682-f010a899530b",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "78c6f83432d326d937d55c84c41e5f87d65c07bd": {
      "package": {
        "name": "in4_split",
        "version": "",
        "description": "Split a 4 bits bus into 4 outputs",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "661421c3-a761-4f19-9463-e839aff33a1d",
              "type": "basic.output",
              "data": {
                "name": "out_0"
              },
              "position": {
                "x": 704,
                "y": 136
              }
            },
            {
              "id": "63deebcf-645d-4a51-a1e4-1d6c8fee6aae",
              "type": "basic.output",
              "data": {
                "name": "out_1"
              },
              "position": {
                "x": 704,
                "y": 184
              }
            },
            {
              "id": "76373c63-7291-4047-8eba-bcbc1030c730",
              "type": "basic.input",
              "data": {
                "name": "in4bits",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 88,
                "y": 208
              }
            },
            {
              "id": "f22443f0-a80d-47e9-ad8a-520a0d9ca269",
              "type": "basic.output",
              "data": {
                "name": "out_2"
              },
              "position": {
                "x": 704,
                "y": 232
              }
            },
            {
              "id": "a32fbcfe-f87d-41e6-9ec9-86b3472deeb0",
              "type": "basic.output",
              "data": {
                "name": "out_3"
              },
              "position": {
                "x": 704,
                "y": 280
              }
            },
            {
              "id": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
              "type": "basic.code",
              "data": {
                "code": "assign out_0 = in4bits[0];\nassign out_1 = in4bits[1];\nassign out_2 = in4bits[2];\nassign out_3 = in4bits[3];",
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
                "x": 280,
                "y": 176
              },
              "size": {
                "width": 360,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "76373c63-7291-4047-8eba-bcbc1030c730",
                "port": "out"
              },
              "target": {
                "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
                "port": "in4bits"
              },
              "size": 4
            },
            {
              "source": {
                "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
                "port": "out_0"
              },
              "target": {
                "block": "661421c3-a761-4f19-9463-e839aff33a1d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
                "port": "out_1"
              },
              "target": {
                "block": "63deebcf-645d-4a51-a1e4-1d6c8fee6aae",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
                "port": "out_2"
              },
              "target": {
                "block": "f22443f0-a80d-47e9-ad8a-520a0d9ca269",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
                "port": "out_3"
              },
              "target": {
                "block": "a32fbcfe-f87d-41e6-9ec9-86b3472deeb0",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "1bed30028dcc60783f6df923e737c8d159e38a83": {
      "package": {
        "name": "aggr8",
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
                "x": 656,
                "y": 256
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
                "code": "assign dout[0] =in0;\nassign dout[1] =in1;\nassign dout[2] =in2;\nassign dout[3] =in3;\nassign dout[4] =in4;\nassign dout[5] =in5;\nassign dout[6] =in6;\nassign dout[7] =in7;",
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
                "x": 344,
                "y": 200
              },
              "size": {
                "width": 248,
                "height": 176
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
              "vertices": [
                {
                  "x": 272,
                  "y": 256
                }
              ]
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
              "vertices": [
                {
                  "x": 288,
                  "y": 216
                }
              ]
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
              "vertices": [
                {
                  "x": 272,
                  "y": 312
                }
              ]
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
              "vertices": [
                {
                  "x": 280,
                  "y": 344
                }
              ]
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
              "vertices": [
                {
                  "x": 288,
                  "y": 400
                }
              ]
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
    "f65facb54fedefd9772f50185bce76bdc2ef46a5": {
      "package": {
        "name": "top_vga_display_buffer",
        "version": "1.0",
        "description": "Shows the content of a memory (buffer) on a VGA. Just 80x60. 100MHz clock, includes synch",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "577d2445-2595-491c-9084-d994b5c39d8d",
              "type": "basic.output",
              "data": {
                "name": "vga_hsync"
              },
              "position": {
                "x": 464,
                "y": -136
              }
            },
            {
              "id": "ce7ef2ff-5ae1-457b-8eae-dad1f7e120c4",
              "type": "basic.output",
              "data": {
                "name": "vga_vsync"
              },
              "position": {
                "x": 312,
                "y": -128
              }
            },
            {
              "id": "957075c8-28b9-455f-ba1e-2c786974a544",
              "type": "basic.output",
              "data": {
                "name": "frame_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 808,
                "y": -64
              }
            },
            {
              "id": "8dec1622-1ecb-44dd-aa7c-6c08ce596226",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -48,
                "y": 8
              }
            },
            {
              "id": "ec690a06-0ec9-43b8-b5d5-a08dc29f2aa5",
              "type": "basic.output",
              "data": {
                "name": "vga_red",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 808,
                "y": 8
              }
            },
            {
              "id": "9f124f5d-9e55-4251-bc92-4da0950b3ca7",
              "type": "basic.output",
              "data": {
                "name": "vga_green",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 808,
                "y": 80
              }
            },
            {
              "id": "684a4969-01de-49e0-8962-35c1c389232c",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": -192,
                "y": 104
              }
            },
            {
              "id": "a89262d2-1400-4664-97b1-9eeb755106e9",
              "type": "basic.output",
              "data": {
                "name": "vga_blue",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 808,
                "y": 152
              }
            },
            {
              "id": "4b01e12d-ff8e-4013-a566-75e88153d55d",
              "type": "basic.input",
              "data": {
                "name": "frame_pixel",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 344,
                "y": 168
              }
            },
            {
              "id": "d2ed3a8f-d19c-4636-9f68-68a3c6002a1f",
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
                "x": 360,
                "y": 216
              }
            },
            {
              "id": "e9b72a57-5420-46de-9e7d-54b42d86985e",
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
                "x": 368,
                "y": 256
              }
            },
            {
              "id": "c18194a5-939d-46b6-8163-507f9cef5014",
              "type": "basic.input",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "pins": [
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
                "x": 384,
                "y": 304
              }
            },
            {
              "id": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
              "type": "8635c8f2ae895f7038f00286aa584ede82072281",
              "position": {
                "x": 104,
                "y": -8
              },
              "size": {
                "width": 96,
                "height": 192
              }
            },
            {
              "id": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
              "type": "e98f0efce922f5c9844f4f4099154a34e0c1db77",
              "position": {
                "x": 584,
                "y": -72
              },
              "size": {
                "width": 96,
                "height": 384
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8dec1622-1ecb-44dd-aa7c-6c08ce596226",
                "port": "out"
              },
              "target": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "d7825011-3784-499f-8f78-848daff1f218"
              }
            },
            {
              "source": {
                "block": "8dec1622-1ecb-44dd-aa7c-6c08ce596226",
                "port": "out"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "3bfd3aec-8bb8-4141-b4e6-dbeb43ab765e"
              }
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "c7fd3e9c-b755-4b02-b528-6565bd3ab584"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "57ae9f5d-3586-4e28-8348-99cd0e43d0ab"
              }
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "a9032c47-02cb-4b95-8d7a-306e60406c29"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "b1124e74-c979-42a5-8656-5d339cd84d37"
              }
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "b93e7441-b87e-4252-805e-dbc29a63add8"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "2731484c-007d-4ddf-8a11-e9a46ed6437f"
              }
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "339bdf97-c797-4b8d-bcd7-c9e073631869"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "75a3fd55-a9a9-41bf-9b90-12dfbc773603"
              }
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "46e3647b-7b1f-4e75-970c-ad971d14b5ea"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "22b50a1e-8dfd-4f3d-b408-5a4dbc0325c4"
              },
              "size": 10
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "dc3cad4c-68e1-4247-9dfc-8a6a7f0429f1"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "0f4db30f-f401-4b0b-a24a-64e2cab45b48"
              },
              "size": 10
            },
            {
              "source": {
                "block": "684a4969-01de-49e0-8962-35c1c389232c",
                "port": "out"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "4786cc9e-bfa2-40f4-af3e-759c5de4b48d"
              }
            },
            {
              "source": {
                "block": "684a4969-01de-49e0-8962-35c1c389232c",
                "port": "out"
              },
              "target": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "e87df823-810b-48be-bc92-7af912e59159"
              }
            },
            {
              "source": {
                "block": "4b01e12d-ff8e-4013-a566-75e88153d55d",
                "port": "out"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "3de7b56c-3c49-43c8-85b3-f96db8a510ba"
              },
              "size": 12
            },
            {
              "source": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "5227f4f0-f0c8-4efb-8b7b-3d8c3a8a06a2"
              },
              "target": {
                "block": "957075c8-28b9-455f-ba1e-2c786974a544",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "6a945bf8-e191-4008-b6e4-39c6fd994a9c"
              },
              "target": {
                "block": "ec690a06-0ec9-43b8-b5d5-a08dc29f2aa5",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "d2138c06-c304-4b09-a01f-82ac730620fd"
              },
              "target": {
                "block": "9f124f5d-9e55-4251-bc92-4da0950b3ca7",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "9268078c-d20b-4e3c-834d-0af4858141d4"
              },
              "target": {
                "block": "a89262d2-1400-4664-97b1-9eeb755106e9",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "b93e7441-b87e-4252-805e-dbc29a63add8"
              },
              "target": {
                "block": "577d2445-2595-491c-9084-d994b5c39d8d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
                "port": "339bdf97-c797-4b8d-bcd7-c9e073631869"
              },
              "target": {
                "block": "ce7ef2ff-5ae1-457b-8eae-dad1f7e120c4",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "d2ed3a8f-d19c-4636-9f68-68a3c6002a1f",
                "port": "out"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "cb5837ef-764f-43ad-911e-d9de6d80b778"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "e9b72a57-5420-46de-9e7d-54b42d86985e",
                "port": "out"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "8818475c-a83d-47b8-b1c9-70beb4c42d8d"
              }
            },
            {
              "source": {
                "block": "c18194a5-939d-46b6-8163-507f9cef5014",
                "port": "out"
              },
              "target": {
                "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
                "port": "b7a1f8d8-6e26-4a72-b64a-f84e3fb8fbf5"
              },
              "size": 3
            }
          ]
        }
      }
    },
    "8635c8f2ae895f7038f00286aa584ede82072281": {
      "package": {
        "name": "vga_sync",
        "version": "0.1",
        "description": "VGA synch 640x480 input clock 100MHz",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c7fd3e9c-b755-4b02-b528-6565bd3ab584",
              "type": "basic.output",
              "data": {
                "name": "vga_visible"
              },
              "position": {
                "x": 848,
                "y": 208
              }
            },
            {
              "id": "d7825011-3784-499f-8f78-848daff1f218",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 248
              }
            },
            {
              "id": "a9032c47-02cb-4b95-8d7a-306e60406c29",
              "type": "basic.output",
              "data": {
                "name": "vga_new_pxl"
              },
              "position": {
                "x": 848,
                "y": 248
              }
            },
            {
              "id": "b93e7441-b87e-4252-805e-dbc29a63add8",
              "type": "basic.output",
              "data": {
                "name": "vga_hsync"
              },
              "position": {
                "x": 848,
                "y": 288
              }
            },
            {
              "id": "339bdf97-c797-4b8d-bcd7-c9e073631869",
              "type": "basic.output",
              "data": {
                "name": "vga_vsync"
              },
              "position": {
                "x": 848,
                "y": 328
              }
            },
            {
              "id": "e87df823-810b-48be-bc92-7af912e59159",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": 136,
                "y": 368
              }
            },
            {
              "id": "46e3647b-7b1f-4e75-970c-ad971d14b5ea",
              "type": "basic.output",
              "data": {
                "name": "vga_col",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 848,
                "y": 368
              }
            },
            {
              "id": "dc3cad4c-68e1-4247-9dfc-8a6a7f0429f1",
              "type": "basic.output",
              "data": {
                "name": "vga_row",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 848,
                "y": 408
              }
            },
            {
              "id": "bf281b20-4810-4198-be4f-463d409da391",
              "type": "basic.code",
              "data": {
                "code": "   // @include vga_sync.v\r\n   \r\n   vga_sync link_vrlg\r\n   (\r\n     .rst     (rst),\r\n     .clk     (clk100mhz),\r\n     .visible (vga_visible),\r\n     .new_pxl (vga_new_pxl),\r\n     .hsync   (vga_hsync),\r\n     .vsync   (vga_vsync),\r\n     .col     (vga_col),\r\n     .row     (vga_row)\r\n  );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk100mhz"
                    }
                  ],
                  "out": [
                    {
                      "name": "vga_visible"
                    },
                    {
                      "name": "vga_new_pxl"
                    },
                    {
                      "name": "vga_hsync"
                    },
                    {
                      "name": "vga_vsync"
                    },
                    {
                      "name": "vga_col",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "vga_row",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 336,
                "y": 216
              },
              "size": {
                "width": 424,
                "height": 248
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d7825011-3784-499f-8f78-848daff1f218",
                "port": "out"
              },
              "target": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "e87df823-810b-48be-bc92-7af912e59159",
                "port": "out"
              },
              "target": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "clk100mhz"
              }
            },
            {
              "source": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "vga_hsync"
              },
              "target": {
                "block": "b93e7441-b87e-4252-805e-dbc29a63add8",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "vga_visible"
              },
              "target": {
                "block": "c7fd3e9c-b755-4b02-b528-6565bd3ab584",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "vga_new_pxl"
              },
              "target": {
                "block": "a9032c47-02cb-4b95-8d7a-306e60406c29",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "vga_vsync"
              },
              "target": {
                "block": "339bdf97-c797-4b8d-bcd7-c9e073631869",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "vga_col"
              },
              "target": {
                "block": "46e3647b-7b1f-4e75-970c-ad971d14b5ea",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "bf281b20-4810-4198-be4f-463d409da391",
                "port": "vga_row"
              },
              "target": {
                "block": "dc3cad4c-68e1-4247-9dfc-8a6a7f0429f1",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "e98f0efce922f5c9844f4f4099154a34e0c1db77": {
      "package": {
        "name": "vga_display_buf",
        "version": "1.0",
        "description": "shows in a VGA the content of a memory (buffer). synch not included",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3bfd3aec-8bb8-4141-b4e6-dbeb43ab765e",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 216,
                "y": 200
              }
            },
            {
              "id": "4786cc9e-bfa2-40f4-af3e-759c5de4b48d",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": 176,
                "y": 280
              }
            },
            {
              "id": "5227f4f0-f0c8-4efb-8b7b-3d8c3a8a06a2",
              "type": "basic.output",
              "data": {
                "name": "frame_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 944,
                "y": 280
              }
            },
            {
              "id": "57ae9f5d-3586-4e28-8348-99cd0e43d0ab",
              "type": "basic.input",
              "data": {
                "name": "vga_visible",
                "clock": false
              },
              "position": {
                "x": 168,
                "y": 320
              }
            },
            {
              "id": "b1124e74-c979-42a5-8656-5d339cd84d37",
              "type": "basic.input",
              "data": {
                "name": "vga_new_pxl",
                "clock": false
              },
              "position": {
                "x": 176,
                "y": 368
              }
            },
            {
              "id": "6a945bf8-e191-4008-b6e4-39c6fd994a9c",
              "type": "basic.output",
              "data": {
                "name": "vga_red",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 912,
                "y": 408
              }
            },
            {
              "id": "2731484c-007d-4ddf-8a11-e9a46ed6437f",
              "type": "basic.input",
              "data": {
                "name": "vga_hsync",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 408
              }
            },
            {
              "id": "75a3fd55-a9a9-41bf-9b90-12dfbc773603",
              "type": "basic.input",
              "data": {
                "name": "vga_vsync",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 448
              }
            },
            {
              "id": "22b50a1e-8dfd-4f3d-b408-5a4dbc0325c4",
              "type": "basic.input",
              "data": {
                "name": "vga_col",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 160,
                "y": 496
              }
            },
            {
              "id": "d2138c06-c304-4b09-a01f-82ac730620fd",
              "type": "basic.output",
              "data": {
                "name": "vga_green",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 912,
                "y": 536
              }
            },
            {
              "id": "0f4db30f-f401-4b0b-a24a-64e2cab45b48",
              "type": "basic.input",
              "data": {
                "name": "vga_row",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 152,
                "y": 536
              }
            },
            {
              "id": "3de7b56c-3c49-43c8-85b3-f96db8a510ba",
              "type": "basic.input",
              "data": {
                "name": "frame_pixel",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 128,
                "y": 576
              }
            },
            {
              "id": "cb5837ef-764f-43ad-911e-d9de6d80b778",
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
                "x": 160,
                "y": 624
              }
            },
            {
              "id": "9268078c-d20b-4e3c-834d-0af4858141d4",
              "type": "basic.output",
              "data": {
                "name": "vga_blue",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 904,
                "y": 664
              }
            },
            {
              "id": "8818475c-a83d-47b8-b1c9-70beb4c42d8d",
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
                "x": 168,
                "y": 664
              }
            },
            {
              "id": "b7a1f8d8-6e26-4a72-b64a-f84e3fb8fbf5",
              "type": "basic.input",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "pins": [
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
                "x": 176,
                "y": 704
              }
            },
            {
              "id": "0a375fad-0422-4a9c-95b9-5ba29ef185cc",
              "type": "basic.constant",
              "data": {
                "name": "c_img_cols",
                "value": "80",
                "local": true
              },
              "position": {
                "x": 440,
                "y": 120
              }
            },
            {
              "id": "be895d9a-51bc-425e-a618-28c02c1853e3",
              "type": "basic.constant",
              "data": {
                "name": "c_img_rows",
                "value": "60",
                "local": true
              },
              "position": {
                "x": 656,
                "y": 96
              }
            },
            {
              "id": "238f5dfb-5373-4e94-8a9d-82da055fa809",
              "type": "basic.code",
              "data": {
                "code": "  // @include vga_display.v\r\n  \r\n  vga_display link2vrlg \r\n  (\r\n     .rst        (rst),\r\n     .clk        (clk100mhz),\r\n     .visible    (vga_visible),\r\n     .new_pxl    (vga_new_pxl),\r\n     .hsync      (vga_hsync),\r\n     .vsync      (vga_vsync),\r\n     .rgbmode    (rgbmode),\r\n     .testmode   (testmode),\r\n     .rgbfilter  (rgbfilter),\r\n     .col        (vga_col),\r\n     .row        (vga_row),\r\n     .frame_pixel(frame_pixel),\r\n     .frame_addr (frame_addr),\r\n     .vga_red    (vga_red),\r\n     .vga_green  (vga_green),\r\n     .vga_blue   (vga_blue)\r\n  );",
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
                      "name": "clk100mhz"
                    },
                    {
                      "name": "vga_visible"
                    },
                    {
                      "name": "vga_new_pxl"
                    },
                    {
                      "name": "vga_hsync"
                    },
                    {
                      "name": "vga_vsync"
                    },
                    {
                      "name": "vga_col",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "vga_row",
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
                "x": 376,
                "y": 248
              },
              "size": {
                "width": 440,
                "height": 512
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0a375fad-0422-4a9c-95b9-5ba29ef185cc",
                "port": "constant-out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "c_img_cols"
              }
            },
            {
              "source": {
                "block": "be895d9a-51bc-425e-a618-28c02c1853e3",
                "port": "constant-out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "c_img_rows"
              }
            },
            {
              "source": {
                "block": "3bfd3aec-8bb8-4141-b4e6-dbeb43ab765e",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "4786cc9e-bfa2-40f4-af3e-759c5de4b48d",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "clk100mhz"
              }
            },
            {
              "source": {
                "block": "57ae9f5d-3586-4e28-8348-99cd0e43d0ab",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_visible"
              }
            },
            {
              "source": {
                "block": "b1124e74-c979-42a5-8656-5d339cd84d37",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_new_pxl"
              }
            },
            {
              "source": {
                "block": "2731484c-007d-4ddf-8a11-e9a46ed6437f",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_hsync"
              }
            },
            {
              "source": {
                "block": "75a3fd55-a9a9-41bf-9b90-12dfbc773603",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_vsync"
              }
            },
            {
              "source": {
                "block": "22b50a1e-8dfd-4f3d-b408-5a4dbc0325c4",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_col"
              },
              "size": 10
            },
            {
              "source": {
                "block": "0f4db30f-f401-4b0b-a24a-64e2cab45b48",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_row"
              },
              "size": 10
            },
            {
              "source": {
                "block": "3de7b56c-3c49-43c8-85b3-f96db8a510ba",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "frame_pixel"
              },
              "size": 12
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "frame_addr"
              },
              "target": {
                "block": "5227f4f0-f0c8-4efb-8b7b-3d8c3a8a06a2",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_red"
              },
              "target": {
                "block": "6a945bf8-e191-4008-b6e4-39c6fd994a9c",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_green"
              },
              "target": {
                "block": "d2138c06-c304-4b09-a01f-82ac730620fd",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_blue"
              },
              "target": {
                "block": "9268078c-d20b-4e3c-834d-0af4858141d4",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "cb5837ef-764f-43ad-911e-d9de6d80b778",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "rgbmode"
              }
            },
            {
              "source": {
                "block": "8818475c-a83d-47b8-b1c9-70beb4c42d8d",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "testmode"
              }
            },
            {
              "source": {
                "block": "b7a1f8d8-6e26-4a72-b64a-f84e3fb8fbf5",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "rgbfilter"
              },
              "size": 3
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
    "728cc4aec2ef1cd6562ae5bbeaddac0e53d22079": {
      "package": {
        "name": "color_proc",
        "version": "1.0",
        "description": "Applies different color filters to the original image and saves in another memory",
        "author": "Felipe Machado",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22199.988%22%20height=%22204.837%22%20viewBox=%220%200%2052.913582%2054.196503%22%3E%3Cg%20transform=%22translate(-44.575%20-85.824)%22%3E%3Cpath%20fill=%22#fff%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M44.631%2085.824h52.858v53.992H44.631z%22/%3E%3Ccircle%20cx=%2271.032%22%20cy=%22105.177%22%20r=%2215%22%20fill=%22#f0f%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Ccircle%20r=%2215%22%20cy=%22125.021%22%20cx=%2282.489%22%20fill=%22#ff0%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Ccircle%20cx=%2259.575%22%20cy=%22125.021%22%20r=%2215%22%20fill=%22#0ff%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M59.575%20110.02a15%2015%200%200%200-2.64.24%2015%2015%200%200%200%2014.097%209.917%2015%2015%200%200%200%202.641-.239%2015%2015%200%200%200-14.098-9.917z%22%20fill=%22#00f%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M82.489%20110.02a15%2015%200%200%200-14.09%209.91%2015%2015%200%200%200%202.633.247%2015%2015%200%200%200%2014.09-9.91%2015%2015%200%200%200-2.633-.246z%22%20fill=%22red%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M71.022%20115.351a15%2015%200%200%200-3.533%209.67%2015%2015%200%200%200%203.553%209.67%2015%2015%200%200%200%203.533-9.67%2015%2015%200%200%200-3.553-9.67z%22%20fill=%22#0f0%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M71.032%20115.386a15%2015%200%200%200-.278.318%2015%2015%200%200%200-.022.028%2015%2015%200%200%200-2.302%204.114%2015%2015%200%200%200-.028.077%2015%2015%200%200%200%20.169.03%2015%2015%200%200%200%201.073.142%2015%2015%200%200%200%20.675.051%2015%2015%200%200%200%20.713.031%2015%2015%200%200%200%201.543-.084%2015%2015%200%200%200%201.081-.164%2015%2015%200%200%200-.095-.257%2015%2015%200%200%200-.357-.857%2015%2015%200%200%200-.28-.576%2015%2015%200%200%200-.383-.71%2015%2015%200%200%200-.393-.638%2015%2015%200%200%200-.395-.584%2015%2015%200%200%200-.524-.686%2015%2015%200%200%200-.197-.235z%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Ctext%20style=%22line-height:12.19570637px;-inkscape-font-specification:Arial%22%20x=%2259.984%22%20y=%2289.613%22%20font-weight=%22400%22%20font-size=%225.204%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2259.984%22%20y=%2289.613%22%3Ecolor%20filter%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "528f5933-e16b-49ad-84ce-ea1ba898ae30",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 272,
                "y": 136
              }
            },
            {
              "id": "630b1e3c-6916-44c2-8935-69f4f5bdf3e1",
              "type": "basic.output",
              "data": {
                "name": "proc_we"
              },
              "position": {
                "x": 936,
                "y": 144
              }
            },
            {
              "id": "e9ea4f5e-5219-49ea-8ace-3948c71a70ea",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 264,
                "y": 192
              }
            },
            {
              "id": "d94ecd50-4fc0-4b18-acbc-84272ff9e389",
              "type": "basic.output",
              "data": {
                "name": "proc_img_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 1024,
                "y": 208
              }
            },
            {
              "id": "877821ee-1b00-4c1f-b4e8-7facac2680ad",
              "type": "basic.input",
              "data": {
                "name": "proc_ctrl",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 248
              }
            },
            {
              "id": "accb0dfb-9f49-4e96-af27-4a5989ae8e1f",
              "type": "basic.output",
              "data": {
                "name": "proc_img_pxl",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 1008,
                "y": 280
              }
            },
            {
              "id": "6c9cb566-0074-44fd-8d9b-8b7810e14a18",
              "type": "basic.input",
              "data": {
                "name": "orig_img_pxl",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 200,
                "y": 296
              }
            },
            {
              "id": "4253eff9-5483-4d7d-9f7e-21a5f121da9b",
              "type": "basic.output",
              "data": {
                "name": "orig_img_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 1000,
                "y": 344
              }
            },
            {
              "id": "3c0c8bf8-77bd-4129-92b7-1536af8543f5",
              "type": "basic.input",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "pins": [
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
                "x": 224,
                "y": 352
              }
            },
            {
              "id": "efb0f688-a19d-4dcd-9d1d-f13bfafbe8ed",
              "type": "basic.output",
              "data": {
                "name": "leds",
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
                "virtual": false
              },
              "position": {
                "x": 984,
                "y": 432
              }
            },
            {
              "id": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
              "type": "basic.code",
              "data": {
                "code": "// @include color_proc.v\n\n    color_proc lnk2vrlg\n  (\n     .rst        (rst),\n     .clk        (clk),\n     .rgbfilter  (rgbfilter),\n     // from original image frame buffer\n     .orig_addr  (orig_img_addr),\n     .orig_pxl   (orig_img_pxl),\n     // to processed image frame buffer\n     .proc_we        (proc_we),\n     .proc_addr  (proc_img_addr),\n     .proc_pxl   (proc_img_pxl),\n     .leds (leds)\n  );",
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
                      "name": "orig_img_pxl",
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
                      "name": "proc_we"
                    },
                    {
                      "name": "proc_img_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "proc_img_pxl",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "orig_img_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "leds",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 432,
                "y": 144
              },
              "size": {
                "width": 400,
                "height": 264
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "528f5933-e16b-49ad-84ce-ea1ba898ae30",
                "port": "out"
              },
              "target": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "e9ea4f5e-5219-49ea-8ace-3948c71a70ea",
                "port": "out"
              },
              "target": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "877821ee-1b00-4c1f-b4e8-7facac2680ad",
                "port": "out"
              },
              "target": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "proc_ctrl"
              }
            },
            {
              "source": {
                "block": "6c9cb566-0074-44fd-8d9b-8b7810e14a18",
                "port": "out"
              },
              "target": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "orig_img_pxl"
              },
              "size": 12
            },
            {
              "source": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "proc_we"
              },
              "target": {
                "block": "630b1e3c-6916-44c2-8935-69f4f5bdf3e1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "proc_img_pxl"
              },
              "target": {
                "block": "accb0dfb-9f49-4e96-af27-4a5989ae8e1f",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "proc_img_addr"
              },
              "target": {
                "block": "d94ecd50-4fc0-4b18-acbc-84272ff9e389",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "orig_img_addr"
              },
              "target": {
                "block": "4253eff9-5483-4d7d-9f7e-21a5f121da9b",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "3c0c8bf8-77bd-4129-92b7-1536af8543f5",
                "port": "out"
              },
              "target": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "rgbfilter"
              },
              "size": 3
            },
            {
              "source": {
                "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
                "port": "leds"
              },
              "target": {
                "block": "efb0f688-a19d-4dcd-9d1d-f13bfafbe8ed",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "b72de61b7914682aad3a0682c37b045b610dac8b": {
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
              "id": "160f7b8b-bdd1-49a8-be04-2e93a9d9f40e",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 168,
                "y": 152
              }
            },
            {
              "id": "f7ae7ed1-da0e-4656-ace6-d13e4abb8d31",
              "type": "basic.output",
              "data": {
                "name": "rgbmode"
              },
              "position": {
                "x": 704,
                "y": 152
              }
            },
            {
              "id": "59d34d5d-e138-470f-a77a-24cf197dba62",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 176,
                "y": 240
              }
            },
            {
              "id": "ecd97962-3a35-4477-bb4a-4e4832bce1e7",
              "type": "basic.output",
              "data": {
                "name": "testmode"
              },
              "position": {
                "x": 712,
                "y": 240
              }
            },
            {
              "id": "99bc1efe-34ca-4402-abb0-3ccc5bf89106",
              "type": "basic.input",
              "data": {
                "name": "sig_in",
                "clock": false
              },
              "position": {
                "x": 152,
                "y": 320
              }
            },
            {
              "id": "19bdf6a7-fac5-4720-9da0-b72eb3953ea0",
              "type": "basic.output",
              "data": {
                "name": "rgbfilter",
                "range": "[2:0]",
                "pins": [
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
                "x": 720,
                "y": 320
              }
            },
            {
              "id": "20509680-33a3-44cd-a346-35da07f0b9b5",
              "type": "basic.code",
              "data": {
                "code": " // @include mode_sel.v\n \n    mode_sel lnk2vrlg \n    (\n      .rst     (rst),\n      .clk     (clk),\n      .sig_in  (sig_in),\n      .rgbmode (rgbmode),\n      .testmode(testmode),\n      .rgbfilter(rgbfilter)\n    );",
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
                "x": 312,
                "y": 144
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
                "block": "160f7b8b-bdd1-49a8-be04-2e93a9d9f40e",
                "port": "out"
              },
              "target": {
                "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "59d34d5d-e138-470f-a77a-24cf197dba62",
                "port": "out"
              },
              "target": {
                "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "99bc1efe-34ca-4402-abb0-3ccc5bf89106",
                "port": "out"
              },
              "target": {
                "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
                "port": "sig_in"
              }
            },
            {
              "source": {
                "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
                "port": "rgbmode"
              },
              "target": {
                "block": "f7ae7ed1-da0e-4656-ace6-d13e4abb8d31",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
                "port": "testmode"
              },
              "target": {
                "block": "ecd97962-3a35-4477-bb4a-4e4832bce1e7",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
                "port": "rgbfilter"
              },
              "target": {
                "block": "19bdf6a7-fac5-4720-9da0-b72eb3953ea0",
                "port": "in"
              },
              "size": 3
            }
          ]
        }
      }
    }
  }
}