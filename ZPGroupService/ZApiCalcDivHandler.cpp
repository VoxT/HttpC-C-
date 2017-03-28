/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ZApiCalcDivHandler.cpp
 * Author: Thieu Vo
 * 
 * Created on March 9, 2017, 10:11 AM
 */

#include "ZApiCalcDivHandler.h"


void ZApiCalcDivHandler::handleRequest(Poco::Net::HTTPServerRequest& request, Poco::Net::HTTPServerResponse& response)
{
    std::ostream& respStream = response.send();
    
    std::string strJsonData, strErrMsg;
    if(!ZApiUtil::GetJsonDataFromRequest(request, strJsonData, strErrMsg))
    {
        respStream << strErrMsg;
        return;
    }

    // Get value from json
    int32_t nNumber1 = 0, nNumber2 = 0;
    if (!ZApiUtil::GetIntegerValueFromJSonString(strJsonData, "number1", nNumber1))
    {
        respStream << "Get Integer Value From JSonString failed";
        return;
    }
    if (!ZApiUtil::GetIntegerValueFromJSonString(strJsonData, "number2", nNumber2))
    {
        respStream << "Get Integer Value From JSonString failed";
        return;
    }
    
    respStream << ZApiUtil::HandleResult(API_RES_SUCCESS, "div = " + std::to_string(Div(nNumber1, nNumber2)), false);
}
