#include "languageshadowingcenter.h"
#include "lscepisodepreparation.h"
#include "lscepisodepreparationsm.h"
#include <QQmlEngine>
#include <QQmlComponent>
#include <QFile>
#include <QQmlError>
#include <QDebug>
#include <QQmlContext>



LanguageShadowingCenter::LanguageShadowingCenter(QWidget *parent) :
    QObject(parent),
    m_exampleObject(new ExampleObject),
    m_engine(new QQmlEngine),
    m_component (new QQmlComponent(m_engine))

{

    m_engine->rootContext()->setContextProperty("languageShadowingCenter",this);
    m_engine->rootContext()->setContextProperty("exampleObject",m_exampleObject);


    QFile file("../../../src/LanguageShadowingCenter/LanguageShadowingCenter.qml");
    if(file.exists()){
        m_component->loadUrl(QUrl::fromLocalFile("../../../src/LanguageShadowingCenter/LanguageShadowingCenter.qml"));
        m_component->create();
        for (auto e: m_component->errors()){
               qDebug()<<e.description()<<endl;
        }

    }

    /*    m_LSCEpisodePreparation = new LSCEpisodePreparation;

    m_LSCEpisodePreparationSM = new LSCEpisodePreparationSM(static_cast<QPointer<LSCEpisodePreparationActsProps>>(m_LSCEpisodePreparation));
    m_LSCEpisodePreparation->show();
*/
}

LanguageShadowingCenter::~LanguageShadowingCenter()
{

}

