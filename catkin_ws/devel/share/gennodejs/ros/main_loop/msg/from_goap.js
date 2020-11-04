// Auto-generated. Do not edit!

// (in-package main_loop.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class from_goap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desire_degree = null;
      this.desire_speed = null;
      this.desire_mode = null;
      this.desire_pos = null;
      this.desire_servo_state = null;
      this.desire_stepper = null;
      this.desire_hand = null;
      this.is_wait = null;
      this.mission_name = null;
    }
    else {
      if (initObj.hasOwnProperty('desire_degree')) {
        this.desire_degree = initObj.desire_degree
      }
      else {
        this.desire_degree = 0;
      }
      if (initObj.hasOwnProperty('desire_speed')) {
        this.desire_speed = initObj.desire_speed
      }
      else {
        this.desire_speed = 0;
      }
      if (initObj.hasOwnProperty('desire_mode')) {
        this.desire_mode = initObj.desire_mode
      }
      else {
        this.desire_mode = 0;
      }
      if (initObj.hasOwnProperty('desire_pos')) {
        this.desire_pos = initObj.desire_pos
      }
      else {
        this.desire_pos = [];
      }
      if (initObj.hasOwnProperty('desire_servo_state')) {
        this.desire_servo_state = initObj.desire_servo_state
      }
      else {
        this.desire_servo_state = 0;
      }
      if (initObj.hasOwnProperty('desire_stepper')) {
        this.desire_stepper = initObj.desire_stepper
      }
      else {
        this.desire_stepper = 0;
      }
      if (initObj.hasOwnProperty('desire_hand')) {
        this.desire_hand = initObj.desire_hand
      }
      else {
        this.desire_hand = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type from_goap
    // Serialize message field [desire_degree]
    bufferOffset = _serializer.int32(obj.desire_degree, buffer, bufferOffset);
    // Serialize message field [desire_speed]
    bufferOffset = _serializer.int32(obj.desire_speed, buffer, bufferOffset);
    // Serialize message field [desire_mode]
    bufferOffset = _serializer.int32(obj.desire_mode, buffer, bufferOffset);
    // Serialize message field [desire_pos]
    bufferOffset = _arraySerializer.int32(obj.desire_pos, buffer, bufferOffset, null);
    // Serialize message field [desire_servo_state]
    bufferOffset = _serializer.int32(obj.desire_servo_state, buffer, bufferOffset);
    // Serialize message field [desire_stepper]
    bufferOffset = _serializer.int32(obj.desire_stepper, buffer, bufferOffset);
    // Serialize message field [desire_hand]
    bufferOffset = _serializer.int32(obj.desire_hand, buffer, bufferOffset);
    // Serialize message field [is_wait]
    bufferOffset = _serializer.int32(obj.is_wait, buffer, bufferOffset);
    // Serialize message field [mission_name]
    bufferOffset = _serializer.string(obj.mission_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type from_goap
    let len;
    let data = new from_goap(null);
    // Deserialize message field [desire_degree]
    data.desire_degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desire_speed]
    data.desire_speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desire_mode]
    data.desire_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desire_pos]
    data.desire_pos = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [desire_servo_state]
    data.desire_servo_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desire_stepper]
    data.desire_stepper = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desire_hand]
    data.desire_hand = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_wait]
    data.is_wait = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mission_name]
    data.mission_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.desire_pos.length;
    length += object.mission_name.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main_loop/from_goap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '064f4f70eb75843b4e3f71d5f45d392e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 desire_degree
    int32 desire_speed
    int32 desire_mode
    int32[] desire_pos
    int32 desire_servo_state
    int32 desire_stepper
    int32 desire_hand
    int32 is_wait
    string mission_name 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new from_goap(null);
    if (msg.desire_degree !== undefined) {
      resolved.desire_degree = msg.desire_degree;
    }
    else {
      resolved.desire_degree = 0
    }

    if (msg.desire_speed !== undefined) {
      resolved.desire_speed = msg.desire_speed;
    }
    else {
      resolved.desire_speed = 0
    }

    if (msg.desire_mode !== undefined) {
      resolved.desire_mode = msg.desire_mode;
    }
    else {
      resolved.desire_mode = 0
    }

    if (msg.desire_pos !== undefined) {
      resolved.desire_pos = msg.desire_pos;
    }
    else {
      resolved.desire_pos = []
    }

    if (msg.desire_servo_state !== undefined) {
      resolved.desire_servo_state = msg.desire_servo_state;
    }
    else {
      resolved.desire_servo_state = 0
    }

    if (msg.desire_stepper !== undefined) {
      resolved.desire_stepper = msg.desire_stepper;
    }
    else {
      resolved.desire_stepper = 0
    }

    if (msg.desire_hand !== undefined) {
      resolved.desire_hand = msg.desire_hand;
    }
    else {
      resolved.desire_hand = 0
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

    return resolved;
    }
};

module.exports = from_goap;
