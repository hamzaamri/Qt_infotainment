#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>
#include <QTimer>

class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool lock READ lock WRITE setLock NOTIFY lockChanged FINAL)
    Q_PROPERTY(int dTemp READ dTemp WRITE setDTemp NOTIFY dTempChanged FINAL)
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged FINAL)
    Q_PROPERTY(QString time READ time WRITE setTime NOTIFY timeChanged FINAL)

public:
    explicit System(QObject *parent = nullptr);

    bool lock() const;
    void setlock(bool newLock);

    int dTemp() const;
    void setdTemp(int newDTemp);

    QString userName() const;
    void setuserName(const QString &newUserName);

    QString time() const;
    void settime(const QString &newTime);

    void currentTimeTimout();

signals:
    void lockChanged();
    void dTempChanged();

    void userNameChanged();

    void timeChanged();

private:
    bool m_lock;
    int m_dTemp;
    QString m_userName;
    QString m_time;
    QTimer *m_currentTime;
};

#endif // SYSTEM_H
