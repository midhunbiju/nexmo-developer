---
title: Custom Sender ID
---

# Custom Sender ID

An SMS Sender ID is an easy way to brand your SMS messages so that the person receiving them can quickly see who it is from. Use a custom Sender ID to better represent your brand and maximise readership and response rates.

## Using a Sender ID

Set the Sender ID in the `from` field of the message request.

The Sender ID can be either:

* **Numeric**
    * A telephone number of up to 15 digits
    * The number must be in [international format](/concepts/guides/glossary#number-format)
    * Do not include the leading `+` or `00`
* **Alphanumeric**
    * An 11 character string of ^[supported characters](abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789).
    * Spaces are not allowed

> **Note**: Using other characters might prevent your message from being delivered or the Sender ID being changed.

## Country-specific considerations

Some countries impose limitations on Sender IDs, such as:

* Your Sender ID must be a virtual number
* SMS filtering is applied which modifies your Sender ID
* Your numeric-only Sender ID is replaced by a [short code](https://en.wikipedia.org/wiki/Short_code)
* You can only send SMS at certain times of the day
* If your SMS is for marketing purposes you must implement a [STOP system](https://developer.nexmo.com/api/sms/us-short-codes/alerts/subscription)

Before you start your messaging campaign:

1. Check the `SenderID` column for the target country in [this document](https://help.nexmo.com/hc/en-us/articles/115011781468).
2. Send your all your messages to numbers in the same country in a batch and set the Sender ID to match what that country allows.

## SMS Spoofing

Nexmo expressly prohibits [SMS spoofing](https://en.wikipedia.org/wiki/SMS_spoofing) where the Sender ID is used to impersonate another person, company or product.
