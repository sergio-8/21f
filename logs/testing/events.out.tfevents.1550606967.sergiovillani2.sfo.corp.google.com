       �K"	  ���Abrain.Event:2�J�M�      ��	VEǝ�A"��
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

seed *
T0*#
_class
loc:@layer_1/weights1*
seed2 *
dtype0*
_output_shapes

:
�
/layer_1/weights1/Initializer/random_uniform/subSub/layer_1/weights1/Initializer/random_uniform/max/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
: 
�
/layer_1/weights1/Initializer/random_uniform/mulMul9layer_1/weights1/Initializer/random_uniform/RandomUniform/layer_1/weights1/Initializer/random_uniform/sub*
_output_shapes

:*
T0*#
_class
loc:@layer_1/weights1
�
+layer_1/weights1/Initializer/random_uniformAdd/layer_1/weights1/Initializer/random_uniform/mul/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
layer_1/weights1
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
layer_1/weights1/AssignAssignlayer_1/weights1+layer_1/weights1/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
layer_1/weights1/readIdentitylayer_1/weights1*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
!layer_1/biases1/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_1/biases1*
valueB*    
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
layer_1/biases1/AssignAssignlayer_1/biases1!layer_1/biases1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
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
layer_2/weights2/AssignAssignlayer_2/weights2+layer_2/weights2/Initializer/random_uniform*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
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
layer_2/MatMulMatMullayer_1/Relulayer_2/weights2/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
j
layer_2/addAddlayer_2/MatMullayer_2/biases2/read*
T0*'
_output_shapes
:���������
S
layer_2/ReluRelulayer_2/add*'
_output_shapes
:���������*
T0
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
9layer_3/weights3/Initializer/random_uniform/RandomUniformRandomUniform1layer_3/weights3/Initializer/random_uniform/shape*
T0*#
_class
loc:@layer_3/weights3*
seed2 *
dtype0*
_output_shapes

:*

seed 
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
layer_3/biases3/AssignAssignlayer_3/biases3!layer_3/biases3/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_3/biases3
z
layer_3/biases3/readIdentitylayer_3/biases3*
T0*"
_class
loc:@layer_3/biases3*
_output_shapes
:
�
layer_3/MatMulMatMullayer_2/Relulayer_3/weights3/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
j
layer_3/addAddlayer_3/MatMullayer_3/biases3/read*'
_output_shapes
:���������*
T0
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
.output/weights4/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *"
_class
loc:@output/weights4*
valueB
 *qĜ�
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
*output/weights4/Initializer/random_uniformAdd.output/weights4/Initializer/random_uniform/mul.output/weights4/Initializer/random_uniform/min*
_output_shapes

