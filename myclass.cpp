#include "myclass.h"

MyClass::MyClass(QObject *parent)
    : QObject{parent}
{


}

QString MyClass::funcionDebug()
{
    return "funciona";
}
