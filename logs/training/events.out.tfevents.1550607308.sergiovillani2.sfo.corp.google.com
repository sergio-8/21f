       �K"	   ��Abrain.Event:2�ːNM�      ��	�8��A"��
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
+layer_1/weights1/Initializer/random_uniformAdd/layer_1/weights1/Initializer/random_uniform/mul/layer_1/weights1/Initializer/random_uniform/min*
_output_shapes

:*
T0*#
_class
loc:@layer_1/weights1
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
!layer_1/biases1/Initializer/zerosConst*"
_class
loc:@layer_1/biases1*
valueB*    *
dtype0*
_output_shapes
:
�
layer_1/biases1
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
layer_1/biases1/AssignAssignlayer_1/biases1!layer_1/biases1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_1/biases1
z
layer_1/biases1/readIdentitylayer_1/biases1*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
:
�
layer_1/MatMulMatMulinput/Placeholderlayer_1/weights1/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
j
layer_1/addAddlayer_1/MatMullayer_1/biases1/read*
T0*'
_output_shapes
:���������
S
layer_1/ReluRelulayer_1/add*'
_output_shapes
:���������*
T0
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

seed *
T0*#
_class
loc:@layer_2/weights2*
seed2 *
dtype0*
_output_shapes

:
�
/layer_2/weights2/Initializer/random_uniform/subSub/layer_2/weights2/Initializer/random_uniform/max/layer_2/weights2/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes
: 
�
/layer_2/weights2/Initializer/random_uniform/mulMul9layer_2/weights2/Initializer/random_uniform/RandomUniform/layer_2/weights2/Initializer/random_uniform/sub*
_output_shapes

:*
T0*#
_class
loc:@layer_2/weights2
�
+layer_2/weights2/Initializer/random_uniformAdd/layer_2/weights2/Initializer/random_uniform/mul/layer_2/weights2/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes

