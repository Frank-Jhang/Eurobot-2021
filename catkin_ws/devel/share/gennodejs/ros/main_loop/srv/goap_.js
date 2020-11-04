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

class goap_Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_done = null;
      this.pos = null;
      this.north_or_south = null;
      this.time = null;
      this.mission_name = null;
      this.mission_child_name = null;
    }
    else {
      if (initObj.hasOwnProperty('action_done')) {
        this.action_done = initObj.action_done
      }
      else {
        this.action_done = false;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('north_or_south')) {
        this.north_or_south = initObj.north_or_south
      }
      else {
        this.north_or_south = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('mission_name')) {
        this.mission_name = initObj.mission_name
      }
      else {
        this.mission_name = '';
      }
      if (initObj.hasOwnProperty('mission_child_name')) {
        this.mission_child_name = initObj.mission_child_name
      }
      else {
        this.mission_child_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goap_Request
    // Serialize message field [action_done]
    bufferOffset = _serializer.bool(obj.action_done, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.int32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [north_or_south]
    bufferOffset = _serializer.int32(obj.north_or_south, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [mission_name]
    bufferOffset = _serializer.string(obj.mission_name, buffer, bufferOffset);
    // Serialize message field [mission_child_name]
    bufferOffset = _serializer.string(obj.mission_child_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goap_Request
    let len;
    let data = new goap_Request(null);
    // Deserialize message field [action_done]
    data.action_done = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [north_or_south]
    data.north_or_south = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mission_name]
    data.mission_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mission_child_name]
    data.mission_child_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pos.length;
    length += object.mission_name.length;
    length += object.mission_child_name.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main_loop/goap_Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24e4b27fcff005a29854ec9235284e64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool action_done
    int32[] pos
    
    int32 north_or_south
    
    float32 time
    string mission_name
    string mission_child_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goap_Request(null);
    if (msg.action_done !== undefined) {
      resolved.action_done = msg.action_done;
    }
    else {
      resolved.action_done = false
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.north_or_south !== undefined) {
      resolved.north_or_south = msg.north_or_south;
    }
    else {
      resolved.north_or_south = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.mission_name !== undefined) {
      resolved.mission_name = msg.mission_name;
    }
    else {
      resolved.mission_name = ''
    }

    if (msg.mission_child_name !== undefined) {
      resolved.mission_child_name = msg.mission_child_name;
    }
    else {
      resolved.mission_child_name = ''
    }

    return resolved;
    }
};

class goap_Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.mode = null;
      this.degree = null;
      this.pos = null;
      this.ST2 = null;
      this.is_wait = null;
      this.mission_name = null;
      this.mission_child_name = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('degree')) {
        this.degree = initObj.degree
      }
      else {
        this.degree = 0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('ST2')) {
        this.ST2 = initObj.ST2
      }
      else {
        this.ST2 = [];
      }
      if (initObj.hasOwnProperty('is_wait')) {
        this.is_wait = initObj.is_wait
      }
      else {
        this.is_wait = 0;
      }
      if (initObj.hasOwnProperty('mission_name')) {
        this.mission_name = initObj.mission_name
      }
      else {
        this.mission_name = '';
      }
      if (initObj.hasOwnProperty('mission_child_name')) {
        this.mission_child_name = initObj.mission_child_name
      }
      else {
        this.mission_child_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goap_Response
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [degree]
    bufferOffset = _serializer.int32(obj.degree, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.int32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [ST2]
    bufferOffset = _arraySerializer.int32(obj.ST2, buffer, bufferOffset, null);
    // Serialize message field [is_wait]
    bufferOffset = _serializer.int32(obj.is_wait, buffer, bufferOffset);
    // Serialize message field [mission_name]
    bufferOffset = _serializer.string(obj.mission_name, buffer, bufferOffset);
    // Serialize message field [mission_child_name]
    bufferOffset = _serializer.string(obj.mission_child_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goap_Response
    let len;
    let data = new goap_Response(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [degree]
    data.degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [ST2]
    data.ST2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [is_wait]
    data.is_wait = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mission_name]
    data.mission_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mission_child_name]
    data.mission_child_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pos.length;
    length += 4 * object.ST2.length;
    length += object.mission_name.length;
    length += object.mission_child_name.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main_loop/goap_Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce46ae66d83155e3f5ebac2ba63ec815';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 speed
    int32 mode
    int32 degree
    int32[] pos
    int32[] ST2
    int32 is_wait
    string mission_name
    string mission_child_name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goap_Response(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.degree !== undefined) {
      resolved.degree = msg.degree;
    }
    else {
      resolved.degree = 0
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.ST2 !== undefined) {
      resolved.ST2 = msg.ST2;
    }
    else {
      resolved.ST2 = []
    }

    if (msg.is_wait !== undefined) {
      resolved.is_wait = msg.is_wait;
    }
    else {
      resolved.is_wait = 0
    }

    if (msg.mission_name !== undefined) {
      resolved.mission_name = msg.mission_name;
    }
    else {
      resolved.mission_name = ''
    }

    if (msg.mission_child_name !== undefined) {
      resolved.mission_child_name = msg.mission_child_name;
    }
    else {
      resolved.mission_child_name = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: goap_Request,
  Response: goap_Response,
  md5sum() { return 'bea0114d84bf82ce48ef39139983607f'; },
  datatype() { return 'main_loop/goap_'; }
};
