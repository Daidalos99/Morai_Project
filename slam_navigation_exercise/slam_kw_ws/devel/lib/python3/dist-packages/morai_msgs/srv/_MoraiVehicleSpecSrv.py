# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from morai_msgs/MoraiVehicleSpecSrvRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import morai_msgs.msg

class MoraiVehicleSpecSrvRequest(genpy.Message):
  _md5sum = "0f60eb9d45044f97584dc4dc33ff04f2"
  _type = "morai_msgs/MoraiVehicleSpecSrvRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """VehicleSpecIndex request

================================================================================
MSG: morai_msgs/VehicleSpecIndex
int32 unique_id
"""
  __slots__ = ['request']
  _slot_types = ['morai_msgs/VehicleSpecIndex']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       request

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoraiVehicleSpecSrvRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.request is None:
        self.request = morai_msgs.msg.VehicleSpecIndex()
    else:
      self.request = morai_msgs.msg.VehicleSpecIndex()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.request.unique_id
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.request is None:
        self.request = morai_msgs.msg.VehicleSpecIndex()
      end = 0
      start = end
      end += 4
      (self.request.unique_id,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.request.unique_id
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.request is None:
        self.request = morai_msgs.msg.VehicleSpecIndex()
      end = 0
      start = end
      end += 4
      (self.request.unique_id,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from morai_msgs/MoraiVehicleSpecSrvResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import morai_msgs.msg

class MoraiVehicleSpecSrvResponse(genpy.Message):
  _md5sum = "20ea4a8f870d4f05648663666ca87567"
  _type = "morai_msgs/MoraiVehicleSpecSrvResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """VehicleSpec response


================================================================================
MSG: morai_msgs/VehicleSpec
geometry_msgs/Vector3 size
float32 wheel_base
float64 max_steering

float32 overhang 
float32 rear_overhang

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['response']
  _slot_types = ['morai_msgs/VehicleSpec']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       response

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoraiVehicleSpecSrvResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.response is None:
        self.response = morai_msgs.msg.VehicleSpec()
    else:
      self.response = morai_msgs.msg.VehicleSpec()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3dfd2f().pack(_x.response.size.x, _x.response.size.y, _x.response.size.z, _x.response.wheel_base, _x.response.max_steering, _x.response.overhang, _x.response.rear_overhang))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.response is None:
        self.response = morai_msgs.msg.VehicleSpec()
      end = 0
      _x = self
      start = end
      end += 44
      (_x.response.size.x, _x.response.size.y, _x.response.size.z, _x.response.wheel_base, _x.response.max_steering, _x.response.overhang, _x.response.rear_overhang,) = _get_struct_3dfd2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3dfd2f().pack(_x.response.size.x, _x.response.size.y, _x.response.size.z, _x.response.wheel_base, _x.response.max_steering, _x.response.overhang, _x.response.rear_overhang))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.response is None:
        self.response = morai_msgs.msg.VehicleSpec()
      end = 0
      _x = self
      start = end
      end += 44
      (_x.response.size.x, _x.response.size.y, _x.response.size.z, _x.response.wheel_base, _x.response.max_steering, _x.response.overhang, _x.response.rear_overhang,) = _get_struct_3dfd2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3dfd2f = None
def _get_struct_3dfd2f():
    global _struct_3dfd2f
    if _struct_3dfd2f is None:
        _struct_3dfd2f = struct.Struct("<3dfd2f")
    return _struct_3dfd2f
class MoraiVehicleSpecSrv(object):
  _type          = 'morai_msgs/MoraiVehicleSpecSrv'
  _md5sum = '00e763d6a7313045c7676986f63a8fd8'
  _request_class  = MoraiVehicleSpecSrvRequest
  _response_class = MoraiVehicleSpecSrvResponse