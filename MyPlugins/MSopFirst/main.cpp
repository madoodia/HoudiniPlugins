/* --------------------- */
/* (C) 2020 madoodia.com */
/* --------------------- */

#include <OP/OP_Operator.h>
#include <OP/OP_OperatorTable.h>
#include <UT/UT_DSOVersion.h> // Avoiding Version information error

#include "MSopFirst.h"

using namespace MHSamples;

void newSopOperator(OP_OperatorTable *table)
{
  table->addOperator(new OP_Operator(
      "MSopFirst",
      "MSopFirst",
      MSopFirst::myConstructor,
      MSopFirst::myTemplateList,
      0,
      1,
      nullptr,
      OP_FLAG_GENERATOR));
}