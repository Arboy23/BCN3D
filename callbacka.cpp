#include "callbacka.h"



callBackA::callBackA(QString verdura) : m_hortaliza(verdura)
{
    call.timer(callBackA a =new callBackA());

}

void callBackA::acall()
{
    //qDebug("holaaaa\n" "sisi");
    qDebug() << "Funciona el CallBack" << m_hortaliza;
}

