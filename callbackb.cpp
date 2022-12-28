#include "callbackb.h"
#include "callbacka.h"

    callBackA* instance;
callBackB::callBackB(callBackA* a)
{
    instance = a;
}

void callBackB::timer()
{
    instance->acall();
    //instance->aconOBJ();
    //a.acall();

    //un timer tiene que llamar acall de la classe A
}


void callBackB::bconOBJ()
{
    qDebug() << "estoy en el B";
}

void callBackB::connectcallb()
{
    instance->aconOBJ();
}

callBackB::~callBackB()
{
    //delete instance;
}


