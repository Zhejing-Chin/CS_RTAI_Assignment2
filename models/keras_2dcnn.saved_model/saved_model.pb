��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12unknown8�
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	�*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0
�
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
�@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�@
value�@B�@ B�@
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias*
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias*
J
0
1
'2
(3
64
75
E6
F7
M8
N9*
J
0
1
'2
(3
64
75
E6
F7
M8
N9*
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
6
Xtrace_0
Ytrace_1
Ztrace_2
[trace_3* 
* 
:
\iter
	]decay
^learning_rate
_momentum*

`serving_default* 

0
1*

0
1*
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

mtrace_0* 

ntrace_0* 

'0
(1*

'0
(1*
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

{trace_0* 

|trace_0* 

60
71*

60
71*
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

E0
F1*

E0
F1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

M0
N1*

M0
N1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*
$
�0
�1
�2
�3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
`
�	variables
�	keras_api
�
thresholds
�true_positives
�false_positives*
`
�	variables
�	keras_api
�
thresholds
�true_positives
�false_negatives*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
* 
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_3Placeholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_signature_wrapper_9126
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_positives/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__traced_save_9479
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcounttrue_positives_1false_positivestrue_positivesfalse_negatives*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_restore_9555��
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_8809

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
i
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_8728

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�V
�
 __inference__traced_restore_9555
file_prefix:
 assignvariableop_conv2d_6_kernel:.
 assignvariableop_1_conv2d_6_bias:<
"assignvariableop_2_conv2d_7_kernel:.
 assignvariableop_3_conv2d_7_bias:<
"assignvariableop_4_conv2d_8_kernel:.
 assignvariableop_5_conv2d_8_bias:4
!assignvariableop_6_dense_4_kernel:	�-
assignvariableop_7_dense_4_bias:3
!assignvariableop_8_dense_5_kernel:-
assignvariableop_9_dense_5_bias:&
assignvariableop_10_sgd_iter:	 '
assignvariableop_11_sgd_decay: /
%assignvariableop_12_sgd_learning_rate: *
 assignvariableop_13_sgd_momentum: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: 2
$assignvariableop_18_true_positives_1:1
#assignvariableop_19_false_positives:0
"assignvariableop_20_true_positives:1
#assignvariableop_21_false_negatives:
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_sgd_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_sgd_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_true_positives_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp#assignvariableop_19_false_positivesIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_true_positivesIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp#assignvariableop_21_false_negativesIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
A__inference_dense_4_layer_call_and_return_conditional_losses_9370

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8797

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8779

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9310

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_4_layer_call_fn_9360

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8821o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
"__inference_signature_wrapper_9126
input_3!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_8719o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_3
�
�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8761

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
+__inference_sequential_2_layer_call_fn_9031
input_3!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_8983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_3
�$
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9095
input_3'
conv2d_6_9066:
conv2d_6_9068:'
conv2d_7_9072:
conv2d_7_9074:'
conv2d_8_9078:
conv2d_8_9080:
dense_4_9084:	�
dense_4_9086:
dense_5_9089:
dense_5_9091:
identity�� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_6_9066conv2d_6_9068*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8761�
#average_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_8728�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_4/PartitionedCall:output:0conv2d_7_9072conv2d_7_9074*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8779�
#average_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_8740�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_5/PartitionedCall:output:0conv2d_8_9078conv2d_8_9080*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8797�
flatten/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8809�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_9084dense_4_9086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8821�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_9089dense_5_9091*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_8838w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_3
�
N
2__inference_average_pooling2d_5_layer_call_fn_9315

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_8740�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�$
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9063
input_3'
conv2d_6_9034:
conv2d_6_9036:'
conv2d_7_9040:
conv2d_7_9042:'
conv2d_8_9046:
conv2d_8_9048:
dense_4_9052:	�
dense_4_9054:
dense_5_9057:
dense_5_9059:
identity�� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_6_9034conv2d_6_9036*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8761�
#average_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_8728�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_4/PartitionedCall:output:0conv2d_7_9040conv2d_7_9042*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8779�
#average_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_8740�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_5/PartitionedCall:output:0conv2d_8_9046conv2d_8_9048*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8797�
flatten/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8809�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_9052dense_4_9054*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8821�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_9057dense_5_9059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_8838w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_3
�
�
'__inference_conv2d_8_layer_call_fn_9329

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8797w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_dense_5_layer_call_and_return_conditional_losses_8838

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�2
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9218

inputsA
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:A
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:9
&dense_4_matmul_readvariableop_resource:	�5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identity��conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������j
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:����������
average_pooling2d_4/AvgPoolAvgPoolconv2d_6/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_7/Conv2DConv2D$average_pooling2d_4/AvgPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:����������
average_pooling2d_5/AvgPoolAvgPoolconv2d_7/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_8/Conv2DConv2D$average_pooling2d_5/AvgPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten/ReshapeReshapeconv2d_8/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:�����������
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5/MatMulMatMuldense_4/BiasAdd:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
N
2__inference_average_pooling2d_4_layer_call_fn_9285

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_8728�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
i
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_8740

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_conv2d_6_layer_call_fn_9269

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8761w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
B
&__inference_flatten_layer_call_fn_9345

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8809a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�>
�	
__inference__wrapped_model_8719
input_3N
4sequential_2_conv2d_6_conv2d_readvariableop_resource:C
5sequential_2_conv2d_6_biasadd_readvariableop_resource:N
4sequential_2_conv2d_7_conv2d_readvariableop_resource:C
5sequential_2_conv2d_7_biasadd_readvariableop_resource:N
4sequential_2_conv2d_8_conv2d_readvariableop_resource:C
5sequential_2_conv2d_8_biasadd_readvariableop_resource:F
3sequential_2_dense_4_matmul_readvariableop_resource:	�B
4sequential_2_dense_4_biasadd_readvariableop_resource:E
3sequential_2_dense_5_matmul_readvariableop_resource:B
4sequential_2_dense_5_biasadd_readvariableop_resource:
identity��,sequential_2/conv2d_6/BiasAdd/ReadVariableOp�+sequential_2/conv2d_6/Conv2D/ReadVariableOp�,sequential_2/conv2d_7/BiasAdd/ReadVariableOp�+sequential_2/conv2d_7/Conv2D/ReadVariableOp�,sequential_2/conv2d_8/BiasAdd/ReadVariableOp�+sequential_2/conv2d_8/Conv2D/ReadVariableOp�+sequential_2/dense_4/BiasAdd/ReadVariableOp�*sequential_2/dense_4/MatMul/ReadVariableOp�+sequential_2/dense_5/BiasAdd/ReadVariableOp�*sequential_2/dense_5/MatMul/ReadVariableOp�
+sequential_2/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_2/conv2d_6/Conv2DConv2Dinput_33sequential_2/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
,sequential_2/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/conv2d_6/BiasAddBiasAdd%sequential_2/conv2d_6/Conv2D:output:04sequential_2/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_2/conv2d_6/ReluRelu&sequential_2/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:����������
(sequential_2/average_pooling2d_4/AvgPoolAvgPool(sequential_2/conv2d_6/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
+sequential_2/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_2/conv2d_7/Conv2DConv2D1sequential_2/average_pooling2d_4/AvgPool:output:03sequential_2/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
,sequential_2/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/conv2d_7/BiasAddBiasAdd%sequential_2/conv2d_7/Conv2D:output:04sequential_2/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_2/conv2d_7/ReluRelu&sequential_2/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:����������
(sequential_2/average_pooling2d_5/AvgPoolAvgPool(sequential_2/conv2d_7/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
+sequential_2/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_2/conv2d_8/Conv2DConv2D1sequential_2/average_pooling2d_5/AvgPool:output:03sequential_2/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
,sequential_2/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/conv2d_8/BiasAddBiasAdd%sequential_2/conv2d_8/Conv2D:output:04sequential_2/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_2/conv2d_8/ReluRelu&sequential_2/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������k
sequential_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
sequential_2/flatten/ReshapeReshape(sequential_2/conv2d_8/Relu:activations:0#sequential_2/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_2/dense_4/MatMulMatMul%sequential_2/flatten/Reshape:output:02sequential_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_4/BiasAddBiasAdd%sequential_2/dense_4/MatMul:product:03sequential_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_2/dense_5/MatMulMatMul%sequential_2/dense_4/BiasAdd:output:02sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_2/dense_5/SoftmaxSoftmax%sequential_2/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_2/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^sequential_2/conv2d_6/BiasAdd/ReadVariableOp,^sequential_2/conv2d_6/Conv2D/ReadVariableOp-^sequential_2/conv2d_7/BiasAdd/ReadVariableOp,^sequential_2/conv2d_7/Conv2D/ReadVariableOp-^sequential_2/conv2d_8/BiasAdd/ReadVariableOp,^sequential_2/conv2d_8/Conv2D/ReadVariableOp,^sequential_2/dense_4/BiasAdd/ReadVariableOp+^sequential_2/dense_4/MatMul/ReadVariableOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2\
,sequential_2/conv2d_6/BiasAdd/ReadVariableOp,sequential_2/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_6/Conv2D/ReadVariableOp+sequential_2/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_7/BiasAdd/ReadVariableOp,sequential_2/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_7/Conv2D/ReadVariableOp+sequential_2/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_8/BiasAdd/ReadVariableOp,sequential_2/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_8/Conv2D/ReadVariableOp+sequential_2/conv2d_8/Conv2D/ReadVariableOp2Z
+sequential_2/dense_4/BiasAdd/ReadVariableOp+sequential_2/dense_4/BiasAdd/ReadVariableOp2X
*sequential_2/dense_4/MatMul/ReadVariableOp*sequential_2/dense_4/MatMul/ReadVariableOp2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_3
�

�
+__inference_sequential_2_layer_call_fn_8868
input_3!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_8845o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_3
�

�
+__inference_sequential_2_layer_call_fn_9151

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_8845o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
+__inference_sequential_2_layer_call_fn_9176

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_8983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_9340

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�0
�
__inference__traced_save_9479
file_prefix.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_positives_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_positives_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_negatives_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::	�:::: : : : : : : : ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	�: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
�$
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_8983

inputs'
conv2d_6_8954:
conv2d_6_8956:'
conv2d_7_8960:
conv2d_7_8962:'
conv2d_8_8966:
conv2d_8_8968:
dense_4_8972:	�
dense_4_8974:
dense_5_8977:
dense_5_8979:
identity�� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6_8954conv2d_6_8956*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8761�
#average_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_8728�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_4/PartitionedCall:output:0conv2d_7_8960conv2d_7_8962*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8779�
#average_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_8740�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_5/PartitionedCall:output:0conv2d_8_8966conv2d_8_8968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8797�
flatten/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8809�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_8972dense_4_8974*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8821�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_8977dense_5_8979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_8838w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_9351

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_8845

inputs'
conv2d_6_8762:
conv2d_6_8764:'
conv2d_7_8780:
conv2d_7_8782:'
conv2d_8_8798:
conv2d_8_8800:
dense_4_8822:	�
dense_4_8824:
dense_5_8839:
dense_5_8841:
identity�� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6_8762conv2d_6_8764*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_8761�
#average_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_8728�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_4/PartitionedCall:output:0conv2d_7_8780conv2d_7_8782*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8779�
#average_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_8740�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_5/PartitionedCall:output:0conv2d_8_8798conv2d_8_8800*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_8797�
flatten/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8809�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_8822dense_4_8824*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8821�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_8839dense_5_8841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_8838w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
i
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_9320

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
&__inference_dense_5_layer_call_fn_9379

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_8838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
A__inference_dense_4_layer_call_and_return_conditional_losses_8821

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�2
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9260

inputsA
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:A
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:9
&dense_4_matmul_readvariableop_resource:	�5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identity��conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������j
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:����������
average_pooling2d_4/AvgPoolAvgPoolconv2d_6/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_7/Conv2DConv2D$average_pooling2d_4/AvgPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:����������
average_pooling2d_5/AvgPoolAvgPoolconv2d_7/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_8/Conv2DConv2D$average_pooling2d_5/AvgPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten/ReshapeReshapeconv2d_8/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:�����������
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5/MatMulMatMuldense_4/BiasAdd:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9280

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
'__inference_conv2d_7_layer_call_fn_9299

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_8779w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
i
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_9290

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
A__inference_dense_5_layer_call_and_return_conditional_losses_9390

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_38
serving_default_input_3:0���������  ;
dense_50
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias"
_tf_keras_layer
f
0
1
'2
(3
64
75
E6
F7
M8
N9"
trackable_list_wrapper
f
0
1
'2
(3
64
75
E6
F7
M8
N9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32�
+__inference_sequential_2_layer_call_fn_8868
+__inference_sequential_2_layer_call_fn_9151
+__inference_sequential_2_layer_call_fn_9176
+__inference_sequential_2_layer_call_fn_9031�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
�
Xtrace_0
Ytrace_1
Ztrace_2
[trace_32�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9218
F__inference_sequential_2_layer_call_and_return_conditional_losses_9260
F__inference_sequential_2_layer_call_and_return_conditional_losses_9063
F__inference_sequential_2_layer_call_and_return_conditional_losses_9095�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zXtrace_0zYtrace_1zZtrace_2z[trace_3
�B�
__inference__wrapped_model_8719input_3"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
I
\iter
	]decay
^learning_rate
_momentum"
	optimizer
,
`serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ftrace_02�
'__inference_conv2d_6_layer_call_fn_9269�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0
�
gtrace_02�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9280�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0
):'2conv2d_6/kernel
:2conv2d_6/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
mtrace_02�
2__inference_average_pooling2d_4_layer_call_fn_9285�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0
�
ntrace_02�
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_9290�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
ttrace_02�
'__inference_conv2d_7_layer_call_fn_9299�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zttrace_0
�
utrace_02�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9310�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zutrace_0
):'2conv2d_7/kernel
:2conv2d_7/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
{trace_02�
2__inference_average_pooling2d_5_layer_call_fn_9315�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0
�
|trace_02�
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_9320�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z|trace_0
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_8_layer_call_fn_9329�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_9340�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'2conv2d_8/kernel
:2conv2d_8/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_flatten_layer_call_fn_9345�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_flatten_layer_call_and_return_conditional_losses_9351�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_4_layer_call_fn_9360�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_dense_4_layer_call_and_return_conditional_losses_9370�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�2dense_4/kernel
:2dense_4/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_5_layer_call_fn_9379�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_dense_5_layer_call_and_return_conditional_losses_9390�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_sequential_2_layer_call_fn_8868input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_sequential_2_layer_call_fn_9151inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_sequential_2_layer_call_fn_9176inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_sequential_2_layer_call_fn_9031input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9218inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9260inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9063input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_sequential_2_layer_call_and_return_conditional_losses_9095input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
�B�
"__inference_signature_wrapper_9126input_3"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_6_layer_call_fn_9269inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9280inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_average_pooling2d_4_layer_call_fn_9285inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_9290inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_7_layer_call_fn_9299inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9310inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_average_pooling2d_5_layer_call_fn_9315inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_9320inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_8_layer_call_fn_9329inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv2d_8_layer_call_and_return_conditional_losses_9340inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_flatten_layer_call_fn_9345inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_flatten_layer_call_and_return_conditional_losses_9351inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_4_layer_call_fn_9360inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_4_layer_call_and_return_conditional_losses_9370inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_5_layer_call_fn_9379inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_5_layer_call_and_return_conditional_losses_9390inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
v
�	variables
�	keras_api
�
thresholds
�true_positives
�false_positives"
_tf_keras_metric
v
�	variables
�	keras_api
�
thresholds
�true_positives
�false_negatives"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives�
__inference__wrapped_model_8719y
'(67EFMN8�5
.�+
)�&
input_3���������  
� "1�.
,
dense_5!�
dense_5����������
M__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_9290�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
2__inference_average_pooling2d_4_layer_call_fn_9285�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
M__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_9320�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
2__inference_average_pooling2d_5_layer_call_fn_9315�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9280l7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������
� �
'__inference_conv2d_6_layer_call_fn_9269_7�4
-�*
(�%
inputs���������  
� " �����������
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9310l'(7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
'__inference_conv2d_7_layer_call_fn_9299_'(7�4
-�*
(�%
inputs���������
� " �����������
B__inference_conv2d_8_layer_call_and_return_conditional_losses_9340l677�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
'__inference_conv2d_8_layer_call_fn_9329_677�4
-�*
(�%
inputs���������
� " �����������
A__inference_dense_4_layer_call_and_return_conditional_losses_9370]EF0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� z
&__inference_dense_4_layer_call_fn_9360PEF0�-
&�#
!�
inputs����������
� "�����������
A__inference_dense_5_layer_call_and_return_conditional_losses_9390\MN/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� y
&__inference_dense_5_layer_call_fn_9379OMN/�,
%�"
 �
inputs���������
� "�����������
A__inference_flatten_layer_call_and_return_conditional_losses_9351a7�4
-�*
(�%
inputs���������
� "&�#
�
0����������
� ~
&__inference_flatten_layer_call_fn_9345T7�4
-�*
(�%
inputs���������
� "������������
F__inference_sequential_2_layer_call_and_return_conditional_losses_9063u
'(67EFMN@�=
6�3
)�&
input_3���������  
p 

 
� "%�"
�
0���������
� �
F__inference_sequential_2_layer_call_and_return_conditional_losses_9095u
'(67EFMN@�=
6�3
)�&
input_3���������  
p

 
� "%�"
�
0���������
� �
F__inference_sequential_2_layer_call_and_return_conditional_losses_9218t
'(67EFMN?�<
5�2
(�%
inputs���������  
p 

 
� "%�"
�
0���������
� �
F__inference_sequential_2_layer_call_and_return_conditional_losses_9260t
'(67EFMN?�<
5�2
(�%
inputs���������  
p

 
� "%�"
�
0���������
� �
+__inference_sequential_2_layer_call_fn_8868h
'(67EFMN@�=
6�3
)�&
input_3���������  
p 

 
� "�����������
+__inference_sequential_2_layer_call_fn_9031h
'(67EFMN@�=
6�3
)�&
input_3���������  
p

 
� "�����������
+__inference_sequential_2_layer_call_fn_9151g
'(67EFMN?�<
5�2
(�%
inputs���������  
p 

 
� "�����������
+__inference_sequential_2_layer_call_fn_9176g
'(67EFMN?�<
5�2
(�%
inputs���������  
p

 
� "�����������
"__inference_signature_wrapper_9126�
'(67EFMNC�@
� 
9�6
4
input_3)�&
input_3���������  "1�.
,
dense_5!�
dense_5���������