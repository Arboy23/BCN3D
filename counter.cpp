#include "counter.h"
#include <QDebug>

Counter::Counter()
{
   // _caA = a;
}
void Counter::setValue(int value)
{
    if (value != m_value) {
        m_value = value;
        qDebug() << "puntos: " << m_value;
        emit valueChanged(value);
    }
}

void Counter::callBackCounter()
{
    qDebug() << "h" ;
   //_caA->acall();
}
