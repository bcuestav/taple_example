curl --silent --location --request POST 'http://localhost:3001/api/requests' \
--header 'X-API-KEY: 1234' \
--header 'Content-Type: application/json' \
--data-raw '{
    "request": {
        "Create": {
            "governance_id": "JvfHLuSZ0unePV2eM2-JwDBi7H_Pq3UsHK0CYY6v0TiA",
            "namespace": "",
            "schema_id": "Test",
            "payload": {
                "Json": {
                    "temperature": 15,
                    "location": "England",
                    "batch": {
                        "weight": 13,
                        "origin": "Spain"
                    }
                }
            }
        }
    }
}'