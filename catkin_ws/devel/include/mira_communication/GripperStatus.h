// Generated by gencpp from file mira_communication/GripperStatus.msg
// DO NOT EDIT!


#ifndef MIRA_COMMUNICATION_MESSAGE_GRIPPERSTATUS_H
#define MIRA_COMMUNICATION_MESSAGE_GRIPPERSTATUS_H

#include <ros/service_traits.h>


#include <mira_communication/GripperStatusRequest.h>
#include <mira_communication/GripperStatusResponse.h>


namespace mira_communication
{

struct GripperStatus
{

typedef GripperStatusRequest Request;
typedef GripperStatusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GripperStatus
} // namespace mira_communication


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mira_communication::GripperStatus > {
  static const char* value()
  {
    return "c57caedf4aafd0b59704d2f3b16e0f35";
  }

  static const char* value(const ::mira_communication::GripperStatus&) { return value(); }
};

template<>
struct DataType< ::mira_communication::GripperStatus > {
  static const char* value()
  {
    return "mira_communication/GripperStatus";
  }

  static const char* value(const ::mira_communication::GripperStatus&) { return value(); }
};


// service_traits::MD5Sum< ::mira_communication::GripperStatusRequest> should match
// service_traits::MD5Sum< ::mira_communication::GripperStatus >
template<>
struct MD5Sum< ::mira_communication::GripperStatusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mira_communication::GripperStatus >::value();
  }
  static const char* value(const ::mira_communication::GripperStatusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mira_communication::GripperStatusRequest> should match
// service_traits::DataType< ::mira_communication::GripperStatus >
template<>
struct DataType< ::mira_communication::GripperStatusRequest>
{
  static const char* value()
  {
    return DataType< ::mira_communication::GripperStatus >::value();
  }
  static const char* value(const ::mira_communication::GripperStatusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mira_communication::GripperStatusResponse> should match
// service_traits::MD5Sum< ::mira_communication::GripperStatus >
template<>
struct MD5Sum< ::mira_communication::GripperStatusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mira_communication::GripperStatus >::value();
  }
  static const char* value(const ::mira_communication::GripperStatusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mira_communication::GripperStatusResponse> should match
// service_traits::DataType< ::mira_communication::GripperStatus >
template<>
struct DataType< ::mira_communication::GripperStatusResponse>
{
  static const char* value()
  {
    return DataType< ::mira_communication::GripperStatus >::value();
  }
  static const char* value(const ::mira_communication::GripperStatusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MIRA_COMMUNICATION_MESSAGE_GRIPPERSTATUS_H