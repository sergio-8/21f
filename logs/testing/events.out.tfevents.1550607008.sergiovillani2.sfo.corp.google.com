       �K"	   ��Abrain.Event:2$�O�M�      ��	n���A"��
t
input/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
1layer_1/weights1/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_1/weights1*
valueB"      *
dtype0*
_output_shapes
:
�
/layer_1/weights1/Initializer/random_uniform/minConst*#
_class
loc:@layer_1/weights1*
valueB
 *�7��*
dtype0*
_output_shapes
: 
�
/layer_1/weights1/Initializer/random_uniform/maxConst*#
_class
loc:@layer_1/weights1*
valueB
 *�7�?*
dtype0*
_output_shapes
: 
�
9layer_1/weights1/Initializer/random_uniform/RandomUniformRandomUniform1layer_1/weights1/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:*

seed *
T0*#
_class
loc:@layer_1/weights1
�
/layer_1/weights1/Initializer/random_uniform/subSub/layer_1/weights1/Initializer/random_uniform/max/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
: 
�
/layer_1/weights1/Initializer/random_uniform/mulMul9layer_1/weights1/Initializer/random_uniform/RandomUniform/layer_1/weights1/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
+layer_1/weights1/Initializer/random_uniformAdd/layer_1/weights1/Initializer/random_uniform/mul/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
layer_1/weights1
VariableV2*#
_class
loc:@layer_1/weights1*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
�
layer_1/weights1/AssignAssignlayer_1/weights1+layer_1/weights1/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
layer_1/weights1/readIdentitylayer_1/weights1*
_output_shapes

:*
T0*#
_class
loc:@layer_1/weights1
�
!layer_1/biases1/Initializer/zerosConst*"
_class
loc:@layer_1/biases1*
valueB*    *
dtype0*
_output_shapes
:
�
layer_1/biases1
VariableV2*"
_class
loc:@layer_1/biases1*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
layer_1/biases1/AssignAssignlayer_1/biases1!layer_1/biases1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_1/biases1
z
layer_1/biases1/readIdentitylayer_1/biases1*
_output_shapes
:*
T0*"
_class
loc:@layer_1/biases1
�
layer_1/MatMulMatMulinput/Placeholderlayer_1/weights1/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
j
layer_1/addAddlayer_1/MatMullayer_1/biases1/read*
T0*'
_output_shapes
:���������
S
layer_1/ReluRelulayer_1/add*
T0*'
_output_shapes
:���������
�
1layer_2/weights2/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_2/weights2*
valueB"      
�
/layer_2/weights2/Initializer/random_uniform/minConst*#
_class
loc:@layer_2/weights2*
valueB
 *׳]�*
dtype0*
_output_shapes
: 
�
/layer_2/weights2/Initializer/random_uniform/maxConst*#
_class
loc:@layer_2/weights2*
valueB
 *׳]?*
dtype0*
_output_shapes
: 
�
9layer_2/weights2/Initializer/random_uniform/RandomUniformRandomUniform1layer_2/weights2/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:*

seed *
T0*#
_class
loc:@layer_2/weights2
�
/layer_2/weights2/Initializer/random_uniform/subSub/layer_2/weights2/Initializer/random_uniform/max/layer_2/weights2/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes
: 
�
/layer_2/weights2/Initializer/random_uniform/mulMul9layer_2/weights2/Initializer/random_uniform/RandomUniform/layer_2/weights2/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
�
+layer_2/weights2/Initializer/random_uniformAdd/layer_2/weights2/Initializer/random_uniform/mul/layer_2/weights2/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
�
layer_2/weights2
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_2/weights2*
	container 
�
layer_2/weights2/AssignAssignlayer_2/weights2+layer_2/weights2/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_2/weights2
�
layer_2/weights2/readIdentitylayer_2/weights2*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
�
!layer_2/biases2/Initializer/zerosConst*"
_class
loc:@layer_2/biases2*
valueB*    *
dtype0*
_output_shapes
:
�
layer_2/biases2
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_2/biases2*
	container 
�
layer_2/biases2/AssignAssignlayer_2/biases2!layer_2/biases2/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
z
layer_2/biases2/readIdentitylayer_2/biases2*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes
:
�
layer_2/MatMulMatMullayer_1/Relulayer_2/weights2/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
j
layer_2/addAddlayer_2/MatMullayer_2/biases2/read*
T0*'
_output_shapes
:���������
S
layer_2/ReluRelulayer_2/add*
T0*'
_output_shapes
:���������
�
1layer_3/weights3/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_3/weights3*
valueB"      *
dtype0*
_output_shapes
:
�
/layer_3/weights3/Initializer/random_uniform/minConst*#
_class
loc:@layer_3/weights3*
valueB
 *׳]�*
dtype0*
_output_shapes
: 
�
/layer_3/weights3/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_3/weights3*
valueB
 *׳]?
�
9layer_3/weights3/Initializer/random_uniform/RandomUniformRandomUniform1layer_3/weights3/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*#
_class
loc:@layer_3/weights3*
seed2 
�
/layer_3/weights3/Initializer/random_uniform/subSub/layer_3/weights3/Initializer/random_uniform/max/layer_3/weights3/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes
: 
�
/layer_3/weights3/Initializer/random_uniform/mulMul9layer_3/weights3/Initializer/random_uniform/RandomUniform/layer_3/weights3/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
+layer_3/weights3/Initializer/random_uniformAdd/layer_3/weights3/Initializer/random_uniform/mul/layer_3/weights3/Initializer/random_uniform/min*
_output_shapes

:*
T0*#
_class
loc:@layer_3/weights3
�
layer_3/weights3
VariableV2*
shared_name *#
_class
loc:@layer_3/weights3*
	container *
shape
:*
dtype0*
_output_shapes

:
�
layer_3/weights3/AssignAssignlayer_3/weights3+layer_3/weights3/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_3/weights3
�
layer_3/weights3/readIdentitylayer_3/weights3*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
!layer_3/biases3/Initializer/zerosConst*"
_class
loc:@layer_3/biases3*
valueB*    *
dtype0*
_output_shapes
:
�
layer_3/biases3
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_3/biases3*
	container *
shape:
�
layer_3/biases3/AssignAssignlayer_3/biases3!layer_3/biases3/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
z
layer_3/biases3/readIdentitylayer_3/biases3*
T0*"
_class
loc:@layer_3/biases3*
_output_shapes
:
�
layer_3/MatMulMatMullayer_2/Relulayer_3/weights3/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
j
layer_3/addAddlayer_3/MatMullayer_3/biases3/read*
T0*'
_output_shapes
:���������
S
layer_3/ReluRelulayer_3/add*
T0*'
_output_shapes
:���������
�
0output/weights4/Initializer/random_uniform/shapeConst*"
_class
loc:@output/weights4*
valueB"      *
dtype0*
_output_shapes
:
�
.output/weights4/Initializer/random_uniform/minConst*"
_class
loc:@output/weights4*
valueB
 *qĜ�*
dtype0*
_output_shapes
: 
�
.output/weights4/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *"
_class
loc:@output/weights4*
valueB
 *qĜ?
�
8output/weights4/Initializer/random_uniform/RandomUniformRandomUniform0output/weights4/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*"
_class
loc:@output/weights4*
seed2 
�
.output/weights4/Initializer/random_uniform/subSub.output/weights4/Initializer/random_uniform/max.output/weights4/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@output/weights4
�
.output/weights4/Initializer/random_uniform/mulMul8output/weights4/Initializer/random_uniform/RandomUniform.output/weights4/Initializer/random_uniform/sub*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
*output/weights4/Initializer/random_uniformAdd.output/weights4/Initializer/random_uniform/mul.output/weights4/Initializer/random_uniform/min*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
output/weights4
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *"
_class
loc:@output/weights4*
	container 
�
output/weights4/AssignAssignoutput/weights4*output/weights4/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
~
output/weights4/readIdentityoutput/weights4*
_output_shapes

:*
T0*"
_class
loc:@output/weights4
�
 output/biases4/Initializer/zerosConst*!
_class
loc:@output/biases4*
valueB*    *
dtype0*
_output_shapes
:
�
output/biases4
VariableV2*!
_class
loc:@output/biases4*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
output/biases4/AssignAssignoutput/biases4 output/biases4/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
w
output/biases4/readIdentityoutput/biases4*
T0*!
_class
loc:@output/biases4*
_output_shapes
:
�
output/MatMulMatMullayer_3/Reluoutput/weights4/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
g

