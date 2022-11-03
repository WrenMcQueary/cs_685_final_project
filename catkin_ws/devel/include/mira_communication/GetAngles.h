// Generated by gencpp from file mira_communication/GetAngles.msg
// DO NOT EDIT!


#ifndef MIRA_COMMUNICATION_MESSAGE_GETANGLES_H
#define MIRA_COMMUNICATION_MESSAGE_GETANGLES_H

#include <ros/service_traits.h>


#include <mira_communication/GetAnglesRequest.h>
#include <mira_communication/GetAnglesResponse.h>


namespace mira_communication
{

struct GetAngles
{

typedef GetAnglesRequest Request;
typedef GetAnglesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetAngles
} // namespace mira_communication


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mira_communication::GetAngles > {
  static const char* value()
  {
    return "8fb7487773865b96db936ca595817338";
  }

  static const char* value(const ::mira_communication::GetAngles&) { return value(); }
};

template<>
struct DataType< ::mira_communication::GetAngles > {
  static const char* value()
  {
    return "mira_communication/GetAngles";
  }

  static const char* value(const ::mira_communication::GetAngles&) { return value(); }
};


// service_traits::MD5Sum< ::mira_communication::GetAnglesRequest> should match
// service_traits::MD5Sum< ::mira_communication::GetAngles >
template<>
struct MD5Sum< ::mira_communication::GetAnglesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mira_communication::GetAngles >::value();
  }
  static const char* value(const ::mira_communication::GetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mira_communication::GetAnglesRequest> should match
// service_traits::DataType< ::mira_communication::GetAngles >
template<>
struct DataType< ::mira_communication::GetAnglesRequest>
{
  static const char* value()
  {
    return DataType< ::mira_communication::GetAngles >::value();
  }
  static const char* value(const ::mira_communication::GetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mira_communication::GetAnglesResponse> should match
// service_traits::MD5Sum< ::mira_communication::GetAngles >
template<>
struct MD5Sum< ::mira_communication::GetAnglesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mira_communication::GetAngles >::value();
  }
  static const char* value(const ::mira_communication::GetAnglesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mira_communication::GetAnglesResponse> should match
// service_traits::DataType< ::mira_communication::GetAngles >
template<>
struct DataType< ::mira_communication::GetAnglesResponse>
{
  static const char* value()
  {
    return DataType< ::mira_communication::GetAngles >::value();
  }
  static const char* value(const ::mira_communication::GetAnglesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MIRA_COMMUNICATION_MESSAGE_GETANGLES_H