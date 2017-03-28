/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ZApiCalcDivHandler.h
 * Author: Thieu Vo
 *
 * Created on March 9, 2017, 10:11 AM
 */

#ifndef ZAPICALCDIVHANDLER_H
#define ZAPICALCDIVHANDLER_H

#include "ZApiCalculatorHandler.h"


class ZApiCalcDivHandler : public ZApiCalculatorHandler
{
public:
    void handleRequest(Poco::Net::HTTPServerRequest& request, Poco::Net::HTTPServerResponse& response);

private:

};

#endif /* ZAPICALCDIVHANDLER_H */

