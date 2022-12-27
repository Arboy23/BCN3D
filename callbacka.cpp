#include "callbacka.h"
#include "callbackb.h"

    callBackB* _callB;
callBackA::callBackA(QString verdura) : m_hortaliza(verdura)
{

   _callB = new callBackB(this);
    _callB->timer();

    //Counter* a;
    //a = new Counter(this);
    //delete a;

}

void callBackA::acall()
{
    //qDebug("holaaaa\n" "sisi");
    qDebug() << "Funciona el CallBack" << m_hortaliza;
}

void callBackA::connectcall()
{
  _callB->bconOBJ();
}


void callBackA::aconOBJ()
{
    qDebug() << "estoy en el A";
}


callBackA::~callBackA()
{
delete _callB;
}
