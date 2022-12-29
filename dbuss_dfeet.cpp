#include "dbuss_dfeet.h"
#include <QObject>
dBuss_DFeet::dBuss_DFeet(QObject *parent) :
    QObject(parent)
{
    // Register the D-Bus service and object
    QDBusConnection connection = QDBusConnection::sessionBus();
    connection.registerService("com.BCN3D.dbuss_sfeet");
    connection.registerObject("/home/aaron/Documentos/BCN3D", this, QDBusConnection::ExportAllSlots);
}

dBuss_DFeet::~dBuss_DFeet()
{
    // Unregister the D-Bus service and object
    QDBusConnection connection = QDBusConnection::sessionBus();
    connection.unregisterService("com.BCN3D.dbuss_sfeet");
    connection.unregisterObject("/home/aaron/Documentos/BCN3D");
}

QDBusObjectPath dBuss_DFeet::getObject()
{
    // Return the object path of the object
    return m_objectPath;
}
