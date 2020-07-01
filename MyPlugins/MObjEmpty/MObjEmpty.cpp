/* --------------------- */
/* (C) 2020 madoodia.com */
/* --------------------- */

#include <OP/OP_OperatorTable.h>

#include "MObjEmpty.h"

using namespace MHSamples;

MObjEmpty::MObjEmpty(OP_Network *network,
                     const char *name,
                     OP_Operator *op)
    : OBJ_Geometry(network, name, op)
{
}

MObjEmpty::~MObjEmpty() {}

OP_Node *MObjEmpty::myConstructor(OP_Network *network, const char *name, OP_Operator *op)
{
  return new MObjEmpty(network, name, op);
}

static PRM_Template templateList[] = {
    PRM_Template()};

OP_TemplatePair *MObjEmpty::buildTemplatePair(OP_TemplatePair *prevstuff)
{
  OP_TemplatePair *empty, *old;
  empty = new OP_TemplatePair(templateList, prevstuff);
  old = new OP_TemplatePair(OBJ_Geometry::getTemplateList(OBJ_PARMS_PLAIN), empty);
  return old;
}

OP_ERROR MObjEmpty::cookMyObj(OP_Context &context)
{
  OP_ERROR err;
  err = OBJ_Geometry::cookMyObj(context);
  return err;
}
