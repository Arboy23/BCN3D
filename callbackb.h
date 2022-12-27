#ifndef CALLBACKB_H
#define CALLBACKB_H
#include "callbacka.h"
#include <QDebug>
class callBackB
{
public:
    callBackA* instance;
    callBackB(callBackA* a);
    void timer();

};

#endif // CALLBACKB_H
