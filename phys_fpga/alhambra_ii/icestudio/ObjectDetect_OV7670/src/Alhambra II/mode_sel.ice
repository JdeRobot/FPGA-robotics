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
          "id": "6a0e88eb-1641-4a08-a0b8-0f9f1fbbfc8f",
          "type": "basic.output",
          "data": {
            "name": "led_cfgtest",
            "range": "[5:0]",
            "pins": [
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
            "x": 464,
            "y": -56
          }
        },
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
          "id": "bfdb5492-73fd-4068-ba17-c0ca2126f027",
          "type": "basic.output",
          "data": {
            "name": "ov7670_configdone",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 592,
            "y": 32
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
            "port": "aecc1de2-8c3f-49bf-a60c-7174416bee3a"
          },
          "target": {
            "block": "bfdb5492-73fd-4068-ba17-c0ca2126f027",
            "port": "in"
          }
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
            "block": "707be221-f975-4fff-acd4-4283cefeeb90",
            "port": "75402cb7-9429-4bc5-b9f4-7c786a4d6ed5"
          },
          "target": {
            "block": "6a0e88eb-1641-4a08-a0b8-0f9f1fbbfc8f",
            "port": "in"
          },
          "size": 6
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
        }
      ]
    }
  },
  "dependencies": {}
}