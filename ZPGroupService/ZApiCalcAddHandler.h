/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ZApiAdd2NumberHandler.h
 * Author: Thieu Vo
 *
 * Created on March 8, 2017, 10:51 AM
 */

#ifndef ZAPIADDHANDLER_H
#define ZAPIADDHANDLER_H

#include "ZApiCalculatorHandler.h"


class ZApiCalcAddHandler : public ZApiCalculatorHandler
{
public:
    
    void handleRequest(Poco::Net::HTTPServerRequest& request, Poco::Net::HTTPServerResponse& response);
    
private:

};

#endif /* ZAPIADD2NUMBERHANDLER_H */

