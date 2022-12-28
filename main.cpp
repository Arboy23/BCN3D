#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>
#include <QObject>
#include <QCoreApplication>
#include <QDBusConnection>
#include <QDBusMessage>
#include <QDBusInterface>
#include "myclass.h"
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
                    &b, &Counter::callBackCounterB);

    a.callBackCounterA();
    b.callBackCounterB();

    delete obj;

    //conectar a la interfaz del servivio de ejemplo

    QCoreApplication acore(argc, argv);
   QDBusConnection connection = QDBusConnection::systemBus();
    QDBusInterface interface("org.freedesktop.DBus","/org/freedesktop/DBus","org.freedesktop.DBus", connection);

    //enviar un mensaje al metodo doSomething del servicio

    QDBusMessage response = interface.call("doSomething", QVariant(42));

    //verificar si se produce algun error

    if(response.type() == QDBusMessage::ErrorMessage){
        qCritical()<<"Error al llamar al metodo dosomething: " << response.errorMessage();
    }
    else
    {
        //procesa la respuesta
        QVariant result =response.arguments().first();
        qDebug()<< "Resultado de doSomething:" << result;
    }








    return app.exec();

}

