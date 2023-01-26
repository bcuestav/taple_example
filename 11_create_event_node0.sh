curl --silent --location --request POST 'http://localhost:3000/api/requests' \
--header 'X-API-KEY: 1234' \
--header 'Content-Type: application/json' \
--data-raw '{
    "request": {
        "State": {
            "subject_id": "J7qkFmQ75r-9eV7nUMN2ibPGViFtXH8Q2V20yp3OzVBY",
            "payload": {
                "Json": {
                    "temperature": 8,
                    "location": "Brazil",
                    "batch": {
                        "weight": 30,
                        "origin": "England"
                    }
                }
            }
        }
    }
}'