/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   zApiCalcMulHandler.h
 * Author: Thieu Vo
 *
 * Created on March 10, 2017, 9:27 AM
 */

#ifndef ZAPICALCMULHANDLER_H
#define ZAPICALCMULHANDLER_H

#include "ZApiCalculatorHandler.h"


class ZApiCalcMulHandler : public ZApiCalculatorHandler
{ 
public:
    ZApiCalcMulHandler();
    ZApiCalcMulHandler(const ZApiCalcMulHandler& orig);
    virtual ~ZApiCalcMulHandler();
    void handleRequest(Poco::Net::HTTPServerRequest& request, Poco::Net::HTTPServerResponse& response) override;

private:

};

#endif /* ZAPICALCMULHANDLER_H */

