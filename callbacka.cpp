#include "callbacka.h"
#include "callbackb.h"


callBackA::callBackA(QString verdura) : m_hortaliza(verdura)
{
    callBackB* _callB;
   _callB = new callBackB();
    _callB->timer();

}

void callBackA::acall()
{
    //qDebug("holaaaa\n" "sisi");
    qDebug() << "Funciona el CallBack" << m_hortaliza;
}
