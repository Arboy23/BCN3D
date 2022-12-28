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

public slots:
    void callBackCounterB();

signals:
    void valueChanged();
};

#endif // COUNTER_H
