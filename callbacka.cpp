#include "callbacka.h"



callBackA::callBackA()

{
    call.timer();

}

void callBackA::acall()
{
    qDebug("holaaaa\n" "sisi");
    qDebug() << "Funciona el CallBack";
}
