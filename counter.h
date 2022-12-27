#ifndef COUNTER_H
#define COUNTER_H
#include <QObject>
#include "callbacka.h"
#include "callbackb.h"

class Counter : public QObject
{
    Q_OBJECT

public:
    Counter();
    Counter* cou;

    callBackA* a;
    callBackB* b;

    void callBackCounterA();
    void callBackCounterB();

};

#endif // COUNTER_H
