#ifndef HVACHANDLER_H
#define HVACHANDLER_H

#include <QObject>
#include<QString>

class HVACHandler : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int configureTemperature READ configureTemperature WRITE setConfigureTemperature NOTIFY configureTemperatureChanged FINAL)
public:
    explicit HVACHandler(QObject *parent = nullptr);

    int configureTemperature() const;
    void setconfigureTemperature(int newConfigureTemperature);

    Q_INVOKABLE void incrementTemperature(const int & val);

signals:
    void configureTemperatureChanged();
private:
    int m_configureTemperature;
};

#endif // HVACHANDLER_H
