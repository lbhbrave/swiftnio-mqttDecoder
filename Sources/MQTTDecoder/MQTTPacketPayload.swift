//
//  MQTTPacketPayload.swift
//  MQTTDecoder
//
//  Created by yanghuan on 2018/5/6.
//

import Foundation
enum MQTTPacketPayload {
    case CONNEC(payload: MQTTConnectPayload)
    case PUBLISH(payload: Data)
    case SUBSCRIBE(payload: MQTTSubscribePayload)
}

struct MQTTConnectPayload {
    let clientIdentifier: String
    let willTopic: String?
    let willMessage: Data?
    let userName: String?
    let password: Data?
    //    init(clientIdentifier: String, willTopic: String, willMessage: String, userName: String, password: String) {
    //        self.init(clientIdentifier: clientIdentifier, willTopic: willTopic, willMessage: [Character](willMessage), userName: userName, password: [Character](password))
    //    }
}


struct MQTTSubscribePayload {
    let subscriptions: [MQTTTopicSubscriptions]
}

struct MQTTTopicSubscriptions {
    let topicFilter: String
    let requestedQoS: MQTTQos
}


