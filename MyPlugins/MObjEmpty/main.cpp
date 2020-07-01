/* --------------------- */
/* (C) 2020 madoodia.com */
/* --------------------- */

#include <OP/OP_Operator.h>
#include <OP/OP_OperatorTable.h>
#include <UT/UT_DSOVersion.h> // Avoiding Version information error

#include "MObjEmpty.h"

using namespace MHSamples;

void newObjectOperator(OP_OperatorTable *table)
{
  table->addOperator(new OP_Operator(
      "MObjEmpty", "MObjEmpty",
      MObjEmpty::myConstructor,
      MObjEmpty::buildTemplatePair(0),
      MObjEmpty::theChildTableName,
      0, 1, nullptr));
}