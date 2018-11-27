{
  "version": "1.1",
  "package": {
    "name": "ASSIGN",
    "version": "v1.0.0",
    "description": "",
    "author": "Juan Ordoñez",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20490.423%20490.423%22%3E%3Cpath%20d=%22M483.248%20366.926l-97.8-88.4c-8.3-8.3-21.8-7.3-29.1%201-8.3%208.3-7.3%2021.8%201%2029.1l58%2052h-32c-139.4%200-252.8-113.4-252.8-252.8v-33l52%2058c8.3%208.3%2020.8%208.3%2029.1%201%208.3-8.3%208.3-20.8%201-29.1l-88.4-97.8c-7.3-8.3-22.9-8.3-30.2%200l-88.3%2097.9c-8.3%208.3-7.3%2021.8%201%2029.1%2010.9%208.8%2025.1%205.3%2030.2-1l52-58v33c0%20162.3%20131.1%20293.4%20293.4%20293.4h34.2l-59.1%2053.1c-8.3%208.3-8.3%2020.8-1%2029.1%2011%2010.2%2024.9%205.8%2029.1%201l97.8-86.3c9.4-7.6%209.5-21.9-.1-31.3z%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "cb1fcea6-831e-4d2e-b879-80fd9926e477",
          "type": "basic.output",
          "data": {
            "name": "out",
            "range": "[15:0]",
            "pins": [
              {
                "index": "15",
                "name": "",
                "value": "0"
              },
              {
                "index": "14",
                "name": "",
                "value": "0"
              },
              {
                "index": "13",
                "name": "",
                "value": "0"
              },
              {
                "index": "12",
                "name": "",
                "value": "0"
              },
              {
                "index": "11",
                "name": "",
                "value": "0"
              },
              {
                "index": "10",
                "name": "",
                "value": "0"
              },
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 528,
            "y": 200
          }
        },
        {
          "id": "64d095fc-7dca-4f9d-9c73-9fcd9e0ed0a7",
          "type": "basic.constant",
          "data": {
            "name": "in",
            "value": "16'd0",
            "local": false
          },
          "position": {
            "x": 304,
            "y": 56
          }
        },
        {
          "id": "329ad7c4-5f98-4ac9-acd7-5e944fe47f30",
          "type": "basic.code",
          "data": {
            "code": "assign out=in;",
            "params": [
              {
                "name": "in"
              }
            ],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "out",
                  "range": "[15:0]",
                  "size": 16
                }
              ]
            }
          },
          "position": {
            "x": 256,
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
            "block": "64d095fc-7dca-4f9d-9c73-9fcd9e0ed0a7",
            "port": "constant-out"
          },
          "target": {
            "block": "329ad7c4-5f98-4ac9-acd7-5e944fe47f30",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "329ad7c4-5f98-4ac9-acd7-5e944fe47f30",
            "port": "out"
          },
          "target": {
            "block": "cb1fcea6-831e-4d2e-b879-80fd9926e477",
            "port": "in"
          },
          "size": 16
        }
      ]
    },
    "state": {
      "pan": {
        "x": 19,
        "y": 111
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}