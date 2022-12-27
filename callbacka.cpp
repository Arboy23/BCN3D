#include "callbacka.h"
#include "callbackb.h"
#include "counter.h"


callBackA::callBackA(QString verdura) : m_hortaliza(verdura)
{
    callBackB* _callB;
   _callB = new callBackB(this);
    _callB->timer();

    delete _callB;

    //Counter* a;
    //a = new Counter(this);
    //delete a;

}

void callBackA::acall()
{
    //qDebug("holaaaa\n" "sisi");
    qDebug() << "Funciona el CallBack" << m_hortaliza;
}
