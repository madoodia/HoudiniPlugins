/* --------------------- */
/* (C) 2020 madoodia.com */
/* --------------------- */

#include <OBJ/OBJ_Geometry.h>
#include <OP/OP_Operator.h>
#include <OP/OP_OperatorTable.h>
#include <UT/UT_DSOVersion.h> // Avoiding Version information error

namespace MHSamples
{
// Madoodia Houdini Samples
}

void newObjectOperator(OP_OperatorTable *table)
{
  table->addOperator(
      new OP_Operator("MObjFirst", "MObjFirst",
                      OBJ_Geometry::myConstructor,
                      OBJ_Geometry::getTemplateList(OBJ_PARMS_PLAIN),
                      OBJ_Geometry::theChildTableName,
                      0, 1, 0));
}
