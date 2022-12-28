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

    callBackA* a;
    callBackB* b;

    void callBackCounterA();
    void callBackCounterB();
signals:
    void valueChanged(int newValue);
};

#endif // COUNTER_H
