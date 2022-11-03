// Generated by gencpp from file mypalletizer_communication/GetAngles.msg
// DO NOT EDIT!


#ifndef MYPALLETIZER_COMMUNICATION_MESSAGE_GETANGLES_H
#define MYPALLETIZER_COMMUNICATION_MESSAGE_GETANGLES_H

#include <ros/service_traits.h>


#include <mypalletizer_communication/GetAnglesRequest.h>
#include <mypalletizer_communication/GetAnglesResponse.h>


namespace mypalletizer_communication
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
} // namespace mypalletizer_communication


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mypalletizer_communication::GetAngles > {
  static const char* value()
  {
    return "ab9c47c63b70f349cc6b6b06b71d7bcf";
  }

  static const char* value(const ::mypalletizer_communication::GetAngles&) { return value(); }
};

template<>
struct DataType< ::mypalletizer_communication::GetAngles > {
  static const char* value()
  {
    return "mypalletizer_communication/GetAngles";
  }

  static const char* value(const ::mypalletizer_communication::GetAngles&) { return value(); }
};


// service_traits::MD5Sum< ::mypalletizer_communication::GetAnglesRequest> should match
// service_traits::MD5Sum< ::mypalletizer_communication::GetAngles >
template<>
struct MD5Sum< ::mypalletizer_communication::GetAnglesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mypalletizer_communication::GetAngles >::value();
  }
  static const char* value(const ::mypalletizer_communication::GetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mypalletizer_communication::GetAnglesRequest> should match
// service_traits::DataType< ::mypalletizer_communication::GetAngles >
template<>
struct DataType< ::mypalletizer_communication::GetAnglesRequest>
{
  static const char* value()
  {
    return DataType< ::mypalletizer_communication::GetAngles >::value();
  }
  static const char* value(const ::mypalletizer_communication::GetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mypalletizer_communication::GetAnglesResponse> should match
// service_traits::MD5Sum< ::mypalletizer_communication::GetAngles >
template<>
struct MD5Sum< ::mypalletizer_communication::GetAnglesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mypalletizer_communication::GetAngles >::value();
  }
  static const char* value(const ::mypalletizer_communication::GetAnglesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mypalletizer_communication::GetAnglesResponse> should match
// service_traits::DataType< ::mypalletizer_communication::GetAngles >
template<>
struct DataType< ::mypalletizer_communication::GetAnglesResponse>
{
  static const char* value()
  {
    return DataType< ::mypalletizer_communication::GetAngles >::value();
  }
  static const char* value(const ::mypalletizer_communication::GetAnglesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MYPALLETIZER_COMMUNICATION_MESSAGE_GETANGLES_H