#ifndef serverhandshake
#define serverhandshake
#include <iostream>
#include "Packet.hpp"
class SERVER_HANDSHAKE_DataPacket : public Packet
{
public:
    const static int ID=0x10;
    std::string address;
    unsigned int port=0;
    /* std::string systemAddresses[]={ //TODO
     "127.0.0.1",
     "0.0.0.0",
     "0.0.0.0",
     "0.0.0.0",
     "0.0.0.0",
     "0.0.0.0",
     "0.0.0.0",
     "0.0.0.0",
     "0.0.0.0",
     "0.0.0.0"
    };*/
    int64_t sendPing=0;
    int64_t sendPong=0;
    SERVER_HANDSHAKE_DataPacket() {};
    void encode()
    {
        Packet::encode();
        buffer+=ID;
        putAddress(address,port,4);
        putShort(0);
        putAddress("127.0.0.1",0,4);
        for(int i=0; i<9; ++i)
        {
            putAddress("0.0.0.0",0,4);
        }
        putLong(sendPing);
        putLong(sendPong);


    }
    void decode()
    {
        Packet::decode();

    }

protected:

private:
};
#endif
