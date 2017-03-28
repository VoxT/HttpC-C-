/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   zApiCalcMulHandler.cpp
 * Author: Thieu Vo
 * 
 * Created on March 10, 2017, 9:27 AM
 */

#include "ZApiCalcMulHandler.h"

ZApiCalcMulHandler::ZApiCalcMulHandler()
{
}

ZApiCalcMulHandler::ZApiCalcMulHandler(const ZApiCalcMulHandler& orig)
{
}

ZApiCalcMulHandler::~ZApiCalcMulHandler()
{
}

void ZApiCalcMulHandler::handleRequest(Poco::Net::HTTPServerRequest& request, Poco::Net::HTTPServerResponse& response)
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
    
    respStream << ZApiUtil::HandleResult(API_RES_SUCCESS, "mul = " + std::to_string(Mul(nNumber1, nNumber2)), false);
}
