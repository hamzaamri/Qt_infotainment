#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <optionscontroller/system.h>
#include<optionscontroller/hvachandler.h>
#include <QQmlContext>
int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QGuiApplication app(argc, argv);

    System m_systemHandler;
    HVACHandler m_driverHVACHandler;
    HVACHandler m_passengerHVACHandler;
    //qmlRegisterType<HVACHandler>("hamza",1,0,"HVACHandler");


    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("driverHVAC", &m_driverHVACHandler);
    //engine.rootContext()->setContextProperty("passengerHVAC", &m_passengerHVACHandler);
    const QUrl url(QStringLiteral("qrc:/Cluster/Main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    QQmlContext * context( engine.rootContext() );
    context->setContextProperty("systemHandler",&m_systemHandler);
    context->setContextProperty("driverHVAC",&m_driverHVACHandler);
    context->setContextProperty("passengerHVAC",&m_passengerHVACHandler);
    return app.exec();
}
