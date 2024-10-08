#include "system.h"
#include<QDateTime>
#include <qdebug.h>
System::System(QObject *parent)
    : QObject{parent}
    ,m_lock(true)
    ,m_dTemp(32)
    ,m_userName("hamza")
{
    m_currentTime= new QTimer(this);
    m_currentTime->setInterval(400);
    m_currentTime->setSingleShot(true);
    connect(m_currentTime,&QTimer::timeout,this,&System::currentTimeTimout);

    currentTimeTimout();
}

bool System::lock() const
{
    return m_lock;
}

void System::setlock(bool newLock)
{
    if (m_lock == newLock)
        return;
    m_lock = newLock;
    emit lockChanged();
}

int System::dTemp() const
{
    return m_dTemp;
}


void System::setdTemp(int newDTemp)
{
    if (m_dTemp == newDTemp)
        return;
    m_dTemp = newDTemp;
    emit dTempChanged();
}

QString System::userName() const
{
    return m_userName;
}

void System::setuserName(const QString &newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    emit userNameChanged();
}

QString System::time() const
{
    return m_time;
}

void System::settime(const QString &newTime)
{
    if (m_time == newTime)
        return;
    m_time = newTime;
    emit timeChanged();
}

void System::currentTimeTimout()
{
    QDateTime dateTime;
    QString time = dateTime.currentDateTime().toString("h:m ap");

    settime(time);
    m_currentTime->start();
}
