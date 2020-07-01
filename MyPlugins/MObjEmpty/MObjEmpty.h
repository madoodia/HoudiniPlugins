/* --------------------- */
/* (C) 2020 madoodia.com */
/* --------------------- */

#ifndef MOBJEMPTY_H
#define MOBJEMPTY_H

#include <OBJ/OBJ_Geometry.h>
#include <OP/OP_Network.h>
#include <OP/OP_Node.h>
#include <OP/OP_Operator.h>

namespace MHSamples
{

class MObjEmpty : public OBJ_Geometry
{
public:
  MObjEmpty(OP_Network *network, const char *name, OP_Operator *op);
  virtual ~MObjEmpty();

  static OP_Node *myConstructor(OP_Network *network, const char *name, OP_Operator *op);

  static OP_TemplatePair *buildTemplatePair(OP_TemplatePair *prevstuff);

protected:
  virtual OP_ERROR cookMyObj(OP_Context &context);
};

} // namespace MHSamples

#endif // MOBJEMPTY_H
