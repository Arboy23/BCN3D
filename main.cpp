#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>
#include <QObject>
#include "myclass.h"
#include "callbacka.h"
#include "counter.h"



int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/main.qml"));

    engine.rootContext()->setContextProperty("obj",new MyClass);

    engine.load(url);

    callBackA* obj = new callBackA("rabo");


    Counter a,b;
    QObject::connect(&a, &Counter::valueChanged,
                     &b, &Counter::setValue);

        a.setValue(12);
        b.setValue(48);

    delete obj;

    return app.exec();

}

