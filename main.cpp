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
#include "dbuss_dfeet.h"




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

    emit a.valueChanged();

    dBuss_DFeet conect;

    //a.callBackCounterA();
    //b.callBackCounterB();

    delete obj;

    //conectar a la interfaz del servivio de ejemplo
//    QCoreApplication acore(argc, argv);
//   QDBusConnection connection = QDBusConnection::systemBus();
//    QDBusInterface interface("org.freedesktop.NetworkManager","/org/freedesktop/NetworkManager","org.freedesktop.NetworkManager", connection);

//    //enviar un mensaje al metodo doSomething del servicio

//    QDBusMessage response = interface.call("GetLogging");

//    //verificar si; se produce algun error

//    if(response.type() == QDBusMessage::ErrorMessage){
//        qCritical()<<"Error al llamar al metodo : " << response.errorMessage();
//    }
//    else
//    {
//        //procesa la respuesta
//        QVariant result =response.arguments();
//        qDebug()<< "Resultado :" << result;
//    }

    return app.exec();
}