:
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
layer_2/weights2/AssignAssignlayer_2/weights2+layer_2/weights2/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
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
layer_2/biases2/AssignAssignlayer_2/biases2!layer_2/biases2/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_2/biases2*
validate_shape(*
_output_shapes
:
z
layer_2/biases2/readIdentitylayer_2/biases2*
_output_shapes
:*
T0*"
_class
loc:@layer_2/biases2
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
+layer_3/weights3/Initializer/random_uniformAdd/layer_3/weights3/Initializer/random_uniform/mul/layer_3/weights3/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
�
layer_3/weights3
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
layer_3/weights3/AssignAssignlayer_3/weights3+layer_3/weights3/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_3/weights3*
validate_shape(*
_output_shapes

:
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
layer_3/biases3/AssignAssignlayer_3/biases3!layer_3/biases3/Initializer/zeros*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
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
shape:���������*
dtype0*'
_output_shapes
:���������
{
cost/SquaredDifferenceSquaredDifference
output/addcost/Placeholder*'
_output_shapes
:���������*
T0
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
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
p
&train/gradients/cost/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
%train/gradients/cost/Mean_grad/Prod_1Prod&train/gradients/cost/Mean_grad/Shape_2&train/gradients/cost/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
/train/gradients/cost/SquaredDifference_grad/SumSum1train/gradients/cost/SquaredDifference_grad/mul_1Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
#train/gradients/output/add_grad/SumSumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency5train/gradients/output/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
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
*train/gradients/layer_3/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencylayer_3/Relu*
T0*'
_output_shapes
:���������
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
6train/gradients/layer_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_3/add_grad/Shape(train/gradients/layer_3/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
$train/gradients/layer_3/add_grad/SumSum*train/gradients/layer_3/Relu_grad/ReluGrad6train/gradients/layer_3/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
*train/gradients/layer_3/MatMul_grad/MatMulMatMul9train/gradients/layer_3/add_grad/tuple/control_dependencylayer_3/weights3/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
,train/gradients/layer_3/MatMul_grad/MatMul_1MatMullayer_2/Relu9train/gradients/layer_3/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
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
&train/gradients/layer_2/add_grad/Sum_1Sum*train/gradients/layer_2/Relu_grad/ReluGrad8train/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
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
6train/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_1/add_grad/Shape(train/gradients/layer_1/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
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
&train/gradients/layer_1/add_grad/Sum_1Sum*train/gradients/layer_1/Relu_grad/ReluGrad8train/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*train/gradients/layer_1/add_grad/Reshape_1Reshape&train/gradients/layer_1/add_grad/Sum_1(train/gradients/layer_1/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
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
*train/gradients/layer_1/MatMul_grad/MatMulMatMul9train/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/weights1/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
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
-train/layer_1/weights1/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_1/weights1*
valueB*    
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
"train/layer_1/weights1/Adam/AssignAssigntrain/layer_1/weights1/Adam-train/layer_1/weights1/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_1/weights1
�
 train/layer_1/weights1/Adam/readIdentitytrain/layer_1/weights1/Adam*
_output_shapes

:*
T0*#
_class
loc:@layer_1/weights1
�
/train/layer_1/weights1/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_1/weights1*
valueB*    *
dtype0*
_output_shapes

:
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
.train/layer_1/biases1/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_1/biases1*
valueB*    
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
"train/layer_2/weights2/Adam/AssignAssigntrain/layer_2/weights2/Adam-train/layer_2/weights2/Adam/Initializer/zeros*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
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
!train/layer_2/biases2/Adam/AssignAssigntrain/layer_2/biases2/Adam,train/layer_2/biases2/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_2/biases2
�
train/layer_2/biases2/Adam/readIdentitytrain/layer_2/biases2/Adam*
_output_shapes
:*
T0*"
_class
loc:@layer_2/biases2
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
,train/output/weights4/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:*"
_class
loc:@output/weights4*
valueB*    
�
train/output/weights4/Adam
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
!train/output/weights4/Adam/AssignAssigntrain/output/weights4/Adam,train/output/weights4/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
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
 train/output/biases4/Adam/AssignAssigntrain/output/biases4/Adam+train/output/biases4/Adam/Initializer/zeros*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:*
use_locking(
�
train/output/biases4/Adam/readIdentitytrain/output/biases4/Adam*
T0*!
_class
loc:@output/biases4*
_output_shapes
:
�
-train/output/biases4/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@output/biases4*
valueB*    
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
+train/Adam/update_layer_1/biases1/ApplyAdam	ApplyAdamlayer_1/biases1train/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_1/add_grad/tuple/control_dependency_1*
T0*"
_class
loc:@layer_1/biases1*
use_nesterov( *
_output_shapes
:*
use_locking( 
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
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*"
_class
loc:@layer_1/biases1
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam+^train/Adam/update_output/biases4/ApplyAdam,^train/Adam/update_output/weights4/ApplyAdam*
_output_shapes
: *
T0*"
_class
loc:@layer_1/biases1
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
save/Assign_4Assignlayer_3/biases3save/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:
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
save/Assign_7Assignoutput/weights4save/RestoreV2:7*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_8Assigntrain/beta1_powersave/RestoreV2:8*
use_locking(*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
: 
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
save/Assign_11Assigntrain/layer_1/biases1/Adam_1save/RestoreV2:11*
T0*"
_class
loc:@layer_1/biases1*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_15Assigntrain/layer_2/biases2/Adam_1save/RestoreV2:15*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_2/biases2
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
save/Assign_17Assigntrain/layer_2/weights2/Adam_1save/RestoreV2:17*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_2/weights2
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
save/Assign_19Assigntrain/layer_3/biases3/Adam_1save/RestoreV2:19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_3/biases3
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
initNoOp^layer_1/biases1/Assign^layer_1/weights1/Assign^layer_2/biases2/Assign^layer_2/weights2/Assign^layer_3/biases3/Assign^layer_3/weights3/Assign^output/biases4/Assign^output/weights4/Assign^train/beta1_power/Assign^train/beta2_power/Assign"^train/layer_1/biases1/Adam/Assign$^train/layer_1/biases1/Adam_1/Assign#^train/layer_1/weights1/Adam/Assign%^train/layer_1/weights1/Adam_1/Assign"^train/layer_2/biases2/Adam/Assign$^train/layer_2/biases2/Adam_1/Assign#^train/layer_2/weights2/Adam/Assign%^train/layer_2/weights2/Adam_1/Assign"^train/layer_3/biases3/Adam/Assign$^train/layer_3/biases3/Adam_1/Assign#^train/layer_3/weights3/Adam/Assign%^train/layer_3/weights3/Adam_1/Assign!^train/output/biases4/Adam/Assign#^train/output/biases4/Adam_1/Assign"^train/output/weights4/Adam/Assign$^train/output/weights4/Adam_1/Assign"�����     ��d]	K+=��AJ܉
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
9layer_1/weights1/Initializer/random_uniform/RandomUniformRandomUniform1layer_1/weights1/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*#
_class
loc:@layer_1/weights1*
seed2 
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
layer_1/weights1/AssignAssignlayer_1/weights1+layer_1/weights1/Initializer/random_uniform*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:*
use_locking(
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
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_1/biases1*
	container 
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
1layer_2/weights2/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_2/weights2*
valueB"      *
dtype0*
_output_shapes
:
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
/layer_2/weights2/Initializer/random_uniform/subSub/layer_2/weights2/Initializer/random_uniform/max/layer_2/weights2/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_2/weights2
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
layer_2/weights2/AssignAssignlayer_2/weights2+layer_2/weights2/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:
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
layer_2/MatMulMatMullayer_1/Relulayer_2/weights2/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
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
/layer_3/weights3/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_3/weights3*
valueB
 *׳]�
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
+layer_3/weights3/Initializer/random_uniformAdd/layer_3/weights3/Initializer/random_uniform/mul/layer_3/weights3/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes

:
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
!layer_3/biases3/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_3/biases3*
valueB*    
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
*output/weights4/Initializer/random_uniformAdd.output/weights4/Initializer/random_uniform/mul.output/weights4/Initializer/random_uniform/min*
_output_shapes

:*
T0*"
_class
loc:@output/weights4
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
 output/biases4/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@output/biases4*
valueB*    
�
output/biases4
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

output/addAddoutput/MatMuloutput/biases4/read*
T0*'
_output_shapes
:���������
s
cost/PlaceholderPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
{
cost/SquaredDifferenceSquaredDifference
output/addcost/Placeholder*'
_output_shapes
:���������*
T0
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
train/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
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
(train/gradients/cost/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
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
&train/gradients/cost/Mean_grad/truedivRealDiv#train/gradients/cost/Mean_grad/Tile#train/gradients/cost/Mean_grad/Cast*
T0*'
_output_shapes
:���������
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
#train/gradients/output/add_grad/SumSumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency5train/gradients/output/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
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
>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_3/MatMul_grad/MatMul_15^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*?
_class5
31loc:@train/gradients/layer_3/MatMul_grad/MatMul_1
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
&train/gradients/layer_2/add_grad/Sum_1Sum*train/gradients/layer_2/Relu_grad/ReluGrad8train/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
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
,train/gradients/layer_2/MatMul_grad/MatMul_1MatMullayer_1/Relu9train/gradients/layer_2/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
4train/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_2/MatMul_grad/MatMul-^train/gradients/layer_2/MatMul_grad/MatMul_1
�
<train/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_2/MatMul_grad/MatMul5^train/gradients/layer_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*=
_class3
1/loc:@train/gradients/layer_2/MatMul_grad/MatMul
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
&train/gradients/layer_1/add_grad/Sum_1Sum*train/gradients/layer_1/Relu_grad/ReluGrad8train/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*train/gradients/layer_1/add_grad/Reshape_1Reshape&train/gradients/layer_1/add_grad/Sum_1(train/gradients/layer_1/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
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
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*"
_class
loc:@layer_1/biases1
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
"train/layer_1/weights1/Adam/AssignAssigntrain/layer_1/weights1/Adam-train/layer_1/weights1/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_1/weights1
�
 train/layer_1/weights1/Adam/readIdentitytrain/layer_1/weights1/Adam*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes

:
�
/train/layer_1/weights1/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_1/weights1*
valueB*    *
dtype0*
_output_shapes

:
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
,train/layer_1/biases1/Adam/Initializer/zerosConst*"
_class
loc:@layer_1/biases1*
valueB*    *
dtype0*
_output_shapes
:
�
train/layer_1/biases1/Adam
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
!train/layer_1/biases1/Adam/AssignAssigntrain/layer_1/biases1/Adam,train/layer_1/biases1/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_1/biases1
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
,train/layer_2/biases2/Adam/Initializer/zerosConst*"
_class
loc:@layer_2/biases2*
valueB*    *
dtype0*
_output_shapes
:
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
train/layer_2/biases2/Adam/readIdentitytrain/layer_2/biases2/Adam*
_output_shapes
:*
T0*"
_class
loc:@layer_2/biases2
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
-train/layer_3/weights3/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:*#
_class
loc:@layer_3/weights3*
valueB*    
�
train/layer_3/weights3/Adam
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
,train/layer_3/biases3/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_3/biases3*
valueB*    
�
train/layer_3/biases3/Adam
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
#train/layer_3/biases3/Adam_1/AssignAssigntrain/layer_3/biases3/Adam_1.train/layer_3/biases3/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_3/biases3
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
#train/output/weights4/Adam_1/AssignAssigntrain/output/weights4/Adam_1.train/output/weights4/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@output/weights4*
validate_shape(*
_output_shapes

:
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
+train/Adam/update_layer_2/biases2/ApplyAdam	ApplyAdamlayer_2/biases2train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_2/add_grad/tuple/control_dependency_1*
T0*"
_class
loc:@layer_2/biases2*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
,train/Adam/update_layer_3/weights3/ApplyAdam	ApplyAdamlayer_3/weights3train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@layer_3/weights3*
use_nesterov( *
_output_shapes

:*
use_locking( 
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
save/AssignAssignlayer_1/biases1save/RestoreV2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_1/biases1
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
save/Assign_4Assignlayer_3/biases3save/RestoreV2:4*
T0*"
_class
loc:@layer_3/biases3*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_6Assignoutput/biases4save/RestoreV2:6*
T0*!
_class
loc:@output/biases4*
validate_shape(*
_output_shapes
:*
use_locking(
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
save/Assign_12Assigntrain/layer_1/weights1/Adamsave/RestoreV2:12*
T0*#
_class
loc:@layer_1/weights1*
validate_shape(*
_output_shapes

:*
use_locking(
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
save/Assign_16Assigntrain/layer_2/weights2/Adamsave/RestoreV2:16*
T0*#
_class
loc:@layer_2/weights2*
validate_shape(*
_output_shapes

:*
use_locking(
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
save/Assign_21Assigntrain/layer_3/weights3/Adam_1save/RestoreV2:21*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*#
_class
loc:@layer_3/weights3
�
save/Assign_22Assigntrain/output/biases4/Adamsave/RestoreV2:22*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@output/biases4
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
initNoOp^layer_1/biases1/Assign^layer_1/weights1/Assign^layer_2/biases2/Assign^layer_2/weights2/Assign^layer_3/biases3/Assign^layer_3/weights3/Assign^output/biases4/Assign^output/weights4/Assign^train/beta1_power/Assign^train/beta2_power/Assign"^train/layer_1/biases1/Adam/Assign$^train/layer_1/biases1/Adam_1/Assign#^train/layer_1/weights1/Adam/Assign%^train/layer_1/weights1/Adam_1/Assign"^train/layer_2/biases2/Adam/Assign$^train/layer_2/biases2/Adam_1/Assign#^train/layer_2/weights2/Adam/Assign%^train/layer_2/weights2/Adam_1/Assign"^train/layer_3/biases3/Adam/Assign$^train/layer_3/biases3/Adam_1/Assign#^train/layer_3/weights3/Adam/Assign%^train/layer_3/weights3/Adam_1/Assign!^train/output/biases4/Adam/Assign#^train/output/biases4/Adam_1/Assign"^train/output/weights4/Adam/Assign$^train/output/weights4/Adam_1/Assign""'
	summaries

logging/current_cost:0"�
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
output/biases4:0output/biases4/Assignoutput/biases4/read:02"output/biases4/Initializer/zeros:08"
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
train/output/biases4/Adam_1:0"train/output/biases4/Adam_1/Assign"train/output/biases4/Adam_1/read:02/train/output/biases4/Adam_1/Initializer/zeros:0 +=(       �pJ	˼B��A*

logging/current_cost�}�<�HL*       ����	9�B��A*

logging/current_costȵ�<�	?�*       ����	�!C��A
*

logging/current_cost�_�<�R *       ����	(UC��A*

logging/current_cost�˕<�e�*       ����	΅C��A*

logging/current_cost��<g%��*       ����	��C��A*

logging/current_cost��<��{<*       ����	��C��A*

logging/current_cost4��<h48�*       ����	�D��A#*

logging/current_cost��<��Ƿ*       ����	ND��A(*

logging/current_costd�|<q��*       ����	}�D��A-*

logging/current_costU4u<h�sB*       ����	ݯD��A2*

logging/current_costJkk<)>�*       ����	�D��A7*

logging/current_costu^`<�u*       ����	�
E��A<*

logging/current_cost��S<����*       ����	�8E��AA*

logging/current_cost*I<�g��*       ����	uE��AF*

logging/current_cost�><Bc�r*       ����	ʡE��AK*

logging/current_cost�3<�ܻN*       ����	��E��AP*

logging/current_cost�4)<Я[]*       ����	:�E��AU*

logging/current_costt�<p�**       ����	�+F��AZ*

logging/current_cost�<O��*       ����	WXF��A_*

logging/current_cost��<:x	*       ����	��F��Ad*

logging/current_cost�<yk��*       ����	��F��Ai*

logging/current_cost�<�Ⱥ'*       ����	t�F��An*

logging/current_cost</�;��]�*       ����	�G��As*

logging/current_costAY�;/��*       ����	�=G��Ax*

logging/current_cost���;cM��*       ����	�jG��A}*

logging/current_cost�1�;~.�+       ��K	"�G��A�*

logging/current_cost���;y��+       ��K	5�G��A�*

logging/current_cost;�;"Ƽ�+       ��K	�G��A�*

logging/current_cost�d�;��m�+       ��K	�$H��A�*

logging/current_cost3�;�ܣ+       ��K	'QH��A�*

logging/current_cost���;�3V{+       ��K	�|H��A�*

logging/current_costKx�;F[�Z+       ��K	Z�H��A�*

logging/current_cost9�;�)�+       ��K	��H��A�*

logging/current_cost%2�;&�'+       ��K	�I��A�*

logging/current_cost�פ;��Ɖ+       ��K	69I��A�*

logging/current_cost�ա;&G�+       ��K	�gI��A�*

logging/current_cost�R�;4��;+       ��K	��I��A�*

logging/current_cost��;]
�|+       ��K	��I��A�*

logging/current_cost2Q�;�z��+       ��K	Y�I��A�*

logging/current_costiș;�ې+       ��K	�,J��A�*

logging/current_cost�;���z+       ��K	�ZJ��A�*

logging/current_costR��;mth�+       ��K	f�J��A�*

logging/current_cost��;P�R+       ��K	3�J��A�*

logging/current_cost	z�;ZX)+       ��K	s�J��A�*

logging/current_costr�;?A)+       ��K	K��A�*

logging/current_costk�;�3C+       ��K	�BK��A�*

logging/current_costns�;�N�'+       ��K	1qK��A�*

logging/current_cost��;3��+       ��K	��K��A�*

logging/current_cost�,�;�,�!+       ��K	A�K��A�*

logging/current_costK��;D�@H+       ��K	��K��A�*

logging/current_cost{9�;��ԃ+       ��K	�(L��A�*

logging/current_costt�;<��+       ��K	�UL��A�*

logging/current_cost���; �,O+       ��K	��L��A�*

logging/current_costF�;���+       ��K	_�L��A�*

logging/current_cost��;lu�S+       ��K	��L��A�*

logging/current_cost[Ŏ;j�֛+       ��K	,M��A�*

logging/current_costn��;g�Q+       ��K	�:M��A�*

logging/current_cost�O�;Z���+       ��K	�gM��A�*

logging/current_cost��;�~[+       ��K	~�M��A�*

logging/current_costJ�;TY@"+       ��K	��M��A�*

logging/current_cost ��;�a�<+       ��K	�M��A�*

logging/current_costP��;z�/+       ��K	O7N��A�*

logging/current_costhg�;��2o+       ��K	�rN��A�*

logging/current_cost_?�;e�+       ��K	B�N��A�*

logging/current_cost��;�jw,+       ��K	I�N��A�*

logging/current_cost���;��+       ��K	>/O��A�*

logging/current_cost7ǌ;־�J+       ��K	�}O��A�*

logging/current_costz��;�"�+       ��K	�O��A�*

logging/current_cost�y�;�P�+       ��K	SP��A�*

logging/current_cost7U�;AO/#+       ��K	D?P��A�*

logging/current_costG2�;Y9bW+       ��K	�tP��A�*

logging/current_cost��;��+�+       ��K	լP��A�*

logging/current_costT�;��E+       ��K	G�P��A�*

logging/current_cost%΋;9ZA�+       ��K	�Q��A�*

logging/current_costC��;	V�+       ��K	fRQ��A�*

logging/current_cost���;�z�|+       ��K	�Q��A�*

logging/current_cost�p�;i�@+       ��K	��Q��A�*

logging/current_costkR�;��&+       ��K	t�Q��A�*

logging/current_costU5�;ɺW+       ��K	�R��A�*

logging/current_cost}�;��n+       ��K	�SR��A�*

logging/current_cost��;����+       ��K	��R��A�*

logging/current_cost��;�Ww+       ��K	o�R��A�*

logging/current_cost~��;3��J+       ��K	��R��A�*

logging/current_cost�;J�DP+       ��K	JS��A�*

logging/current_cost!�;5��+       ��K	�IS��A�*

logging/current_cost#ފ;�m�+       ��K	n}S��A�*

logging/current_cost�؊;[ҜG+       ��K	a�S��A�*

logging/current_cost�Ԋ;l:�+       ��K	��S��A�*

logging/current_costXЊ;���<+       ��K	CT��A�*

logging/current_cost�̊;��+       ��K	 NT��A�*

logging/current_cost5ʊ;�2� +       ��K	��T��A�*

logging/current_costȊ;>�+       ��K	_�T��A�*

logging/current_cost�Ŋ;�f+       ��K	�T��A�*

logging/current_cost�Ê;ظgL+       ��K	�$U��A�*

logging/current_cost���;����+       ��K	�PU��A�*

logging/current_cost���;�a�+       ��K	(�U��A�*

logging/current_cost���;9�f+       ��K	i�U��A�*

logging/current_cost���;N�w'+       ��K	.�U��A�*

logging/current_cost���;���0+       ��K	V��A�*

logging/current_cost���;��,�+       ��K	|NV��A�*

logging/current_cost���;�#N�+       ��K	l}V��A�*

logging/current_cost���;eu+       ��K	}�V��A�*

logging/current_cost���;�t��+       ��K	�V��A�*

logging/current_cost���;$7��+       ��K	�W��A�*

logging/current_costv��;��~.+       ��K	�4W��A�*

logging/current_costA��;cW*:+       ��K	aW��A�*

logging/current_costS��;[��~+       ��K	1�W��A�*

logging/current_costQ��;u�+       ��K	��W��A�*

logging/current_costs��;��<!+       ��K	�W��A�*

logging/current_cost���;�"+       ��K	MX��A�*

logging/current_cost���;pd�V+       ��K	�KX��A�*

logging/current_cost���;?���+       ��K	�wX��A�*

logging/current_costɝ�;b�Y�+       ��K	}�X��A�*

logging/current_cost;�=[�+       ��K	�X��A�*

logging/current_cost���;���w+       ��K	Y��A�*

logging/current_cost!��;# �+       ��K	�/Y��A�*

logging/current_costF��;�Q֦+       ��K	�\Y��A�*

logging/current_cost\��;��e+       ��K	��Y��A�*

logging/current_costm��;���+       ��K	:�Y��A�*

logging/current_cost���;<k+       ��K	TZ��A�*

logging/current_costQ��;�Ќ+       ��K	04Z��A�*

logging/current_costU��;]5P�+       ��K	r`Z��A�*

logging/current_costȉ�;&��+       ��K	��Z��A�*

logging/current_cost���;�7��+       ��K	��Z��A�*

logging/current_cost3��;��i+       ��K	5�Z��A�*

logging/current_cost邊;��n�+       ��K	�![��A�*

logging/current_cost���;�y}+       ��K	\N[��A�*

logging/current_cost~�;z���+       ��K	-{[��A�*

logging/current_cost,y�;5^�x+       ��K	%�[��A�*

logging/current_cost^p�;�#r+       ��K	�[��A�*

logging/current_costpg�;D��+       ��K	�\��A�*

logging/current_cost�d�;��+       ��K	/\��A�*

logging/current_cost�a�;�77S+       ��K	�\\��A�*

logging/current_cost�^�;��C+       ��K	�\��A�*

logging/current_cost\�;n"�+       ��K	B�\��A�*

logging/current_costX�;1v�+       ��K	X�\��A�*

logging/current_costJS�; Bɿ+       ��K	�(]��A�*

logging/current_cost�N�;b^�+       ��K	T]��A�*

logging/current_cost>J�; <S"+       ��K	�]��A�*

logging/current_cost�E�;Ɛ��+       ��K	l�]��A�*

logging/current_cost2A�;���Q+       ��K	��]��A�*

logging/current_cost�<�;~��+       ��K	0^��A�*

logging/current_cost�9�;~�K+       ��K	;?^��A�*

logging/current_cost�6�;�Q��+       ��K	�r^��A�*

logging/current_cost�4�;x�+       ��K	��^��A�*

logging/current_cost�2�;C^Y+       ��K	?�^��A�*

logging/current_cost�0�;,i�+       ��K	��^��A�*

logging/current_cost.�;An+       ��K	�1_��A�*

logging/current_cost�+�;��>H+       ��K	�b_��A�*

logging/current_cost�)�;&�$~+       ��K	!�_��A�*

logging/current_cost�'�;���+       ��K	e�_��A�*

logging/current_costS%�;���+       ��K	U�_��A�*

logging/current_cost1#�;��M�+       ��K	�$`��A�*

logging/current_cost!�;a�wC+       ��K	jT`��A�*

logging/current_cost��;�iY�+       ��K	��`��A�*

logging/current_cost�;� ,�+       ��K	��`��A�*

logging/current_cost�;���+       ��K	��`��A�*

logging/current_cost7�;�6c�+       ��K	�a��A�*

logging/current_cost\�;�7�6+       ��K	HCa��A�*

logging/current_cost��;h�m\+       ��K	�ta��A�*

logging/current_cost��;�ss+       ��K	-�a��A�*

logging/current_cost��;]_�[+       ��K	z�a��A�*

logging/current_cost��;��+       ��K	|�a��A�*

logging/current_cost��;w���+       ��K	�-b��A�*

logging/current_cost �;�_�+       ��K	L]b��A�*

logging/current_costB
�;����+       ��K	g�b��A�*

logging/current_cost��;]��+       ��K	��b��A�*

logging/current_costv�;Y΍h+       ��K	K�b��A�*

logging/current_cost��;�c�B+       ��K	�c��A�*

logging/current_cost��;�E��+       ��K	7Fc��A�*

logging/current_cost� �;���%+       ��K	�wc��A�*

logging/current_cost��; ��+       ��K	�c��A�*

logging/current_costA��;TQ�++       ��K	��c��A�*

logging/current_costR��;��^+       ��K	��c��A�*

logging/current_cost|��;��q�+       ��K	�+d��A�*

logging/current_cost���;��x+       ��K	&Yd��A�*

logging/current_cost���;%]�+       ��K	ڇd��A�*

logging/current_cost��;�MF+       ��K	g�d��A�*

logging/current_cost�;����+       ��K	�d��A�*

logging/current_costM��;�I��+       ��K	ve��A�*

logging/current_costd�;��+       ��K	�:e��A�*

logging/current_cost��;h��+       ��K	vje��A�*

logging/current_cost��;��Ld+       ��K	��e��A�*

logging/current_cost��;��!C+       ��K	��e��A�*

logging/current_cost�;E��,+       ��K	��e��A�*

logging/current_cost��;1块+       ��K	�f��A�*

logging/current_costM�;fU+       ��K	 Jf��A�*

logging/current_cost��;��|�+       ��K	pwf��A�*

logging/current_cost�߉;bs+       ��K	��f��A�*

logging/current_cost�݉;붑+       ��K	��f��A�*

logging/current_cost܉;{�+       ��K	�g��A�*

logging/current_cost)ډ;��K�+       ��K	�5g��A�*

logging/current_costc؉;�+       ��K	bcg��A�*

logging/current_cost�։;\��+       ��K	��g��A�*

logging/current_cost�ԉ;�JF�+       ��K	>�g��A�*

logging/current_cost9Ӊ;��S+       ��K	e�g��A�*

logging/current_cost/щ;�0g�+       ��K	�h��A�*

logging/current_cost`ω;�\�+       ��K	�Gh��A�*

logging/current_cost�͉;���+       ��K	\vh��A�*

logging/current_cost�ˉ;���+       ��K	��h��A�*

logging/current_costʉ;z���+       ��K	O�h��A�*

logging/current_cost�ȉ;�	Cy+       ��K	#i��A�*

logging/current_costǉ;�R-�+       ��K	0i��A�*

logging/current_costuŉ;K��+       ��K	e^i��A�*

logging/current_cost�É; Q;+       ��K	��i��A�*

logging/current_cost���;6jZ�+       ��K	>�i��A�*

logging/current_costS��;K�J�+       ��K	 �i��A�*

logging/current_cost���;QG]+       ��K	Wj��A�*

logging/current_cost漉;��=�+       ��K	.Kj��A�*

logging/current_cost���;C�ߢ+       ��K	�wj��A�*

logging/current_costҹ�;�*��+       ��K	�j��A�*

logging/current_cost��;��<�+       ��K	4�j��A�*

logging/current_costԶ�;b0�+       ��K	�k��A�*

logging/current_cost紉;�&�+       ��K	c2k��A�*

logging/current_costD��;sxT�+       ��K	�_k��A�*

logging/current_cost���;��+       ��K	]�k��A�*

logging/current_cost&��; '�+       ��K	��k��A�*

logging/current_cost���;��+       ��K	D�k��A�*

logging/current_cost��;���+       ��K	Ml��A�*

logging/current_cost���;�~Q+       ��K	�Il��A�*

logging/current_cost��;�2��+       ��K	B{l��A�*

logging/current_cost���;t!=�+       ��K	�l��A�*

logging/current_cost	��;���'+       ��K	W�l��A�*

logging/current_cost���;��+       ��K	�m��A�*

logging/current_cost��;;��+       ��K	w<m��A�*

logging/current_cost���;�m��+       ��K	�jm��A�*

logging/current_cost��;wX��+       ��K	F�m��A�*

logging/current_cost���;��+       ��K	M�m��A�*

logging/current_cost��;�YH+       ��K	��m��A�*

logging/current_cost���;@Y�0+       ��K	%n��A�*

logging/current_cost3��;��/�+       ��K	�Un��A�	*

logging/current_cost���;��V�+       ��K	d�n��A�	*

logging/current_cost>��;2�!+       ��K	Y�n��A�	*

logging/current_costߖ�;yE�,+       ��K	[�n��A�	*

logging/current_costj��;|���+       ��K	^o��A�	*

logging/current_cost&��;��T+       ��K	�Bo��A�	*

logging/current_cost���;|ù+       ��K	qoo��A�	*

logging/current_costg��;p�^�+       ��K	�o��A�	*

logging/current_cost���;�8�f+       ��K	��o��A�	*

logging/current_cost���;F�+       ��K	��o��A�	*

logging/current_cost9��;Y��+       ��K	�*p��A�	*

logging/current_cost狉;�p+       ��K	{Xp��A�	*

logging/current_cost;��k+       ��K	��p��A�	*

logging/current_costO��;[�b+       ��K	��p��A�	*

logging/current_cost�;��+       ��K	��p��A�	*

logging/current_costM��;�D/2+       ��K	�q��A�	*

logging/current_costꃉ;)c'+       ��K	Dq��A�	*

logging/current_cost���;`ZS�+       ��K	�rq��A�	*

logging/current_cost���;T�"D+       ��K	i�q��A�	*

logging/current_cost��;�
C+       ��K	5�q��A�	*

logging/current_cost_~�;�֐u+       ��K	�q��A�	*

logging/current_cost�|�;��?J+       ��K	p(r��A�	*

logging/current_costA{�;�PK+       ��K	=Ur��A�	*

logging/current_cost*z�;�/z+       ��K	��r��A�	*

logging/current_cost�x�;����+       ��K	ݮr��A�	*

logging/current_costw�;�D�W+       ��K	w�r��A�
*

logging/current_cost�u�;br�;+       ��K	g
s��A�
*

logging/current_cost�t�;���>+       ��K	�7s��A�
*

logging/current_cost�r�;Ʀ$^+       ��K	[es��A�
*

logging/current_costsq�;�v'�+       ��K	-�s��A�
*

logging/current_costDp�;�E�]+       ��K	5�s��A�
*

logging/current_cost�n�;RK/�+       ��K	��s��A�
*

logging/current_cost�m�;�U4)+       ��K	Lt��A�
*

logging/current_costSl�;�|��+       ��K	�Dt��A�
*

logging/current_cost9k�;�w,P+       ��K	drt��A�
*

logging/current_cost�i�;Hn�+       ��K	��t��A�
*

logging/current_cost>h�;�.U+       ��K	��t��A�
*

logging/current_costg�;L�b�+       ��K	p�t��A�
*

logging/current_cost�e�;�c�+       ��K	>(u��A�
*

logging/current_costid�;��V�+       ��K	NUu��A�
*

logging/current_costZc�;ͺc+       ��K	�u��A�
*

logging/current_cost�a�;f���+       ��K	�u��A�
*

logging/current_cost a�;�=+       ��K	��u��A�
*

logging/current_cost�_�;	���+       ��K	�v��A�
*

logging/current_cost\^�;�&�+       ��K	�5v��A�
*

logging/current_cost ]�;�M�p+       ��K	bv��A�
*

logging/current_cost�[�;�{�+       ��K	Ñv��A�
*

logging/current_cost)Z�;`��)+       ��K	οv��A�
*

logging/current_cost�X�;�X�+       ��K	��v��A�
*

logging/current_costjW�;�6�+       ��K	Ow��A�
*

logging/current_costV�;R+       ��K	�Tw��A�
*

logging/current_cost�T�;���+       ��K	B�w��A�*

logging/current_costYS�;#�,�+       ��K	ְw��A�*

logging/current_cost�Q�;}wJ�+       ��K	�w��A�*

logging/current_costlP�;{*�+       ��K	�x��A�*

logging/current_costO�;"w8�+       ��K	�<x��A�*

logging/current_cost�M�;� �r+       ��K	�hx��A�*

logging/current_costxL�;�B��+       ��K	�x��A�*

logging/current_cost)K�;R�{+       ��K	n�x��A�*

logging/current_cost�I�;	�+       ��K	J�x��A�*

logging/current_cost�H�;Kh�o+       ��K	�%y��A�*

logging/current_costUG�;M��+       ��K	uTy��A�*

logging/current_cost
F�;:q��+       ��K	��y��A�*

logging/current_cost�D�;SY�+       ��K	3�y��A�*

logging/current_cost�C�;\.b+       ��K	8�y��A�*

logging/current_cost:B�;�#v+       ��K	{z��A�*

logging/current_cost�@�;]j��+       ��K	�Dz��A�*

logging/current_cost�?�;��]�+       ��K	�oz��A�*

logging/current_costq>�;/�+       ��K	ݝz��A�*

logging/current_costF=�;�_7+       ��K	?�z��A�*

logging/current_cost�;�;��!/+       ��K	��z��A�*

logging/current_cost�:�;)�~�+       ��K	�-{��A�*

logging/current_cost{9�;��[g+       ��K	LZ{��A�*

logging/current_costG8�;�PR�+       ��K	>�{��A�*

logging/current_cost�6�;gO_�+       ��K	��{��A�*

logging/current_cost�5�;)�9+       ��K	h9|��A�*

logging/current_cost~4�;չ+       ��K	�w|��A�*

logging/current_costP3�;,�z+       ��K	�|��A�*

logging/current_cost2�;{�,+       ��K	��|��A�*

logging/current_cost�0�;��+       ��K	+$}��A�*

logging/current_cost�/�;
\�+       ��K	�[}��A�*

logging/current_costg.�;䤣+       ��K	��}��A�*

logging/current_cost2-�;".>E+       ��K	y�}��A�*

logging/current_cost�+�;B�B�+       ��K	{�}��A�*

logging/current_cost�*�;_uB�+       ��K	u.~��A�*

logging/current_cost�)�;�S��+       ��K	�^~��A�*

logging/current_costh(�;<�ܓ+       ��K	��~��A�*

logging/current_cost)'�; m+       ��K	��~��A�*

logging/current_cost�%�;��ҍ+       ��K	��~��A�*

logging/current_cost�$�;�W�A+       ��K	~/��A�*

logging/current_cost�#�;G��+       ��K	Hb��A�*

logging/current_cost|"�;���+       ��K	F���A�*

logging/current_costI!�;6
k�+       ��K	���A�*

logging/current_cost! �;����+       ��K	7���A�*

logging/current_cost�;��I7+       ��K	3���A�*

logging/current_cost��;Dw�/+       ��K	�I���A�*

logging/current_cost��;� +       ��K	x|���A�*

logging/current_costl�;P�mK+       ��K	©���A�*

logging/current_cost=�;K��v+       ��K	�܀��A�*

logging/current_cost�;]���+       ��K	����A�*

logging/current_cost��;���%+       ��K	/A���A�*

logging/current_cost��;WB�`+       ��K	,t���A�*

logging/current_cost��;����+       ��K	⤁��A�*

logging/current_costy�;QVc|+       ��K	�с��A�*

logging/current_cost=�;ه:�+       ��K	����A�*

logging/current_cost�;��+       ��K	�+���A�*

logging/current_cost��;�Ϛ+       ��K	�e���A�*

logging/current_cost��;�Y_p+       ��K	>����A�*

logging/current_cost��;!ݽ�+       ��K	�����A�*

logging/current_costd�;���+       ��K	!���A�*

logging/current_cost�
�;�B��+       ��K	����A�*

logging/current_cost��;@<Uc+       ��K	eK���A�*

logging/current_cost��;G:X�+       ��K	1z���A�*

logging/current_costM�;�.m�+       ��K	J����A�*

logging/current_cost!�;;�+       ��K	�҃��A�*

logging/current_cost���;�6�+       ��K	+����A�*

logging/current_costC��;{�+       ��K	�-���A�*

logging/current_cost���;Lv+       ��K	�b���A�*

logging/current_costV��;J\�+       ��K	L����A�*

logging/current_cost��;�Q��+       ��K	���A�*

logging/current_cost���;�o�g+       ��K	z���A�*

logging/current_cost`��;�/#�+       ��K	#���A�*

logging/current_cost��;�p�+       ��K	�J���A�*

logging/current_cost��;�"ފ+       ��K	�{���A�*

logging/current_cost�;P8	+       ��K	Ƭ���A�*

logging/current_cost>�;�Q#�+       ��K	Uޅ��A�*

logging/current_cost���;�+       ��K	)���A�*

logging/current_cost��;ؓ��+       ��K	 ;���A�*

logging/current_costv�;��`�+       ��K	�m���A�*

logging/current_cost2�;��rx+       ��K	�����A�*

logging/current_cost��;�#�+       ��K	�Ά��A�*

logging/current_cost��;�jd+       ��K	)����A�*

logging/current_costs�;q�=}+       ��K	F/���A�*

logging/current_costQ�;��+       ��K	Yc���A�*

logging/current_cost��;�^�+       ��K	&����A�*

logging/current_cost��;{ϭ�+       ��K	����A�*

logging/current_cost~�;P�+       ��K	�&���A�*

logging/current_cost7�;��K+       ��K	Dt���A�*

logging/current_cost��;��+       ��K	�����A�*

logging/current_cost���;��+       ��K	g���A�*

logging/current_cost}߈;]�+       ��K	�$���A�*

logging/current_costKވ;o���+       ��K	�k���A�*

logging/current_cost0݈;��+       ��K	>����A�*

logging/current_cost�ۈ;�$+       ��K	&���A�*

logging/current_cost�ڈ;���]+       ��K	�%���A�*

logging/current_costsو;ԏ�+       ��K	`X���A�*

logging/current_cost)؈;M��)+       ��K	�����A�*

logging/current_cost׈;�<+       ��K	�Ɋ��A�*

logging/current_cost�Ո;w��Q+       ��K	�����A�*

logging/current_cost�Ԉ;��,x+       ��K	#0���A�*

logging/current_costYӈ;)_ w+       ��K	c���A�*

logging/current_cost;҈;�sa�+       ��K	�����A�*

logging/current_cost ш;��-+       ��K	?����A�*

logging/current_cost�ψ;~��+       ��K	����A�*

logging/current_cost�Έ;b��{+       ��K	�!���A�*

logging/current_costI͈;��N+       ��K	�P���A�*

logging/current_cost�ˈ;�mF�+       ��K	~���A�*

logging/current_cost�ʈ;4��+       ��K	�����A�*

logging/current_cost�Ɉ;-�%�+       ��K	�׌��A�*

logging/current_costOȈ;az��+       ��K	O���A�*

logging/current_costNǈ;����+       ��K	�9���A�*

logging/current_costƈ;FN�+       ��K	�j���A�*

logging/current_cost�Ĉ;���+       ��K	�����A�*

logging/current_cost�È;�/+       ��K	�ɍ��A�*

logging/current_cost�;d���+       ��K	�����A�*

logging/current_cost���;�0<+       ��K	�3���A�*

logging/current_costO��;��I\+       ��K	�p���A�*

logging/current_cost쾈;ﱻ�+       ��K	�����A�*

logging/current_cost���;��^�+       ��K	�͎��A�*

logging/current_costr��;�''�+       ��K	U���A�*

logging/current_costj��;NR�+       ��K	�0���A�*

logging/current_cost��;y�Z+       ��K	`���A�*

logging/current_cost��;e���+       ��K	�����A�*

logging/current_cost跈;'�|�+       ��K	�����A�*

logging/current_cost���;���+       ��K	����A�*

logging/current_cost���;k��T+       ��K	����A�*

logging/current_costO��;.���+       ��K	�H���A�*

logging/current_cost@��;S_�+       ��K	Wv���A�*

logging/current_cost��;u{�+       ��K	ע���A�*

logging/current_cost���;�LQ�+       ��K	�А��A�*

logging/current_cost�;�zh�+       ��K	�����A�*

logging/current_cost���;�V�:+       ��K	3���A�*

logging/current_costb��;~��H+       ��K	$g���A�*

logging/current_costJ��;J���+       ��K	�����A�*

logging/current_cost��; ��4+       ��K	vđ��A�*

logging/current_cost詈;T��$+       ��K	����A�*

logging/current_cost;�o+       ��K	����A�*

logging/current_cost���;���+       ��K	LP���A�*

logging/current_costv��;ﴕ+       ��K	I}���A�*

logging/current_costQ��;�W��+       ��K	�����A�*

logging/current_cost.��;2^Y�+       ��K	6ޒ��A�*

logging/current_cost*��;OO�+       ��K	����A�*

logging/current_cost-��;�\/+       ��K	9;���A�*

logging/current_cost���;߮=+       ��K	�l���A�*

logging/current_cost˟�;�ҳ�+       ��K	����A�*

logging/current_cost���;ֲ��+       ��K	i͓��A�*

logging/current_costI��;a�
+       ��K	]����A�*

logging/current_cost9��;� �+       ��K	.���A�*

logging/current_cost��;	�+       ��K	�d���A�*

logging/current_cost���;Ѭ�@+       ��K	�����A�*

logging/current_costҘ�;
�'�+       ��K	�͔��A�*

logging/current_cost���;~�.
+       ��K	M����A�*

logging/current_costk��;���+       ��K	1*���A�*

logging/current_costj��;��R+       ��K	�U���A�*

logging/current_cost:��;�D�+       ��K	 ����A�*

logging/current_cost=��;*O��+       ��K	�����A�*

logging/current_cost=��;�OC�+       ��K	����A�*

logging/current_cost7��;w?�+       ��K	����A�*

logging/current_costv��;Dm��+       ��K	A���A�*

logging/current_cost��;�]?�+       ��K	�s���A�*

logging/current_cost��;{��+       ��K	T����A�*

logging/current_cost��;A�&C+       ��K	�Ԗ��A�*

logging/current_cost��;[�˒+       ��K	����A�*

logging/current_cost5��;�~�d+       ��K	,.���A�*

logging/current_cost-��;���+       ��K	�[���A�*

logging/current_cost1��;�\p�+       ��K	4����A�*

logging/current_cost^��;"�u�+       ��K		����A�*

logging/current_cost5��;51��+       ��K	����A�*

logging/current_costF��;b;�+       ��K	����A�*

logging/current_cost[��;/L�u+       ��K	�D���A�*

logging/current_costo��;H� �+       ��K	�r���A�*

logging/current_costƃ�;����+       ��K	:����A�*

logging/current_costw��;���+       ��K	�͘��A�*

logging/current_cost3��;r��n+       ��K	����A�*

logging/current_costu��;g�9+       ��K	�'���A�*

logging/current_costG�;���a+       ��K	V���A�*

logging/current_costv~�;p�-�+       ��K	�����A�*

logging/current_costg}�;�$ŷ+       ��K	�����A�*

logging/current_costo|�;ؼl+       ��K	����A�*

logging/current_cost;{�;��S+       ��K	����A�*

logging/current_costz�;N���+       ��K	zB���A�*

logging/current_costy�;Jt�+       ��K	�o���A�*

logging/current_cost?x�;֮�`+       ��K	�����A�*

logging/current_cost$w�;�G}�+       ��K	�˚��A�*

logging/current_costv�;��+       ��K	'����A�*

logging/current_costbu�;�p�z+       ��K	K$���A�*

logging/current_cost}t�;�++       ��K	�P���A�*

logging/current_costVs�;���+       ��K	~���A�*

logging/current_costBr�;0���+       ��K	�����A�*

logging/current_cost q�;q�+       ��K	jٛ��A�*

logging/current_costp�;.��+       ��K	����A�*

logging/current_cost�n�;ET%`+       ��K	�2���A�*

logging/current_cost�m�;zF8+       ��K	h`���A�*

logging/current_cost�l�;Z�x2+       ��K	3����A�*

logging/current_cost�k�;t�
:+       ��K	켜��A�*

logging/current_costk�;H�+       ��K	����A�*

logging/current_cost�i�;�9��+       ��K	o���A�*

logging/current_cost�h�;��7+       ��K	�J���A�*

logging/current_cost�g�;�g��+       ��K	�w���A�*

logging/current_cost�f�;�+       ��K	���A�*

logging/current_cost�e�;D��+       ��K	WН��A�*

logging/current_cost�d�;�p�N+       ��K	R���A�*

logging/current_cost�c�;��o+       ��K	�;���A�*

logging/current_cost�b�;�}��+       ��K	�j���A�*

logging/current_costb�;�'��+       ��K	$����A�*

logging/current_costa�;�(Z�+       ��K	Ş��A�*

logging/current_cost5`�;/O�+       ��K	����A�*

logging/current_cost�^�;���E+       ��K	� ���A�*

logging/current_cost�]�;�f�+       ��K	SN���A�*

logging/current_cost�\�;��+       ��K	�z���A�*

logging/current_cost\�;�Z�+       ��K	�����A�*

logging/current_cost [�;|c�+       ��K	۟��A�*

logging/current_cost%Z�;��`*+       ��K	D���A�*

logging/current_costMY�;���h+       ��K	�=���A�*

logging/current_costX�;/�Z�+       ��K	�r���A�*

logging/current_costAW�;5yQw+       ��K	����A�*

logging/current_cost�U�;�"u+       ��K	�̠��A�*

logging/current_cost�U�;�J=�+       ��K	�����A�*

logging/current_costT�;]�I�+       ��K	�,���A�*

logging/current_cost�R�;�$�=+       ��K	Z���A�*

logging/current_cost5R�;[���+       ��K	@����A�*

logging/current_costFQ�;l�#�+       ��K	�����A�*

logging/current_cost4P�;۔��+       ��K	���A�*

logging/current_cost�N�;h���+       ��K		���A�*

logging/current_cost-N�;J���+       ��K	�D���A�*

logging/current_costM�;)��]+       ��K	�s���A�*

logging/current_costL�;�!Ke+       ��K	v����A�*

logging/current_cost�J�;RJT+       ��K	�Ң��A�*

logging/current_costJ�;#��+       ��K	����A�*

logging/current_cost�H�;���+       ��K	1���A�*

logging/current_cost�G�;Q"z�+       ��K	*`���A�*

logging/current_costG�;�f�n+       ��K	����A�*

logging/current_cost+F�;]�~[+       ��K	�����A�*

logging/current_cost�D�; �t+       ��K	6���A�*

logging/current_cost�B�;rI-+       ��K	���A�*

logging/current_cost{A�;�2E+       ��K	:F���A�*

logging/current_cost�@�;LKO1+       ��K	!s���A�*

logging/current_costx?�;�7�?+       ��K	z����A�*

logging/current_cost0>�;��|�+       ��K	�Ϥ��A�*

logging/current_costc=�;y�V�+       ��K	����A�*

logging/current_cost<�;7��i+       ��K	5,���A�*

logging/current_cost�:�;�U1?+       ��K	!\���A�*

logging/current_cost�9�;@�1[+       ��K	8����A�*

logging/current_cost�8�;&�a+       ��K	����A�*

logging/current_cost�7�;p{ں+       ��K	����A�*

logging/current_cost�6�; Q�+       ��K	����A�*

logging/current_cost�5�;�H�+       ��K	8>���A�*

logging/current_cost�4�;�3bV+       ��K	[n���A�*

logging/current_cost�3�;-l4d+       ��K	[����A�*

logging/current_cost|2�;���+       ��K	Hʦ��A�*

logging/current_cost�1�;˾�^+       ��K	�����A�*

logging/current_costq0�;`њ�+       ��K	�,���A�*

logging/current_cost/�;�\�`+       ��K	�Y���A�*

logging/current_costt.�;�go�+       ��K	Ӈ���A�*

logging/current_costC-�;���Z+       ��K	Z����A�*

logging/current_cost,�;��a�+       ��K	����A�*

logging/current_cost�*�;1KtC+       ��K	����A�*

logging/current_cost9*�;��t�+       ��K	-B���A�*

logging/current_cost�(�;�E�+       ��K	�m���A�*

logging/current_costW(�;� �+       ��K	8����A�*

logging/current_cost�&�;�L�/+       ��K	kʨ��A�*

logging/current_cost6&�;k\?1+       ��K	f����A�*

logging/current_cost�$�;P��+       ��K	�%���A�*

logging/current_costq#�;l���+       ��K	�R���A�*

logging/current_costn"�;�k��+       ��K	z����A�*

logging/current_cost<!�;��+       ��K	l����A�*

logging/current_cost� �;�`�+       ��K	sީ��A�*

logging/current_cost��;��X+       ��K	^���A�*

logging/current_cost%�;�ޟ�+       ��K	�7���A�*

logging/current_cost��;���+       ��K	�d���A�*

logging/current_cost�;���+       ��K	瑪��A�*

logging/current_cost�;_��+       ��K	Ὺ��A�*

logging/current_cost��;E�1�+       ��K	�����A�*

logging/current_cost��;�s4�+       ��K	����A�*

logging/current_cost��;^�+�+       ��K	�S���A�*

logging/current_costn�;{"T�+       ��K	�����A�*

logging/current_cost�;���+       ��K	s����A�*

logging/current_cost��;��V\+       ��K	H���A�*

logging/current_cost1�;�:��+       ��K	����A�*

logging/current_cost'�;L-j+       ��K	K@���A�*

logging/current_cost��;�?+       ��K	@n���A�*

logging/current_cost��;��rA+       ��K	�����A�*

logging/current_costm�;��?�+       ��K	oȬ��A�*

logging/current_cost��;k[�q+       ��K	�����A�*

logging/current_cost�;0%Dp+       ��K	'���A�*

logging/current_cost��;K�J�+       ��K	U���A�*

logging/current_cost�
�;��0u+       ��K	ǃ���A�*

logging/current_cost�	�;OF�:+       ��K	�����A�*

logging/current_cost��;�˻�+       ��K	m߭��A�*

logging/current_cost��;	�X+       ��K	����A�*

logging/current_costj�;�T�+       ��K	=<���A�*

logging/current_cost��;b��+       ��K	gl���A�*

logging/current_cost��;�N�+       ��K	�����A�*

logging/current_cost��;N��+       ��K	eȮ��A�*

logging/current_cost��;�6��+       ��K	����A�*

logging/current_cost��;����+       ��K	4&���A�*

logging/current_cost5 �;!L	�+       ��K	%T���A�*

logging/current_cost���;;pj?+       ��K	킯��A�*

logging/current_cost"��;�� i+       ��K	β���A�*

logging/current_cost���;�g��+       ��K	����A�*

logging/current_cost���;7&vS+       ��K	w���A�*

logging/current_cost���;�"�+       ��K	�@���A�*

logging/current_cost���;)��+       ��K	o���A�*

logging/current_cost���;��yZ+       ��K	u����A�*

logging/current_cost���;�H T+       ��K	@ʰ��A�*

logging/current_cost���;�rе+       ��K	�����A�*

logging/current_cost��;(sJ�+       ��K	~+���A�*

logging/current_cost��;>؜+       ��K	Z���A�*

logging/current_cost��;S���+       ��K	����A�*

logging/current_costz�;�3�+       ��K	賱��A�*

logging/current_costC�;$b5+       ��K	����A�*

logging/current_costi��;��+       ��K	���A�*

logging/current_cost��;�ߋa+       ��K	a;���A�*

logging/current_cost��;��?�+       ��K	�h���A�*

logging/current_cost��;���+       ��K	����A�*

logging/current_cost��;���+       ��K	�²��A�*

logging/current_cost��;7l�+       ��K	x���A�*

logging/current_cost��;b4z�+       ��K	t���A�*

logging/current_costj�;҅��+       ��K	rK���A�*

logging/current_cost��;t��+       ��K	�y���A�*

logging/current_cost?�;��Z�+       ��K	壳��A�*

logging/current_cost&�;�PD+       ��K	�г��A�*

logging/current_cost��;�U �+       ��K	O����A�*

logging/current_costt�;Q���+       ��K	j/���A�*

logging/current_cost��;IÞa+       ��K	�^���A�*

logging/current_costj�;�!E�+       ��K	����A�*

logging/current_cost���;w�W+       ��K	�����A�*

logging/current_costE߇;��@v+       ��K	0���A�*

logging/current_cost�އ;�m��+       ��K	����A�*

logging/current_costއ;���8+       ��K	r?���A�*

logging/current_cost&܇;	�m*+       ��K	�m���A�*

logging/current_costۇ;8D?�+       ��K		����A�*

logging/current_costڇ;���/+       ��K	jȵ��A�*

logging/current_cost�ه;�/n+       ��K	;����A�*

logging/current_costv؇;4#R+       ��K	�"���A�*

logging/current_costׇ;Q=
�+       ��K	dQ���A�*

logging/current_cost�Շ;�F��+       ��K	}���A�*

logging/current_cost�Ӈ;�z�+       ��K	����A�*

logging/current_cost;҇;�<��+       ��K	7ڶ��A�*

logging/current_cost�Ї;r�+       ��K	����A�*

logging/current_cost�χ;ϙ~+       ��K	3���A�*

logging/current_costB·;���o+       ��K	�`���A�*

logging/current_cost�̇;(��B+       ��K	�����A�*

logging/current_cost̇;C�	�+       ��K	>����A�*

logging/current_cost�ʇ;v��+       ��K	����A�*

logging/current_cost�ɇ;�ui�+       ��K	����A�*

logging/current_cost ȇ;��Ԯ+       ��K	<G���A�*

logging/current_cost�Ƈ;�Դ�+       ��K	�~���A�*

logging/current_cost�Ň;�b+       ��K	�����A�*

logging/current_cost�ć;)!�+       ��K	1ݸ��A�*

logging/current_costMÇ;��[z+       ��K	�	���A�*

logging/current_cost;qp��+       ��K	�:���A�*

logging/current_cost��;`�Ώ+       ��K	i���A�*

logging/current_cost���;��1+       ��K	�����A�*

logging/current_costξ�;b9�+       ��K	ɹ��A�*

logging/current_costT��;�� U+       ��K		����A�*

logging/current_cost��;�)�J+       ��K	�)���A�*

logging/current_cost���;�۝�+       ��K	]W���A�*

logging/current_cost���;�*�+       ��K	�����A�*

logging/current_cost���;3N�+       ��K	�����A�*

logging/current_costW��;E옼+       ��K	m���A�*

logging/current_cost=��;��Ū+       ��K	����A�*

logging/current_cost:��;���+       ��K	�A���A�*

logging/current_costس�;1�p+       ��K	F����A�*

logging/current_costǲ�;���(+       ��K	Xֻ��A�*

logging/current_cost���;E�s�+       ��K	���A�*

logging/current_cost%��;����+       ��K	�6���A�*

logging/current_cost���;(Ӧz+       ��K	�b���A�*

logging/current_cost���;�wh\+       ��K	�����A�*

logging/current_cost笇;#��+       ��K	����A�*

logging/current_cost���;l	{�+       ��K	t���A�*

logging/current_cost��;=M�+       ��K	�!���A�*

logging/current_cost<��;;��+       ��K	�P���A�*

logging/current_costç�;���.+       ��K	����A�*

logging/current_cost���;
�~*+       ��K	㭽��A�*

logging/current_costE��;���D+       ��K	�ܽ��A�*

logging/current_cost>��;���+       ��K	|���A�*

logging/current_cost���;C�Ք+       ��K	K<���A�*

logging/current_costb��;T��+       ��K	<m���A�*

logging/current_costß�;?2j+       ��K	c����A�*

logging/current_cost���;�NV+       ��K	Zɾ��A�*

logging/current_costC��;]�0+       ��K	7����A�*

logging/current_cost&��;y|a�+       ��K	'���A�*

logging/current_cost-��;D�+       ��K	Y���A�*

logging/current_cost��;�}F�+       ��K	x����A�*

logging/current_cost���;���=+       ��K	�����A�*

logging/current_costQ��;����+       ��K	Y߿��A�*

logging/current_cost��;֟��+       ��K	����A�*

logging/current_costk��;#1�+       ��K	U;���A�*

logging/current_cost���;��+       ��K	Ei���A�*

logging/current_cost���;�l�+       ��K	ݕ���A�*

logging/current_costb��;+��+       ��K	�����A�*

logging/current_costɍ�;ދ�+       ��K	�����A�*

logging/current_costt��;\��#+       ��K	 ���A�*

logging/current_cost���;)1X+       ��K	�e���A�*

logging/current_cost���;ʠ+       ��K	����A�*

logging/current_costI��;��j�+       ��K	q����A�*

logging/current_costӆ�;�5b�+       ��K	����A�*

logging/current_costx��;ݦO`+       ��K	�P���A�*

logging/current_cost;���+       ��K	X����A�*

logging/current_cost���;����+       ��K	�����A�*

logging/current_cost���;�v+       ��K	�	���A�*

logging/current_cost��;�a�+       ��K	VF���A�*

logging/current_costn~�;��:+       ��K	����A�*

logging/current_costI}�;ܦ��+       ��K	�����A�*

logging/current_cost^|�;]�Z�+       ��K	l����A�*

logging/current_costXz�;.���+       ��K	b-���A�*

logging/current_costty�;�
�+       ��K	�h���A�*

logging/current_cost�w�;Iy��+       ��K	˙���A�*

logging/current_cost�v�;�sH/+       ��K	@����A�*

logging/current_costu�;K�\y+       ��K	5���A�*

logging/current_cost�s�;
� O+       ��K	2���A�*

logging/current_costr�;��wW+       ��K	b���A�*

logging/current_cost�p�;պ�T+       ��K	����A�*

logging/current_costLo�;aj3+       ��K	����A�*

logging/current_cost�n�;I���+       ��K	����A�*

logging/current_cost�l�;��+       ��K	�3���A�*

logging/current_costrk�;f��+       ��K	Fg���A�*

logging/current_cost�i�;¦��+       ��K	u����A�*

logging/current_cost�h�;�[`+       ��K	S����A�*

logging/current_costg�;�A+       ��K	`����A�*

logging/current_cost{f�;F�+       ��K	h-���A�*

logging/current_cost[d�;"3+       ��K	l[���A�*

logging/current_cost'c�; ��.+       ��K	~����A�*

logging/current_cost�a�;1��z+       ��K	����A�*

logging/current_cost\`�;�ml�+       ��K	����A�*

logging/current_costI_�;��_�+       ��K	I0���A�*

logging/current_costd^�;�Z8+       ��K	�a���A�*

logging/current_cost-\�;�_b+       ��K	�����A�*

logging/current_cost�[�;���E+       ��K	�����A�*

logging/current_cost}Y�;g{�h+       ��K	G����A�*

logging/current_costVX�;'|i�+       ��K	� ���A�*

logging/current_costW�;?փ+       ��K	 Q���A�*

logging/current_cost�U�;��
+       ��K	s}���A�*

logging/current_cost�T�;���+       ��K	�����A�*

logging/current_costhR�;8f��+       ��K	b����A�*

logging/current_cost�Q�;A��+       ��K	���A�*

logging/current_cost�O�;'zh�+       ��K	�J���A�*

logging/current_cost�N�;9G�O+       ��K	�v���A�*

logging/current_cost[M�;<�)q+       ��K	'����A�*

logging/current_costjK�;����+       ��K	~����A�*

logging/current_cost�J�;(��3+       ��K	Q���A�*

logging/current_cost>H�;2C'+       ��K	�0���A�*

logging/current_cost�G�;�|?�+       ��K	�^���A�*

logging/current_cost�E�;�ɑT+       ��K	5����A�*

logging/current_costBD�;Q�|�+       ��K	�����A�*

logging/current_cost�B�;ዤa+       ��K	!����A�*

logging/current_costhB�;�Wd�+       ��K	����A�*

logging/current_costk@�;za��+       ��K	�G���A�*

logging/current_cost3?�;�ܤ)+       ��K	�u���A�*

logging/current_costC>�;���+       ��K	�����A�*

logging/current_cost�;�;K�־+       ��K	�����A�*

logging/current_costj:�;���X+       ��K	4����A�*

logging/current_cost9�;�*ӻ+       ��K	�,���A�*

logging/current_cost'7�;��W�+       ��K	?Z���A�*

logging/current_cost�5�;Nׇ�+       ��K	�����A�*

logging/current_cost\5�;)��E+       ��K	"����A�*

logging/current_cost3�;�b�+       ��K	�����A�*

logging/current_cost�1�; �+       ��K	����A�*

logging/current_cost0�;��+       ��K	�K���A�*

logging/current_cost�.�;�q0�+       ��K	�z���A�*

logging/current_costD.�;�ա�+       ��K	�����A�*

logging/current_cost�+�;��1�+       ��K	4����A�*

logging/current_cost�*�;���A+       ��K	����A�*

logging/current_cost�(�;si��+       ��K	w<���A�*

logging/current_cost�'�;利�+       ��K	zj���A�*

logging/current_costO%�;�R�B+       ��K	�����A�*

logging/current_cost�$�;3֠+       ��K	[����A�*

logging/current_costa"�;��e�+       ��K	����A�*

logging/current_cost�!�;��+       ��K	�"���A�*

logging/current_cost-�;'�+       ��K	�S���A�*

logging/current_cost�;�}{0+       ��K	ހ���A�*

logging/current_cost��;I,[r+       ��K	����A�*

logging/current_cost��;���+       ��K	r����A�*

logging/current_cost�;�q�+       ��K		���A�*

logging/current_cost{�;sX�+       ��K	�=���A�*

logging/current_cost�;R�E�+       ��K	Il���A�*

logging/current_cost��;x�=+       ��K	=����A�*

logging/current_cost��;1c+       ��K	m����A�*

logging/current_cost��;�X:�+       ��K	_����A�*

logging/current_cost��;���+       ��K	W$���A�*

logging/current_cost<�;�>�(+       ��K	S���A�*

logging/current_costL�;8:�+       ��K	�����A�*

logging/current_cost�	�;_��+       ��K	׶���A�*

logging/current_cost��;~;<�+       ��K	f����A�*

logging/current_cost�;��U�+       ��K	����A�*

logging/current_cost!�;��5�+       ��K	#A���A�*

logging/current_cost��;&��+       ��K	Iu���A�*

logging/current_cost��;���K+       ��K	^����A�*

logging/current_cost� �;��H+       ��K	����A�*

logging/current_costN��;/Fg+       ��K	J����A�*

logging/current_cost#��;�A<+       ��K	?/���A�*

logging/current_cost���;���+       ��K	l^���A�*

logging/current_cost���;|�c9+       ��K	(����A�*

logging/current_cost���;E�.,+       ��K	�����A�*

logging/current_costY��;�O�T+       ��K	�����A�*

logging/current_cost(��;��+       ��K	����A�*

logging/current_costp�;Ģ�+       ��K	FE���A�*

logging/current_costk�;�� �+       ��K	�v���A�*

logging/current_costW��;t�>l+       ��K	�����A�*

logging/current_costW�;] �+       ��K	����A�*

logging/current_cost��;��+       ��K	�	���A�*

logging/current_cost,�;J-X+       ��K	�5���A�*

logging/current_cost=�;�zҞ+       ��K	lh���A�*

logging/current_costN�;\go�+       ��K	�����A�*

logging/current_cost��;I;u+       ��K	�����A�*

logging/current_cost��;_�N+       ��K	�����A�*

logging/current_cost7�;Y�%+       ��K	(#���A�*

logging/current_cost��;�PZ�+       ��K	�P���A�*

logging/current_cost{�;��/+       ��K	,���A�*

logging/current_cost ��;���k+       ��K	����A�*

logging/current_cost�ކ;�'K+       ��K	:����A�*

logging/current_cost)݆;��b�+       ��K	�	���A�*

logging/current_cost�ۆ;��+       ��K	�6���A�*

logging/current_cost�چ;��+       ��K	�e���A�*

logging/current_costiن;^!�+       ��K	�����A�*

logging/current_cost�׆;ѽ�+       ��K	�����A�*

logging/current_costC׆;�Hs+       ��K	�����A�*

logging/current_cost`Ն;�c��+       ��K	�#���A�*

logging/current_cost�҆;H��+       ��K	hO���A�*

logging/current_cost�ц;_�#�+       ��K	#z���A�*

logging/current_cost�φ;�|7�+       ��K		����A�*

logging/current_cost�Ά;nnEo+       ��K	�����A�*

logging/current_costI͆;���]+       ��K	����A�*

logging/current_cost�ˆ;��gA+       ��K	�.���A�*

logging/current_cost�ʆ;�QJ]+       ��K	.]���A�*

logging/current_cost�Ɇ;����+       ��K	؉���A�*

logging/current_cost�ǆ;˘��+       ��K	����A�*

logging/current_cost�Ɔ;��S�+       ��K	�����A�*

logging/current_costsņ;K�;k+       ��K	����A�*

logging/current_cost�Æ;�P+       ��K	�?���A�*

logging/current_cost���;KP�l+       ��K	�l���A�*

logging/current_cost���;���1+       ��K	c����A�*

logging/current_costr��;�|��+       ��K	8����A�*

logging/current_costN��;�WL+       ��K	����A�*

logging/current_cost?��;�gz+       ��K	�#���A�*

logging/current_costػ�;�.�.+       ��K	JP���A�*

logging/current_cost6��;��+       ��K	�~���A�*

logging/current_cost;C�e+       ��K	r����A�*

logging/current_cost���;˜��+       ��K	 ����A� *

logging/current_cost���;[�D�+       ��K	!���A� *

logging/current_costf��;\�,+       ��K	�<���A� *

logging/current_cost벆;q��`+       ��K	i���A� *

logging/current_cost��;Ti�V+       ��K	Y����A� *

logging/current_cost��;��ʔ+       ��K	i����A� *

logging/current_costU��;��%�+       ��K	����A� *

logging/current_costЬ�;��+       ��K	#���A� *

logging/current_cost-��;��F�+       ��K	iP���A� *

logging/current_cost䩆;M��+       ��K	Q���A� *

logging/current_costԨ�;��+       ��K	r����A� *

logging/current_cost���;С��+       ��K	j����A� *

logging/current_costm��;Z�85+       ��K	)	���A� *

logging/current_cost��;�GV+       ��K	8���A� *

logging/current_cost���;���+       ��K	Qf���A� *

logging/current_costN��;½��+       ��K	�����A� *

logging/current_cost|��;؝��+       ��K	�����A� *

logging/current_costˏ�;�$+       ��K	�����A� *

logging/current_cost���;\�y+       ��K	�*���A� *

logging/current_cost~��;"2��+       ��K	Y���A� *

logging/current_cost���;����+       ��K	����A� *

logging/current_cost-��;
��+       ��K	۴���A� *

logging/current_costއ�;_��+       ��K	�����A� *

logging/current_costO��;v�D+       ��K	����A� *

logging/current_cost���;?V@+       ��K	�>���A� *

logging/current_cost킆;q�k+       ��K	s���A�!*

logging/current_cost�}�;��L�+       ��K	�����A�!*

logging/current_cost{�;GZ+       ��K	P����A�!*

logging/current_cost�|�;�DD�+       ��K	���A�!*

logging/current_costDw�;�M�!+       ��K	3���A�!*

logging/current_cost�u�;2�8�+       ��K	a���A�!*

logging/current_cost�s�;�Q=@+       ��K	 ����A�!*

logging/current_cost�p�;����+       ��K	3����A�!*

logging/current_costu�;c��+       ��K	O����A�!*

logging/current_cost
p�;�2ּ+       ��K	����A�!*

logging/current_cost%p�;�v!+       ��K	�I���A�!*

logging/current_costm�;8�؞+       ��K	�{���A�!*

logging/current_cost�k�;ߘʃ+       ��K	/����A�!*

logging/current_costun�;�s��+       ��K	�����A�!*

logging/current_cost�f�;�M�+       ��K	����A�!*

logging/current_costof�;8��+       ��K	p8���A�!*

logging/current_cost�e�;*�&�+       ��K	i���A�!*

logging/current_cost�a�;M�Ф+       ��K	����A�!*

logging/current_cost:d�;�}J+       ��K	�����A�!*

logging/current_costb�;�I�&+       ��K	�����A�!*

logging/current_costea�;���+       ��K	� ���A�!*

logging/current_cost�\�;(���+       ��K	iM���A�!*

logging/current_costd[�;qV�+       ��K	u}���A�!*

logging/current_costAY�;,TT�+       ��K	�����A�!*

logging/current_cost�W�;"(�+       ��K	�����A�!*

logging/current_cost�Y�;|��+       ��K	8���A�!*

logging/current_cost�V�;[~�+       ��K	�9���A�"*

logging/current_cost�X�;�S�+       ��K	�g���A�"*

logging/current_cost7R�;]�w�+       ��K	W����A�"*

logging/current_cost(U�;\pS�+       ��K	�����A�"*

logging/current_cost�V�;�=%�+       ��K	�����A�"*

logging/current_cost�O�;�깙+       ��K	%$���A�"*

logging/current_costUN�;�4m�+       ��K	�P���A�"*

logging/current_cost�N�;�-�K+       ��K	����A�"*

logging/current_costL�;�՜V+       ��K	����A�"*

logging/current_cost�@�;2w�+       ��K	b����A�"*

logging/current_cost�9�;v��]+       ��K	����A�"*

logging/current_cost�5�;!z�r+       ��K	�8���A�"*

logging/current_cost�,�;|H�p+       ��K	�f���A�"*

logging/current_cost�$�;hɿ+       ��K	�����A�"*

logging/current_cost��;�zv+       ��K	�����A�"*

logging/current_cost��;�&D�+       ��K	�����A�"*

logging/current_cost��;JG�+       ��K	/!���A�"*

logging/current_cost��;y���+       ��K	xN���A�"*

logging/current_cost%��;���+       ��K	�z���A�"*

logging/current_cost��;N �+       ��K		����A�"*

logging/current_cost{�;	��+       ��K	�����A�"*

logging/current_costh�;�!�+       ��K	}���A�"*

logging/current_cost_߅;���+       ��K	p5���A�"*

logging/current_cost�ׅ;�x�+       ��K	�d���A�"*

logging/current_cost�Ӆ;F��+       ��K	В���A�"*

logging/current_cost�υ;��_+       ��K	�����A�#*

logging/current_cost�ƅ;C�R�+       ��K	�����A�#*

logging/current_cost���;��)�+       ��K	����A�#*

logging/current_costɶ�;;e_"+       ��K	�J���A�#*

logging/current_costఅ;����+       ��K	�v���A�#*

logging/current_cost���;ES�%+       ��K	f����A�#*

logging/current_costҠ�;��}�+       ��K	�����A�#*

logging/current_cost0��;?���+       ��K	|����A�#*

logging/current_cost뚅;)�%~+       ��K	%+���A�#*

logging/current_cost#��;��Vm+       ��K	HW���A�#*

logging/current_costh��;�座+       ��K	e����A�#*

logging/current_costd{�;�>�$+       ��K	����A�#*

logging/current_costv�;����+       ��K	!����A�#*

logging/current_cost9r�;�?@L+       ��K	V���A�#*

logging/current_cost�f�;d�t+       ��K	�B���A�#*

logging/current_cost�^�;}8Q+       ��K	Tq���A�#*

logging/current_cost\�;��+       ��K	����A�#*

logging/current_cost�T�;��+       ��K	�����A�#*

logging/current_costN�;�>ߛ+       ��K	m����A�#*

logging/current_cost�G�;���+       ��K	�(���A�#*

logging/current_cost�@�;y���+       ��K	WU���A�#*

logging/current_costv:�;_��%+       ��K	b����A�#*

logging/current_costQ5�;<\�I+       ��K	�����A�#*

logging/current_cost10�;��+       ��K	�����A�#*

logging/current_cost�*�;�f�+       ��K	����A�#*

logging/current_cost�%�;nv+       ��K	�<���A�#*

logging/current_cost"�;ҁ�+       ��K	k���A�$*

logging/current_cost6�;uP\h+       ��K	�����A�$*

logging/current_cost��;�]�V+       ��K	�����A�$*

logging/current_cost��;�ƕD+       ��K	[����A�$*

logging/current_costi
�;��dw+       ��K	�'���A�$*

logging/current_costo�;v���+       ��K	1W���A�$*

logging/current_cost���;�܀�+       ��K	����A�$*

logging/current_costb��;�un+       ��K	�����A�$*

logging/current_costb�;�2='+       ��K	o����A�$*

logging/current_cost�̄;�Q��+       ��K	,���A�$*

logging/current_cost[��;���+       ��K	�E���A�$*

logging/current_cost(��;��]+       ��K	�u���A�$*

logging/current_cost/��;��$�+       ��K	y����A�$*

logging/current_cost���;��7++       ��K	e����A�$*

logging/current_cost锄;��k�+       ��K	[����A�$*

logging/current_costr��;��o+       ��K	u.���A�$*

logging/current_cost���;��4+       ��K	�]���A�$*

logging/current_costG~�;��V�+       ��K	�����A�$*

logging/current_cost�z�;�a�+       ��K	з���A�$*

logging/current_cost�u�;|�y+       ��K	_����A�$*

logging/current_costt�;��ͨ+       ��K	2���A�$*

logging/current_cost�m�;FO�#+       ��K	�A���A�$*

logging/current_cost�h�;4 ��+       ��K	p���A�$*

logging/current_cost�d�;]�+       ��K	�����A�$*

logging/current_cost2h�;K��+       ��K	�����A�$*

logging/current_cost�c�;�:)�+       ��K	L����A�$*

logging/current_cost�`�;�d�+       ��K	�'���A�%*

logging/current_cost$[�;/˪+       ��K	�U���A�%*

logging/current_cost7\�;���+       ��K	�����A�%*

logging/current_cost[�;:��8+       ��K	B����A�%*

logging/current_cost�U�;E+       ��K	%����A�%*

logging/current_cost�U�;3צ�+       ��K	����A�%*

logging/current_cost�P�;�p�+       ��K	:���A�%*

logging/current_costbS�;6�+       ��K	
h���A�%*

logging/current_costCQ�;j ��+       ��K	Õ���A�%*

logging/current_cost�O�;u���+       ��K	o����A�%*

logging/current_cost�O�;��|�+       ��K	����A�%*

logging/current_cost`L�;����+       ��K	-���A�%*

logging/current_cost�L�;[}��+       ��K	CJ���A�%*

logging/current_cost
J�;3�+       ��K	x���A�%*

logging/current_cost�J�;H�u+       ��K	����A�%*

logging/current_cost!P�;��'j+       ��K	�����A�%*

logging/current_cost�E�;/Z0+       ��K	�����A�%*

logging/current_cost7F�;�!�+       ��K		.���A�%*

logging/current_costD�;!�.+       ��K	�[���A�%*

logging/current_costyG�;��$�+       ��K	'����A�%*

logging/current_costZG�;�$9+       ��K	&����A�%*

logging/current_costiJ�;}S�c+       ��K	{����A�%*

logging/current_costSH�;����+       ��K	���A�%*

logging/current_cost�E�;%�+       ��K	VG���A�%*

logging/current_cost�E�;����+       ��K	�s���A�%*

logging/current_cost�D�;9C� +       ��K	!����A�&*

logging/current_cost�@�;�࡯+       ��K	*����A�&*

logging/current_costK?�;�E)�+       ��K	4����A�&*

logging/current_cost�>�;j�+       ��K	)���A�&*

logging/current_cost�?�;�.6�+       ��K	�U���A�&*

logging/current_cost�@�;Ax�+       ��K	?����A�&*

logging/current_cost�?�;�+       ��K	�����A�&*

logging/current_cost�=�;��C+       ��K	c����A�&*

logging/current_cost�;�;�j��+       ��K	����A�&*

logging/current_cost%:�;@[�+       ��K	�>���A�&*

logging/current_cost�9�;��j+       ��K	:m���A�&*

logging/current_cost�:�;��$+       ��K	�����A�&*

logging/current_cost�9�;�j�+       ��K	d����A�&*

logging/current_cost�:�;����+       ��K	'����A�&*

logging/current_cost�8�;?M+       ��K	�$���A�&*

logging/current_cost�7�; �+       ��K	�R���A�&*

logging/current_cost7�;�/�+       ��K	����A�&*

logging/current_cost�8�;|wPp+       ��K	!����A�&*

logging/current_costr8�;���+       ��K	�"���A�&*

logging/current_costv7�;~zM+       ��K	�^���A�&*

logging/current_cost�9�;(6�+       ��K	����A�&*

logging/current_cost�7�;0��+       ��K	�����A�&*

logging/current_cost=8�;���+       ��K	o"���A�&*

logging/current_cost�6�;�w�+       ��K	u[���A�&*

logging/current_cost|<�;T8[d+       ��K	�����A�&*

logging/current_cost�<�;��+       ��K	n����A�&*

logging/current_cost96�;ށ��+       ��K	~���A�'*

logging/current_cost~3�;�!��+       ��K	�B���A�'*

logging/current_cost"4�;ǻ��+       ��K	F���A�'*

logging/current_cost\6�;��$+       ��K	�����A�'*

logging/current_cost]6�;�«�+       ��K	����A�'*

logging/current_cost
4�;d�Hk+       ��K	�/���A�'*

logging/current_cost�2�;����+       ��K	h���A�'*

logging/current_cost�8�;�ؾ+       ��K	ǡ���A�'*

logging/current_cost�3�;3���+       ��K	����A�'*

logging/current_cost�4�;S��+       ��K	�	 ��A�'*

logging/current_costc5�;æ+       ��K	N: ��A�'*

logging/current_cost�2�;�1$-+       ��K	Mp ��A�'*

logging/current_cost32�;k��+       ��K	t� ��A�'*

logging/current_cost�:�;ޤk�+       ��K	�� ��A�'*

logging/current_cost ;�;y+       ��K	��A�'*

logging/current_cost46�;G��+       ��K	FD��A�'*

logging/current_cost�4�;��j+       ��K	�x��A�'*

logging/current_cost0�;д#+       ��K	���A�'*

logging/current_cost�1�;u��+       ��K	!���A�'*

logging/current_cost�3�;l��+       ��K	���A�'*

logging/current_costv6�;xD�+       ��K	oG��A�'*

logging/current_cost�0�;�$��+       ��K	�}��A�'*

logging/current_cost44�;7*u+       ��K	����A�'*

logging/current_cost/�;���+       ��K	����A�'*

logging/current_costh/�;����+       ��K	V��A�'*

logging/current_cost�/�;����+       ��K	�:��A�(*

logging/current_cost�.�;@�:�+       ��K	nj��A�(*

logging/current_costO2�;�f�+       ��K	F���A�(*

logging/current_cost�/�;��D+       ��K	.���A�(*

logging/current_costo0�;���+       ��K	z���A�(*

logging/current_cost�0�;j�?�+       ��K	���A�(*

logging/current_cost1�;<4�+       ��K	�L��A�(*

logging/current_cost1/�;�ٍ+       ��K	�~��A�(*

logging/current_cost�/�;F�Z+       ��K	Ѯ��A�(*

logging/current_cost�6�;K��+       ��K	���A�(*

logging/current_cost�9�;�h�+       ��K	���A�(*

logging/current_cost�:�;����+       ��K	�6��A�(*

logging/current_costg;�;?�#L+       ��K	�e��A�(*

logging/current_cost�A�;O�>Z+       ��K	-���A�(*

logging/current_cost�8�;tc�+       ��K	����A�(*

logging/current_costL,�;���+       ��K	���A�(*

logging/current_cost�,�;Us��+       ��K	Y��A�(*

logging/current_cost�0�;Z1+       ��K	�I��A�(*

logging/current_cost�0�;Z!P�+       ��K	%w��A�(*

logging/current_cost.�;����+       ��K	����A�(*

logging/current_cost�-�;N@��+       ��K	(���A�(*

logging/current_cost,�;�͍@+       ��K	H��A�(*

logging/current_costQ0�;�@
t+       ��K	o1��A�(*

logging/current_cost�1�;VD�<+       ��K	�b��A�(*

logging/current_cost�,�;���+       ��K	����A�(*

logging/current_cost,�;u�;+       ��K	���A�(*

logging/current_cost+�;��%�+       ��K	����A�)*

logging/current_cost�,�;�V_Q+       ��K	���A�)*

logging/current_cost�-�;8\��+       ��K	M��A�)*

logging/current_cost�.�;1@:�+       ��K	���A�)*

logging/current_cost�+�;\ё�+       ��K		���A�)*

logging/current_cost&+�;��ş+       ��K	����A�)*

logging/current_cost�+�;]�'+       ��K	�	��A�)*

logging/current_cost�)�;����+       ��K	�H	��A�)*

logging/current_costk*�;[Df�+       ��K	-w	��A�)*

logging/current_cost,�;,S�j+       ��K	��	��A�)*

logging/current_cost�+�;s$j+       ��K	��	��A�)*

logging/current_cost9+�;�!8+       ��K	�
��A�)*

logging/current_cost�4�;�*��+       ��K	�H
��A�)*

logging/current_cost�*�;�t�*+       ��K	�x
��A�)*

logging/current_cost�+�;d;�+       ��K	ا
��A�)*

logging/current_costo-�;�C~+       ��K	�
��A�)*

logging/current_cost�*�;^t��+       ��K	M��A�)*

logging/current_cost�)�;�	?+       ��K	�;��A�)*

logging/current_costz)�;�v��+       ��K	j��A�)*

logging/current_cost:/�;h*�+       ��K	V���A�)*

logging/current_costv.�;*w��+       ��K	����A�)*

logging/current_cost,�;���+       ��K	-���A�)*

logging/current_cost�(�;� �+       ��K	B)��A�)*

logging/current_costM,�;?�G +       ��K	�U��A�)*

logging/current_cost�'�;����+       ��K	M���A�)*

logging/current_cost�'�;�7�+       ��K	Ա��A�)*

logging/current_cost)�;?��+       ��K	����A�**

logging/current_cost�*�;	��+       ��K	���A�**

logging/current_cost�)�;��+       ��K	I��A�**

logging/current_costr)�;�%��+       ��K	�w��A�**

logging/current_costi(�;��j�+       ��K	ݤ��A�**

logging/current_cost�'�;�?��+       ��K	v���A�**

logging/current_cost,+�;k�S+       ��K	>��A�**

logging/current_cost�'�;<+       ��K	gD��A�**

logging/current_cost!'�;[�W+       ��K	F���A�**

logging/current_cost�)�;�9��+       ��K	
���A�**

logging/current_costs*�;�F��+       ��K	���A�**

logging/current_costQ(�;�*�+       ��K	N��A�**

logging/current_cost�*�;���S+       ��K	����A�**

logging/current_costP(�;�TC+       ��K	����A�**

logging/current_cost�&�;W��W+       ��K	���A�**

logging/current_costa'�;Ī��+       ��K	 A��A�**

logging/current_costh&�;�P�H+       ��K	�p��A�**

logging/current_costZ(�;���+       ��K	����A�**

logging/current_cost�%�;�3J`+       ��K	���A�**

logging/current_cost�&�;�S�+       ��K	��A�**

logging/current_costr$�;�C�+       ��K	2M��A�**

logging/current_cost�$�;�|�+       ��K	~��A�**

logging/current_cost�$�;��+       ��K	m���A�**

logging/current_cost�$�;���~+       ��K	
���A�**

logging/current_cost*�;]y��+       ��K	#��A�**

logging/current_costz#�;o�i+       ��K	eZ��A�+*

logging/current_costC%�;���+       ��K	���A�+*

logging/current_cost�#�;!�+       ��K	���A�+*

logging/current_cost$�;��i +       ��K	����A�+*

logging/current_cost�'�;*��1+       ��K	���A�+*

logging/current_cost+(�;��)�+       ��K	+I��A�+*

logging/current_costt%�;W�G�+       ��K	h{��A�+*

logging/current_cost�#�;ʹ�+       ��K	����A�+*

logging/current_costx)�;�5oF+       ��K	����A�+*

logging/current_cost!%�;s�+       ��K	7��A�+*

logging/current_costA$�;�:M�+       ��K	&k��A�+*

logging/current_costD"�;�އz+       ��K	����A�+*

logging/current_cost;%�;���+       ��K	���A�+*

logging/current_cost!#�;���p+       ��K	p��A�+*

logging/current_cost�#�;�f�2+       ��K	x<��A�+*

logging/current_cost� �;���+       ��K	(k��A�+*

logging/current_cost�!�;H`�%+       ��K	#���A�+*

logging/current_cost�"�;���+       ��K	���A�+*

logging/current_cost� �;F�7�+       ��K	K��A�+*

logging/current_cost� �;	}�e+       ��K	*1��A�+*

logging/current_cost�"�;1V+       ��K	�]��A�+*

logging/current_cost#�;d�|j+       ��K	����A�+*

logging/current_costA�;-Ѣ�+       ��K	����A�+*

logging/current_cost� �;�<�+       ��K	w���A�+*

logging/current_cost�!�;T27F+       ��K	H��A�+*

logging/current_cost1$�;t��+       ��K	EN��A�+*

logging/current_costt�;>+       ��K	j{��A�,*

logging/current_cost �;[�	+       ��K	����A�,*

logging/current_cost� �;�e{+       ��K	����A�,*

logging/current_costQ%�;�֥+       ��K	���A�,*

logging/current_cost� �;{`+       ��K	j;��A�,*

logging/current_costE �;��<+       ��K	g��A�,*

logging/current_cost}�;��p�+       ��K	ɕ��A�,*

logging/current_cost��;k��L+       ��K	���A�,*

logging/current_cost��;=v+       ��K	����A�,*

logging/current_costA�;�ai+       ��K	!��A�,*

logging/current_cost�;��+       ��K	�N��A�,*

logging/current_costU�;X��+       ��K	W|��A�,*

logging/current_cost{ �;i�`�+       ��K	���A�,*

logging/current_cost�;y<�+       ��K	���A�,*

logging/current_cost��;=�1+       ��K	
��A�,*

logging/current_cost�"�;c���+       ��K	9��A�,*

logging/current_cost)�;*@Ɍ+       ��K	f��A�,*

logging/current_cost��;�EX�+       ��K	Д��A�,*

logging/current_costa�;p};C+       ��K	����A�,*

logging/current_cost��;�-x+       ��K	���A�,*

logging/current_cost2�;R�g+       ��K	�-��A�,*

logging/current_cost�;�U[w+       ��K	j\��A�,*

logging/current_cost'�;�ٸ+       ��K	q���A�,*

logging/current_cost�"�;~D|+       ��K	���A�,*

logging/current_costC"�;���+       ��K	����A�,*

logging/current_cost�"�;
�+       ��K	���A�-*

logging/current_cost��;%�EV+       ��K	�D��A�-*

logging/current_cost��;�Ҳ�+       ��K	�o��A�-*

logging/current_cost �;襛�+       ��K	~���A�-*

logging/current_costY�;�m��+       ��K	 ���A�-*

logging/current_cost��;��w1+       ��K	���A�-*

logging/current_cost� �;8�*+       ��K	3��A�-*

logging/current_costd�;2D�7+       ��K	0`��A�-*

logging/current_cost��;�"O�+       ��K	���A�-*

logging/current_cost��;��U+       ��K	����A�-*

logging/current_cost9�;~J[+       ��K	����A�-*

logging/current_costr�;�>�+       ��K	��A�-*

logging/current_cost��;��F�+       ��K	L��A�-*

logging/current_cost��;v��I+       ��K	z��A�-*

logging/current_cost�;�	+       ��K	
���A�-*

logging/current_cost��;�Ե�+       ��K	q���A�-*

logging/current_cost��;���Q+       ��K	��A�-*

logging/current_cost��;�}S+       ��K	|/��A�-*

logging/current_costD�;<A�K+       ��K	f^��A�-*

logging/current_cost��;i+       ��K	����A�-*

logging/current_cost��;�&�*+       ��K	Ҷ��A�-*

logging/current_cost#�;i"� +       ��K	
���A�-*

logging/current_cost4�;4v��+       ��K	/ ��A�-*

logging/current_costf�;�G/:+       ��K	�C ��A�-*

logging/current_cost��;k��;+       ��K	�s ��A�-*

logging/current_cost3�;OCK�+       ��K	�� ��A�-*

logging/current_cost�;����+       ��K	� ��A�.*

logging/current_cost��;~- �+       ��K	B� ��A�.*

logging/current_cost��;@�Q�+       ��K	�.!��A�.*

logging/current_cost[�;�+�i+       ��K	�^!��A�.*

logging/current_costJ �;Q開+       ��K	V�!��A�.*

logging/current_cost��;o1x�+       ��K	�!��A�.*

logging/current_cost��;!��+       ��K	X�!��A�.*

logging/current_cost=�;G[v+       ��K	�"��A�.*

logging/current_cost/�;=�`}+       ��K	�H"��A�.*

logging/current_cost)�;���O+       ��K	v"��A�.*

logging/current_cost��;t�+       ��K	�"��A�.*

logging/current_cost!�;+ۏ�+       ��K	��"��A�.*

logging/current_cost��;�ds +       ��K	)#��A�.*

logging/current_cost"�;	���+       ��K	I.#��A�.*

logging/current_cost��;Z��+       ��K	`#��A�.*

logging/current_costV�;��W+       ��K	y�#��A�.*

logging/current_costs�;���C+       ��K	�#��A�.*

logging/current_cost��;��i�+       ��K	P�#��A�.*

logging/current_cost��;�@��+       ��K	�$��A�.*

logging/current_cost=�;�&P+       ��K	wK$��A�.*

logging/current_cost��;�Ы	+       ��K	�y$��A�.*

logging/current_costC�;g��+       ��K	��$��A�.*

logging/current_cost��;�>[+       ��K	��$��A�.*

logging/current_cost��;)��a+       ��K	%��A�.*

logging/current_cost��;>�a�+       ��K	�2%��A�.*

logging/current_cost�;�.��+       ��K	o`%��A�.*

logging/current_cost��;��I+       ��K	y�%��A�/*

logging/current_cost��;���+       ��K	�%��A�/*

logging/current_cost��;9ď�+       ��K	��%��A�/*

logging/current_cost��;"cZ+       ��K	&��A�/*

logging/current_cost��;��:+       ��K	�L&��A�/*

logging/current_cost��;����+       ��K	qz&��A�/*

logging/current_costP�;f�+       ��K	��&��A�/*

logging/current_cost5�;�uL+       ��K	+�&��A�/*

logging/current_costi�;�Z\�+       ��K	W'��A�/*

logging/current_cost��;"Ju+       ��K	)='��A�/*

logging/current_costr�;>D��+       ��K	�j'��A�/*

logging/current_cost��;���+       ��K	)�'��A�/*

logging/current_costK�;�x �+       ��K	��'��A�/*

logging/current_cost��;���+       ��K	��'��A�/*

logging/current_cost��;S�C�+       ��K	%(��A�/*

logging/current_costm�;�	v�+       ��K	IR(��A�/*

logging/current_costa�;k'd�+       ��K	D�(��A�/*

logging/current_cost��;�{�#+       ��K	ϭ(��A�/*

logging/current_cost��;5H+j+       ��K	��(��A�/*

logging/current_costc�;�q�+       ��K	�)��A�/*

logging/current_cost�;SY��+       ��K	�5)��A�/*

logging/current_cost��;OwL�+       ��K	�b)��A�/*

logging/current_cost�	�;��+       ��K	�)��A�/*

logging/current_cost��;2uh+       ��K	��)��A�/*

logging/current_cost��;y�>�+       ��K	p�)��A�/*

logging/current_cost~
�;C�ed+       ��K	�*��A�0*

logging/current_cost%�;CD�=+       ��K	jK*��A�0*

logging/current_cost�	�;RF�+       ��K	�w*��A�0*

logging/current_cost4	�;��+       ��K	ѥ*��A�0*

logging/current_cost�	�;��Q+       ��K	��*��A�0*

logging/current_costb�;��[a+       ��K	�+��A�0*

logging/current_cost��;�4Q+       ��K	�/+��A�0*

logging/current_cost�	�;���6+       ��K	_+��A�0*

logging/current_cost��;ŭY+       ��K	��+��A�0*

logging/current_cost�
�;���+       ��K	��+��A�0*

logging/current_cost��;zn�r+       ��K	#�+��A�0*

logging/current_costm�;ϕ,}+       ��K	H,��A�0*

logging/current_cost�
�;�& +       ��K	A,��A�0*

logging/current_cost�;o|+       ��K	9o,��A�0*

logging/current_cost��;R�/S+       ��K	>�,��A�0*

logging/current_cost+�;�dg�+       ��K	��,��A�0*

logging/current_cost��;n��+       ��K	��,��A�0*

logging/current_costi�;E�+       ��K	'-��A�0*

logging/current_cost��;6_`6+       ��K	�T-��A�0*

logging/current_cost~�;�rh+       ��K	R�-��A�0*

logging/current_cost��;��q�+       ��K	�-��A�0*

logging/current_costd�;;r��+       ��K	��-��A�0*

logging/current_cost��;����+       ��K	�.��A�0*

logging/current_costY�;�!4+       ��K	!A.��A�0*

logging/current_cost��;?K+       ��K	�n.��A�0*

logging/current_cost��;h���+       ��K	#�.��A�0*

logging/current_costV�;揑+       ��K	,�.��A�1*

logging/current_cost��;�<+       ��K	��.��A�1*

logging/current_cost
�;!��_+       ��K	'/��A�1*

logging/current_cost��;Q��:+       ��K	�R/��A�1*

logging/current_cost!�;��/p+       ��K	e~/��A�1*

logging/current_cost��;���+       ��K	̮/��A�1*

logging/current_cost��;ʯ�a+       ��K	��/��A�1*

logging/current_cost��;���U+       ��K	�0��A�1*

logging/current_cost��;D-��+       ��K	;0��A�1*

logging/current_costh�;+�$�+       ��K	�j0��A�1*

logging/current_cost8�;(���+       ��K	��0��A�1*

logging/current_costl�;�+       ��K	��0��A�1*

logging/current_cost�;�"}+       ��K	��0��A�1*

logging/current_cost��;z���+       ��K	�#1��A�1*

logging/current_cost��;�J�~+       ��K	�R1��A�1*

logging/current_cost3�;� +       ��K	��1��A�1*

logging/current_cost+�;��*+       ��K	7�1��A�1*

logging/current_cost�;��+       ��K	D�1��A�1*

logging/current_costR�;g�b�+       ��K	�2��A�1*

logging/current_costT �;r�3�+       ��K	9=2��A�1*

logging/current_costL��;B3AC+       ��K	�j2��A�1*

logging/current_cost���;�=��+       ��K	'�2��A�1*

logging/current_cost���;yKR+       ��K	��2��A�1*

logging/current_cost���;�"��+       ��K	��2��A�1*

logging/current_costp��;�d�+       ��K	�&3��A�1*

logging/current_cost��;Uԝ�+       ��K	V3��A�2*

logging/current_cost���;��r+       ��K	m�3��A�2*

logging/current_cost]��;u�cn+       ��K	�3��A�2*

logging/current_cost���;��"�+       ��K	��3��A�2*

logging/current_cost���;�5aC+       ��K	4��A�2*

logging/current_cost��;�d��+       ��K	�:4��A�2*

logging/current_cost��;�/v�+       ��K	�i4��A�2*

logging/current_costl��;���q+       ��K	�4��A�2*

logging/current_cost�;�Z�+       ��K	��4��A�2*

logging/current_cost��;�%�+       ��K	��4��A�2*

logging/current_cost]�;X���+       ��K	�"5��A�2*

logging/current_cost�;1��+       ��K	]N5��A�2*

logging/current_cost��;Zg�+       ��K	�|5��A�2*

logging/current_cost6�;bA:�+       ��K	��5��A�2*

logging/current_cost��;[�g�+       ��K	��5��A�2*

logging/current_cost��;'�Ng+       ��K	�6��A�2*

logging/current_cost��;s~Zj+       ��K	�16��A�2*

logging/current_cost��;)#�+       ��K	4^6��A�2*

logging/current_cost!�;(<�+       ��K	n�6��A�2*

logging/current_cost��;. ��+       ��K	�6��A�2*

logging/current_cost��;l�T+       ��K	�6��A�2*

logging/current_cost/�;�Bo�+       ��K	:7��A�2*

logging/current_cost��;x�+       ��K	�E7��A�2*

logging/current_cost�;�7�+       ��K	�s7��A�2*

logging/current_costw�;�_�+       ��K	��7��A�2*

logging/current_cost��; \�	+       ��K	��7��A�2*

logging/current_cost��;MS2+       ��K	�7��A�3*

logging/current_cost��;�g��+       ��K	+8��A�3*

logging/current_cost�;�\�!+       ��K	�X8��A�3*

logging/current_costR�;N�~�+       ��K	��8��A�3*

logging/current_cost"�;x#�+       ��K	�8��A�3*

logging/current_cost��;O��	+       ��K	��8��A�3*

logging/current_cost��;�\ޑ+       ��K	?9��A�3*

logging/current_cost��;�6%�+       ��K	;>9��A�3*

logging/current_cost��;F�u+       ��K	�k9��A�3*

logging/current_cost��;5y'�+       ��K	��9��A�3*

logging/current_cost��;��)+       ��K	��9��A�3*

logging/current_costk�;�n|+       ��K	��9��A�3*

logging/current_cost.�;@�R+       ��K	#:��A�3*

logging/current_cost��;�{z+       ��K	�S:��A�3*

logging/current_cost]�;"�+       ��K	v�:��A�3*

logging/current_cost��;���+       ��K	��:��A�3*

logging/current_cost���;
��9+       ��K	��:��A�3*

logging/current_cost!�;:h�V+       ��K	>;��A�3*

logging/current_cost߃;�3�+       ��K	0;;��A�3*

logging/current_cost���;�=*�+       ��K	3~;��A�3*

logging/current_cost�ރ;�UA]+       ��K	N�;��A�3*

logging/current_cost\�;}%N�+       ��K	G<��A�3*

logging/current_cost��;��}+       ��K	gH<��A�3*

logging/current_cost��;K�>X+       ��K	�<��A�3*

logging/current_cost��;�n�+       ��K	�<��A�3*

logging/current_cost���;�!)+       ��K	��<��A�3*

logging/current_cost{�;J��+       ��K	A4=��A�4*

logging/current_cost�ރ;�CX+       ��K	�f=��A�4*

logging/current_cost���;6�:++       ��K	��=��A�4*

logging/current_cost�߃;�_<�+       ��K	��=��A�4*

logging/current_cost܃;�2Lk+       ��K	X>��A�4*

logging/current_cost�ك;��o�+       ��K	�9>��A�4*

logging/current_costuك;�]%�+       ��K	Nm>��A�4*

logging/current_cost�ك;���?+       ��K	8�>��A�4*

logging/current_costPك;����+       ��K	��>��A�4*

logging/current_cost�ك;J`�x+       ��K	 
?��A�4*

logging/current_cost�ۃ;�<n�+       ��K	~=?��A�4*

logging/current_cost9ރ;G,�Z+       ��K	q?��A�4*

logging/current_cost�؃;~?:�+       ��K	�?��A�4*

logging/current_cost�փ;WH��+       ��K	7�?��A�4*

logging/current_cost�׃;4XzO+       ��K	��?��A�4*

logging/current_cost�Ճ;;u+       ��K	w*@��A�4*

logging/current_cost�ԃ;[�)+       ��K	Y@��A�4*

logging/current_cost Ճ;ߩ2+       ��K	ȉ@��A�4*

logging/current_cost�փ;9��4+       ��K	c�@��A�4*

logging/current_cost�փ;���$+       ��K	0�@��A�4*

logging/current_costԃ;+s�^+       ��K	�A��A�4*

logging/current_costWԃ;;V�+       ��K	8HA��A�4*

logging/current_cost�҃;����+       ��K	XxA��A�4*

logging/current_costփ;�]��+       ��K	ҧA��A�4*

logging/current_cost Ճ;s�+       ��K	 �A��A�4*

logging/current_cost�ك;e)9�+       ��K	�B��A�5*

logging/current_costs҃;���~+       ��K	]4B��A�5*

logging/current_coste҃;1a�+       ��K	pjB��A�5*

logging/current_cost�у;ϛ��+       ��K	��B��A�5*

logging/current_costlЃ;�뵷+       ��K	��B��A�5*

logging/current_cost�Ѓ;�>ǌ+       ��K	��B��A�5*

logging/current_cost�҃;k�t�+       ��K	�$C��A�5*

logging/current_costу;����+       ��K	�TC��A�5*

logging/current_cost%Ӄ;Vm�+       ��K	��C��A�5*

logging/current_cost�փ;���+       ��K	��C��A�5*

logging/current_cost�Ѓ;R�ki+       ��K	f�C��A�5*

logging/current_cost�Ѓ;?b��+       ��K	�D��A�5*

logging/current_cost�ȃ;��t+       ��K	�9D��A�5*

logging/current_cost�ǃ;f$�+       ��K	�hD��A�5*

logging/current_cost�Ƀ;jU�:+       ��K	U�D��A�5*

logging/current_cost�Ń;��*�+       ��K	��D��A�5*

logging/current_costm��;s/3{+       ��K	��D��A�5*

logging/current_costѽ�;�Pv�+       ��K	TE��A�5*

logging/current_cost���;~��+       ��K	*HE��A�5*

logging/current_cost$��;���+       ��K	wE��A�5*

logging/current_costs��;Y:+       ��K	קE��A�5*

logging/current_cost���;O�1_+       ��K	��E��A�5*

logging/current_cost0��;IF|+       ��K	X F��A�5*

logging/current_cost���;���+       ��K	j-F��A�5*

logging/current_cost��;����+       ��K	�YF��A�5*

logging/current_costڷ�;\E��+       ��K	��F��A�5*

logging/current_cost���;}�o+       ��K	�F��A�6*

logging/current_costӵ�;��W�+       ��K	��F��A�6*

logging/current_cost���;�ZI+       ��K	�G��A�6*

logging/current_cost9��;��+       ��K	�CG��A�6*

logging/current_cost乃;e'�+       ��K	OqG��A�6*

logging/current_cost���;[�C�+       ��K	�G��A�6*

logging/current_cost߶�;���~+       ��K	?�G��A�6*

logging/current_cost���;�k{+       ��K	)H��A�6*

logging/current_cost
��;���+       ��K	w_H��A�6*

logging/current_cost���;4��+       ��K	�H��A�6*

logging/current_cost	��;Ї5+       ��K	&�H��A�6*

logging/current_costǶ�;�� �+       ��K	�I��A�6*

logging/current_cost���;;N	+       ��K	�SI��A�6*

logging/current_cost_��;+�W�+       ��K	��I��A�6*

logging/current_cost��;5��t+       ��K	�I��A�6*

logging/current_costn��;-�?�+       ��K	y"J��A�6*

logging/current_costN��;$@�Z+       ��K	�XJ��A�6*

logging/current_cost���;���+       ��K	O�J��A�6*

logging/current_cost볃;�I.+       ��K	d�J��A�6*

logging/current_cost��;����+       ��K	AK��A�6*

logging/current_cost��;�<n+       ��K	FKK��A�6*

logging/current_cost��;(�g�+       ��K	/�K��A�6*

logging/current_cost���;�(�P+       ��K	1�K��A�6*

logging/current_cost&��;�?�+       ��K	� L��A�6*

logging/current_cost|��;N�+       ��K	%8L��A�6*

logging/current_cost��;�ԑ�+       ��K	�xL��A�7*

logging/current_costW��;*y�+       ��K	�L��A�7*

logging/current_costj��;j�ߓ+       ��K	��L��A�7*

logging/current_cost��;�9�m+       ��K	�M��A�7*

logging/current_cost箃;���P+       ��K	JM��A�7*

logging/current_cost���;8l?�+       ��K	�~M��A�7*

logging/current_costꬃ;��+       ��K	W�M��A�7*

logging/current_cost���;��.+       ��K	O�M��A�7*

logging/current_cost���;�]
8+       ��K	�N��A�7*

logging/current_costl��;6�s+       ��K	E]N��A�7*

logging/current_cost_��;MqӸ+       ��K	�N��A�7*

logging/current_costw��;��YQ+       ��K	�N��A�7*

logging/current_costr��;�(�-+       ��K	GO��A�7*

logging/current_costB��;�w�;+       ��K	\O��A�7*

logging/current_cost��;Q���+       ��K	��O��A�7*

logging/current_costI��;>_��+       ��K	0�O��A�7*

logging/current_cost���;�]��+       ��K	��O��A�7*

logging/current_cost��;T�,+       ��K	�%P��A�7*

logging/current_cost���;���+       ��K	RXP��A�7*

logging/current_cost_��;G�Ω+       ��K	�P��A�7*

logging/current_costV��;ډ��+       ��K	@�P��A�7*

logging/current_cost���;�x��+       ��K	�Q��A�7*

logging/current_cost��;	�[&+       ��K	�5Q��A�7*

logging/current_cost~��;:��1+       ��K	�jQ��A�7*

logging/current_cost���;�[R+       ��K	C�Q��A�7*

logging/current_cost秃;���%+       ��K	|�Q��A�7*

logging/current_cost���;L�+       ��K	�R��A�8*

logging/current_costy��;J0�B+       ��K	7R��A�8*

logging/current_cost2��;�4��+       ��K	fR��A�8*

logging/current_cost���;+�+       ��K	<�R��A�8*

logging/current_costʥ�;jbr�+       ��K	��R��A�8*

logging/current_costj��;�hI+       ��K	�S��A�8*

logging/current_costҤ�; h�\+       ��K	�2S��A�8*

logging/current_cost���;$BU+       ��K	�eS��A�8*

logging/current_cost9��;H��+       ��K	�S��A�8*

logging/current_cost���;h"��+       ��K	��S��A�8*

logging/current_cost���;�,E�+       ��K	T��A�8*

logging/current_costM��;�>�^+       ��K	�?T��A�8*

logging/current_cost��;���>+       ��K	"rT��A�8*

logging/current_cost9��;c��@+       ��K	�T��A�8*

logging/current_costw��;�;M+       ��K	�	U��A�8*

logging/current_cost���;܊��+       ��K	P=U��A�8*

logging/current_cost��;PG��+       ��K	vU��A�8*

logging/current_cost��;�Ia�+       ��K	#�U��A�8*

logging/current_costN��;M~�z+       ��K	��U��A�8*

logging/current_cost��;o���+       ��K	(V��A�8*

logging/current_costZ��;�4��+       ��K	�RV��A�8*

logging/current_cost ��;�״+       ��K	2�V��A�8*

logging/current_cost���;����+       ��K	��V��A�8*

logging/current_cost���;'��+       ��K	�W��A�8*

logging/current_cost���;	\�+       ��K	�@W��A�8*

logging/current_costf��;H��+       ��K	qW��A�8*

logging/current_cost���;��z+       ��K	��W��A�9*

logging/current_cost���;x��+       ��K	��W��A�9*

logging/current_cost���;����+       ��K	�X��A�9*

logging/current_cost���;wsB+       ��K	&IX��A�9*

logging/current_cost���;��+       ��K	0|X��A�9*

logging/current_cost<��;;��h+       ��K	��X��A�9*

logging/current_cost읃;�s�+       ��K	Z�X��A�9*

logging/current_costJ��;�y�X+       ��K	�1Y��A�9*

logging/current_cost��;��=+       ��K	�cY��A�9*

logging/current_cost��;_6��+       ��K	!�Y��A�9*

logging/current_cost���;�z'+       ��K	�Y��A�9*

logging/current_cost]��;�$<+       ��K	�
Z��A�9*

logging/current_cost��; �~�+       ��K	9Z��A�9*

logging/current_cost���;߰e+       ��K	�hZ��A�9*

logging/current_cost���;����+       ��K	}�Z��A�9*

logging/current_cost���;��H�+       ��K	��Z��A�9*

logging/current_cost���;�d�+       ��K	��Z��A�9*

logging/current_cost㚃;��=�+       ��K	[/[��A�9*

logging/current_costy��;us]B+       ��K	b[��A�9*

logging/current_costb��;�>`+       ��K	��[��A�9*

logging/current_cost���;`"rK+       ��K	��[��A�9*

logging/current_cost覃;�!+       ��K	�\��A�9*

logging/current_cost���;�M�>+       ��K	V8\��A�9*

logging/current_cost���;}g��+       ��K	=i\��A�9*

logging/current_cost��;��+       ��K	К\��A�9*

logging/current_cost���;�9�+       ��K	��\��A�:*

logging/current_cost���;Hx�+       ��K	|]��A�:*

logging/current_cost���;.�+       ��K	B]��A�:*

logging/current_costY��;��+       ��K	�{]��A�:*

logging/current_cost(��;�ր�+       ��K	��]��A�:*

logging/current_cost���;���;+       ��K	��]��A�:*

logging/current_costU��;�'*�+       ��K	e^��A�:*

logging/current_cost���;ϛ+       ��K	UJ^��A�:*

logging/current_cost���;���+       ��K	�{^��A�:*

logging/current_cost���;�3�G+       ��K	^�^��A�:*

logging/current_cost���;8�H�+       ��K	-�^��A�:*

logging/current_costh��;�js�+       ��K	g_��A�:*

logging/current_cost���;�z'�+       ��K	3=_��A�:*

logging/current_cost1��;�z.+       ��K	�l_��A�:*

logging/current_costv��;��Fo+       ��K	�_��A�:*

logging/current_cost앃;�v��+       ��K	��_��A�:*

logging/current_cost���;b�:�+       ��K	o�_��A�:*

logging/current_costx��;��m{+       ��K	�$`��A�:*

logging/current_cost��;�ru+       ��K	{U`��A�:*

logging/current_costL��;Qxv�+       ��K	Q�`��A�:*

logging/current_costŖ�;��T+       ��K	�`��A�:*

logging/current_cost`��;.?Y:+       ��K	@�`��A�:*

logging/current_cost��;;��`+       ��K	�a��A�:*

logging/current_cost���;�3 �+       ��K	�7a��A�:*

logging/current_costܓ�;���+       ��K	�da��A�:*

logging/current_cost��;�8��+       ��K	�a��A�:*

logging/current_costf��;QE~+       ��K	��a��A�;*

logging/current_cost=��;�D�C+       ��K	��a��A�;*

logging/current_costJ��;��|M+       ��K	>b��A�;*

logging/current_cost��;��"+       ��K	`Jb��A�;*

logging/current_costV��;�ו�+       ��K	�|b��A�;*

logging/current_costⓃ;�;�+       ��K	��b��A�;*

logging/current_cost���;`OE+       ��K	��b��A�;*

logging/current_costt��;8�L�+       ��K		c��A�;*

logging/current_cost5��;'Y�V+       ��K	C7c��A�;*

logging/current_cost[��;�V��+       ��K	gc��A�;*

logging/current_cost���;d��+       ��K	��c��A�;*

logging/current_cost`��;v/��+       ��K	��c��A�;*

logging/current_costǓ�;�d�*+       ��K	��c��A�;*

logging/current_cost���;7��!+       ��K	ad��A�;*

logging/current_costu��;����+       ��K	rMd��A�;*

logging/current_cost:��;���+       ��K		�d��A�;*

logging/current_cost#��;�B��+       ��K	��d��A�;*

logging/current_cost���;_�,�+       ��K	e�d��A�;*

logging/current_cost]��;tx�2+       ��K	�e��A�;*

logging/current_costǓ�;���+       ��K	�;e��A�;*

logging/current_cost!��;�2+       ��K	_le��A�;*

logging/current_cost�;�x�+       ��K	��e��A�;*

logging/current_cost��;>��l+       ��K	��e��A�;*

logging/current_cost0��;�[l[+       ��K	�e��A�;*

logging/current_costՏ�;p,O�+       ��K	�+f��A�;*

logging/current_cost?��;W���+       ��K	2Zf��A�<*

logging/current_cost!��;���+       ��K	�f��A�<*

logging/current_cost ��;S��+       ��K	�f��A�<*

logging/current_cost捃;��f+       ��K	��f��A�<*

logging/current_cost���;O��+       ��K	Eg��A�<*

logging/current_costT��;���+       ��K	sKg��A�<*

logging/current_cost���;Q�i�+       ��K	�zg��A�<*

logging/current_cost1��;�ƣ+       ��K	ԩg��A�<*

logging/current_cost���;���+       ��K	)�g��A�<*

logging/current_cost菃;HM-W+       ��K	I	h��A�<*

logging/current_costύ�;���L+       ��K	:h��A�<*

logging/current_costr��;���N+       ��K	�fh��A�<*

logging/current_costێ�;^Vw�+       ��K	U�h��A�<*

logging/current_costώ�;�A�+       ��K	��h��A�<*

logging/current_costᎃ;��2%+       ��K	��h��A�<*

logging/current_cost~��;�O8�+       ��K	j#i��A�<*

logging/current_cost���;u>0+       ��K	�Pi��A�<*

logging/current_cost쑃;uW�L+       ��K	�}i��A�<*

logging/current_costڑ�;p��@+       ��K	�i��A�<*

logging/current_costZ��;�C&+       ��K	�i��A�<*

logging/current_cost��;�U��+       ��K	Lj��A�<*

logging/current_cost/��;ݚ��+       ��K	4j��A�<*

logging/current_cost��;єvm+       ��K	�^j��A�<*

logging/current_costz��;��>+       ��K	��j��A�<*

logging/current_cost4��;��fG+       ��K	f�j��A�<*

logging/current_costƊ�;Au�!+       ��K	��j��A�<*

logging/current_cost��;�q�>+       ��K	�k��A�=*

logging/current_costˌ�;H�q&+       ��K	G@k��A�=*

logging/current_cost���;�/+       ��K	hmk��A�=*

logging/current_cost��;/!�*+       ��K	!�k��A�=*

logging/current_costŉ�;q�+       ��K	R�k��A�=*

logging/current_cost݊�;g4�,+       ��K	��k��A�=*

logging/current_costɎ�;C7�o+       ��K	##l��A�=*

logging/current_costd��;˜��+       ��K	�Pl��A�=*

logging/current_cost��;���+       ��K	�l��A�=*

logging/current_cost"��;d]�+       ��K	H�l��A�=*

logging/current_cost���;1nQ+       ��K	��l��A�=*

logging/current_cost��;��ː+       ��K	qm��A�=*

logging/current_cost���;Tڞ+       ��K	�3m��A�=*

logging/current_costQ��;zz|+       ��K	-bm��A�=*

logging/current_cost��;j�|+       ��K	ďm��A�=*

logging/current_cost��;�3�m+       ��K	��m��A�=*

logging/current_cost���;Y:��+       ��K	i�m��A�=*

logging/current_costl��;���C+       ��K	�n��A�=*

logging/current_cost���;�4$|+       ��K	�Bn��A�=*

logging/current_costg��;���+       ��K	'yn��A�=*

logging/current_cost���;�/�@+       ��K	:�n��A�=*

logging/current_costn��;�5�+       ��K	8�n��A�=*

logging/current_cost"��;F4�+       ��K	�o��A�=*

logging/current_cost��;W�+       ��K	�3o��A�=*

logging/current_costU��;��+       ��K	do��A�=*

logging/current_costf��;9�+       ��K	��o��A�=*

logging/current_costߊ�;��T+       ��K	,�o��A�>*

logging/current_costW��;�(;+       ��K	#�o��A�>*

logging/current_costх�;َ��+       ��K	y p��A�>*

logging/current_cost���;�y�+       ��K	TPp��A�>*

logging/current_cost ��;��T+       ��K	p��A�>*

logging/current_costQ��;ו�\+       ��K	۪p��A�>*

logging/current_cost5��;��a+       ��K	��p��A�>*

logging/current_cost���;'8+       ��K	y
q��A�>*

logging/current_costJ��;?r�'+       ��K	�9q��A�>*

logging/current_cost5��;']1�+       ��K	�gq��A�>*

logging/current_cost[��;�%�+       ��K	��q��A�>*

logging/current_cost���;H��+       ��K	q�q��A�>*

logging/current_cost���;��+       ��K	��q��A�>*

logging/current_cost���;Y�Z+       ��K	�!r��A�>*

logging/current_costg��;�;�+       ��K	�Pr��A�>*

logging/current_cost}��;yqˇ+       ��K	u�r��A�>*

logging/current_cost���;Q�(#+       ��K	�r��A�>*

logging/current_cost肃;�+       ��K	e�r��A�>*

logging/current_cost$��;�-�9+       ��K	hs��A�>*

logging/current_cost���;���H+       ��K	<s��A�>*

logging/current_cost���;<r�+       ��K	qjs��A�>*

logging/current_cost���;}F�F+       ��K	��s��A�>*

logging/current_cost
��;��6+       ��K	��s��A�>*

logging/current_cost&��;�ٺ+       ��K	u�s��A�>*

logging/current_cost}��;'ݙ�+       ��K	�$t��A�>*

logging/current_cost{��;��e+       ��K	RRt��A�?*

logging/current_costʁ�;g��+       ��K	�t��A�?*

logging/current_cost���;.W�+       ��K	;�t��A�?*

logging/current_cost��;�_ �+       ��K	��t��A�?*

logging/current_cost!��;D��+       ��K	u��A�?*

logging/current_cost�;���Y+       ��K	�=u��A�?*

logging/current_cost5��;��>�+       ��K	�mu��A�?*

logging/current_cost��;�l#�+       ��K	��u��A�?*

logging/current_cost���;�k�+       ��K	��u��A�?*

logging/current_cost���;�(Z+       ��K		�u��A�?*

logging/current_cost��;����+       ��K	�'v��A�?*

logging/current_cost���;2+       ��K	yUv��A�?*

logging/current_cost���;�±E+       ��K	.�v��A�?*

logging/current_cost ;E�+       ��K	o�v��A�?*

logging/current_costM��;�h7x+       ��K	3�v��A�?*

logging/current_costm��;���+       ��K	kw��A�?*

logging/current_costH��;��m+       ��K	~9w��A�?*

logging/current_cost�~�;h��+       ��K	{ew��A�?*

logging/current_cost���;+6-�+       ��K	{�w��A�?*

logging/current_cost��;� ��+       ��K	#�w��A�?*

logging/current_cost�~�;�`�+       ��K	�w��A�?*

logging/current_cost���;Z��S+       ��K	"x��A�?*

logging/current_cost8~�;m��d+       ��K	Gx��A�?*

logging/current_cost��;F{rD+       ��K	�vx��A�?*

logging/current_coste~�;W�=+       ��K	��x��A�?*

logging/current_costÁ�;� �+       ��K	��x��A�?*

logging/current_cost
��;���+       ��K	�y��A�@*

logging/current_cost=|�;I�+       ��K	�/y��A�@*

logging/current_costM��;T��t+       ��K	s\y��A�@*

logging/current_costB��;�6�+       ��K	H�y��A�@*

logging/current_cost`~�;��"�+       ��K	�y��A�@*

logging/current_cost�|�;��^+       ��K	��y��A�@*

logging/current_cost�|�;�B8+       ��K	�z��A�@*

logging/current_costm�;�}��+       ��K	tEz��A�@*

logging/current_costP��;��.�+       ��K	
sz��A�@*

logging/current_cost	��;v�+       ��K	w�z��A�@*

logging/current_cost)��;�^  +       ��K	o�z��A�@*

logging/current_costv��;t0�+       ��K	��z��A�@*

logging/current_costj��;B�f-+       ��K	�'{��A�@*

logging/current_cost���;��+       ��K	pS{��A�@*

logging/current_cost�~�;��#T+       ��K	��{��A�@*

logging/current_cost�}�;�Ƌ+       ��K	s�{��A�@*

logging/current_cost�y�;���D+       ��K	_|��A�@*

logging/current_costj|�;K�+       ��K	K|��A�@*

logging/current_cost�z�;Љ7�+       ��K	��|��A�@*

logging/current_costn}�;|��+       ��K	y}��A�@*

logging/current_cost$z�;���+       ��K	`8}��A�@*

logging/current_costA�;�U"^+       ��K	�q}��A�@*

logging/current_cost�y�;��*`+       ��K	n�}��A�@*

logging/current_cost}�;D�c�+       ��K	��}��A�@*

logging/current_cost�y�;��3�+       ��K	/~��A�@*

logging/current_cost�y�;�E�!+       ��K	�V~��A�A*

logging/current_cost
z�;~��+       ��K	�~��A�A*

logging/current_costhy�;��ڵ+       ��K	h�~��A�A*

logging/current_costry�;)c�+       ��K	B�~��A�A*

logging/current_costLz�;����+       ��K	,��A�A*

logging/current_cost�{�;��R+       ��K	,M��A�A*

logging/current_costy�;���+       ��K	T~��A�A*

logging/current_cost�y�;�X��+       ��K	����A�A*

logging/current_cost�x�;˶yl+       ��K	q���A�A*

logging/current_costy�;�eK+       ��K	:���A�A*

logging/current_cost%v�;W��+       ��K	�9���A�A*

logging/current_cost�w�;�&��+       ��K	�h���A�A*

logging/current_cost4x�;	*+       ��K	7����A�A*

logging/current_cost�u�;B��a+       ��K	gɀ��A�A*

logging/current_cost�{�;�~�0+       ��K	�����A�A*

logging/current_cost{�;#�ή+       ��K	g+���A�A*

logging/current_cost�v�;hs�`+       ��K	�s���A�A*

logging/current_costDy�;�Æ+       ��K	@����A�A*

logging/current_cost�w�;"�+       ��K	�����A�A*

logging/current_cost:{�;=�R�+       ��K	�:���A�A*

logging/current_costay�; �+       ��K	�����A�A*

logging/current_costw�;J���+       ��K	GƂ��A�A*

logging/current_cost�u�;!Ck+       ��K	A����A�A*

logging/current_costcw�;�
�+       ��K	k>���A�A*

logging/current_cost<w�;�C��+       ��K	�{���A�A*

logging/current_cost't�;�x<+       ��K	�����A�A*

logging/current_costuw�;��j�+       ��K	P���A�B*

logging/current_costht�;)�Yj+       ��K	�'���A�B*

logging/current_cost&v�;�,��+       ��K	O\���A�B*

logging/current_cost"t�;RFQ+       ��K	n����A�B*

logging/current_cost\v�;�/5a+       ��K	Ä��A�B*

logging/current_costEr�;j
�=+       ��K	����A�B*

logging/current_cost�t�;4�7b+       ��K	;'���A�B*

logging/current_cost	t�;�O|+       ��K	
[���A�B*

logging/current_cost�t�;�s++       ��K	B����A�B*

logging/current_cost�s�;��Cj+       ��K	��A�B*

logging/current_cost�s�;y"+       ��K	j���A�B*

logging/current_cost%s�;��X�+       ��K	�!���A�B*

logging/current_cost9s�;���k+       ��K	}N���A�B*

logging/current_cost�s�;S1�+       ��K	}���A�B*

logging/current_cost�s�;ܒ _+       ��K	F����A�B*

logging/current_cost�x�;l��+       ��K	�چ��A�B*

logging/current_cost{w�;+7E#+       ��K	
���A�B*

logging/current_cost�u�;�3bA+       ��K	<7���A�B*

logging/current_cost�x�;��)�+       ��K	�e���A�B*

logging/current_cost�q�;>�	~+       ��K	]����A�B*

logging/current_cost)w�;����+       ��K	���A�B*

logging/current_cost�p�;�96R+       ��K	����A�B*

logging/current_costv�;>�Zb+       ��K	�3���A�B*

logging/current_costtu�;9'��+       ��K	)b���A�B*

logging/current_cost�s�;w���+       ��K	�����A�B*

logging/current_cost�r�;ZA�R+       ��K	�ƈ��A�B*

logging/current_costus�;<Z�%+       ��K	j����A�C*

logging/current_cost�q�;.u8�+       ��K	q(���A�C*

logging/current_cost�p�;��+       ��K	�T���A�C*

logging/current_cost�p�;>ĎP+       ��K	r���A�C*

logging/current_cost~r�;�C��+       ��K	�����A�C*

logging/current_cost�s�;�O��+       ��K	5����A�C*

logging/current_cost>s�;��$t+       ��K	����A�C*

logging/current_cost�v�;/.&�+       ��K	�Q���A�C*

logging/current_costs�;�m�+       ��K	{���A�C*

logging/current_costUr�;��՗+       ��K	�����A�C*

logging/current_cost�m�;|-�?+       ��K	�݊��A�C*

logging/current_cost�s�;�Q��+       ��K	����A�C*

logging/current_cost�q�;����+       ��K	�:���A�C*

logging/current_cost�o�;���+       ��K	rg���A�C*

logging/current_cost�o�;u�V�+       ��K	����A�C*

logging/current_cost�n�;'߃�+       ��K	dɋ��A�C*

logging/current_cost6w�;�61"+       ��K	f����A�C*

logging/current_costKq�;�>ae+       ��K	T&���A�C*

logging/current_cost�p�;�+       ��K	#W���A�C*

logging/current_cost�p�;��+       ��K	�����A�C*

logging/current_cost"l�;�O+       ��K	�����A�C*

logging/current_costJl�;�,��+       ��K	]����A�C*

logging/current_costAo�;8��+       ��K	����A�C*

logging/current_cost�p�;no+       ��K	rC���A�C*

logging/current_cost�o�;�}+       ��K	cp���A�C*

logging/current_cost�m�; S@�+       ��K	�����A�D*

logging/current_costKp�;N g&+       ��K	R̍��A�D*

logging/current_cost�m�;��-+       ��K	�����A�D*

logging/current_cost�l�;��A�+       ��K	�)���A�D*

logging/current_costbp�;�f�+       ��K	Qd���A�D*

logging/current_cost�n�;�A�*+       ��K	�����A�D*

logging/current_cost�q�;�}\+       ��K	P����A�D*

logging/current_cost q�;C�-+       ��K	����A�D*

logging/current_cost&n�;ľT�+       ��K	0 ���A�D*

logging/current_cost!k�;â�+       ��K	�Q���A�D*

logging/current_cost�k�;�HM�+       ��K	怏��A�D*

logging/current_cost(m�;HP��+       ��K	n����A�D*

logging/current_costoj�;�7 |+       ��K	%ۏ��A�D*

logging/current_costhn�;:�� +       ��K	H���A�D*

logging/current_cost�l�;��_+       ��K	�:���A�D*

logging/current_costxl�;}�~�+       ��K	i���A�D*

logging/current_cost�m�;2R�+       ��K	����A�D*

logging/current_cost3m�;�*�+       ��K	�Ő��A�D*

logging/current_costl�;X�I+       ��K	N����A�D*

logging/current_cost4l�;0�a+       ��K	�#���A�D*

logging/current_cost�l�;`���+       ��K	XQ���A�D*

logging/current_cost�k�;���+       ��K	‑��A�D*

logging/current_cost�q�;���&+       ��K	%����A�D*

logging/current_costt�;x�g�+       ��K	ؑ��A�D*

logging/current_costLk�;3Z�+       ��K	9���A�D*

logging/current_costAo�;u��+       ��K	�2���A�D*

logging/current_cost�j�;ft��+       ��K	|_���A�E*

logging/current_cost�g�;Dg��+       ��K	ǎ���A�E*

logging/current_cost]l�;��+       ��K	�����A�E*

logging/current_cost�h�;8}�H+       ��K	B���A�E*

logging/current_costol�;%+       ��K	U���A�E*

logging/current_costi�;�+Un+       ��K	�B���A�E*

logging/current_cost4l�;/e+       ��K	s���A�E*

logging/current_costMf�;��N+       ��K	�����A�E*

logging/current_cost�m�;�Y��+       ��K	dΓ��A�E*

logging/current_cost�j�;4�+       ��K	J ���A�E*

logging/current_cost�k�;D26�+       ��K	g/���A�E*

logging/current_cost�j�;�;O+       ��K	/]���A�E*

logging/current_costh�;�m 
+       ��K	'����A�E*

logging/current_cost5h�;I�3�+       ��K	M����A�E*

logging/current_cost�g�;r��+       ��K	����A�E*

logging/current_cost�g�;t�( +       ��K	y���A�E*

logging/current_cost�h�;��:�+       ��K	�A���A�E*

logging/current_cost�g�;g��+       ��K	�p���A�E*

logging/current_costCk�;�|�G+       ��K	Q����A�E*

logging/current_cost�g�;�l�+       ��K	3͕��A�E*

logging/current_cost�d�;Eh��+       ��K	O����A�E*

logging/current_costBg�;���+       ��K	N&���A�E*

logging/current_cost�f�; ە�+       ��K	uS���A�E*

logging/current_cost�c�;��s+       ��K	�����A�E*

logging/current_cost�g�;�ˣ�+       ��K	�����A�E*

logging/current_cost�f�;1.Ԃ+       ��K	�ܖ��A�F*

logging/current_cost�b�;9� +       ��K	�	���A�F*

logging/current_costZe�;�F=�+       ��K	�;���A�F*

logging/current_costml�;�6�j+       ��K	�p���A�F*

logging/current_cost1m�;���{+       ��K	�����A�F*

logging/current_cost�d�;�s	+       ��K	7͗��A�F*

logging/current_cost3g�;8G=	+       ��K	�����A�F*

logging/current_cost@d�;�t�+       ��K	�-���A�F*

logging/current_costqa�;�sH�+       ��K	QZ���A�F*

logging/current_cost�h�;�I+       ��K	+����A�F*

logging/current_costf�;~^�+       ��K	̷���A�F*

logging/current_costa�;J^�O+       ��K	����A�F*

logging/current_cost�b�;�8t+       ��K	����A�F*

logging/current_cost4c�;O�Y+       ��K	�D���A�F*

logging/current_cost#d�;�Y�+       ��K	�u���A�F*

logging/current_cost0e�;z�~�+       ��K	����A�F*

logging/current_cost{d�;k���+       ��K	֙��A�F*

logging/current_cost�e�;4C0�+       ��K	����A�F*

logging/current_costLc�;!�r�+       ��K	4���A�F*

logging/current_cost�a�;��+       ��K	&e���A�F*

logging/current_cost�a�; �+       ��K	B����A�F*

logging/current_cost�a�;\�H�+       ��K	�Ú��A�F*

logging/current_cost�`�;"��+       ��K	�����A�F*

logging/current_cost�`�;,��P+       ��K	�)���A�F*

logging/current_cost�_�;�B+       ��K	LX���A�F*

logging/current_cost�_�;�[+       ��K	̅���A�F*

logging/current_cost(_�;+�ݣ+       ��K	w����A�G*

logging/current_cost
`�;�3#�+       ��K	:���A�G*

logging/current_cost�_�;��!�+       ��K	r���A�G*

logging/current_cost�^�;�/�P+       ��K	?���A�G*

logging/current_costla�;�(32+       ��K	Ul���A�G*

logging/current_cost�`�;�Ӑ+       ��K	
����A�G*

logging/current_cost!_�;7�~w+       ��K	Tɜ��A�G*

logging/current_cost�_�;O��+       ��K	f����A�G*

logging/current_cost�^�;�Ϸ+       ��K	(���A�G*

logging/current_cost�f�;9���+       ��K	]W���A�G*

logging/current_cost3_�;0��+       ��K	L����A�G*

logging/current_costc�;1�W�+       ��K	�����A�G*

logging/current_cost^�;���t+       ��K	aޝ��A�G*

logging/current_cost�a�;����+       ��K	����A�G*

logging/current_cost�]�;�H8�+       ��K	{9���A�G*

logging/current_cost~`�;|���+       ��K	gh���A�G*

logging/current_cost�^�;��Ԙ+       ��K	�����A�G*

logging/current_cost�_�;� a+       ��K	���A�G*

logging/current_cost]�;ܹ�@+       ��K	,���A�G*

logging/current_cost�_�;���x+       ��K	?���A�G*

logging/current_cost�\�;A�F+       ��K	�K���A�G*

logging/current_costA_�;��]�+       ��K	�z���A�G*

logging/current_cost�\�;5M��+       ��K	2����A�G*

logging/current_cost _�;�,+       ��K	�֟��A�G*

logging/current_cost,\�;A�+       ��K	����A�G*

logging/current_cost�^�;���+       ��K	�2���A�G*

logging/current_cost�[�;~WXX+       ��K	�b���A�H*

logging/current_cost>^�;��+       ��K	�����A�H*

logging/current_cost�[�;���U+       ��K	����A�H*

logging/current_cost�]�;�e+       ��K	�����A�H*

logging/current_cost�_�;���+       ��K	J���A�H*

logging/current_cost�[�;���x+       ��K		G���A�H*

logging/current_cost�]�;F!�+       ��K	�t���A�H*

logging/current_cost5`�;6r�+       ��K	ƣ���A�H*

logging/current_cost�^�;'�!+       ��K	�С��A�H*

logging/current_cost�[�;��+       ��K	�����A�H*

logging/current_cost|Y�;�v��+       ��K	�.���A�H*

logging/current_cost�[�;mS;+       ��K	B\���A�H*

logging/current_cost�Y�;��OQ+       ��K	���A�H*

logging/current_cost�`�;�,�X+       ��K	�����A�H*

logging/current_cost%_�;_nT�+       ��K	 ���A�H*

logging/current_cost[�;^R��+       ��K	����A�H*

logging/current_costY[�;�$�a+       ��K	�D���A�H*

logging/current_costCY�;�a�+       ��K	0s���A�H*

logging/current_costZ[�;'���+       ��K	�����A�H*

logging/current_cost�^�;�6�+       ��K	�ϣ��A�H*

logging/current_costV�;���+       ��K	�����A�H*

logging/current_cost�X�;���+       ��K	+���A�H*

logging/current_costZ�;�?�+       ��K	�_���A�H*

logging/current_cost�Y�;wL��+       ��K	k����A�H*

logging/current_cost8W�;Cq5.+       ��K	�����A�H*

logging/current_cost�W�;k9t+       ��K	����A�I*

logging/current_cost�V�;�j��+       ��K	����A�I*

logging/current_costwW�;���+       ��K	�J���A�I*

logging/current_cost^�;�\R�+       ��K	'{���A�I*

logging/current_cost�U�;���`+       ��K	�����A�I*

logging/current_cost]Y�;^��P+       ��K	G٥��A�I*

logging/current_cost�W�;���+       ��K	A���A�I*

logging/current_cost�U�;�$�+       ��K	\9���A�I*

logging/current_costNU�;�P�5+       ��K	Vg���A�I*

logging/current_cost+Y�;K��[+       ��K	ꛦ��A�I*

logging/current_cost�W�;k+�+       ��K	ͦ��A�I*

logging/current_cost�U�;3DTZ+       ��K	A����A�I*

logging/current_cost�T�;�|'�+       ��K	0���A�I*

logging/current_costW�;uZ��+       ��K	b`���A�I*

logging/current_cost�X�;}h!+       ��K	Z����A�I*

logging/current_cost�S�;�JP/+       ��K	v����A�I*

logging/current_cost�V�;j���+       ��K	����A�I*

logging/current_cost&X�;��+       ��K	W���A�I*

logging/current_cost4S�;���*+       ��K	<K���A�I*

logging/current_cost�V�;��I�+       ��K	7z���A�I*

logging/current_cost3S�;�7�>+       ��K	�����A�I*

logging/current_cost�R�;�� �+       ��K	�ר��A�I*

logging/current_costtQ�;;pC�+       ��K	����A�I*

logging/current_costU�;��wC+       ��K	�6���A�I*

logging/current_cost^R�;�r�j+       ��K	�e���A�I*

logging/current_cost5R�;P��+       ��K	�����A�I*

logging/current_cost9P�;fE��+       ��K	cΩ��A�J*

logging/current_cost�R�;�e
�+       ��K	)���A�J*

logging/current_cost�R�;�}��+       ��K	"5���A�J*

logging/current_cost�T�; j�+       ��K	�l���A�J*

logging/current_cost+U�;J��+       ��K	�����A�J*

logging/current_costrT�;�|�p+       ��K	.ɪ��A�J*

logging/current_costhT�;�|K@+       ��K	�����A�J*

logging/current_cost!S�;a�h�+       ��K	V%���A�J*

logging/current_cost%P�;uG�+       ��K	�R���A�J*

logging/current_cost,P�;Z�uw+       ��K	G����A�J*

logging/current_cost�Q�;��g4+       ��K	s����A�J*

logging/current_costrT�;Nr-+       ��K	s۫��A�J*

logging/current_cost�W�;#ũ.+       ��K	�	���A�J*

logging/current_cost�N�;��:U+       ��K	45���A�J*

logging/current_cost Q�;� j+       ��K	mb���A�J*

logging/current_cost�S�;�V��+       ��K	e����A�J*

logging/current_cost�T�;��ք+       ��K	�����A�J*

logging/current_cost�R�;��++       ��K	����A�J*

logging/current_cost
W�;P\a�+       ��K	R���A�J*

logging/current_costCP�;C�+       ��K	�G���A�J*

logging/current_cost�U�;�"�m+       ��K	Bu���A�J*

logging/current_cost;T�;9bq+       ��K	����A�J*

logging/current_cost�N�;��x�+       ��K	�խ��A�J*

logging/current_cost:P�;v�dy+       ��K	'���A�J*

logging/current_costKS�;�'Yl+       ��K	s3���A�J*

logging/current_cost|S�;�E'+       ��K	�a���A�K*

logging/current_cost=P�;֮R�+       ��K	>����A�K*

logging/current_cost�M�;Z�;F+       ��K	f����A�K*

logging/current_costhN�;��T+       ��K	.����A�K*

logging/current_cost�L�;AN��+       ��K	F���A�K*

logging/current_costO�;�w\+       ��K	�H���A�K*

logging/current_cost�L�;`�W8+       ��K	 v���A�K*

logging/current_cost?K�;���+       ��K	ʤ���A�K*

logging/current_costyO�;�=�+       ��K	mϯ��A�K*

logging/current_costIK�;K�*�+       ��K	G����A�K*

logging/current_cost�O�;�-�E+       ��K	,���A�K*

logging/current_cost	M�;d�a�+       ��K	fY���A�K*

logging/current_cost�O�;$.0�+       ��K	����A�K*

logging/current_costN�;����+       ��K	 ����A�K*

logging/current_cost�N�;+#F0+       ��K	����A�K*

logging/current_cost�S�;���+       ��K	���A�K*

logging/current_cost�N�;2�J+       ��K	�?���A�K*

logging/current_costJK�;h��Z+       ��K	�o���A�K*

logging/current_cost�I�;��i�+       ��K	k����A�K*

logging/current_cost�I�;a۽+       ��K	�ͱ��A�K*

logging/current_cost�H�;�P��+       ��K	8����A�K*

logging/current_costzH�;ֺ�Y+       ��K	�'���A�K*

logging/current_cost�G�;�d�W+       ��K	�U���A�K*

logging/current_cost^L�;�-�
+       ��K	�����A�K*

logging/current_costM�;�f_+       ��K	����A�K*

logging/current_costfL�;�&�+       ��K	v޲��A�K*

logging/current_cost�P�;�?�+       ��K	G���A�L*

logging/current_cost�L�;���+       ��K	�?���A�L*

logging/current_cost�I�;'���+       ��K	�l���A�L*

logging/current_cost�I�; �6h+       ��K	?����A�L*

logging/current_cost#G�;����+       ��K	ҳ��A�L*

logging/current_cost�J�;�
+       ��K	 ���A�L*

logging/current_costNG�;��4�+       ��K	*.���A�L*

logging/current_costH�;B\SM+       ��K	�]���A�L*

logging/current_cost
I�;�AU�+       ��K	�����A�L*

logging/current_cost0H�;�*#Y+       ��K	3Ĵ��A�L*

logging/current_cost�D�;c]�+       ��K	�����A�L*

logging/current_cost?E�;X$v+       ��K	)���A�L*

logging/current_cost�C�;�115+       ��K	�V���A�L*

logging/current_costUH�;�3�+       ��K	ǆ���A�L*

logging/current_cost�G�;�w��+       ��K	�����A�L*

logging/current_costL�;��#�+       ��K	���A�L*

logging/current_costuJ�;��+       ��K	���A�L*

logging/current_costSI�;��2C+       ��K	@���A�L*

logging/current_costSF�;2%x+       ��K	�n���A�L*

logging/current_cost�H�;���+       ��K	�����A�L*

logging/current_cost�B�;�4M+       ��K	^˶��A�L*

logging/current_cost.L�;�[�+       ��K	)����A�L*

logging/current_cost?S�;6U��+       ��K	!$���A�L*

logging/current_costF�;B�{�+       ��K	�T���A�L*

logging/current_cost�H�;N�+       ��K	Z����A�L*

logging/current_cost%F�;����+       ��K	����A�L*

logging/current_costxL�;
��,+       ��K	 ���A�M*

logging/current_costkH�;��=+       ��K	x���A�M*

logging/current_cost�D�;min�+       ��K	 <���A�M*

logging/current_costAE�;�7��+       ��K	k���A�M*

logging/current_cost�E�;��p�+       ��K	�����A�M*

logging/current_cost�B�;����+       ��K	�Ƹ��A�M*

logging/current_costQG�;�H��+       ��K	����A�M*

logging/current_cost0F�;-m�c+       ��K	�!���A�M*

logging/current_costYB�;�� +       ��K	�N���A�M*

logging/current_cost�E�;K��+       ��K	`|���A�M*

logging/current_cost�A�;#�b+       ��K	�����A�M*

logging/current_cost�?�;LE�b+       ��K	�׹��A�M*

logging/current_cost'H�;��j+       ��K	+���A�M*

logging/current_costB�;�}��+       ��K	H6���A�M*

logging/current_costaD�;��	�+       ��K	,c���A�M*

logging/current_costWN�;�U+       ��K	���A�M*

logging/current_costU�;���+       ��K	����A�M*

logging/current_cost�E�;YdQ+       ��K	A���A�M*

logging/current_cost�K�;�,�+       ��K	W���A�M*

logging/current_cost�I�;9.�+       ��K	E���A�M*

logging/current_cost�L�;�h/�+       ��K	�����A�M*

logging/current_cost�B�;��+       ��K	�����A�M*

logging/current_cost�A�;���+       ��K	����A�M*

logging/current_costiD�;��]+       ��K	�C���A�M*

logging/current_costD�;n��+       ��K	Z���A�M*

logging/current_costA@�;	:�+       ��K	о���A�N*

logging/current_cost=B�;��+       ��K	h����A�N*

logging/current_costO=�;qY9+       ��K	4���A�N*

logging/current_cost�?�;SQ[