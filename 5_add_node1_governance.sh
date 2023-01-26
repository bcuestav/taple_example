    curl --silent --location --request POST 'http://localhost:3000/api/requests' \
--header 'X-API-KEY;' \
--header 'Content-Type: application/json' \
--data-raw '{
    "request": {
        "State": {
            "subject_id": "JvfHLuSZ0unePV2eM2-JwDBi7H_Pq3UsHK0CYY6v0TiA",
            "payload": {
                "Json": {
                    "members": [
                        {
                            "id": "Company1",
                            "tags": {},
                            "description": "Headquarters in Spain",
                            "key": "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c"
                        },
                        {
                            "id": "Company2",
                            "tags": {},
                            "description": "Headquarters in England",
                            "key": "EPMGW4PNf-Ex8gU2HrLf6E8JKC4DEN7z5CtJEhywW4bo"
                        }
                    ],
                    "schemas": [
                        {
                            "id": "Test",
                            "tags": {},
                            "content": {
                                "type": "object",
                                "additionalProperties": false,
                                "required": [
                                    "temperature",
                                    "location",
                                    "batch"
                                ],
                                "properties": {
                                    "temperature": {
                                        "type": "integer"
                                    },
                                    "location": {
                                        "type": "string"
                                    },
                                    "batch": {
                                        "type": "object",
                                        "additionalProperties": false,
                                        "required": [
                                            "weight",
                                            "origin"
                                        ],
                                        "properties": {
                                            "weight": {
                                                "type": "number",
                                                "minimum": 0
                                            },
                                            "origin": {
                                                "type": "string"
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    ],
                    "policies": [
                        {
                            "id": "Test",
                            "validation": {
                                "quorum": 0.5,
                                "validators": [
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c",
                                    "EPMGW4PNf-Ex8gU2HrLf6E8JKC4DEN7z5CtJEhywW4bo"
                                ]
                            },
                            "approval": {
                                "quorum": 0.5,
                                "approvers": [
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c",
                                    "EPMGW4PNf-Ex8gU2HrLf6E8JKC4DEN7z5CtJEhywW4bo"
                                ]
                            },
                            "invokation": {
                                "owner": {
                                    "allowance": true,
                                    "approvalRequired": true
                                },
                                "set": {
                                    "allowance": false,
                                    "approvalRequired": false,
                                    "invokers": []
                                },
                                "all": {
                                    "allowance": false,
                                    "approvalRequired": false
                                },
                                "external": {
                                    "allowance": false,
                                    "approvalRequired": false
                                }
                            }
                        },
                        {
                            "id": "governance",
                            "validation": {
                                "quorum": 0.5,
                                "validators": [
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c",
                                    "EPMGW4PNf-Ex8gU2HrLf6E8JKC4DEN7z5CtJEhywW4bo"
                                ]
                            },
                            "approval": {
                                "quorum": 0.5,
                                "approvers": [
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c",
                                    "EPMGW4PNf-Ex8gU2HrLf6E8JKC4DEN7z5CtJEhywW4bo"
                                ]
                            },
                            "invokation": {
                                "owner": {
                                    "allowance": true,
                                    "approvalRequired": true
                                },
                                "set": {
                                    "allowance": false,
                                    "approvalRequired": false,
                                    "invokers": []
                                },
                                "all": {
                                    "allowance": false,
                                    "approvalRequired": false
                                },
                                "external": {
                                    "allowance": false,
                                    "approvalRequired": false
                                }
                            }
                        }
                    ]
                }
            }
        }
    }
}'