output/addAddoutput/MatMuloutput/biases4/read*'
_output_shapes
:���������*
T0
s
cost/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
{
cost/SquaredDifferenceSquaredDifference
output/addcost/Placeholder*
T0*'
_output_shapes
:���������
[

cost/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
s
	cost/MeanMeancost/SquaredDifference
cost/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
}
,train/gradients/cost/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
&train/gradients/cost/Mean_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/cost/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
z
$train/gradients/cost/Mean_grad/ShapeShapecost/SquaredDifference*
T0*
out_type0*
_output_shapes
:
�
#train/gradients/cost/Mean_grad/TileTile&train/gradients/cost/Mean_grad/Reshape$train/gradients/cost/Mean_grad/Shape*'
_output_shapes
:���������*

Tmultiples0*
T0
|
&train/gradients/cost/Mean_grad/Shape_1Shapecost/SquaredDifference*
T0*
out_type0*
_output_shapes
:
i
&train/gradients/cost/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
n
$train/gradients/cost/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
p
&train/gradients/cost/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
%train/gradients/cost/Mean_grad/Prod_1Prod&train/gradients/cost/Mean_grad/Shape_2&train/gradients/cost/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
j
(train/gradients/cost/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
&train/gradients/cost/Mean_grad/MaximumMaximum%train/gradients/cost/Mean_grad/Prod_1(train/gradients/cost/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
'train/gradients/cost/Mean_grad/floordivFloorDiv#train/gradients/cost/Mean_grad/Prod&train/gradients/cost/Mean_grad/Maximum*
_output_shapes
: *
T0
�
#train/gradients/cost/Mean_grad/CastCast'train/gradients/cost/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
&train/gradients/cost/Mean_grad/truedivRealDiv#train/gradients/cost/Mean_grad/Tile#train/gradients/cost/Mean_grad/Cast*
T0*'
_output_shapes
:���������
{
1train/gradients/cost/SquaredDifference_grad/ShapeShape
output/add*
T0*
out_type0*
_output_shapes
:
�
3train/gradients/cost/SquaredDifference_grad/Shape_1Shapecost/Placeholder*
T0*
out_type0*
_output_shapes
:
�
Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs1train/gradients/cost/SquaredDifference_grad/Shape3train/gradients/cost/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
2train/gradients/cost/SquaredDifference_grad/scalarConst'^train/gradients/cost/Mean_grad/truediv*
dtype0*
_output_shapes
: *
valueB
 *   @
�
/train/gradients/cost/SquaredDifference_grad/mulMul2train/gradients/cost/SquaredDifference_grad/scalar&train/gradients/cost/Mean_grad/truediv*
T0*'
_output_shapes
:���������
�
/train/gradients/cost/SquaredDifference_grad/subSub
output/addcost/Placeholder'^train/gradients/cost/Mean_grad/truediv*'
_output_shapes
:���������*
T0
�
1train/gradients/cost/SquaredDifference_grad/mul_1Mul/train/gradients/cost/SquaredDifference_grad/mul/train/gradients/cost/SquaredDifference_grad/sub*'
_output_shapes
:���������*
T0
�
/train/gradients/cost/SquaredDifference_grad/SumSum1train/gradients/cost/SquaredDifference_grad/mul_1Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
3train/gradients/cost/SquaredDifference_grad/ReshapeReshape/train/gradients/cost/SquaredDifference_grad/Sum1train/gradients/cost/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
1train/gradients/cost/SquaredDifference_grad/Sum_1Sum1train/gradients/cost/SquaredDifference_grad/mul_1Ctrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
5train/gradients/cost/SquaredDifference_grad/Reshape_1Reshape1train/gradients/cost/SquaredDifference_grad/Sum_13train/gradients/cost/SquaredDifference_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
/train/gradients/cost/SquaredDifference_grad/NegNeg5train/gradients/cost/SquaredDifference_grad/Reshape_1*
T0*'
_output_shapes
:���������
�
<train/gradients/cost/SquaredDifference_grad/tuple/group_depsNoOp0^train/gradients/cost/SquaredDifference_grad/Neg4^train/gradients/cost/SquaredDifference_grad/Reshape
�
Dtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependencyIdentity3train/gradients/cost/SquaredDifference_grad/Reshape=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*F
_class<
:8loc:@train/gradients/cost/SquaredDifference_grad/Reshape
�
Ftrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency_1Identity/train/gradients/cost/SquaredDifference_grad/Neg=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*B
_class8
64loc:@train/gradients/cost/SquaredDifference_grad/Neg
r
%train/gradients/output/add_grad/ShapeShapeoutput/MatMul*
_output_shapes
:*
T0*
out_type0
q
'train/gradients/output/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
5train/gradients/output/add_grad/BroadcastGradientArgsBroadcastGradientArgs%train/gradients/output/add_grad/Shape'train/gradients/output/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
#train/gradients/output/add_grad/SumSumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency5train/gradients/output/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
'train/gradients/output/add_grad/ReshapeReshape#train/gradients/output/add_grad/Sum%train/gradients/output/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
%train/gradients/output/add_grad/Sum_1SumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency7train/gradients/output/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
)train/gradients/output/add_grad/Reshape_1Reshape%train/gradients/output/add_grad/Sum_1'train/gradients/output/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
�
0train/gradients/output/add_grad/tuple/group_depsNoOp(^train/gradients/output/add_grad/Reshape*^train/gradients/output/add_grad/Reshape_1
�
8train/gradients/output/add_grad/tuple/control_dependencyIdentity'train/gradients/output/add_grad/Reshape1^train/gradients/output/add_grad/tuple/group_deps*
T0*:
_class0
.,loc:@train/gradients/output/add_grad/Reshape*'
_output_shapes
:���������
�
:train/gradients/output/add_grad/tuple/control_dependency_1Identity)train/gradients/output/add_grad/Reshape_11^train/gradients/output/add_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/output/add_grad/Reshape_1*
_output_shapes
:
�
)train/gradients/output/MatMul_grad/MatMulMatMul8train/gradients/output/add_grad/tuple/control_dependencyoutput/weights4/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
+train/gradients/output/MatMul_grad/MatMul_1MatMullayer_3/Relu8train/gradients/output/add_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
3train/gradients/output/MatMul_grad/tuple/group_depsNoOp*^train/gradients/output/MatMul_grad/MatMul,^train/gradients/output/MatMul_grad/MatMul_1
�
;train/gradients/output/MatMul_grad/tuple/control_dependencyIdentity)train/gradients/output/MatMul_grad/MatMul4^train/gradients/output/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/output/MatMul_grad/MatMul*'
_output_shapes
:���������
�
=train/gradients/output/MatMul_grad/tuple/control_dependency_1Identity+train/gradients/output/MatMul_grad/MatMul_14^train/gradients/output/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@train/gradients/output/MatMul_grad/MatMul_1*
_output_shapes

:
�
*train/gradients/layer_3/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencylayer_3/Relu*'
_output_shapes
:���������*
T0
t
&train/gradients/layer_3/add_grad/ShapeShapelayer_3/MatMul*
T0*
out_type0*
_output_shapes
:
r
(train/gradients/layer_3/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/layer_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_3/add_grad/Shape(train/gradients/layer_3/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_3/add_grad/SumSum*train/gradients/layer_3/Relu_grad/ReluGrad6train/gradients/layer_3/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
(train/gradients/layer_3/add_grad/ReshapeReshape$train/gradients/layer_3/add_grad/Sum&train/gradients/layer_3/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_3/add_grad/Sum_1Sum*train/gradients/layer_3/Relu_grad/ReluGrad8train/gradients/layer_3/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*train/gradients/layer_3/add_grad/Reshape_1Reshape&train/gradients/layer_3/add_grad/Sum_1(train/gradients/layer_3/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
1train/gradients/layer_3/add_grad/tuple/group_depsNoOp)^train/gradients/layer_3/add_grad/Reshape+^train/gradients/layer_3/add_grad/Reshape_1
�
9train/gradients/layer_3/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_3/add_grad/Reshape2^train/gradients/layer_3/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_3/add_grad/Reshape*'
_output_shapes
:���������
�
;train/gradients/layer_3/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_3/add_grad/Reshape_12^train/gradients/layer_3/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_3/add_grad/Reshape_1*
_output_shapes
:
�
*train/gradients/layer_3/MatMul_grad/MatMulMatMul9train/gradients/layer_3/add_grad/tuple/control_dependencylayer_3/weights3/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
,train/gradients/layer_3/MatMul_grad/MatMul_1MatMullayer_2/Relu9train/gradients/layer_3/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
4train/gradients/layer_3/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_3/MatMul_grad/MatMul-^train/gradients/layer_3/MatMul_grad/MatMul_1
�
<train/gradients/layer_3/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_3/MatMul_grad/MatMul5^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_3/MatMul_grad/MatMul*'
_output_shapes
:���������
�
>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_3/MatMul_grad/MatMul_15^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_3/MatMul_grad/MatMul_1*
_output_shapes

:
�
*train/gradients/layer_2/Relu_grad/ReluGradReluGrad<train/gradients/layer_3/MatMul_grad/tuple/control_dependencylayer_2/Relu*
T0*'
_output_shapes
:���������
t
&train/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
T0*
out_type0*
_output_shapes
:
r
(train/gradients/layer_2/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_2/add_grad/Shape(train/gradients/layer_2/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_2/add_grad/SumSum*train/gradients/layer_2/Relu_grad/ReluGrad6train/gradients/layer_2/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(train/gradients/layer_2/add_grad/ReshapeReshape$train/gradients/layer_2/add_grad/Sum&train/gradients/layer_2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_2/add_grad/Sum_1Sum*train/gradients/layer_2/Relu_grad/ReluGrad8train/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
*train/gradients/layer_2/add_grad/Reshape_1Reshape&train/gradients/layer_2/add_grad/Sum_1(train/gradients/layer_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
1train/gradients/layer_2/add_grad/tuple/group_depsNoOp)^train/gradients/layer_2/add_grad/Reshape+^train/gradients/layer_2/add_grad/Reshape_1
�
9train/gradients/layer_2/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_2/add_grad/Reshape2^train/gradients/layer_2/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_2/add_grad/Reshape*'
_output_shapes
:���������
�
;train/gradients/layer_2/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_2/add_grad/Reshape_12^train/gradients/layer_2/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_2/add_grad/Reshape_1*
_output_shapes
:
�
*train/gradients/layer_2/MatMul_grad/MatMulMatMul9train/gradients/layer_2/add_grad/tuple/control_dependencylayer_2/weights2/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
,train/gradients/layer_2/MatMul_grad/MatMul_1MatMullayer_1/Relu9train/gradients/layer_2/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
4train/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_2/MatMul_grad/MatMul-^train/gradients/layer_2/MatMul_grad/MatMul_1
�
<train/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_2/MatMul_grad/MatMul5^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_2/MatMul_grad/MatMul*'
_output_shapes
:���������
�
>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_2/MatMul_grad/MatMul_15^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*?
_class5
31loc:@train/gradients/layer_2/MatMul_grad/MatMul_1
�
*train/gradients/layer_1/Relu_grad/ReluGradReluGrad<train/gradients/layer_2/MatMul_grad/tuple/control_dependencylayer_1/Relu*
T0*'
_output_shapes
:���������
t
&train/gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
T0*
out_type0*
_output_shapes
:
r
(train/gradients/layer_1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_1/add_grad/Shape(train/gradients/layer_1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_1/add_grad/SumSum*train/gradients/layer_1/Relu_grad/ReluGrad6train/gradients/layer_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
(train/gradients/layer_1/add_grad/ReshapeReshape$train/gradients/layer_1/add_grad/Sum&train/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_1/add_grad/Sum_1Sum*train/gradients/layer_1/Relu_grad/ReluGrad8train/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*train/gradients/layer_1/add_grad/Reshape_1Reshape&train/gradients/layer_1/add_grad/Sum_1(train/gradients/layer_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
1train/gradients/layer_1/add_grad/tuple/group_depsNoOp)^train/gradients/layer_1/add_grad/Reshape+^train/gradients/layer_1/add_grad/Reshape_1
�
9train/gradients/layer_1/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_1/add_grad/Reshape2^train/gradients/layer_1/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_1/add_grad/Reshape*'
_output_shapes
:���������
�
;train/gradients/layer_1/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_1/add_grad/Reshape_12^train/gradients/layer_1/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_1/add_grad/Reshape_1*
_output_shapes
:
�
*train/gradients/layer_1/MatMul_grad/MatMulMatMul9train/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/weights1/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
,train/gradients/layer_1/MatMul_grad/MatMul_1MatMulinput/Placeholder9train/gradients/layer_1/add_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
4train/gradients/layer_1/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_1/MatMul_grad/MatMul-^train/gradients/layer_1/MatMul_grad/MatMul_1
�
<train/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_1/MatMul_grad/MatMul5^train/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_1/MatMul_grad/MatMul*'
_output_shapes
:���������
�
>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_1/MatMul_grad/MatMul_15^train/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
train/beta1_power/initial_valueConst*"
_class
loc:@layer_1/biases1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
train/beta1_power
VariableV2*"
_class
loc:@layer_1/biases1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
z
train/beta1_power/readIdentitytrain/beta1_power*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
train/beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *"
_class
loc:@layer_1/biases1*
valueB
 *w�?
�
train/beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *"
_class
loc:@layer_1/biases1
�
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: *
use_locking(
z
train/beta2_power/readIdentitytrain/beta2_power*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
-train/layer_1/weights1/Adam/Initializer/zerosConst*#
_class
loc:@layer_1/weights1*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_1/weights1/Adam
VariableV2*
shared_name *#
_class
loc:@layer_1/weights1*
	container *
shape
:*
dtype0*
_output_shapes

:
�
"train/layer_1/weights1/Adam/AssignAssigntrain/layer_1/weights1/Adam-train/layer_1/weights1/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
 train/layer_1/weights1/Adam/readIdentitytrain/layer_1/weights1/Adam*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
/train/layer_1/weights1/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_1/weights1*
valueB*    
�
train/layer_1/weights1/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_1/weights1*
	container *
shape
:
�
$train/layer_1/weights1/Adam_1/AssignAssigntrain/layer_1/weights1/Adam_1/train/layer_1/weights1/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_1/weights1
�
"train/layer_1/weights1/Adam_1/readIdentitytrain/layer_1/weights1/Adam_1*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
,train/layer_1/biases1/Adam/Initializer/zerosConst*"
_class
loc:@layer_1/biases1*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_1/biases1/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_1/biases1*
	container *
shape:
�
!train/layer_1/biases1/Adam/AssignAssigntrain/layer_1/biases1/Adam,train/layer_1/biases1/Adam/Initializer/zeros*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:*
use_locking(
�
train/layer_1/biases1/Adam/readIdentitytrain/layer_1/biases1/Adam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
:
�
.train/layer_1/biases1/Adam_1/Initializer/zerosConst*"
_class
loc:@layer_1/biases1*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_1/biases1/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_1/biases1*
	container *
shape:
�
#train/layer_1/biases1/Adam_1/AssignAssigntrain/layer_1/biases1/Adam_1.train/layer_1/biases1/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
�
!train/layer_1/biases1/Adam_1/readIdentitytrain/layer_1/biases1/Adam_1*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
:
�
-train/layer_2/weights2/Adam/Initializer/zerosConst*#
_class
loc:@layer_2/weights2*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_2/weights2/Adam
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_2/weights2
�
"train/layer_2/weights2/Adam/AssignAssigntrain/layer_2/weights2/Adam-train/layer_2/weights2/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
 train/layer_2/weights2/Adam/readIdentitytrain/layer_2/weights2/Adam*
_output_shapes

:*
T0*#
_class
loc:@layer_2/weights2
�
/train/layer_2/weights2/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_2/weights2*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_2/weights2/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_2/weights2*
	container *
shape
:
�
$train/layer_2/weights2/Adam_1/AssignAssigntrain/layer_2/weights2/Adam_1/train/layer_2/weights2/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
�
"train/layer_2/weights2/Adam_1/readIdentitytrain/layer_2/weights2/Adam_1*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
�
,train/layer_2/biases2/Adam/Initializer/zerosConst*"
_class
loc:@layer_2/biases2*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_2/biases2/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_2/biases2*
	container 
�
!train/layer_2/biases2/Adam/AssignAssigntrain/layer_2/biases2/Adam,train/layer_2/biases2/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
train/layer_2/biases2/Adam/readIdentitytrain/layer_2/biases2/Adam*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes
:
�
.train/layer_2/biases2/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_2/biases2*
valueB*    
�
train/layer_2/biases2/Adam_1
VariableV2*
shared_name *"
_class
loc:@layer_2/biases2*
	container *
shape:*
dtype0*
_output_shapes
:
�
#train/layer_2/biases2/Adam_1/AssignAssigntrain/layer_2/biases2/Adam_1.train/layer_2/biases2/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
!train/layer_2/biases2/Adam_1/readIdentitytrain/layer_2/biases2/Adam_1*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes
:
�
-train/layer_3/weights3/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_3/weights3*
valueB*    
�
train/layer_3/weights3/Adam
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_3/weights3
�
"train/layer_3/weights3/Adam/AssignAssigntrain/layer_3/weights3/Adam-train/layer_3/weights3/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
�
 train/layer_3/weights3/Adam/readIdentitytrain/layer_3/weights3/Adam*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
/train/layer_3/weights3/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_3/weights3*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_3/weights3/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_3/weights3*
	container *
shape
:
�
$train/layer_3/weights3/Adam_1/AssignAssigntrain/layer_3/weights3/Adam_1/train/layer_3/weights3/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_3/weights3
�
"train/layer_3/weights3/Adam_1/readIdentitytrain/layer_3/weights3/Adam_1*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
,train/layer_3/biases3/Adam/Initializer/zerosConst*"
_class
loc:@layer_3/biases3*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_3/biases3/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_3/biases3*
	container *
shape:
�
!train/layer_3/biases3/Adam/AssignAssigntrain/layer_3/biases3/Adam,train/layer_3/biases3/Adam/Initializer/zeros*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
�
train/layer_3/biases3/Adam/readIdentitytrain/layer_3/biases3/Adam*
T0*"
_class
loc:@layer_3/biases3*
_output_shapes
:
�
.train/layer_3/biases3/Adam_1/Initializer/zerosConst*"
_class
loc:@layer_3/biases3*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_3/biases3/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_3/biases3
�
#train/layer_3/biases3/Adam_1/AssignAssigntrain/layer_3/biases3/Adam_1.train/layer_3/biases3/Adam_1/Initializer/zeros*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
�
!train/layer_3/biases3/Adam_1/readIdentitytrain/layer_3/biases3/Adam_1*
T0*"
_class
loc:@layer_3/biases3*
_output_shapes
:
�
,train/output/weights4/Adam/Initializer/zerosConst*"
_class
loc:@output/weights4*
valueB*    *
dtype0*
_output_shapes

:
�
train/output/weights4/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *"
_class
loc:@output/weights4*
	container *
shape
:
�
!train/output/weights4/Adam/AssignAssigntrain/output/weights4/Adam,train/output/weights4/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*"
_class
loc:@output/weights4
�
train/output/weights4/Adam/readIdentitytrain/output/weights4/Adam*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
.train/output/weights4/Adam_1/Initializer/zerosConst*"
_class
loc:@output/weights4*
valueB*    *
dtype0*
_output_shapes

:
�
train/output/weights4/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *"
_class
loc:@output/weights4*
	container *
shape
:
�
#train/output/weights4/Adam_1/AssignAssigntrain/output/weights4/Adam_1.train/output/weights4/Adam_1/Initializer/zeros*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:*
use_locking(
�
!train/output/weights4/Adam_1/readIdentitytrain/output/weights4/Adam_1*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
+train/output/biases4/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@output/biases4*
valueB*    
�
train/output/biases4/Adam
VariableV2*!
_class
loc:@output/biases4*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
 train/output/biases4/Adam/AssignAssigntrain/output/biases4/Adam+train/output/biases4/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
�
train/output/biases4/Adam/readIdentitytrain/output/biases4/Adam*
T0*!
_class
loc:@output/biases4*
_output_shapes
:
�
-train/output/biases4/Adam_1/Initializer/zerosConst*!
_class
loc:@output/biases4*
valueB*    *
dtype0*
_output_shapes
:
�
train/output/biases4/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@output/biases4*
	container *
shape:
�
"train/output/biases4/Adam_1/AssignAssigntrain/output/biases4/Adam_1-train/output/biases4/Adam_1/Initializer/zeros*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:*
use_locking(
�
 train/output/biases4/Adam_1/readIdentitytrain/output/biases4/Adam_1*
T0*!
_class
loc:@output/biases4*
_output_shapes
:
]
train/Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
U
train/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
U
train/Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w�?
W
train/Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
,train/Adam/update_layer_1/weights1/ApplyAdam	ApplyAdamlayer_1/weights1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_1/weights1*
use_nesterov( *
_output_shapes

:
�
+train/Adam/update_layer_1/biases1/ApplyAdam	ApplyAdamlayer_1/biases1train/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_1/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@layer_1/biases1
�
,train/Adam/update_layer_2/weights2/ApplyAdam	ApplyAdamlayer_2/weights2train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@layer_2/weights2*
use_nesterov( *
_output_shapes

:*
use_locking( 
�
+train/Adam/update_layer_2/biases2/ApplyAdam	ApplyAdamlayer_2/biases2train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@layer_2/biases2*
use_nesterov( *
_output_shapes
:
�
,train/Adam/update_layer_3/weights3/ApplyAdam	ApplyAdamlayer_3/weights3train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_3/weights3*
use_nesterov( *
_output_shapes

:
�
+train/Adam/update_layer_3/biases3/ApplyAdam	ApplyAdamlayer_3/biases3train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_3/add_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@layer_3/biases3*
use_nesterov( *
_output_shapes
:
�
+train/Adam/update_output/weights4/ApplyAdam	ApplyAdamoutput/weights4train/output/weights4/Adamtrain/output/weights4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/output/MatMul_grad/tuple/control_dependency_1*
T0*"
_class
loc:@output/weights4*
use_nesterov( *
_output_shapes

:*
use_locking( 
�
*train/Adam/update_output/biases4/ApplyAdam	ApplyAdamoutput/biases4train/output/biases4/Adamtrain/output/biases4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon:train/gradients/output/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*!
_class
loc:@output/biases4
�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam*
_output_shapes
: *
T0*"
_class
loc:@layer_1/biases1
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: *
use_locking( 
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: *
use_locking( 
�

train/AdamNoOp^train/Adam/Assign^train/Adam/Assign_1,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam
n
logging/current_cost/tagsConst*%
valueB Blogging/current_cost*
dtype0*
_output_shapes
: 
l
logging/current_costScalarSummarylogging/current_cost/tags	cost/Mean*
T0*
_output_shapes
: 
a
logging/Merge/MergeSummaryMergeSummarylogging/current_cost*
N*
_output_shapes
: 
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Blayer_1/biases1Blayer_1/weights1Blayer_2/biases2Blayer_2/weights2Blayer_3/biases3Blayer_3/weights3Boutput/biases4Boutput/weights4Btrain/beta1_powerBtrain/beta2_powerBtrain/layer_1/biases1/AdamBtrain/layer_1/biases1/Adam_1Btrain/layer_1/weights1/AdamBtrain/layer_1/weights1/Adam_1Btrain/layer_2/biases2/AdamBtrain/layer_2/biases2/Adam_1Btrain/layer_2/weights2/AdamBtrain/layer_2/weights2/Adam_1Btrain/layer_3/biases3/AdamBtrain/layer_3/biases3/Adam_1Btrain/layer_3/weights3/AdamBtrain/layer_3/weights3/Adam_1Btrain/output/biases4/AdamBtrain/output/biases4/Adam_1Btrain/output/weights4/AdamBtrain/output/weights4/Adam_1
�
save/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_sliceslayer_1/biases1layer_1/weights1layer_2/biases2layer_2/weights2layer_3/biases3layer_3/weights3output/biases4output/weights4train/beta1_powertrain/beta2_powertrain/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/output/biases4/Adamtrain/output/biases4/Adam_1train/output/weights4/Adamtrain/output/weights4/Adam_1*(
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*�
value�B�Blayer_1/biases1Blayer_1/weights1Blayer_2/biases2Blayer_2/weights2Blayer_3/biases3Blayer_3/weights3Boutput/biases4Boutput/weights4Btrain/beta1_powerBtrain/beta2_powerBtrain/layer_1/biases1/AdamBtrain/layer_1/biases1/Adam_1Btrain/layer_1/weights1/AdamBtrain/layer_1/weights1/Adam_1Btrain/layer_2/biases2/AdamBtrain/layer_2/biases2/Adam_1Btrain/layer_2/weights2/AdamBtrain/layer_2/weights2/Adam_1Btrain/layer_3/biases3/AdamBtrain/layer_3/biases3/Adam_1Btrain/layer_3/weights3/AdamBtrain/layer_3/weights3/Adam_1Btrain/output/biases4/AdamBtrain/output/biases4/Adam_1Btrain/output/weights4/AdamBtrain/output/weights4/Adam_1
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
�
save/AssignAssignlayer_1/biases1save/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
�
save/Assign_1Assignlayer_1/weights1save/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
save/Assign_2Assignlayer_2/biases2save/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
save/Assign_3Assignlayer_2/weights2save/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
save/Assign_4Assignlayer_3/biases3save/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
�
save/Assign_5Assignlayer_3/weights3save/RestoreV2:5*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_3/weights3
�
save/Assign_6Assignoutput/biases4save/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
�
save/Assign_7Assignoutput/weights4save/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
�
save/Assign_8Assigntrain/beta1_powersave/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*"
_class
loc:@layer_1/biases1
�
save/Assign_9Assigntrain/beta2_powersave/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
�
save/Assign_10Assigntrain/layer_1/biases1/Adamsave/RestoreV2:10*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_11Assigntrain/layer_1/biases1/Adam_1save/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_1/biases1
�
save/Assign_12Assigntrain/layer_1/weights1/Adamsave/RestoreV2:12*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_13Assigntrain/layer_1/weights1/Adam_1save/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
save/Assign_14Assigntrain/layer_2/biases2/Adamsave/RestoreV2:14*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
save/Assign_15Assigntrain/layer_2/biases2/Adam_1save/RestoreV2:15*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
save/Assign_16Assigntrain/layer_2/weights2/Adamsave/RestoreV2:16*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_2/weights2
�
save/Assign_17Assigntrain/layer_2/weights2/Adam_1save/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
save/Assign_18Assigntrain/layer_3/biases3/Adamsave/RestoreV2:18*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_3/biases3
�
save/Assign_19Assigntrain/layer_3/biases3/Adam_1save/RestoreV2:19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_3/biases3
�
save/Assign_20Assigntrain/layer_3/weights3/Adamsave/RestoreV2:20*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_21Assigntrain/layer_3/weights3/Adam_1save/RestoreV2:21*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
�
save/Assign_22Assigntrain/output/biases4/Adamsave/RestoreV2:22*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
�
save/Assign_23Assigntrain/output/biases4/Adam_1save/RestoreV2:23*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
�
save/Assign_24Assigntrain/output/weights4/Adamsave/RestoreV2:24*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
�
save/Assign_25Assigntrain/output/weights4/Adam_1save/RestoreV2:25*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
�
initNoOp^layer_1/biases1/Assign^layer_1/weights1/Assign^layer_2/biases2/Assign^layer_2/weights2/Assign^layer_3/biases3/Assign^layer_3/weights3/Assign^output/biases4/Assign^output/weights4/Assign^train/beta1_power/Assign^train/beta2_power/Assign"^train/layer_1/biases1/Adam/Assign$^train/layer_1/biases1/Adam_1/Assign#^train/layer_1/weights1/Adam/Assign%^train/layer_1/weights1/Adam_1/Assign"^train/layer_2/biases2/Adam/Assign$^train/layer_2/biases2/Adam_1/Assign#^train/layer_2/weights2/Adam/Assign%^train/layer_2/weights2/Adam_1/Assign"^train/layer_3/biases3/Adam/Assign$^train/layer_3/biases3/Adam_1/Assign#^train/layer_3/weights3/Adam/Assign%^train/layer_3/weights3/Adam_1/Assign!^train/output/biases4/Adam/Assign#^train/output/biases4/Adam_1/Assign"^train/output/weights4/Adam/Assign$^train/output/weights4/Adam_1/Assign">�Z��     ��d]	߯��AJ܉
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.12.02v1.12.0-0-ga6d8ffae09��
t
input/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
1layer_1/weights1/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_1/weights1*
valueB"      *
dtype0*
_output_shapes
:
�
/layer_1/weights1/Initializer/random_uniform/minConst*#
_class
loc:@layer_1/weights1*
valueB
 *�7��*
dtype0*
_output_shapes
: 
�
/layer_1/weights1/Initializer/random_uniform/maxConst*#
_class
loc:@layer_1/weights1*
valueB
 *�7�?*
dtype0*
_output_shapes
: 
�
9layer_1/weights1/Initializer/random_uniform/RandomUniformRandomUniform1layer_1/weights1/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:*

seed *
T0*#
_class
loc:@layer_1/weights1
�
/layer_1/weights1/Initializer/random_uniform/subSub/layer_1/weights1/Initializer/random_uniform/max/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
: 
�
/layer_1/weights1/Initializer/random_uniform/mulMul9layer_1/weights1/Initializer/random_uniform/RandomUniform/layer_1/weights1/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
+layer_1/weights1/Initializer/random_uniformAdd/layer_1/weights1/Initializer/random_uniform/mul/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
layer_1/weights1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_1/weights1*
	container *
shape
:
�
layer_1/weights1/AssignAssignlayer_1/weights1+layer_1/weights1/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_1/weights1
�
layer_1/weights1/readIdentitylayer_1/weights1*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
!layer_1/biases1/Initializer/zerosConst*"
_class
loc:@layer_1/biases1*
valueB*    *
dtype0*
_output_shapes
:
�
layer_1/biases1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_1/biases1*
	container *
shape:
�
layer_1/biases1/AssignAssignlayer_1/biases1!layer_1/biases1/Initializer/zeros*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:*
use_locking(
z
layer_1/biases1/readIdentitylayer_1/biases1*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
:
�
layer_1/MatMulMatMulinput/Placeholderlayer_1/weights1/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
j
layer_1/addAddlayer_1/MatMullayer_1/biases1/read*
T0*'
_output_shapes
:���������
S
layer_1/ReluRelulayer_1/add*
T0*'
_output_shapes
:���������
�
1layer_2/weights2/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_2/weights2*
valueB"      *
dtype0*
_output_shapes
:
�
/layer_2/weights2/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_2/weights2*
valueB
 *׳]�
�
/layer_2/weights2/Initializer/random_uniform/maxConst*#
_class
loc:@layer_2/weights2*
valueB
 *׳]?*
dtype0*
_output_shapes
: 
�
9layer_2/weights2/Initializer/random_uniform/RandomUniformRandomUniform1layer_2/weights2/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*#
_class
loc:@layer_2/weights2*
seed2 
�
/layer_2/weights2/Initializer/random_uniform/subSub/layer_2/weights2/Initializer/random_uniform/max/layer_2/weights2/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes
: 
�
/layer_2/weights2/Initializer/random_uniform/mulMul9layer_2/weights2/Initializer/random_uniform/RandomUniform/layer_2/weights2/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
�
+layer_2/weights2/Initializer/random_uniformAdd/layer_2/weights2/Initializer/random_uniform/mul/layer_2/weights2/Initializer/random_uniform/min*
_output_shapes

:*
T0*#
_class
loc:@layer_2/weights2
�
layer_2/weights2
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_2/weights2*
	container *
shape
:
�
layer_2/weights2/AssignAssignlayer_2/weights2+layer_2/weights2/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_2/weights2
�
layer_2/weights2/readIdentitylayer_2/weights2*
_output_shapes

:*
T0*#
_class
loc:@layer_2/weights2
�
!layer_2/biases2/Initializer/zerosConst*"
_class
loc:@layer_2/biases2*
valueB*    *
dtype0*
_output_shapes
:
�
layer_2/biases2
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_2/biases2
�
layer_2/biases2/AssignAssignlayer_2/biases2!layer_2/biases2/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
z
layer_2/biases2/readIdentitylayer_2/biases2*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes
:
�
layer_2/MatMulMatMullayer_1/Relulayer_2/weights2/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
j
layer_2/addAddlayer_2/MatMullayer_2/biases2/read*'
_output_shapes
:���������*
T0
S
layer_2/ReluRelulayer_2/add*
T0*'
_output_shapes
:���������
�
1layer_3/weights3/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_3/weights3*
valueB"      *
dtype0*
_output_shapes
:
�
/layer_3/weights3/Initializer/random_uniform/minConst*#
_class
loc:@layer_3/weights3*
valueB
 *׳]�*
dtype0*
_output_shapes
: 
�
/layer_3/weights3/Initializer/random_uniform/maxConst*#
_class
loc:@layer_3/weights3*
valueB
 *׳]?*
dtype0*
_output_shapes
: 
�
9layer_3/weights3/Initializer/random_uniform/RandomUniformRandomUniform1layer_3/weights3/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*#
_class
loc:@layer_3/weights3*
seed2 
�
/layer_3/weights3/Initializer/random_uniform/subSub/layer_3/weights3/Initializer/random_uniform/max/layer_3/weights3/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_3/weights3
�
/layer_3/weights3/Initializer/random_uniform/mulMul9layer_3/weights3/Initializer/random_uniform/RandomUniform/layer_3/weights3/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
+layer_3/weights3/Initializer/random_uniformAdd/layer_3/weights3/Initializer/random_uniform/mul/layer_3/weights3/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
layer_3/weights3
VariableV2*#
_class
loc:@layer_3/weights3*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
�
layer_3/weights3/AssignAssignlayer_3/weights3+layer_3/weights3/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
�
layer_3/weights3/readIdentitylayer_3/weights3*
_output_shapes

:*
T0*#
_class
loc:@layer_3/weights3
�
!layer_3/biases3/Initializer/zerosConst*"
_class
loc:@layer_3/biases3*
valueB*    *
dtype0*
_output_shapes
:
�
layer_3/biases3
VariableV2*
shared_name *"
_class
loc:@layer_3/biases3*
	container *
shape:*
dtype0*
_output_shapes
:
�
layer_3/biases3/AssignAssignlayer_3/biases3!layer_3/biases3/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
z
layer_3/biases3/readIdentitylayer_3/biases3*
_output_shapes
:*
T0*"
_class
loc:@layer_3/biases3
�
layer_3/MatMulMatMullayer_2/Relulayer_3/weights3/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
j
layer_3/addAddlayer_3/MatMullayer_3/biases3/read*
T0*'
_output_shapes
:���������
S
layer_3/ReluRelulayer_3/add*
T0*'
_output_shapes
:���������
�
0output/weights4/Initializer/random_uniform/shapeConst*"
_class
loc:@output/weights4*
valueB"      *
dtype0*
_output_shapes
:
�
.output/weights4/Initializer/random_uniform/minConst*"
_class
loc:@output/weights4*
valueB
 *qĜ�*
dtype0*
_output_shapes
: 
�
.output/weights4/Initializer/random_uniform/maxConst*"
_class
loc:@output/weights4*
valueB
 *qĜ?*
dtype0*
_output_shapes
: 
�
8output/weights4/Initializer/random_uniform/RandomUniformRandomUniform0output/weights4/Initializer/random_uniform/shape*
T0*"
_class
loc:@output/weights4*
seed2 *
dtype0*
_output_shapes

:*

seed 
�
.output/weights4/Initializer/random_uniform/subSub.output/weights4/Initializer/random_uniform/max.output/weights4/Initializer/random_uniform/min*
T0*"
_class
loc:@output/weights4*
_output_shapes
: 
�
.output/weights4/Initializer/random_uniform/mulMul8output/weights4/Initializer/random_uniform/RandomUniform.output/weights4/Initializer/random_uniform/sub*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
*output/weights4/Initializer/random_uniformAdd.output/weights4/Initializer/random_uniform/mul.output/weights4/Initializer/random_uniform/min*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
output/weights4
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *"
_class
loc:@output/weights4*
	container 
�
output/weights4/AssignAssignoutput/weights4*output/weights4/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
~
output/weights4/readIdentityoutput/weights4*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
 output/biases4/Initializer/zerosConst*!
_class
loc:@output/biases4*
valueB*    *
dtype0*
_output_shapes
:
�
output/biases4
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@output/biases4*
	container *
shape:
�
output/biases4/AssignAssignoutput/biases4 output/biases4/Initializer/zeros*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:*
use_locking(
w
output/biases4/readIdentityoutput/biases4*
_output_shapes
:*
T0*!
_class
loc:@output/biases4
�
output/MatMulMatMullayer_3/Reluoutput/weights4/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
g

output/addAddoutput/MatMuloutput/biases4/read*
T0*'
_output_shapes
:���������
s
cost/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
{
cost/SquaredDifferenceSquaredDifference
output/addcost/Placeholder*
T0*'
_output_shapes
:���������
[

cost/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
s
	cost/MeanMeancost/SquaredDifference
cost/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
}
,train/gradients/cost/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
&train/gradients/cost/Mean_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/cost/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
z
$train/gradients/cost/Mean_grad/ShapeShapecost/SquaredDifference*
T0*
out_type0*
_output_shapes
:
�
#train/gradients/cost/Mean_grad/TileTile&train/gradients/cost/Mean_grad/Reshape$train/gradients/cost/Mean_grad/Shape*
T0*'
_output_shapes
:���������*

Tmultiples0
|
&train/gradients/cost/Mean_grad/Shape_1Shapecost/SquaredDifference*
T0*
out_type0*
_output_shapes
:
i
&train/gradients/cost/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
n
$train/gradients/cost/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
p
&train/gradients/cost/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
%train/gradients/cost/Mean_grad/Prod_1Prod&train/gradients/cost/Mean_grad/Shape_2&train/gradients/cost/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
j
(train/gradients/cost/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
&train/gradients/cost/Mean_grad/MaximumMaximum%train/gradients/cost/Mean_grad/Prod_1(train/gradients/cost/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
'train/gradients/cost/Mean_grad/floordivFloorDiv#train/gradients/cost/Mean_grad/Prod&train/gradients/cost/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
#train/gradients/cost/Mean_grad/CastCast'train/gradients/cost/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
�
&train/gradients/cost/Mean_grad/truedivRealDiv#train/gradients/cost/Mean_grad/Tile#train/gradients/cost/Mean_grad/Cast*
T0*'
_output_shapes
:���������
{
1train/gradients/cost/SquaredDifference_grad/ShapeShape
output/add*
T0*
out_type0*
_output_shapes
:
�
3train/gradients/cost/SquaredDifference_grad/Shape_1Shapecost/Placeholder*
_output_shapes
:*
T0*
out_type0
�
Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs1train/gradients/cost/SquaredDifference_grad/Shape3train/gradients/cost/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
2train/gradients/cost/SquaredDifference_grad/scalarConst'^train/gradients/cost/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
/train/gradients/cost/SquaredDifference_grad/mulMul2train/gradients/cost/SquaredDifference_grad/scalar&train/gradients/cost/Mean_grad/truediv*'
_output_shapes
:���������*
T0
�
/train/gradients/cost/SquaredDifference_grad/subSub
output/addcost/Placeholder'^train/gradients/cost/Mean_grad/truediv*
T0*'
_output_shapes
:���������
�
1train/gradients/cost/SquaredDifference_grad/mul_1Mul/train/gradients/cost/SquaredDifference_grad/mul/train/gradients/cost/SquaredDifference_grad/sub*
T0*'
_output_shapes
:���������
�
/train/gradients/cost/SquaredDifference_grad/SumSum1train/gradients/cost/SquaredDifference_grad/mul_1Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
3train/gradients/cost/SquaredDifference_grad/ReshapeReshape/train/gradients/cost/SquaredDifference_grad/Sum1train/gradients/cost/SquaredDifference_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
1train/gradients/cost/SquaredDifference_grad/Sum_1Sum1train/gradients/cost/SquaredDifference_grad/mul_1Ctrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
5train/gradients/cost/SquaredDifference_grad/Reshape_1Reshape1train/gradients/cost/SquaredDifference_grad/Sum_13train/gradients/cost/SquaredDifference_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0
�
/train/gradients/cost/SquaredDifference_grad/NegNeg5train/gradients/cost/SquaredDifference_grad/Reshape_1*
T0*'
_output_shapes
:���������
�
<train/gradients/cost/SquaredDifference_grad/tuple/group_depsNoOp0^train/gradients/cost/SquaredDifference_grad/Neg4^train/gradients/cost/SquaredDifference_grad/Reshape
�
Dtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependencyIdentity3train/gradients/cost/SquaredDifference_grad/Reshape=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/cost/SquaredDifference_grad/Reshape*'
_output_shapes
:���������
�
Ftrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency_1Identity/train/gradients/cost/SquaredDifference_grad/Neg=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/cost/SquaredDifference_grad/Neg*'
_output_shapes
:���������
r
%train/gradients/output/add_grad/ShapeShapeoutput/MatMul*
_output_shapes
:*
T0*
out_type0
q
'train/gradients/output/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
5train/gradients/output/add_grad/BroadcastGradientArgsBroadcastGradientArgs%train/gradients/output/add_grad/Shape'train/gradients/output/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
#train/gradients/output/add_grad/SumSumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency5train/gradients/output/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
'train/gradients/output/add_grad/ReshapeReshape#train/gradients/output/add_grad/Sum%train/gradients/output/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
%train/gradients/output/add_grad/Sum_1SumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency7train/gradients/output/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
)train/gradients/output/add_grad/Reshape_1Reshape%train/gradients/output/add_grad/Sum_1'train/gradients/output/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
0train/gradients/output/add_grad/tuple/group_depsNoOp(^train/gradients/output/add_grad/Reshape*^train/gradients/output/add_grad/Reshape_1
�
8train/gradients/output/add_grad/tuple/control_dependencyIdentity'train/gradients/output/add_grad/Reshape1^train/gradients/output/add_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*:
_class0
.,loc:@train/gradients/output/add_grad/Reshape
�
:train/gradients/output/add_grad/tuple/control_dependency_1Identity)train/gradients/output/add_grad/Reshape_11^train/gradients/output/add_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/output/add_grad/Reshape_1*
_output_shapes
:
�
)train/gradients/output/MatMul_grad/MatMulMatMul8train/gradients/output/add_grad/tuple/control_dependencyoutput/weights4/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
+train/gradients/output/MatMul_grad/MatMul_1MatMullayer_3/Relu8train/gradients/output/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
3train/gradients/output/MatMul_grad/tuple/group_depsNoOp*^train/gradients/output/MatMul_grad/MatMul,^train/gradients/output/MatMul_grad/MatMul_1
�
;train/gradients/output/MatMul_grad/tuple/control_dependencyIdentity)train/gradients/output/MatMul_grad/MatMul4^train/gradients/output/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*<
_class2
0.loc:@train/gradients/output/MatMul_grad/MatMul
�
=train/gradients/output/MatMul_grad/tuple/control_dependency_1Identity+train/gradients/output/MatMul_grad/MatMul_14^train/gradients/output/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@train/gradients/output/MatMul_grad/MatMul_1*
_output_shapes

:
�
*train/gradients/layer_3/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencylayer_3/Relu*'
_output_shapes
:���������*
T0
t
&train/gradients/layer_3/add_grad/ShapeShapelayer_3/MatMul*
T0*
out_type0*
_output_shapes
:
r
(train/gradients/layer_3/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/layer_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_3/add_grad/Shape(train/gradients/layer_3/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_3/add_grad/SumSum*train/gradients/layer_3/Relu_grad/ReluGrad6train/gradients/layer_3/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
(train/gradients/layer_3/add_grad/ReshapeReshape$train/gradients/layer_3/add_grad/Sum&train/gradients/layer_3/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_3/add_grad/Sum_1Sum*train/gradients/layer_3/Relu_grad/ReluGrad8train/gradients/layer_3/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*train/gradients/layer_3/add_grad/Reshape_1Reshape&train/gradients/layer_3/add_grad/Sum_1(train/gradients/layer_3/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
1train/gradients/layer_3/add_grad/tuple/group_depsNoOp)^train/gradients/layer_3/add_grad/Reshape+^train/gradients/layer_3/add_grad/Reshape_1
�
9train/gradients/layer_3/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_3/add_grad/Reshape2^train/gradients/layer_3/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_3/add_grad/Reshape*'
_output_shapes
:���������
�
;train/gradients/layer_3/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_3/add_grad/Reshape_12^train/gradients/layer_3/add_grad/tuple/group_deps*
_output_shapes
:*
T0*=
_class3
1/loc:@train/gradients/layer_3/add_grad/Reshape_1
�
*train/gradients/layer_3/MatMul_grad/MatMulMatMul9train/gradients/layer_3/add_grad/tuple/control_dependencylayer_3/weights3/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
,train/gradients/layer_3/MatMul_grad/MatMul_1MatMullayer_2/Relu9train/gradients/layer_3/add_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
4train/gradients/layer_3/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_3/MatMul_grad/MatMul-^train/gradients/layer_3/MatMul_grad/MatMul_1
�
<train/gradients/layer_3/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_3/MatMul_grad/MatMul5^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_3/MatMul_grad/MatMul*'
_output_shapes
:���������
�
>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_3/MatMul_grad/MatMul_15^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_3/MatMul_grad/MatMul_1*
_output_shapes

:
�
*train/gradients/layer_2/Relu_grad/ReluGradReluGrad<train/gradients/layer_3/MatMul_grad/tuple/control_dependencylayer_2/Relu*
T0*'
_output_shapes
:���������
t
&train/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
_output_shapes
:*
T0*
out_type0
r
(train/gradients/layer_2/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_2/add_grad/Shape(train/gradients/layer_2/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_2/add_grad/SumSum*train/gradients/layer_2/Relu_grad/ReluGrad6train/gradients/layer_2/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
(train/gradients/layer_2/add_grad/ReshapeReshape$train/gradients/layer_2/add_grad/Sum&train/gradients/layer_2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_2/add_grad/Sum_1Sum*train/gradients/layer_2/Relu_grad/ReluGrad8train/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
*train/gradients/layer_2/add_grad/Reshape_1Reshape&train/gradients/layer_2/add_grad/Sum_1(train/gradients/layer_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
1train/gradients/layer_2/add_grad/tuple/group_depsNoOp)^train/gradients/layer_2/add_grad/Reshape+^train/gradients/layer_2/add_grad/Reshape_1
�
9train/gradients/layer_2/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_2/add_grad/Reshape2^train/gradients/layer_2/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_2/add_grad/Reshape*'
_output_shapes
:���������
�
;train/gradients/layer_2/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_2/add_grad/Reshape_12^train/gradients/layer_2/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_2/add_grad/Reshape_1*
_output_shapes
:
�
*train/gradients/layer_2/MatMul_grad/MatMulMatMul9train/gradients/layer_2/add_grad/tuple/control_dependencylayer_2/weights2/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
,train/gradients/layer_2/MatMul_grad/MatMul_1MatMullayer_1/Relu9train/gradients/layer_2/add_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
4train/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_2/MatMul_grad/MatMul-^train/gradients/layer_2/MatMul_grad/MatMul_1
�
<train/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_2/MatMul_grad/MatMul5^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_2/MatMul_grad/MatMul*'
_output_shapes
:���������
�
>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_2/MatMul_grad/MatMul_15^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*?
_class5
31loc:@train/gradients/layer_2/MatMul_grad/MatMul_1
�
*train/gradients/layer_1/Relu_grad/ReluGradReluGrad<train/gradients/layer_2/MatMul_grad/tuple/control_dependencylayer_1/Relu*
T0*'
_output_shapes
:���������
t
&train/gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
_output_shapes
:*
T0*
out_type0
r
(train/gradients/layer_1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_1/add_grad/Shape(train/gradients/layer_1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_1/add_grad/SumSum*train/gradients/layer_1/Relu_grad/ReluGrad6train/gradients/layer_1/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(train/gradients/layer_1/add_grad/ReshapeReshape$train/gradients/layer_1/add_grad/Sum&train/gradients/layer_1/add_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
&train/gradients/layer_1/add_grad/Sum_1Sum*train/gradients/layer_1/Relu_grad/ReluGrad8train/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
*train/gradients/layer_1/add_grad/Reshape_1Reshape&train/gradients/layer_1/add_grad/Sum_1(train/gradients/layer_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
1train/gradients/layer_1/add_grad/tuple/group_depsNoOp)^train/gradients/layer_1/add_grad/Reshape+^train/gradients/layer_1/add_grad/Reshape_1
�
9train/gradients/layer_1/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_1/add_grad/Reshape2^train/gradients/layer_1/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_1/add_grad/Reshape*'
_output_shapes
:���������
�
;train/gradients/layer_1/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_1/add_grad/Reshape_12^train/gradients/layer_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*=
_class3
1/loc:@train/gradients/layer_1/add_grad/Reshape_1
�
*train/gradients/layer_1/MatMul_grad/MatMulMatMul9train/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/weights1/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
,train/gradients/layer_1/MatMul_grad/MatMul_1MatMulinput/Placeholder9train/gradients/layer_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
4train/gradients/layer_1/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_1/MatMul_grad/MatMul-^train/gradients/layer_1/MatMul_grad/MatMul_1
�
<train/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_1/MatMul_grad/MatMul5^train/gradients/layer_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*=
_class3
1/loc:@train/gradients/layer_1/MatMul_grad/MatMul
�
>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_1/MatMul_grad/MatMul_15^train/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
train/beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *"
_class
loc:@layer_1/biases1*
valueB
 *fff?
�
train/beta1_power
VariableV2*
shared_name *"
_class
loc:@layer_1/biases1*
	container *
shape: *
dtype0*
_output_shapes
: 
�
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: *
use_locking(
z
train/beta1_power/readIdentitytrain/beta1_power*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
train/beta2_power/initial_valueConst*"
_class
loc:@layer_1/biases1*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
train/beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *"
_class
loc:@layer_1/biases1
�
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
z
train/beta2_power/readIdentitytrain/beta2_power*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
-train/layer_1/weights1/Adam/Initializer/zerosConst*#
_class
loc:@layer_1/weights1*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_1/weights1/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_1/weights1*
	container *
shape
:
�
"train/layer_1/weights1/Adam/AssignAssigntrain/layer_1/weights1/Adam-train/layer_1/weights1/Adam/Initializer/zeros*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:*
use_locking(
�
 train/layer_1/weights1/Adam/readIdentitytrain/layer_1/weights1/Adam*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
/train/layer_1/weights1/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_1/weights1*
valueB*    
�
train/layer_1/weights1/Adam_1
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_1/weights1*
	container 
�
$train/layer_1/weights1/Adam_1/AssignAssigntrain/layer_1/weights1/Adam_1/train/layer_1/weights1/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
"train/layer_1/weights1/Adam_1/readIdentitytrain/layer_1/weights1/Adam_1*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
,train/layer_1/biases1/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_1/biases1*
valueB*    
�
train/layer_1/biases1/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_1/biases1
�
!train/layer_1/biases1/Adam/AssignAssigntrain/layer_1/biases1/Adam,train/layer_1/biases1/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
�
train/layer_1/biases1/Adam/readIdentitytrain/layer_1/biases1/Adam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
:
�
.train/layer_1/biases1/Adam_1/Initializer/zerosConst*"
_class
loc:@layer_1/biases1*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_1/biases1/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_1/biases1
�
#train/layer_1/biases1/Adam_1/AssignAssigntrain/layer_1/biases1/Adam_1.train/layer_1/biases1/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
�
!train/layer_1/biases1/Adam_1/readIdentitytrain/layer_1/biases1/Adam_1*
_output_shapes
:*
T0*"
_class
loc:@layer_1/biases1
�
-train/layer_2/weights2/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_2/weights2*
valueB*    
�
train/layer_2/weights2/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_2/weights2*
	container *
shape
:
�
"train/layer_2/weights2/Adam/AssignAssigntrain/layer_2/weights2/Adam-train/layer_2/weights2/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
 train/layer_2/weights2/Adam/readIdentitytrain/layer_2/weights2/Adam*
_output_shapes

:*
T0*#
_class
loc:@layer_2/weights2
�
/train/layer_2/weights2/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_2/weights2*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_2/weights2/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_2/weights2*
	container *
shape
:
�
$train/layer_2/weights2/Adam_1/AssignAssigntrain/layer_2/weights2/Adam_1/train/layer_2/weights2/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
"train/layer_2/weights2/Adam_1/readIdentitytrain/layer_2/weights2/Adam_1*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
�
,train/layer_2/biases2/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_2/biases2*
valueB*    
�
train/layer_2/biases2/Adam
VariableV2*
shared_name *"
_class
loc:@layer_2/biases2*
	container *
shape:*
dtype0*
_output_shapes
:
�
!train/layer_2/biases2/Adam/AssignAssigntrain/layer_2/biases2/Adam,train/layer_2/biases2/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
train/layer_2/biases2/Adam/readIdentitytrain/layer_2/biases2/Adam*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes
:
�
.train/layer_2/biases2/Adam_1/Initializer/zerosConst*"
_class
loc:@layer_2/biases2*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_2/biases2/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_2/biases2*
	container *
shape:
�
#train/layer_2/biases2/Adam_1/AssignAssigntrain/layer_2/biases2/Adam_1.train/layer_2/biases2/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_2/biases2
�
!train/layer_2/biases2/Adam_1/readIdentitytrain/layer_2/biases2/Adam_1*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes
:
�
-train/layer_3/weights3/Adam/Initializer/zerosConst*#
_class
loc:@layer_3/weights3*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_3/weights3/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_3/weights3*
	container *
shape
:
�
"train/layer_3/weights3/Adam/AssignAssigntrain/layer_3/weights3/Adam-train/layer_3/weights3/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
�
 train/layer_3/weights3/Adam/readIdentitytrain/layer_3/weights3/Adam*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
/train/layer_3/weights3/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_3/weights3*
valueB*    *
dtype0*
_output_shapes

:
�
train/layer_3/weights3/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_3/weights3*
	container *
shape
:
�
$train/layer_3/weights3/Adam_1/AssignAssigntrain/layer_3/weights3/Adam_1/train/layer_3/weights3/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
�
"train/layer_3/weights3/Adam_1/readIdentitytrain/layer_3/weights3/Adam_1*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
,train/layer_3/biases3/Adam/Initializer/zerosConst*"
_class
loc:@layer_3/biases3*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_3/biases3/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_3/biases3*
	container *
shape:
�
!train/layer_3/biases3/Adam/AssignAssigntrain/layer_3/biases3/Adam,train/layer_3/biases3/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
�
train/layer_3/biases3/Adam/readIdentitytrain/layer_3/biases3/Adam*
_output_shapes
:*
T0*"
_class
loc:@layer_3/biases3
�
.train/layer_3/biases3/Adam_1/Initializer/zerosConst*"
_class
loc:@layer_3/biases3*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_3/biases3/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_3/biases3*
	container *
shape:
�
#train/layer_3/biases3/Adam_1/AssignAssigntrain/layer_3/biases3/Adam_1.train/layer_3/biases3/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
�
!train/layer_3/biases3/Adam_1/readIdentitytrain/layer_3/biases3/Adam_1*
_output_shapes
:*
T0*"
_class
loc:@layer_3/biases3
�
,train/output/weights4/Adam/Initializer/zerosConst*"
_class
loc:@output/weights4*
valueB*    *
dtype0*
_output_shapes

:
�
train/output/weights4/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *"
_class
loc:@output/weights4*
	container *
shape
:
�
!train/output/weights4/Adam/AssignAssigntrain/output/weights4/Adam,train/output/weights4/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*"
_class
loc:@output/weights4
�
train/output/weights4/Adam/readIdentitytrain/output/weights4/Adam*
_output_shapes

:*
T0*"
_class
loc:@output/weights4
�
.train/output/weights4/Adam_1/Initializer/zerosConst*"
_class
loc:@output/weights4*
valueB*    *
dtype0*
_output_shapes

:
�
train/output/weights4/Adam_1
VariableV2*
shared_name *"
_class
loc:@output/weights4*
	container *
shape
:*
dtype0*
_output_shapes

:
�
#train/output/weights4/Adam_1/AssignAssigntrain/output/weights4/Adam_1.train/output/weights4/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*"
_class
loc:@output/weights4
�
!train/output/weights4/Adam_1/readIdentitytrain/output/weights4/Adam_1*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
+train/output/biases4/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@output/biases4*
valueB*    
�
train/output/biases4/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@output/biases4*
	container 
�
 train/output/biases4/Adam/AssignAssigntrain/output/biases4/Adam+train/output/biases4/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@output/biases4
�
train/output/biases4/Adam/readIdentitytrain/output/biases4/Adam*
T0*!
_class
loc:@output/biases4*
_output_shapes
:
�
-train/output/biases4/Adam_1/Initializer/zerosConst*!
_class
loc:@output/biases4*
valueB*    *
dtype0*
_output_shapes
:
�
train/output/biases4/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@output/biases4*
	container *
shape:
�
"train/output/biases4/Adam_1/AssignAssigntrain/output/biases4/Adam_1-train/output/biases4/Adam_1/Initializer/zeros*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:*
use_locking(
�
 train/output/biases4/Adam_1/readIdentitytrain/output/biases4/Adam_1*
T0*!
_class
loc:@output/biases4*
_output_shapes
:
]
train/Adam/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
U
train/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
U
train/Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
W
train/Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
,train/Adam/update_layer_1/weights1/ApplyAdam	ApplyAdamlayer_1/weights1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0*#
_class
loc:@layer_1/weights1
�
+train/Adam/update_layer_1/biases1/ApplyAdam	ApplyAdamlayer_1/biases1train/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_1/add_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@layer_1/biases1*
use_nesterov( *
_output_shapes
:
�
,train/Adam/update_layer_2/weights2/ApplyAdam	ApplyAdamlayer_2/weights2train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@layer_2/weights2*
use_nesterov( *
_output_shapes

:*
use_locking( 
�
+train/Adam/update_layer_2/biases2/ApplyAdam	ApplyAdamlayer_2/biases2train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@layer_2/biases2*
use_nesterov( *
_output_shapes
:
�
,train/Adam/update_layer_3/weights3/ApplyAdam	ApplyAdamlayer_3/weights3train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0*#
_class
loc:@layer_3/weights3
�
+train/Adam/update_layer_3/biases3/ApplyAdam	ApplyAdamlayer_3/biases3train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_3/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@layer_3/biases3
�
+train/Adam/update_output/weights4/ApplyAdam	ApplyAdamoutput/weights4train/output/weights4/Adamtrain/output/weights4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/output/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@output/weights4*
use_nesterov( *
_output_shapes

:
�
*train/Adam/update_output/biases4/ApplyAdam	ApplyAdamoutput/biases4train/output/biases4/Adamtrain/output/biases4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon:train/gradients/output/add_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@output/biases4*
use_nesterov( *
_output_shapes
:
�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
use_locking( *
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
use_locking( *
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
�

train/AdamNoOp^train/Adam/Assign^train/Adam/Assign_1,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam
n
logging/current_cost/tagsConst*%
valueB Blogging/current_cost*
dtype0*
_output_shapes
: 
l
logging/current_costScalarSummarylogging/current_cost/tags	cost/Mean*
T0*
_output_shapes
: 
a
logging/Merge/MergeSummaryMergeSummarylogging/current_cost*
N*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�Blayer_1/biases1Blayer_1/weights1Blayer_2/biases2Blayer_2/weights2Blayer_3/biases3Blayer_3/weights3Boutput/biases4Boutput/weights4Btrain/beta1_powerBtrain/beta2_powerBtrain/layer_1/biases1/AdamBtrain/layer_1/biases1/Adam_1Btrain/layer_1/weights1/AdamBtrain/layer_1/weights1/Adam_1Btrain/layer_2/biases2/AdamBtrain/layer_2/biases2/Adam_1Btrain/layer_2/weights2/AdamBtrain/layer_2/weights2/Adam_1Btrain/layer_3/biases3/AdamBtrain/layer_3/biases3/Adam_1Btrain/layer_3/weights3/AdamBtrain/layer_3/weights3/Adam_1Btrain/output/biases4/AdamBtrain/output/biases4/Adam_1Btrain/output/weights4/AdamBtrain/output/weights4/Adam_1*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_sliceslayer_1/biases1layer_1/weights1layer_2/biases2layer_2/weights2layer_3/biases3layer_3/weights3output/biases4output/weights4train/beta1_powertrain/beta2_powertrain/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/output/biases4/Adamtrain/output/biases4/Adam_1train/output/weights4/Adamtrain/output/weights4/Adam_1*(
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Blayer_1/biases1Blayer_1/weights1Blayer_2/biases2Blayer_2/weights2Blayer_3/biases3Blayer_3/weights3Boutput/biases4Boutput/weights4Btrain/beta1_powerBtrain/beta2_powerBtrain/layer_1/biases1/AdamBtrain/layer_1/biases1/Adam_1Btrain/layer_1/weights1/AdamBtrain/layer_1/weights1/Adam_1Btrain/layer_2/biases2/AdamBtrain/layer_2/biases2/Adam_1Btrain/layer_2/weights2/AdamBtrain/layer_2/weights2/Adam_1Btrain/layer_3/biases3/AdamBtrain/layer_3/biases3/Adam_1Btrain/layer_3/weights3/AdamBtrain/layer_3/weights3/Adam_1Btrain/output/biases4/AdamBtrain/output/biases4/Adam_1Btrain/output/weights4/AdamBtrain/output/weights4/Adam_1*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
�
save/AssignAssignlayer_1/biases1save/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
�
save/Assign_1Assignlayer_1/weights1save/RestoreV2:1*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_2Assignlayer_2/biases2save/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
save/Assign_3Assignlayer_2/weights2save/RestoreV2:3*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_4Assignlayer_3/biases3save/RestoreV2:4*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_5Assignlayer_3/weights3save/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
�
save/Assign_6Assignoutput/biases4save/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
�
save/Assign_7Assignoutput/weights4save/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
�
save/Assign_8Assigntrain/beta1_powersave/RestoreV2:8*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_9Assigntrain/beta2_powersave/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
�
save/Assign_10Assigntrain/layer_1/biases1/Adamsave/RestoreV2:10*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_11Assigntrain/layer_1/biases1/Adam_1save/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
�
save/Assign_12Assigntrain/layer_1/weights1/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_1/weights1
�
save/Assign_13Assigntrain/layer_1/weights1/Adam_1save/RestoreV2:13*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_1/weights1
�
save/Assign_14Assigntrain/layer_2/biases2/Adamsave/RestoreV2:14*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_15Assigntrain/layer_2/biases2/Adam_1save/RestoreV2:15*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
�
save/Assign_16Assigntrain/layer_2/weights2/Adamsave/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
save/Assign_17Assigntrain/layer_2/weights2/Adam_1save/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
save/Assign_18Assigntrain/layer_3/biases3/Adamsave/RestoreV2:18*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
�
save/Assign_19Assigntrain/layer_3/biases3/Adam_1save/RestoreV2:19*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_20Assigntrain/layer_3/weights3/Adamsave/RestoreV2:20*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_3/weights3
�
save/Assign_21Assigntrain/layer_3/weights3/Adam_1save/RestoreV2:21*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
�
save/Assign_22Assigntrain/output/biases4/Adamsave/RestoreV2:22*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
�
save/Assign_23Assigntrain/output/biases4/Adam_1save/RestoreV2:23*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@output/biases4
�
save/Assign_24Assigntrain/output/weights4/Adamsave/RestoreV2:24*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*"
_class
loc:@output/weights4
�
save/Assign_25Assigntrain/output/weights4/Adam_1save/RestoreV2:25*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
�
initNoOp^layer_1/biases1/Assign^layer_1/weights1/Assign^layer_2/biases2/Assign^layer_2/weights2/Assign^layer_3/biases3/Assign^layer_3/weights3/Assign^output/biases4/Assign^output/weights4/Assign^train/beta1_power/Assign^train/beta2_power/Assign"^train/layer_1/biases1/Adam/Assign$^train/layer_1/biases1/Adam_1/Assign#^train/layer_1/weights1/Adam/Assign%^train/layer_1/weights1/Adam_1/Assign"^train/layer_2/biases2/Adam/Assign$^train/layer_2/biases2/Adam_1/Assign#^train/layer_2/weights2/Adam/Assign%^train/layer_2/weights2/Adam_1/Assign"^train/layer_3/biases3/Adam/Assign$^train/layer_3/biases3/Adam_1/Assign#^train/layer_3/weights3/Adam/Assign%^train/layer_3/weights3/Adam_1/Assign!^train/output/biases4/Adam/Assign#^train/output/biases4/Adam_1/Assign"^train/output/weights4/Adam/Assign$^train/output/weights4/Adam_1/Assign""
train_op


train/Adam"�
	variables��
w
layer_1/weights1:0layer_1/weights1/Assignlayer_1/weights1/read:02-layer_1/weights1/Initializer/random_uniform:08
j
layer_1/biases1:0layer_1/biases1/Assignlayer_1/biases1/read:02#layer_1/biases1/Initializer/zeros:08
w
layer_2/weights2:0layer_2/weights2/Assignlayer_2/weights2/read:02-layer_2/weights2/Initializer/random_uniform:08
j
layer_2/biases2:0layer_2/biases2/Assignlayer_2/biases2/read:02#layer_2/biases2/Initializer/zeros:08
w
layer_3/weights3:0layer_3/weights3/Assignlayer_3/weights3/read:02-layer_3/weights3/Initializer/random_uniform:08
j
layer_3/biases3:0layer_3/biases3/Assignlayer_3/biases3/read:02#layer_3/biases3/Initializer/zeros:08
s
output/weights4:0output/weights4/Assignoutput/weights4/read:02,output/weights4/Initializer/random_uniform:08
f
output/biases4:0output/biases4/Assignoutput/biases4/read:02"output/biases4/Initializer/zeros:08
l
train/beta1_power:0train/beta1_power/Assigntrain/beta1_power/read:02!train/beta1_power/initial_value:0
l
train/beta2_power:0train/beta2_power/Assigntrain/beta2_power/read:02!train/beta2_power/initial_value:0
�
train/layer_1/weights1/Adam:0"train/layer_1/weights1/Adam/Assign"train/layer_1/weights1/Adam/read:02/train/layer_1/weights1/Adam/Initializer/zeros:0
�
train/layer_1/weights1/Adam_1:0$train/layer_1/weights1/Adam_1/Assign$train/layer_1/weights1/Adam_1/read:021train/layer_1/weights1/Adam_1/Initializer/zeros:0
�
train/layer_1/biases1/Adam:0!train/layer_1/biases1/Adam/Assign!train/layer_1/biases1/Adam/read:02.train/layer_1/biases1/Adam/Initializer/zeros:0
�
train/layer_1/biases1/Adam_1:0#train/layer_1/biases1/Adam_1/Assign#train/layer_1/biases1/Adam_1/read:020train/layer_1/biases1/Adam_1/Initializer/zeros:0
�
train/layer_2/weights2/Adam:0"train/layer_2/weights2/Adam/Assign"train/layer_2/weights2/Adam/read:02/train/layer_2/weights2/Adam/Initializer/zeros:0
�
train/layer_2/weights2/Adam_1:0$train/layer_2/weights2/Adam_1/Assign$train/layer_2/weights2/Adam_1/read:021train/layer_2/weights2/Adam_1/Initializer/zeros:0
�
train/layer_2/biases2/Adam:0!train/layer_2/biases2/Adam/Assign!train/layer_2/biases2/Adam/read:02.train/layer_2/biases2/Adam/Initializer/zeros:0
�
train/layer_2/biases2/Adam_1:0#train/layer_2/biases2/Adam_1/Assign#train/layer_2/biases2/Adam_1/read:020train/layer_2/biases2/Adam_1/Initializer/zeros:0
�
train/layer_3/weights3/Adam:0"train/layer_3/weights3/Adam/Assign"train/layer_3/weights3/Adam/read:02/train/layer_3/weights3/Adam/Initializer/zeros:0
�
train/layer_3/weights3/Adam_1:0$train/layer_3/weights3/Adam_1/Assign$train/layer_3/weights3/Adam_1/read:021train/layer_3/weights3/Adam_1/Initializer/zeros:0
�
train/layer_3/biases3/Adam:0!train/layer_3/biases3/Adam/Assign!train/layer_3/biases3/Adam/read:02.train/layer_3/biases3/Adam/Initializer/zeros:0
�
train/layer_3/biases3/Adam_1:0#train/layer_3/biases3/Adam_1/Assign#train/layer_3/biases3/Adam_1/read:020train/layer_3/biases3/Adam_1/Initializer/zeros:0
�
train/output/weights4/Adam:0!train/output/weights4/Adam/Assign!train/output/weights4/Adam/read:02.train/output/weights4/Adam/Initializer/zeros:0
�
train/output/weights4/Adam_1:0#train/output/weights4/Adam_1/Assign#train/output/weights4/Adam_1/read:020train/output/weights4/Adam_1/Initializer/zeros:0
�
train/output/biases4/Adam:0 train/output/biases4/Adam/Assign train/output/biases4/Adam/read:02-train/output/biases4/Adam/Initializer/zeros:0
�
train/output/biases4/Adam_1:0"train/output/biases4/Adam_1/Assign"train/output/biases4/Adam_1/read:02/train/output/biases4/Adam_1/Initializer/zeros:0"�
trainable_variables��
w
layer_1/weights1:0layer_1/weights1/Assignlayer_1/weights1/read:02-layer_1/weights1/Initializer/random_uniform:08
j
layer_1/biases1:0layer_1/biases1/Assignlayer_1/biases1/read:02#layer_1/biases1/Initializer/zeros:08
w
layer_2/weights2:0layer_2/weights2/Assignlayer_2/weights2/read:02-layer_2/weights2/Initializer/random_uniform:08
j
layer_2/biases2:0layer_2/biases2/Assignlayer_2/biases2/read:02#layer_2/biases2/Initializer/zeros:08
w
layer_3/weights3:0layer_3/weights3/Assignlayer_3/weights3/read:02-layer_3/weights3/Initializer/random_uniform:08
j
layer_3/biases3:0layer_3/biases3/Assignlayer_3/biases3/read:02#layer_3/biases3/Initializer/zeros:08
s
output/weights4:0output/weights4/Assignoutput/weights4/read:02,output/weights4/Initializer/random_uniform:08
f
output/biases4:0output/biases4/Assignoutput/biases4/read:02"output/biases4/Initializer/zeros:08"'
	summaries

logging/current_cost:0�Ͱ_(       �pJ	h	��A*

logging/current_costV�)=c�!Y*       ����	u�	��A*

logging/current_cost�d=�"/"*       ����	��	��A
*

logging/current_cost��=R�##*       ����	�	
��A*

logging/current_cost�b=B���*       ����	�6
��A*

logging/current_cost c=K�xh*       ����	 h
��A*

logging/current_cost���<WjU*       ����	��
��A*

logging/current_cost���<|K�*       ����	l�
��A#*

logging/current_cost��<�
�*       ����	��
��A(*

logging/current_cost���<<,�*       ����	�,��A-*

logging/current_costi��<�3��*       ����	�^��A2*

logging/current_cost��<�.�w*       ����	r���A7*

logging/current_costK��<O�7I*       ����	J���A<*

logging/current_cost�U�<?��*       ����	���AA*

logging/current_cost|�<j��g*       ����	���AF*

logging/current_cost���<�*       ����	\E��AK*

logging/current_cost��<C�u*       ����	�r��AP*

logging/current_coste��<1�y*       ����	f���AU*

logging/current_cost��<��s/*       ����	����AZ*

logging/current_cost��<�?P�*       ����	����A_*

logging/current_cost^!�<�rF*       ����	(��Ad*

logging/current_costTY�<S�\*       ����	�V��Ai*

logging/current_cost��<���*       ����	����An*

logging/current_costޥ�<�#=�*       ����	h���As*

logging/current_cost��<��*       ����	����Ax*

logging/current_cost	��<)3��*       ����	���A}*

logging/current_cost��<m��+       ��K	�;��A�*

logging/current_costc�<�S��+       ��K	�i��A�*

logging/current_cost&��<Ά|+       ��K	���A�*

logging/current_cost册<;f+       ��K	����A�*

logging/current_cost奆<e�6+       ��K	����A�*

logging/current_cost�<�' +       ��K	���A�*

logging/current_cost�Tw<�Q��+       ��K	�J��A�*

logging/current_cost'�l<]y{+       ��K	y��A�*

logging/current_cost�yb<�|+       ��K	R���A�*

logging/current_costՕX<lz�+       ��K	����A�*

logging/current_cost�'O<�&+       ��K	^��A�*

logging/current_cost�F<3�l�+       ��K	3/��A�*

logging/current_cost�^=<�"/+       ��K	"^��A�*

logging/current_cost?T5<��:�+       ��K	����A�*

logging/current_cost�-<&5/�+       ��K	ɸ��A�*

logging/current_cost�
'<D�1+       ��K	����A�*

logging/current_cost^� <W�J�+       ��K	~��A�*

logging/current_cost�e<��+       ��K	�I��A�*

logging/current_costP�<�� +       ��K	x��A�*

logging/current_costlH<�/8+       ��K	Q���A�*

logging/current_cost��<���+       ��K	����A�*

logging/current_cost��<`��{+       ��K	���A�*

logging/current_costkO	<�i�+       ��K	�P��A�*

logging/current_costG<���+       ��K	����A�*

logging/current_cost4�<,���+       ��K	H���A�*

logging/current_cost�N<�w��+       ��K	e��A�*

logging/current_cost�0<=��7+       ��K	�?��A�*

logging/current_cost�I<2R+       ��K	׍��A�*

logging/current_cost �<hq2+       ��K	^���A�*

logging/current_cost�R<ǒR+       ��K	���A�*

logging/current_cost�� <`D��+       ��K	�/��A�*

logging/current_cost5� <�Gw�+       ��K	n��A�*

logging/current_cost�� <�>��+       ��K	S���A�*

logging/current_costɁ <�3�+       ��K	���A�*

logging/current_cost�� <f���+       ��K	��A�*

logging/current_cost'� <�S�=+       ��K	U��A�*

logging/current_cost_� <��RY+       ��K	����A�*

logging/current_cost�� <G��+       ��K	����A�*

logging/current_cost� <����+       ��K	����A�*

logging/current_cost� <��+       ��K	�'��A�*

logging/current_cost�� <	Y�+       ��K	!d��A�*

logging/current_costۥ <�#z+       ��K	w���A�*

logging/current_costz� <�a�e+       ��K	����A�*

logging/current_cost`~ <��s+       ��K	����A�*

logging/current_cost]` <�� +       ��K	�-��A�*

logging/current_cost69 <o	N+       ��K	ZZ��A�*

logging/current_cost�* <�|�+       ��K	���A�*

logging/current_cost�/ <t�a+       ��K	Ž��A�*

logging/current_cost!0 <y�+       ��K	����A�*

logging/current_cost�0 <��+       ��K	�'��A�*

logging/current_cost�6 <���e+       ��K	[Z��A�*

logging/current_cost7 <��2x+       ��K	����A�*

logging/current_costr0 <��>+       ��K	J���A�*

logging/current_cost�Q <�J+       ��K	���A�*

logging/current_cost�? <�R)q+       ��K	W9��A�*

logging/current_cost\+ <�Ӂ+       ��K	v��A�*

logging/current_cost�2 <o�h�+       ��K	|���A�*

logging/current_cost�9 <��+       ��K	F���A�*

logging/current_cost81 <�:��+       ��K	���A�*

logging/current_costC8 <�\��+       ��K	�>��A�*

logging/current_costL <��+       ��K	�m��A�*

logging/current_costpD <K#{u+       ��K	\���A�*

logging/current_cost�H <k�&+       ��K	����A�*

logging/current_cost�= <��b�+       ��K	����A�*

logging/current_costC <��1+       ��K	�.��A�*

logging/current_costKA <q�]+       ��K	=^��A�*

logging/current_cost�7 <�;�+       ��K	���A�*

logging/current_cost�4 <���+       ��K	���A�*

logging/current_cost<? <禽X+       ��K		���A�*

logging/current_cost�; <�HG�+       ��K	���A�*

logging/current_cost3< <�+       ��K	qN��A�*

logging/current_costm7 <|z�+       ��K	܂��A�*

logging/current_cost�8 <�9�9+       ��K	z���A�*

logging/current_cost_9 <�b��+       ��K	;���A�*

logging/current_cost�3 <T}��+       ��K	3��A�*

logging/current_cost�8 <���+       ��K	�A��A�*

logging/current_cost�; <ZO�(+       ��K	*s��A�*

logging/current_cost�5 <K�+       ��K	����A�*

logging/current_cost�6 <���O+       ��K	c���A�*

logging/current_cost�8 <�'�.+       ��K	����A�*

logging/current_cost@7 <�Q�+       ��K	�,��A�*

logging/current_costE9 <%���+       ��K	^��A�*

logging/current_cost�4 <�
xd+       ��K	����A�*

logging/current_cost�7 <�++       ��K	l���A�*

logging/current_cost�8 <9�;�+       ��K	$���A�*

logging/current_costi6 <�`�7+       ��K	�!��A�*

logging/current_cost.7 <�F��+       ��K	oT��A�*

logging/current_cost�9 <�{ud+       ��K	ׂ��A�*

logging/current_costX2 <od�|+       ��K	,���A�*

logging/current_costE8 <�/�+       ��K	����A�*

logging/current_cost<: <��7+       ��K	� ��A�*

logging/current_cost�2 <�2-.+       ��K	�= ��A�*

logging/current_cost B <�F.�+       ��K	�o ��A�*

logging/current_cost
E <��we+       ��K	5� ��A�*

logging/current_costh5 <p��+       ��K	�� ��A�*

logging/current_cost�1 <��x+       ��K	�� ��A�*

logging/current_cost�< <�x�~+       ��K	�'!��A�*

logging/current_costF3 <�`�t+       ��K	�V!��A�*

logging/current_cost|< <@2C�+       ��K	��!��A�*

logging/current_costD( <TL<�+       ��K	�!��A�*

logging/current_cost$E <	��+       ��K	i�!��A�*

logging/current_cost�2 <���+       ��K	c"��A�*

logging/current_cost�. <z��W+       ��K	�>"��A�*

logging/current_cost�; <�7��+       ��K	hm"��A�*

logging/current_costH& <e?>�+       ��K	v�"��A�*

logging/current_cost?> <O�X�+       ��K	2�"��A�*

logging/current_cost�% <��+       ��K	��"��A�*

logging/current_cost�4 <AD�+       ��K	�&#��A�*

logging/current_cost�6 <���+       ��K	OY#��A�*

logging/current_cost�( <T�Ƨ+       ��K	H�#��A�*

logging/current_cost�4 <�b�+       ��K	J�#��A�*

logging/current_costg* <�K��+       ��K	��#��A�*

logging/current_cost�1 <X�+       ��K	�$��A�*

logging/current_cost3 <�6i�+       ��K	1L$��A�*

logging/current_cost$ <[�+       ��K	vy$��A�*

logging/current_costX6 <©�+       ��K	զ$��A�*

logging/current_costI/ <���+       ��K	D�$��A�*

logging/current_cost<) <�Έ�+       ��K	�%��A�*

logging/current_cost�- <����+       ��K	c2%��A�*

logging/current_cost�/ <�d��+       ��K	A`%��A�*

logging/current_cost, <I'�+       ��K	��%��A�*

logging/current_cost�, <<�9�+       ��K	F�%��A�*

logging/current_cost], <-C�+       ��K	n�%��A�*

logging/current_cost%+ <2�+       ��K	�#&��A�*

logging/current_cost�0 <���#+       ��K	|U&��A�*

logging/current_cost�# <<Of8+       ��K	و&��A�*

logging/current_cost\1 <d�X1+       ��K	H�&��A�*

logging/current_costL% <BI�>+       ��K	d�&��A�*

logging/current_cost�+ <�B �+       ��K	L'��A�*

logging/current_costz* <fO��+       ��K	K'��A�*

logging/current_costS% <��E�+       ��K	�y'��A�*

logging/current_cost�+ <�2��+       ��K	�'��A�*

logging/current_cost�# <��؅+       ��K	��'��A�*

logging/current_costP* <�A�+       ��K	�(��A�*

logging/current_cost�# <*�O�+       ��K	�<(��A�*

logging/current_cost%) <'�U�+       ��K	sj(��A�*

logging/current_cost <x��+       ��K	ߚ(��A�*

logging/current_cost�+ <Vo]Z+       ��K	��(��A�*

logging/current_cost� <���@+       ��K	��(��A�*

logging/current_costB1 <v�8<+       ��K	�()��A�*

logging/current_costh <���,+       ��K	3V)��A�*

logging/current_cost@' <8>��+       ��K	��)��A�*

logging/current_cost� <����+       ��K	�)��A�*

logging/current_cost�/ <�R�+       ��K	g�)��A�*

logging/current_cost� <>_*0+       ��K	�*��A�*

logging/current_cost�( <�d�+       ��K	'@*��A�*

logging/current_cost� <^��+       ��K	�l*��A�*

logging/current_cost�/ <����+       ��K	L�*��A�*

logging/current_cost� <V�zY+       ��K	�*��A�*

logging/current_costz( <��+       ��K	W�*��A�*

logging/current_cost$  <�4G�+       ��K	�&+��A�*

logging/current_cost�$ <p}V+       ��K	NV+��A�*

logging/current_cost <�O��+       ��K	�+��A�*

logging/current_cost� <���T+       ��K	�+��A�*

logging/current_cost�" <��~+       ��K	D�+��A�*

logging/current_cost�  <��y +       ��K	�,��A�*

logging/current_cost9# <S�m�+       ��K	�:,��A�*

logging/current_costS$ <*g��+       ��K	i,��A�*

logging/current_cost% <�ªU+       ��K	�,��A�*

logging/current_costE$ <���+       ��K	��,��A�*

logging/current_cost�$ <��	4+       ��K	k�,��A�*

logging/current_cost! <_�p�+       ��K	�#-��A�*

logging/current_cost�# <$��8+       ��K	�S-��A�*

logging/current_cost�/ <.&I�+       ��K	�-��A�*

logging/current_cost� <`�^+       ��K	�-��A�*

logging/current_costl <jӹ�+       ��K	N�-��A�*

logging/current_cost12 <^_��+       ��K	�
.��A�*

logging/current_cost�  <O˞#+       ��K	�7.��A�*

logging/current_costJ# <��)$+       ��K	f.��A�*

logging/current_cost�+ <�`�+       ��K	��.��A�*

logging/current_cost�, <XIU+       ��K	e�.��A�*

logging/current_cost�$ <:�_v+       ��K	��.��A�*

logging/current_cost <^!�+       ��K	#/��A�*

logging/current_costu2 <���h+       ��K	�F/��A�*

logging/current_cost% <+�?�+       ��K	uv/��A�*

logging/current_cost5& <��+       ��K	�/��A�*

logging/current_cost�' <(]�+       ��K	��/��A�*

logging/current_costE% <+�L+       ��K	�0��A�*

logging/current_cost�& <6" +       ��K	`30��A�*

logging/current_cost�' <?70�+       ��K	�i0��A�*

logging/current_cost�' <V|�+       ��K	�0��A�*

logging/current_cost� <>6�+       ��K	�0��A�*

logging/current_cost�" <5��E+       ��K	]�0��A�*

logging/current_cost� <>��s+       ��K	k)1��A�*

logging/current_cost�$ <���+       ��K	�Z1��A�*

logging/current_cost� <���+       ��K	و1��A�*

logging/current_cost� <�TKj+       ��K	��1��A�*

logging/current_cost�, <[Z��+       ��K	�1��A�*

logging/current_cost� <k�)�+       ��K	92��A�*

logging/current_cost�, <@z�*+       ��K	�D2��A�*

logging/current_cost <��{�+       ��K	�q2��A�*

logging/current_cost <�L�+       ��K	��2��A�*

logging/current_cost�* <����+       ��K	�2��A�*

logging/current_cost <m�A+       ��K	T 3��A�*

logging/current_cost% <�p��+       ��K	�-3��A�*

logging/current_cost�" <���+       ��K	'\3��A�*

logging/current_costq <��x�+       ��K	��3��A�*

logging/current_cost�# <۪�6+       ��K	ú3��A�*

logging/current_cost� <�`��+       ��K	��3��A�*

logging/current_cost� < �e+       ��K	4��A�*

logging/current_cost�# <�/{+       ��K	�J4��A�*

logging/current_cost�  <|��@+       ��K	x4��A�*

logging/current_cost� <h`+       ��K	��4��A�*

logging/current_cost�# <�ٍ*+       ��K	��4��A�*

logging/current_cost� <0��+       ��K	�5��A�*

logging/current_cost�$ <b�_�+       ��K	�25��A�	*

logging/current_cost@ <k��=+       ��K	�a5��A�	*

logging/current_cost%" <t��:+       ��K	3�5��A�	*

logging/current_cost <N#�+       ��K	��5��A�	*

logging/current_cost" <L�i+       ��K	u�5��A�	*

logging/current_costT" <!��U+       ��K	�6��A�	*

logging/current_cost� <h�9+       ��K	$I6��A�	*

logging/current_cost�$ <��R+       ��K	|x6��A�	*

logging/current_cost� <�E۲+       ��K	Ʀ6��A�	*

logging/current_cost�& <"��+       ��K	��6��A�	*

logging/current_costt <-��D+       ��K	7��A�	*

logging/current_cost�& <A?�+       ��K	�17��A�	*

logging/current_costk <�uY+       ��K	�^7��A�	*

logging/current_cost ) <-�Ue+       ��K	��7��A�	*

logging/current_cost <'7JX+       ��K	u�7��A�	*

logging/current_cost' <�K�+       ��K	��7��A�	*

logging/current_cost� <�3 +       ��K	Y#8��A�	*

logging/current_cost�) <��+       ��K	lR8��A�	*

logging/current_cost <?�	#+       ��K	|�8��A�	*

logging/current_cost* <3(�+       ��K	6�8��A�	*

logging/current_costb <�Aq�+       ��K	��8��A�	*

logging/current_cost,& <�%��+       ��K	�
9��A�	*

logging/current_costG <.�z+       ��K	�:9��A�	*

logging/current_cost� <c��+       ��K	�k9��A�	*

logging/current_cost�( <�ױ�+       ��K	0�9��A�	*

logging/current_costh <gO<�+       ��K	��9��A�
*

logging/current_cost�+ <�8n+       ��K	�:��A�
*

logging/current_cost� <f��+       ��K	�5:��A�
*

logging/current_cost�) <my6+       ��K	�c:��A�
*

logging/current_costW <ۻ�+       ��K	�:��A�
*

logging/current_cost�  <P�+       ��K	2�:��A�
*

logging/current_cost�$ <n�+       ��K	��:��A�
*

logging/current_cost� <�?U+       ��K	};��A�
*

logging/current_costN- <ǐ?+       ��K	�L;��A�
*

logging/current_cost_ <Z��"+       ��K	��;��A�
*

logging/current_cost� <dl�+       ��K	_�;��A�
*

logging/current_cost�1 <�f�i+       ��K	��;��A�
*

logging/current_cost�0 <{�p+       ��K	>,<��A�
*

logging/current_cost/ <��+       ��K	Y<��A�
*

logging/current_cost�J <���+       ��K	��<��A�
*

logging/current_costpT <�n�+       ��K	�<��A�
*

logging/current_costl^ <��y+       ��K	��<��A�
*

logging/current_cost�` <�0�++       ��K	E=��A�
*

logging/current_costa <�TI+       ��K	�==��A�
*

logging/current_cost�i <J��+       ��K	�s=��A�
*

logging/current_costBU <��S+       ��K	��=��A�
*

logging/current_cost�d <���+       ��K	��=��A�
*

logging/current_cost�I <�%+       ��K	�>��A�
*

logging/current_cost�U <b;x+       ��K	4>��A�
*

logging/current_cost�d <�5F+       ��K	a>��A�
*

logging/current_cost�@ <��i�+       ��K	��>��A�
*

logging/current_cost�l <4�~+       ��K	i�>��A�*

logging/current_cost�W <���A+       ��K	��>��A�*

logging/current_cost�X <��_�+       ��K	�?��A�*

logging/current_cost�N <�؜-+       ��K	�J?��A�*

logging/current_cost[f <��+       ��K	�y?��A�*

logging/current_cost�U <ޞX+       ��K	�?��A�*

logging/current_costX <F��+       ��K	m�?��A�*

logging/current_costN] <�'J�+       ��K	_@��A�*

logging/current_cost�X <��>+       ��K	l4@��A�*

logging/current_cost0` <���+       ��K	~c@��A�*

logging/current_cost�R <�ӥ�+       ��K	�@��A�*

logging/current_costT] <��R+       ��K	��@��A�*

logging/current_cost�^ <�gM�+       ��K	��@��A�*

logging/current_cost�U <��	6+       ��K	&*A��A�*

logging/current_cost!\ <���+       ��K	DYA��A�*

logging/current_cost>` <+�ּ+       ��K	��A��A�*

logging/current_cost�U <j�+       ��K	4�A��A�*

logging/current_cost b <� 	�+       ��K	��A��A�*

logging/current_costp^ <��3o+       ��K	AB��A�*

logging/current_cost�V <��)W+       ��K	�BB��A�*

logging/current_cost+f <��,+       ��K	�qB��A�*

logging/current_costrY <�g�+       ��K	��B��A�*

logging/current_costW[ <���o+       ��K	~�B��A�*

logging/current_costpc <��\5+       ��K	VC��A�*

logging/current_cost)W <��q�+       ��K	�>C��A�*

logging/current_cost0a <��+       ��K	koC��A�*

logging/current_cost�U <�_v+       ��K	��C��A�*

logging/current_costa <�o1�+       ��K	��C��A�*

logging/current_cost�_ </�X3+       ��K	��C��A�*

logging/current_cost9X <��+       ��K	�&D��A�*

logging/current_cost`d <uu�v+       ��K	5VD��A�*

logging/current_costOU <����+       ��K	ۃD��A�*

logging/current_costyd <��b+       ��K	�D��A�*

logging/current_cost�Q <�YC�+       ��K	�D��A�*

logging/current_costh <�2Ƀ+       ��K	�E��A�*

logging/current_costNN <�K+       ��K	u<E��A�*

logging/current_cost$e <#�n+       ��K	kE��A�*

logging/current_cost P <�U�+       ��K	�E��A�*

logging/current_cost�j <�2��+       ��K	,�E��A�*

logging/current_cost-L <�Q�>+       ��K	H�E��A�*

logging/current_cost0h <��+       ��K	� F��A�*

logging/current_costN <�>2+       ��K	~NF��A�*

logging/current_cost�l < z�+       ��K	 }F��A�*

logging/current_cost�K <�6�[+       ��K	I�F��A�*

logging/current_cost�p <cE�+       ��K	��F��A�*

logging/current_cost�G <���+       ��K	�G��A�*

logging/current_cost-p <�*�+       ��K	�3G��A�*

logging/current_cost�G <�g�]+       ��K	aG��A�*

logging/current_cost,c <,�+       ��K	��G��A�*

logging/current_costV <���S+       ��K	��G��A�*

logging/current_cost�U <߃l+       ��K	2�G��A�*

logging/current_cost�c <һ3�+       ��K	�H��A�*

logging/current_costM <�%]+       ��K	�FH��A�*

logging/current_cost�\ <NFSh+       ��K	�rH��A�*

logging/current_cost�U <��3+       ��K	��H��A�*

logging/current_costkU <���+       ��K	��H��A�*

logging/current_cost�] <Z�� +       ��K	��H��A�*

logging/current_cost�N <��Vz+       ��K	�(I��A�*

logging/current_cost�X <~0�<+       ��K	$WI��A�*

logging/current_cost�U <�H�+       ��K	q�I��A�*

logging/current_costDQ <�++�+       ��K	��I��A�*

logging/current_cost�T <����+       ��K	��I��A�*

logging/current_cost�O <����+       ��K	 J��A�*

logging/current_cost�U <WV3-+       ��K	&>J��A�*

logging/current_cost;N <WA�+       ��K	�sJ��A�*

logging/current_costDT <�?Z+       ��K	&�J��A�*

logging/current_costJ\ <���9+       ��K	��J��A�*

logging/current_costM <Q�.+       ��K	K��A�*

logging/current_costIU <Z�+       ��K	R0K��A�*

logging/current_costb_ <���V+       ��K	�\K��A�*

logging/current_cost�\ <k�q+       ��K	��K��A�*

logging/current_cost�N <��f+       ��K	��K��A�*

logging/current_cost�R <#-L4+       ��K	�L��A�*

logging/current_cost�N <I��+       ��K	
ML��A�*

logging/current_cost�[ <ì��+       ��K	S�L��A�*

logging/current_cost�L <��^+       ��K	�L��A�*

logging/current_cost�X <�fY+       ��K	jM��A�*

logging/current_cost�I <���+       ��K	�RM��A�*

logging/current_costb <����+       ��K	��M��A�*

logging/current_cost%C <lx�+       ��K	��M��A�*

logging/current_cost�X <K��+       ��K	>N��A�*

logging/current_costPJ <y�Z*+       ��K	S;N��A�*

logging/current_cost�R <(q�+       ��K	ErN��A�*

logging/current_cost�U <?a>�+       ��K	%�N��A�*

logging/current_cost�H <�nي+       ��K	9�N��A�*

logging/current_cost=L <2s�+       ��K	�O��A�*

logging/current_costYO <�I�#+       ��K	�SO��A�*

logging/current_cost}H <�	׫+       ��K	��O��A�*

logging/current_costI <8�+       ��K	��O��A�*

logging/current_cost�U <_��+       ��K	9�O��A�*

logging/current_cost{A <m~?5+       ��K	�(P��A�*

logging/current_cost�N <�9>+       ��K		\P��A�*

logging/current_cost�F <)��3+       ��K	׏P��A�*

logging/current_cost�J <���$+       ��K	��P��A�*

logging/current_cost�E <���+       ��K	E�P��A�*

logging/current_cost�I <��+       ��K	I*Q��A�*

logging/current_cost�C <���+       ��K	>[Q��A�*

logging/current_cost�G <����+       ��K	��Q��A�*

logging/current_costZ <k��+       ��K	��Q��A�*

logging/current_cost�J <5~Z+       ��K	�Q��A�*

logging/current_cost�Y <v��+       ��K	z!R��A�*

logging/current_cost�J <[þ�+       ��K	wZR��A�*

logging/current_costXM <�W�+       ��K	�R��A�*

logging/current_costgP <�w	�+       ��K	��R��A�*

logging/current_cost�L <����+       ��K	k�R��A�*

logging/current_cost�N <^�~S+       ��K	, S��A�*

logging/current_costG <
""+       ��K	�QS��A�*

logging/current_cost�G <7��N+       ��K	�S��A�*

logging/current_cost�M <����+       ��K	F�S��A�*

logging/current_cost>M <ԅwH+       ��K	�S��A�*

logging/current_cost.F <γ�:+       ��K	�T��A�*

logging/current_cost�O <7C[+       ��K	�AT��A�*

logging/current_costJ <��LD+       ��K	�pT��A�*

logging/current_cost�F <`��s+       ��K	C�T��A�*

logging/current_costH <�w.+       ��K	��T��A�*

logging/current_cost�E <���+       ��K	�T��A�*

logging/current_costD <Ϫʯ+       ��K	�)U��A�*

logging/current_costpB <��C+       ��K	WU��A�*

logging/current_cost0D <B�+       ��K	�U��A�*

logging/current_costTD <���+       ��K	��U��A�*

logging/current_cost�C <����+       ��K	��U��A�*

logging/current_costC <�\>+       ��K	DV��A�*

logging/current_costDB <S7�+       ��K	�8V��A�*

logging/current_costUE <8A��+       ��K	�fV��A�*

logging/current_cost�B <�-�}+       ��K	~�V��A�*

logging/current_cost�@ <�9X+       ��K	��V��A�*

logging/current_coste? <��fH+       ��K	�V��A�*

logging/current_cost�B <!�S�+       ��K	>W��A�*

logging/current_cost�> <�8��+       ��K	�IW��A�*

logging/current_cost�= <�*�+       ��K	}W��A�*

logging/current_cost = <��D�+       ��K	��W��A�*

logging/current_cost@= <m@H+       ��K	B�W��A�*

logging/current_costM? <��ζ+       ��K	�X��A�*

logging/current_cost�A <��$�+       ��K	'HX��A�*

logging/current_cost7; <�[�<+       ��K	�|X��A�*

logging/current_cost�7 <�*��+       ��K	��X��A�*

logging/current_costS: <Sx.+       ��K	x�X��A�*

logging/current_cost�: <H���+       ��K	�Y��A�*

logging/current_cost�? <2��+       ��K	eFY��A�*

logging/current_cost�9 <W��x+       ��K	�tY��A�*

logging/current_costR: <�c�+       ��K	�Y��A�*

logging/current_costj7 <rh��+       ��K	d�Y��A�*

logging/current_cost�7 <Ɖ�+       ��K	Z��A�*

logging/current_cost�7 <��&j+       ��K	d8Z��A�*

logging/current_cost~9 <1�Y�+       ��K	�hZ��A�*

logging/current_costu0 <�@��+       ��K	Z��A�*

logging/current_cost90 <�/jy+       ��K	��Z��A�*

logging/current_cost�6 <��1�+       ��K	��Z��A�*

logging/current_cost�8 <��v�+       ��K	 -[��A�*

logging/current_costN/ <��ɧ+       ��K	�e[��A�*

logging/current_cost
. <�[��+       ��K	f�[��A�*

logging/current_costn. <(
q +       ��K	u�[��A�*

logging/current_cost�1 <h+       ��K	[�[��A�*

logging/current_cost�2 <�㾛+       ��K	�\��A�*

logging/current_cost�) <��+       ��K	 P\��A�*

logging/current_cost�, <��W+       ��K	��\��A�*

logging/current_cost�, <�PA+       ��K	��\��A�*

logging/current_cost�, <�@��+       ��K	��\��A�*

logging/current_costu* <9Ԍ+       ��K	]��A�*

logging/current_cost�) <��lb+       ��K	�D]��A�*

logging/current_costq, <��D�+       ��K	�t]��A�*

logging/current_cost�( <���+       ��K	��]��A�*

logging/current_cost�) <`ݠ�+       ��K	��]��A�*

logging/current_cost�) <RG	+       ��K	��]��A�*

logging/current_cost�% <r��+       ��K	�/^��A�*

logging/current_cost�& <"�+       ��K	�\^��A�*

logging/current_costW% <�E�+       ��K	��^��A�*

logging/current_cost$' <�&�+       ��K	�^��A�*

logging/current_cost�% <�[c+       ��K	��^��A�*

logging/current_cost�# <m��+       ��K	�_��A�*

logging/current_cost~" <��+       ��K	�?_��A�*

logging/current_cost�# <���-+       ��K	�l_��A�*

logging/current_cost�! <�c�p+       ��K	O�_��A�*

logging/current_cost�  <hڐ�+       ��K	r�_��A�*

logging/current_cost." <���+       ��K	��_��A�*

logging/current_cost <mBj+       ��K	/'`��A�*

logging/current_cost�! <\���+       ��K	V`��A�*

logging/current_cost7 <�[�j+       ��K	f�`��A�*

logging/current_cost� <M?3�+       ��K	W�`��A�*

logging/current_cost� <ϟ��+       ��K	��`��A�*

logging/current_cost
 <2��	+       ��K	ga��A�*

logging/current_cost� <�+       ��K	�:a��A�*

logging/current_cost� <��G+       ��K	$fa��A�*

logging/current_cost <���Z+       ��K	��a��A�*

logging/current_cost� <�,n+       ��K	ھa��A�*

logging/current_cost <G���+       ��K	v�a��A�*

logging/current_costM <��+       ��K	fb��A�*

logging/current_costb <(ٳ+       ��K	]Hb��A�*

logging/current_cost� <?&�t+       ��K	vb��A�*

logging/current_cost2 <m��+       ��K	Q�b��A�*

logging/current_cost6 <��]+       ��K	��b��A�*

logging/current_cost� <��O+       ��K	Pc��A�*

logging/current_cost� <sq�+       ��K	�/c��A�*

logging/current_cost4 <L�+       ��K	M\c��A�*

logging/current_cost� <���+       ��K	�c��A�*

logging/current_cost� <���+       ��K	J�c��A�*

logging/current_cost� <Ò�+       ��K	��c��A�*

logging/current_cost�  <C5��+       ��K	�d��A�*

logging/current_costW <�� �+       ��K	�Bd��A�*

logging/current_cost� <�?�+       ��K	Wtd��A�*

logging/current_cost <E�Z,+       ��K	 �d��A�*

logging/current_cost� <���+       ��K	�d��A�*

logging/current_cost <f�W+       ��K	 e��A�*

logging/current_cost� <8��+       ��K	�/e��A�*

logging/current_cost� <�l+       ��K	3]e��A�*

logging/current_cost  <è/�+       ��K	�e��A�*

logging/current_cost  <�f�V+       ��K	��e��A�*

logging/current_costU  <Щ�+       ��K	^�e��A�*

logging/current_cost���;b�+       ��K	D%f��A�*

logging/current_cost���;w.�S+       ��K	�Rf��A�*

logging/current_cost���;�ǿ+       ��K	�f��A�*

logging/current_cost� <r�  +       ��K	U�f��A�*

logging/current_cost���;/5 )+       ��K	��f��A�*

logging/current_cost��;��q�+       ��K	g��A�*

logging/current_costy��;��L+       ��K	�Fg��A�*

logging/current_costU��;\L��+       ��K	fyg��A�*

logging/current_costU��;�	N+       ��K	��g��A�*

logging/current_cost���;_�]+       ��K	��g��A�*

logging/current_costE��;xB�+       ��K	;h��A�*

logging/current_costT��;&WY+       ��K	�3h��A�*

logging/current_cost��;lLA�+       ��K	�`h��A�*

logging/current_cost���;�MM%+       ��K	��h��A�*

logging/current_cost"��;�P��+       ��K	��h��A�*

logging/current_cost$��;����+       ��K	)�h��A�*

logging/current_cost$��;u�+       ��K	�!i��A�*

logging/current_cost���;}�y+       ��K	oOi��A�*

logging/current_cost���;w��A+       ��K	ƀi��A�*

logging/current_cost���;E�+       ��K	ıi��A�*

logging/current_cost���;��~+       ��K	�i��A�*

logging/current_cost���;/��R+       ��K	5j��A�*

logging/current_cost)��;<2KX+       ��K	Z=j��A�*

logging/current_cost���;�-wd+       ��K	�kj��A�*

logging/current_cost���;Y�A�+       ��K	`�j��A�*

logging/current_cost��;sc�+       ��K	��j��A�*

logging/current_cost"��;�e�+       ��K	��j��A�*

logging/current_cost���;XR�+       ��K	B'k��A�*

logging/current_cost���;���+       ��K	|Wk��A�*

logging/current_cost���;�x)+       ��K	^�k��A�*

logging/current_costR��;&�zA+       ��K	��k��A�*

logging/current_cost>��;�;{�+       ��K	S�k��A�*

logging/current_costu��;o�)�+       ��K	Ml��A�*

logging/current_cost��;���+       ��K	�@l��A�*

logging/current_cost���;��Bs+       ��K	Uol��A�*

logging/current_costP��;��+       ��K	*�l��A�*

logging/current_cost���;����+       ��K	��l��A�*

logging/current_costd��;ħ�{+       ��K	I�l��A�*

logging/current_cost���;��^�+       ��K	�%m��A�*

logging/current_cost���;V���+       ��K	�Sm��A�*

logging/current_cost���;��5!+       ��K	�m��A�*

logging/current_coste��;ǘ�x+       ��K	үm��A�*

logging/current_costW��;*k�+       ��K	)�m��A�*

logging/current_cost���;A]�+       ��K	"n��A�*

logging/current_cost- <g�*�+       ��K	
<n��A�*

logging/current_cost2��;�'ǥ+       ��K	�kn��A�*

logging/current_cost� <z��+       ��K	��n��A�*

logging/current_costD7 <�X[+       ��K	��n��A�*

logging/current_cost�p <�gf+       ��K	)�n��A�*

logging/current_cost�� <5��+       ��K	,#o��A�*

logging/current_cost:0 <m�b+       ��K	2Qo��A�*

logging/current_cost�( <��i�+       ��K	�o��A�*

logging/current_cost$b <�$+       ��K	�o��A�*

logging/current_costM� <T^�++       ��K	o�o��A�*

logging/current_cost� <�<�O+       ��K	�p��A�*

logging/current_cost�m <.s3 +       ��K	:p��A�*

logging/current_cost� <Ə�+       ��K	ip��A�*

logging/current_cost�� <I�W�+       ��K	��p��A�*

logging/current_cost� <
;f+       ��K	��p��A�*

logging/current_cost�� <�I�@+       ��K	��p��A�*

logging/current_cost̊ <o�R�+       ��K	^!q��A�*

logging/current_costt� <&�i�+       ��K	�Sq��A�*

logging/current_costz� <[�K+       ��K	Ąq��A�*

logging/current_costf� <�#�+       ��K	C�q��A�*

logging/current_cost�� <�0Z+       ��K	��q��A�*

logging/current_cost�� <���+       ��K	r��A�*

logging/current_cost�� <[;��+       ��K	hAr��A�*

logging/current_cost�� <�&�+       ��K	0pr��A�*

logging/current_cost� <XiD+       ��K	��r��A�*

logging/current_cost
� <aq�q+       ��K	�r��A�*

logging/current_cost7� <U+       ��K	]s��A�*

logging/current_cost\� <!�"x+       ��K	�2s��A�*

logging/current_costl� <z+�f+       ��K	�_s��A�*

logging/current_cost�� <|�4�+       ��K	��s��A�*

logging/current_cost� <Hu�+       ��K	��s��A�*

logging/current_cost'� <�K�+       ��K	��s��A�*

logging/current_cost�� <�6=4+       ��K	5#t��A�*

logging/current_cost�� <���+       ��K	Tt��A�*

logging/current_cost�<��Q'+       ��K	2�t��A�*

logging/current_cost�� <�Rs<+       ��K	��t��A�*

logging/current_costl<��+       ��K	(�t��A�*

logging/current_cost�� <�TO+       ��K	_u��A�*

logging/current_cost�� <����+       ��K	5Cu��A�*

logging/current_cost	<.�K�+       ��K	�qu��A�*

logging/current_cost�� <: ߩ+       ��K	��u��A�*

logging/current_cost�� <���+       ��K	��u��A�*

logging/current_costc� <[�vR+       ��K	Mv��A�*

logging/current_cost5<k,�+       ��K	1v��A�*

logging/current_cost�� <%��:+       ��K	"`v��A�*

logging/current_cost�<��l+       ��K		�v��A�*

logging/current_cost|&<^��+       ��K	W�v��A�*

logging/current_cost�F<()+       ��K	��v��A�*

logging/current_cost\<�紕+       ��K	Nw��A�*

logging/current_costJ<Ӊi$+       ��K	�Iw��A�*

logging/current_cost'<��H�+       ��K	xxw��A�*

logging/current_costA<� ��+       ��K	-�w��A�*

logging/current_cost1<y�r+       ��K	��w��A�*

logging/current_cost�<�PG�+       ��K	zx��A�*

logging/current_costa'<tݴ+       ��K	�6x��A�*

logging/current_cost�<<3���+       ��K	�dx��A�*

logging/current_cost�<}R(+       ��K	��x��A�*

logging/current_cost�&<�.��+       ��K	�x��A�*

logging/current_cost�I<��	+       ��K	��x��A�*

logging/current_cost�,<��+       ��K	�y��A�*

logging/current_costS<�m�o+       ��K	�Iy��A�*

logging/current_costG4<�eb+       ��K	,wy��A�*

logging/current_cost�@<�1h+       ��K	e�y��A�*

logging/current_cost^<O���+       ��K	E�y��A�*

logging/current_cost�I<�q�'+       ��K	��y��A�*

logging/current_cost{<^��+       ��K	-z��A�*

logging/current_cost�<v���+       ��K	(\z��A�*

logging/current_cost$/<´+       ��K	�z��A�*

logging/current_cost�<9l��+       ��K	�z��A�*

logging/current_costw<��+       ��K	h�z��A�*

logging/current_cost<����+       ��K	X{��A�*

logging/current_cost|<�(�+       ��K	@B{��A�*

logging/current_costJ<>@b+       ��K	�{��A�*

logging/current_cost�#<���+       ��K	
�{��A�*

logging/current_cost�<�қ+       ��K	�(|��A�*

logging/current_cost�<B73g+       ��K	�p|��A�*

logging/current_costk%<"��+       ��K	�|��A�*

logging/current_costr� <�
s`+       ��K	��|��A�*

logging/current_cost�<�<��+       ��K	�?}��A�*

logging/current_cost�� <�jc+       ��K	u}��A�*

logging/current_cost�<���+       ��K	��}��A�*

logging/current_cost�<>�n+       ��K	��}��A�*

logging/current_costL� <m�#�+       ��K	�~��A�*

logging/current_cost�� <��+       ��K	�N~��A�*

logging/current_cost�<͛�+       ��K	��~��A�*

logging/current_cost�<�=t6+       ��K	��~��A�*

logging/current_cost1� <$�F+       ��K	b�~��A�*

logging/current_cost�� <$�S�+       ��K	�+��A�*

logging/current_cost�	<�A��+       ��K	�c��A�*

logging/current_coste� <�o+       ��K	���A�*

logging/current_cost�� <�J+       ��K	s���A�*

logging/current_cost� <����+       ��K	$ ���A�*

logging/current_cost<{r+       ��K	0���A�*

logging/current_cost�� <L�CS+       ��K	 b���A�*

logging/current_cost	� <'+       ��K	R����A�*

logging/current_cost�!<�2f�+       ��K	�ǀ��A�*

logging/current_cost� <��+       ��K	����A�*

logging/current_cost"� <�F?+       ��K	�*���A�*

logging/current_cost< ��[+       ��K	�Y���A�*

logging/current_costq!<7wRP+       ��K	{����A�*

logging/current_costH<�Yv�+       ��K	�����A�*

logging/current_costl� <�Ȼl+       ��K	�遨�A�*

logging/current_cost�<��s�+       ��K	s���A�*

logging/current_cost|� <�e�+       ��K	�P���A�*

logging/current_cost'!<#��t+       ��K	d���A�*

logging/current_costD<�}�+       ��K	-����A�*

logging/current_cost,<aO�+       ��K	�߂��A�*

logging/current_costn� <��V�+       ��K	���A�*

logging/current_cost�� <_@(+       ��K	7C���A�*

logging/current_cost�
<Z�F�+       ��K	�p���A�*

logging/current_costG<�D�+       ��K	4����A�*

logging/current_cost2� <�
��+       ��K	 Ӄ��A�*

logging/current_cost�� <&��o+       ��K	���A�*

logging/current_cost�� <k���+       ��K	�3���A�*

logging/current_cost�<�5z�+       ��K	�f���A�*

logging/current_cost� <�N��+       ��K	�����A�*

logging/current_cost�� <΋+�+       ��K	ʄ��A�*

logging/current_cost5� <e�I_+       ��K	�����A�*

logging/current_costk<�s�Y+       ��K	�'���A�*

logging/current_cost�� <��+       ��K	�����A�*

logging/current_cost�� <��/�+       ��K	�Å��A�*

logging/current_cost9<��t+       ��K	����A�*

logging/current_cost�� <eYC�+       ��K	�;���A�*

logging/current_coste� <p);�+       ��K	�u���A�*

logging/current_cost&� <0��+       ��K	³���A�*

logging/current_costH� <<��+       ��K	�����A�*

logging/current_cost�� <��Z+       ��K	�(���A�*

logging/current_costt� <Ǣ?�+       ��K	�]���A�*

logging/current_cost�� <�f�+       ��K	����A�*

logging/current_costƽ <tʙ+       ��K	�ʇ��A�*

logging/current_cost�� <�+L�+       ��K	F����A�*

logging/current_cost�'<�L�P+       ��K	�-���A�*

logging/current_cost,�<ѵP�+       ��K	�_���A�*

logging/current_cost;�<-T`�+       ��K	.����A�*

logging/current_costT;<c�w+       ��K	�҈��A�*

logging/current_cost��<5rD+       ��K	K
���A�*

logging/current_cost�U<>��+       ��K	�9���A�*

logging/current_cost%-<b�4+       ��K	/o���A�*

logging/current_cost��<#�wW+       ��K	餉��A�*

logging/current_cost��<7�ݴ+       ��K	cӉ��A�*

logging/current_cost�\<��4�+       ��K	B���A�*

logging/current_cost�U<�(�u+       ��K	b1���A�*

logging/current_cost;S<�%�s+       ��K	t`���A�*

logging/current_cost}Q<�+       ��K	C����A�*

logging/current_cost�}<&)�T+       ��K	�����A�*

logging/current_cost�L<:L6+       ��K	�슨�A�*

logging/current_cost"<�N�+       ��K	c���A�*

logging/current_cost�5<=�+       ��K	O���A�*

logging/current_costNo<2oy,+       ��K	�����A�*

logging/current_cost�@<@��+       ��K	Ҹ���A�*

logging/current_cost43<7���+       ��K	Q��A�*

logging/current_costG <���V+       ��K		,���A�*

logging/current_cost=+<:�T+       ��K	�\���A�*

logging/current_cost&<[}~�+       ��K	s����A�*

logging/current_cost}<b��1+       ��K	����A�*

logging/current_cost�� <�մ�+       ��K	�패�A�*

logging/current_cost�� </da+       ��K	6���A�*

logging/current_costV<��T+       ��K	�L���A�*

logging/current_costj<��o+       ��K	p}���A�*

logging/current_cost<%�P�+       ��K	t����A�*

logging/current_cost�� <�	#Y+       ��K	�܍��A�*

logging/current_costs� <�je+       ��K	W���A�*

logging/current_cost	<���+       ��K	�;���A�*

logging/current_cost�<�7��+       ��K	=n���A�*

logging/current_cost�� <�@��+       ��K	{����A�*

logging/current_cost�� <z�R+       ��K	5ʎ��A�*

logging/current_cost�� <��� +       ��K	����A�*

logging/current_cost3� <�,��+       ��K	i*���A�*

logging/current_cost�� <^�<�+       ��K	Y���A�*

logging/current_cost$� <�kMi+       ��K	҉���A�*

logging/current_cost� <*7+       ��K	̷���A�*

logging/current_cost�� <�*>�+       ��K	�叨�A�*

logging/current_cost�� <-���+       ��K	#���A�*

logging/current_cost�� <�_�+       ��K	$B���A�*

logging/current_cost�� <.���+       ��K	�o���A�*

logging/current_costc� <�є�+       ��K	=����A�*

logging/current_cost�� <��1,+       ��K	ϐ��A�*

logging/current_cost� <�Ҫ+       ��K	�����A�*

logging/current_cost� <��P+       ��K	-B���A�*

logging/current_cost�� <��;?+       ��K	Yt���A�*

logging/current_costw� <v��+       ��K	
����A�*

logging/current_cost|� <�Mb}+       ��K	1ב��A�*

logging/current_cost�� <�O��+       ��K	����A�*

logging/current_costT� <c�:+       ��K	B���A�*

logging/current_costF� <��k+       ��K	�t���A�*

logging/current_cost�� <��F�+       ��K	�����A�*

logging/current_costT� <VN�+       ��K	Ւ��A�*

logging/current_cost�� <�#_d+       ��K	����A�*

logging/current_cost�� <ݧ+       ��K	R3���A�*

logging/current_cost� <���;+       ��K	�a���A�*

logging/current_cost�� <�V�+       ��K	G����A�*

logging/current_cost�� <�I�+       ��K	���A�*

logging/current_cost�� <0�,+       ��K	���A�*

logging/current_cost٨ <�r�+       ��K	����A�*

logging/current_costp� <|�+       ��K	#L���A�*

logging/current_costt� <I^B
+       ��K	�x���A�*

logging/current_cost s <�p+       ��K	�����A�*

logging/current_cost£ <LO�L+       ��K	�ה��A�*

logging/current_cost� <��+       ��K	���A�*

logging/current_costz� <�ϊ�+       ��K	q3���A�*

logging/current_costΉ <N�� +       ��K	re���A�*

logging/current_cost� <K�ދ+       ��K	��A�*

logging/current_cost�� <�k%+       ��K	��A�*

logging/current_cost�� <o:^�+       ��K	�����A�*

logging/current_cost�� <��Ǵ+       ��K	�$���A�*

logging/current_cost�� <�N+       ��K	�Q���A�*

logging/current_cost,� <�AW+       ��K	����A�*

logging/current_cost�� <��+       ��K	�����A�*

logging/current_cost� <�6+       ��K	�ݖ��A�*

logging/current_cost�� <[�+       ��K	X���A�*

logging/current_cost%� <���Y+       ��K	<���A�*

logging/current_cost%� <N�+       ��K	�h���A�*

logging/current_cost�� <�G�A+       ��K	����A�*

logging/current_costN� <�_�z+       ��K	�×��A�*

logging/current_costݑ <<�+       ��K	|��A�*

logging/current_cost|� <�Y+       ��K	�$���A�*

logging/current_cost:� <.^6*+       ��K	lY���A�*

logging/current_costy� <���+       ��K	]����A�*

logging/current_cost}� <5|�+       ��K	%����A�*

logging/current_costu <�vk+       ��K	Z蘨�A�*

logging/current_cost;� <R%p�+       ��K	����A�*

logging/current_cost9� <_�%+       ��K	�G���A�*

logging/current_cost� <��(�+       ��K	nu���A�*

logging/current_costj� <vv�+       ��K	(����A�*

logging/current_cost�� <�;�+       ��K	�֙��A�*

logging/current_costi� <
\�A+       ��K	G���A�*

logging/current_costt� <�"�+       ��K	�4���A�*

logging/current_cost3� </��J+       ��K	d���A�*

logging/current_cost!� <½,+       ��K	)����A�*

logging/current_cost�z <�U�g+       ��K	�Ț��A�*

logging/current_cost� <�+       ��K	����A�*

logging/current_costW� <�3z+       ��K	�%���A�*

logging/current_costy� <餩�+       ��K	W���A�*

logging/current_cost� <��7m+       ��K	#����A�*

logging/current_costP� <H�3+       ��K	�����A�*

logging/current_cost�� <K���+       ��K	�ᛨ�A�*

logging/current_cost�� <�YPn+       ��K	���A�*

logging/current_cost\z <�=�+       ��K	D���A�*

logging/current_cost�r <̼2�+       ��K	�s���A�*

logging/current_costI� <8��+       ��K	ϧ���A�*

logging/current_costʣ <,�f+       ��K	ٜ��A�*

logging/current_costRh <���%+       ��K	����A�*

logging/current_cost�� <�z+       ��K	�6���A�*

logging/current_cost�i <2(q�+       ��K	g���A�*

logging/current_costNo <mȹ�+       ��K	w����A�*

logging/current_cost� < ��A+       ��K	.Ý��A�*

logging/current_cost΋ <����+       ��K	��A�*

logging/current_costrq <����+       ��K	����A�*

logging/current_costt� <��+       ��K	HN���A�*

logging/current_cost�� <z@An+       ��K	j}���A�*

logging/current_cost'� <����+       ��K	�����A�*

logging/current_cost} <a�.+       ��K	�ޞ��A�*

logging/current_cost�e <��"b+       ��K	����A�*

logging/current_cost�� <�U�+       ��K	�<���A�*

logging/current_cost7� <y�UQ+       ��K	�m���A�*

logging/current_cost�u <�e�+       ��K	�����A�*

logging/current_cost!� <��+       ��K	�ɟ��A�*

logging/current_costQ� <�zk2+       ��K	�����A�*

logging/current_cost�} <	�r+       ��K	a)���A�*

logging/current_cost!s <�j+       ��K	:X���A�*

logging/current_cost%� <��^+       ��K	�����A�*

logging/current_cost� <���+       ��K	����A�*

logging/current_costߧ <n ��+       ��K	ࠨ�A�*

logging/current_costJ� <���+       ��K	P���A�*

logging/current_cost�� <���+       ��K	]8���A�*

logging/current_cost0e <�i >+       ��K	�f���A�*

logging/current_cost� <"A��+       ��K	c����A�*

logging/current_costD� <���5+       ��K	�����A�*

logging/current_cost0� <���+       ��K	[졨�A�*

logging/current_cost%u <��i)+       ��K	����A�*

logging/current_cost	k <ڢ��+       ��K	�H���A�*

logging/current_costo <S�`}+       ��K	�t���A�*

logging/current_cost2� <;=�+       ��K	+����A�*

logging/current_cost]� <ޤ΍+       ��K	Т��A�*

logging/current_cost�x <�2W9+       ��K	m����A�*

logging/current_cost�� <��+       ��K	�+���A�*

logging/current_cost/� <����+       ��K	�Z���A�*

logging/current_cost�j <�M|e+       ��K	%����A�*

logging/current_cost�� <��UX+       ��K	�����A�*

logging/current_costˑ <���+       ��K	}壨�A�*

logging/current_cost�� <����+       ��K	����A�*

logging/current_cost�{ <&QL�+       ��K	�@���A�*

logging/current_cost�w <�p�c+       ��K	n���A�*

logging/current_cost�� <�~k�+       ��K	J����A�*

logging/current_costlj <��
�+       ��K	�Ǥ��A�*

logging/current_cost
� <����+       ��K	�����A�*

logging/current_costY� <����+       ��K	�"���A� *

logging/current_cost<� <[|�<+       ��K	�W���A� *

logging/current_cost
x <�8�0+       ��K	����A� *

logging/current_cost;� <b� +       ��K	]����A� *

logging/current_cost҈ <���+       ��K	�����A� *

logging/current_cost�x <t�BE+       ��K	%���A� *

logging/current_cost�n <����+       ��K	�P���A� *

logging/current_costUv <!�+       ��K	'����A� *

logging/current_cost� <��#+       ��K	W����A� *

logging/current_cost� <��h+       ��K	ᦨ�A� *

logging/current_cost� <��dk+       ��K	����A� *

logging/current_costܢ <�,B+       ��K	�D���A� *

logging/current_costɁ <'��A+       ��K	�s���A� *

logging/current_cost�o <{N�+       ��K	r����A� *

logging/current_cost�\ <��	+       ��K	�駨�A� *

logging/current_cost�q <�D�+       ��K	����A� *

logging/current_costt� <��K+       ��K	�H���A� *

logging/current_cost� <��%+       ��K	�y���A� *

logging/current_costׇ <B9��+       ��K	˨���A� *

logging/current_cost� <o}=+       ��K	�ը��A� *

logging/current_cost� <.!9[+       ��K	����A� *

logging/current_cost�h <V"� +       ��K	5���A� *

logging/current_cost�V <�!��+       ��K	c���A� *

logging/current_cost�t <�v{d+       ��K	�����A� *

logging/current_cost� <D`/+       ��K	㽩��A� *

logging/current_cost'� <1v*+       ��K	v��A�!*

logging/current_cost�� <hUO�+       ��K	����A�!*

logging/current_cost�l <y���+       ��K	�M���A�!*

logging/current_cost"� <LR2�+       ��K	�|���A�!*

logging/current_costt� <;��+       ��K	����A�!*

logging/current_cost�j <�Țj+       ��K	�ڪ��A�!*

logging/current_cost�U <��[q+       ��K	�	���A�!*

logging/current_cost�� <�F�+       ��K	/;���A�!*

logging/current_costY� <��	{+       ��K	dj���A�!*

logging/current_cost�Z <��j4+       ��K	����A�!*

logging/current_costKz <�.��+       ��K	�ƫ��A�!*

logging/current_costg� <��e�+       ��K	�����A�!*

logging/current_costY� <k�+       ��K	�"���A�!*

logging/current_cost�s <;�pu+       ��K	�Q���A�!*

logging/current_cost� <���+       ��K	]~���A�!*

logging/current_cost� <*���+       ��K	۬���A�!*

logging/current_cost�{ <3Ӛ+       ��K	?۬��A�!*

logging/current_cost�f <>��+       ��K	����A�!*

logging/current_cost�� <i+c�+       ��K	*5���A�!*

logging/current_cost�� <#X�+       ��K	lb���A�!*

logging/current_cost^ <�'\�+       ��K	㐭��A�!*

logging/current_cost�T <��Y�+       ��K	r����A�!*

logging/current_cost� <�zR+       ��K	�뭨�A�!*

logging/current_costD� <YG�N+       ��K	����A�!*

logging/current_cost7\ <[vm�+       ��K	FF���A�!*

logging/current_cost�c <��+       ��K	{t���A�!*

logging/current_costj~ <v�Q+       ��K	\����A�"*

logging/current_costwV <f�|�+       ��K	�Ϯ��A�"*

logging/current_costoj <m��+       ��K	�����A�"*

logging/current_cost� <=>�-+       ��K	�*���A�"*

logging/current_cost~h <H��+       ��K	X���A�"*

logging/current_cost�y <����+       ��K	j����A�"*

logging/current_cost� <,+       ��K	�����A�"*

logging/current_costDk <���+       ��K	U䯨�A�"*

logging/current_cost�� <�v�]+       ��K	����A�"*

logging/current_cost�� <t9�+       ��K	A���A�"*

logging/current_costpi <�S�{+       ��K	-n���A�"*

logging/current_cost'B <{�vJ+       ��K	����A�"*

logging/current_cost�i <��w�+       ��K	PͰ��A�"*

logging/current_cost�� <���+       ��K	[����A�"*

logging/current_cost*� <I52�+       ��K	,���A�"*

logging/current_cost�� <Z���+       ��K	wZ���A�"*

logging/current_cost>O <�T9+       ��K	≱��A�"*

logging/current_costd <�U��+       ��K	����A�"*

logging/current_cost�| <.�1+       ��K	�㱨�A�"*

logging/current_cost�x <�N�5+       ��K	@���A�"*

logging/current_cost{p <mv��+       ��K	j>���A�"*

logging/current_cost,W <�~v�+       ��K	�s���A�"*

logging/current_cost�r <���+       ��K	"����A�"*

logging/current_cost�� <VKԲ+       ��K	�Բ��A�"*

logging/current_cost�w <��I+       ��K	�����A�"*

logging/current_cost�n <�Yϳ+       ��K	C-���A�#*

logging/current_cost�? <��n!+       ��K	$a���A�#*

logging/current_cost�Z <��+       ��K	=����A�#*

logging/current_cost�� <�|��+       ��K	��A�#*

logging/current_cost�f <~��+       ��K	�����A�#*

logging/current_cost�y <��+       ��K	� ���A�#*

logging/current_cost0F <*�o�+       ��K	�M���A�#*

logging/current_cost�e <�uGr+       ��K	�{���A�#*

logging/current_cost�| <�n�+       ��K	����A�#*

logging/current_cost@r <̷�W+       ��K	�ڴ��A�#*

logging/current_cost2{ <��:�+       ��K	0	���A�#*

logging/current_cost�J <��+       ��K	L8���A�#*

logging/current_cost�r <G��+       ��K	�i���A�#*

logging/current_cost�� <޷Rc+       ��K	�����A�#*

logging/current_cost�{ <�^��+       ��K	Sȵ��A�#*

logging/current_costCu <gr�7+       ��K	K����A�#*

logging/current_cost�� <�y�+       ��K	�(���A�#*

logging/current_costni <�{{�+       ��K	IW���A�#*

logging/current_costD� <HK�+       ��K	O����A�#*

logging/current_cost6p <*�N>+       ��K	õ���A�#*

logging/current_costu| <Q��+       ��K	�㶨�A�#*

logging/current_costG <[�f+       ��K	����A�#*

logging/current_cost�l <�&:n+       ��K	�C���A�#*

logging/current_costg� <�Bi�+       ��K	�s���A�#*

logging/current_cost�� <0��^+       ��K		����A�#*

logging/current_cost� <�c�O+       ��K	�з��A�#*

logging/current_cost�a <�p^�+       ��K	^���A�$*

logging/current_cost�c <F��E+       ��K	/3���A�$*

logging/current_costeH <3�#�+       ��K	b���A�$*

logging/current_costc` <��.�+       ��K	u����A�$*

logging/current_cost�\ <��|U+       ��K	�����A�$*

logging/current_cost�7 <H�L+       ��K	�A�$*

logging/current_costK <����+       ��K	����A�$*

logging/current_cost(] <��M�+       ��K	�K���A�$*

logging/current_cost�v <2�9a+       ��K	Wy���A�$*

logging/current_cost$� <�\�+       ��K	E����A�$*

logging/current_costW� <	s�+       ��K	�Թ��A�$*

logging/current_costޏ <���+       ��K	����A�$*

logging/current_costB� <^'+       ��K	L/���A�$*

logging/current_cost�� <�Y8L+       ��K	�]���A�$*

logging/current_costț <�"��+       ��K	����A�$*

logging/current_cost�T <xg�+       ��K	̺���A�$*

logging/current_cost@_ <$��+       ��K	B溨�A�$*

logging/current_cost.f <iT�o+       ��K	����A�$*

logging/current_costGs <�C�+       ��K	B���A�$*

logging/current_cost � <��+       ��K	O����A�$*

logging/current_costz <�*<�+       ��K	ϻ��A�$*

logging/current_cost�t <���+       ��K	]���A�$*

logging/current_cost�v <�2!�+       ��K	�9���A�$*

logging/current_cost�m <4W��+       ��K	�z���A�$*

logging/current_costz <OL�+       ��K	�����A�$*

logging/current_cost/q <��@�+       ��K	~鼨�A�$*

logging/current_cost/k <����+       ��K	�"���A�%*

logging/current_cost�_ <Y��i+       ��K	�W���A�%*

logging/current_cost` <��'e+       ��K	�����A�%*

logging/current_costU� <�m��+       ��K	�����A�%*

logging/current_costp� <�o�6+       ��K	O����A�%*

logging/current_cost� <��++       ��K	�/���A�%*

logging/current_cost�B <vYo�+       ��K	c���A�%*

logging/current_costZ <6��>+       ��K	R����A�%*

logging/current_costŕ <Wh@M+       ��K	�ƾ��A�%*

logging/current_cost̒ <��z+       ��K	-����A�%*

logging/current_cost;� <�Ϭ�+       ��K	�%���A�%*

logging/current_cost�h <����+       ��K	�W���A�%*

logging/current_costhe <�cx�+       ��K	Ј���A�%*

logging/current_cost=S <���<+       ��K	n����A�%*

logging/current_costa <D�c+       ��K	꿨�A�%*

logging/current_costKz <��e+       ��K	I"���A�%*

logging/current_cost� <��u�+       ��K	�R���A�%*

logging/current_cost�� <E���+       ��K	����A�%*

logging/current_cost�q <���+       ��K	����A�%*

logging/current_cost�w <]n+       ��K	�����A�%*

logging/current_cost9k <U��+       ��K	�&���A�%*

logging/current_costLX <:�T�+       ��K	?T���A�%*

logging/current_cost�X < r�`+       ��K	[����A�%*

logging/current_cost�A <,6�%+       ��K	Ѳ���A�%*

logging/current_costuK <K̤+       ��K	%����A�%*

logging/current_cost:r <^h�+       ��K	�¨�A�&*

logging/current_cost�X <���+       ��K	�K¨�A�&*

logging/current_cost!t <ҭ.�+       ��K	�y¨�A�&*

logging/current_cost�j <����+       ��K	�¨�A�&*

logging/current_cost�b <C��+       ��K	I�¨�A�&*

logging/current_costS� <{�r�+       ��K	�è�A�&*

logging/current_costn\ <��F+       ��K	�4è�A�&*

logging/current_costL~ <��?+       ��K	.bè�A�&*

logging/current_costDR <�y'+       ��K	f�è�A�&*

logging/current_cost�o </�q+       ��K	��è�A�&*

logging/current_cost7� <�7gO+       ��K	2�è�A�&*

logging/current_cost7� <qX�p+       ��K	&Ĩ�A�&*

logging/current_cost� <ʁ�+       ��K	wVĨ�A�&*

logging/current_cost� <z�z�+       ��K	��Ĩ�A�&*

logging/current_costˀ <y��+       ��K	��Ĩ�A�&*

logging/current_cost�� <�Ce+       ��K	z�Ĩ�A�&*

logging/current_cost� <�3��+       ��K	�Ũ�A�&*

logging/current_cost� <= @�+       ��K	�?Ũ�A�&*

logging/current_cost�x <�a>�+       ��K	pŨ�A�&*

logging/current_cost�k <��w}+       ��K	̞Ũ�A�&*

logging/current_cost�s <θ�+       ��K	n�Ũ�A�&*

logging/current_cost�m <QG��+       ��K	��Ũ�A�&*

logging/current_cost�� <y���+       ��K	�,ƨ�A�&*

logging/current_costj <3R��+       ��K	�Yƨ�A�&*

logging/current_cost�c <�AZ+       ��K	$�ƨ�A�&*

logging/current_costHT <�	�1+       ��K	�ƨ�A�&*

logging/current_cost4R <b��/+       ��K	*�ƨ�A�'*

logging/current_cost�| <u~��+       ��K	#Ǩ�A�'*

logging/current_cost*_ <����+       ��K	�CǨ�A�'*

logging/current_cost�Y <q��+       ��K	�oǨ�A�'*

logging/current_costN <щd9+       ��K	�Ǩ�A�'*

logging/current_cost�: <�d�O+       ��K	n�Ǩ�A�'*

logging/current_cost�� <:�i+       ��K	 �Ǩ�A�'*

logging/current_cost[` <�p�%+       ��K	(Ȩ�A�'*

logging/current_cost�� <��um+       ��K	�UȨ�A�'*

logging/current_cost28 <�)�:+       ��K	Z�Ȩ�A�'*

logging/current_cost	^ <�d�+       ��K	�Ȩ�A�'*

logging/current_cost*� <���+       ��K	��Ȩ�A�'*

logging/current_costyq <�:8+       ��K	7ɨ�A�'*

logging/current_cost� <�c�+       ��K	�Eɨ�A�'*

logging/current_cost2Y <���+       ��K	Itɨ�A�'*

logging/current_cost)i <����+       ��K	ʡɨ�A�'*

logging/current_costte <���I+       ��K	}�ɨ�A�'*

logging/current_cost\n <���+       ��K	��ɨ�A�'*

logging/current_cost� <N΁+       ��K	�0ʨ�A�'*

logging/current_cost�� <�+��+       ��K	�^ʨ�A�'*

logging/current_cost�� <o��+       ��K	4�ʨ�A�'*

logging/current_cost(H <�'=+       ��K	9�ʨ�A�'*

logging/current_cost]T <8��+       ��K	j�ʨ�A�'*

logging/current_cost� <D#a�+       ��K	�˨�A�'*

logging/current_costU� <��+       ��K	YK˨�A�'*

logging/current_cost� <B�a+       ��K	y˨�A�(*

logging/current_coste <�eb{+       ��K	Ѧ˨�A�(*

logging/current_cost!x <Y�3�+       ��K	J�˨�A�(*

logging/current_cost6s <O$_+       ��K	3̨�A�(*

logging/current_cost�j <�zqi+       ��K	65̨�A�(*

logging/current_cost�� <Q���+       ��K	Xę�A�(*

logging/current_cost�m <�n�V+       ��K	ґ̨�A�(*

logging/current_costVb <Q��+       ��K	!�̨�A�(*

logging/current_cost�K <y2g+       ��K	�̨�A�(*

logging/current_costBY <�;��+       ��K	�!ͨ�A�(*

logging/current_cost� <����+       ��K	�Oͨ�A�(*

logging/current_cost�� <bz+       ��K	�}ͨ�A�(*

logging/current_cost� <�8��+       ��K	��ͨ�A�(*

logging/current_cost�z <�^?�+       ��K	��ͨ�A�(*

logging/current_cost�x <��*.+       ��K	YΨ�A�(*

logging/current_costa} <���+       ��K	m5Ψ�A�(*

logging/current_cost�U <��z+       ��K	�fΨ�A�(*

logging/current_cost [ <c��+       ��K	>�Ψ�A�(*

logging/current_cost�| <�E�+       ��K	�Ψ�A�(*

logging/current_cost� <�"xk+       ��K	O�Ψ�A�(*

logging/current_cost�� <5_�+       ��K	%Ϩ�A�(*

logging/current_costݒ <����+       ��K	eTϨ�A�(*

logging/current_cost�� <�4�b+       ��K	��Ϩ�A�(*

logging/current_costl <�7C@+       ��K	��Ϩ�A�(*

logging/current_costw <d��+       ��K	h�Ϩ�A�(*

logging/current_cost�` <���h+       ��K	�Ш�A�(*

logging/current_cost�h <��+       ��K	v;Ш�A�)*

logging/current_cost� <F�\+       ��K	jШ�A�)*

logging/current_cost{| <f��>+       ��K	��Ш�A�)*

logging/current_cost�~ <i�O�+       ��K	K�Ш�A�)*

logging/current_cost�G <���+       ��K	��Ш�A�)*

logging/current_cost$e <��"�+       ��K	d*Ѩ�A�)*

logging/current_costڙ <�YX�+       ��K	_Ѩ�A�)*

logging/current_cost�� <�P�A+       ��K	��Ѩ�A�)*

logging/current_cost| <|.'�+       ��K	(�Ѩ�A�)*

logging/current_cost(j <�@I+       ��K	��Ѩ�A�)*

logging/current_cost�t <�9�+       ��K	�9Ҩ�A�)*

logging/current_cost�p <�ai�+       ��K	��Ҩ�A�)*

logging/current_cost9^ <V��=+       ��K	!�Ҩ�A�)*

logging/current_cost-t <{D��+       ��K	�)Ө�A�)*

logging/current_cost�| <�ro[+       ��K	�`Ө�A�)*

logging/current_cost| <�ό+       ��K	��Ө�A�)*

logging/current_cost�F <L_	+       ��K	��Ө�A�)*

logging/current_cost�d <�+�2+       ��K	u#Ԩ�A�)*

logging/current_cost�� <���+       ��K	�WԨ�A�)*

logging/current_cost[� <��ɬ+       ��K	�Ԩ�A�)*

logging/current_cost� <;Eo+       ��K	O�Ԩ�A�)*

logging/current_cost�d <V�b++       ��K	k�Ԩ�A�)*

logging/current_cost�� <��+       ��K	�#ը�A�)*

logging/current_cost9n <�*�+       ��K	�`ը�A�)*

logging/current_cost�R <�u�+       ��K	�ը�A�)*

logging/current_cost� <��z+       ��K	��ը�A�)*

logging/current_cost�t <	�z�+       ��K	�֨�A�**

logging/current_cost:� <$�+       ��K	a?֨�A�**

logging/current_costHF <[o�R+       ��K	t֨�A�**

logging/current_costT <�q.+       ��K	��֨�A�**

logging/current_cost̎ <�HT+       ��K	��֨�A�**

logging/current_cost4v <�^�+       ��K	�ר�A�**

logging/current_costKf <��+       ��K	�0ר�A�**

logging/current_cost�k <����+       ��K	�bר�A�**

logging/current_cost9h <��_+       ��K	ܒר�A�**

logging/current_cost{g <f��+       ��K	X�ר�A�**

logging/current_costP] <��>�+       ��K	��ר�A�**

logging/current_cost�} <9(d�+       ��K	�#ب�A�**

logging/current_cost�} <�XV+       ��K	sVب�A�**

logging/current_cost�� <uy�+       ��K	,�ب�A�**

logging/current_cost�B <��I�+       ��K	��ب�A�**

logging/current_cost~i <�qC0+       ��K	��ب�A�**

logging/current_costę <� +       ��K	V3٨�A�**

logging/current_cost�w <���c+       ��K	gf٨�A�**

logging/current_cost�{ <���b+       ��K	��٨�A�**

logging/current_cost` <�z2�+       ��K	 �٨�A�**

logging/current_cost} <� h�+       ��K	�٨�A�**

logging/current_cost[g <��#�+       ��K	�!ڨ�A�**

logging/current_cost�[ <��]�+       ��K	NWڨ�A�**

logging/current_cost�z <�+       ��K	�ڨ�A�**

logging/current_cost�� <�Vc+       ��K	ݺڨ�A�**

logging/current_cost� <�z�+       ��K	!�ڨ�A�+*

logging/current_cost�M <�}�+       ��K	�ۨ�A�+*

logging/current_cost�o <�h	�+       ��K	Iۨ�A�+*

logging/current_costR� <�'`+       ��K	|ۨ�A�+*

logging/current_costLc <Zq��+       ��K	z�ۨ�A�+*

logging/current_costj <�+       ��K	��ۨ�A�+*

logging/current_cost�N <w�Ā+       ��K	 -ܨ�A�+*

logging/current_cost;p <�2P+       ��K	�fܨ�A�+*

logging/current_cost$s <yz.�+       ��K	��ܨ�A�+*

logging/current_cost�X <>�k�+       ��K	^�ܨ�A�+*

logging/current_cost�s <�U]k+       ��K	]ݨ�A�+*

logging/current_cost̉ <�FH+       ��K	FBݨ�A�+*

logging/current_cost� <H�h�+       ��K	<�ݨ�A�+*

logging/current_cost:I <p�[+       ��K	-�ݨ�A�+*

logging/current_cost^g <P�H+       ��K	��ݨ�A�+*

logging/current_costג <�
�=+       ��K	�ި�A�+*

logging/current_cost�g <���F+       ��K	�Tި�A�+*

logging/current_cost_~ <���@+       ��K	��ި�A�+*

logging/current_costO[ <�r�+       ��K	(�ި�A�+*

logging/current_cost � <NK�+       ��K	�4ߨ�A�+*

logging/current_cost�d <l�ϯ+       ��K	�dߨ�A�+*

logging/current_cost�F <�I+       ��K	5�ߨ�A�+*

logging/current_cost� <����+       ��K	z�ߨ�A�+*

logging/current_cost#} <�?V�+       ��K	���A�+*

logging/current_costӀ <�N��+       ��K	VA��A�+*

logging/current_costbT <c(�C+       ��K	�q��A�+*

logging/current_cost�^ <��h8+       ��K	#���A�,*

logging/current_cost4� <+��+       ��K	����A�,*

logging/current_costL� <�f�Q+       ��K	���A�,*

logging/current_costhq <1Y��+       ��K	�Z��A�,*

logging/current_cost�G <؂d�+       ��K	5���A�,*

logging/current_costU� <x.��+       ��K	j���A�,*

logging/current_costk <�P�+       ��K	���A�,*

logging/current_costuP <���+       ��K	�C��A�,*

logging/current_cost
� <R���+       ��K	1v��A�,*

logging/current_costh~ <��+:+       ��K	����A�,*

logging/current_cost�| <���+       ��K	����A�,*

logging/current_costPM <���H+       ��K	U'��A�,*

logging/current_cost�J <p��+       ��K	_��A�,*

logging/current_cost�� <]6�+       ��K	����A�,*

logging/current_cost�q <]��+       ��K	h���A�,*

logging/current_costli <`}4�+       ��K	���A�,*

logging/current_costPd <�D/!+       ��K	�R��A�,*

logging/current_costG� <P��+       ��K	a���A�,*

logging/current_cost�o <އY�+       ��K	����A�,*

logging/current_cost\S <W�(+       ��K	���A�,*

logging/current_cost�w <����+       ��K	z��A�,*

logging/current_cost?� <��Ϳ+       ��K	_R��A�,*

logging/current_cost�} <�}E[+       ��K	����A�,*

logging/current_cost�E <Fv�:+       ��K	���A�,*

logging/current_costs^ <��i�+       ��K	(���A�,*

logging/current_cost� <��)�+       ��K	y��A�-*

logging/current_cost> <7@��+       ��K	Q��A�-*

logging/current_cost�d <���u+       ��K	����A�-*

logging/current_cost�d <<�
+       ��K	 ���A�-*

logging/current_cost � <(K+       ��K	����A�-*

logging/current_cost ^ <<!��+       ��K	|<��A�-*

logging/current_cost` <��F+       ��K	|��A�-*

logging/current_cost;t <� ��+       ��K	����A�-*

logging/current_cost�� <�%|+       ��K	����A�-*

logging/current_cost� <�Kn�+       ��K	���A�-*

logging/current_cost�E <C�7+       ��K	�U��A�-*

logging/current_cost�d <΃.+       ��K	���A�-*

logging/current_costܦ <��+       ��K	����A�-*

logging/current_cost�{ <7{b�+       ��K	1���A�-*

logging/current_cost�` <!K�+       ��K	J!��A�-*

logging/current_cost�j <Ǐ�+       ��K	�V��A�-*

logging/current_costW� <$�oI+       ��K	Ŋ��A�-*

logging/current_cost%h <��:+       ��K	����A�-*

logging/current_cost�h <$���+       ��K	����A�-*

logging/current_cost�x <� +       ��K	3$��A�-*

logging/current_cost� <�oGz+       ��K	�Y��A�-*

logging/current_cost� <�ʺ�+       ��K	����A�-*

logging/current_cost 3 <�B��+       ��K	����A�-*

logging/current_cost�z <w�v+       ��K	�"��A�-*

logging/current_cost� <���+       ��K	�p��A�-*

logging/current_cost�w <E�=7+       ��K	���A�-*

logging/current_cost�o <F��f+       ��K	����A�.*

logging/current_cost|W <`�/+       ��K	�-��A�.*

logging/current_cost�i <@oTX+       ��K	4i��A�.*

logging/current_cost�X <�+�+       ��K	S���A�.*

logging/current_cost�f <*3�<+       ��K	v���A�.*

logging/current_cost�� <Xm��+       ��K	� ���A�.*

logging/current_cost�� <����+       ��K	w0���A�.*

logging/current_cost�y <�H��+       ��K	�c���A�.*

logging/current_cost;3 <'jY3+       ��K	�����A�.*

logging/current_costpY <^���+       ��K	{����A�.*

logging/current_costǩ <N��+       ��K	/��A�.*

logging/current_cost�� <)�P+       ��K	8��A�.*

logging/current_cost_] <���+       ��K	k��A�.*

logging/current_costDr <P�gL+       ��K	2���A�.*

logging/current_cost�� <�\�+       ��K	����A�.*

logging/current_cost�` <q��+       ��K	��A�.*

logging/current_cost�Q <� 3�+       ��K	�3��A�.*

logging/current_cost9l <��B+       ��K	fc��A�.*

logging/current_cost� <���D+       ��K	
���A�.*

logging/current_cost�� <
�[+       ��K	x���A�.*

logging/current_cost)= <.���+       ��K	���A�.*

logging/current_costw <n�7'+       ��K	�A��A�.*

logging/current_cost�� <����+       ��K	�r��A�.*

logging/current_costk <��QO+       ��K	9���A�.*

logging/current_costP <���l+       ��K	k���A�.*

logging/current_cost� <��+       ��K	E��A�.*

logging/current_cost,� <�%�+       ��K	�9��A�/*

logging/current_cost�\ <��jL+       ��K	4i��A�/*

logging/current_cost�c <"ܼ0+       ��K	ӕ��A�/*

logging/current_costq <:�0.+       ��K	����A�/*

logging/current_costS� <<��+       ��K	����A�/*

logging/current_costu� <t��+       ��K	�$��A�/*

logging/current_costw( <�9��+       ��K	T��A�/*

logging/current_costg` <�{h�+       ��K	����A�/*

logging/current_costF� <��m+       ��K	ܷ��A�/*

logging/current_cost�m <=��+       ��K	���A�/*

logging/current_costbT <�$ˈ+       ��K	� ��A�/*

logging/current_cost�v <���+       ��K	�O��A�/*

logging/current_cost� <_� �+       ��K	(|��A�/*

logging/current_costRZ <�L��+       ��K	y���A�/*

logging/current_cost�[ <���+       ��K	F���A�/*

logging/current_cost� <�}�+       ��K	����A�/*

logging/current_cost�� <b�܊+       ��K	�@���A�/*

logging/current_costu� <�f�+       ��K	q���A�/*

logging/current_cost�" <qs!~+       ��K	����A�/*

logging/current_cost�u <��l+       ��K	r����A�/*

logging/current_costҨ <2�¾+       ��K	���A�/*

logging/current_costp <7V��+       ��K	M���A�/*

logging/current_cost�T <�U��+       ��K	����A�/*

logging/current_cost0j <�e�+       ��K	����A�/*

logging/current_cost� <��~�+       ��K	�����A�/*

logging/current_costn <�K(�+       ��K	t;���A�0*

logging/current_cost$I <��{+       ��K	Vr���A�0*

logging/current_cost�r <~��I+       ��K	{����A�0*

logging/current_cost� <ЅS�+       ��K	<����A�0*

logging/current_cost)� <$z+0+       ��K	���A�0*

logging/current_cost�3 <���h+       ��K	W=���A�0*

logging/current_cost�} <?�+       ��K	�s���A�0*

logging/current_cost� <��pT+       ��K	(����A�0*

logging/current_cost�f <�f�+       ��K	�����A�0*

logging/current_cost�w <K�E�+       ��K	�Y���A�0*

logging/current_cost�l <]�3+       ��K	L����A�0*

logging/current_cost�m <�m�+       ��K	�����A�0*

logging/current_costTH <�RE+       ��K	����A�0*

logging/current_cost� <N�O+       ��K	-D���A�0*

logging/current_cost�� <����+       ��K	�z���A�0*

logging/current_cost� <b��y+       ��K	t����A�0*

logging/current_cost^L <��� +       ��K	����A�0*

logging/current_costa9 <1b#�+       ��K	�8���A�0*

logging/current_cost� <�E��+       ��K	xg���A�0*

logging/current_cost�� <���+       ��K	�����A�0*

logging/current_cost%^ <�_��+       ��K	�����A�0*

logging/current_cost�m <���>+       ��K	o����A�0*

logging/current_cost�} <�J�+       ��K	$$���A�0*

logging/current_cost�z <���+       ��K	aT���A�0*

logging/current_cost�z <�E�+       ��K	�����A�0*

logging/current_costr <+�Ƶ+       ��K	����A�0*

logging/current_cost'� <� ȡ+       ��K	\W���A�1*

logging/current_costot <gZ#�+       ��K	�����A�1*

logging/current_costʄ <[�s+       ��K	v����A�1*

logging/current_cost�} <���	+       ��K	M����A�1*

logging/current_costM_ <���+       ��K	�1���A�1*

logging/current_cost�s <k���+       ��K	e���A�1*

logging/current_cost�h <����+       ��K	r����A�1*

logging/current_cost�d <��CW+       ��K	A����A�1*

logging/current_costN^ < dƯ+       ��K	�����A�1*

logging/current_costu� <�Zέ+       ��K	_1���A�1*

logging/current_costYq <���~+       ��K	�b���A�1*

logging/current_cost�R <Q���+       ��K	Փ���A�1*

logging/current_cost�� <x�}�+       ��K	�����A�1*

logging/current_cost� <���f+       ��K	�����A�1*

logging/current_cost�W <*��@+       ��K	e$���A�1*

logging/current_cost�B <���+       ��K	T���A�1*

logging/current_costٽ <<_$�+       ��K	�����A�1*

logging/current_cost�j <eE��+       ��K	[����A�1*

logging/current_cost&P <��0+       ��K	Q����A�1*

logging/current_cost� <����+       ��K	D ��A�1*

logging/current_costch <۽�+       ��K	\? ��A�1*

logging/current_costs; <E�c[+       ��K	|m ��A�1*

logging/current_costԕ <��7n+       ��K	p� ��A�1*

logging/current_cost�� </2�+       ��K	�� ��A�1*

logging/current_costI} <F���+       ��K	_� ��A�1*

logging/current_cost= <8�6�+       ��K	1��A�2*

logging/current_cost�h <	)��+       ��K	�`��A�2*

logging/current_costt} <1�+       ��K	����A�2*

logging/current_cost1l <1��+       ��K	����A�2*

logging/current_cost�[ <_��;+       ��K	����A�2*

logging/current_cost9v <�+       ��K	�)��A�2*

logging/current_costu <p��+       ��K	[\��A�2*

logging/current_costDw <X��+       ��K	ߌ��A�2*

logging/current_costE{ <.�+       ��K	���A�2*

logging/current_costCu <�~��+       ��K	����A�2*

logging/current_cost�w <�8h�+       ��K	j��A�2*

logging/current_costNO <-��+       ��K	YN��A�2*

logging/current_cost�S <:���+       ��K	�}��A�2*

logging/current_costS� <Fu�+       ��K	���A�2*

logging/current_cost`� <��[�+       ��K	����A�2*

logging/current_cost�n <�.8�+       ��K	���A�2*

logging/current_cost�L <U�6b+       ��K	?��A�2*

logging/current_costW� <QB{+       ��K	&m��A�2*

logging/current_cost�l <�9t]+       ��K	����A�2*

logging/current_cost�D <W�+       ��K	����A�2*

logging/current_cost <����+       ��K	����A�2*

logging/current_costՕ <�X�y+       ��K	.+��A�2*

logging/current_costu <�
��+       ��K	iZ��A�2*

logging/current_costh| <�Pb+       ��K	Y���A�2*

logging/current_cost�V <w��c+       ��K	���A�2*

logging/current_costĒ <F�Qv+       ��K	����A�2*

logging/current_cost�K <��-+       ��K	��A�3*

logging/current_cost�F <8 ��+       ��K	�D��A�3*

logging/current_cost�� <6*�+       ��K	6s��A�3*

logging/current_costC� <<L^+       ��K	Р��A�3*

logging/current_costU) <�h�v+       ��K	����A�3*

logging/current_cost�� <j%n+       ��K	����A�3*

logging/current_costܷ <q�I�+       ��K	.��A�3*

logging/current_cost<> <�K�+       ��K	4[��A�3*

logging/current_cost!Z <=�Zg+       ��K	����A�3*

logging/current_cost�p <Q��+       ��K	ڶ��A�3*

logging/current_costt} <��b=+       ��K	a���A�3*

logging/current_costTk <����+       ��K	���A�3*

logging/current_cost�t <�,��+       ��K	�A��A�3*

logging/current_cost~� <��D_+       ��K	^p��A�3*

logging/current_costcv <#+       ��K	]���A�3*

logging/current_cost�g <T!�2+       ��K	1���A�3*

logging/current_costM <!<ȥ+       ��K	-���A�3*

logging/current_cost�� <aX�W+       ��K	�-	��A�3*

logging/current_cost�Y <-�;+       ��K	\	��A�3*

logging/current_costkI <���y+       ��K	�	��A�3*

logging/current_cost�� <��d+       ��K	�	��A�3*

logging/current_costZa <���++       ��K	�	��A�3*

logging/current_cost4F <�n�+       ��K	i
��A�3*

logging/current_costRM <3W2�+       ��K	�A
��A�3*

logging/current_costt <�8,�+       ��K	No
��A�3*

logging/current_cost�� <+��+       ��K	��
��A�3*

logging/current_cost�o <�u.+       ��K	��
��A�4*

logging/current_costa <{��+       ��K	��
��A�4*

logging/current_costb< <� 1a+       ��K		)��A�4*

logging/current_cost�� <�Y�+       ��K	{V��A�4*

logging/current_cost'h <3h�+       ��K	���A�4*

logging/current_cost_K <k�/+       ��K	/���A�4*

logging/current_costP� <�W+       ��K	 ��A�4*

logging/current_cost�k <��+       ��K	�7��A�4*

logging/current_cost�Z <�/4+       ��K	kt��A�4*

logging/current_coste` <�*+       ��K	e���A�4*

logging/current_cost)� <��Q+       ��K	)���A�4*

logging/current_cost�k <���+       ��K	U%��A�4*

logging/current_cost�R <�q�+       ��K	V��A�4*

logging/current_cost	} <c��r+       ��K	<���A�4*

logging/current_costx <>�+       ��K	,���A�4*

logging/current_costd� <1c+       ��K	
��A�4*

logging/current_cost� <����+       ��K	x?��A�4*

logging/current_cost(` <���F+       ��K	�o��A�4*

logging/current_cost�h <O��+       ��K	6���A�4*

logging/current_cost�t <�ο.+       ��K	���A�4*

logging/current_costu <�y��+       ��K	���A�4*

logging/current_cost�K <b�g�+       ��K	H��A�4*

logging/current_cost(� <Ki��+       ��K	����A�4*

logging/current_costd <��Hy+       ��K	���A�4*

logging/current_costg^ <��+       ��K	#���A�4*

logging/current_costn� <��g�+       ��K	���A�5*

logging/current_cost| <����+       ��K	bN��A�5*

logging/current_cost[_ <?A�+       ��K	�z��A�5*

logging/current_cost_ <��V�+       ��K	����A�5*

logging/current_costŃ <ݜ��+       ��K	9���A�5*

logging/current_cost�o <v&\�+       ��K	��A�5*

logging/current_cost�; <z?)+       ��K	Q@��A�5*

logging/current_cost�� <_�+       ��K	�n��A�5*

logging/current_cost�| <~��v+       ��K	����A�5*

logging/current_cost�P <���+       ��K	����A�5*

logging/current_cost�| <��&v+       ��K	^ ��A�5*

logging/current_cost�d <��-s+       ��K	�5��A�5*

logging/current_cost*} <g*tK+       ��K	k��A�5*

logging/current_cost� <i��?+       ��K	b���A�5*

logging/current_costTJ <<��+       ��K	����A�5*

logging/current_costʊ <l�Un+       ��K	2��A�5*

logging/current_costߜ <].�+       ��K	%7��A�5*

logging/current_costIb <���Y+       ��K	�d��A�5*

logging/current_cost˘ <چ�^+       ��K	ڒ��A�5*

logging/current_cost�g <#��+       ��K	����A�5*

logging/current_cost+p <�{+       ��K	����A�5*

logging/current_cost�� <��D�+       ��K	�(��A�5*

logging/current_cost�j <��b�+       ��K	�Z��A�5*

logging/current_cost�� <�\+       ��K	܉��A�5*

logging/current_costm� <��*+       ��K	����A�5*

logging/current_cost5u <���+       ��K	����A�5*

logging/current_cost � <�p�J+       ��K	X��A�6*

logging/current_costK� <R�V�+       ��K	�D��A�6*

logging/current_cost� <� �+       ��K	Ns��A�6*

logging/current_cost�� <�ϙ�+       ��K	؟��A�6*

logging/current_costV� <��W�+       ��K	o���A�6*

logging/current_cost�� <��o+       ��K	����A�6*

logging/current_cost� <���+       ��K	�)��A�6*

logging/current_cost�� <0�1+       ��K	7V��A�6*

logging/current_cost�� <j�f=+       ��K	d���A�6*

logging/current_cost<�ˮ�+       ��K		���A�6*

logging/current_cost"� <��S+       ��K	����A�6*

logging/current_cost�� <�h�+       ��K	3��A�6*

logging/current_cost#_<.�͹+       ��K	 ;��A�6*

logging/current_costq<c+       ��K	�h��A�6*

logging/current_cost�Q<7/?�+       ��K	_���A�6*

logging/current_costI\<��z+       ��K	g���A�6*

logging/current_costoh<�ʊ�+       ��K	����A�6*

logging/current_cost�<��+       ��K	1��A�6*

logging/current_cost@<T�D,+       ��K	Xa��A�6*

logging/current_cost(�<����+       ��K	���A�6*

logging/current_cost z<�WK�+       ��K	8���A�6*

logging/current_cost	r<�%��+       ��K	 ���A�6*

logging/current_cost��<p��+       ��K	<(��A�6*

logging/current_cost��<~�5v+       ��K	�U��A�6*

logging/current_cost�<���+       ��K	߂��A�6*

logging/current_cost��<��ϕ+       ��K	����A�7*

logging/current_cost��<��B`+       ��K	\���A�7*

logging/current_costz�<�3��+       ��K	��A�7*

logging/current_cost�<XPX�+       ��K	�<��A�7*

logging/current_costG�<:�w�+       ��K	�k��A�7*

logging/current_cost��<�!A+       ��K	����A�7*

logging/current_costj�<sx��+       ��K	����A�7*

logging/current_cost�<�V*K+       ��K	v��A�7*

logging/current_costl�< }$+       ��K	,=��A�7*

logging/current_cost��<���-+       ��K	p��A�7*

logging/current_cost@�<�W�+       ��K	����A�7*

logging/current_cost${<�;Í+       ��K	����A�7*

logging/current_cost�<�_�+       ��K	���A�7*

logging/current_cost�<_���+       ��K	�*��A�7*

logging/current_costu�<��:+       ��K	Z��A�7*

logging/current_cost�<#�(�+       ��K	=���A�7*

logging/current_cost�%<�R8�+       ��K	����A�7*

logging/current_cost�<�t�<+       ��K	����A�7*

logging/current_costT�<Z,.u+       ��K	>%��A�7*

logging/current_cost`<��z+       ��K	�W��A�7*

logging/current_cost|�<��+       ��K	0���A�7*

logging/current_cost'�<���+       ��K	/���A�7*

logging/current_cost�<͑-9+       ��K	����A�7*

logging/current_cost]�<K��+       ��K	���A�7*

logging/current_cost��<����+       ��K	�B��A�7*

logging/current_cost��<Ou�+       ��K	~n��A�7*

logging/current_cost��<]ka+       ��K	���A�8*

logging/current_costd�<��с+       ��K	p���A�8*

logging/current_cost{<��U+       ��K	����A�8*

logging/current_costs�<.,�+       ��K	>*��A�8*

logging/current_costD<��K+       ��K	�X��A�8*

logging/current_cost��<G��+       ��K	ĉ��A�8*

logging/current_costq�<lΤh+       ��K		���A�8*

logging/current_cost��<����+       ��K	����A�8*

logging/current_coste�<C踆+       ��K	� ��A�8*

logging/current_cost׵<��5D+       ��K	�E ��A�8*

logging/current_cost��<
�+       ��K	�r ��A�8*

logging/current_cost��<��$+       ��K	�� ��A�8*

logging/current_cost��<�2$�+       ��K	+� ��A�8*

logging/current_cost"�<6j�+       ��K		!��A�8*

logging/current_cost��<�ߍ+       ��K	�1!��A�8*

logging/current_cost��<��J}+       ��K	�_!��A�8*

logging/current_cost U<Y�+       ��K	D�!��A�8*

logging/current_cost{�<Wo��+       ��K	e�!��A�8*

logging/current_cost�q<�X�=+       ��K	b�!��A�8*

logging/current_cost�w<���+       ��K	�"��A�8*

logging/current_cost��<��k+       ��K	�L"��A�8*

logging/current_costD�<EO1F+       ��K	
z"��A�8*

logging/current_cost"�<����+       ��K	$�"��A�8*

logging/current_cost�e<�x�r+       ��K	�"��A�8*

logging/current_cost�}< g�+       ��K	�#��A�8*

logging/current_costZ<0� �+       ��K	X0#��A�8*

logging/current_cost��<t:��+       ��K	�]#��A�9*

logging/current_cost�d<@#��+       ��K	e�#��A�9*

logging/current_cost�w<�O!(+       ��K	��#��A�9*

logging/current_cost�t< F�+       ��K	��#��A�9*

logging/current_cost�`<-*+       ��K	t$��A�9*

logging/current_costRw<��:}+       ��K	�B$��A�9*

logging/current_cost~{<�eF+       ��K	+q$��A�9*

logging/current_cost�C<#�.�+       ��K	��$��A�9*

logging/current_cost�}<p��R+       ��K	!�$��A�9*

logging/current_cost�x<��D�+       ��K	c�$��A�9*

logging/current_costy<� �+       ��K	�/%��A�9*

logging/current_cost�s<ڸ�+       ��K	`^%��A�9*

logging/current_cost8�<VW)+       ��K	��%��A�9*

logging/current_costT<��c�+       ��K	b�%��A�9*

logging/current_cost�d<v�H+       ��K	�%��A�9*

logging/current_cost_<},�+       ��K	�&��A�9*

logging/current_cost�g<�ă{+       ��K	�K&��A�9*

logging/current_cost+�<��5]+       ��K	gz&��A�9*

logging/current_cost>1<�
�+       ��K	��&��A�9*

logging/current_cost��<k�^�+       ��K	��&��A�9*

logging/current_cost�T<=�o�+       ��K	�'��A�9*

logging/current_cost�]<����+       ��K	�7'��A�9*

logging/current_cost�h<���Q+       ��K	e'��A�9*

logging/current_costom<���!+       ��K	�'��A�9*

logging/current_costHJ<��+       ��K	!�'��A�9*

logging/current_cost�O<4^��+       ��K	��'��A�:*

logging/current_costto<�d +       ��K	�-(��A�:*

logging/current_cost��<Z��+       ��K	�`(��A�:*

logging/current_cost��<u��}+       ��K	�(��A�:*

logging/current_cost�A<��.
+       ��K	��(��A�:*

logging/current_cost�x<��}|+       ��K	S�(��A�:*

logging/current_costv<R��+       ��K	�)��A�:*

logging/current_cost�s<D���+       ��K	�G)��A�:*

logging/current_cost�p<�e/+       ��K	_u)��A�:*

logging/current_cost�o<��52+       ��K	��)��A�:*

logging/current_costT`<Nf��+       ��K	.�)��A�:*

logging/current_cost�`<%؉�+       ��K	�*��A�:*

logging/current_cost�Y<�+       ��K	=5*��A�:*

logging/current_cost�<F��+       ��K	�g*��A�:*

logging/current_cost�Q<>Z�	+       ��K	x�*��A�:*

logging/current_cost`i<��G++       ��K	��*��A�:*

logging/current_cost>c<V�h+       ��K	>�*��A�:*

logging/current_costD�<j�H�+       ��K	�&+��A�:*

logging/current_cost�t<�G#�+       ��K	�X+��A�:*

logging/current_cost�B<]��+       ��K	x�+��A�:*

logging/current_cost\8<rZ+       ��K	m�+��A�:*

logging/current_cost�L<\�B+       ��K	��+��A�:*

logging/current_cost�v<Ж{�+       ��K	E,��A�:*

logging/current_cost�h<0�,�+       ��K	�F,��A�:*

logging/current_cost�P<�Rt+       ��K	?y,��A�:*

logging/current_costhR<��+       ��K	7�,��A�:*

logging/current_cost|\<}X�)+       ��K	��,��A�;*

logging/current_cost�c<")��+       ��K	�	-��A�;*

logging/current_cost�<� ��+       ��K	�8-��A�;*

logging/current_cost�7<�n+       ��K	�g-��A�;*

logging/current_cost�o<j���+       ��K	{�-��A�;*

logging/current_costT<L�~�+       ��K	5�-��A�;*

logging/current_cost$}<(@خ+       ��K	i�-��A�;*

logging/current_cost�b<�G�+       ��K	�#.��A�;*

logging/current_cost�=<&ET+       ��K	WR.��A�;*

logging/current_costGL<�5J+       ��K	�.��A�;*

logging/current_cost�[<2�?+       ��K	ܬ.��A�;*

logging/current_costxe<b�V�+       ��K	��.��A�;*

logging/current_costr]<h��!+       ��K	�/��A�;*

logging/current_cost�<5M�U+       ��K	5/��A�;*

logging/current_costQ<��z�+       ��K	�b/��A�;*

logging/current_cost�:<��a�+       ��K	g�/��A�;*

logging/current_costV�<�v�,+       ��K	a�/��A�;*

logging/current_cost�W<2 H+       ��K	I�/��A�;*

logging/current_cost�L<���W+       ��K	j!0��A�;*

logging/current_cost�E<���+       ��K	(Q0��A�;*

logging/current_cost(<��+       ��K	�}0��A�;*

logging/current_costRO<��H+       ��K	��0��A�;*

logging/current_costY=<\�>�+       ��K	L�0��A�;*

logging/current_cost�a<�&��+       ��K	o1��A�;*

logging/current_cost1#<��`�+       ��K	n41��A�;*

logging/current_cost�R<�yG�+       ��K	a1��A�<*

logging/current_costQ<�	+       ��K	I�1��A�<*

logging/current_cost}1<C �+       ��K	¿1��A�<*

logging/current_costiG<��+       ��K	[�1��A�<*

logging/current_costc</�l+       ��K	2��A�<*

logging/current_cost�� <���+       ��K	;J2��A�<*

logging/current_cost�W<u�m7+       ��K	Sx2��A�<*

logging/current_cost*<�H�+       ��K	��2��A�<*

logging/current_cost�z<����+       ��K	��2��A�<*

logging/current_costp� <� ��+       ��K	��2��A�<*

logging/current_cost@3<��%+       ��K	�,3��A�<*

logging/current_costeX<?0@i+       ��K	1[3��A�<*

logging/current_cost<����+       ��K	b�3��A�<*

logging/current_cost =<�%��+       ��K	P�3��A�<*

logging/current_cost�I<�h�+       ��K	n�3��A�<*

logging/current_cost|,<Y+r+       ��K	4��A�<*

logging/current_cost$T<����+       ��K	�C4��A�<*

logging/current_costf%<cF��+       ��K	wr4��A�<*

logging/current_cost4v<[�L�+       ��K	��4��A�<*

logging/current_cost))<*���+       ��K	�4��A�<*

logging/current_cost<��/�+       ��K	R�4��A�<*

logging/current_cost�-<l��+       ��K	F35��A�<*

logging/current_cost�<;��+       ��K	�b5��A�<*

logging/current_cost�<N(��+       ��K	̑5��A�<*

logging/current_costP;<M���+       ��K	J�5��A�<*

logging/current_cost[�<�;+       ��K	J�5��A�<*

logging/current_costI� <�w
�+       ��K	�6��A�=*

logging/current_cost�<3���+       ��K	�L6��A�=*

logging/current_cost#b<�({+       ��K	c{6��A�=*

logging/current_cost�-<Ӗ�I+       ��K	׬6��A�=*

logging/current_cost�<)��+       ��K	4�6��A�=*

logging/current_costY<p�|�+       ��K	�
7��A�=*

logging/current_cost9<��:�+       ��K	�97��A�=*

logging/current_costI,<^��M+       ��K	�i7��A�=*

logging/current_costE"<y�z�+       ��K	��7��A�=*

logging/current_cost�G<�:+       ��K	4�7��A�=*

logging/current_cost>/<Bȟ�+       ��K	��7��A�=*

logging/current_cost%<����+       ��K	*8��A�=*

logging/current_cost�<�>�+       ��K	XX8��A�=*

logging/current_cost/\<&�n+       ��K	r�8��A�=*

logging/current_cost]� <�9+       ��K	��8��A�=*

logging/current_cost�6<�(J�+       ��K	��8��A�=*

logging/current_cost)<�,k�+       ��K	9��A�=*

logging/current_cost�3<t��+       ��K	lE9��A�=*

logging/current_cost�<��-�+       ��K	}{9��A�=*

logging/current_cost;<M�0+       ��K	}�9��A�=*

logging/current_cost�l<��x+       ��K	��9��A�=*

logging/current_cost�� <��W+       ��K	�:��A�=*

logging/current_cost�+<<c{5+       ��K	�B:��A�=*

logging/current_cost	<:�2+       ��K	rq:��A�=*

logging/current_costw<��q�+       ��K	E�:��A�=*

logging/current_cost�*<;mt_+       ��K	��:��A�=*

logging/current_cost)%<�R+       ��K	 �:��A�>*

logging/current_costm<<\�+       ��K	(;��A�>*

logging/current_cost� <���+       ��K	"U;��A�>*

logging/current_cost<4<qW�+       ��K	��;��A�>*

logging/current_costh1<1�p�+       ��K	��;��A�>*

logging/current_costI'<�[$+       ��K	R3<��A�>*

logging/current_cost�/<��Y+       ��K	�<��A�>*

logging/current_costp1<���%+       ��K	�<��A�>*

logging/current_cost�Q<���o+       ��K	�=��A�>*

logging/current_costD� <��!�+       ��K	|Y=��A�>*

logging/current_cost#<F煠+       ��K	ȓ=��A�>*

logging/current_cost>.<w��+       ��K	��=��A�>*

logging/current_costD<�a�+       ��K	=�=��A�>*

logging/current_cost�"< Q��+       ��K	�1>��A�>*

logging/current_cost�<\�+       ��K	|o>��A�>*

logging/current_costT<$X�+       ��K	3�>��A�>*

logging/current_cost�� <�(�+       ��K	'�>��A�>*

logging/current_cost%(< �&+       ��K	�?��A�>*

logging/current_cost+<fK)+       ��K	VQ?��A�>*

logging/current_costa<c�=+       ��K	��?��A�>*

logging/current_cost0<4��+       ��K	ݺ?��A�>*

logging/current_cost�8<��D+       ��K	��?��A�>*

logging/current_costI� <���+       ��K	.@��A�>*

logging/current_costw#<Q�S�+       ��K	P@��A�>*

logging/current_cost�h<k��+       ��K	D�@��A�>*

logging/current_cost�� <*� �+       ��K	 �@��A�?*

logging/current_cost<"�Y�+       ��K	��@��A�?*

logging/current_cost�� <{q�+       ��K	�A��A�?*

logging/current_cost�� <`|+       ��K	[EA��A�?*

logging/current_cost�<��9+       ��K	sA��A�?*

logging/current_cost)L<��o+       ��K	g�A��A�?*

logging/current_cost$� <�A�+       ��K	��A��A�?*

logging/current_cost�/<Ɩ�+       ��K	?�A��A�?*

logging/current_cost\+<b+'�+       ��K	p5B��A�?*

logging/current_cost�� <��%+       ��K	jB��A�?*

logging/current_cost>!<�'�2+       ��K	H�B��A�?*

logging/current_costH<8CR+       ��K	��B��A�?*

logging/current_costd<@8jk+       ��K	��B��A�?*

logging/current_cost� <�,@�+       ��K	s(C��A�?*

logging/current_cost�� <Z/�+       ��K	�UC��A�?*

logging/current_cost[� <�mU�+       ��K	��C��A�?*

logging/current_cost�3<�%�+       ��K	�C��A�?*

logging/current_cost�<���+       ��K	=�C��A�?*

logging/current_cost�
<��M+       ��K	�D��A�?*

logging/current_cost79<����+       ��K	eND��A�?*

logging/current_costT� <�M+       ��K	w}D��A�?*

logging/current_cost <����+       ��K		�D��A�?*

logging/current_cost�� <�`ذ+       ��K	��D��A�?*

logging/current_cost=� <C*�+       ��K	,E��A�?*

logging/current_cost�	<���+       ��K	e=E��A�?*

logging/current_cost�� <�6�+       ��K	4�E��A�?*

logging/current_cost�'<��K�+       ��K	�E��A�@*

logging/current_costY?<YEf+       ��K	�F��A�@*

logging/current_cost�� <+	��+       ��K	�?F��A�@*

logging/current_cost7� <�v��+       ��K	�F��A�@*

logging/current_cost+:<Clp+       ��K	!�F��A�@*

logging/current_cost�� <#`i�+       ��K	�G��A�@*

logging/current_costC!<PwU�+       ��K	�VG��A�@*

logging/current_costo� </"~�+       ��K	�G��A�@*

logging/current_cost\<���A+       ��K	%�G��A�@*

logging/current_cost�<���f+       ��K	�H��A�@*

logging/current_cost�<1�i�+       ��K	�EH��A�@*

logging/current_costQ&<e�s�+       ��K	χH��A�@*

logging/current_cost$<�[�+       ��K	Q�H��A�@*

logging/current_cost�� <!��+       ��K	7	I��A�@*

logging/current_cost<i�J�+       ��K	@I��A�@*

logging/current_cost�S<G#6u+       ��K	~{I��A�@*

logging/current_cost�� <�.+       ��K	ܯI��A�@*

logging/current_costI<�[�]+       ��K	��I��A�@*

logging/current_cost�<�]F+       ��K	(J��A�@*

logging/current_cost�� </��+       ��K	^FJ��A�@*

logging/current_cost�$<hV{�+       ��K	�uJ��A�@*

logging/current_cost�<��	+       ��K	�J��A�@*

logging/current_cost�� <_�$+       ��K	�J��A�@*

logging/current_cost�<DB�l+       ��K	�K��A�@*

logging/current_cost�� <��+       ��K	O1K��A�@*

logging/current_coste=<���+       ��K	�cK��A�A*

logging/current_cost�� <ը��+       ��K	M�K��A�A*

logging/current_costB� <NV��+       ��K	��K��A�A*

logging/current_costu@<�j=�+       ��K	��K��A�A*

logging/current_cost� <dM�+       ��K	!*L��A�A*

logging/current_cost�<'-ee+       ��K	&YL��A�A*

logging/current_cost�� <�I�+       ��K	��L��A�A*

logging/current_cost$� <�+�d+       ��K	��L��A�A*

logging/current_cost�<&�g+       ��K	��L��A�A*

logging/current_cost�</ȞO+       ��K	�M��A�A*

logging/current_costu� <^-c+       ��K	�?M��A�A*

logging/current_cost�<-�M�+       ��K	�kM��A�A*

logging/current_cost�� <�F��+       ��K	M��A�A*

logging/current_cost�7<r�&+       ��K	�M��A�A*

logging/current_cost>� <cW_�+       ��K	�M��A�A*

logging/current_cost�><��o+       ��K	�&N��A�A*

logging/current_cost � <,��>+       ��K	�WN��A�A*

logging/current_costo%<t@2h+       ��K	x�N��A�A*

logging/current_costt<; �+       ��K	�N��A�A*

logging/current_cost<.ߑ+       ��K	�)O��A�A*

logging/current_cost=)<��q+       ��K	cZO��A�A*

logging/current_cost4� <^<�f+       ��K	�O��A�A*

logging/current_cost�<��e�+       ��K	B�O��A�A*

logging/current_cost�� <�韅+       ��K	��O��A�A*

logging/current_cost�� <����+       ��K	{P��A�A*

logging/current_costk� <n��+       ��K	LLP��A�A*

logging/current_cost�� <��i�+       ��K	�|P��A�B*

logging/current_cost <��4�+       ��K	�P��A�B*

logging/current_costY<��<+       ��K	+�P��A�B*

logging/current_cost�� <ݣF+       ��K	�Q��A�B*

logging/current_cost�N<֪�+       ��K	cDQ��A�B*

logging/current_cost�� <mb(+       ��K	�vQ��A�B*

logging/current_cost}K<ݔ�+       ��K	q�Q��A�B*

logging/current_cost�� <����+       ��K	�Q��A�B*

logging/current_costW<���y+       ��K	�R��A�B*

logging/current_cost69<[�e+       ��K	�8R��A�B*

logging/current_cost�� <C�*P+       ��K	 rR��A�B*

logging/current_cost�6<�Ȣ�+       ��K	ۣR��A�B*

logging/current_costì <�&�+       ��K	k�R��A�B*

logging/current_cost�<�{>+       ��K	�S��A�B*

logging/current_cost�<�[+       ��K	2S��A�B*

logging/current_cost9� <�+       ��K	�dS��A�B*

logging/current_cost[� <�W9�+       ��K	��S��A�B*

logging/current_costw� <9�2t+       ��K	H�S��A�B*

logging/current_cost�<�E��+       ��K	��S��A�B*

logging/current_costR� <�=��+       ��K	�)T��A�B*

logging/current_cost� <�`+       ��K	�XT��A�B*

logging/current_cost�<?�z+       ��K	<�T��A�B*

logging/current_cost�<<�b5+       ��K	�T��A�B*

logging/current_costV� <�El+       ��K	;�T��A�B*

logging/current_cost|� <�,�+       ��K	U��A�B*

logging/current_costl� <�\)�+       ��K	�HU��A�B*

logging/current_cost%<�5�+       ��K	jwU��A�C*

logging/current_cost�� <����+       ��K	z�U��A�C*

logging/current_cost�	<<��+       ��K	��U��A�C*

logging/current_cost�!<����+       ��K	RV��A�C*

logging/current_cost�� <XL�i+       ��K	�/V��A�C*

logging/current_cost<� <a�Ul+       ��K	j]V��A�C*

logging/current_cost`� <� �$+       ��K	~�V��A�C*

logging/current_cost<<(it�+       ��K	~�V��A�C*

logging/current_cost�� <�J�S+       ��K	L�V��A�C*

logging/current_cost�� <p�]@+       ��K	-W��A�C*

logging/current_cost�%<�pJ3+       ��K	n>W��A�C*

logging/current_cost�� <���]+       ��K	LkW��A�C*

logging/current_cost�)<3칄+       ��K	��W��A�C*

logging/current_cost`� <=��C+       ��K	 �W��A�C*

logging/current_cost�?<z�JQ+       ��K	^�W��A�C*

logging/current_cost�� <ͯ8�+       ��K	*X��A�C*

logging/current_cost�/<�TA�+       ��K	CYX��A�C*

logging/current_costK� <��+       ��K	��X��A�C*

logging/current_costO<�(+�+       ��K	��X��A�C*

logging/current_cost$� <p�b+       ��K	��X��A�C*

logging/current_cost�1<�R8+       ��K	PY��A�C*

logging/current_costT� <�~��+       ��K	AY��A�C*

logging/current_cost�<��+       ��K	�oY��A�C*

logging/current_cost�� <�H+       ��K	U�Y��A�C*

logging/current_cost9� <��e�+       ��K	��Y��A�C*

logging/current_cost�� <�uz�+       ��K	��Y��A�D*

logging/current_cost�� <��o�+       ��K	
$Z��A�D*

logging/current_costM<gsS�+       ��K	�RZ��A�D*

logging/current_cost�� <�H)+       ��K	��Z��A�D*

logging/current_cost	"<Z3�+       ��K	ĳZ��A�D*

logging/current_costz<�.�O+       ��K	��Z��A�D*

logging/current_cost,� <Df{�+       ��K	�[��A�D*

logging/current_cost'� <�f�+       ��K	�>[��A�D*

logging/current_cost�� <�*{t+       ��K	?k[��A�D*

logging/current_costw!<��f+       ��K	X�[��A�D*

logging/current_cost�� <�;s�+       ��K	=�[��A�D*

logging/current_cost/<��)�+       ��K	��[��A�D*

logging/current_cost�� <�L9"+       ��K	,\��A�D*

logging/current_cost�<�`д+       ��K	�Z\��A�D*

logging/current_cost� <Lp�r+       ��K	��\��A�D*

logging/current_cost�� <�y��+       ��K	��\��A�D*

logging/current_cost3
<���+       ��K	�\��A�D*

logging/current_cost�<!�3+       ��K	�]��A�D*

logging/current_cost%<��6�+       ��K	�M]��A�D*

logging/current_cost�� <&0T+       ��K	�}]��A�D*

logging/current_cost7C<��&j+       ��K	)�]��A�D*

logging/current_cost�� <����+       ��K	�]��A�D*

logging/current_costB� <Os+       ��K	�^��A�D*

logging/current_cost|� <���+       ��K	9^��A�D*

logging/current_cost<-�6+       ��K	�f^��A�D*

logging/current_cost� <z|Z+       ��K	v�^��A�D*

logging/current_cost,� <��+       ��K	��^��A�E*

logging/current_costl� <-�Q�+       ��K	��^��A�E*

logging/current_cost�� <�Nv�+       ��K	�"_��A�E*

logging/current_cost�� <x��+       ��K	�O_��A�E*

logging/current_costL� <�H��+       ��K	u�_��A�E*

logging/current_cost� <U�{�+       ��K	Ͱ_��A�E*

logging/current_cost�� <u��r+       ��K	��_��A�E*

logging/current_cost.<��J++       ��K	�`��A�E*

logging/current_cost� <b�-D+       ��K	D=`��A�E*

logging/current_costo<����+       ��K	�k`��A�E*

logging/current_cost�� <x�#�+       ��K	/�`��A�E*

logging/current_costH<N$+       ��K	��`��A�E*

logging/current_cost�� <�=�]+       ��K	��`��A�E*

logging/current_cost\<�D?�+       ��K	�&a��A�E*

logging/current_cost�� <B���+       ��K	�Sa��A�E*

logging/current_cost�� <�#�n+       ��K	-�a��A�E*

logging/current_cost� <xE6I+       ��K	[�a��A�E*

logging/current_cost(<�<+       ��K	t�a��A�E*

logging/current_cost(<�{x�+       ��K	}b��A�E*

logging/current_costP� <g1��+       ��K	�Cb��A�E*

logging/current_cost�� <�3�+       ��K	�rb��A�E*

logging/current_cost�� <���+       ��K	/�b��A�E*

logging/current_costJ� <Y}!�+       ��K	��b��A�E*

logging/current_costL� <�>n+       ��K	� c��A�E*

logging/current_cost\� <���E+       ��K	k.c��A�E*

logging/current_cost"� <2�G�+       ��K	�Zc��A�F*

logging/current_cost�� <-��L+       ��K	~�c��A�F*

logging/current_costa� <j��E+       ��K	=�c��A�F*

logging/current_costg� <��]_+       ��K	T�c��A�F*

logging/current_cost�� <���+       ��K	d��A�F*

logging/current_costT� <a~9+       ��K	�>d��A�F*

logging/current_costD<�;�c+       ��K	�md��A�F*

logging/current_cost�� <R���+       ��K	�d��A�F*

logging/current_cost�<q��+       ��K	�d��A�F*

logging/current_costY� <�Caz+       ��K		�d��A�F*

logging/current_cost�� <4'�W+       ��K	�&e��A�F*

logging/current_cost]� <7�Ha+       ��K	dVe��A�F*

logging/current_cost'!<-�+       ��K	��e��A�F*

logging/current_cost�� <Ŭ��+       ��K	��e��A�F*

logging/current_cost�<Z� �+       ��K	��e��A�F*

logging/current_cost� <���+       ��K	�f��A�F*

logging/current_cost�� <��x+       ��K	�?f��A�F*

logging/current_cost6� <
tM+       ��K	�nf��A�F*

logging/current_costg<c��+       ��K	�f��A�F*

logging/current_cost}<5N�+       ��K	��f��A�F*

logging/current_coste� <
���+       ��K	Y�f��A�F*

logging/current_cost � <���+       ��K	,g��A�F*

logging/current_costm<�fj+       ��K	[g��A�F*

logging/current_cost�� <��K�+       ��K	͈g��A�F*

logging/current_cost^<�� +       ��K	2�g��A�F*

logging/current_cost�� <����+       ��K	��g��A�F*

logging/current_cost�< �R�+       ��K	7h��A�G*

logging/current_costW� <��ѣ+       ��K	Fh��A�G*

logging/current_cost�<<��%+       ��K	�rh��A�G*

logging/current_cost߽ <D�G�+       ��K	K�h��A�G*

logging/current_cost~<\���+       ��K	��h��A�G*

logging/current_costN� <M�v+       ��K	�i��A�G*

logging/current_cost -<Kbh�+       ��K	s1i��A�G*

logging/current_costܠ <��K+       ��K	�ai��A�G*

logging/current_cost
J<�#+       ��K	��i��A�G*

logging/current_costҖ <�>R+       ��K	��i��A�G*

logging/current_cost.<���+       ��K	T�i��A�G*

logging/current_cost�� <<�f�+       ��K	w"j��A�G*

logging/current_cost�$<��+       ��K	Wj��A�G*

logging/current_costF� <)'{A+       ��K	��j��A�G*

logging/current_cost�<�gg+       ��K	��j��A�G*

logging/current_cost�� <�+       ��K	|�j��A�G*

logging/current_cost�<01U�+       ��K	@k��A�G*

logging/current_cost�<��t�+       ��K	Ak��A�G*

logging/current_cost�� <l^QN+       ��K	-pk��A�G*

logging/current_cost�<rP+       ��K	��k��A�G*

logging/current_cost� <=͟�+       ��K	5�k��A�G*

logging/current_cost%� <��%+       ��K	� l��A�G*

logging/current_costw<�3��+       ��K	9.l��A�G*

logging/current_cost{� <E6^+       ��K	ual��A�G*

logging/current_cost�<�y�+       ��K	ől��A�G*

logging/current_costM� <B�<+       ��K	ѿl��A�G*

logging/current_cost�><{�W�+       ��K	��l��A�H*

logging/current_cost� <��d+       ��K	�m��A�H*

logging/current_costK<�@��+       ��K	/Qm��A�H*

logging/current_costt� <T���+       ��K	g�m��A�H*

logging/current_cost�<yF|�+       ��K	��m��A�H*

logging/current_costt� <W��?+       ��K	m�m��A�H*

logging/current_costG	<g�^�+       ��K	Yn��A�H*

logging/current_cost�� <G��+       ��K	�>n��A�H*

logging/current_costq(<yv�+       ��K	cln��A�H*

logging/current_costŸ <�G��+       ��K	ڠn��A�H*

logging/current_costN<�]�+       ��K	w�n��A�H*

logging/current_costi� <� z�+       ��K	lo��A�H*

logging/current_cost�?<vP a+       ��K	O1o��A�H*

logging/current_cost� <^�߉+       ��K	�\o��A�H*

logging/current_cost�7<���+       ��K	��o��A�H*

logging/current_cost�� <Eica+       ��K	O�o��A�H*

logging/current_cost�<�C�R+       ��K	��o��A�H*

logging/current_cost� <��+       ��K	�p��A�H*

logging/current_cost�.<Ղ�"+       ��K	lFp��A�H*

logging/current_costW� <Z��<+       ��K	|sp��A�H*

logging/current_costn� <��-+       ��K	I�p��A�H*

logging/current_cost�� <�n:�+       ��K	�p��A�H*

logging/current_cost�� <)O��+       ��K	*�p��A�H*

logging/current_cost9� <�2`�+       ��K	�-q��A�H*

logging/current_cost�� <>�/<+       ��K	[q��A�H*

logging/current_costW� <3��R+       ��K	؉q��A�I*

logging/current_cost<� <��=u+       ��K	�q��A�I*

logging/current_costD� <��.P+       ��K	$�q��A�I*

logging/current_costE� <���+       ��K	r��A�I*

logging/current_cost�� <���+       ��K	�@r��A�I*

logging/current_cost�� <!�=+       ��K	�nr��A�I*

logging/current_costW� <���+       ��K	��r��A�I*

logging/current_cost�<�Sl�+       ��K	z�r��A�I*

logging/current_cost�� <�bl�+       ��K	D�r��A�I*

logging/current_cost�� <�4+       ��K	�#s��A�I*

logging/current_cost�<"u�0+       ��K	�Qs��A�I*

logging/current_costi� <�c"�+       ��K	�s��A�I*

logging/current_cost�<iէ�+       ��K	#�s��A�I*

logging/current_cost�� <Wg��+       ��K	W�s��A�I*

logging/current_cost<di��+       ��K	�
t��A�I*

logging/current_cost�� <��E�+       ��K	a8t��A�I*

logging/current_cost�<Ġo�+       ��K	}ft��A�I*

logging/current_cost�� <ŏD"+       ��K	��t��A�I*

logging/current_costQ� <�'��+       ��K	��t��A�I*

logging/current_costk <<'b�+       ��K	��t��A�I*

logging/current_cost�� <f� �+       ��K	n!u��A�I*

logging/current_cost�� <�K�+       ��K	�Nu��A�I*

logging/current_cost�� <��`+       ��K	�}u��A�I*

logging/current_cost�� <B��+       ��K	�u��A�I*

logging/current_costE<�t;�+       ��K	0�u��A�I*

logging/current_costb� <,�2@+       ��K	�
v��A�I*

logging/current_cost�<d��+       ��K	�6v��A�J*

logging/current_costL<Uҗh+       ��K	Eev��A�J*

logging/current_cost�<����+       ��K	��v��A�J*

logging/current_costz� <�yg�+       ��K	p�v��A�J*

logging/current_cost � <d���+       ��K	��v��A�J*

logging/current_cost� <wY�"+       ��K	3w��A�J*

logging/current_cost�� <+;Y+       ��K	�Iw��A�J*

logging/current_cost�<�a�2+       ��K	�yw��A�J*

logging/current_costhN<�X�x+       ��K	�w��A�J*

logging/current_cost�<��
�+       ��K	��w��A�J*

logging/current_cost�*<P��O+       ��K	ox��A�J*

logging/current_cost� <E�0X+       ��K	�7x��A�J*

logging/current_cost�]<�PB�+       ��K	jfx��A�J*

logging/current_cost<1j�+       ��K	��x��A�J*

logging/current_cost��<-�S�+       ��K	��x��A�J*

logging/current_cost� <�o++       ��K	��x��A�J*

logging/current_costo�<d�Y+       ��K	t$y��A�J*

logging/current_costX� <��;+       ��K	�Qy��A�J*

logging/current_costyu<�҈�+       ��K	��y��A�J*

logging/current_cost� <1F~+       ��K	�y��A�J*

logging/current_cost8<\þ+       ��K	Q�y��A�J*

logging/current_cost2<��rI+       ��K	�z��A�J*

logging/current_cost�G<'�V�+       ��K	Az��A�J*

logging/current_coste<ǐ�+       ��K	pz��A�J*

logging/current_cost%;<_�u+       ��K	��z��A�J*

logging/current_cost�3<XE+       ��K	�z��A�K*

logging/current_costM?<qd�K+       ��K	b�z��A�K*

logging/current_cost�6<���+       ��K	$*{��A�K*

logging/current_cost�]<nF��+       ��K	vY{��A�K*

logging/current_costU<�%}+       ��K	�{��A�K*

logging/current_cost�T<� %h+       ��K	��{��A�K*

logging/current_cost	&<���+       ��K	�!|��A�K*

logging/current_cost�Z<�k�-+       ��K	�_|��A�K*

logging/current_cost#<4]+       ��K	3�|��A�K*

logging/current_cost`k<�ts�+       ��K	��|��A�K*

logging/current_cost<E<��η+       ��K	-}��A�K*

logging/current_costT<F�}+       ��K	�5}��A�K*

logging/current_cost�K<'m��+       ��K	j}��A�K*

logging/current_costn� <!{9+       ��K	ߛ}��A�K*

logging/current_cost�=<��\m+       ��K	�}��A�K*

logging/current_cost"*<a��i+       ��K	 ~��A�K*

logging/current_cost	.<�%��+       ��K	I~��A�K*

logging/current_costt<��+       ��K	]}~��A�K*

logging/current_cost�D<��%+       ��K	Ů~��A�K*

logging/current_costY3<�N�1+       ��K	��~��A�K*

logging/current_cost7]<�_�+       ��K	��A�K*

logging/current_cost�
<ڣ�+       ��K	�>��A�K*

logging/current_cost��<DS��+       ��K	Fp��A�K*

logging/current_cost�� <�.K]+       ��K	á��A�K*

logging/current_cost?}<;n�A+       ��K	����A�K*

logging/current_cost$<,�ɤ+       ��K	� ���A�K*

logging/current_costEQ<LP]�+       ��K	W/���A�L*

logging/current_cost�a<��+       ��K	�Z���A�L*

logging/current_cost$(<ڿ��+       ��K	�����A�L*

logging/current_cost<<�ݻ+       ��K	B����A�L*

logging/current_costkb<�S,+       ��K	�瀩�A�L*

logging/current_costz<�[qP+       ��K	����A�L*

logging/current_costg<@�O�+       ��K	�F���A�L*

logging/current_costQ� <q��_+       ��K	�s���A�L*

logging/current_cost�m<f�+       ��K	����A�L*

logging/current_cost�,<ߏ.�+       ��K	Ձ��A�L*

logging/current_costG'<���\+       ��K	"���A�L*

logging/current_costE<�9��+       ��K	5���A�L*

logging/current_cost�<C0��+       ��K	�l���A�L*

logging/current_cost1I<Ŷ�4+       ��K	�����A�L*

logging/current_cost�L<���+       ��K	�˂��A�L*

logging/current_cost�%<m_�+       ��K	S����A�L*

logging/current_cost�[<L���+       ��K	5-���A�L*

logging/current_cost&<�^`+       ��K	�\���A�L*

logging/current_cost�<�J�+       ��K	ً���A�L*

logging/current_costt><���+       ��K	J����A�L*

logging/current_costw<�5��+       ��K	����A�L*

logging/current_costL><��> +       ��K	q!���A�L*

logging/current_cost�� <�]#r+       ��K	V���A�L*

logging/current_cost i<}Ti@+       ��K	�����A�L*

logging/current_cost�/<�f�h+       ��K	����A�L*

logging/current_cost4<���+       ��K	Tㄩ�A�L*

logging/current_costQ&<�u�q+       ��K	���A�M*

logging/current_cost><���+       ��K	Q^���A�M*

logging/current_cost�2<*]+       ��K	-����A�M*

logging/current_cost�\< L+       ��K	�����A�M*

logging/current_costD� <\\�|+       ��K	D셩�A�M*

logging/current_cost�1<v��+       ��K	���A�M*

logging/current_cost�� <$�f�+       ��K	"M���A�M*

logging/current_cost�<�b�i+       ��K	\}���A�M*

logging/current_cost�A<�å�+       ��K	 ����A�M*

logging/current_cost� <`c�+       ��K	�چ��A�M*

logging/current_costJ.<U�2\+       ��K	����A�M*

logging/current_cost�F<�Mg�+       ��K	.>���A�M*

logging/current_cost�� <���+       ��K	5r���A�M*

logging/current_costnW<��+       ��K	¡���A�M*

logging/current_cost�� <�F��+       ��K	;Ї��A�M*

logging/current_cost�Y<�,�^+       ��K	: ���A�M*

logging/current_cost�"<�Z�+       ��K	�/���A�M*

logging/current_costd<��Mc+       ��K	0a���A�M*

logging/current_cost�<�j\�+       ��K	쑈��A�M*

logging/current_cost�(<$�)�+       ��K	�Ȉ��A�M*

logging/current_costc	<x�+       ��K	�����A�M*

logging/current_costJ,<�e�&+       ��K	{$���A�M*

logging/current_cost�<���+       ��K	&Y���A�M*

logging/current_cost5<��V�+       ��K	j����A�M*

logging/current_cost�'<��MY+       ��K	y����A�M*

logging/current_cost<%<@s}\+       ��K	s艩�A�N*

logging/current_costIe<��+       ��K	����A�N*

logging/current_cost�� <Yk�+       ��K	�F���A�N*

logging/current_cost�M<)1