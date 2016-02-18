#ifndef cliconect
#define cliconect
#include <iostream>
#include "Packet.hpp"
class CLIENT_CONNECT_DataPacket : public Packet
{
public:
    const static int ID=0x09;
    int64_t clientID=0;
    int64_t sendPing=0;
    bool useSecurity=false;
    CLIENT_CONNECT_DataPacket() {};
    void encode()
    {
        Packet::encode();
        //TODO

    }
    void decode()
    {
        Packet::decode();
        clientID=getLong();
        sendPing=getLong();
        useSecurity=getByte()>0;
    }

protected:

private:
};
#endif
