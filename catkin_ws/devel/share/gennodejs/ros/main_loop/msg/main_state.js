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

class main_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.robot_state = null;
      this.robot_case = null;
      this.pos = null;
      this.is_blocked = null;
      this.servo_state = null;
      this.stepper_state = null;
      this.hand_state = null;
      this.action_done = null;
      this.kill_mission = null;
      this.goal_covered_counter = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = '';
      }
      if (initObj.hasOwnProperty('robot_case')) {
        this.robot_case = initObj.robot_case
      }
      else {
        this.robot_case = '';
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('is_blocked')) {
        this.is_blocked = initObj.is_blocked
      }
      else {
        this.is_blocked = false;
      }
      if (initObj.hasOwnProperty('servo_state')) {
        this.servo_state = initObj.servo_state
      }
      else {
        this.servo_state = 0;
      }
      if (initObj.hasOwnProperty('stepper_state')) {
        this.stepper_state = initObj.stepper_state
      }
      else {
        this.stepper_state = 0;
      }
      if (initObj.hasOwnProperty('hand_state')) {
        this.hand_state = initObj.hand_state
      }
      else {
        this.hand_state = 0;
      }
      if (initObj.hasOwnProperty('action_done')) {
        this.action_done = initObj.action_done
      }
      else {
        this.action_done = 0;
      }
      if (initObj.hasOwnProperty('kill_mission')) {
        this.kill_mission = initObj.kill_mission
      }
      else {
        this.kill_mission = 0;
      }
      if (initObj.hasOwnProperty('goal_covered_counter')) {
        this.goal_covered_counter = initObj.goal_covered_counter
      }
      else {
        this.goal_covered_counter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type main_state
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [robot_state]
    bufferOffset = _serializer.string(obj.robot_state, buffer, bufferOffset);
    // Serialize message field [robot_case]
    bufferOffset = _serializer.string(obj.robot_case, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.int32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [is_blocked]
    bufferOffset = _serializer.bool(obj.is_blocked, buffer, bufferOffset);
    // Serialize message field [servo_state]
    bufferOffset = _serializer.int32(obj.servo_state, buffer, bufferOffset);
    // Serialize message field [stepper_state]
    bufferOffset = _serializer.int32(obj.stepper_state, buffer, bufferOffset);
    // Serialize message field [hand_state]
    bufferOffset = _serializer.int32(obj.hand_state, buffer, bufferOffset);
    // Serialize message field [action_done]
    bufferOffset = _serializer.int32(obj.action_done, buffer, bufferOffset);
    // Serialize message field [kill_mission]
    bufferOffset = _serializer.int32(obj.kill_mission, buffer, bufferOffset);
    // Serialize message field [goal_covered_counter]
    bufferOffset = _serializer.int32(obj.goal_covered_counter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type main_state
    let len;
    let data = new main_state(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_state]
    data.robot_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_case]
    data.robot_case = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [is_blocked]
    data.is_blocked = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [servo_state]
    data.servo_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stepper_state]
    data.stepper_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hand_state]
    data.hand_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action_done]
    data.action_done = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [kill_mission]
    data.kill_mission = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_covered_counter]
    data.goal_covered_counter = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_state.length;
    length += object.robot_case.length;
    length += 4 * object.pos.length;
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main_loop/main_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71019ac3a3fa7fa9229e3eb63069ffbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string robot_state
    string robot_case
    int32[] pos
    bool is_blocked
    int32 servo_state
    int32 stepper_state
    int32 hand_state
    int32 action_done
    int32 kill_mission
    int32 goal_covered_counter
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new main_state(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = ''
    }

    if (msg.robot_case !== undefined) {
      resolved.robot_case = msg.robot_case;
    }
    else {
      resolved.robot_case = ''
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.is_blocked !== undefined) {
      resolved.is_blocked = msg.is_blocked;
    }
    else {
      resolved.is_blocked = false
    }

    if (msg.servo_state !== undefined) {
      resolved.servo_state = msg.servo_state;
    }
    else {
      resolved.servo_state = 0
    }

    if (msg.stepper_state !== undefined) {
      resolved.stepper_state = msg.stepper_state;
    }
    else {
      resolved.stepper_state = 0
    }

    if (msg.hand_state !== undefined) {
      resolved.hand_state = msg.hand_state;
    }
    else {
      resolved.hand_state = 0
    }

    if (msg.action_done !== undefined) {
      resolved.action_done = msg.action_done;
    }
    else {
      resolved.action_done = 0
    }

    if (msg.kill_mission !== undefined) {
      resolved.kill_mission = msg.kill_mission;
    }
    else {
      resolved.kill_mission = 0
    }

    if (msg.goal_covered_counter !== undefined) {
      resolved.goal_covered_counter = msg.goal_covered_counter;
    }
    else {
      resolved.goal_covered_counter = 0
    }

    return resolved;
    }
};

module.exports = main_state;
