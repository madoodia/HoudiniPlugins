/* --------------------- */
/* (C) 2020 madoodia.com */
/* --------------------- */

#include <OP/OP_OperatorTable.h>
#include <PRM/PRM_Include.h>

#include "MSopFirst.h"

using namespace MHSamples;

MSopFirst::MSopFirst(OP_Network *network,
                     const char *name,
                     OP_Operator *op)
    : SOP_Node(network, name, op)
{
}

MSopFirst::~MSopFirst() {}

OP_Node *MSopFirst::myConstructor(OP_Network *network, const char *name, OP_Operator *op)
{
  return new MSopFirst(network, name, op);
}

static PRM_Default frameDefault(0, "$FF");

static PRM_Name names[] = {
    PRM_Name("str1", "Str1"),
    PRM_Name("str2", "Str2"),
    PRM_Name("str3", "Str3"),
    PRM_Name("scale", "Scale"),
    PRM_Name("ok1", "Ok1"),
    PRM_Name("ok2", "Ok2"),
    PRM_Name("float1", "Float1"),
    PRM_Name("float2", "Float2"),
    PRM_Name("angle", "Angle"),
};

PRM_Template MSopFirst::myTemplateList[] = {
    PRM_Template(PRM_STRING, 1, &names[0], 0),
    PRM_Template(PRM_STRING, 2, &names[1], 0),
    PRM_Template(PRM_STRING, 3, &names[2], 0),
    PRM_Template(PRM_STRING, 1, &PRMgroupName, 0, &SOP_Node::pointGroupMenu,
                 0, 0, SOP_Node::getGroupSelectButton(GA_GROUP_POINT)),
    PRM_Template(PRM_FLT_J, 1, &names[3], PRMzeroDefaults, 0,
                 &PRMscaleRange),
    PRM_Template(PRM_TOGGLE, 1, &names[4]),
    PRM_Template(PRM_TOGGLE, 2, &names[5], PRMoneDefaults),
    PRM_Template(PRM_ORD, 1, &PRMorientName, 0, &PRMplaneMenu),
    PRM_Template(PRM_DIRECTION, 3, &PRMdirectionName, PRMzaxisDefaults),
    PRM_Template(PRM_FLT_J, 1, &names[6], PRMoneDefaults, 0,
                 &PRMscaleRange),
    PRM_Template(PRM_FLT_J, 3, &names[7], PRMnegoneDefaults),
    PRM_Template(PRM_ANGLE, 1, &names[8], PRMangleDefaults),
    PRM_Template(),
};

OP_ERROR MSopFirst::cookMySop(OP_Context &context)
{
  // do nothing
  fpreal time = context.getTime();
  return error();
}
