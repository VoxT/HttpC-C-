/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ZApiMTGCalculatorHandler.cpp
 * Author: Thieu Vo
 * 
 * Created on March 7, 2017, 4:17 PM
 */

#include "ZApiCalculatorHandler.h"

ZApiCalculatorHandler::ZApiCalculatorHandler(){}

ZApiCalculatorHandler::~ZApiCalculatorHandler(){}

int32_t ZApiCalculatorHandler::Add(int32_t nNumber1, int32_t nNumber2)
{
    return (nNumber1 + nNumber2);
}

int32_t ZApiCalculatorHandler::Sub(int32_t nMinuend, int32_t nSubtrahend)
{
    return (nMinuend - nSubtrahend);
}

int32_t ZApiCalculatorHandler::Mul(int32_t nNumber1, int32_t nNumber2)
{
    return (nNumber1 * nNumber2);
}

float ZApiCalculatorHandler::Div(int32_t nDividend, int32_t nDivisor)
{
    if (!nDivisor)
        return 0;
    return ((float) nDividend / (float) nDivisor);
}