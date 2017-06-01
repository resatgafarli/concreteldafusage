include(LDAFConcreteUsageSolution.pri)
CONFIG += debug_and_release
TEMPLATE = subdirs
LDAF = $$PROJECT_ROOT_DIRECTORY/ldaf/src/LDAFSolution.pro
SUBDIRS += \
    $$LDAF \ 	
    LDAFConcreteUsageTests \
    LDAFConcreteUsage


    
