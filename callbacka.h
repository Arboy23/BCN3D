#ifndef CALLBACKA_H
#define CALLBACKA_H

#include <QDebug>

class callBackA
{

public:
    callBackA(QString verdura = "");
    void acall();
    void callB();

    //callBackB call;

private:
    QString m_hortaliza;

};



#endif // CALLBACKA_H