:*
T0*"
_class
loc:@output/weights4
�
output/weights4
VariableV2*"
_class
loc:@output/weights4*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
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
output/MatMulMatMullayer_3/Reluoutput/weights4/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
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
#train/gradients/cost/Mean_grad/TileTile&train/gradients/cost/Mean_grad/Reshape$train/gradients/cost/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:���������
|
&train/gradients/cost/Mean_grad/Shape_1Shapecost/SquaredDifference*
_output_shapes
:*
T0*
out_type0
i
&train/gradients/cost/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
n
$train/gradients/cost/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
#train/gradients/cost/Mean_grad/CastCast'train/gradients/cost/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
&train/gradients/cost/Mean_grad/truedivRealDiv#train/gradients/cost/Mean_grad/Tile#train/gradients/cost/Mean_grad/Cast*'
_output_shapes
:���������*
T0
{
1train/gradients/cost/SquaredDifference_grad/ShapeShape
output/add*
_output_shapes
:*
T0*
out_type0
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
2train/gradients/cost/SquaredDifference_grad/scalarConst'^train/gradients/cost/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
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
1train/gradients/cost/SquaredDifference_grad/mul_1Mul/train/gradients/cost/SquaredDifference_grad/mul/train/gradients/cost/SquaredDifference_grad/sub*
T0*'
_output_shapes
:���������
�
/train/gradients/cost/SquaredDifference_grad/SumSum1train/gradients/cost/SquaredDifference_grad/mul_1Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
3train/gradients/cost/SquaredDifference_grad/ReshapeReshape/train/gradients/cost/SquaredDifference_grad/Sum1train/gradients/cost/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
1train/gradients/cost/SquaredDifference_grad/Sum_1Sum1train/gradients/cost/SquaredDifference_grad/mul_1Ctrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
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
%train/gradients/output/add_grad/ShapeShapeoutput/MatMul*
T0*
out_type0*
_output_shapes
:
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
#train/gradients/output/add_grad/SumSumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency5train/gradients/output/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
'train/gradients/output/add_grad/ReshapeReshape#train/gradients/output/add_grad/Sum%train/gradients/output/add_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
%train/gradients/output/add_grad/Sum_1SumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency7train/gradients/output/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
)train/gradients/output/add_grad/Reshape_1Reshape%train/gradients/output/add_grad/Sum_1'train/gradients/output/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
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
+train/gradients/output/MatMul_grad/MatMul_1MatMullayer_3/Relu8train/gradients/output/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
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
=train/gradients/output/MatMul_grad/tuple/control_dependency_1Identity+train/gradients/output/MatMul_grad/MatMul_14^train/gradients/output/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*>
_class4
20loc:@train/gradients/output/MatMul_grad/MatMul_1
�
*train/gradients/layer_3/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencylayer_3/Relu*
T0*'
_output_shapes
:���������
t
&train/gradients/layer_3/add_grad/ShapeShapelayer_3/MatMul*
_output_shapes
:*
T0*
out_type0
r
(train/gradients/layer_3/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
6train/gradients/layer_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_3/add_grad/Shape(train/gradients/layer_3/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_3/add_grad/SumSum*train/gradients/layer_3/Relu_grad/ReluGrad6train/gradients/layer_3/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(train/gradients/layer_3/add_grad/ReshapeReshape$train/gradients/layer_3/add_grad/Sum&train/gradients/layer_3/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_3/add_grad/Sum_1Sum*train/gradients/layer_3/Relu_grad/ReluGrad8train/gradients/layer_3/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
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
6train/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_2/add_grad/Shape(train/gradients/layer_2/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
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
;train/gradients/layer_2/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_2/add_grad/Reshape_12^train/gradients/layer_2/add_grad/tuple/group_deps*
_output_shapes
:*
T0*=
_class3
1/loc:@train/gradients/layer_2/add_grad/Reshape_1
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
>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_2/MatMul_grad/MatMul_15^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_2/MatMul_grad/MatMul_1*
_output_shapes

:
�
*train/gradients/layer_1/Relu_grad/ReluGradReluGrad<train/gradients/layer_2/MatMul_grad/tuple/control_dependencylayer_1/Relu*'
_output_shapes
:���������*
T0
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
$train/gradients/layer_1/add_grad/SumSum*train/gradients/layer_1/Relu_grad/ReluGrad6train/gradients/layer_1/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(train/gradients/layer_1/add_grad/ReshapeReshape$train/gradients/layer_1/add_grad/Sum&train/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_1/add_grad/Sum_1Sum*train/gradients/layer_1/Relu_grad/ReluGrad8train/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
*train/gradients/layer_1/MatMul_grad/MatMulMatMul9train/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/weights1/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
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
<train/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_1/MatMul_grad/MatMul5^train/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_1/MatMul_grad/MatMul*'
_output_shapes
:���������
�
>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_1/MatMul_grad/MatMul_15^train/gradients/layer_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*?
_class5
31loc:@train/gradients/layer_1/MatMul_grad/MatMul_1
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
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
z
train/beta1_power/readIdentitytrain/beta1_power*
_output_shapes
: *
T0*"
_class
loc:@layer_1/biases1
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
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *"
_class
loc:@layer_1/biases1*
	container 
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
$train/layer_1/weights1/Adam_1/AssignAssigntrain/layer_1/weights1/Adam_1/train/layer_1/weights1/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:*
use_locking(
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
!train/layer_1/biases1/Adam/AssignAssigntrain/layer_1/biases1/Adam,train/layer_1/biases1/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
�
train/layer_1/biases1/Adam/readIdentitytrain/layer_1/biases1/Adam*
_output_shapes
:*
T0*"
_class
loc:@layer_1/biases1
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
VariableV2*
shared_name *"
_class
loc:@layer_1/biases1*
	container *
shape:*
dtype0*
_output_shapes
:
�
#train/layer_1/biases1/Adam_1/AssignAssigntrain/layer_1/biases1/Adam_1.train/layer_1/biases1/Adam_1/Initializer/zeros*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:*
use_locking(
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
"train/layer_2/weights2/Adam/AssignAssigntrain/layer_2/weights2/Adam-train/layer_2/weights2/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_2/weights2
�
 train/layer_2/weights2/Adam/readIdentitytrain/layer_2/weights2/Adam*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
�
/train/layer_2/weights2/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_2/weights2*
valueB*    
�
train/layer_2/weights2/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_2/weights2*
	container *
shape
:*
dtype0*
_output_shapes

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
"train/layer_2/weights2/Adam_1/readIdentitytrain/layer_2/weights2/Adam_1*
_output_shapes

:*
T0*#
_class
loc:@layer_2/weights2
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
!train/layer_2/biases2/Adam_1/readIdentitytrain/layer_2/biases2/Adam_1*
_output_shapes
:*
T0*"
_class
loc:@layer_2/biases2
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
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_3/weights3*
	container 
�
"train/layer_3/weights3/Adam/AssignAssigntrain/layer_3/weights3/Adam-train/layer_3/weights3/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_3/weights3
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
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_3/weights3*
	container 
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
.train/layer_3/biases3/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_3/biases3*
valueB*    
�
train/layer_3/biases3/Adam_1
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
#train/layer_3/biases3/Adam_1/AssignAssigntrain/layer_3/biases3/Adam_1.train/layer_3/biases3/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
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
!train/output/weights4/Adam/AssignAssigntrain/output/weights4/Adam,train/output/weights4/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
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
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *"
_class
loc:@output/weights4
�
#train/output/weights4/Adam_1/AssignAssigntrain/output/weights4/Adam_1.train/output/weights4/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
�
!train/output/weights4/Adam_1/readIdentitytrain/output/weights4/Adam_1*
T0*"
_class
loc:@output/weights4*
_output_shapes

:
�
+train/output/biases4/Adam/Initializer/zerosConst*!
_class
loc:@output/biases4*
valueB*    *
dtype0*
_output_shapes
:
�
train/output/biases4/Adam
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
 train/output/biases4/Adam/AssignAssigntrain/output/biases4/Adam+train/output/biases4/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
�
train/output/biases4/Adam/readIdentitytrain/output/biases4/Adam*
_output_shapes
:*
T0*!
_class
loc:@output/biases4
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
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@output/biases4
�
"train/output/biases4/Adam_1/AssignAssigntrain/output/biases4/Adam_1-train/output/biases4/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@output/biases4
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
train/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
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
,train/Adam/update_layer_1/weights1/ApplyAdam	ApplyAdamlayer_1/weights1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_1/weights1*
use_nesterov( *
_output_shapes

:
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
+train/Adam/update_output/weights4/ApplyAdam	ApplyAdamoutput/weights4train/output/weights4/Adamtrain/output/weights4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/output/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0*"
_class
loc:@output/weights4
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
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: *
use_locking( 
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam*
_output_shapes
: *
T0*"
_class
loc:@layer_1/biases1
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
logging/current_cost/tagsConst*
dtype0*
_output_shapes
: *%
valueB Blogging/current_cost
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
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
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
save/Assign_2Assignlayer_2/biases2save/RestoreV2:2*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_4Assignlayer_3/biases3save/RestoreV2:4*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_6Assignoutput/biases4save/RestoreV2:6*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@output/biases4
�
save/Assign_7Assignoutput/weights4save/RestoreV2:7*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:*
use_locking(
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
save/Assign_9Assigntrain/beta2_powersave/RestoreV2:9*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*"
_class
loc:@layer_1/biases1
�
save/Assign_10Assigntrain/layer_1/biases1/Adamsave/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_1/biases1
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
save/Assign_12Assigntrain/layer_1/weights1/Adamsave/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
save/Assign_13Assigntrain/layer_1/weights1/Adam_1save/RestoreV2:13*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:*
use_locking(
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
save/Assign_15Assigntrain/layer_2/biases2/Adam_1save/RestoreV2:15*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_2/biases2
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
save/Assign_19Assigntrain/layer_3/biases3/Adam_1save/RestoreV2:19*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
�
save/Assign_20Assigntrain/layer_3/weights3/Adamsave/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
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
save/Assign_23Assigntrain/output/biases4/Adam_1save/RestoreV2:23*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_25Assigntrain/output/weights4/Adam_1save/RestoreV2:25*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
�
initNoOp^layer_1/biases1/Assign^layer_1/weights1/Assign^layer_2/biases2/Assign^layer_2/weights2/Assign^layer_3/biases3/Assign^layer_3/weights3/Assign^output/biases4/Assign^output/weights4/Assign^train/beta1_power/Assign^train/beta2_power/Assign"^train/layer_1/biases1/Adam/Assign$^train/layer_1/biases1/Adam_1/Assign#^train/layer_1/weights1/Adam/Assign%^train/layer_1/weights1/Adam_1/Assign"^train/layer_2/biases2/Adam/Assign$^train/layer_2/biases2/Adam_1/Assign#^train/layer_2/weights2/Adam/Assign%^train/layer_2/weights2/Adam_1/Assign"^train/layer_3/biases3/Adam/Assign$^train/layer_3/biases3/Adam_1/Assign#^train/layer_3/weights3/Adam/Assign%^train/layer_3/weights3/Adam_1/Assign!^train/output/biases4/Adam/Assign#^train/output/biases4/Adam_1/Assign"^train/output/weights4/Adam/Assign$^train/output/weights4/Adam_1/Assign""�~��     ��d]	c5ȝ�AJ܉
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
shape:���������*
dtype0*'
_output_shapes
:���������
�
1layer_1/weights1/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_1/weights1*
valueB"      
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
9layer_1/weights1/Initializer/random_uniform/RandomUniformRandomUniform1layer_1/weights1/Initializer/random_uniform/shape*
T0*#
_class
loc:@layer_1/weights1*
seed2 *
dtype0*
_output_shapes

:*

seed 
�
/layer_1/weights1/Initializer/random_uniform/subSub/layer_1/weights1/Initializer/random_uniform/max/layer_1/weights1/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_1/weights1
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
layer_1/biases1/AssignAssignlayer_1/biases1!layer_1/biases1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
z
layer_1/biases1/readIdentitylayer_1/biases1*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
:
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
/layer_2/weights2/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_2/weights2*
valueB
 *׳]?
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
VariableV2*
shared_name *#
_class
loc:@layer_2/weights2*
	container *
shape
:*
dtype0*
_output_shapes

:
�
layer_2/weights2/AssignAssignlayer_2/weights2+layer_2/weights2/Initializer/random_uniform*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
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
layer_2/biases2/AssignAssignlayer_2/biases2!layer_2/biases2/Initializer/zeros*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:*
use_locking(
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
layer_3/MatMulMatMullayer_2/Relulayer_3/weights3/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
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
0output/weights4/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@output/weights4*
valueB"      
�
.output/weights4/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *"
_class
loc:@output/weights4*
valueB
 *qĜ�
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
VariableV2*
shared_name *!
_class
loc:@output/biases4*
	container *
shape:*
dtype0*
_output_shapes
:
�
output/biases4/AssignAssignoutput/biases4 output/biases4/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@output/biases4
w
output/biases4/readIdentityoutput/biases4*
T0*!
_class
loc:@output/biases4*
_output_shapes
:
�
output/MatMulMatMullayer_3/Reluoutput/weights4/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
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
cost/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
#train/gradients/cost/Mean_grad/TileTile&train/gradients/cost/Mean_grad/Reshape$train/gradients/cost/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:���������
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
$train/gradients/cost/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
p
&train/gradients/cost/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
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
&train/gradients/cost/Mean_grad/MaximumMaximum%train/gradients/cost/Mean_grad/Prod_1(train/gradients/cost/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
'train/gradients/cost/Mean_grad/floordivFloorDiv#train/gradients/cost/Mean_grad/Prod&train/gradients/cost/Mean_grad/Maximum*
T0*
_output_shapes
: 
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
2train/gradients/cost/SquaredDifference_grad/scalarConst'^train/gradients/cost/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
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
/train/gradients/cost/SquaredDifference_grad/SumSum1train/gradients/cost/SquaredDifference_grad/mul_1Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
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
Dtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependencyIdentity3train/gradients/cost/SquaredDifference_grad/Reshape=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*F
_class<
:8loc:@train/gradients/cost/SquaredDifference_grad/Reshape
�
Ftrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency_1Identity/train/gradients/cost/SquaredDifference_grad/Neg=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/cost/SquaredDifference_grad/Neg*'
_output_shapes
:���������
r
%train/gradients/output/add_grad/ShapeShapeoutput/MatMul*
T0*
out_type0*
_output_shapes
:
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
'train/gradients/output/add_grad/ReshapeReshape#train/gradients/output/add_grad/Sum%train/gradients/output/add_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
%train/gradients/output/add_grad/Sum_1SumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency7train/gradients/output/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
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
+train/gradients/output/MatMul_grad/MatMul_1MatMullayer_3/Relu8train/gradients/output/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
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
*train/gradients/layer_3/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencylayer_3/Relu*
T0*'
_output_shapes
:���������
t
&train/gradients/layer_3/add_grad/ShapeShapelayer_3/MatMul*
_output_shapes
:*
T0*
out_type0
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
(train/gradients/layer_3/add_grad/ReshapeReshape$train/gradients/layer_3/add_grad/Sum&train/gradients/layer_3/add_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
&train/gradients/layer_3/add_grad/Sum_1Sum*train/gradients/layer_3/Relu_grad/ReluGrad8train/gradients/layer_3/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*train/gradients/layer_3/add_grad/Reshape_1Reshape&train/gradients/layer_3/add_grad/Sum_1(train/gradients/layer_3/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
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
<train/gradients/layer_3/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_3/MatMul_grad/MatMul5^train/gradients/layer_3/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*=
_class3
1/loc:@train/gradients/layer_3/MatMul_grad/MatMul
�
>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_3/MatMul_grad/MatMul_15^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_3/MatMul_grad/MatMul_1*
_output_shapes

:
�
*train/gradients/layer_2/Relu_grad/ReluGradReluGrad<train/gradients/layer_3/MatMul_grad/tuple/control_dependencylayer_2/Relu*'
_output_shapes
:���������*
T0
t
&train/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
T0*
out_type0*
_output_shapes
:
r
(train/gradients/layer_2/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
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
*train/gradients/layer_2/add_grad/Reshape_1Reshape&train/gradients/layer_2/add_grad/Sum_1(train/gradients/layer_2/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
�
1train/gradients/layer_2/add_grad/tuple/group_depsNoOp)^train/gradients/layer_2/add_grad/Reshape+^train/gradients/layer_2/add_grad/Reshape_1
�
9train/gradients/layer_2/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_2/add_grad/Reshape2^train/gradients/layer_2/add_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*;
_class1
/-loc:@train/gradients/layer_2/add_grad/Reshape
�
;train/gradients/layer_2/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_2/add_grad/Reshape_12^train/gradients/layer_2/add_grad/tuple/group_deps*
_output_shapes
:*
T0*=
_class3
1/loc:@train/gradients/layer_2/add_grad/Reshape_1
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
>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_2/MatMul_grad/MatMul_15^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_2/MatMul_grad/MatMul_1*
_output_shapes

:
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
(train/gradients/layer_1/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
6train/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_1/add_grad/Shape(train/gradients/layer_1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$train/gradients/layer_1/add_grad/SumSum*train/gradients/layer_1/Relu_grad/ReluGrad6train/gradients/layer_1/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
(train/gradients/layer_1/add_grad/ReshapeReshape$train/gradients/layer_1/add_grad/Sum&train/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&train/gradients/layer_1/add_grad/Sum_1Sum*train/gradients/layer_1/Relu_grad/ReluGrad8train/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
*train/gradients/layer_1/MatMul_grad/MatMulMatMul9train/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/weights1/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
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
train/beta1_power/readIdentitytrain/beta1_power*
_output_shapes
: *
T0*"
_class
loc:@layer_1/biases1
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
VariableV2*
dtype0*
_output_shapes
: *
shared_name *"
_class
loc:@layer_1/biases1*
	container *
shape: 
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
$train/layer_1/weights1/Adam_1/AssignAssigntrain/layer_1/weights1/Adam_1/train/layer_1/weights1/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:
�
"train/layer_1/weights1/Adam_1/readIdentitytrain/layer_1/weights1/Adam_1*
_output_shapes

:*
T0*#
_class
loc:@layer_1/weights1
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
!train/layer_1/biases1/Adam/AssignAssigntrain/layer_1/biases1/Adam,train/layer_1/biases1/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_1/biases1
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
!train/layer_1/biases1/Adam_1/readIdentitytrain/layer_1/biases1/Adam_1*
_output_shapes
:*
T0*"
_class
loc:@layer_1/biases1
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
VariableV2*
shared_name *#
_class
loc:@layer_2/weights2*
	container *
shape
:*
dtype0*
_output_shapes

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
 train/layer_2/weights2/Adam/readIdentitytrain/layer_2/weights2/Adam*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
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
,train/layer_2/biases2/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_2/biases2*
valueB*    
�
train/layer_2/biases2/Adam
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
!train/layer_2/biases2/Adam/AssignAssigntrain/layer_2/biases2/Adam,train/layer_2/biases2/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_2/biases2
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
VariableV2*"
_class
loc:@layer_2/biases2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
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
-train/layer_3/weights3/Adam/Initializer/zerosConst*#
_class
loc:@layer_3/weights3*
valueB*    *
dtype0*
_output_shapes

:
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
 train/layer_3/weights3/Adam/readIdentitytrain/layer_3/weights3/Adam*
_output_shapes

:*
T0*#
_class
loc:@layer_3/weights3
�
/train/layer_3/weights3/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_3/weights3*
valueB*    
�
train/layer_3/weights3/Adam_1
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *#
_class
loc:@layer_3/weights3*
	container 
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
!train/layer_3/biases3/Adam/AssignAssigntrain/layer_3/biases3/Adam,train/layer_3/biases3/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
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
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_3/biases3*
	container 
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
#train/output/weights4/Adam_1/AssignAssigntrain/output/weights4/Adam_1.train/output/weights4/Adam_1/Initializer/zeros*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:*
use_locking(
�
!train/output/weights4/Adam_1/readIdentitytrain/output/weights4/Adam_1*
_output_shapes

:*
T0*"
_class
loc:@output/weights4
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
VariableV2*
shared_name *!
_class
loc:@output/biases4*
	container *
shape:*
dtype0*
_output_shapes
:
�
"train/output/biases4/Adam_1/AssignAssigntrain/output/biases4/Adam_1-train/output/biases4/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:
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
train/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
train/Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
W
train/Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
,train/Adam/update_layer_1/weights1/ApplyAdam	ApplyAdamlayer_1/weights1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@layer_1/weights1*
use_nesterov( *
_output_shapes

:*
use_locking( 
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
,train/Adam/update_layer_2/weights2/ApplyAdam	ApplyAdamlayer_2/weights2train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_2/weights2*
use_nesterov( *
_output_shapes

:
�
+train/Adam/update_layer_2/biases2/ApplyAdam	ApplyAdamlayer_2/biases2train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_2/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@layer_2/biases2
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
+train/Adam/update_layer_3/biases3/ApplyAdam	ApplyAdamlayer_3/biases3train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_3/add_grad/tuple/control_dependency_1*
T0*"
_class
loc:@layer_3/biases3*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
+train/Adam/update_output/weights4/ApplyAdam	ApplyAdamoutput/weights4train/output/weights4/Adamtrain/output/weights4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/output/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0*"
_class
loc:@output/weights4
�
*train/Adam/update_output/biases4/ApplyAdam	ApplyAdamoutput/biases4train/output/biases4/Adamtrain/output/biases4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon:train/gradients/output/add_grad/tuple/control_dependency_1*
T0*!
_class
loc:@output/biases4*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*"
_class
loc:@layer_1/biases1
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
save/AssignAssignlayer_1/biases1save/RestoreV2*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_3Assignlayer_2/weights2save/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
�
save/Assign_4Assignlayer_3/biases3save/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_3/biases3
�
save/Assign_5Assignlayer_3/weights3save/RestoreV2:5*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_6Assignoutput/biases4save/RestoreV2:6*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@output/biases4
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
save/Assign_9Assigntrain/beta2_powersave/RestoreV2:9*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*"
_class
loc:@layer_1/biases1
�
save/Assign_10Assigntrain/layer_1/biases1/Adamsave/RestoreV2:10*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:
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
save/Assign_12Assigntrain/layer_1/weights1/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_1/weights1
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
save/Assign_14Assigntrain/layer_2/biases2/Adamsave/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_2/biases2
�
save/Assign_15Assigntrain/layer_2/biases2/Adam_1save/RestoreV2:15*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_16Assigntrain/layer_2/weights2/Adamsave/RestoreV2:16*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_17Assigntrain/layer_2/weights2/Adam_1save/RestoreV2:17*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_18Assigntrain/layer_3/biases3/Adamsave/RestoreV2:18*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_20Assigntrain/layer_3/weights3/Adamsave/RestoreV2:20*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
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
save/Assign_22Assigntrain/output/biases4/Adamsave/RestoreV2:22*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_25Assigntrain/output/weights4/Adam_1save/RestoreV2:25*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*"
_class
loc:@output/weights4
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
�
initNoOp^layer_1/biases1/Assign^layer_1/weights1/Assign^layer_2/biases2/Assign^layer_2/weights2/Assign^layer_3/biases3/Assign^layer_3/weights3/Assign^output/biases4/Assign^output/weights4/Assign^train/beta1_power/Assign^train/beta2_power/Assign"^train/layer_1/biases1/Adam/Assign$^train/layer_1/biases1/Adam_1/Assign#^train/layer_1/weights1/Adam/Assign%^train/layer_1/weights1/Adam_1/Assign"^train/layer_2/biases2/Adam/Assign$^train/layer_2/biases2/Adam_1/Assign#^train/layer_2/weights2/Adam/Assign%^train/layer_2/weights2/Adam_1/Assign"^train/layer_3/biases3/Adam/Assign$^train/layer_3/biases3/Adam_1/Assign#^train/layer_3/weights3/Adam/Assign%^train/layer_3/weights3/Adam_1/Assign!^train/output/biases4/Adam/Assign#^train/output/biases4/Adam_1/Assign"^train/output/weights4/Adam/Assign$^train/output/weights4/Adam_1/Assign""�
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
logging/current_cost:0"
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
train/output/biases4/Adam_1:0"train/output/biases4/Adam_1/Assign"train/output/biases4/Adam_1/read:02/train/output/biases4/Adam_1/Initializer/zeros:0j=a(       �pJ	at˝�A*

logging/current_cost��/=�J��*       ����	��˝�A*

logging/current_costJ�(=���\*       ����	>�˝�A
*

logging/current_costm�"=7�!�*       ����	�"̝�A*

logging/current_cost!=���*       ����	�S̝�A*

logging/current_cost��=���<*       ����	:�̝�A*

logging/current_cost��=,z��*       ����	Ⱦ̝�A*

logging/current_cost�U=d{�*       ����	��̝�A#*

logging/current_cost��	=�<��*       ����	@#͝�A(*

logging/current_costX�==��*       ����	�X͝�A-*

logging/current_cost.N=���;*       ����	��͝�A2*

logging/current_cost)[=\p?�*       ����	��͝�A7*

logging/current_cost�� =zXh*       ����	^�͝�A<*

logging/current_cost�n�<�}��*       ����	� Ν�AA*

logging/current_cost���<d�E�*       ����	�RΝ�AF*

logging/current_cost��<�o��*       ����	�Ν�AK*

logging/current_costU!�<m^'�*       ����	�Ν�AP*

logging/current_cost��<@�`�*       ����	�Ν�AU*

logging/current_cost||�<���K*       ����	Tϝ�AZ*

logging/current_cost�Q�<ܝ)�*       ����	(=ϝ�A_*

logging/current_cost[u�<i�Ƞ*       ����	�nϝ�Ad*

logging/current_cost���<PDWu*       ����	��ϝ�Ai*

logging/current_cost���<����*       ����	_�ϝ�An*

logging/current_costR��<��T*       ����	�Н�As*

logging/current_cost.w�<�яj*       ����	0Н�Ax*

logging/current_cost�}�<2*       ����	�^Н�A}*

logging/current_cost���<�x�+       ��K	L�Н�A�*

logging/current_cost5��<�z��+       ��K	�Н�A�*

logging/current_cost4}�<u�X�+       ��K	�ѝ�A�*

logging/current_cost�u�<Dt��+       ��K	=Bѝ�A�*

logging/current_cost�v�<9��~+       ��K	ovѝ�A�*

logging/current_cost�v�<T�3�+       ��K	��ѝ�A�*

logging/current_cost�p�<^���+       ��K	a�ѝ�A�*

logging/current_cost�h�<��g�+       ��K	�ҝ�A�*

logging/current_cost7c�<���+       ��K	<Kҝ�A�*

logging/current_cost@Z�<H)r�+       ��K	|ҝ�A�*

logging/current_cost�K�<P�+       ��K	��ҝ�A�*

logging/current_cost�8�<-�5+       ��K	l�ҝ�A�*

logging/current_cost���<\��_+       ��K	�ӝ�A�*

logging/current_costy*�<�� x+       ��K	aEӝ�A�*

logging/current_cost���<+�:�+       ��K	�tӝ�A�*

logging/current_costR��<�8c+       ��K	��ӝ�A�*

logging/current_cost��<̺��+       ��K	��ӝ�A�*

logging/current_cost��<�Ht|+       ��K	�ԝ�A�*

logging/current_costtL�<K��+       ��K	<ԝ�A�*

logging/current_cost�"�<"���+       ��K	ejԝ�A�*

logging/current_costĵ�<�L,I+       ��K	'�ԝ�A�*

logging/current_cost��<vVO�+       ��K	;�ԝ�A�*

logging/current_costLX�<��.�+       ��K	��ԝ�A�*

logging/current_cost}��<�+       ��K	�,՝�A�*

logging/current_costL.�<�.Z+       ��K	�]՝�A�*

logging/current_cost�ӵ<�|�+       ��K	~�՝�A�*

logging/current_cost���<�,�M+       ��K	��՝�A�*

logging/current_costa�<8o?+       ��K	k�՝�A�*

logging/current_cost[I�<�X��+       ��K	,֝�A�*

logging/current_cost��<Gv&�+       ��K	\֝�A�*

logging/current_cost�D�<P�J�+       ��K	g�֝�A�*

logging/current_cost�W�<̴�5+       ��K	�֝�A�*

logging/current_cost�	�<��8s+       ��K	3�֝�A�*

logging/current_cost�{<�8�+       ��K	< ם�A�*

logging/current_cost��o<��m+       ��K	�Sם�A�*

logging/current_cost�Uc<�a��+       ��K	��ם�A�*

logging/current_cost:Y<�r�+       ��K	ñם�A�*

logging/current_cost�N<�˂�+       ��K	��ם�A�*

logging/current_costWyE<���O+       ��K	=؝�A�*

logging/current_cost�<<-�+       ��K	�F؝�A�*

logging/current_costG�3<w� 6+       ��K	�x؝�A�*

logging/current_cost�_-<��)+       ��K	+�؝�A�*

logging/current_cost<
&<7���+       ��K	��؝�A�*

logging/current_costD� <c�kc+       ��K	�ٝ�A�*

logging/current_costy�<���u+       ��K	�@ٝ�A�*

logging/current_cost��<�m+�+       ��K	
oٝ�A�*

logging/current_cost�<*��A+       ��K	��ٝ�A�*

logging/current_costC�<��%A+       ��K	�ٝ�A�*

logging/current_cost|Q<��On+       ��K	zڝ�A�*

logging/current_costl�<�0*++       ��K	�7ڝ�A�*

logging/current_cost�<�T��+       ��K	yjڝ�A�*

logging/current_costq�<�a��+       ��K	��ڝ�A�*

logging/current_costT+<�1:6+       ��K	��ڝ�A�*

logging/current_cost��
<����+       ��K	��ڝ�A�*

logging/current_costv�	<���++       ��K	�3۝�A�*

logging/current_cost9'	<��+       ��K	�h۝�A�*

logging/current_cost�B<9�+       ��K	��۝�A�*

logging/current_cost�W<��,�+       ��K	��۝�A�*

logging/current_costR�<Z���+       ��K	Tܝ�A�*

logging/current_cost��<Bs�5+       ��K	 6ܝ�A�*

logging/current_costs�<r:-.+       ��K	�sܝ�A�*

logging/current_cost=<���T+       ��K	��ܝ�A�*

logging/current_costb<�0)�+       ��K	��ܝ�A�*

logging/current_cost	<<��4+       ��K	 ݝ�A�*

logging/current_cost��<1�>�+       ��K	�Aݝ�A�*

logging/current_costys<�}�+       ��K	�rݝ�A�*

logging/current_costj<?]p�+       ��K	9�ݝ�A�*

logging/current_cost��<w��	+       ��K	��ݝ�A�*

logging/current_cost��<:jse+       ��K	�ޝ�A�*

logging/current_cost��<�Γ�+       ��K	�;ޝ�A�*

logging/current_costɏ<����+       ��K	�kޝ�A�*

logging/current_cost;<#��S+       ��K	��ޝ�A�*

logging/current_cost"� <�܇�+       ��K	��ޝ�A�*

logging/current_cost�| <?�\t+       ��K	��ޝ�A�*

logging/current_cost� <Ǟ��+       ��K	�'ߝ�A�*

logging/current_cost��;�|B�+       ��K	�Uߝ�A�*

logging/current_costP�;T��+       ��K	�ߝ�A�*

logging/current_cost���;�R0%+       ��K	��ߝ�A�*

logging/current_cost�E�;pv��+       ��K	��ߝ�A�*

logging/current_cost<��;����+       ��K	;���A�*

logging/current_cost��;9�]�+       ��K	.<���A�*

logging/current_costL��;�g+       ��K	h���A�*

logging/current_cost`M�;[l^+       ��K	����A�*

logging/current_cost���;X��+       ��K	{����A�*

logging/current_cost�7�;��t�+       ��K	�����A�*

logging/current_cost`��;�[�+       ��K	� ��A�*

logging/current_cost���;�t#�+       ��K	�N��A�*

logging/current_cost��;�D#�+       ��K	&}��A�*

logging/current_cost���;�X�+       ��K	���A�*

logging/current_cost�m�;���+       ��K	8���A�*

logging/current_cost�Y�;�o�+       ��K	���A�*

logging/current_cost�H�;ͪP�+       ��K	|4��A�*

logging/current_costn�;��ؗ+       ��K	7d��A�*

logging/current_costd��;Ѓ%�+       ��K	���A�*

logging/current_cost���;�l0&+       ��K	����A�*

logging/current_cost���;�m}+       ��K	o���A�*

logging/current_costk��;��+       ��K	���A�*

logging/current_cost�x�;E���+       ��K	�K��A�*

logging/current_cost�f�;��Ƣ+       ��K	`y��A�*

logging/current_costT;�;�c�+       ��K	4���A�*

logging/current_cost�7�;�4+       ��K	_���A�*

logging/current_costy�;ʈ�+       ��K	��A�*

logging/current_cost���;6��+       ��K	2��A�*

logging/current_costA�;�d/k+       ��K	�`��A�*

logging/current_costa�;���+       ��K	*���A�*

logging/current_cost���;0y�+       ��K	^���A�*

logging/current_costKA�;�g��+       ��K	���A�*

logging/current_cost,�;�<�+       ��K	�N��A�*

logging/current_cost`��;�~+       ��K	���A�*

logging/current_cost$��;�w��+       ��K	U���A�*

logging/current_cost���;r���+       ��K	,��A�*

logging/current_cost�A�;�N��+       ��K	�5��A�*

logging/current_cost���;p�'�+       ��K	�g��A�*

logging/current_cost9��;�4P�+       ��K	֘��A�*

logging/current_cost���;���+       ��K	%���A�*

logging/current_cost���;���+       ��K	<��A�*

logging/current_cost���;_Gv�+       ��K	�>��A�*

logging/current_cost ��;[<��+       ��K	�o��A�*

logging/current_cost���;���+       ��K	����A�*

logging/current_costy��;KM�+       ��K	����A�*

logging/current_cost$��;d�[+       ��K	���A�*

logging/current_cost���;�(�*+       ��K	yH��A�*

logging/current_cost��;'�Pt+       ��K	�{��A�*

logging/current_cost)��;W�;Q+       ��K	N���A�*

logging/current_cost���;bJD�+       ��K	���A�*

logging/current_cost�l�;r�%u+       ��K	���A�*

logging/current_cost�l�;�.+       ��K	N��A�*

logging/current_cost�P�;FaY+       ��K	����A�*

logging/current_costR[�;�G�+       ��K	����A�*

logging/current_cost�C�;��(�+       ��K	
���A�*

logging/current_cost|=�;V��-+       ��K	~!��A�*

logging/current_costl��;��T�+       ��K	�W��A�*

logging/current_cost�?�;*X�+       ��K	[���A�*

logging/current_cost��;��+       ��K	���A�*

logging/current_cost���;wb�+       ��K	u���A�*

logging/current_costND�;c�q�+       ��K	�'��A�*

logging/current_costE�;�s�+       ��K	[��A�*

logging/current_cost��;8w��+       ��K	����A�*

logging/current_cost���;�x+       ��K	����A�*

logging/current_cost���;>��A+       ��K	Y���A�*

logging/current_cost+�;���+       ��K	z��A�*

logging/current_cost�;>`!�+       ��K	�Y��A�*

logging/current_cost ��;!Pm+       ��K	����A�*

logging/current_cost�;��&c+       ��K	���A�*

logging/current_cost���;͋�+       ��K	����A�*

logging/current_cost ��;�
�(+       ��K	���A�*

logging/current_cost���;��jH+       ��K	TQ��A�*

logging/current_cost���;�g�*+       ��K	p���A�*

logging/current_cost���;�26+       ��K	Y���A�*

logging/current_costk��;;%8+       ��K	����A�*

logging/current_costl��;�{u+       ��K	���A�*

logging/current_cost���;�_�
+       ��K	�?��A�*

logging/current_cost�d�;���-+       ��K	�p��A�*

logging/current_cost g�;�38#+       ��K	$���A�*

logging/current_cost�[�;H�P�+       ��K	����A�*

logging/current_cost�d�;_�~1+       ��K	���A�*

logging/current_cost�T�;n���+       ��K	?��A�*

logging/current_costKN�;8�� +       ��K	r��A�*

logging/current_cost9=�;<�+       ��K	����A�*

logging/current_cost57�;/1Oq+       ��K	����A�*

logging/current_costD*�;�Ҟ+       ��K	_��A�*

logging/current_cost�#�;�}�7+       ��K	�B��A�*

logging/current_cost��;�ֱJ+       ��K	C��A�*

logging/current_cost�;m&��+       ��K	���A�*

logging/current_cost#�;� NH+       ��K	����A�*

logging/current_cost��;�l@�+       ��K	�%��A�*

logging/current_costY�;�9+       ��K	�U��A�*

logging/current_costE�;��'6+       ��K	ސ��A�*

logging/current_cost��;6�'+       ��K	����A�*

logging/current_cost"�;��G+       ��K	����A�*

logging/current_cost@T�;��+       ��K	F,��A�*

logging/current_cost ��;yY,�+       ��K	�Z��A�*

logging/current_cost$��;�e{+       ��K	Q���A�*

logging/current_cost��;��+       ��K	����A�*

logging/current_cost��;oI�;+       ��K	N��A�*

logging/current_cost4��;�k�w+       ��K	�9��A�*

logging/current_cost���;]6�=+       ��K	�{��A�*

logging/current_costN��;HgM+       ��K	4���A�*

logging/current_cost�~�;�u�8+       ��K	����A�*

logging/current_cost�~�;�)]f+       ��K	A���A�*

logging/current_cost�z�;wf��+       ��K	p���A�*

logging/current_cost�|�;&-;�+       ��K	����A�*

logging/current_cost�r�;���+       ��K	�����A�*

logging/current_cost�s�;�zǨ+       ��K	7����A�*

logging/current_costm�;g	+       ��K	\-���A�*

logging/current_cost�n�;`Fht+       ��K	6^���A�*

logging/current_cost�h�;b��~+       ��K	Ŋ���A�*

logging/current_costf�;&%h.+       ��K	�����A�*

logging/current_cost�d�;y���+       ��K	%����A�*

logging/current_costR\�;`~��+       ��K	, ���A�*

logging/current_cost�[�;���$+       ��K	�Q���A�*

logging/current_cost�[�;2�+       ��K	����A�*

logging/current_cost`[�;���+       ��K	�����A�*

logging/current_cost@Z�;eu�+       ��K	~����A�*

logging/current_cost�X�;�g�:+       ��K	�'���A�*

logging/current_cost>N�;E��+       ��K	�t���A�*

logging/current_cost|K�;�T�+       ��K	�����A�*

logging/current_cost�M�;�&;+       ��K	>����A�*

logging/current_cost�K�;�
��+       ��K	����A�*

logging/current_cost�H�; � �+       ��K	�R���A�*

logging/current_costNJ�;b�� +       ��K	Ԇ���A�*

logging/current_cost�G�;�Ǎ+       ��K	w����A�*

logging/current_cost�E�;�cc�+       ��K	�����A�*

logging/current_cost�D�;b�\#+       ��K	����A�*

logging/current_cost�B�;GMd�+       ��K	�?���A�*

logging/current_costC�;�לn+       ��K	(o���A�	*

logging/current_costdB�;�[r+       ��K	[����A�	*

logging/current_costr@�;P��+       ��K	�����A�	*

logging/current_costk@�;�ܖ+       ��K	����A�	*

logging/current_cost�=�;�`�+       ��K	O$���A�	*

logging/current_cost7=�;6P�+       ��K	�T���A�	*

logging/current_cost�:�;e�h+       ��K	����A�	*

logging/current_cost�9�;�;e+       ��K	1����A�	*

logging/current_cost�8�;��p�+       ��K	�����A�	*

logging/current_cost�9�;\{�+       ��K	
���A�	*

logging/current_cost 9�;ۿ��+       ��K	8���A�	*

logging/current_cost��;��X+       ��K	�c���A�	*

logging/current_costE�;>޼B+       ��K	����A�	*

logging/current_cost.�;���+       ��K	U����A�	*

logging/current_cost�#�;x�n+       ��K	����A�	*

logging/current_cost9+�;��%�+       ��K	�`���A�	*

logging/current_costr�;���w+       ��K	'����A�	*

logging/current_cost��;���+       ��K	g����A�	*

logging/current_cost�;tlׁ+       ��K	<%���A�	*

logging/current_cost�	�;�+h+       ��K	u_���A�	*

logging/current_cost��;�W�n+       ��K	M����A�	*

logging/current_cost�+�;�@ui+       ��K	����A�	*

logging/current_costG�;Il�"+       ��K	�����A�	*

logging/current_cost)5�;3��[+       ��K	�5���A�	*

logging/current_cost-�;<Ӓ�+       ��K	zi���A�	*

logging/current_costn+�;�x^+       ��K	�����A�
*

logging/current_cost)�;�A+       ��K		����A�
*

logging/current_cost��;_ov�+       ��K	4���A�
*

logging/current_cost��; ���+       ��K	W>���A�
*

logging/current_cost	!�;Yݺ�+       ��K	Jv���A�
*

logging/current_costt3�;*�+       ��K	:����A�
*

logging/current_cost�-�;/��+       ��K	P����A�
*

logging/current_cost9*�;B��=+       ��K	  ��A�
*

logging/current_cost�$�;q�!�+       ��K	�_ ��A�
*

logging/current_cost�"�;���+       ��K	Ǐ ��A�
*

logging/current_cost��;��A+       ��K	;� ��A�
*

logging/current_cost��;;��+       ��K	�� ��A�
*

logging/current_cost��;�=gV+       ��K	�!��A�
*

logging/current_cost��;aI�+       ��K	BR��A�
*

logging/current_cost��;U��+       ��K	����A�
*

logging/current_cost��;��?�+       ��K	O���A�
*

logging/current_cost`�;U3��+       ��K	1���A�
*

logging/current_costK�;�.��+       ��K	���A�
*

logging/current_cost�
�;���+       ��K	wI��A�
*

logging/current_costU�;��y+       ��K	,w��A�
*

logging/current_cost��;yR+       ��K	����A�
*

logging/current_cost���;�i|y+       ��K	���A�
*

logging/current_coste��;��+       ��K	�B��A�
*

logging/current_cost��;Ӡ�Y+       ��K	���A�
*

logging/current_cost���; T^�+       ��K	����A�
*

logging/current_cost���;��+       ��K	���A�
*

logging/current_cost��;���+       ��K	�<��A�*

logging/current_cost�!�;��re+       ��K	�w��A�*

logging/current_cost�=�;(Q��+       ��K	����A�*

logging/current_cost��;�}��+       ��K	 ���A�*

logging/current_cost��;m4;"+       ��K	T+��A�*

logging/current_cost��;��+       ��K	`��A�*

logging/current_cost<��;�� �+       ��K	֒��A�*

logging/current_cost���;-�+       ��K	-���A�*

logging/current_cost �;k�dv+       ��K	^���A�*

logging/current_cost��;bC}v+       ��K	�.��A�*

logging/current_cost���;�R�t+       ��K	ha��A�*

logging/current_cost��;�+��+       ��K	���A�*

logging/current_cost�;��!+       ��K	����A�*

logging/current_cost|�;��+       ��K	����A�*

logging/current_cost�;����+       ��K	+��A�*

logging/current_cost���;�O\{+       ��K	�P��A�*

logging/current_cost�;�x�+       ��K	��A�*

logging/current_costd�;���+       ��K	K���A�*

logging/current_cost�#�;v.�'+       ��K	����A�*

logging/current_cost���;����+       ��K	���A�*

logging/current_cost2��;��+       ��K	�4��A�*

logging/current_cost4��;�n3+       ��K	�`��A�*

logging/current_cost ��;e-8�+       ��K	����A�*

logging/current_costR�;�lh�+       ��K	!���A�*

logging/current_cost���;kظ+       ��K	����A�*

logging/current_cost
�;8=�Z+       ��K	�&	��A�*

logging/current_cost7"�;��+       ��K	?x	��A�*

logging/current_cost��;`�K+       ��K	��	��A�*

logging/current_cost�;�� +       ��K	��	��A�*

logging/current_cost���;���p+       ��K	�
��A�*

logging/current_cost'�;��+       ��K	�I
��A�*

logging/current_cost�3�;y���+       ��K	Oy
��A�*

logging/current_cost �;��v�+       ��K	�
��A�*

logging/current_costB��;��y�+       ��K	f�
��A�*

logging/current_costg��; ɷ�+       ��K	:��A�*

logging/current_cost$�;6�wF+       ��K	�3��A�*

logging/current_cost�	�;2Pʚ+       ��K	T`��A�*

logging/current_cost���;P=P�+       ��K	ȍ��A�*

logging/current_costk�;l���+       ��K	����A�*

logging/current_cost���;)�c+       ��K	���A�*

logging/current_cost\��;���Y+       ��K	���A�*

logging/current_cost��;|�e�+       ��K	�I��A�*

logging/current_cost�;�
|�+       ��K	~v��A�*

logging/current_cost��;W�C+       ��K	���A�*

logging/current_cost���;\'�+       ��K	Q���A�*

logging/current_cost��;��
^+       ��K	 ��A�*

logging/current_cost���;qvP+       ��K	�?��A�*

logging/current_cost5 �;�ǼT+       ��K	�t��A�*

logging/current_cost���;,�7+       ��K	Z���A�*

logging/current_cost���;��r�+       ��K	���A�*

logging/current_cost��;�Ř++       ��K	q��A�*

logging/current_cost���;M�CX+       ��K	�0��A�*

logging/current_cost���;���+       ��K	9c��A�*

logging/current_costK��;H{f+       ��K	����A�*

logging/current_cost9�;nC8�+       ��K	���A�*

logging/current_cost���;ʓ5�+       ��K	����A�*

logging/current_cost+��;�6s�+       ��K	�"��A�*

logging/current_cost��;�_e`+       ��K	�O��A�*

logging/current_costG��;.0�+       ��K	݅��A�*

logging/current_cost� �;*�0+       ��K	����A�*

logging/current_cost���;5��+       ��K	����A�*

logging/current_cost\��;j�c�+       ��K	B��A�*

logging/current_cost���;�k��+       ��K	�K��A�*

logging/current_cost���;wE��+       ��K	���A�*

logging/current_costg��;Q���+       ��K	���A�*

logging/current_cost'��;f�L+       ��K	4���A�*

logging/current_costU-�;@1{+       ��K	���A�*

logging/current_cost���;kTG�+       ��K	F=��A�*

logging/current_cost���;=��3+       ��K	�j��A�*

logging/current_cost ��;#�gu+       ��K	����A�*

logging/current_costE��;(a�&+       ��K	C���A�*

logging/current_costU��;����+       ��K	v ��A�*

logging/current_costr��;�G��+       ��K	q0��A�*

logging/current_cost7��;T���+       ��K	�^��A�*

logging/current_costt��;��\+       ��K	Ռ��A�*

logging/current_cost$
�;�A+       ��K	���A�*

logging/current_cost�;��+       ��K	Z���A�*

logging/current_cost���;W�z�+       ��K	<��A�*

logging/current_cost'��;$!A+       ��K	K��A�*

logging/current_cost���;u!բ+       ��K	�w��A�*

logging/current_cost|��;��&�+       ��K	=���A�*

logging/current_cost���;��N�+       ��K	3���A�*

logging/current_cost���;��+       ��K	���A�*

logging/current_costL��;6/pD+       ��K	�<��A�*

logging/current_costu��;�@Ω+       ��K	�j��A�*

logging/current_cost���;�m�h+       ��K	����A�*

logging/current_cost���;�zcM+       ��K	����A�*

logging/current_cost���;U��+       ��K	����A�*

logging/current_costu��;;SC+       ��K	O!��A�*

logging/current_costR �;�j�+       ��K	bP��A�*

logging/current_costk��;��w^+       ��K	�{��A�*

logging/current_cost���;~��+       ��K	���A�*

logging/current_cost���;�;��+       ��K	���A�*

logging/current_cost��;����+       ��K	o��A�*

logging/current_cost;��;8=\+       ��K	�4��A�*

logging/current_cost���;G�8+       ��K	�c��A�*

logging/current_cost���;��σ+       ��K	Տ��A�*

logging/current_cost���;$8�+       ��K	����A�*

logging/current_cost��;_�C�+       ��K	����A�*

logging/current_cost2��;~�c+       ��K	y��A�*

logging/current_cost���;p��S+       ��K	�C��A�*

logging/current_cost���;S�3�+       ��K		s��A�*

logging/current_costG��;C�K%+       ��K	����A�*

logging/current_cost���;�"[+       ��K	����A�*

logging/current_cost���;�hn�+       ��K	����A�*

logging/current_costG��;&؈E+       ��K	�)��A�*

logging/current_costD��;K_eD+       ��K	�W��A�*

logging/current_costW��;���:+       ��K	A���A�*

logging/current_cost���;>&�j+       ��K	����A�*

logging/current_costl��;��E�+       ��K	����A�*

logging/current_cost���;��o+       ��K	%��A�*

logging/current_coste��;�N+       ��K	�@��A�*

logging/current_cost���;t;��+       ��K	on��A�*

logging/current_cost���;�F�#+       ��K	����A�*

logging/current_cost���;��T+       ��K	n���A�*

logging/current_cost���;��j[+       ��K	���A�*

logging/current_cost��;۷^�+       ��K	�2��A�*

logging/current_cost���;���+       ��K	�a��A�*

logging/current_cost���;�H&+       ��K	���A�*

logging/current_costP��;���+       ��K	����A�*

logging/current_cost���;�֮M+       ��K	*���A�*

logging/current_cost���;+`[4+       ��K	���A�*

logging/current_costR��;�iZ+       ��K	�J��A�*

logging/current_cost���;���l+       ��K	�x��A�*

logging/current_cost���;�\�z+       ��K	k���A�*

logging/current_costD��;��a�+       ��K	0���A�*

logging/current_cost���;��Y�+       ��K	��A�*

logging/current_cost|��;
�'+       ��K	�3��A�*

logging/current_cost ��;��U�+       ��K	�_��A�*

logging/current_cost���;M��B+       ��K	���A�*

logging/current_costK��;b7;�+       ��K	����A�*

logging/current_cost���;a�,�+       ��K	����A�*

logging/current_cost���;�7�+       ��K	���A�*

logging/current_cost. �;�4m�+       ��K	�K��A�*

logging/current_cost� �;�Јk+       ��K	�|��A�*

logging/current_costg�;f���+       ��K	_���A�*

logging/current_cost�;�=?+       ��K	$���A�*

logging/current_cost��;;r:+       ��K	���A�*

logging/current_cost)�;���+       ��K	1:��A�*

logging/current_cost��;��+       ��K	Tg��A�*

logging/current_costi�;1~~�+       ��K	����A�*

logging/current_cost�;+�+       ��K	"���A�*

logging/current_cost��;�O#�+       ��K	q���A�*

logging/current_costB�;ּyj+       ��K	A��A�*

logging/current_cost��;����+       ��K	�K��A�*

logging/current_costl�;����+       ��K	�~��A�*

logging/current_costK�;��F�+       ��K	����A�*

logging/current_costu��;����+       ��K	����A�*

logging/current_cost���;���+       ��K	� ��A�*

logging/current_cost��;�ZN-+       ��K	$7 ��A�*

logging/current_cost�#�;�) 9+       ��K	�f ��A�*

logging/current_costΟ�;��+       ��K	�� ��A�*

logging/current_costg&�;�c�+       ��K	X� ��A�*

logging/current_cost;��;�6�+       ��K	�� ��A�*

logging/current_cost+4�;G�d+       ��K	�!��A�*

logging/current_costi��;a�Р+       ��K	�I!��A�*

logging/current_costU
�;���+       ��K	w!��A�*

logging/current_costY��;��9+       ��K	d�!��A�*

logging/current_costK��;[V"M+       ��K	��!��A�*

logging/current_cost���;��2+       ��K	��!��A�*

logging/current_costg��;9�TK+       ��K	/"��A�*

logging/current_costW��;A��+       ��K	�\"��A�*

logging/current_cost��;���+       ��K	O�"��A�*

logging/current_cost[��;1	�W+       ��K	9�"��A�*

logging/current_cost��;+c�+       ��K	z�"��A�*

logging/current_cost��;�	�<+       ��K	�#��A�*

logging/current_costY��;;���+       ��K	�A#��A�*

logging/current_cost��;eh?�+       ��K	�m#��A�*

logging/current_cost��;�n�8+       ��K	�#��A�*

logging/current_cost��;}�v�+       ��K	��#��A�*

logging/current_cost��;ؒ�?+       ��K	��#��A�*

logging/current_cost��;����+       ��K	�#$��A�*

logging/current_cost�8�;�i��+       ��K	ES$��A�*

logging/current_costu��;R���+       ��K	7�$��A�*

logging/current_costn��;$�߬+       ��K	�$��A�*

logging/current_cost�B�;��.+       ��K	(�$��A�*

logging/current_cost���;�5+       ��K	�%��A�*

logging/current_cost���;Zɐ�+       ��K	 5%��A�*

logging/current_cost²�;C�	+       ��K	c%��A�*

logging/current_cost�0�;h�+       ��K	p�%��A�*

logging/current_cost��;�+       ��K	��%��A�*

logging/current_cost~��;�Ԏ+       ��K	��%��A�*

logging/current_cost���;�2!+       ��K	�&��A�*

logging/current_cost��;4$ �+       ��K	3F&��A�*

logging/current_cost;��;�m�+       ��K	�t&��A�*

logging/current_costk��;�<�+       ��K	�&��A�*

logging/current_cost��;qTF�+       ��K	��&��A�*

logging/current_cost�;�6CX+       ��K	n'��A�*

logging/current_cost@�;���+       ��K	g='��A�*

logging/current_cost���;2��+       ��K	p'��A�*

logging/current_costտ�;<��+       ��K	�'��A�*

logging/current_cost���;0�2+       ��K	}�'��A�*

logging/current_cost�u�;�q1R+       ��K	�(��A�*

logging/current_cost��;]�TV+       ��K	�6(��A�*

logging/current_cost<��;�&�+       ��K	�e(��A�*

logging/current_cost�;�ͮ�+       ��K	6�(��A�*

logging/current_cost��;�g'k+       ��K	��(��A�*

logging/current_cost���;F��+       ��K	d�(��A�*

logging/current_costu��;�Fv+       ��K	�/)��A�*

logging/current_cost|��;���+       ��K	
^)��A�*

logging/current_cost���;��+       ��K	��)��A�*

logging/current_cost�;?q�+       ��K	��)��A�*

logging/current_cost8�;��E�+       ��K	��)��A�*

logging/current_cost���;e�]�+       ��K	�*��A�*

logging/current_cost���;��+       ��K	M*��A�*

logging/current_cost9.�;u�E.+       ��K	N}*��A�*

logging/current_cost˵�;�/XG+       ��K	�*��A�*

logging/current_cost���;�4�N+       ��K	�*��A�*

logging/current_cost��;c��+       ��K	�	+��A�*

logging/current_cost���;��+       ��K	�<+��A�*

logging/current_costǨ�;C�A+       ��K	�o+��A�*

logging/current_costR%�;�n�+       ��K	G�+��A�*

logging/current_cost��;&�E+       ��K	��+��A�*

logging/current_cost��;���+       ��K	y�+��A�*

logging/current_cost���;�}�+       ��K	P+,��A�*

logging/current_costL�;�t�+       ��K	|Y,��A�*

logging/current_cost">�;��Y)+       ��K	��,��A�*

logging/current_costd��;��Ic+       ��K	�,��A�*

logging/current_cost��; ]�+       ��K	��,��A�*

logging/current_cost��;��pA+       ��K	�-��A�*

logging/current_cost$�;U���+       ��K	�K-��A�*

logging/current_costB�;'���+       ��K	1-��A�*

logging/current_costҼ�;��yi+       ��K	��-��A�*

logging/current_cost��;�|��+       ��K	�-��A�*

logging/current_costд�;��9�+       ��K	�.��A�*

logging/current_costT
�;K	�+       ��K	�9.��A�*

logging/current_costk��;h��+       ��K	�h.��A�*

logging/current_costE�;h-�4+       ��K	��.��A�*

logging/current_cost��;�aRl+       ��K	<�.��A�*

logging/current_cost��;�^�+       ��K	K�.��A�*

logging/current_cost�K�;4��X+       ��K	?/��A�*

logging/current_cost��;n��H+       ��K	sK/��A�*

logging/current_cost�1�;Fv�g+       ��K	�y/��A�*

logging/current_cost>�;]gRV+       ��K	��/��A�*

logging/current_cost�>�;�&�B+       ��K	��/��A�*

logging/current_cost�+�;VB4u+       ��K	�0��A�*

logging/current_costrL�;0�x]+       ��K	Y30��A�*

logging/current_cost�L�;!�+       ��K	`0��A�*

logging/current_cost ,�;�;�A+       ��K	r�0��A�*

logging/current_cost�;씺)+       ��K	��0��A�*

logging/current_costk�;�P-�+       ��K	o�0��A�*

logging/current_cost��;2�
1+       ��K	�1��A�*

logging/current_cost��;J���+       ��K	xH1��A�*

logging/current_cost���;��cZ+       ��K	�s1��A�*

logging/current_cost[��;�`�+       ��K	Z�1��A�*

logging/current_cost���;Όm+       ��K	f�1��A�*

logging/current_cost<��;�X�+       ��K	��1��A�*

logging/current_cost��;��y+       ��K	i*2��A�*

logging/current_costN��;湜�+       ��K	�Y2��A�*

logging/current_cost9��;�u\�+       ��K	��2��A�*

logging/current_cost���;��]=+       ��K	^�2��A�*

logging/current_cost���;��S+       ��K	F�2��A�*

logging/current_costР�;A�x�+       ��K	3��A�*

logging/current_cost���;Z�6{+       ��K	�?3��A�*

logging/current_cost���;����+       ��K	�o3��A�*

logging/current_cost���;�j�+       ��K	P�3��A�*

logging/current_costT�;}��+       ��K	��3��A�*

logging/current_costr��;jb�+       ��K	�4��A�*

logging/current_cost��;�R#+       ��K	�34��A�*

logging/current_cost��;��,�+       ��K	lb4��A�*

logging/current_cost���;�u�+       ��K	%�4��A�*

logging/current_cost���;b+       ��K	[�4��A�*

logging/current_cost���;��#+       ��K	5�4��A�*

logging/current_cost��;��QK+       ��K	�5��A�*

logging/current_cost�;�US+       ��K	I5��A�*

logging/current_cost�Z�;Pl��+       ��K	z5��A�*

logging/current_cost|M�;�W��+       ��K	*�5��A�*

logging/current_cost��;Y��+       ��K	$�5��A�*

logging/current_cost��;��P!+       ��K	�6��A�*

logging/current_cost��;krO�+       ��K	B46��A�*

logging/current_cost.��;�.��+       ��K	e6��A�*

logging/current_costI��;f�+       ��K	�6��A�*

logging/current_cost@��;���+       ��K	�6��A�*

logging/current_cost���;�B� +       ��K	I�6��A�*

logging/current_cost%��;zɅ�+       ��K	� 7��A�*

logging/current_costw��;f��H+       ��K	)Q7��A�*

logging/current_costd�;1���+       ��K	��7��A�*

logging/current_cost�1�;��+       ��K	��7��A�*

logging/current_cost�A�;��+       ��K	��7��A�*

logging/current_cost 9�;�$��+       ��K	�8��A�*

logging/current_cost�A�;(B9Y+       ��K	F8��A�*

logging/current_cost)6�;B���+       ��K	�t8��A�*

logging/current_cost >�;��;+       ��K	ޣ8��A�*

logging/current_costG-�;(K�+       ��K	��8��A�*

logging/current_cost���;~՛�+       ��K	 9��A�*

logging/current_cost�8�;Q���+       ��K	X.9��A�*

logging/current_cost2�;�iL�+       ��K	�\9��A�*

logging/current_cost�-�;?�A�+       ��K	��9��A�*

logging/current_cost��;�J�+       ��K	��9��A�*

logging/current_costwe�;}o_U+       ��K	��9��A�*

logging/current_cost�R�;��+       ��K	�:��A�*

logging/current_cost�L�;����+       ��K	oN:��A�*

logging/current_cost�)�;.#��+       ��K	|:��A�*

logging/current_cost�	�;�&a+       ��K	�:��A�*

logging/current_costU�;����+       ��K	]�:��A�*

logging/current_cost���;}-D"+       ��K	�;��A�*

logging/current_cost���;˵�d+       ��K	�1;��A�*

logging/current_cost���;��"+       ��K	�_;��A�*

logging/current_cost�^�;���+       ��K	K�;��A�*

logging/current_cost�m�;�~�_+       ��K	�;��A�*

logging/current_cost��;J�+       ��K	�<��A�*

logging/current_cost�q�;捓�+       ��K	�T<��A�*

logging/current_cost�)�;Q�X_+       ��K	m�<��A�*

logging/current_cost+�;�6ط+       ��K	C�<��A�*

logging/current_cost �;+�%+       ��K	�=��A�*

logging/current_cost�$�;8���+       ��K	�:=��A�*

logging/current_costF�;��%�+       ��K	�}=��A�*

logging/current_cost���;*²+       ��K	��=��A�*

logging/current_cost���;��#�+       ��K	��=��A�*

logging/current_cost ��;A"z7+       ��K	F->��A�*

logging/current_cost�0�;
��+       ��K	�f>��A�*

logging/current_cost���;���g+       ��K	�>��A�*

logging/current_costٖ�;��bC+       ��K	��>��A�*

logging/current_cost�(�;�4+       ��K	��>��A�*

logging/current_cost���;�]�+       ��K	�B?��A�*

logging/current_costG��;Bm�+       ��K	*�?��A�*

logging/current_cost4��;���+       ��K	��?��A�*

logging/current_cost[��;�8:X+       ��K	�?��A�*

logging/current_cost���;:�*�+       ��K	�@��A�*

logging/current_costK��;ǳ�`+       ��K	QM@��A�*

logging/current_cost���;�B�v+       ��K	5@��A�*

logging/current_cost���;)�z�+       ��K	��@��A�*

logging/current_cost���;.9��+       ��K	��@��A�*

logging/current_cost@��;r��+       ��K	�A��A�*

logging/current_costw��;H-�+       ��K	�HA��A�*

logging/current_cost�;H��>+       ��K	xA��A�*

logging/current_cost'1�;j�|b+       ��K	t�A��A�*

logging/current_cost�J�;�$�+       ��K	��A��A�*

logging/current_cost�S�;��i�+       ��K	B��A�*

logging/current_cost ��;�� +       ��K	�AB��A�*

logging/current_cost���;n�{�+       ��K	�uB��A�*

logging/current_cost���;M<X�+       ��K	�B��A�*

logging/current_cost��;4K]�+       ��K	��B��A�*

logging/current_cost�N�;wYc?+       ��K	AC��A�*

logging/current_cost�U�;�_�+       ��K	b:C��A�*

logging/current_cost�6�;�"6"+       ��K	~gC��A�*

logging/current_cost�0�;|�^�+       ��K	@�C��A�*

logging/current_cost���;���"+       ��K	��C��A�*

logging/current_costN
�;���+       ��K	��C��A�*

logging/current_costK��;h�R+       ��K	:(D��A�*

logging/current_cost �;�e��+       ��K	�VD��A�*

logging/current_costGA�;�v0r+       ��K	@�D��A�*

logging/current_cost���;���u+       ��K	u�D��A�*

logging/current_costu!�;!1�n+       ��K	:�D��A�*

logging/current_cost��;���{+       ��K	]E��A�*

logging/current_costԂ�;���+       ��K	AE��A�*

logging/current_cost���;Ć�]+       ��K	wqE��A�*

logging/current_cost $�;�A�+       ��K	�E��A�*

logging/current_costi��;Vrt+       ��K	��E��A�*

logging/current_cost��;��%�+       ��K	F��A�*

logging/current_cost�y�;����+       ��K	�1F��A�*

logging/current_cost�1�;�(6;+       ��K	`F��A�*

logging/current_cost�9�;Iya+       ��K	��F��A�*

logging/current_cost��;7y��+       ��K	�F��A�*

logging/current_cost$��;x�G8+       ��K	.�F��A�*

logging/current_cost���;�l��+       ��K	SG��A�*

logging/current_costu��;���+       ��K	�JG��A�*

logging/current_costU^�;��;+       ��K	zG��A�*

logging/current_costN��;9:�+       ��K	g�G��A�*

logging/current_cost��;�[l@+       ��K	��G��A�*

logging/current_cost ��;��94+       ��K	�H��A�*

logging/current_cost|��;���m+       ��K	1H��A�*

logging/current_costG��;Si�+       ��K	^H��A�*

logging/current_cost���;�.}w+       ��K	#�H��A�*

logging/current_cost���;g�K+       ��K	��H��A�*

logging/current_cost`��;��+       ��K	b�H��A�*

logging/current_cost~��;�.�c+       ��K	`!I��A�*

logging/current_cost�3�;oG!�+       ��K	�QI��A�*

logging/current_cost��;�!�+       ��K	��I��A�*

logging/current_cost���;1'�+       ��K	�I��A�*

logging/current_cost���;WQ$�+       ��K	^�I��A�*

logging/current_cost�P�;�х�+       ��K	]J��A�*

logging/current_cost��;.�D�+       ��K	�;J��A�*

logging/current_cost0(�;��d�+       ��K	"hJ��A�*

logging/current_costN��;���1+       ��K	6�J��A�*

logging/current_costn�;N	�+       ��K	��J��A�*

logging/current_cost���;�ފ�+       ��K	+�J��A�*

logging/current_cost��;��#�+       ��K	�K��A�*

logging/current_cost���;�Ip+       ��K	'MK��A�*

logging/current_cost	�;�w��+       ��K	�yK��A�*

logging/current_cost0��;0�&f+       ��K	�K��A�*

logging/current_cost��;>�,+       ��K	9�K��A�*

logging/current_cost���;��z�+       ��K	�L��A�*

logging/current_cost��;V�N-+       ��K	�/L��A�*

logging/current_cost\��;g/r�+       ��K	�]L��A�*

logging/current_cost��;�S��+       ��K	T�L��A�*

logging/current_cost)��;#!�+       ��K	R�L��A�*

logging/current_cost�;��+�+       ��K	S�L��A�*

logging/current_cost��;�%q+       ��K	M��A�*

logging/current_cost�
�; �_�+       ��K	NHM��A�*

logging/current_cost���;Guq+       ��K	xM��A�*

logging/current_cost+	�;�;��+       ��K	�M��A�*

logging/current_costI��;;�(+       ��K	$�M��A�*

logging/current_cost��;j8T+       ��K	�N��A�*

logging/current_cost���;��W�+       ��K	69N��A�*

logging/current_costL�;���q+       ��K	�fN��A�*

logging/current_cost7��;K�W4+       ��K	s�N��A�*

logging/current_cost��;'���+       ��K	;�N��A�*

logging/current_cost	�;��+       ��K	��N��A�*

logging/current_cost�T�;���+       ��K	{O��A�*

logging/current_costg[�;$���+       ��K	oJO��A�*

logging/current_cost���;i3$�+       ��K	��O��A�*

logging/current_cost���;0�G[+       ��K	��O��A�*

logging/current_cost���;~�05+       ��K	
P��A�*

logging/current_cost+F�;�e�+       ��K	QP��A�*

logging/current_cost�h�;�E�%+       ��K	W�P��A�*

logging/current_costU��;�� �+       ��K	��P��A�*

logging/current_cost���;4�μ+       ��K	�Q��A�*

logging/current_cost���;^*p�+       ��K	�FQ��A�*

logging/current_cost W�;;*d�+       ��K	ǃQ��A�*

logging/current_cost�B�;U��E+       ��K	�Q��A�*

logging/current_cost�j�;�d��+       ��K	!�Q��A�*

logging/current_cost��;=|�+       ��K	�3R��A�*

logging/current_cost|��;
��{+       ��K	#jR��A�*

logging/current_cost��;���+       ��K	
�R��A�*

logging/current_costy6�;Բ8�+       ��K	`�R��A�*

logging/current_cost��;gz4�+       ��K	�S��A�*

logging/current_cost{$�;7�+       ��K	?S��A�*

logging/current_cost	��;��V+       ��K	HoS��A�*

logging/current_costEU�;�o$�+       ��K	�S��A�*

logging/current_cost��;׽�%+       ��K	*�S��A�*

logging/current_cost'��;]�<2+       ��K	xT��A�*

logging/current_cost���;H̕�+       ��K	qGT��A�*

logging/current_cost"��;��\+       ��K	+vT��A�*

logging/current_cost<��;M{M�+       ��K	Y�T��A�*

logging/current_costK�;sӺ�+       ��K		�T��A�*

logging/current_cost���;{j^�+       ��K	�U��A�*

logging/current_cost���;��_V+       ��K	�3U��A�*

logging/current_cost��;ƛ�=+       ��K	�aU��A�*

logging/current_cost��;�c#�+       ��K	�U��A�*

logging/current_costI&�;�eS+       ��K	@�U��A�*

logging/current_cost�J�;"{�+       ��K	��U��A�*

logging/current_cost���;!j�+       ��K	�!V��A�*

logging/current_cost{��;C��+       ��K	�\V��A�*

logging/current_cost�j�;ٔ�+       ��K	�V��A�*

logging/current_cost���;׀��+       ��K	��V��A�*

logging/current_cost�h�;?_r3+       ��K	��V��A�*

logging/current_cost���;m	Z{+       ��K	�W��A�*

logging/current_cost��;D\�+       ��K	/BW��A�*

logging/current_cost���;&��+       ��K	�rW��A�*

logging/current_costy��;]6s�+       ��K	�W��A�*

logging/current_cost	�;�1A�+       ��K	Q�W��A�*

logging/current_cost	��;�Qj/+       ��K	��W��A�*

logging/current_coste��;�݇�+       ��K	[*X��A�*

logging/current_costҗ�;���B+       ��K	�VX��A�*

logging/current_cost��;��+       ��K	(�X��A�*

logging/current_costՂ�;�\��+       ��K	��X��A�*

logging/current_cost'��;q�g�+       ��K	��X��A�*

logging/current_cost$%�;��hB+       ��K	YY��A�*

logging/current_cost;�;mpMa+       ��K	gEY��A�*

logging/current_cost9��;�l�8+       ��K	EsY��A�*

logging/current_cost��;���3+       ��K	��Y��A�*

logging/current_cost`��;���+       ��K	�Y��A�*

logging/current_cost'��;��-+       ��K	��Y��A�*

logging/current_costT�;�e�7+       ��K	Z-Z��A�*

logging/current_costg��;�5X+       ��K	b]Z��A�*

logging/current_costy��;A`s+       ��K	��Z��A�*

logging/current_cost�k�;8��+       ��K	ݷZ��A�*

logging/current_cost~��;�~�7+       ��K	p�Z��A�*

logging/current_cost\G�;s���+       ��K	�[��A�*

logging/current_cost��;��Y_+       ��K	@P[��A�*

logging/current_costPx�; ��n+       ��K	��[��A�*

logging/current_cost0X�;�T+       ��K	��[��A�*

logging/current_coste~�;�Ȳ(+       ��K	��[��A�*

logging/current_cost�F�;t!�O+       ��K	�\��A�*

logging/current_costk�;<�ؙ+       ��K	�:\��A�*

logging/current_cost5��;�kd+       ��K	er\��A�*

logging/current_cost�}�;y�+       ��K	��\��A�*

logging/current_costr��;0w!+       ��K	g�\��A�*

logging/current_costu��;�D��+       ��K	7 ]��A�*

logging/current_costTG�;!��Y+       ��K	�0]��A�*

logging/current_cost2��;�Y�D+       ��K	�a]��A�*

logging/current_cost�Q�;��?+       ��K	��]��A�*

logging/current_costܓ�;g�/�+       ��K	�]��A�*

logging/current_cost!�;�ߋ�+       ��K	��]��A�*

logging/current_cost���;r�H+       ��K	�!^��A�*

logging/current_cost���;W��+       ��K	)P^��A�*

logging/current_cost9T�;��~+       ��K	5^��A�*

logging/current_cost���;�w�+       ��K	ݯ^��A�*

logging/current_cost�h�;���+       ��K	x�^��A�*

logging/current_cost���;�ٜ�+       ��K	�_��A�*

logging/current_cost+��;H�[�+       ��K	�9_��A�*

logging/current_cost�M�;��|4+       ��K	#o_��A�*

logging/current_costr��;����+       ��K	;�_��A�*

logging/current_cost�G�;q�+       ��K	��_��A�*

logging/current_costu��;���+       ��K	�_��A�*

logging/current_costO�;� �+       ��K	?*`��A�*

logging/current_cost�N�;)��+       ��K	�V`��A�*

logging/current_cost7q�;'�?�+       ��K	��`��A�*

logging/current_cost��;��]�+       ��K	z�`��A�*

logging/current_costTB�;Z(+       ��K	?�`��A�*

logging/current_cost��;*k\	+       ��K	�a��A�*

logging/current_costp��;]/�+       ��K	�Ca��A�*

logging/current_cost`��;Ř��+       ��K	�pa��A�*

logging/current_cost��;�n��+       ��K	��a��A�*

logging/current_cost��;<��t+       ��K	��a��A�*

logging/current_cost7��;�Z�H+       ��K	��a��A�*

logging/current_cost���;:Fđ+       ��K	8)b��A�*

logging/current_cost��;[�
(+       ��K	�Vb��A�*

logging/current_costio�;UEb+       ��K	�b��A�*

logging/current_cost�b�;{\�D+       ��K	��b��A�*

logging/current_cost\b�;�[r�+       ��K	�b��A�*

logging/current_costK��;a��3+       ��K	�c��A�*

logging/current_cost)��;�B"+       ��K	�;c��A�*

logging/current_cost7��;���C+       ��K	�hc��A�*

logging/current_costi`�;��\+       ��K	��c��A�*

logging/current_costd��;��+       ��K	��c��A�*

logging/current_cost�,�;�?�+       ��K	�c��A�*

logging/current_cost<��;��H+       ��K	Z d��A�*

logging/current_cost`1�;y��+       ��K	�Od��A�*

logging/current_cost"��;�	�+       ��K	�{d��A�*

logging/current_cost���;��N+       ��K	\�d��A�*

logging/current_costg��;�m0+       ��K	��d��A�*

logging/current_cost�~�;��s�+       ��K	e��A�*

logging/current_cost5\�;5f�f+       ��K	�/e��A�*

logging/current_cost\d�;`�P+       ��K	E_e��A�*

logging/current_cost�j�;����+       ��K	K�e��A�*

logging/current_cost���;</�=+       ��K	ܹe��A�*

logging/current_costB��;����+       ��K	�e��A�*

logging/current_cost<��;A?�+       ��K	Gf��A�*

logging/current_cost���;����+       ��K	�Jf��A�*

logging/current_costT��;.dV+       ��K	lxf��A�*

logging/current_costg$�;��u�+       ��K	��f��A�*

logging/current_cost4r�;��ٸ+       ��K	(�f��A�*

logging/current_cost���;��/�+       ��K	g��A�*

logging/current_cost���;\�+       ��K	@5g��A�*

logging/current_cost���;��EU+       ��K	 dg��A�*

logging/current_cost��;���+       ��K	��g��A�*

logging/current_costL&�;�8�+       ��K	��g��A�*

logging/current_cost$��;���+       ��K	/�g��A�*

logging/current_cost���;\�5+       ��K	Q"h��A�*

logging/current_costI��;�Z}1+       ��K	�Ph��A�*

logging/current_cost���;g�+       ��K	�~h��A�*

logging/current_costd��;r�3+       ��K	U�h��A�*

logging/current_cost�Z�;;�+       ��K	��h��A�*

logging/current_cost�N�;I���+       ��K	�
i��A�*

logging/current_cost���;��=*+       ��K	f7i��A�*

logging/current_cost�$�;%��~+       ��K	�di��A�*

logging/current_cost+Q�;�i�h+       ��K	˗i��A� *

logging/current_cost��;�t� +       ��K	D�i��A� *

logging/current_cost��;��g+       ��K	��i��A� *

logging/current_cost`.�;oĵ�+       ��K	�%j��A� *

logging/current_cost�6�;�,+       ��K	.[j��A� *

logging/current_costĚ�;u��+       ��K	��j��A� *

logging/current_cost�l�;�7�s+       ��K	̻j��A� *

logging/current_cost��;\Ǎv+       ��K	�j��A� *

logging/current_cost��;uJ�+       ��K	J#k��A� *

logging/current_cost:�;(�܏+       ��K	^k��A� *

logging/current_cost���;S-/�+       ��K	P�k��A� *

logging/current_cost�u�;�16]+       ��K	w�k��A� *

logging/current_cost��;��m�+       ��K	��k��A� *

logging/current_cost��;h� (+       ��K	�,l��A� *

logging/current_costuS�;{�
+       ��K	�al��A� *

logging/current_costY��;�X�&+       ��K	ݔl��A� *

logging/current_cost�;��#+       ��K	��l��A� *

logging/current_costwc�;6��f+       ��K	X�l��A� *

logging/current_cost5��;>,'+       ��K	�%m��A� *

logging/current_cost	"�;�jV�+       ��K	7Xm��A� *

logging/current_cost���;��2?+       ��K	��m��A� *

logging/current_cost���;؊�q+       ��K	��m��A� *

logging/current_cost�V�;6��R+       ��K	��m��A� *

logging/current_cost�%�;�jY5+       ��K	�n��A� *

logging/current_cost���;ܑ��+       ��K	jGn��A� *

logging/current_cost�Z�;=d�+       ��K	wn��A�!*

logging/current_cost	��;ù3�+       ��K	x�n��A�!*

logging/current_costB��;��f'+       ��K	��n��A�!*

logging/current_cost�r�;�`��+       ��K	ho��A�!*

logging/current_cost���;��d�+       ��K	�,o��A�!*

logging/current_cost�D�;����+       ��K		Zo��A�!*

logging/current_cost�;|��+       ��K	�o��A�!*

logging/current_cost��;-M+       ��K	��o��A�!*

logging/current_cost|��;�B��+       ��K	h�o��A�!*

logging/current_cost\��;���+       ��K	�p��A�!*

logging/current_cost˞�;���+       ��K	@p��A�!*

logging/current_cost\y�;�=�+       ��K	�lp��A�!*

logging/current_cost���;��Ö+       ��K	��p��A�!*

logging/current_cost���;q�Z+       ��K	��p��A�!*

logging/current_cost��;�^�+       ��K	��p��A�!*

logging/current_cost�'�;2 -+       ��K	u%q��A�!*

logging/current_cost�!�;��1�+       ��K	"Rq��A�!*

logging/current_cost���;��}�+       ��K	�q��A�!*

logging/current_cost��;�S+       ��K	��q��A�!*

logging/current_costD��;�&f+       ��K	e�q��A�!*

logging/current_cost���;����+       ��K	�	r��A�!*

logging/current_cost^��;����+       ��K	�7r��A�!*

logging/current_cost��;R��*+       ��K	�ir��A�!*

logging/current_cost���;��c+       ��K	�r��A�!*

logging/current_cost��;�5�+       ��K	u�r��A�!*

logging/current_cost���;��;�+       ��K	��r��A�!*

logging/current_cost��;2��+       ��K	� s��A�"*

logging/current_cost�Q�;���+       ��K	Ns��A�"*

logging/current_cost���;<",N+       ��K	P{s��A�"*

logging/current_cost���;~۠�+       ��K	ҩs��A�"*

logging/current_cost̼�;��A�+       ��K	��s��A�"*

logging/current_cost��;���+       ��K	dt��A�"*

logging/current_costRr�;��2+       ��K	P5t��A�"*

logging/current_costY@�;J&u�+       ��K	�ct��A�"*

logging/current_cost�c�;�	+       ��K	��t��A�"*

logging/current_cost���;��+       ��K	�t��A�"*

logging/current_cost\�;~�%+       ��K	��t��A�"*

logging/current_cost���;����+       ��K	y#u��A�"*

logging/current_cost>r�;Q\��+       ��K	Ru��A�"*

logging/current_cost)�;CCi+       ��K	�~u��A�"*

logging/current_cost���;4���+       ��K	9�u��A�"*

logging/current_cost^L�;��OJ+       ��K	��u��A�"*

logging/current_costI��;��Y+       ��K	�v��A�"*

logging/current_cost��;6���+       ��K	o2v��A�"*

logging/current_cost�
�;��|+       ��K	Vav��A�"*

logging/current_cost���;$��+       ��K	 �v��A�"*

logging/current_costt5�;b��+       ��K	M�v��A�"*

logging/current_cost�>�;���^+       ��K	!�v��A�"*

logging/current_cost�b�;F��+       ��K	w��A�"*

logging/current_cost��;[��T+       ��K	LLw��A�"*

logging/current_cost���;b@�+       ��K	\|w��A�"*

logging/current_cost�[�;�_�\+       ��K	�w��A�#*

logging/current_cost92�;��߭+       ��K	��w��A�#*

logging/current_cost'z�;`���+       ��K	�x��A�#*

logging/current_cost���;��#+       ��K	�5x��A�#*

logging/current_cost��;qL�F+       ��K	�`x��A�#*

logging/current_cost���;ˣ`�+       ��K	B�x��A�#*

logging/current_cost\+�;�EW+       ��K	��x��A�#*

logging/current_cost<��;O¬+       ��K	��x��A�#*

logging/current_cost���;DA�+       ��K	Dy��A�#*

logging/current_cost;��;5;��+       ��K	MLy��A�#*

logging/current_cost޼�;N }	+       ��K	}y��A�#*

logging/current_cost���;�$+       ��K	M�y��A�#*

logging/current_costel�;#�ޯ+       ��K	��y��A�#*

logging/current_cost;/�;�lJs+       ��K	�z��A�#*

logging/current_costų�;���M+       ��K	�4z��A�#*

logging/current_cost�u�;y�/+       ��K	�cz��A�#*

logging/current_cost�i�;0�X�+       ��K	��z��A�#*

logging/current_cost��;�h/a+       ��K	��z��A�#*

logging/current_cost���;P���+       ��K	6�z��A�#*

logging/current_cost�5�;�0^�+       ��K	L{��A�#*

logging/current_cost���;Ys�+       ��K	xJ{��A�#*

logging/current_cost�X�;�'N+       ��K	0�{��A�#*

logging/current_cost7~�;
��-+       ��K	0�{��A�#*

logging/current_costn��;~���+       ��K	�	|��A�#*

logging/current_cost��;H�+       ��K	�>|��A�#*

logging/current_cost���;��+       ��K	E�|��A�#*

logging/current_cost%��;=-n+       ��K	��|��A�$*

logging/current_cost���;kNT+       ��K	��|��A�$*

logging/current_costI��;2+�+       ��K	'}��A�$*

logging/current_cost�7�;'.��+       ��K	�d}��A�$*

logging/current_cost$��;�A�?+       ��K	��}��A�$*

logging/current_cost.K�;{��B+       ��K	��}��A�$*

logging/current_cost���;�K~+       ��K	�~��A�$*

logging/current_cost`��;�c�+       ��K	Q~��A�$*

logging/current_cost�+�;�Ծ�+       ��K	x�~��A�$*

logging/current_cost\:�;3��++       ��K	~�~��A�$*

logging/current_costt��;σ��+       ��K	9�~��A�$*

logging/current_cost9��;S�Kv+       ��K	((��A�$*

logging/current_cost(�;��U�+       ��K	�d��A�$*

logging/current_cost��;��++       ��K	Ɲ��A�$*

logging/current_cost��;o�%�+       ��K	����A�$*

logging/current_cost�)�;��C�+       ��K	����A�$*

logging/current_cost{��;S�F�+       ��K	�=���A�$*

logging/current_costL��;A��i+       ��K	q���A�$*

logging/current_costl��;�%Hz+       ��K	Ǣ���A�$*

logging/current_cost�P�;N�+       ��K	/р��A�$*

logging/current_cost���;!E�+       ��K	r���A�$*

logging/current_cost\w�;���+       ��K	�/���A�$*

logging/current_cost���;�_�A+       ��K	�^���A�$*

logging/current_cost�A�;ꛦ�+       ��K	�����A�$*

logging/current_cost��;.R>�+       ��K	ع���A�$*

logging/current_costG|�;=��u+       ��K	�ꁞ�A�$*

logging/current_costV�;�c��+       ��K	� ���A�%*

logging/current_costr��;��+       ��K	�R���A�%*

logging/current_costl_�;n +       ��K	P����A�%*

logging/current_cost�*�;����+       ��K	�����A�%*

logging/current_cost���;^��+       ��K	D䂞�A�%*

logging/current_cost�b�;2HE�+       ��K	����A�%*

logging/current_cost^��;���+       ��K	lA���A�%*

logging/current_costd	�;�u�#+       ��K	�p���A�%*

logging/current_cost`C�;��6+       ��K	[����A�%*

logging/current_cost�r�;�h��+       ��K	fЃ��A�%*

logging/current_cost���;p���+       ��K	�����A�%*

logging/current_cost+�;���+       ��K	�.���A�%*

logging/current_cost$��;���j+       ��K	�a���A�%*

logging/current_cost�/�;$�Ĕ+       ��K	>����A�%*

logging/current_costk�;��+       ��K	���A�%*

logging/current_cost��;q|9
+       ��K	���A�%*

logging/current_cost>��;g�s(+       ��K	�"���A�%*

logging/current_cost+��;/��+       ��K	PR���A�%*

logging/current_cost���;��-�+       ��K	|���A�%*

logging/current_cost���;�d+       ��K	�����A�%*

logging/current_cost$�;Q��i+       ��K	=ᅞ�A�%*

logging/current_cost���;�#+       ��K	C���A�%*

logging/current_cost4g�;���+       ��K	~>���A�%*

logging/current_costO�;�qr+       ��K	Tr���A�%*

logging/current_cost(�;���+       ��K	ߡ���A�%*

logging/current_costkf�;�=�+       ��K	φ��A�&*

logging/current_cost^��;Q+       ��K	�����A�&*

logging/current_cost�;���;+       ��K	;.���A�&*

logging/current_cost��;����+       ��K	�[���A�&*

logging/current_costp��;r�Qu+       ��K	 ����A�&*

logging/current_cost�O�;��4+       ��K	����A�&*

logging/current_cost���;;r�]+       ��K	�臞�A�&*

logging/current_cost`��;�)�q+       ��K	����A�&*

logging/current_cost�g�;R��+       ��K	�C���A�&*

logging/current_costr��;��++       ��K	xp���A�&*

logging/current_cost@�;%�m�+       ��K	z����A�&*

logging/current_cost.��;�!��+       ��K	�Ј��A�&*

logging/current_costk�;p���+       ��K	 ���A�&*

logging/current_cost�=�;6wX�+       ��K	;@���A�&*

logging/current_cost޵�;2t��+       ��K	D����A�&*

logging/current_costW�;78+       ��K	ĸ���A�&*

logging/current_coste��;4�5�+       ��K	�����A�&*

logging/current_costr��;�z�H+       ��K	!/���A�&*

logging/current_cost�>�;�v+       ��K	b���A�&*

logging/current_cost���;N��%+       ��K	����A�&*

logging/current_cost)h�;�|��+       ��K	6Ί��A�&*

logging/current_cost���;���+       ��K	����A�&*

logging/current_cost�C�;��68+       ��K	�@���A�&*

logging/current_costG�;�6h+       ��K	�x���A�&*

logging/current_cost��;=��*+       ��K	����A�&*

logging/current_cost�g�;4#E+       ��K	O勞�A�&*

logging/current_cost��;V�`+       ��K	����A�'*

logging/current_cost�h�;Ȣ�{+       ��K	 N���A�'*

logging/current_cost'��;��n:+       ��K	Y����A�'*

logging/current_cost���;-H.�+       ��K	𱌞�A�'*

logging/current_costi��;ӁUg+       ��K	�ތ��A�'*

logging/current_cost�h�;U+       ��K	����A�'*

logging/current_cost��;�=^+       ��K	�<���A�'*

logging/current_cost�M�;l	�+       ��K	p���A�'*

logging/current_cost0��;�9&q+       ��K	l����A�'*

logging/current_cost��;N^+       ��K	ύ��A�'*

logging/current_costw��;@	5�+       ��K	^����A�'*

logging/current_cost)��;ß��+       ��K	�*���A�'*

logging/current_cost|�;��}`+       ��K	+X���A�'*

logging/current_cost��;��+       ��K	�����A�'*

logging/current_cost���;���+       ��K	�����A�'*

logging/current_cost���;��y+       ��K	�莞�A�'*

logging/current_cost%��;��E5+       ��K	����A�'*

logging/current_cost[`�;T��H+       ��K	�G���A�'*

logging/current_costl��;3�+       ��K	(u���A�'*

logging/current_cost���;A�+       ��K	����A�'*

logging/current_costr�;$�#�+       ��K	�Ꮮ�A�'*

logging/current_cost���;/���+       ��K	|���A�'*

logging/current_cost���;�n#+       ��K	�E���A�'*

logging/current_cost)��;��<4+       ��K	Tv���A�'*

logging/current_cost���;;a�+       ��K	禐��A�'*

logging/current_costE8�;1���+       ��K	kԐ��A�(*

logging/current_cost ��;�2��+       ��K	'���A�(*

logging/current_cost�;�;��+       ��K	T5���A�(*

logging/current_costN�;�ԅ+       ��K	ff���A�(*

logging/current_cost��;gJ�+       ��K	㘑��A�(*

logging/current_cost�G�;rϼ�+       ��K	�ʑ��A�(*

logging/current_costG��;e�}+       ��K	�����A�(*

logging/current_costu��;��$+       ��K	�&���A�(*

logging/current_cost@G�;a��+       ��K	�S���A�(*

logging/current_cost���;��E+       ��K	d����A�(*

logging/current_cost2�;���+       ��K	�����A�(*

logging/current_coste �;I�U+       ��K	�撞�A�(*

logging/current_costp+�;XT+       ��K	.���A�(*

logging/current_cost���;�&G+       ��K	�K���A�(*

logging/current_costr�;���+       ��K	�y���A�(*

logging/current_cost\��;r;�+       ��K	y����A�(*

logging/current_cost+Q�;GSn�+       ��K	\ߓ��A�(*

logging/current_cost0��;齡++       ��K	A���A�(*

logging/current_cost�m�;���+       ��K	�;���A�(*

logging/current_cost��;,��++       ��K	�i���A�(*

logging/current_cost+�;� �+       ��K	n����A�(*

logging/current_costB�;���+       ��K	�ʔ��A�(*

logging/current_costu��;�HC+       ��K	n����A�(*

logging/current_costwU�;��+�+       ��K	�'���A�(*

logging/current_cost���;�"}}+       ��K	�U���A�(*

logging/current_cost ��;qy�0+       ��K	}����A�(*

logging/current_costi��;<x3+       ��K	ᰕ��A�)*

logging/current_cost���;z��+       ��K	e����A�)*

logging/current_cost<�;��+       ��K	B���A�)*

logging/current_cost���;��B+       ��K	@H���A�)*

logging/current_cost\`�;��'~+       ��K	�v���A�)*

logging/current_cost���;q�t+       ��K	o����A�)*

logging/current_cost w�;K�I+       ��K	Ԗ��A�)*

logging/current_cost���;"��b+       ��K	����A�)*

logging/current_costy��;�5�c+       ��K	�5���A�)*

logging/current_cost%�;)�܆+       ��K	�d���A�)*

logging/current_cost���;�7�a+       ��K	ؑ���A�)*

logging/current_cost$�;��X"+       ��K	1����A�)*

logging/current_cost��;
��k+       ��K	x�A�)*

logging/current_cost��;S�X+       ��K	����A�)*

logging/current_costN/�;��+       ��K	�J���A�)*

logging/current_costD��;����+       ��K	�x���A�)*

logging/current_cost��;1��+       ��K	F����A�)*

logging/current_cost��;�>�+       ��K	e՘��A�)*

logging/current_cost<��;�qi�+       ��K	����A�)*

logging/current_cost b�;���(+       ��K	l4���A�)*

logging/current_costy��;\b�`+       ��K	*c���A�)*

logging/current_cost���;��+       ��K	|����A�)*

logging/current_cost$�; B;�+       ��K	_����A�)*

logging/current_cost���;�,�+       ��K	�뙞�A�)*

logging/current_cost'�;�n�+       ��K	���A�)*

logging/current_cost���;�5�+       ��K	�F���A�)*

logging/current_cost��;��[+       ��K	�u���A�**

logging/current_cost�-�;N� +       ��K	�����A�**

logging/current_costŤ�;@���+       ��K	�Қ��A�**

logging/current_cost��;l���+       ��K	F���A�**

logging/current_cost}�;�
�v+       ��K	�.���A�**

logging/current_cost��;a��m+       ��K	�[���A�**

logging/current_cost^�;y%�+       ��K	)����A�**

logging/current_costP��; .)�+       ��K	�����A�**

logging/current_cost ��;O#�+       ��K	���A�**

logging/current_cost��;� 8+       ��K	�!���A�**

logging/current_cost���;x��:+       ��K	�P���A�**

logging/current_costG �;�ɔ�+       ��K	*~���A�**

logging/current_cost���;t���+       ��K	⭜��A�**

logging/current_cost0:�;��S+       ��K	�ڜ��A�**

logging/current_costd��;�u�?+       ��K	�	���A�**

logging/current_cost\�;ϟ�+       ��K	:5���A�**

logging/current_cost�=�;�1XL+       ��K	Ke���A�**

logging/current_costΥ�;#HB+       ��K	�����A�**

logging/current_cost�/�;Z�]�+       ��K	�����A�**

logging/current_cost��;�!+       ��K	}��A�**

logging/current_cost��;�z�.+       ��K	_#���A�**

logging/current_cost.��;W+       ��K	�Q���A�**

logging/current_cost���;�l;+       ��K	&����A�**

logging/current_cost|v�;w���+       ��K	Ӱ���A�**

logging/current_cost���;�I�|+       ��K	Wឞ�A�**

logging/current_cost�.�;����+       ��K	����A�+*

logging/current_cost�7�;J,�+       ��K	�:���A�+*

logging/current_costJ�;^
eR+       ��K	�i���A�+*

logging/current_cost^��;���9+       ��K	X����A�+*

logging/current_costլ�;�pV+       ��K	�ȟ��A�+*

logging/current_cost���;����+       ��K	����A�+*

logging/current_cost.��;�"��+       ��K	i&���A�+*

logging/current_cost��;4�/-+       ��K	 V���A�+*

logging/current_cost7��;�5��+       ��K	1����A�+*

logging/current_cost���;�}�7+       ��K	����A�+*

logging/current_costŤ�;ڶ��+       ��K	h᠞�A�+*

logging/current_cost{\�;�-�D+       ��K	I���A�+*

logging/current_cost9��;�qP+       ��K	�=���A�+*

logging/current_cost��;�"z�+       ��K	Pj���A�+*

logging/current_costL1�;/��+       ��K	?����A�+*

logging/current_cost��;dl�+       ��K	�ˡ��A�+*

logging/current_costN��;_\$^+       ��K	�����A�+*

logging/current_cost���;�"6v+       ��K	�(���A�+*

logging/current_cost���; O�+       ��K	oU���A�+*

logging/current_cost�j�;-�q+       ��K	ׂ���A�+*

logging/current_cost'1�;�L٣+       ��K	����A�+*

logging/current_cost.��;��+�+       ��K	Bޢ��A�+*

logging/current_cost�e�;�%�+       ��K	���A�+*

logging/current_cost��;����+       ��K	�9���A�+*

logging/current_cost޶�;hf�+       ��K	�e���A�+*

logging/current_cost�M�;��O�+       ��K	�����A�+*

logging/current_cost�3�;��/+       ��K	~����A�,*

logging/current_cost.)�;z��+       ��K	��A�,*

logging/current_cost��;�î0+       ��K	����A�,*

logging/current_cost9�;?qQ+       ��K	_K���A�,*

logging/current_cost�{�;��J	+       ��K	kz���A�,*

logging/current_cost/�; Qp+       ��K	5����A�,*

logging/current_cost�	�;��+       ��K	�֤��A�,*

logging/current_cost�y�;/��+       ��K	���A�,*

logging/current_cost���;UP+       ��K	�2���A�,*

logging/current_cost�N�;�[�+       ��K	Wa���A�,*

logging/current_cost���;�/�+       ��K	�����A�,*

logging/current_costEb�;���+       ��K	/����A�,*

logging/current_costdL�;G�~ +       ��K	�神�A�,*

logging/current_cost��;�<�1+       ��K	x���A�,*

logging/current_costN��;�U#�+       ��K	F���A�,*

logging/current_cost�;�;��+       ��K	v���A�,*

logging/current_costd��;���I+       ��K	"����A�,*

logging/current_cost��;�Wq +       ��K	�Ӧ��A�,*

logging/current_cost���;�>��+       ��K	?���A�,*

logging/current_costh�;��]�+       ��K	5���A�,*

logging/current_cost|�;�lS�+       ��K	wb���A�,*

logging/current_coste}�;��dl+       ��K	t����A�,*

logging/current_cost^��;ӖR�+       ��K	�����A�,*

logging/current_cost�}�;^�R�+       ��K	o駞�A�,*

logging/current_cost���;˵�_+       ��K	����A�,*

logging/current_costlq�;H�,$+       ��K	�E���A�-*

logging/current_cost���;�\yc+       ��K	�u���A�-*

logging/current_cost��;�G�+       ��K	̨���A�-*

logging/current_costN�;�T�+       ��K	ڨ��A�-*

logging/current_cost�_�;��+       ��K	����A�-*

logging/current_costB'�;���+       ��K	�5���A�-*

logging/current_cost��;?�<+       ��K	�a���A�-*

logging/current_cost̲�;g��+       ��K	�����A�-*

logging/current_cost���;,3%a+       ��K	ũ��A�-*

logging/current_costĆ�;�g+       ��K	D��A�-*

logging/current_cost���;{���+       ��K	�!���A�-*

logging/current_cost+��;�b�"+       ��K	�R���A�-*

logging/current_cost ��;�/k+       ��K	M����A�-*

logging/current_costI��;��5:+       ��K	�爵�A�-*

logging/current_costN��;U1��+       ��K	����A�-*

logging/current_costU��;��'�+       ��K	-Q���A�-*

logging/current_cost2G�;-���+       ��K	a����A�-*

logging/current_cost,��;��@�+       ��K	J����A�-*

logging/current_cost'��;	��
+       ��K	�嫞�A�-*

logging/current_cost$��;5yl�+       ��K	����A�-*

logging/current_cost�~�;��V�+       ��K	7N���A�-*

logging/current_cost2L�;�QL=+       ��K	6����A�-*

logging/current_cost^��;^���+       ��K	����A�-*

logging/current_costI;�;�&�+       ��K	~߬��A�-*

logging/current_costG��;D��+       ��K	����A�-*

logging/current_cost�H�;�?N+       ��K	j?���A�-*

logging/current_cost`b�;P��+       ��K	�m���A�.*

logging/current_cost5��;�3�+       ��K	)����A�.*

logging/current_costv�;&+       ��K	�ѭ��A�.*

logging/current_cost��;G�>
+       ��K	)����A�.*

logging/current_cost���;w��O+       ��K	�+���A�.*

logging/current_cost�\�;p'e1+       ��K	P\���A�.*

logging/current_cost���;����+       ��K	7����A�.*

logging/current_cost�V�;B!+<+       ��K	�����A�.*

logging/current_cost���;�P+       ��K	=鮞�A�.*

logging/current_cost���;E{Ӫ+       ��K	 ���A�.*

logging/current_cost���;��+       ��K	�E���A�.*

logging/current_costκ�;� �+       ��K	gq���A�.*

logging/current_cost�N�;�b+       ��K	Z����A�.*

logging/current_cost��;LL�+       ��K	�ϯ��A�.*

logging/current_cost��;�B��+       ��K	H����A�.*

logging/current_cost7��;I��+       ��K	�+���A�.*

logging/current_cost'��;�y�H+       ��K	�Y���A�.*

logging/current_cost�L�;a�+       ��K	_����A�.*

logging/current_cost���;�I��+       ��K	�����A�.*

logging/current_cost|D�;&8Q	+       ��K	%Ⱎ�A�.*

logging/current_cost�~�;����+       ��K	����A�.*

logging/current_costG��;��7+       ��K	�@���A�.*

logging/current_cost��;]��5+       ��K	�q���A�.*

logging/current_costK��;H�+       ��K	쟱��A�.*

logging/current_cost~�;U +       ��K	:̱��A�.*

logging/current_cost���;��׏+       ��K	�����A�.*

logging/current_cost\�;��z+       ��K	y'���A�/*

logging/current_cost�c�;[���+       ��K	V���A�/*

logging/current_cost���;��wS+       ��K	�����A�/*

logging/current_costҦ�;aܽ+       ��K	�����A�/*

logging/current_cost�b�;�ԑ�+       ��K	Ⲟ�A�/*

logging/current_cost��;��k+       ��K	c���A�/*

logging/current_cost��;��XV+       ��K	>���A�/*

logging/current_cost�|�;�m�+       ��K	�k���A�/*

logging/current_cost���;`�'>+       ��K	�����A�/*

logging/current_cost���;���+       ��K	{ȳ��A�/*

logging/current_cost�7�;Zr��+       ��K	�����A�/*

logging/current_cost	�;q��+       ��K	� ���A�/*

logging/current_cost'��;�g��+       ��K	
M���A�/*

logging/current_cost���;�C�+       ��K	�z���A�/*

logging/current_cost���;�]z+       ��K	c����A�/*

logging/current_cost���;(�P+       ��K	+״��A�/*

logging/current_costN��;�dR�+       ��K	����A�/*

logging/current_cost���;X��+       ��K	�2���A�/*

logging/current_cost��;|��+       ��K	�a���A�/*

logging/current_cost\��;��I�+       ��K	����A�/*

logging/current_cost���;�+�+       ��K	o����A�/*

logging/current_cost�h�;�d�+       ��K	�뵞�A�/*

logging/current_cost�r�;�8+       ��K	���A�/*

logging/current_cost���;����+       ��K	�G���A�/*

logging/current_costb��;8���+       ��K	�v���A�/*

logging/current_costb�;�*	r+       ��K	.����A�0*

logging/current_costD�;T�;�+       ��K	Զ��A�0*

logging/current_cost���;N&�+       ��K	9���A�0*

logging/current_costE��;k!�+       ��K	C2���A�0*

logging/current_cost.��;1�9+       ��K	ic���A�0*

logging/current_cost�F�;���+       ��K	�����A�0*

logging/current_cost'�;^'I+       ��K	����A�0*

logging/current_cost��;]�+       ��K	��A�0*

logging/current_cost���;@+       ��K	����A�0*

logging/current_cost���;�0�O+       ��K	HO���A�0*

logging/current_cost�v�;�W�+       ��K	�}���A�0*

logging/current_cost�)�;� `/+       ��K	����A�0*

logging/current_costW��;I�Z+       ��K	�ڸ��A�0*

logging/current_cost���;�!R@+       ��K	����A�0*

logging/current_costD:�;O��+       ��K	�7���A�0*

logging/current_cost���;��:+       ��K	d���A�0*

logging/current_cost -�;��q+       ��K	�����A�0*

logging/current_cost2��;��?+       ��K	KĹ��A�0*

logging/current_costg��;���+       ��K	 ����A�0*

logging/current_costnO�;���+       ��K	!���A�0*

logging/current_cost�-�;�S+       ��K	DP���A�0*

logging/current_cost���;x��:+       ��K	����A�0*

logging/current_cost�c�; ��c+       ��K	����A�0*

logging/current_costE^�;�-g+       ��K	xܺ��A�0*

logging/current_cost�;��^:+       ��K	����A�0*

logging/current_cost���;"��+       ��K	�;���A�0*

logging/current_cost���;kj?�+       ��K	i���A�1*

logging/current_cost�;K�;�+       ��K	ּ���A�1*

logging/current_cost~�;�s�+       ��K	&���A�1*

logging/current_cost"��;��+       ��K	�6���A�1*

logging/current_costY��;lE>�+       ��K	�p���A�1*

logging/current_cost`��;��x�+       ��K	T����A�1*

logging/current_cost���;�%��+       ��K	�鼞�A�1*

logging/current_cost4��;ǻS�+       ��K	�!���A�1*

logging/current_costG��;2�H�+       ��K	�^���A�1*

logging/current_costw�;�V+       ��K	7����A�1*

logging/current_cost�t <�P�+       ��K	�ҽ��A�1*

logging/current_cost�<�;����+       ��K	����A�1*

logging/current_costts�;��70+       ��K	�G���A�1*

logging/current_costy��;��'�+       ��K	*����A�1*

logging/current_cost���;��=+       ��K	�����A�1*

logging/current_costr��;�W�+       ��K	�����A�1*

logging/current_costy��;��+       ��K	�8���A�1*

logging/current_cost2i�;��1+       ��K	�����A�1*

logging/current_costy�;��w+       ��K	̿��A�1*

logging/current_cost���;�m��+       ��K	����A�1*

logging/current_cost�*�;���C+       ��K	w;���A�1*

logging/current_cost,��;��\+       ��K	�k���A�1*

logging/current_cost���;Qu+       ��K	w����A�1*

logging/current_costy��;�/|�+       ��K	����A�1*

logging/current_costՎ�;� �+       ��K	����A�1*

logging/current_cost�x�;�Ҁ�+       ��K	&;���A�2*

logging/current_cost�S�;J��+       ��K	cm���A�2*

logging/current_costg��;.��m+       ��K	����A�2*

logging/current_cost4]�;�ߖ�+       ��K	�����A�2*

logging/current_cost�;���~+       ��K	��A�2*

logging/current_cost�)�;���+       ��K	xE�A�2*

logging/current_cost �;�vn+       ��K	5|�A�2*

logging/current_cost�K�;����+       ��K	���A�2*

logging/current_cost���;���+       ��K	�TÞ�A�2*

logging/current_costK��;^���+       ��K	��Þ�A�2*

logging/current_cost�;Ib��+       ��K	��Þ�A�2*

logging/current_cost��;�|J�+       ��K	Ğ�A�2*

logging/current_cost���;��$)+       ��K	<]Ğ�A�2*

logging/current_costY��;0D�+       ��K	��Ğ�A�2*

logging/current_costG�;.���+       ��K	�Ğ�A�2*

logging/current_costY,�;ɐ�'+       ��K	!Ş�A�2*

logging/current_costyQ�;Y:J+       ��K	qgŞ�A�2*

logging/current_cost�<�;Jʅ�+       ��K	��Ş�A�2*

logging/current_cost���;����+       ��K	s�Ş�A�2*

logging/current_cost���;�&�+       ��K	Eƞ�A�2*

logging/current_costN��;%q�+       ��K	oSƞ�A�2*

logging/current_cost<��;�ֆK+       ��K	ʇƞ�A�2*

logging/current_cost�.�;�d�+       ��K	��ƞ�A�2*

logging/current_coste3�;6�+       ��K	��ƞ�A�2*

logging/current_costBc�;�'�+       ��K	t0Ǟ�A�2*

logging/current_cost�3�;��|+       ��K	�gǞ�A�2*

logging/current_costL��;s+       ��K	��Ǟ�A�3*

logging/current_cost��;�<�+       ��K	|�Ǟ�A�3*

logging/current_costű�;�*bY+       ��K	�Ȟ�A�3*

logging/current_cost~��;�E+       ��K	�=Ȟ�A�3*

logging/current_costW�;2�*+       ��K	#�Ȟ�A�3*

logging/current_costr��;E��+       ��K	\�Ȟ�A�3*

logging/current_cost5$�;ç0�+       ��K	�ɞ�A�3*

logging/current_cost��;��< +       ��K	�Nɞ�A�3*

logging/current_cost�J�;�J0+       ��K	Εɞ�A�3*

logging/current_costY��;?(P�+       ��K	��ɞ�A�3*

logging/current_costrB�;I�,Y+       ��K	>�ɞ�A�3*

logging/current_cost<��;r�7�+       ��K	-6ʞ�A�3*

logging/current_cost��;���A+       ��K	(mʞ�A�3*

logging/current_cost�2�;�sJ8+       ��K	�ʞ�A�3*

logging/current_costyw�;<k8�+       ��K	X�ʞ�A�3*

logging/current_cost�?�;֋�+       ��K	�
˞�A�3*

logging/current_cost�\�;�m0n+       ��K	�E˞�A�3*

logging/current_cost|��;Ǥ�+       ��K	�x˞�A�3*

logging/current_cost`|�;�<��+       ��K	��˞�A�3*

logging/current_cost7s�;+I]\+       ��K	��˞�A�3*

logging/current_cost4)�;�q\�+       ��K	�̞�A�3*

logging/current_costk�;Z���+       ��K	�@̞�A�3*

logging/current_cost�h�;����+       ��K	|u̞�A�3*

logging/current_costrc�;��
O+       ��K	��̞�A�3*

logging/current_cost��;n�C!+       ��K	A�̞�A�3*

logging/current_costR��;N|3s+       ��K	M͞�A�3*

logging/current_cost���;��V+       ��K	�?͞�A�4*

logging/current_cost�p�;��\+       ��K	^�͞�A�4*

logging/current_costd�;�C:�+       ��K	��͞�A�4*

logging/current_cost
�;5b�+       ��K	��͞�A�4*

logging/current_cost� �;CȈ�+       ��K	�Ξ�A�4*

logging/current_cost\2�;-���+       ��K	�KΞ�A�4*

logging/current_cost9��;j@+       ��K	�Ξ�A�4*

logging/current_cost F�;F��h+       ��K	M�Ξ�A�4*

logging/current_cost�J�;�j�+       ��K	'�Ξ�A�4*

logging/current_cost���;{�+       ��K	�Ϟ�A�4*

logging/current_costІ�;�$�+       ��K	">Ϟ�A�4*

logging/current_costR��;R}�
+       ��K	"nϞ�A�4*

logging/current_cost�}�;m�&+       ��K	¦Ϟ�A�4*

logging/current_cost\��;��u'+       ��K	e�Ϟ�A�4*

logging/current_cost���;S|�5+       ��K	�!О�A�4*

logging/current_costu��;gի+       ��K	?RО�A�4*

logging/current_cost'��;b�e�+       ��K	��О�A�4*

logging/current_cost ��;��+       ��K	��О�A�4*

logging/current_cost q�;�A��+       ��K	��О�A�4*

logging/current_cost�'�;�(+       ��K	0$ў�A�4*

logging/current_cost���;w1��+       ��K	�Sў�A�4*

logging/current_costd��;��=+       ��K	�ў�A�4*

logging/current_cost�_�;a�P+       ��K	��ў�A�4*

logging/current_cost�h�;���Y+       ��K	��ў�A�4*

logging/current_costE�;�+       ��K	�Ҟ�A�4*

logging/current_costY�;_�+       ��K	}MҞ�A�5*

logging/current_cost{��;$�P�+       ��K	}Ҟ�A�5*

logging/current_cost��;k~�+       ��K	��Ҟ�A�5*

logging/current_cost���;�[j�+       ��K	��Ҟ�A�5*

logging/current_cost��;	h�+       ��K	�Ӟ�A�5*

logging/current_cost5��;z�+       ��K	�?Ӟ�A�5*

logging/current_costN��;r��+       ��K	dnӞ�A�5*

logging/current_cost���;D�W�+       ��K	�Ӟ�A�5*

logging/current_cost��;�-��+       ��K	��Ӟ�A�5*

logging/current_cost�G�;���+       ��K	nԞ�A�5*

logging/current_cost�s�;��g+       ��K	C3Ԟ�A�5*

logging/current_cost���;CNЁ+       ��K	�eԞ�A�5*

logging/current_costK��;��;�+       ��K	j�Ԟ�A�5*

logging/current_cost\;�;`pk�+       ��K	�Ԟ�A�5*

logging/current_cost9��;��A
+       ��K	��Ԟ�A�5*

logging/current_cost�]�;�u�J+       ��K	o$՞�A�5*

logging/current_cost�(�;�}v+       ��K	yR՞�A�5*

logging/current_cost�P�;רa�+       ��K	�՞�A�5*

logging/current_cost�=�;��+       ��K	�՞�A�5*

logging/current_cost�q�;y(+       ��K	��՞�A�5*

logging/current_cost~��;Q.b�+       ��K	֞�A�5*

logging/current_costT��;Ȩ-�+       ��K	$?֞�A�5*

logging/current_cost+"�;M�&�+       ��K	�n֞�A�5*

logging/current_cost ��;��>+       ��K	֞͜�A�5*

logging/current_cost<��;�(�$+       ��K	:�֞�A�5*

logging/current_cost��;֊��+       ��K	f�֞�A�5*

logging/current_cost[�;�N+       ��K	(מ�A�6*

logging/current_cost���;�j��+       ��K	#Vמ�A�6*

logging/current_cost'g�;s��*+       ��K	�מ�A�6*

logging/current_costΗ�;稾L+       ��K	n�מ�A�6*

logging/current_cost���;N�+       ��K	��מ�A�6*

logging/current_costkB�;H��+       ��K	؞�A�6*

logging/current_cost�3�;z�d+       ��K	�=؞�A�6*

logging/current_cost7��;DV$�+       ��K	�l؞�A�6*

logging/current_cost,��;�Y�+       ��K	��؞�A�6*

logging/current_cost�c�;�Ͱ�+       ��K	��؞�A�6*

logging/current_cost���;J���+       ��K	��؞�A�6*

logging/current_cost$��;���+       ��K	*ٞ�A�6*

logging/current_cost���;��J�+       ��K	�Xٞ�A�6*

logging/current_cost ��;o/R+       ��K	Z�ٞ�A�6*

logging/current_costYH�;����+       ��K	>�ٞ�A�6*

logging/current_cost���;DY�+       ��K	�ٞ�A�6*

logging/current_cost2��;����+       ��K	�ڞ�A�6*

logging/current_cost �;k�'�+       ��K	>ڞ�A�6*

logging/current_cost\)�;]y�P+       ��K	'kڞ�A�6*

logging/current_cost��;�6n+       ��K	U�ڞ�A�6*

logging/current_costN��;���+       ��K	��ڞ�A�6*

logging/current_cost$��;����+       ��K	��ڞ�A�6*

logging/current_cost��;��<+       ��K	� ۞�A�6*

logging/current_cost���;�A'�+       ��K	�O۞�A�6*

logging/current_cost�Z�;�ň�+       ��K	�}۞�A�6*

logging/current_cost�F�;m�l�+       ��K	��۞�A�7*

logging/current_cost'_�;���+       ��K	�۞�A�7*

logging/current_cost���;��d+       ��K	�ܞ�A�7*

logging/current_cost��;�I�+       ��K	O2ܞ�A�7*

logging/current_cost7X�;�#Mt+       ��K	o`ܞ�A�7*

logging/current_costP�;�?W�+       ��K	>�ܞ�A�7*

logging/current_cost���;=��x+       ��K	_�ܞ�A�7*

logging/current_cost<��;bbmh+       ��K	��ܞ�A�7*

logging/current_cost ��;�}�+       ��K	�$ݞ�A�7*

logging/current_cost���;ܐ+       ��K	�Sݞ�A�7*

logging/current_cost���;Aù�+       ��K	*�ݞ�A�7*

logging/current_cost�k�;q��>+       ��K	_�ݞ�A�7*

logging/current_costgC�;=�	+       ��K	�ݞ�A�7*

logging/current_cost���;e' �+       ��K	�
ޞ�A�7*

logging/current_cost�Q�;�ȹ�+       ��K	�:ޞ�A�7*

logging/current_cost�(�;�agk+       ��K	�jޞ�A�7*

logging/current_cost���;���E+       ��K	�ޞ�A�7*

logging/current_cost���;535�+       ��K	��ޞ�A�7*

logging/current_cost� �;h��+       ��K	F�ޞ�A�7*

logging/current_cost��;)��O+       ��K	6&ߞ�A�7*

logging/current_cost���;V�o+       ��K	JVߞ�A�7*

logging/current_cost+��;���+       ��K	x�ߞ�A�7*

logging/current_cost���;��T+       ��K	-�ߞ�A�7*

logging/current_costk��;�0z+       ��K	��ߞ�A�7*

logging/current_costi�;�	�}+       ��K	N���A�7*

logging/current_cost.��;5&��+       ��K	G���A�7*

logging/current_cost���;Q^1+       ��K	�t���A�8*

logging/current_cost���;�S��+       ��K	å���A�8*

logging/current_cost��;���+       ��K	�����A�8*

logging/current_cost2��;;�'�+       ��K	��A�8*

logging/current_cost���;�M�E+       ��K	"3��A�8*

logging/current_cost4��;v��+       ��K	�d��A�8*

logging/current_cost��;�{�\+       ��K	j���A�8*

logging/current_cost{��;�땿+       ��K	����A�8*

logging/current_cost���;.��+       ��K	$���A�8*

logging/current_cost�U�;�D��+       ��K	r��A�8*

logging/current_cost��;&`�+       ��K	M��A�8*

logging/current_cost��;�\|+       ��K	g{��A�8*

logging/current_costޱ�; ���+       ��K	I���A�8*

logging/current_cost��;�`+       ��K	k���A�8*

logging/current_costK��;r�\�+       ��K	���A�8*

logging/current_cost���;61�h+       ��K	6��A�8*

logging/current_cost���;N	��+       ��K	d��A�8*

logging/current_cost���;j=(+       ��K	���A�8*

logging/current_costk��;u6�+       ��K	����A�8*

logging/current_costY	�;�փ�+       ��K	����A�8*

logging/current_cost���;s�ڞ+       ��K	s��A�8*

logging/current_cost,��;Pˆ+       ��K	�L��A�8*

logging/current_cost�r�;e�+       ��K	�z��A�8*

logging/current_cost���;	��+       ��K	���A�8*

logging/current_costY��;�gr+       ��K	����A�8*

logging/current_cost9r�;�D+       ��K	#��A�8*

logging/current_cost�=�;,��p+       ��K	P1��A�9*

logging/current_cost@��;�ͣp+       ��K	<`��A�9*

logging/current_cost���;&'Y5+       ��K	���A�9*

logging/current_cost��;����+       ��K	}���A�9*

logging/current_cost���;��O;+       ��K	����A�9*

logging/current_cost+��;���+       ��K	q��A�9*

logging/current_cost�#�;
3��+       ��K	2?��A�9*

logging/current_cost�W�;�
�+       ��K	�m��A�9*

logging/current_cost��;��F+       ��K	����A�9*

logging/current_cost�S�;�B
+       ��K	����A�9*

logging/current_cost[|�;F �*+       ��K	����A�9*

logging/current_cost��;=~7M+       ��K	�(��A�9*

logging/current_cost���;��w�+       ��K	OU��A�9*

logging/current_cost���;p��+       ��K	\���A�9*

logging/current_cost5��;^�l+       ��K	���A�9*

logging/current_cost���;�`��+       ��K	���A�9*

logging/current_costN��;aaj�+       ��K	���A�9*

logging/current_cost��;�~�+       ��K	�;��A�9*

logging/current_cost{c�;���Z+       ��K	�j��A�9*

logging/current_costԙ�;�H��+       ��K	L���A�9*

logging/current_cost�;��L+       ��K	<���A�9*

logging/current_cost���;��G+       ��K	I���A�9*

logging/current_cost�|�;H$�>+       ��K	 ��A�9*

logging/current_cost���;�Ĥ7+       ��K	�L��A�9*

logging/current_costT��;���+       ��K	iy��A�9*

logging/current_cost��;��k+       ��K	����A�:*

logging/current_cost���;ne��+       ��K	c���A�:*

logging/current_cost���;Hl&�+       ��K	���A�:*

logging/current_costY��;���+       ��K	P@��A�:*

logging/current_cost���;n5��+       ��K	�o��A�:*

logging/current_costNj�;I�v+       ��K	ޟ��A�:*

logging/current_cost��;��++       ��K	����A�:*

logging/current_cost��;��Ԡ+       ��K	����A�:*

logging/current_cost�h�;WS�+       ��K	�-��A�:*

logging/current_cost��;;�*+       ��K	`i��A�:*

logging/current_cost2G�;�c~*+       ��K	����A�:*

logging/current_cost���;?�v+       ��K	����A�:*

logging/current_cost[(�;m$r�+       ��K	�	��A�:*

logging/current_cost��;���+       ��K	�9��A�:*

logging/current_cost�a�;���+       ��K	�l��A�:*

logging/current_cost���;Dm��+       ��K	ݝ��A�:*

logging/current_costܒ�;c�ѯ+       ��K	s���A�:*

logging/current_cost`:�;,��M+       ��K	]���A�:*

logging/current_coste��;���+       ��K	�,��A�:*

logging/current_costi�;rm>~+       ��K	f[��A�:*

logging/current_cost�;?h�+       ��K	���A�:*

logging/current_cost�q�;CJy+       ��K	K���A�:*

logging/current_cost��;j�*A+       ��K	5���A�:*

logging/current_cost7&�;Z�Z+       ��K	���A�:*

logging/current_cost���;�H�Z+       ��K	�K��A�:*

logging/current_cost��;=�4J+       ��K	{��A�:*

logging/current_cost�Z�;m��+       ��K	"���A�;*

logging/current_cost���;@�+       ��K	����A�;*

logging/current_costD��;gi�+       ��K	���A�;*

logging/current_costd��;��+       ��K	G4��A�;*

logging/current_cost�K�;��)j+       ��K	�`��A�;*

logging/current_cost.��;~n��+       ��K	���A�;*

logging/current_cost	��;�+�+       ��K	����A�;*

logging/current_cost ��;<�+�+       ��K	����A�;*

logging/current_cost���;x4�++       ��K	���A�;*

logging/current_cost���;���u+       ��K	�H��A�;*

logging/current_cost���;�4�(+       ��K	�v��A�;*

logging/current_cost�G�;��8+       ��K	���A�;*

logging/current_cost��;���o+       ��K	����A�;*

logging/current_cost�]�;!���+       ��K	���A�;*

logging/current_cost'��;��N�+       ��K	�/��A�;*

logging/current_cost9��;3�{�+       ��K	^��A�;*

logging/current_costE2�;��?�+       ��K	����A�;*

logging/current_cost�Q�;:�+       ��K	M���A�;*

logging/current_cost�!�;Ko[+       ��K	J���A�;*

logging/current_cost� �;�M��+       ��K	��A�;*

logging/current_cost�E�;-�q+       ��K	/B��A�;*

logging/current_cost<��;�H3�+       ��K	�o��A�;*

logging/current_cost�9�;��7�+       ��K	���A�;*

logging/current_cost�j�;q*�+       ��K	����A�;*

logging/current_cost��;(���+       ��K	����A�;*

logging/current_cost���;�l�&+       ��K	�'��A�<*

logging/current_cost��;5��+       ��K	kS��A�<*

logging/current_cost�c�;�H8�+       ��K	����A�<*

logging/current_costp��;D�$�+       ��K	���A�<*

logging/current_cost���;��#�+       ��K	O���A�<*

logging/current_cost���;v�+       ��K	$���A�<*

logging/current_costN��;���+       ��K	W:���A�<*

logging/current_cost�z�;cM�	+       ��K	dj���A�<*

logging/current_cost	��;�:�
+       ��K	�����A�<*

logging/current_costN!�;��oI+       ��K	a����A�<*

logging/current_cost�>�;?�z{+       ��K	�����A�<*

logging/current_cost@r�;i�e�+       ��K	 ���A�<*

logging/current_cost;�;���S+       ��K	�M���A�<*

logging/current_cost {�;�.�+       ��K	�y���A�<*

logging/current_cost�>�;S��w+       ��K	�����A�<*

logging/current_cost{1�; ���+       ��K	-����A�<*

logging/current_cost�m�;S�d +       ��K	����A�<*

logging/current_cost��;�39�+       ��K	�1���A�<*

logging/current_costY��;M�q�+       ��K	e_���A�<*

logging/current_cost���;���(+       ��K	�����A�<*

logging/current_costK��;�$�+       ��K	�����A�<*

logging/current_cost,k�;�P��+       ��K	�����A�<*

logging/current_costiD�;�L��+       ��K	�(���A�<*

logging/current_cost���;�l�z+       ��K	�X���A�<*

logging/current_cost���;U�(�+       ��K	�����A�<*

logging/current_costX�;�Cl�+       ��K	D����A�<*

logging/current_cost���;pK�%+       ��K	�����A�=*

logging/current_cost�H�;q���+       ��K	���A�=*

logging/current_cost ��;-�!+       ��K	�@���A�=*

logging/current_costgq�;@X�+       ��K	wp���A�=*

logging/current_costi��;�Ҷ+       ��K	f����A�=*

logging/current_cost��;��+       ��K	����A�=*

logging/current_cost���;�E�+       ��K	�����A�=*

logging/current_cost	�;�T!�+       ��K	�*���A�=*

logging/current_cost��;���z+       ��K	OX���A�=*

logging/current_cost"r�;��G�+       ��K	����A�=*

logging/current_cost���;�^g�+       ��K	�����A�=*

logging/current_cost��;��+       ��K	'����A�=*

logging/current_cost,��;V�D�+       ��K	���A�=*

logging/current_cost�;��c+       ��K	�I���A�=*

logging/current_cost���;�[��+       ��K	�z���A�=*

logging/current_cost�m�;�IC+       ��K	_����A�=*

logging/current_cost�x�;8��)+       ��K	L����A�=*

logging/current_cost���;��4+       ��K	�	���A�=*

logging/current_cost���;�˧+       ��K	�7���A�=*

logging/current_costRq�;�Q$c+       ��K	&f���A�=*

logging/current_cost���;��WX+       ��K	U����A�=*

logging/current_costL��;�}r�+       ��K	�����A�=*

logging/current_cost5��;��k+       ��K	�	���A�=*

logging/current_cost��;#�\�+       ��K	�5���A�=*

logging/current_cost���;��SY+       ��K	kf���A�=*

logging/current_costU��;�57�+       ��K	N����A�=*

logging/current_costd�;�0kb+       ��K	G����A�>*

logging/current_cost��;�0n+       ��K	�����A�>*

logging/current_cost�]�;nT�+       ��K	"!���A�>*

logging/current_cost�*�;][�a+       ��K	lO���A�>*

logging/current_cost��;�w�+       ��K	p~���A�>*

logging/current_costuR�;3�g+       ��K	ԫ���A�>*

logging/current_cost�J�;���+       ��K	�����A�>*

logging/current_cost���;l��i+       ��K	�
���A�>*

logging/current_cost2��;��F+       ��K	�7���A�>*

logging/current_cost���;۳�+       ��K	�c���A�>*

logging/current_costn�;K�5�+       ��K	M����A�>*

logging/current_cost��;��+       ��K	i����A�>*

logging/current_cost�L�;(��+       ��K		����A�>*

logging/current_cost5��;E��+       ��K	����A�>*

logging/current_costq�;���N+       ��K	.N���A�>*

logging/current_costK��;��U�+       ��K	O���A�>*

logging/current_cost���;��9+       ��K	����A�>*

logging/current_cost$R�;v�� +       ��K	N����A�>*

logging/current_costr�;�C$+       ��K	� ��A�>*

logging/current_cost�;��Z�+       ��K	�4 ��A�>*

logging/current_cost���;?�&+       ��K	�c ��A�>*

logging/current_costn)�;��2P+       ��K	 � ��A�>*

logging/current_cost�j�;���+       ��K	׼ ��A�>*

logging/current_cost޿�;�{[�+       ��K	�� ��A�>*

logging/current_costUv�;?`�+       ��K	���A�>*

logging/current_cost.��;̙��+       ��K	DK��A�?*

logging/current_cost��;l�+       ��K	zy��A�?*

logging/current_cost���;1��+       ��K	ۧ��A�?*

logging/current_cost�x�;B��#+       ��K	3���A�?*

logging/current_costR\�;]�k�+       ��K	#��A�?*

logging/current_cost�i�;��~�+       ��K	�0��A�?*

logging/current_cost�{�;�$5$+       ��K	q]��A�?*

logging/current_costn��;y��+       ��K	����A�?*

logging/current_cost5_�;����+       ��K	z���A�?*

logging/current_costT��;Tm��+       ��K	$���A�?*

logging/current_cost\@�;^�$+       ��K	���A�?*

logging/current_cost[��;��m+       ��K	�@��A�?*

logging/current_cost4��;h$��+       ��K	�q��A�?*

logging/current_costD��;��+       ��K	[���A�?*

logging/current_cost���;6��+       ��K	����A�?*

logging/current_costI��;Z v+       ��K	���A�?*

logging/current_cost5��;�'��+       ��K	6I��A�?*

logging/current_cost���;�/+       ��K	�{��A�?*

logging/current_cost���;����+       ��K	 ���A�?*

logging/current_cost�r�;VO�e+       ��K	����A�?*

logging/current_cost+`�;�nM+       ��K	a$��A�?*

logging/current_cost��;���/+       ��K	�Z��A�?*

logging/current_cost<��;ƣ�
+       ��K	���A�?*

logging/current_cost;��;^��+       ��K	u���A�?*

logging/current_costG#�;��+       ��K	����A�?*

logging/current_cost���;2��e+       ��K	A0��A�?*

logging/current_cost���;��+       ��K	c��A�@*

logging/current_cost,%�;G��v+       ��K	����A�@*

logging/current_cost0F�;]|
(+       ��K	����A�@*

logging/current_costH�;���1+       ��K	��A�@*

logging/current_cost���;��x�+       ��K	88��A�@*

logging/current_cost���;x��+       ��K	�l��A�@*

logging/current_cost��;�vs�+       ��K	ˡ��A�@*

logging/current_cost���;�+�+       ��K	����A�@*

logging/current_costn��;`(�q+       ��K	���A�@*

logging/current_cost���;Y� +       ��K	?;��A�@*

logging/current_cost��;H~�+       ��K	o��A�@*

logging/current_costW��;
_*�+       ��K	���A�@*

logging/current_costG��;a���+       ��K	���A�@*

logging/current_cost\��;Ҍ�y+       ��K	� 	��A�@*

logging/current_cost��;��2b+       ��K	1	��A�@*

logging/current_costY��;Ҋ�+       ��K	�g	��A�@*

logging/current_costdt�;�fj+       ��K	y�	��A�@*

logging/current_costH�; ���+       ��K	��	��A�@*

logging/current_cost��;H�+       ��K	�
��A�@*

logging/current_cost���;�+       ��K	z:
��A�@*

logging/current_cost�%�;��E+       ��K	�p
��A�@*

logging/current_cost���;_�w+       ��K	d�
��A�@*

logging/current_costd��;�d\v+       ��K	��
��A�@*

logging/current_cost���;�U+       ��K	 ��A�@*

logging/current_costp��;���+       ��K	(C��A�@*

logging/current_cost�%�;��t+       ��K	Tr��A�A*

logging/current_cost��; ��+       ��K	d���A�A*

logging/current_cost���;�0�Y+       ��K	����A�A*

logging/current_cost�;w�3�+       ��K	����A�A*

logging/current_cost�u�;_��+       ��K	�)��A�A*

logging/current_cost��;��	+       ��K	Y��A�A*

logging/current_cost���;'���+       ��K	+���A�A*

logging/current_cost�j�;@H
�+       ��K	����A�A*

logging/current_cost�`�;���!+       ��K	����A�A*

logging/current_cost)��;����+       ��K	1��A�A*

logging/current_cost�N�;C�C+       ��K	�>��A�A*

logging/current_cost^��;��2+       ��K	[q��A�A*

logging/current_costr��;���U+       ��K	���A�A*

logging/current_coste��;���&+       ��K	~���A�A*

logging/current_cost@��;�8"+       ��K	c���A�A*

logging/current_cost���;����+       ��K	�(��A�A*

logging/current_cost���;�}=+       ��K	�W��A�A*

logging/current_cost@�;�)&�+       ��K	Ć��A�A*

logging/current_cost@��;\��+       ��K	����A�A*

logging/current_cost~_�;N�U�+       ��K	���A�A*

logging/current_cost|��; �[+       ��K	���A�A*

logging/current_costI��;��4�+       ��K	->��A�A*

logging/current_cost�D�;����+       ��K	j��A�A*

logging/current_cost�K�;��ʚ+       ��K	���A�A*

logging/current_costD��;�T�+       ��K	i���A�A*

logging/current_costY��;�؟�+       ��K	�1��A�A*

logging/current_cost�j�;^���+       ��K	�u��A�B*

logging/current_costܖ�;oV��+       ��K	���A�B*

logging/current_costY-�;��b+       ��K	*���A�B*

logging/current_costE��;5R�+       ��K	{#��A�B*

logging/current_cost��;&���+       ��K	i\��A�B*

logging/current_cost�8�;����+       ��K	���A�B*

logging/current_costy��;Ŵ�(+       ��K	&���A�B*

logging/current_cost�m�;�Ҡ+       ��K	��A�B*

logging/current_costG��;�T�+       ��K	�t��A�B*

logging/current_cost�;j~�+       ��K	���A�B*

logging/current_cost���;<��+       ��K	����A�B*

logging/current_costRC�;��
@+       ��K	�J��A�B*

logging/current_cost���;�+��+       ��K	����A�B*

logging/current_cost.#�;�M��+       ��K	���A�B*

logging/current_costB��;#�0+       ��K	s���A�B*

logging/current_cost���;} �+       ��K	�4��A�B*

logging/current_cost���;����+       ��K	�j��A�B*

logging/current_cost�o�;���+       ��K	����A�B*

logging/current_cost��;+��y+       ��K	u���A�B*

logging/current_costl/�;1f�Y+       ��K	Y���A�B*

logging/current_cost'��;o�Q�+       ��K	�7��A�B*

logging/current_cost >�;`�"(+       ��K	r{��A�B*

logging/current_cost)��;^��+       ��K	9���A�B*

logging/current_cost���;\��+       ��K	����A�B*

logging/current_cost���;(�.t+       ��K	6��A�B*

logging/current_cost���;�wA�+       ��K	�Z��A�B*

logging/current_cost�-�;	�`�+       ��K	'���A�C*

logging/current_costd_�;����+       ��K	���A�C*

logging/current_cost���;��]+       ��K	T���A�C*

logging/current_cost���;	��+       ��K	�.��A�C*

logging/current_cost��;�!��+       ��K	�c��A�C*

logging/current_cost�,�;r��+       ��K	$���A�C*

logging/current_cost��;*8:o+       ��K	����A�C*

logging/current_cost{��;��N�+       ��K	����A�C*

logging/current_cost�.�;r���+       ��K	95��A�C*

logging/current_cost��;�k�+       ��K	�h��A�C*

logging/current_cost|��;B� ^+       ��K	����A�C*

logging/current_cost��;^��+       ��K	����A�C*

logging/current_cost���;�v�+       ��K	����A�C*

logging/current_cost��;���x+       ��K	5��A�C*

logging/current_cost�H�;����+       ��K	f��A�C*

logging/current_cost���;sG�/+       ��K	����A�C*

logging/current_cost�c�;v)�+       ��K	@���A�C*

logging/current_cost��;\)ȩ+       ��K	8��A�C*

logging/current_cost���;@{�@+       ��K	�8��A�C*

logging/current_cost$��;�`W�+       ��K	�i��A�C*

logging/current_cost�9�;N�+       ��K	���A�C*

logging/current_cost4p�;���+       ��K	����A�C*

logging/current_cost�;�#�$+       ��K	[���A�C*

logging/current_cost���;+%�7+       ��K	E.��A�C*

logging/current_cost ��;�?�>+       ��K	�b��A�C*

logging/current_costGC�;4"7}+       ��K	̔��A�D*

logging/current_cost5��;�5��+       ��K	K���A�D*

logging/current_costTI�;7�� +       ��K	����A�D*

logging/current_costΣ�;q�H�+       ��K	�&��A�D*

logging/current_cost�G�;���8+       ��K	^V��A�D*

logging/current_cost��;O^�+       ��K	���A�D*

logging/current_cost�-�;���+       ��K	����A�D*

logging/current_cost��;�H�+       ��K	���A�D*

logging/current_cost7,�;{�ލ+       ��K	�?��A�D*

logging/current_costy�;� ��+       ��K	@z��A�D*

logging/current_costYL�;k��+       ��K	����A�D*

logging/current_costR	�;=B+       ��K	����A�D*

logging/current_cost\ �;{&H+       ��K	���A�D*

logging/current_cost��;6+��+       ��K	�R��A�D*

logging/current_cost�w�;�p�a+       ��K	f���A�D*

logging/current_cost,��;. ��+       ��K	r���A�D*

logging/current_costp��;��+       ��K	X���A�D*

logging/current_cost���;#<w�+       ��K	3��A�D*

logging/current_cost��;��+       ��K	ue��A�D*

logging/current_cost��;��sr+       ��K	���A�D*

logging/current_cost���;���+       ��K	����A�D*

logging/current_cost�`�;�Fi�+       ��K	� ��A�D*

logging/current_cost�!�;�G�+       ��K	�A ��A�D*

logging/current_cost[��;���+       ��K	x ��A�D*

logging/current_costq�;�Þ�+       ��K	� ��A�D*

logging/current_cost��;6���+       ��K	�� ��A�D*

logging/current_cost�]�;D~��+       ��K	�!��A�E*

logging/current_cost��;�f��+       ��K	I?!��A�E*

logging/current_costB��;����+       ��K	Tq!��A�E*

logging/current_costd2�;���+       ��K	��!��A�E*

logging/current_cost���;i��+       ��K	�!��A�E*

logging/current_cost\��;���+       ��K	�"��A�E*

logging/current_costլ�;���+       ��K	D"��A�E*

logging/current_costRR�;�(��+       ��K	w"��A�E*

logging/current_cost���;ԝ�
+       ��K	�"��A�E*

logging/current_cost� �;�2�v+       ��K	+�"��A�E*

logging/current_cost��;Cv��+       ��K	�#��A�E*

logging/current_cost�~�;Ju^+       ��K	SK#��A�E*

logging/current_cost6�;�'�+       ��K	V{#��A�E*

logging/current_cost���;�X��+       ��K	8�#��A�E*

logging/current_costr��;�(7�+       ��K	��#��A�E*

logging/current_costLJ�;��c�+       ��K	�$��A�E*

logging/current_cost (�;%9��+       ��K	�J$��A�E*

logging/current_costο�;{�`+       ��K	�z$��A�E*

logging/current_cost�|�;�x�+       ��K	��$��A�E*

logging/current_costL'�;��Q&+       ��K	F�$��A�E*

logging/current_cost���;��])+       ��K	{%��A�E*

logging/current_cost���;#�	+       ��K	�Y%��A�E*

logging/current_cost��;S�)+       ��K	
�%��A�E*

logging/current_cost���;���++       ��K	��%��A�E*

logging/current_cost�@�;��+       ��K	� &��A�E*

logging/current_cost�}�;�y��+       ��K	|0&��A�F*

logging/current_cost�y�;�*J+       ��K	�a&��A�F*

logging/current_cost���;���+       ��K	h�&��A�F*

logging/current_cost5��;�P��+       ��K	��&��A�F*

logging/current_costD��;�M+       ��K	�&��A�F*

logging/current_cost A�;N �q+       ��K	�%'��A�F*

logging/current_cost��;D�4f+       ��K	�U'��A�F*

logging/current_cost���;�?̃+       ��K	�'��A�F*

logging/current_cost,��;Ε�+       ��K	��'��A�F*

logging/current_cost ��;f�˴+       ��K	��'��A�F*

logging/current_cost{��;Nd��+       ��K	�(��A�F*

logging/current_cost)��;.��-+       ��K	,?(��A�F*

logging/current_costC�;X��+       ��K	!n(��A�F*

logging/current_cost�=�;��η+       ��K	��(��A�F*

logging/current_cost��;%vU+       ��K	Y�(��A�F*

logging/current_cost��;c�9+       ��K	�(��A�F*

logging/current_costG��;%3�]+       ��K	E*)��A�F*

logging/current_cost7��;}Չ�+       ��K	�X)��A�F*

logging/current_costĵ�;�P+       ��K	�)��A�F*

logging/current_costN��;}�R�+       ��K	�)��A�F*

logging/current_cost�N�;k~Z2+       ��K	��)��A�F*

logging/current_cost�U�;q��+       ��K	(*��A�F*

logging/current_cost���;��W+       ��K	i9*��A�F*

logging/current_cost\-�;s	Q6+       ��K	�f*��A�F*

logging/current_cost�o�;��$x+       ��K	��*��A�F*

logging/current_costĢ�;�X�+       ��K	��*��A�F*

logging/current_cost�C�;$���+       ��K	��*��A�G*

logging/current_cost��;l�L�+       ��K	�'+��A�G*

logging/current_cost�x�;��#+       ��K	�Z+��A�G*

logging/current_cost���;'���+       ��K	3�+��A�G*

logging/current_cost��;�){�+       ��K	��+��A�G*

logging/current_cost"��;(�r+       ��K	A�+��A�G*

logging/current_costbz�;���+       ��K	K&,��A�G*

logging/current_cost<z�;���>+       ��K	�V,��A�G*

logging/current_costk��;�Gqs+       ��K	�,��A�G*

logging/current_cost��;�]��+       ��K	��,��A�G*

logging/current_cost�R�; G�+       ��K	��,��A�G*

logging/current_cost���;k�s$+       ��K	Q"-��A�G*

logging/current_costd[�;OJV�+       ��K	�S-��A�G*

logging/current_costU�;oi5R+       ��K	��-��A�G*

logging/current_cost��;�ݮK+       ��K	��-��A�G*

logging/current_cost�M�;�T��+       ��K	��-��A�G*

logging/current_cost�;�f�+       ��K	�.��A�G*

logging/current_cost�h�;���+       ��K	�?.��A�G*

logging/current_cost�;(�+       ��K	Qm.��A�G*

logging/current_costbl�;\�_,+       ��K	O�.��A�G*

logging/current_cost���;�֨+       ��K	T�.��A�G*

logging/current_costG��;j�@+       ��K	��.��A�G*

logging/current_costF�;����+       ��K	�-/��A�G*

logging/current_costn��;��T+       ��K	b\/��A�G*

logging/current_cost��;i���+       ��K	`�/��A�G*

logging/current_cost���;!l�+       ��K	!�/��A�G*

logging/current_cost�p�;����+       ��K	��/��A�H*

logging/current_cost׺�;��|�+       ��K	�%0��A�H*

logging/current_cost���;*=B+       ��K	 U0��A�H*

logging/current_costUb�;�>+       ��K	�0��A�H*

logging/current_cost���;�+       ��K	�0��A�H*

logging/current_cost0��;�G%�+       ��K	��0��A�H*

logging/current_cost���;�0��+       ��K	1��A�H*

logging/current_cost~��;�Ҁ+       ��K	�H1��A�H*

logging/current_cost���;*L��+       ��K	w1��A�H*

logging/current_cost���;��1h+       ��K	T�1��A�H*

logging/current_cost��;O�R�+       ��K	��1��A�H*

logging/current_cost���;�7R+       ��K	r2��A�H*

logging/current_costy�;���+       ��K	�02��A�H*

logging/current_costG3�;�:,O+       ��K	<^2��A�H*

logging/current_cost@Z�;R�z�+       ��K	�2��A�H*

logging/current_costwv�;��U+       ��K	��2��A�H*

logging/current_cost�J�;�K�+       ��K	a�2��A�H*

logging/current_costdv�;��#+       ��K	"3��A�H*

logging/current_costd�;]��+       ��K	�G3��A�H*

logging/current_cost��;�+       ��K	t3��A�H*

logging/current_cost���;[��l+       ��K	��3��A�H*

logging/current_cost���;�9��+       ��K	��3��A�H*

logging/current_costW��;R�+       ��K	!�3��A�H*

logging/current_cost58�;&�(?+       ��K	�(4��A�H*

logging/current_cost`��; ���+       ��K	�V4��A�H*

logging/current_cost���;l��+       ��K	��4��A�I*

logging/current_cost���;䚓n+       ��K	δ4��A�I*

logging/current_costI�;�	��+       ��K	��4��A�I*

logging/current_cost���;����+       ��K	�5��A�I*

logging/current_costi��;+��+       ��K	�A5��A�I*

logging/current_cost���;t �+       ��K	+q5��A�I*

logging/current_cost�~�;%��k+       ��K	��5��A�I*

logging/current_cost���;�G��+       ��K	�5��A�I*

logging/current_cost���;=o�+       ��K	��5��A�I*

logging/current_costG,�;�,|0+       ��K	R*6��A�I*

logging/current_cost���;M�X+       ��K	Y6��A�I*

logging/current_cost{��;B�y+       ��K	��6��A�I*

logging/current_cost|\�;躎�+       ��K	c�6��A�I*

logging/current_costG��;���+       ��K	y�6��A�I*

logging/current_costk��;���+       ��K	�7��A�I*

logging/current_costi�;4�\z+       ��K	�?7��A�I*

logging/current_cost���;���+       ��K	o7��A�I*

logging/current_costIG�;8�%+       ��K	��7��A�I*

logging/current_costU�;�X>+       ��K	��7��A�I*

logging/current_costW��;��'�+       ��K	�8��A�I*

logging/current_costDZ�;N�x+       ��K	N<8��A�I*

logging/current_cost��;,�b�+       ��K	�k8��A�I*

logging/current_cost���;�`1�+       ��K	�8��A�I*

logging/current_cost��;��j+       ��K	��8��A�I*

logging/current_cost��;T[��+       ��K	#�8��A�I*

logging/current_cost.?�;�{��+       ��K	F(9��A�I*

logging/current_cost���;�aP+       ��K	�X9��A�J*

logging/current_costk��;�@q+       ��K	d�9��A�J*

logging/current_cost0P�;՜�+       ��K	��9��A�J*

logging/current_cost�P�;+]�E+       ��K	J�9��A�J*

logging/current_costK^�;(-�I+       ��K	�:��A�J*

logging/current_cost��;�ാ+       ��K	>G:��A�J*

logging/current_cost��;�l��+       ��K	ru:��A�J*

logging/current_cost��;3�+       ��K	\�:��A�J*

logging/current_cost�z�;��z+       ��K	[�:��A�J*

logging/current_cost��;�B��+       ��K	�;��A�J*

logging/current_costrA�;8Y�+       ��K	�4;��A�J*

logging/current_cost�]�;�"��+       ��K	�g;��A�J*

logging/current_cost<g�;
�\�+       ��K	/�;��A�J*

logging/current_costK�;�e�+       ��K	�7<��A�J*

logging/current_cost��;\�"�+       ��K	_�<��A�J*

logging/current_cost�]�;���+       ��K	�<��A�J*

logging/current_costw��;}�o+       ��K	]=��A�J*

logging/current_cost^��;���+       ��K	!>=��A�J*

logging/current_costK��;�ָ�+       ��K	�r=��A�J*

logging/current_cost�B�;��cW+       ��K	�=��A�J*

logging/current_cost�;LZ:+       ��K	��=��A�J*

logging/current_costY(�;&�z�+       ��K	�>��A�J*

logging/current_cost��;��g+       ��K	->>��A�J*

logging/current_costW�;9��;+       ��K	�n>��A�J*

logging/current_cost�6�;�ϐd+       ��K	�>��A�J*

logging/current_cost�K�;�z�+       ��K	��>��A�K*

logging/current_cost�N�;*+'+       ��K	q?��A�K*

logging/current_cost�;vQ�+       ��K	�4?��A�K*

logging/current_cost<�;�Nj+       ��K	�e?��A�K*

logging/current_cost���;�Tf�+       ��K	G�?��A�K*

logging/current_cost'.�;�%E�+       ��K	��?��A�K*

logging/current_cost��;Kb�+       ��K	 �?��A�K*

logging/current_cost0O�;�"��+       ��K	E)@��A�K*

logging/current_costB�;�c�+       ��K	�W@��A�K*

logging/current_cost�]�;���+       ��K	܄@��A�K*

logging/current_cost"�;s=��+       ��K	&�@��A�K*

logging/current_cost+>�;.�Q+       ��K	l�@��A�K*

logging/current_cost'(�;�<+       ��K	A��A�K*

logging/current_cost�;�G�+       ��K	�<A��A�K*

logging/current_cost7��;l�A+       ��K	�jA��A�K*

logging/current_cost^�;�5+       ��K	��A��A�K*

logging/current_cost�7�;�{r�+       ��K	��A��A�K*

logging/current_cost�2�;��r�+       ��K	L�A��A�K*

logging/current_cost��;��+       ��K	�0B��A�K*

logging/current_cost�M�;��<+       ��K	g�B��A�K*

logging/current_cost$��;Z�+       ��K	
�B��A�K*

logging/current_costlR�;bv2�+       ��K	$�B��A�K*

logging/current_cost���;�q�+       ��K	,4C��A�K*

logging/current_cost��;k7�+       ��K	MkC��A�K*

logging/current_cost���;Z=�+       ��K	`�C��A�K*

logging/current_costn�;
{z+       ��K	��C��A�K*

logging/current_costI��;vNH++       ��K	�D��A�L*

logging/current_cost9��;6�%+       ��K	%CD��A�L*

logging/current_cost'�;��+       ��K	1rD��A�L*

logging/current_costf�;�]��+       ��K	��D��A�L*

logging/current_cost��;K�<�+       ��K	j�D��A�L*

logging/current_cost<R�;N�l+       ��K	E��A�L*

logging/current_cost�U�;���+       ��K	,5E��A�L*

logging/current_cost�f�;.�d�+       ��K	�eE��A�L*

logging/current_cost�M�;�l��+       ��K	h�E��A�L*

logging/current_costH�;���+       ��K	8�E��A�L*

logging/current_cost�z�;HZ�+       ��K	�E��A�L*

logging/current_cost^}�;�Cnn+       ��K	�!F��A�L*

logging/current_cost.F�;Dw�+       ��K	nTF��A�L*

logging/current_cost|�;"6�y+       ��K	׃F��A�L*

logging/current_cost�f�;�{Lc+       ��K	|�F��A�L*

logging/current_cost�&�;~���+       ��K	��F��A�L*

logging/current_cost�J�;U��+       ��K	�G��A�L*

logging/current_cost���;Z A�+       ��K	P=G��A�L*

logging/current_cost���;1a&+       ��K	omG��A�L*

logging/current_costGx�;�4Rt+       ��K	+�G��A�L*

logging/current_cost�M�;��=+       ��K	z�G��A�L*

logging/current_cost@z�;�w��+       ��K	��G��A�L*

logging/current_cost�8�;�㆐+       ��K	�9H��A�L*

logging/current_cost���;���,+       ��K	�rH��A�L*

logging/current_costr&�;�EF�+       ��K	A�H��A�L*

logging/current_costt�;@=X�+       ��K	a�H��A�L*

logging/current_cost�j�;�Iz�+       ��K	�I��A�M*

logging/current_costU��;煰*+       ��K	:I��A�M*

logging/current_cost���;�Op+       ��K	��I��A�M*

logging/current_cost`��;��W+       ��K	��I��A�M*

logging/current_cost���;^�j�+       ��K	�J��A�M*

logging/current_cost���;p�I�+       ��K	GOJ��A�M*

logging/current_cost.<�;�&�+       ��K	A�J��A�M*

logging/current_cost�*�;"�O�+       ��K	��J��A�M*

logging/current_cost���;��i�+       ��K	� K��A�M*

logging/current_costr8�;`kq�+       ��K	�>K��A�M*

logging/current_cost�*�;�<+       ��K	R}K��A�M*

logging/current_cost�>�;IZ�+       ��K	8�K��A�M*

logging/current_cost��;\V��+       ��K	��K��A�M*

logging/current_cost{�;`Uo�+       ��K	2 L��A�M*

logging/current_cost���;�
;�+       ��K	-RL��A�M*

logging/current_cost���;��+       ��K	��L��A�M*

logging/current_cost���;n�?V+       ��K	��L��A�M*

logging/current_cost�g�;����+       ��K	��L��A�M*

logging/current_cost+g�;�ja�+       ��K	p1M��A�M*

logging/current_cost���;��ty+       ��K	�jM��A�M*

logging/current_costp��;|�rk+       ��K	;�M��A�M*

logging/current_costT�;�8��+       ��K	?�M��A�M*

logging/current_cost���;qv�+       ��K	/N��A�M*

logging/current_cost�H�;>��+       ��K	�CN��A�M*

logging/current_cost$��;o�K+       ��K	QqN��A�M*

logging/current_cost<�;�>+       ��K	/�N��A�N*

logging/current_costR��;v�-%+       ��K	�N��A�N*

logging/current_cost�t�;�)+       ��K	]�N��A�N*

logging/current_cost\��;�_Y