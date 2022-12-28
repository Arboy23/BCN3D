#include "counter.h"
#include <QDebug>

Counter::Counter()
{
}


void Counter::callBackCounterA()
{

    a->connectcall();

   //_caA->acall();
}

void Counter::callBackCounterB()
{
   b->connectcallb();
}
