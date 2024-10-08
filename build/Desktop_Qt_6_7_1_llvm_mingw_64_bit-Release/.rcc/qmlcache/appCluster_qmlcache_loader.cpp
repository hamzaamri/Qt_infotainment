#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>
#include <QtCore/qhash.h>
#include <QtCore/qstring.h>

namespace QmlCacheGeneratedCode {
namespace _0x5f_Cluster_Main_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_BottomBar_BottomBar_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_RightScreen_RightScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_LeftScreen_LeftScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_RightScreen_MapNavigation_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_BottomBar_HVACComp_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_RightScreen_AudioBox_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_RightScreen_TextButton_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_BottomBar_Videopage_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Cluster_ui_RightScreen_Musicpage_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/Main.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_Main_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/BottomBar/BottomBar.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_BottomBar_BottomBar_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/RightScreen/RightScreen.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_RightScreen_RightScreen_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/LeftScreen/LeftScreen.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_LeftScreen_LeftScreen_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/RightScreen/MapNavigation.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_RightScreen_MapNavigation_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/BottomBar/HVACComp.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_BottomBar_HVACComp_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/RightScreen/AudioBox.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_RightScreen_AudioBox_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/RightScreen/TextButton.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_RightScreen_TextButton_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/BottomBar/Videopage.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_BottomBar_Videopage_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Cluster/ui/RightScreen/Musicpage.qml"), &QmlCacheGeneratedCode::_0x5f_Cluster_ui_RightScreen_Musicpage_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.structVersion = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appCluster)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appCluster))
int QT_MANGLE_NAMESPACE(qCleanupResources_qmlcache_appCluster)() {
    return 1;
}
