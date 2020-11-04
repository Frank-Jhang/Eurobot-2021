// Auto-generated. Do not edit!

// (in-package lidar_2020.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class alert_range {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.num = null;
      this.ranging_value = null;
      this.alert = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('ranging_value')) {
        this.ranging_value = initObj.ranging_value
      }
      else {
        this.ranging_value = [];
      }
      if (initObj.hasOwnProperty('alert')) {
        this.alert = initObj.alert
      }
      else {
        this.alert = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type alert_range
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.int16(obj.num, buffer, bufferOffset);
    // Serialize message field [ranging_value]
    bufferOffset = _arraySerializer.float32(obj.ranging_value, buffer, bufferOffset, null);
    // Serialize message field [alert]
    bufferOffset = _arraySerializer.bool(obj.alert, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type alert_range
    let len;
    let data = new alert_range(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ranging_value]
    data.ranging_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [alert]
    data.alert = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.ranging_value.length;
    length += object.alert.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_2020/alert_range';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0c52c82e08087063181441d7bcd4d6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int16 num
    float32[] ranging_value
    bool[] alert
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new alert_range(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.ranging_value !== undefined) {
      resolved.ranging_value = msg.ranging_value;
    }
    else {
      resolved.ranging_value = []
    }

    if (msg.alert !== undefined) {
      resolved.alert = msg.alert;
    }
    else {
      resolved.alert = []
    }

    return resolved;
    }
};

module.exports = alert_range;
