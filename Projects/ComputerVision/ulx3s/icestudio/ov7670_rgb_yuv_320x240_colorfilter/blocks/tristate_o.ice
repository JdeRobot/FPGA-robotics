{
  "version": "1.2",
  "package": {
    "name": "tristate_o",
    "version": "",
    "description": "trisate ",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "ulx3s-85f",
    "graph": {
      "blocks": [
        {
          "id": "b40e4dc8-21e6-4ffe-8623-b2e7fecc65c3",
          "type": "basic.input",
          "data": {
            "name": "d_in",
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
            "y": 216
          }
        },
        {
          "id": "d4a5b3a9-3682-4d8e-b407-fdfa89132be7",
          "type": "basic.output",
          "data": {
            "name": "d_out_z",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 864,
            "y": 256
          }
        },
        {
          "id": "866aadae-30bc-4637-95a3-b8ac318babb8",
          "type": "basic.input",
          "data": {
            "name": "d_out_en",
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
            "x": 136,
            "y": 296
          }
        },
        {
          "id": "f33dc9b6-cdaf-4fa0-be18-855cf6c20058",
          "type": "basic.code",
          "data": {
            "code": "\nassign d_out_z = d_out_en ? d_in : 1'bz;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "d_in"
                },
                {
                  "name": "d_out_en"
                }
              ],
              "out": [
                {
                  "name": "d_out_z"
                }
              ]
            }
          },
          "position": {
            "x": 328,
            "y": 208
          },
          "size": {
            "width": 472,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "b40e4dc8-21e6-4ffe-8623-b2e7fecc65c3",
            "port": "out"
          },
          "target": {
            "block": "f33dc9b6-cdaf-4fa0-be18-855cf6c20058",
            "port": "d_in"
          }
        },
        {
          "source": {
            "block": "866aadae-30bc-4637-95a3-b8ac318babb8",
            "port": "out"
          },
          "target": {
            "block": "f33dc9b6-cdaf-4fa0-be18-855cf6c20058",
            "port": "d_out_en"
          }
        },
        {
          "source": {
            "block": "f33dc9b6-cdaf-4fa0-be18-855cf6c20058",
            "port": "d_out_z"
          },
          "target": {
            "block": "d4a5b3a9-3682-4d8e-b407-fdfa89132be7",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}