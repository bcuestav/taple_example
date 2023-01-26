curl --silent --location --request POST 'http://localhost:3000/api/requests' \
--header 'X-API-KEY;' \
--header 'Content-Type: application/json' \
--data-raw '{
    "request": {
        "Create": {
            "governance_id": "",
            "namespace": "",
            "schema_id": "governance",
            "payload": {
                "Json": {
                    "members": [
                        {
                            "id": "Company1",
                            "tags": {},
                            "description": "Headquarters in Spain",
                            "key": "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c"
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
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c"
                                ]
                            },
                            "approval": {
                                "quorum": 0.5,
                                "approvers": [
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c"
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
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c"
                                ]
                            },
                            "approval": {
                                "quorum": 0.5,
                                "approvers": [
                                    "EbPeCUvk4rMQS5qd0BkUPU0qvdYYN-_Fs0erY6T7uV0c"
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