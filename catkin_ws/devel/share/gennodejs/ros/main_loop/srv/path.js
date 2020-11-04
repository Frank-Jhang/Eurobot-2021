// Auto-generated. Do not edit!

// (in-package main_loop.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class pathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.my_pos_x = null;
      this.my_pos_y = null;
      this.enemy1_x = null;
      this.enemy1_y = null;
      this.enemy2_x = null;
      this.enemy2_y = null;
      this.ally_x = null;
      this.ally_y = null;
      this.goal_pos_x = null;
      this.goal_pos_y = null;
    }
    else {
      if (initObj.hasOwnProperty('my_pos_x')) {
        this.my_pos_x = initObj.my_pos_x
      }
      else {
        this.my_pos_x = 0;
      }
      if (initObj.hasOwnProperty('my_pos_y')) {
        this.my_pos_y = initObj.my_pos_y
      }
      else {
        this.my_pos_y = 0;
      }
      if (initObj.hasOwnProperty('enemy1_x')) {
        this.enemy1_x = initObj.enemy1_x
      }
      else {
        this.enemy1_x = 0;
      }
      if (initObj.hasOwnProperty('enemy1_y')) {
        this.enemy1_y = initObj.enemy1_y
      }
      else {
        this.enemy1_y = 0;
      }
      if (initObj.hasOwnProperty('enemy2_x')) {
        this.enemy2_x = initObj.enemy2_x
      }
      else {
        this.enemy2_x = 0;
      }
      if (initObj.hasOwnProperty('enemy2_y')) {
        this.enemy2_y = initObj.enemy2_y
      }
      else {
        this.enemy2_y = 0;
      }
      if (initObj.hasOwnProperty('ally_x')) {
        this.ally_x = initObj.ally_x
      }
      else {
        this.ally_x = 0;
      }
      if (initObj.hasOwnProperty('ally_y')) {
        this.ally_y = initObj.ally_y
      }
      else {
        this.ally_y = 0;
      }
      if (initObj.hasOwnProperty('goal_pos_x')) {
        this.goal_pos_x = initObj.goal_pos_x
      }
      else {
        this.goal_pos_x = 0;
      }
      if (initObj.hasOwnProperty('goal_pos_y')) {
        this.goal_pos_y = initObj.goal_pos_y
      }
      else {
        this.goal_pos_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pathRequest
    // Serialize message field [my_pos_x]
    bufferOffset = _serializer.int32(obj.my_pos_x, buffer, bufferOffset);
    // Serialize message field [my_pos_y]
    bufferOffset = _serializer.int32(obj.my_pos_y, buffer, bufferOffset);
    // Serialize message field [enemy1_x]
    bufferOffset = _serializer.int32(obj.enemy1_x, buffer, bufferOffset);
    // Serialize message field [enemy1_y]
    bufferOffset = _serializer.int32(obj.enemy1_y, buffer, bufferOffset);
    // Serialize message field [enemy2_x]
    bufferOffset = _serializer.int32(obj.enemy2_x, buffer, bufferOffset);
    // Serialize message field [enemy2_y]
    bufferOffset = _serializer.int32(obj.enemy2_y, buffer, bufferOffset);
    // Serialize message field [ally_x]
    bufferOffset = _serializer.int32(obj.ally_x, buffer, bufferOffset);
    // Serialize message field [ally_y]
    bufferOffset = _serializer.int32(obj.ally_y, buffer, bufferOffset);
    // Serialize message field [goal_pos_x]
    bufferOffset = _serializer.int32(obj.goal_pos_x, buffer, bufferOffset);
    // Serialize message field [goal_pos_y]
    bufferOffset = _serializer.int32(obj.goal_pos_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pathRequest
    let len;
    let data = new pathRequest(null);
    // Deserialize message field [my_pos_x]
    data.my_pos_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [my_pos_y]
    data.my_pos_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy1_x]
    data.enemy1_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy1_y]
    data.enemy1_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy2_x]
    data.enemy2_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy2_y]
    data.enemy2_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ally_x]
    data.ally_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ally_y]
    data.ally_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_pos_x]
    data.goal_pos_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_pos_y]
    data.goal_pos_y = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main_loop/pathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ee927733a44912ec23514409b395933';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 my_pos_x
    int32 my_pos_y
    int32 enemy1_x
    int32 enemy1_y
    int32 enemy2_x
    int32 enemy2_y
    int32 ally_x
    int32 ally_y
    int32 goal_pos_x
    int32 goal_pos_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pathRequest(null);
    if (msg.my_pos_x !== undefined) {
      resolved.my_pos_x = msg.my_pos_x;
    }
    else {
      resolved.my_pos_x = 0
    }

    if (msg.my_pos_y !== undefined) {
      resolved.my_pos_y = msg.my_pos_y;
    }
    else {
      resolved.my_pos_y = 0
    }

    if (msg.enemy1_x !== undefined) {
      resolved.enemy1_x = msg.enemy1_x;
    }
    else {
      resolved.enemy1_x = 0
    }

    if (msg.enemy1_y !== undefined) {
      resolved.enemy1_y = msg.enemy1_y;
    }
    else {
      resolved.enemy1_y = 0
    }

    if (msg.enemy2_x !== undefined) {
      resolved.enemy2_x = msg.enemy2_x;
    }
    else {
      resolved.enemy2_x = 0
    }

    if (msg.enemy2_y !== undefined) {
      resolved.enemy2_y = msg.enemy2_y;
    }
    else {
      resolved.enemy2_y = 0
    }

    if (msg.ally_x !== undefined) {
      resolved.ally_x = msg.ally_x;
    }
    else {
      resolved.ally_x = 0
    }

    if (msg.ally_y !== undefined) {
      resolved.ally_y = msg.ally_y;
    }
    else {
      resolved.ally_y = 0
    }

    if (msg.goal_pos_x !== undefined) {
      resolved.goal_pos_x = msg.goal_pos_x;
    }
    else {
      resolved.goal_pos_x = 0
    }

    if (msg.goal_pos_y !== undefined) {
      resolved.goal_pos_y = msg.goal_pos_y;
    }
    else {
      resolved.goal_pos_y = 0
    }

    return resolved;
    }
};

class pathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.next_pos_x = null;
      this.next_pos_y = null;
      this.degree = null;
      this.blocked = null;
    }
    else {
      if (initObj.hasOwnProperty('next_pos_x')) {
        this.next_pos_x = initObj.next_pos_x
      }
      else {
        this.next_pos_x = 0;
      }
      if (initObj.hasOwnProperty('next_pos_y')) {
        this.next_pos_y = initObj.next_pos_y
      }
      else {
        this.next_pos_y = 0;
      }
      if (initObj.hasOwnProperty('degree')) {
        this.degree = initObj.degree
      }
      else {
        this.degree = 0.0;
      }
      if (initObj.hasOwnProperty('blocked')) {
        this.blocked = initObj.blocked
      }
      else {
        this.blocked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pathResponse
    // Serialize message field [next_pos_x]
    bufferOffset = _serializer.int32(obj.next_pos_x, buffer, bufferOffset);
    // Serialize message field [next_pos_y]
    bufferOffset = _serializer.int32(obj.next_pos_y, buffer, bufferOffset);
    // Serialize message field [degree]
    bufferOffset = _serializer.float32(obj.degree, buffer, bufferOffset);
    // Serialize message field [blocked]
    bufferOffset = _serializer.bool(obj.blocked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pathResponse
    let len;
    let data = new pathResponse(null);
    // Deserialize message field [next_pos_x]
    data.next_pos_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [next_pos_y]
    data.next_pos_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [degree]
    data.degree = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [blocked]
    data.blocked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main_loop/pathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ca94551c32873de91ff62acdf329f56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 next_pos_x
    int32 next_pos_y
    float32 degree
    bool blocked
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pathResponse(null);
    if (msg.next_pos_x !== undefined) {
      resolved.next_pos_x = msg.next_pos_x;
    }
    else {
      resolved.next_pos_x = 0
    }

    if (msg.next_pos_y !== undefined) {
      resolved.next_pos_y = msg.next_pos_y;
    }
    else {
      resolved.next_pos_y = 0
    }

    if (msg.degree !== undefined) {
      resolved.degree = msg.degree;
    }
    else {
      resolved.degree = 0.0
    }

    if (msg.blocked !== undefined) {
      resolved.blocked = msg.blocked;
    }
    else {
      resolved.blocked = false
    }

    return resolved;
    }
};

module.exports = {
  Request: pathRequest,
  Response: pathResponse,
  md5sum() { return 'aa24ea267d1480041af4f206230a297f'; },
  datatype() { return 'main_loop/path'; }
};
