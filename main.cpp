#include <QCoreApplication>
#include <QDebug>
int main(int argc, char *argv[]){
    QCoreApplication a(argc, argv);
    qDebug() << "HelloWorld";
    return 0;
    //return a.exec();
}
