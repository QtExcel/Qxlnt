//
// main.cpp 
//
// xlnt https://github.com/tfussell/xlnt
// Qxlnt https://github.com/j2doll/Qxlnt
//
// MIT License
//

#include <iostream> // STL
#include <xlnt/xlnt.hpp> // xlnt 
#include <QCoreApplication> // Qt

int main(int argc, char **argv) 
{     
    QCoreApplication a(argc, argv); // It is a Qt code.

    xlnt::workbook wb; // It's a xlnt code. Let's mix them together!
    xlnt::worksheet ws = wb.active_sheet();
    ws.cell("A1").value(5);
    ws.cell("B2").value("string data");
    ws.cell("C3").formula("=RAND()");
    ws.merge_cells("C3:C4");
    ws.freeze_panes("B2");
    wb.save("example.xlsx");
	
    return 0; 
}

