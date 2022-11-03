// Generated by gencpp from file mira_communication/MiraSetAngles.msg
// DO NOT EDIT!


#ifndef MIRA_COMMUNICATION_MESSAGE_MIRASETANGLES_H
#define MIRA_COMMUNICATION_MESSAGE_MIRASETANGLES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mira_communication
{
template <class ContainerAllocator>
struct MiraSetAngles_
{
  typedef MiraSetAngles_<ContainerAllocator> Type;

  MiraSetAngles_()
    : joint_1(0.0)
    , joint_2(0.0)
    , joint_3(0.0)
    , speed(0)  {
    }
  MiraSetAngles_(const ContainerAllocator& _alloc)
    : joint_1(0.0)
    , joint_2(0.0)
    , joint_3(0.0)
    , speed(0)  {
  (void)_alloc;
    }



   typedef float _joint_1_type;
  _joint_1_type joint_1;

   typedef float _joint_2_type;
  _joint_2_type joint_2;

   typedef float _joint_3_type;
  _joint_3_type joint_3;

   typedef int8_t _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::mira_communication::MiraSetAngles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mira_communication::MiraSetAngles_<ContainerAllocator> const> ConstPtr;

}; // struct MiraSetAngles_

typedef ::mira_communication::MiraSetAngles_<std::allocator<void> > MiraSetAngles;

typedef boost::shared_ptr< ::mira_communication::MiraSetAngles > MiraSetAnglesPtr;
typedef boost::shared_ptr< ::mira_communication::MiraSetAngles const> MiraSetAnglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mira_communication::MiraSetAngles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mira_communication::MiraSetAngles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mira_communication::MiraSetAngles_<ContainerAllocator1> & lhs, const ::mira_communication::MiraSetAngles_<ContainerAllocator2> & rhs)
{
  return lhs.joint_1 == rhs.joint_1 &&
    lhs.joint_2 == rhs.joint_2 &&
    lhs.joint_3 == rhs.joint_3 &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mira_communication::MiraSetAngles_<ContainerAllocator1> & lhs, const ::mira_communication::MiraSetAngles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mira_communication

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mira_communication::MiraSetAngles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mira_communication::MiraSetAngles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mira_communication::MiraSetAngles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b7cbcf987da0274e83b80d1c7e70028";
  }

  static const char* value(const ::mira_communication::MiraSetAngles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b7cbcf987da0274ULL;
  static const uint64_t static_value2 = 0xe83b80d1c7e70028ULL;
};

template<class ContainerAllocator>
struct DataType< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mira_communication/MiraSetAngles";
  }

  static const char* value(const ::mira_communication::MiraSetAngles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 joint_1\n"
"float32 joint_2\n"
"float32 joint_3\n"
"\n"
"int8 speed\n"
;
  }

  static const char* value(const ::mira_communication::MiraSetAngles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_1);
      stream.next(m.joint_2);
      stream.next(m.joint_3);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MiraSetAngles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mira_communication::MiraSetAngles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mira_communication::MiraSetAngles_<ContainerAllocator>& v)
  {
    s << indent << "joint_1: ";
    Printer<float>::stream(s, indent + "  ", v.joint_1);
    s << indent << "joint_2: ";
    Printer<float>::stream(s, indent + "  ", v.joint_2);
    s << indent << "joint_3: ";
    Printer<float>::stream(s, indent + "  ", v.joint_3);
    s << indent << "speed: ";
    Printer<int8_t>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIRA_COMMUNICATION_MESSAGE_MIRASETANGLES_H