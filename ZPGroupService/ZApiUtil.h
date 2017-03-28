/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ZApiUtil.h
 * Author: danhcc
 *
 * Created on October 13, 2016, 4:10 PM
 */

#ifndef ZAPIUTIL_H
#define ZAPIUTIL_H


#include <iostream>

#include <Poco/Net/HTTPServerRequest.h>

class ZApiUtil
{
public:
    static std::string GetResponseString(uint32_t u32Code, const std::string& strMessage);
    // static uint64_t GetExpireTime(uint64_t u64Deadline);
    static bool GetIntegerValueFromJSonString(const std::string& strJSonData, const std::string& strKey, int32_t& n32Value);
    static bool GetJsonDataFromRequest(Poco::Net::HTTPServerRequest& request, std::string& strJsonData, std::string& strErrMsg);
    static std::string HandleResult(uint32_t u32Code, const std::string& strMessage, bool bIsError);
};

#endif /* ZAPIUTIL_H */

