#include "callbackb.h"
#include "callbacka.h"



callBackB::callBackB()
{

}

void callBackB::timer()
{
    callBackA a ;
    //a.acall();

    //un timer tiene que llamar acall de la classe A
}
