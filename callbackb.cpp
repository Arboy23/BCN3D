#include "callbackb.h"
#include "callbacka.h"


callBackB::callBackB(callBackA* a)
{
    instance = a;
}

void callBackB::timer()
{
    instance->acall();
    //a.acall();

    //un timer tiene que llamar acall de la classe A
}
