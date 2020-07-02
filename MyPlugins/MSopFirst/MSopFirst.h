/* --------------------- */
/* (C) 2020 madoodia.com */
/* --------------------- */

#ifndef MSOPFIRST_H
#define MSOPFIRST_H

#include <OP/OP_Network.h>
#include <OP/OP_Node.h>
#include <OP/OP_Operator.h>
#include <SOP/SOP_Node.h>

namespace MHSamples
{

class MSopFirst : public SOP_Node
{
public:
  MSopFirst(OP_Network *network, const char *name, OP_Operator *op);
  virtual ~MSopFirst();

  static OP_Node *myConstructor(OP_Network *network, const char *name, OP_Operator *op);

  static PRM_Template myTemplateList[]; // List of parameters

protected:
  virtual OP_ERROR cookMySop(OP_Context &context);
};

} // namespace MHSamples

#endif // MSOPFIRST_H
