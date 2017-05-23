/******************************************************
Author: resat.gafarli@gmail.com
File: ldafmediator.h
Date: 5/19/2017
License: GPL-3.0
*******************************************************/
#ifndef LDAFMEDIATOR_H
#define LDAFMEDIATOR_H

#include "ldafbasic.h"

class LDAFMediator : public LDAFBasic
{
    Q_OBJECT
public:
    explicit LDAFMediator(QObject *parent = 0, QPointer<LDAFCommandListProcessor> commandListProcessor=nullptr);
private:
    void setURLMessage(QUrl);
    void setJsonMessage(QJsonObject);
};

#endif // LDAFMEDIATOR_H
