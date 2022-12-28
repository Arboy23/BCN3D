#ifndef CALLBACKB_H
#define CALLBACKB_H
#include "callbacka.h"
#include <QDebug>
class callBackB
{
public:
    callBackB(callBackA* a);
    ~callBackB();
    void timer();
    void bconOBJ();
    void connectcallb();

};

#endif // CALLBACKB_H
