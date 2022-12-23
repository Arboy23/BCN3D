#include "callbackb.h"
#include "callbacka.h"


callBackA a;
callBackB::callBackB()
{

}

void callBackB::timer()
{
    a.acall();
    //un timer tiene que llamar acall de la classe A
}
