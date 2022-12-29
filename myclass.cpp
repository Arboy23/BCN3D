#include "myclass.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>
#include <QObject>
#include <iostream>
#include <unistd.h>
#include <netdb.h>
#include <iostream>
#include <ifaddrs.h>
#include <arpa/inet.h>
#include <QDBusConnection>


using namespace std;
MyClass::MyClass(QObject *parent)
    : QObject{parent}
{
}

QString MyClass::funcionDebug()
{
    return "funciona";
}

QString MyClass::returnIP()
{
    char hostname[1024];
    gethostname(hostname, 1024);

    hostent *host_entry = gethostbyname(hostname);
    in_addr *address = (in_addr*) host_entry->h_addr_list[0];
    return inet_ntoa(*address);
}
