#ifndef COUNTER_H
#define COUNTER_H
#include <QObject>
#include "callbacka.h"

class Counter : public QObject
{
    Q_OBJECT

public:
    Counter();
    int value() const { return m_value; }

public slots:
    void setValue(int value);
    void callBackCounter();

signals:
    void valueChanged(int newValue);

private:
    int m_value;
};

#endif // COUNTER_H
