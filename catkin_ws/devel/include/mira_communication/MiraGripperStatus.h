// Generated by gencpp from file mira_communication/MiraGripperStatus.msg
// DO NOT EDIT!


#ifndef MIRA_COMMUNICATION_MESSAGE_MIRAGRIPPERSTATUS_H
#define MIRA_COMMUNICATION_MESSAGE_MIRAGRIPPERSTATUS_H


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
struct MiraGripperStatus_
{
  typedef MiraGripperStatus_<ContainerAllocator> Type;

  MiraGripperStatus_()
    : Status(false)  {
    }
  MiraGripperStatus_(const ContainerAllocator& _alloc)
    : Status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _Status_type;
  _Status_type Status;





  typedef boost::shared_ptr< ::mira_communication::MiraGripperStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mira_communication::MiraGripperStatus_<ContainerAllocator> const> ConstPtr;

}; // struct MiraGripperStatus_

typedef ::mira_communication::MiraGripperStatus_<std::allocator<void> > MiraGripperStatus;

typedef boost::shared_ptr< ::mira_communication::MiraGripperStatus > MiraGripperStatusPtr;
typedef boost::shared_ptr< ::mira_communication::MiraGripperStatus const> MiraGripperStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mira_communication::MiraGripperStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mira_communication::MiraGripperStatus_<ContainerAllocator1> & lhs, const ::mira_communication::MiraGripperStatus_<ContainerAllocator2> & rhs)
{
  return lhs.Status == rhs.Status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mira_communication::MiraGripperStatus_<ContainerAllocator1> & lhs, const ::mira_communication::MiraGripperStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mira_communication

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mira_communication::MiraGripperStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mira_communication::MiraGripperStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mira_communication::MiraGripperStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "513e93c68ef2f26ff494445b932bb052";
  }

  static const char* value(const ::mira_communication::MiraGripperStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x513e93c68ef2f26fULL;
  static const uint64_t static_value2 = 0xf494445b932bb052ULL;
};

template<class ContainerAllocator>
struct DataType< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mira_communication/MiraGripperStatus";
  }

  static const char* value(const ::mira_communication::MiraGripperStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool Status\n"
;
  }

  static const char* value(const ::mira_communication::MiraGripperStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MiraGripperStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mira_communication::MiraGripperStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mira_communication::MiraGripperStatus_<ContainerAllocator>& v)
  {
    s << indent << "Status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIRA_COMMUNICATION_MESSAGE_MIRAGRIPPERSTATUS_H
