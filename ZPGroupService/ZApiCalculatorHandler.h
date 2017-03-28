/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ZApiMTGCalculatorHandler.h
 * Author: Thieu Vo
 *
 * Created on March 7, 2017, 4:17 PM
 */

#ifndef ZAPICALCULATORHANDLER_H
#define ZAPICALCULATORHANDLER_H

#include <Poco/Net/HTTPRequestHandler.h>
#include <Poco/Net/HTTPServerRequest.h>
#include <Poco/Net/HTTPServerResponse.h>

#include "ZApiDefine.h"
#include "ZApiUtil.h"
#include "ZLogUtil.h"

class ZApiCalculatorHandler : public Poco::Net::HTTPRequestHandler
{
public:
    ZApiCalculatorHandler();
    ~ZApiCalculatorHandler();
    virtual void handleRequest(Poco::Net::HTTPServerRequest& request, Poco::Net::HTTPServerResponse& response)
    {
        
    }
    
protected:
    int32_t Add(int32_t nNumber1, int32_t nNumber2);
    int32_t Sub(int32_t nMinuend, int32_t nSubtrahend);;
    int32_t Mul(int32_t nNumber1, int32_t nNumber2);
    float Div(int32_t nDividend, int32_t nDivisor);
       
private:

};

#endif /* ZAPIMTGCALCULATORHANDLER_H */

