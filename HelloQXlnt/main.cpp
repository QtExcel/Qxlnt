//
// xlnt https://github.com/tfussell/xlnt
// Qxlnt https://github.com/j2doll/Qxlnt
//
// MIT License
//
// main.cpp

#include <iostream> 

#include <xlnt/xlnt.hpp> 

#include <QCoreApplication>

int main(int argc, char **argv) 
{     
    QCoreApplication a(argc, argv); // It is a Qt code.

    xlnt::workbook wb;
    xlnt::worksheet ws = wb.active_sheet();
    ws.cell("A1").value(5);
    ws.cell("B2").value("string data");
    ws.cell("C3").formula("=RAND()");
    ws.merge_cells("C3:C4");
    ws.freeze_panes("B2");
    wb.save("example.xlsx");
	
	return 0; // return a.exec();
}

