#include "hvachandler.h"

HVACHandler::HVACHandler(QObject *parent)
    : QObject{parent}
    ,m_configureTemperature( 25 )
{

}

int HVACHandler::configureTemperature() const
{
    return m_configureTemperature;
}

void HVACHandler::setconfigureTemperature(int newConfigureTemperature)
{
    if (m_configureTemperature == newConfigureTemperature)
        return;
    m_configureTemperature = newConfigureTemperature;
    emit configureTemperatureChanged();
}

void HVACHandler::incrementTemperature(const int &val)
{
    int newTemperature = m_configureTemperature + val;
    setconfigureTemperature(newTemperature);
}
