#ifndef CALLBACKA_H
#define CALLBACKA_H
#include <QDebug>
#include "callbackb.h"
class callBackA
{

public:
    callBackA();
    void acall();
    void callB();

    callBackB call;

};



#endif // CALLBACKA_H
