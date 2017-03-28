/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: root
 *
 * Created on March 7, 2017, 2:15 PM
 */

#include <cstdlib>
#include <Poco/NumberFormatter.h>
#include <Poco/Net/HTTPClientSession.h>
#include <Poco/Net/HTTPResponse.h>
#include <Poco/Net/HTTPRequest.h>
#include <Poco/JSON/Parser.h>
#include <Poco/JSON/Object.h>
#include <Poco/StreamCopier.h>
#include <Poco/URI.h>

using namespace std;

std::string SendPostRequest(const std::string& strURI, const std::string& strBody)
{
    if (strURI.empty()) {
        return "";
    }

    std::string strResp = "";
    try {
        Poco::URI uri(strURI);
        Poco::Net::HTTPClientSession session(uri.getHost(), uri.getPort());

        std::string strPath(uri.getPathAndQuery());
        if (strPath.empty())
            strPath = "/";

        // send request
        Poco::Net::HTTPRequest req(Poco::Net::HTTPRequest::HTTP_POST, strPath, Poco::Net::HTTPMessage::HTTP_1_1);
        req.setContentLength(strBody.length());
        session.sendRequest(req) << strBody;

        // get response
        Poco::Net::HTTPResponse resp;
        std::istream& rs = session.receiveResponse(resp);

        Poco::StreamCopier::copyToString(rs, strResp);
    }
    catch (Poco::Exception &ex) {
    }
    catch (std::exception &e) {
    }

    return strResp;
}

std::string CreateJsonStringData(int32_t nNumber1, int32_t nNumber2)
{
    std::string strJsonData = "";
    
    try
    {
        Poco::JSON::Object jsonObject;
        jsonObject.set("number1", nNumber1);
        jsonObject.set("number2", nNumber2);

        std::stringstream ostr;
        Poco::JSON::Stringifier::stringify(jsonObject, ostr);
        
        strJsonData = ostr.str();
    }
    catch (Poco::Exception &ex)
    {
        
    }
    
    return strJsonData;
}

int main(int argc, char** argv) {
    
    std::string strJsonData = CreateJsonStringData(17658, 2);
    if(strJsonData.empty())
        return 0;
    
    std::string strResp = SendPostRequest("http://localhost:9999/group/api/div", "{ \"number1\":1, \"number2\":2 }");
    std::cout << strResp << endl;
    return 0;
}


