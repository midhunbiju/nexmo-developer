---
title: Overview
---

# Nexmo Comms SDKs Overview

Nexmo Comms SDKs is a conversation-centric product consisting of SDKs for iOS, Android, and JavaScript and a [REST API](/api/conversation).

The Nexmo Comms SDKs enable communications across multiple channels including:

* In-app messaging over IP
* In-app voice over IP
* In-app voice to PSTN
* PSTN to in-app voice
* In-app video

Enable chat or voice in your mobile or web application with our SDKs so that your users can seamlessly communicate no matter which device they are on.

## Contents

* [Developer Preview](#developer-preview)
* [Supported features](#supported-features)
* [Getting started](#getting-started)
* [Concepts](#concepts)
* [SDK Documentation](#sdk-documentation)
* [References](#references)

## Developer Preview

This API is currently in Developer Preview.

Nexmo always welcomes your feedback. Your suggestions help us improve the product. If you do need help, please email [support@nexmo.com](mailto:support@nexmo.com) and include Conversation API in the subject line. Please note that during the Developer Preview period support times are limited to Monday to Friday.

If you want communicate with Nexmo during the developer preview you can:

* Join the [Nexmo community slack](https://developer.nexmo.com/community/slack/) and check out the [#comms-sdks](https://nexmo-community.slack.com/messages/C9H152ATW) channel.
* Email [ea-support@nexmo.com](mailto:ea-support@nexmo.com) directly.

## Supported features

### In-App Messaging

Build a feature-rich chat experience that includes typing indicators and sent, delivered and read receipts.

Some features include:

* Offline Sync – With built-in caching, messages are saved and sent or received once their device is back online.
* Push Notifications – Keep users aware of important alerts by sending notifications to their device.
* Text and Image Support – Users can quickly send and receive texts and images from your application.

[Overview](/comms-sdks/in-app-messaging/overview)

### In-App Voice

Nexmo In-App Voice uses WebRTC and includes all the essentials you need to build a feature-rich voice experience.

Some features include:

* User Control – Users can control whether their audio stream is muted or unmuted.
* Notifications  – Users can be notified when they receive a call or when participants are muted.
* Group Calls – Configure call settings so users can start a group call by adding participants in real time.

[Overview](/comms-sdks/in-app-voice/overview)

### In-App Video

Nexmo In-App Video uses WebRTC and includes all the essentials you need to build a feature-rich video experience.

Some features include:

* User Control – Users can control whether their video stream is muted or unmuted.
* Notifications  – Users can be notified when other members have enabled a video channel.
* Group Calls – Configure conversations so users can start a group video call by adding participants in real time.
* Screen Sharing – Allow users to share their screens.

[Overview](/comms-sdks/in-app-video/overview)

## Participating in the Developer Preview

This Developer Preview will focus on the In-App Messaging and Voice capabilities. During this program, there will be frequent releases with new features and bug fixes based on your feedback. During the Developer Preview, it is possible that there shall be breaking changes to the SDK and API but these will be explicitly communicated beforehand.

If you want to communicate with Nexmo during the developer preview you can:

* Join the [Nexmo community slack](https://developer.nexmo.com/community/slack/) and check out the [#stitch](https://nexmo-community.slack.com/messages/C9H152ATW) channel.
* Email [ea-support@nexmo.com](mailto:ea-support@nexmo.com) directly.

## Concepts

You can read more about Stitch key concepts in the following topics:

```concept_list
product: conversation
```

## SDK Documentation


<div class="Vlt-grid">
  <div class="Vlt-col Vlt-col--center">
    <a href="/sdk/stitch/javascript/" class="Vlt-btn Vlt-btn--tertiary Vlt-btn--large">
      <svg class="Vlt-yellow"><use xlink:href="/symbol/volta-icons.svg#Vlt-icon-js"></use></svg>
      JavaScript
    </a>
  </div>
  <div class="Vlt-col Vlt-col--center">
    <a href="/sdk/stitch/android/" class="Vlt-btn Vlt-btn--tertiary Vlt-btn--large">
      <svg class="Vlt-green-light"><use xlink:href="/symbol/volta-icons.svg#Vlt-icon-android"></use></svg>
      Android
    </a>
  </div>
  <div class="Vlt-col Vlt-col--center">
    <a href="/sdk/stitch/ios/" class="Vlt-btn Vlt-btn--tertiary Vlt-btn--large">
      <svg><use xlink:href="/symbol/volta-icons.svg#Vlt-icon-apple"></use></svg>
      iOS
    </a>
  </div>
</div>

## References

* [API Reference](/api/conversation)
* [Nexmo CLI](https://github.com/nexmo/nexmo-cli/tree/beta)
* [Node.JS and Angular Demo](https://github.com/Nexmo/stitch-demo) with an [Android](https://github.com/Nexmo/stitch-demo-android) client demo

