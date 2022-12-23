#include "callbacka.h"
#include "callbackb.h"


callBackA::callBackA(QString verdura) : m_hortaliza(verdura)
{
    //call.timer();

}

void callBackA::acall()
{
    //qDebug("holaaaa\n" "sisi");
    qDebug() << "Funciona el CallBack" << m_hortaliza;
}
