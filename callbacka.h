#ifndef CALLBACKA_H
#define CALLBACKA_H
#include <QDebug>
class callBackA
{

public:
    callBackA(QString verdura = "");
    ~callBackA();
    void acall();
    void connectcall();
    void aconOBJ();

    //callBackB* _callB;

private:
    QString m_hortaliza;

};



#endif // CALLBACKA_H
