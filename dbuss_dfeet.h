#ifndef DBUSS_DFEET_H
#define DBUSS_DFEET_H
#include <QDBusConnection>
#include <QDBusObjectPath>
#include <QObject>

class dBuss_DFeet : public QObject
{
    Q_OBJECT
    Q_CLASSINFO("D-Bus Interface", "com.BCN3D.dbuss_sfeet")

public:
    dBuss_DFeet(QObject *parent = nullptr);
    ~dBuss_DFeet();

public slots:
    QDBusObjectPath getObject();

private:
    QDBusObjectPath m_objectPath;
};

#endif // DBUSS_DFEET_H
