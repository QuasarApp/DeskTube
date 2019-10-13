#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <quasarapp.h>
#include <QQmlContext>
#include <QTranslator>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QCoreApplication::setOrganizationName("QuasarApp");
    QCoreApplication::setApplicationName("DeskTube");

    QGuiApplication app(argc, argv);

    QuasarAppUtils::Settings *seting = QuasarAppUtils::Settings::get();

    QQmlApplicationEngine engine;

    QTranslator tr;


    QuasarAppUtils::Locales::initLocale(":/lang", "ru", &app, &tr);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    auto ctx = engine.rootContext();

    ctx->setContextProperty("settings", seting);
    engine.load(url);



    int ret = app.exec();

    seting->sync();

    return ret;
}
