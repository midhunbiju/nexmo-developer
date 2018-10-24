---
title: Conversation
description: A Conversation connects Users and allows them to communicate.
---

# Conversation

A Conversation is a shared core component that Nexmo APIs rely on. Conversations happen over multiple mediums (text, voice, video) and can have associated Users through Memberships.

The Conversation object is key to understanding the Conversation API. In order for Users to communicate, they must connect to a Conversation, at which point an associated Member object is created in that Conversation.

A Conversation is capable of supporting text messaging, audio calls, or video calls. For text messaging a Conversation can be thought of as like a chat room. Users can be invited to join a Conversation and they can leave a Conversation. A User can also join multiple Conversations.

The Conversation contains associated events. These events can be communication events such as messages, voice and video streams or other events such as added or removed users, typing indicators and so on.

There can be no communication outside of the context of a Conversation.

A Conversation can be used for a single temporary communication interaction with a beginning and end, such as a call. Alternatively, it can be utilized as a permanent container for the complete history of all related interactions.

Consider the following example. A User calls a Nexmo Number associated with a Nexmo Application. The application forwards the call to a second phone. This is illustrated in the following diagram:

![Conversation](/assets/images/conversation-api/call-forward-conversation.png)

The Call consists of two legs: inbound and outbound, and two Members, all contained in a Conversation object. If you used the Conversation API call `Get Conversation` to obtain details of this Conversation you would obtain a response similar to the following:

``` json
{
    "uuid": "CON-32f6cafa-cc69-4861-b9cf-0059fec6b664",
    "name": "NAM-0922c453-4cb0-41ed-9a32-39dcf6cded43",
    "timestamp": {
        "created": "2018-10-24T11:58:46.527Z"
    },
    "sequence_number": 9,
    "numbers": {},
    "properties": {
        "ttl": 172800,
        "video": false
    },
    "members": [
        {
            "member_id": "MEM-31205702-bd54-4270-a31a-9506f914f4c7",
            "user_id": "USR-be499813-c330-4e72-acdb-f56473a1daf9",
            "name": "USR-be499813-c330-4e72-acdb-f56473a1daf9",
            "state": "JOINED",
            "timestamp": {
                "joined": "2018-10-24T11:58:57.336Z"
            },
            "channel": {
                "type": "phone",
                "id": "0d89bd9c18cd29e17910fb16122c6ffc",
                "from": {
                    "type": "phone",
                    "number": "447700000001"
                },
                "to": {
                    "type": "phone",
                    "number": "4447700000002"
                },
                "leg_ids": [
                    "0d89bd9c18cd29e17910fb16122c6ffc"
                ]
            },
            "initiator": {
                "joined": {
                    "isSystem": true
                }
            }
        },
        {
            "member_id": "MEM-c0ccfb17-8bef-4508-bbf2-2ab970730261",
            "user_id": "USR-07cc3a58-5dda-4d2b-b281-a5e33451a047",
            "name": "vapi-user-858ccf52b4164802bc84e50850ae9224",
            "state": "JOINED",
            "timestamp": {
                "invited": "2018-10-24T11:58:46.832Z",
                "joined": "2018-10-24T11:58:57.268Z"
            },
            "invited_by": "USR-07cc3a58-5dda-4d2b-b281-a5e33451a047",
            "channel": {
                "type": "phone",
                "id": "7d103af4-cfa9-4180-b28f-776b2032b34e",
                "from": {
                    "number": "Unknown",
                    "type": "phone"
                },
                "leg_ids": [
                    "7d103af4-cfa9-4180-b28f-776b2032b34e"
                ],
                "to": {
                    "number": "447700000003",
                    "type": "phone"
                },
                "cpa": false,
                "preanswer": false,
                "ring_timeout": 60000,
                "cpa_time": 5000,
                "max_length": 7200000
            },
            "initiator": {
                "invited": {
                    "isSystem": true
                }
            }
        }
    ],
    "_links": {
        "self": {
            "href": "https://api.nexmo.com/beta/conversations/CON-32f6cafa-cc69-4861-b9cf-0059fec6b664"
        }
    }
}
```

In the above response the phone numbers are as follows:

Number | Description
---- | ----
447700000001 | Phone making inbound call
447700000002 | Nexmo Number linked to the Nexmo Application
447700000003 | The destination phone

If you look carefully at the response you can see the following:

* There is one Conversation identified by the ID of the form `CON-<uuid>`.
* This Conversation has two Members - one for each User.
* Both Members are `JOINED` into the Conversation.
* Each Member has a Channel which has the type `phone`.
* Each Channel has an ID.
* Each Channel has a different Leg associated with it.
* Each Leg has a unique ID.

To summarize, in this example there is one call and one Conversation consisting of two Legs (inbound and outbound). Each User involved in the call is joined into the Conversation by becoming a Member of that Conversation.

