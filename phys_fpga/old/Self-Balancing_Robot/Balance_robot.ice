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
          "id": "029ca562-467c-4945-b8b5-cc2db412a9a0",
          "type": "basic.output",
          "data": {
            "name": "led",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED0",
                "value": "45"
              },
              {
                "index": "6",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "5",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "4",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "3",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "2",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "1",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "0",
                "name": "LED7",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -5152,
            "y": -2416
          }
        },
        {
          "id": "3040cc03-7f4a-49fd-8338-1f557d92d158",
          "type": "basic.output",
          "data": {
            "name": "d1",
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
            "x": -3560,
            "y": -2200
          }
        },
        {
          "id": "be03f2a9-6368-444d-8ea5-74fa5408a3a7",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": -5408,
            "y": -2096
          }
        },
        {
          "id": "d2ba60d7-7a9f-47d4-8733-61726933aef3",
          "type": "basic.output",
          "data": {
            "name": "d6",
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
            "x": -3560,
            "y": -2064
          }
        },
        {
          "id": "fcfc9190-3faf-4ef5-b0a3-f223312c8b45",
          "type": "basic.input",
          "data": {
            "name": "serial_data",
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
            "x": -5600,
            "y": -2016
          }
        },
        {
          "id": "4ca4d888-98d6-44c6-80c4-42226ff6606c",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": -3864,
            "y": -1920
          }
        },
        {
          "id": "c3ed0527-06f8-47f6-9318-8aee6b9056a6",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": -5112,
            "y": -1832
          }
        },
        {
          "id": "0f3e6009-54ae-4a12-b543-9b120f61faf7",
          "type": "basic.input",
          "data": {
            "name": "arduino_direction",
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
            "x": -4784,
            "y": -1784
          }
        },
        {
          "id": "5a94aec6-a26b-4c19-b0c5-bbeb3519b392",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": -5144,
            "y": -1776
          }
        },
        {
          "id": "1bc813b0-8b70-4e5a-bc5e-2d1f48db681b",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": -5192,
            "y": -1720
          }
        },
        {
          "id": "bd3f9372-1cc2-432d-bba2-7862a730202a",
          "type": "basic.constant",
          "data": {
            "name": "Kd",
            "value": "16'd0",
            "local": false
          },
          "position": {
            "x": -4608,
            "y": -2456
          }
        },
        {
          "id": "a9dcc55d-cd3c-4a46-a2b3-fdd740460e96",
          "type": "basic.constant",
          "data": {
            "name": "Kp",
            "value": "16'd4",
            "local": false
          },
          "position": {
            "x": -4608,
            "y": -2088
          }
        },
        {
          "id": "c63a7261-3b4f-4d2f-a105-8913979f68ab",
          "type": "basic.constant",
          "data": {
            "name": "offset",
            "value": "16'd17000",
            "local": false
          },
          "position": {
            "x": -4512,
            "y": -2088
          }
        },
        {
          "id": "1ff9cab8-16eb-446e-9c7f-5e2133c1525b",
          "type": "basic.constant",
          "data": {
            "name": "offset",
            "value": "16'd0",
            "local": false
          },
          "position": {
            "x": -4512,
            "y": -2456
          }
        },
        {
          "id": "89763b56-a5cf-43df-86f1-57be8f9d8acf",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": -4008,
            "y": -2336
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "490e2099-93cd-4b54-bcfc-2223582c50d9",
          "type": "e156d3e9bfab13f2760227aab507b823f967f912",
          "position": {
            "x": -4224,
            "y": -1904
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "7b737384-b3a4-4adc-b35d-e9327a4ac7c4",
          "type": "c903c9704a3f6cb9207e3183b46d650bde176e73",
          "position": {
            "x": -3752,
            "y": -2216
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "90b682eb-c3e6-4930-ae13-77f1b3721403",
          "type": "c903c9704a3f6cb9207e3183b46d650bde176e73",
          "position": {
            "x": -3752,
            "y": -2080
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "aae936a0-1d61-4f70-adfa-521288a36a10",
          "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
          "position": {
            "x": -4008,
            "y": -2416
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
          "type": "ed692e695332a1a578f66936835c7c38577dee36",
          "position": {
            "x": -5400,
            "y": -2016
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "58c684e0-7ad1-41e2-8d5c-397b6440ebba",
          "type": "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139",
          "position": {
            "x": -4080,
            "y": -1920
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
          "type": "e2d6175996128c2d06a9664b6b03f26617e60504",
          "position": {
            "x": -5016,
            "y": -2016
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "1d99fdba-a8b5-4dfd-9a69-e488e4fbefc1",
          "type": "4b4c78f2d810d4da0bd13d2eed5a4d851c3058fc",
          "position": {
            "x": -4560,
            "y": -2264
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "60485835-77e1-4177-bf81-2f41f8f19a1f",
          "type": "a8c678489806d37eee3947e96113145a75f79376",
          "position": {
            "x": -4560,
            "y": -1904
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "dd6ecccb-9037-414c-84c3-783b48cb6742",
          "type": "ca2cfaad8065445841c998f8e22ebf55f252e414",
          "position": {
            "x": -4168,
            "y": -2112
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
            "block": "fcfc9190-3faf-4ef5-b0a3-f223312c8b45",
            "port": "out"
          },
          "target": {
            "block": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
            "port": "695056ab-9b34-4b75-b4f4-d28e931a98a9"
          }
        },
        {
          "source": {
            "block": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
            "port": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74"
          },
          "target": {
            "block": "029ca562-467c-4945-b8b5-cc2db412a9a0",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "7b737384-b3a4-4adc-b35d-e9327a4ac7c4",
            "port": "a17f6d49-c409-497e-a7f9-96b8c6997008"
          },
          "target": {
            "block": "3040cc03-7f4a-49fd-8338-1f557d92d158",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "90b682eb-c3e6-4930-ae13-77f1b3721403",
            "port": "a17f6d49-c409-497e-a7f9-96b8c6997008"
          },
          "target": {
            "block": "d2ba60d7-7a9f-47d4-8733-61726933aef3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
            "port": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca"
          },
          "target": {
            "block": "5a94aec6-a26b-4c19-b0c5-bbeb3519b392",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
            "port": "527befc1-aab3-45c7-b1b3-e30330205cb4"
          },
          "target": {
            "block": "1bc813b0-8b70-4e5a-bc5e-2d1f48db681b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fcfc9190-3faf-4ef5-b0a3-f223312c8b45",
            "port": "out"
          },
          "target": {
            "block": "be03f2a9-6368-444d-8ea5-74fa5408a3a7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aae936a0-1d61-4f70-adfa-521288a36a10",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "7b737384-b3a4-4adc-b35d-e9327a4ac7c4",
            "port": "7db0c83e-f877-4693-a1af-f53d5236aa28"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
            "port": "3321091d-26b2-48f2-8afb-b4edc3d59883"
          },
          "target": {
            "block": "c3ed0527-06f8-47f6-9318-8aee6b9056a6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "490e2099-93cd-4b54-bcfc-2223582c50d9",
            "port": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d"
          },
          "target": {
            "block": "58c684e0-7ad1-41e2-8d5c-397b6440ebba",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "58c684e0-7ad1-41e2-8d5c-397b6440ebba",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "4ca4d888-98d6-44c6-80c4-42226ff6606c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "89763b56-a5cf-43df-86f1-57be8f9d8acf",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "90b682eb-c3e6-4930-ae13-77f1b3721403",
            "port": "7db0c83e-f877-4693-a1af-f53d5236aa28"
          }
        },
        {
          "source": {
            "block": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
            "port": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74"
          },
          "target": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "fd828ea4-6e03-484e-98c4-d1796cc02dbc"
          },
          "size": 8
        },
        {
          "source": {
            "block": "420d4aa3-c843-4aee-baaf-25c7661e6f66",
            "port": "527befc1-aab3-45c7-b1b3-e30330205cb4"
          },
          "target": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "6cab70ea-a1e3-40d3-9084-4ed2c8cbd496"
          },
          "vertices": [
            {
              "x": -5088,
              "y": -1936
            }
          ]
        },
        {
          "source": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "f9fbdcad-f2a1-41e0-ab3d-95faedbed7d4"
          },
          "target": {
            "block": "1d99fdba-a8b5-4dfd-9a69-e488e4fbefc1",
            "port": "5dce885d-2c78-460e-a479-a9c6271f7af5"
          },
          "vertices": [
            {
              "x": -4712,
              "y": -2104
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "509870fc-8b34-41a9-a123-1d8a42cbc07e"
          },
          "target": {
            "block": "1d99fdba-a8b5-4dfd-9a69-e488e4fbefc1",
            "port": "9812e8f8-7504-45bf-bd52-d84545f09183"
          },
          "vertices": [
            {
              "x": -4728,
              "y": -2056
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "f9fbdcad-f2a1-41e0-ab3d-95faedbed7d4"
          },
          "target": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "2ba105af-7195-4000-8afb-22b6761755a8"
          },
          "vertices": [
            {
              "x": -4752,
              "y": -1960
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "509870fc-8b34-41a9-a123-1d8a42cbc07e"
          },
          "target": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "a8d9e0d6-b570-4492-b872-f092af95c4ab"
          },
          "vertices": [
            {
              "x": -4776,
              "y": -1952
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "be4b4e23-96da-4352-88e0-4b247ab94b85"
          },
          "target": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "c9cb4728-3f7b-4534-ae90-0a5baeb5b02e"
          },
          "vertices": [
            {
              "x": -4712,
              "y": -1928
            },
            {
              "x": -4816,
              "y": -1824
            }
          ]
        },
        {
          "source": {
            "block": "0f3e6009-54ae-4a12-b543-9b120f61faf7",
            "port": "out"
          },
          "target": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "1303843d-e3ee-4370-a76a-92fa4600e8db"
          }
        },
        {
          "source": {
            "block": "bd3f9372-1cc2-432d-bba2-7862a730202a",
            "port": "constant-out"
          },
          "target": {
            "block": "1d99fdba-a8b5-4dfd-9a69-e488e4fbefc1",
            "port": "6b617bc2-b658-4109-a147-72d64a47894d"
          }
        },
        {
          "source": {
            "block": "1ff9cab8-16eb-446e-9c7f-5e2133c1525b",
            "port": "constant-out"
          },
          "target": {
            "block": "1d99fdba-a8b5-4dfd-9a69-e488e4fbefc1",
            "port": "d2b2aaec-001a-42f6-b58b-15cddae6efde"
          }
        },
        {
          "source": {
            "block": "a9dcc55d-cd3c-4a46-a2b3-fdd740460e96",
            "port": "constant-out"
          },
          "target": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "3c179679-12cc-4c5b-8b3c-4546cb79a182"
          }
        },
        {
          "source": {
            "block": "c63a7261-3b4f-4d2f-a105-8913979f68ab",
            "port": "constant-out"
          },
          "target": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "4f99ef80-27cc-4f13-bc36-0241bef6539c"
          }
        },
        {
          "source": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "926883a1-e692-4466-b690-54ad141c4fe3"
          },
          "target": {
            "block": "490e2099-93cd-4b54-bcfc-2223582c50d9",
            "port": "c8da2f1b-b72c-4337-bbda-82283cfeca57"
          }
        },
        {
          "source": {
            "block": "1d99fdba-a8b5-4dfd-9a69-e488e4fbefc1",
            "port": "99d5a872-429a-4872-a9a6-1d12e9dec3b6"
          },
          "target": {
            "block": "dd6ecccb-9037-414c-84c3-783b48cb6742",
            "port": "e03604a5-5f85-4f1d-8ddb-d70e7c8aed70"
          },
          "size": 16
        },
        {
          "source": {
            "block": "60485835-77e1-4177-bf81-2f41f8f19a1f",
            "port": "b00e0f05-65ae-408a-8b8e-a44c714ddf7f"
          },
          "target": {
            "block": "dd6ecccb-9037-414c-84c3-783b48cb6742",
            "port": "90d153f9-6ea7-45b5-89d6-9bd77d860e61"
          },
          "vertices": [
            {
              "x": -4272,
              "y": -2016
            }
          ],
          "size": 16
        },
        {
          "source": {
            "block": "dd6ecccb-9037-414c-84c3-783b48cb6742",
            "port": "04393e63-ab50-4b16-ab2e-fb290e7d8cc1"
          },
          "target": {
            "block": "90b682eb-c3e6-4930-ae13-77f1b3721403",
            "port": "386471bb-16b5-4897-980e-59ef5e171d28"
          },
          "size": 16
        },
        {
          "source": {
            "block": "dd6ecccb-9037-414c-84c3-783b48cb6742",
            "port": "c0ec6500-8e69-4aa7-8e1a-666eb2869b16"
          },
          "target": {
            "block": "7b737384-b3a4-4adc-b35d-e9327a4ac7c4",
            "port": "386471bb-16b5-4897-980e-59ef5e171d28"
          },
          "vertices": [
            {
              "x": -3912,
              "y": -2128
            }
          ],
          "size": 16
        },
        {
          "source": {
            "block": "c045fe53-e701-4acf-98fa-8c7ac392ecb4",
            "port": "be4b4e23-96da-4352-88e0-4b247ab94b85"
          },
          "target": {
            "block": "1d99fdba-a8b5-4dfd-9a69-e488e4fbefc1",
            "port": "a3fd5251-5d71-4d84-8238-5614775fe34e"
          },
          "vertices": [
            {
              "x": -4696,
              "y": -2128
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
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
        }
      }
    },
    "e156d3e9bfab13f2760227aab507b823f967f912": {
      "package": {
        "name": "MC33925 Driver Motor",
        "version": "v1.0.0",
        "description": "",
        "author": "Juan Ordoñez",
        "image": "%3Csvg%20viewBox=%220%200%20256%20256%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cstyle%3E.st0%7Bfill:#d5e2eb%7D.st1%7Bfill:none;stroke:#00a388;stroke-width:4;stroke-miterlimit:10%7D.st2%7Bfill:#fff%7D.st3%7Bfill:#cc4e47%7D.st4%7Bfill:#ea685e%7D.st5%7Bfill:#4b687f%7D.st6%7Bfill:#2c3e50%7D.st7%7Bfill:#3e5063%7D.st8%7Bfill:#ffab80%7D.st9%7Bfilter:url(#Adobe_OpacityMaskFilter)%7D.st10%7Bmask:url(#SVGID_2_)%7D.st11%7Bfill:#f09a79%7D.st12%7Bfill:#00886f%7D.st13%7Bfill:#00a388%7D.st14%7Bfill:none;stroke:#3e5063;stroke-width:4;stroke-miterlimit:10%7D.st15%7Bfill:#ffd766%7D.st16%7Bfill:#5488b7%7D.st17%7Bfill:#8c623b%7D.st18%7Bfill:#e6e6e6;stroke:#3e5063;stroke-width:16;stroke-miterlimit:10%7D.st19%7Bopacity:.6%7D.st20%7Bfill:#e6e6e6%7D.st21%7Bfill:none;stroke:#d5e2eb;stroke-width:5;stroke-miterlimit:10%7D.st22%7Bfill:#ffec9f%7D.st23%7Bfill:#603813%7D.st24%7Bfilter:url(#Adobe_OpacityMaskFilter_1_)%7D.st25%7Bmask:url(#SVGID_1_)%7D%3C/style%3E%3Ccircle%20class=%22st0%22%20cx=%22128%22%20cy=%22128%22%20r=%22120%22%20id=%22Layer_2%22/%3E%3Cg%20id=%22Layer_1%22%3E%3Cpath%20class=%22st3%22%20d=%22M197.727%20124.78a3.909%203.909%200%200%200-3.522-3.536l-11.812-1.113c-1.598-.147-2.955-1.268-3.367-2.822a52.705%2052.705%200%200%200-5.268-12.703%203.865%203.865%200%200%201%20.383-4.385l7.575-9.144a3.904%203.904%200%200%200-.015-4.988%2071.28%2071.28%200%200%200-8.79-8.79%203.905%203.905%200%200%200-4.996-.015l-9.137%207.575a3.863%203.863%200%200%201-4.391.376%2052.601%2052.601%200%200%200-12.704-5.276c-1.554-.413-2.667-1.769-2.822-3.368l-1.105-11.804a3.9%203.9%200%200%200-3.537-3.515%2069.389%2069.389%200%200%200-6.22-.272c-2.099%200-4.17.088-6.218.272a3.9%203.9%200%200%200-3.537%203.515l-1.105%2011.804c-.155%201.6-1.267%202.955-2.822%203.368a52.602%2052.602%200%200%200-12.704%205.276c-1.4.81-3.146.648-4.391-.376l-9.137-7.575a3.905%203.905%200%200%200-4.995.015%2071.28%2071.28%200%200%200-8.791%208.79%203.904%203.904%200%200%200-.015%204.988l7.575%209.137c1.024%201.245%201.186%203%20.376%204.392a52.208%2052.208%200%200%200-5.268%2012.703%203.876%203.876%200%200%201-3.375%202.83l-11.805%201.105a3.907%203.907%200%200%200-3.514%203.53A69.552%2069.552%200%200%200%2058%20131c0%202.092.088%204.17.273%206.219a3.9%203.9%200%200%200%203.514%203.53l11.805%201.112a3.86%203.86%200%200%201%203.375%202.822%2052.12%2052.12%200%200%200%205.268%2012.703c.81%201.392.648%203.147-.376%204.392l-7.575%209.137a3.904%203.904%200%200%200%20.015%204.988%2070.827%2070.827%200%200%200%208.79%208.791%203.905%203.905%200%200%200%204.996.015l9.137-7.568a3.84%203.84%200%200%201%204.384-.383%2052.411%2052.411%200%200%200%2012.71%205.26%203.87%203.87%200%200%201%202.823%203.376l1.105%2011.812a3.894%203.894%200%200%200%203.537%203.514%2069.377%2069.377%200%200%200%2012.438%200%203.894%203.894%200%200%200%203.537-3.514l1.105-11.812a3.869%203.869%200%200%201%202.822-3.375%2052.444%2052.444%200%200%200%2012.71-5.26%203.84%203.84%200%200%201%204.385.382l9.137%207.568a3.905%203.905%200%200%200%204.995-.015%2070.718%2070.718%200%200%200%208.79-8.79%203.904%203.904%200%200%200%20.016-4.989l-7.575-9.144a3.864%203.864%200%200%201-.383-4.384%2052.672%2052.672%200%200%200%205.268-12.703c.412-1.555%201.769-2.675%203.367-2.823l11.812-1.112a3.9%203.9%200%200%200%203.522-3.53c.185-2.048.273-4.126.273-6.218a69.42%2069.42%200%200%200-.273-6.22zM128%20163.356c-17.868%200-32.363-14.486-32.363-32.355%200-17.876%2014.494-32.362%2032.363-32.362S160.36%20113.124%20160.36%20131c0%2017.868-14.493%2032.355-32.362%2032.355z%22/%3E%3Cpath%20class=%22st4%22%20d=%22M197.727%20118.78a3.909%203.909%200%200%200-3.522-3.536l-11.812-1.113c-1.598-.147-2.955-1.268-3.367-2.822a52.705%2052.705%200%200%200-5.268-12.703%203.865%203.865%200%200%201%20.383-4.385l7.575-9.144a3.904%203.904%200%200%200-.015-4.988%2071.28%2071.28%200%200%200-8.79-8.79%203.905%203.905%200%200%200-4.996-.015l-9.137%207.575a3.863%203.863%200%200%201-4.391.376%2052.601%2052.601%200%200%200-12.704-5.276c-1.554-.413-2.667-1.769-2.822-3.368l-1.105-11.804a3.9%203.9%200%200%200-3.537-3.515%2069.389%2069.389%200%200%200-6.22-.272c-2.099%200-4.17.088-6.218.272a3.9%203.9%200%200%200-3.537%203.515l-1.105%2011.804c-.155%201.6-1.267%202.955-2.822%203.368a52.602%2052.602%200%200%200-12.704%205.276c-1.4.81-3.146.648-4.391-.376l-9.137-7.575a3.905%203.905%200%200%200-4.995.015%2071.28%2071.28%200%200%200-8.791%208.79%203.904%203.904%200%200%200-.015%204.988l7.575%209.137c1.024%201.245%201.186%203%20.376%204.392a52.208%2052.208%200%200%200-5.268%2012.703%203.876%203.876%200%200%201-3.375%202.83l-11.805%201.105a3.907%203.907%200%200%200-3.514%203.53A69.552%2069.552%200%200%200%2058%20125c0%202.092.088%204.17.273%206.219a3.9%203.9%200%200%200%203.514%203.53l11.805%201.112a3.86%203.86%200%200%201%203.375%202.822%2052.12%2052.12%200%200%200%205.268%2012.703c.81%201.392.648%203.147-.376%204.392l-7.575%209.137a3.904%203.904%200%200%200%20.015%204.988%2070.827%2070.827%200%200%200%208.79%208.791%203.905%203.905%200%200%200%204.996.015l9.137-7.568a3.84%203.84%200%200%201%204.384-.383%2052.411%2052.411%200%200%200%2012.71%205.26%203.87%203.87%200%200%201%202.823%203.376l1.105%2011.812a3.894%203.894%200%200%200%203.537%203.514%2069.377%2069.377%200%200%200%2012.438%200%203.894%203.894%200%200%200%203.537-3.514l1.105-11.812a3.869%203.869%200%200%201%202.822-3.375%2052.444%2052.444%200%200%200%2012.71-5.26%203.84%203.84%200%200%201%204.385.382l9.137%207.568a3.905%203.905%200%200%200%204.995-.015%2070.718%2070.718%200%200%200%208.79-8.79%203.904%203.904%200%200%200%20.016-4.989l-7.575-9.144a3.864%203.864%200%200%201-.383-4.384%2052.672%2052.672%200%200%200%205.268-12.703c.412-1.555%201.769-2.675%203.367-2.823l11.812-1.112a3.9%203.9%200%200%200%203.522-3.53c.185-2.048.273-4.126.273-6.218a69.42%2069.42%200%200%200-.273-6.22zM128%20157.356c-17.868%200-32.363-14.486-32.363-32.355%200-17.876%2014.494-32.362%2032.363-32.362S160.36%20107.124%20160.36%20125c0%2017.868-14.493%2032.355-32.362%2032.355z%22/%3E%3C/g%3E%3C/svg%3E"
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
                "x": 512,
                "y": -296
              }
            },
            {
              "id": "b44b9148-8c19-4ee1-b971-6bf0cfc807be",
              "type": "basic.output",
              "data": {
                "name": "IN1"
              },
              "position": {
                "x": 512,
                "y": -232
              }
            },
            {
              "id": "0a523239-d3f4-4a5f-9572-cebd69eb4f6c",
              "type": "basic.output",
              "data": {
                "name": "IN2"
              },
              "position": {
                "x": 512,
                "y": -176
              }
            },
            {
              "id": "5f2d8d44-8ceb-4084-9a2f-53a680bd49d3",
              "type": "basic.output",
              "data": {
                "name": "EN"
              },
              "position": {
                "x": 512,
                "y": -120
              }
            },
            {
              "id": "c8da2f1b-b72c-4337-bbda-82283cfeca57",
              "type": "basic.input",
              "data": {
                "name": "change_direction",
                "clock": false
              },
              "position": {
                "x": -512,
                "y": -104
              }
            },
            {
              "id": "c7021b32-fb9e-46f2-9bd4-5a4a86558bc1",
              "type": "basic.output",
              "data": {
                "name": "SF"
              },
              "position": {
                "x": 512,
                "y": -56
              }
            },
            {
              "id": "aa38018e-ebf9-460c-ad23-5bc17cf62e41",
              "type": "basic.output",
              "data": {
                "name": "D1"
              },
              "position": {
                "x": 512,
                "y": 24
              }
            },
            {
              "id": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
              "type": "basic.code",
              "data": {
                "code": "\n\n\n\nreg EN_reg = 1;//sleep mode \nreg D1_reg = 0; //para configurar el triestado de la salida, para controlar si es el dutty el que maneja o tiempo en baja\n//D2_reg <= 1;//para configurar el trisestado de la salida\nreg IN1_reg = 1; //se estable un sentido para el mov\nreg IN2_reg = 0; //se estable un sentido para el mov, negado de in1 si queremos que se mueva\n//reg INV_reg = 0; //si cambiamos inv la rueda cambia de sentido\n\n\nassign INV = change_direction;\nassign IN1 = IN1_reg;\nassign IN2 = IN2_reg;\nassign EN = EN_reg;\nassign D1 = D1_reg;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "change_direction"
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
                "x": -248,
                "y": -272
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
                "block": "c8da2f1b-b72c-4337-bbda-82283cfeca57",
                "port": "out"
              },
              "target": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "change_direction"
              }
            }
          ]
        }
      }
    },
    "c903c9704a3f6cb9207e3183b46d650bde176e73": {
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
              "id": "386471bb-16b5-4897-980e-59ef5e171d28",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 32,
                "y": -16
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
                "name": "PWM"
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
              "id": "ffb28a52-c794-4738-a562-c5b38e0373e9",
              "type": "526c3eb1e8d5b28ea787c8321375abc423be2fe2",
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
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
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
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
                "port": "159fd93f-0f27-4956-93b1-1343b7692189"
              }
            },
            {
              "source": {
                "block": "7db0c83e-f877-4693-a1af-f53d5236aa28",
                "port": "out"
              },
              "target": {
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
                "port": "8b33b8c2-e685-4d38-b041-0d9fae82e57f"
              }
            },
            {
              "source": {
                "block": "386471bb-16b5-4897-980e-59ef5e171d28",
                "port": "out"
              },
              "target": {
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
                "port": "1f30916c-b512-4417-bb91-c5af740aa502"
              },
              "size": 16
            }
          ]
        }
      }
    },
    "526c3eb1e8d5b28ea787c8321375abc423be2fe2": {
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
                "name": "PWM"
              },
              "position": {
                "x": 1232,
                "y": -144
              }
            },
            {
              "id": "1f30916c-b512-4417-bb91-c5af740aa502",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[15:0]",
                "clock": false,
                "size": 16
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
                "code": "localparam pulses_nedded = 16'd7000; \r\n\r\nreg [15:0] pulses_nedded_velocity = 16'd0; //24009 maximo\r\nreg [15:0] count = 0; \r\nreg T = 0;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  count <= (count == pulses_nedded-1) ? 0: count+1;\r\n  pulses_nedded_velocity <= ((velocity/16'd9) >=pulses_nedded) ? pulses_nedded: (velocity/16'd9);\r\n\r\nend\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  if(start==1'b1)\r\n    T <= (count <= pulses_nedded_velocity) ? 1:0;\r\nend\r\nassign PWM = T;\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "velocity",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "PWM"
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
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "PWM"
              },
              "target": {
                "block": "63a66901-b384-423f-9b70-76f155bebb40",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1f30916c-b512-4417-bb91-c5af740aa502",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "velocity"
              },
              "size": 16
            }
          ]
        }
      }
    },
    "c83dcd1d9ab420d911df81b3dfae04681559c623": {
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
    "ed692e695332a1a578f66936835c7c38577dee36": {
      "package": {
        "name": "SerialDataArduino",
        "version": "v1.0.0",
        "description": "",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2232%22%20height=%2232%22%20version=%221%22%3E%3Cpath%20opacity=%22.2%22%20d=%22M11%208a9%209%200%200%200-9%209%209%209%200%200%200%209%209%209%209%200%200%200%204.998-1.523A9%209%200%200%200%2021%2026a9%209%200%200%200%209-9%209%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%208z%22/%3E%3Cpath%20fill=%22#19979d%22%20d=%22M11%207a9%209%200%200%200-9%209%209%209%200%200%200%209%209%209%209%200%200%200%204.998-1.523A9%209%200%200%200%2021%2025a9%209%200%200%200%209-9%209%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%207z%22/%3E%3Cpath%20opacity=%22.2%22%20d=%22M10.869%2012c-.634%200-1.266.127-1.853.375-.588.248-1.125.614-1.579%201.076s-.817%201.015-1.064%201.623A5.12%205.12%200%200%200%206%2016.998c0%20.66.126%201.316.373%201.924.247.608.611%201.159%201.065%201.62a4.768%204.768%200%200%200%203.389%201.45l.042.002c1.507.072%202.72-.526%203.61-1.394.607-.594%201.085-1.296%201.521-2.01.436.714.914%201.416%201.522%202.01.888.868%202.102%201.466%203.609%201.394l.043-.002a4.76%204.76%200%200%200%201.81-.373%204.864%204.864%200%200%200%201.578-1.076l.004-.006a4.99%204.99%200%200%200%201.061-1.615c.247-.608.373-1.264.373-1.924s-.126-1.316-.373-1.924l-.006-.01a5.02%205.02%200%200%200-1.059-1.613%204.856%204.856%200%200%200-1.578-1.076A4.768%204.768%200%200%200%2021.131%2012c-1.588%200-2.842.652-3.768%201.561-.535.524-.969%201.124-1.363%201.738-.394-.614-.828-1.214-1.363-1.738-.926-.909-2.18-1.56-3.768-1.56zm.182%202c1.128%200%201.848.38%202.51%201.012.524.5.983%201.181%201.439%201.923-.52.868-1.023%201.66-1.588%202.198-.622.592-1.266.918-2.32.861h-.041a3.076%203.076%200%200%201-2.156-.879l-.012-.01a2.967%202.967%200%200%201-.657-3.246c.15-.358.376-.692.656-.97l.012-.012A3.07%203.07%200%200%201%2011.051%2014zm9.898%200a3.07%203.07%200%200%201%202.156.877l.012.012a2.957%202.957%200%200%201%200%204.216l-.011.01a3.076%203.076%200%200%201-2.157.878h-.04c-1.055.058-1.698-.269-2.32-.86-.566-.538-1.069-1.33-1.589-2.198.456-.743.915-1.424%201.44-1.924C19.1%2014.38%2019.82%2014%2020.95%2014zM20%2015v1h-1v2h1v1h2v-1h1v-2h-1v-1h-2zM9%2016v2h4v-2H9z%22/%3E%3Cpath%20fill=%22#79ff88%22%20d=%22M10.869%2011c-.634%200-1.266.127-1.853.375-.588.248-1.125.614-1.579%201.076s-.817%201.015-1.064%201.623A5.12%205.12%200%200%200%206%2015.998c0%20.66.126%201.316.373%201.924.247.608.611%201.159%201.065%201.62a4.768%204.768%200%200%200%203.389%201.45l.042.002c1.507.072%202.72-.526%203.61-1.394.607-.594%201.085-1.296%201.521-2.01.436.714.914%201.416%201.522%202.01.888.868%202.102%201.466%203.609%201.394l.043-.002a4.76%204.76%200%200%200%201.81-.373%204.864%204.864%200%200%200%201.578-1.076l.004-.006a4.99%204.99%200%200%200%201.061-1.615c.247-.608.373-1.264.373-1.924s-.126-1.316-.373-1.924l-.006-.01a5.02%205.02%200%200%200-1.059-1.613%204.856%204.856%200%200%200-1.578-1.076A4.768%204.768%200%200%200%2021.131%2011c-1.588%200-2.842.652-3.768%201.561-.535.524-.969%201.124-1.363%201.738-.394-.614-.828-1.214-1.363-1.738-.926-.909-2.18-1.56-3.768-1.56zm.182%202c1.128%200%201.848.38%202.51%201.012.524.5.983%201.181%201.439%201.923-.52.868-1.023%201.66-1.588%202.198-.622.592-1.266.918-2.32.861h-.041a3.076%203.076%200%200%201-2.156-.879l-.012-.01a2.967%202.967%200%200%201-.657-3.246c.15-.358.376-.692.656-.97l.012-.012A3.07%203.07%200%200%201%2011.051%2013zm9.898%200a3.07%203.07%200%200%201%202.156.877l.012.012a2.957%202.957%200%200%201%200%204.216l-.011.01a3.076%203.076%200%200%201-2.157.878h-.04c-1.055.058-1.698-.269-2.32-.86-.566-.538-1.069-1.33-1.589-2.198.456-.743.915-1.424%201.44-1.924C19.1%2013.38%2019.82%2013%2020.95%2013zM20%2014v1h-1v2h1v1h2v-1h1v-2h-1v-1h-2zM9%2015v2h4v-2H9z%22/%3E%3Cpath%20fill=%22#fff%22%20opacity=%22.2%22%20d=%22M11%207a9%209%200%200%200-9%209%209%209%200%200%200%20.021.424A9%209%200%200%201%2011%208a9%209%200%200%201%205.002%201.523A9%209%200%200%201%2021%208a9%209%200%200%201%208.979%208.576A9%209%200%200%200%2030%2016a9%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%207z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74",
              "type": "basic.output",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1112,
                "y": -272
              }
            },
            {
              "id": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca",
              "type": "basic.output",
              "data": {
                "name": "clock_data_debug"
              },
              "position": {
                "x": 480,
                "y": -272
              }
            },
            {
              "id": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
              "type": "basic.input",
              "data": {
                "name": "serial_data",
                "clock": false
              },
              "position": {
                "x": -856,
                "y": -40
              }
            },
            {
              "id": "527befc1-aab3-45c7-b1b3-e30330205cb4",
              "type": "basic.output",
              "data": {
                "name": "byte_ready"
              },
              "position": {
                "x": 1152,
                "y": 216
              }
            },
            {
              "id": "d4a68ff1-27b2-495b-a45f-39ade7eec2ae",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -872,
                "y": 320
              }
            },
            {
              "id": "3321091d-26b2-48f2-8afb-b4edc3d59883",
              "type": "basic.output",
              "data": {
                "name": "bit_ready"
              },
              "position": {
                "x": 608,
                "y": 528
              }
            },
            {
              "id": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
              "type": "basic.code",
              "data": {
                "code": "reg [9:0] count = 10'd0;\r\nreg[2:0] bits_data= 3'd0;\r\nreg clock_data_reg = 1'd0;\r\nreg bit_ready_reg = 1'b0;\r\nreg flag = 1'b1;\r\nreg start = 1'b0;\r\nlocalparam IDLE=4'd0;\r\nlocalparam START=4'd1;\r\nlocalparam DATAS=4'd2;\r\nlocalparam STOP=4'd3;\r\nlocalparam CONTROL_DATA=4'd4;\r\n\r\nreg [3:0] state = IDLE;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n    case(state)\r\n    IDLE:\r\n    begin\r\n        state<= (serial_data==1'b0) ? START:IDLE;\r\n    end\r\n    START:\r\n    begin\r\n        clock_data_reg<= 1'b0;\r\n        if(count==10'd624)\r\n        begin\r\n            count<=10'd0;\r\n            state<=DATAS;\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            state<= START;\r\n        end\r\n    end\r\n    DATAS:\r\n    begin\r\n        clock_data_reg<= flag;\r\n        if(count==10'd624)\r\n        begin\r\n            count<=10'd0;\r\n            bits_data<= bits_data+3'd1; //esto solo debe suceder 8 veces, por eso vamos a otro estado que lo controle\r\n            flag<=!flag; // en realidad es solo visual, daria igual dejarlo siempre igual\r\n            state<= CONTROL_DATA; //vamos al estado que controla si volvemos aqui o nos vamos a stop\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            bit_ready_reg<= (count>10'd300 && count<10'd320)? 1:0;//esto solo nos informa de que ya podemos coger un bit, guay\r\n            state<= DATAS;\r\n        end \r\n    end\r\n    STOP:\r\n    begin\r\n        clock_data_reg<= 1'b1;\r\n        if(count==10'd600)\r\n        begin\r\n            count<=10'd0;\r\n            state<=IDLE;\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            state<= STOP;\r\n        end\r\n    end\r\n    CONTROL_DATA:\r\n    begin\r\n       state<=(bits_data==0)?STOP:DATAS; \r\n    end\r\n    endcase\r\nend\r\n\r\nassign clock_data = clock_data_reg;\r\nassign ready = bit_ready_reg;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "serial_data"
                    },
                    {
                      "name": "clock"
                    }
                  ],
                  "out": [
                    {
                      "name": "clock_data"
                    },
                    {
                      "name": "ready"
                    }
                  ]
                }
              },
              "position": {
                "x": -376,
                "y": -192
              },
              "size": {
                "width": 752,
                "height": 720
              }
            },
            {
              "id": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] data_reg = 8'd0;\nreg [2:0] count_bits = 3'd7;\nreg byte_ready_reg = 1'b1;\n\nalways@(negedge ready)\nbegin \n    data_reg[count_bits]<= serial_data;\n    byte_ready_reg<=(count_bits==3'd7)?1:0 ;\nend\n\nalways@(posedge ready)\nbegin \n    count_bits<= count_bits+3'd1;\nend\n\nassign data = data_reg;\nassign byte_ready = byte_ready_reg;\n\n//en este bloque vamos cogiendo los bits hasta qie llegemos al byte",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock_data"
                    },
                    {
                      "name": "ready"
                    },
                    {
                      "name": "serial_data"
                    }
                  ],
                  "out": [
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "byte_ready"
                    }
                  ]
                }
              },
              "position": {
                "x": 528,
                "y": 64
              },
              "size": {
                "width": 528,
                "height": 416
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d4a68ff1-27b2-495b-a45f-39ade7eec2ae",
                "port": "out"
              },
              "target": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "clock_data"
              },
              "target": {
                "block": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "clock_data"
              },
              "target": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "clock_data"
              }
            },
            {
              "source": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "data"
              },
              "target": {
                "block": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
                "port": "out"
              },
              "target": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "serial_data"
              }
            },
            {
              "source": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "ready"
              },
              "target": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "ready"
              },
              "vertices": [
                {
                  "x": 440,
                  "y": 328
                }
              ]
            },
            {
              "source": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "byte_ready"
              },
              "target": {
                "block": "527befc1-aab3-45c7-b1b3-e30330205cb4",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
                "port": "out"
              },
              "target": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "serial_data"
              },
              "vertices": [
                {
                  "x": 360,
                  "y": 576
                }
              ]
            },
            {
              "source": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "ready"
              },
              "target": {
                "block": "3321091d-26b2-48f2-8afb-b4edc3d59883",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139": {
      "package": {
        "name": "NOT",
        "version": "1.0.0",
        "description": "NOT logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "// NOT logic gate\n\nassign c = ~ a;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
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
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "e2d6175996128c2d06a9664b6b03f26617e60504": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22546.509%22%20height=%22546.509%22%20viewBox=%220%200%20546.509%20546.509%22%3E%3Cpath%20d=%22M0%20446.434h128.195V100.087H0v346.347zm64.09-64.658c-16.143%200-29.241-13.087-29.241-29.235%200-16.153%2013.092-29.234%2029.241-29.234%2016.148%200%2029.241%2013.081%2029.241%2029.234%200%2016.143-13.093%2029.235-29.241%2029.235zm-35.6-247.945h67.844v124.998H28.49V133.831zm0%20135.486h67.844v12.939H28.49v-12.939zm8.993-125.003h49.482v20.995H37.483v-20.995zm112.071%20302.12H277.75V100.087H149.554v346.347zm64.096-64.658c-16.143%200-29.241-13.087-29.241-29.235%200-16.153%2013.092-29.234%2029.241-29.234%2016.148%200%2029.234%2013.081%2029.234%2029.234.001%2016.143-13.086%2029.235-29.234%2029.235zm-35.606-247.945h67.844v124.998h-67.844V133.831zm0%20135.486h67.844v12.939h-67.844v-12.939zm8.993-125.003h49.482v20.995h-49.482v-20.995zm225.327-55.541l-118.186%2049.65%20134.139%20319.312%20118.191-49.639L412.364%2088.773zm-78.855%2069.721l62.548-26.273%2048.421%20115.248-62.548%2026.279-48.421-115.254zm52.475%20124.933l62.548-26.273%205.013%2011.922-62.548%2026.279-5.013-11.928zm76.391%2089.879c-14.883%206.254-32.024-.744-38.277-15.64-6.254-14.884.744-32.013%2015.628-38.267%2014.883-6.26%2032.024.733%2038.277%2015.628%206.248%2014.884-.744%2032.025-15.628%2038.279zm-62.76-208.426l-45.62%2019.157-8.133-19.352%2045.619-19.154%208.134%2019.349z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f9fbdcad-f2a1-41e0-ab3d-95faedbed7d4",
              "type": "basic.output",
              "data": {
                "name": "integer_part",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1248,
                "y": 48
              }
            },
            {
              "id": "fd828ea4-6e03-484e-98c4-d1796cc02dbc",
              "type": "basic.input",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -176,
                "y": 96
              }
            },
            {
              "id": "509870fc-8b34-41a9-a123-1d8a42cbc07e",
              "type": "basic.output",
              "data": {
                "name": "decimal_part",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1248,
                "y": 240
              }
            },
            {
              "id": "6cab70ea-a1e3-40d3-9084-4ed2c8cbd496",
              "type": "basic.input",
              "data": {
                "name": "byte_ready",
                "clock": false
              },
              "position": {
                "x": -184,
                "y": 376
              }
            },
            {
              "id": "be4b4e23-96da-4352-88e0-4b247ab94b85",
              "type": "basic.output",
              "data": {
                "name": "data_ready"
              },
              "position": {
                "x": 1248,
                "y": 424
              }
            },
            {
              "id": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] decimal_part_reg = 8'd0;\r\nreg [7:0] integer_part_reg = 8'd0;\r\nreg data_ready_reg= 1'b0;\r\nlocalparam DATA1 = 1'b0;\r\nlocalparam DATA2 = 1'b1;\r\nreg state1= DATA1;\r\n\r\nalways @(posedge byte_ready)\r\nbegin\r\n    case(state1)\r\n    DATA1:\r\n    begin\r\n      integer_part_reg<=data;\r\n      state1<=DATA2;\r\n      data_ready_reg<=1'b0;\r\n    end\r\n    DATA2:\r\n    begin\r\n      decimal_part_reg<=data;\r\n      state1<=DATA1;\r\n      data_ready_reg<=1'b1;\r\n    end\r\n    endcase\r\nend\r\nassign decimal_part = decimal_part_reg;\r\nassign integer_part = integer_part_reg;\r\nassign data_ready= data_ready_reg;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "byte_ready"
                    }
                  ],
                  "out": [
                    {
                      "name": "integer_part",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "decimal_part",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "data_ready"
                    }
                  ]
                }
              },
              "position": {
                "x": 16,
                "y": -16
              },
              "size": {
                "width": 1120,
                "height": 568
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "fd828ea4-6e03-484e-98c4-d1796cc02dbc",
                "port": "out"
              },
              "target": {
                "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
                "port": "data"
              },
              "size": 8
            },
            {
              "source": {
                "block": "6cab70ea-a1e3-40d3-9084-4ed2c8cbd496",
                "port": "out"
              },
              "target": {
                "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
                "port": "byte_ready"
              }
            },
            {
              "source": {
                "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
                "port": "integer_part"
              },
              "target": {
                "block": "f9fbdcad-f2a1-41e0-ab3d-95faedbed7d4",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
                "port": "decimal_part"
              },
              "target": {
                "block": "509870fc-8b34-41a9-a123-1d8a42cbc07e",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
                "port": "data_ready"
              },
              "target": {
                "block": "be4b4e23-96da-4352-88e0-4b247ab94b85",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "4b4c78f2d810d4da0bd13d2eed5a4d851c3058fc": {
      "package": {
        "name": "D block",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cpath%20d=%22M512%20455.111C512%20486.53%20486.527%20512%20455.111%20512H56.89C25.472%20512%200%20486.527%200%20455.111V56.89C0%2025.472%2025.472%200%2056.889%200H455.11C486.527%200%20512%2025.472%20512%2056.889V455.11z%22%20fill=%22#3b88c3%22/%3E%3Cpath%20d=%22M194.944%20351.588h44.544c56.888%200%2082.887-41.885%2082.887-94.805%200-56.448-26.439-97.452-87.296-97.452h-40.135v192.257zm-66.133-219.15c0-20.295%2014.109-33.963%2033.949-33.963h73.201c98.788%200%20155.221%2063.503%20155.221%20161.394%200%2092.601-59.96%20152.576-150.812%20152.576h-76.729c-14.563%200-34.83-7.936-34.83-33.066V132.437z%22%20fill=%22#fff%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5dce885d-2c78-460e-a479-a9c6271f7af5",
              "type": "basic.input",
              "data": {
                "name": "integer_part",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 16,
                "y": 160
              }
            },
            {
              "id": "9812e8f8-7504-45bf-bd52-d84545f09183",
              "type": "basic.input",
              "data": {
                "name": "decimal_part",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 16,
                "y": 296
              }
            },
            {
              "id": "99d5a872-429a-4872-a9a6-1d12e9dec3b6",
              "type": "basic.output",
              "data": {
                "name": "velocity",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 848,
                "y": 296
              }
            },
            {
              "id": "a3fd5251-5d71-4d84-8238-5614775fe34e",
              "type": "basic.input",
              "data": {
                "name": "data_ready",
                "clock": false
              },
              "position": {
                "x": 16,
                "y": 432
              }
            },
            {
              "id": "6b617bc2-b658-4109-a147-72d64a47894d",
              "type": "basic.constant",
              "data": {
                "name": "Kd",
                "value": "16'd0",
                "local": false
              },
              "position": {
                "x": 248,
                "y": 16
              }
            },
            {
              "id": "d2b2aaec-001a-42f6-b58b-15cddae6efde",
              "type": "basic.constant",
              "data": {
                "name": "offset",
                "value": "16'd0",
                "local": false
              },
              "position": {
                "x": 560,
                "y": 16
              }
            },
            {
              "id": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
              "type": "basic.code",
              "data": {
                "code": "localparam STATE1 = 1'b0;\r\nlocalparam STATE2 = 1'b1;\r\n\r\nreg state = STATE1;\r\n\r\nreg[7:0] data1 = 8'd0;\r\nreg[7:0] data2 = 8'd0;\r\nreg[15:0] I_reg = 8'd0;\r\n\r\n\r\nalways @(posedge data_ready)\r\nbegin\r\n  case(state)\r\n  STATE1:\r\n  begin\r\n    data1<= integer_part*100; \r\n    data2<= decimal_part;\r\n    state<= STATE2;\r\n  end\r\n  STATE2:\r\n  begin\r\n    I_reg=Kd*(((integer_part+100)+decimal_part)-(data1+data2));\r\n    data1=integer_part*100;\r\n    data2=decimal_part;\r\n    state<=STATE2;\r\n  end\r\n  endcase\r\nend\r\n\r\nassign velocity = I_reg + offset;",
                "params": [
                  {
                    "name": "Kd"
                  },
                  {
                    "name": "offset"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "integer_part",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "decimal_part",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "data_ready"
                    }
                  ],
                  "out": [
                    {
                      "name": "velocity",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ]
                }
              },
              "position": {
                "x": 144,
                "y": 128
              },
              "size": {
                "width": 616,
                "height": 400
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "6b617bc2-b658-4109-a147-72d64a47894d",
                "port": "constant-out"
              },
              "target": {
                "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
                "port": "Kd"
              }
            },
            {
              "source": {
                "block": "5dce885d-2c78-460e-a479-a9c6271f7af5",
                "port": "out"
              },
              "target": {
                "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
                "port": "integer_part"
              },
              "size": 8
            },
            {
              "source": {
                "block": "9812e8f8-7504-45bf-bd52-d84545f09183",
                "port": "out"
              },
              "target": {
                "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
                "port": "decimal_part"
              },
              "size": 8
            },
            {
              "source": {
                "block": "a3fd5251-5d71-4d84-8238-5614775fe34e",
                "port": "out"
              },
              "target": {
                "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
                "port": "data_ready"
              }
            },
            {
              "source": {
                "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
                "port": "velocity"
              },
              "target": {
                "block": "99d5a872-429a-4872-a9a6-1d12e9dec3b6",
                "port": "in"
              },
              "size": 16
            },
            {
              "source": {
                "block": "d2b2aaec-001a-42f6-b58b-15cddae6efde",
                "port": "constant-out"
              },
              "target": {
                "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
                "port": "offset"
              }
            }
          ]
        }
      }
    },
    "a8c678489806d37eee3947e96113145a75f79376": {
      "package": {
        "name": "Control_P",
        "version": "v1.0.0",
        "description": "",
        "author": "Juan Ordoñez ",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cpath%20d=%22M512%20455.111C512%20486.53%20486.527%20512%20455.111%20512H56.89C25.472%20512%200%20486.527%200%20455.111V56.89C0%2025.472%2025.472%200%2056.889%200H455.11C486.527%200%20512%2025.472%20512%2056.889V455.11z%22%20fill=%22#3b88c3%22/%3E%3Cpath%20d=%22M219.42%20250.169h44.971c27.79%200%2045.426-20.282%2045.426-46.749%200-26.454-17.635-46.734-45.426-46.734H219.42v93.483zm-66.147-117.305c0-20.722%2012.345-34.389%2034.403-34.389h78.038c64.839%200%20112.896%2042.34%20112.896%20105.386%200%2064.384-49.835%20104.519-110.251%20104.519H219.42v72.32c0%2022.059-14.109%2034.389-33.081%2034.389-18.959%200-33.066-12.331-33.066-34.389V132.864z%22%20fill=%22#fff%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "2ba105af-7195-4000-8afb-22b6761755a8",
              "type": "basic.input",
              "data": {
                "name": "integer_part",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 352,
                "y": 272
              }
            },
            {
              "id": "b00e0f05-65ae-408a-8b8e-a44c714ddf7f",
              "type": "basic.output",
              "data": {
                "name": "velocity",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 1496,
                "y": 272
              }
            },
            {
              "id": "a8d9e0d6-b570-4492-b872-f092af95c4ab",
              "type": "basic.input",
              "data": {
                "name": "decimal_part",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 352,
                "y": 360
              }
            },
            {
              "id": "c9cb4728-3f7b-4534-ae90-0a5baeb5b02e",
              "type": "basic.input",
              "data": {
                "name": "data_ready",
                "clock": false
              },
              "position": {
                "x": 352,
                "y": 440
              }
            },
            {
              "id": "926883a1-e692-4466-b690-54ad141c4fe3",
              "type": "basic.output",
              "data": {
                "name": "direction_motors"
              },
              "position": {
                "x": 1504,
                "y": 472
              }
            },
            {
              "id": "1303843d-e3ee-4370-a76a-92fa4600e8db",
              "type": "basic.input",
              "data": {
                "name": "direction_arduino",
                "clock": false
              },
              "position": {
                "x": 352,
                "y": 520
              }
            },
            {
              "id": "3c179679-12cc-4c5b-8b3c-4546cb79a182",
              "type": "basic.constant",
              "data": {
                "name": "Kp",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 120
              }
            },
            {
              "id": "4f99ef80-27cc-4f13-bc36-0241bef6539c",
              "type": "basic.constant",
              "data": {
                "name": "offset",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 1112,
                "y": 128
              }
            },
            {
              "id": "262c082e-8602-45f0-8ac1-81741a9acb2a",
              "type": "basic.code",
              "data": {
                "code": "reg [15:0] velocity_reg = 16'd0;\r\nlocalparam aux = 16'd100;\r\nreg direction_reg= 1'b0;\r\n\r\nalways@(posedge data_ready)\r\nbegin\r\n velocity_reg<=Kp*((integer_part*aux)+decimal_part);\r\n direction_reg<=direction_arduino;\r\nend\r\n\r\nassign velocity = velocity_reg + offset;\r\nassign direction_motors = direction_reg;",
                "params": [
                  {
                    "name": "Kp"
                  },
                  {
                    "name": "offset"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "integer_part",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "decimal_part",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "data_ready"
                    },
                    {
                      "name": "direction_arduino"
                    }
                  ],
                  "out": [
                    {
                      "name": "velocity",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "direction_motors"
                    }
                  ]
                }
              },
              "position": {
                "x": 584,
                "y": 264
              },
              "size": {
                "width": 768,
                "height": 336
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c9cb4728-3f7b-4534-ae90-0a5baeb5b02e",
                "port": "out"
              },
              "target": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "data_ready"
              }
            },
            {
              "source": {
                "block": "1303843d-e3ee-4370-a76a-92fa4600e8db",
                "port": "out"
              },
              "target": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "direction_arduino"
              }
            },
            {
              "source": {
                "block": "3c179679-12cc-4c5b-8b3c-4546cb79a182",
                "port": "constant-out"
              },
              "target": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "Kp"
              }
            },
            {
              "source": {
                "block": "4f99ef80-27cc-4f13-bc36-0241bef6539c",
                "port": "constant-out"
              },
              "target": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "offset"
              }
            },
            {
              "source": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "direction_motors"
              },
              "target": {
                "block": "926883a1-e692-4466-b690-54ad141c4fe3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "velocity"
              },
              "target": {
                "block": "b00e0f05-65ae-408a-8b8e-a44c714ddf7f",
                "port": "in"
              },
              "size": 16
            },
            {
              "source": {
                "block": "2ba105af-7195-4000-8afb-22b6761755a8",
                "port": "out"
              },
              "target": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "integer_part"
              },
              "size": 8
            },
            {
              "source": {
                "block": "a8d9e0d6-b570-4492-b872-f092af95c4ab",
                "port": "out"
              },
              "target": {
                "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
                "port": "decimal_part"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "ca2cfaad8065445841c998f8e22ebf55f252e414": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cpath%20d=%22M256%20512c-68.48%200-132.797-26.6-181.096-74.904C26.6%20388.797%200%20324.48%200%20256c0-68.486%2026.6-132.797%2074.904-181.096C123.204%2026.6%20187.515%200%20256%200c68.48%200%20132.797%2026.6%20181.096%2074.904C485.4%20123.203%20512%20187.52%20512%20256c0%2068.486-26.6%20132.797-74.904%20181.096C388.797%20485.4%20324.486%20512%20256%20512z%22%20fill=%22#ff5023%22/%3E%3Cpath%20d=%22M256%200v512c68.486%200%20132.797-26.6%20181.096-74.904C485.4%20388.797%20512%20324.486%20512%20256c0-68.48-26.6-132.797-74.904-181.096C388.797%2026.6%20324.48%200%20256%200z%22%20fill=%22#cd2a00%22/%3E%3Cpath%20d=%22M356.072%20395.054H155.594a16.71%2016.71%200%200%201-15.097-9.549%2016.72%2016.72%200%200%201%202.164-17.735l91.589-111.937-91.586-111.937a16.717%2016.717%200%200%201-2.164-17.735%2016.709%2016.709%200%200%201%2015.097-9.549h200.479c9.229%200%2016.707%207.478%2016.707%2016.707v33.413c0%209.229-7.478%2016.707-16.707%2016.707-9.229%200-16.707-7.478-16.707-16.707v-16.707H190.851l77.915%2095.231a16.713%2016.713%200%200%201%200%2021.155l-77.915%2095.231h148.515v-16.707c0-9.229%207.478-16.707%2016.707-16.707s16.707%207.478%2016.707%2016.707v33.413c-.001%209.229-7.478%2016.706-16.708%2016.706z%22%20fill=%22#fff%22/%3E%3Cg%20fill=%22#ffe6b3%22%3E%3Cpath%20d=%22M372.779%20378.348v-33.413c0-9.229-7.478-16.707-16.707-16.707s-16.707%207.478-16.707%2016.707v16.707h-83.533v33.413h100.239c9.231-.001%2016.708-7.478%2016.708-16.707zM268.766%20245.255l-12.933-15.807v52.768l12.932-15.807c5.031-6.149%205.031-15.002.001-21.154zM356.072%20116.612H255.833v33.413h83.533v16.707c0%209.229%207.478%2016.707%2016.707%2016.707s16.707-7.478%2016.707-16.707v-33.413c-.001-9.229-7.478-16.707-16.708-16.707z%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e03604a5-5f85-4f1d-8ddb-d70e7c8aed70",
              "type": "basic.input",
              "data": {
                "name": "velocityD",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 144,
                "y": 192
              }
            },
            {
              "id": "c0ec6500-8e69-4aa7-8e1a-666eb2869b16",
              "type": "basic.output",
              "data": {
                "name": "velocity1",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 656,
                "y": 200
              }
            },
            {
              "id": "90d153f9-6ea7-45b5-89d6-9bd77d860e61",
              "type": "basic.input",
              "data": {
                "name": "velocityP",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 144,
                "y": 264
              }
            },
            {
              "id": "04393e63-ab50-4b16-ab2e-fb290e7d8cc1",
              "type": "basic.output",
              "data": {
                "name": "velocity2",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 656,
                "y": 264
              }
            },
            {
              "id": "95d7a634-f5ab-4c40-a86e-1e5d145cf481",
              "type": "basic.code",
              "data": {
                "code": "assign velocity1 = velocityP+velocityD+16'd600;\nassign velocity2 = velocityP+velocityD;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "velocityD",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "velocityP",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ],
                  "out": [
                    {
                      "name": "velocity1",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "velocity2",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ]
                }
              },
              "position": {
                "x": 352,
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
                "block": "e03604a5-5f85-4f1d-8ddb-d70e7c8aed70",
                "port": "out"
              },
              "target": {
                "block": "95d7a634-f5ab-4c40-a86e-1e5d145cf481",
                "port": "velocityD"
              },
              "size": 16
            },
            {
              "source": {
                "block": "90d153f9-6ea7-45b5-89d6-9bd77d860e61",
                "port": "out"
              },
              "target": {
                "block": "95d7a634-f5ab-4c40-a86e-1e5d145cf481",
                "port": "velocityP"
              },
              "size": 16
            },
            {
              "source": {
                "block": "95d7a634-f5ab-4c40-a86e-1e5d145cf481",
                "port": "velocity1"
              },
              "target": {
                "block": "c0ec6500-8e69-4aa7-8e1a-666eb2869b16",
                "port": "in"
              },
              "size": 16
            },
            {
              "source": {
                "block": "95d7a634-f5ab-4c40-a86e-1e5d145cf481",
                "port": "velocity2"
              },
              "target": {
                "block": "04393e63-ab50-4b16-ab2e-fb290e7d8cc1",
                "port": "in"
              },
              "size": 16
            }
          ]
        }
      }
    }
  }
}