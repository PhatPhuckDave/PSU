¤¾
’Ō
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8ĮĪ
{
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_30/kernel
t
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes
:	
*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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

Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_30/kernel/m

*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes
:	
*
dtype0

Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_30/kernel/v

*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes
:	
*
dtype0

Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
’
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ŗ
value°B­ B¦
„
layer-0
layer_with_weights-0
layer-1
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
R
	trainable_variables

regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
d
iter

beta_1

beta_2
	decay
learning_ratem2m3v4v5

0
1
 

0
1
­

layers
trainable_variables
non_trainable_variables
metrics
regularization_losses
	variables
layer_regularization_losses
layer_metrics
 
 
 
 
­

layers
	trainable_variables
non_trainable_variables
metrics

regularization_losses
	variables
 layer_regularization_losses
!layer_metrics
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­

"layers
trainable_variables
#non_trainable_variables
$metrics
regularization_losses
	variables
%layer_regularization_losses
&layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

'0
(1
 
 
 
 
 
 
 
 
 
 
 
 
4
	)total
	*count
+	variables
,	keras_api
D
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

+	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1

0	variables
~|
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_30Placeholder*/
_output_shapes
:’’’’’’’’’*
dtype0*$
shape:’’’’’’’’’
Ś
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_30dense_30/kerneldense_30/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_248504
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ŗ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOpConst*
Tin
2	*
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_248647

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_30/kerneldense_30/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_30/kernel/mAdam/dense_30/bias/mAdam/dense_30/kernel/vAdam/dense_30/bias/v*
Tin
2*
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_248702
¾
b
F__inference_flatten_22_layer_call_and_return_conditional_losses_248554

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*.
_input_shapes
:’’’’’’’’’:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¦A
Ä
"__inference__traced_restore_248702
file_prefix$
 assignvariableop_dense_30_kernel$
 assignvariableop_1_dense_30_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate
assignvariableop_7_total
assignvariableop_8_count
assignvariableop_9_total_1
assignvariableop_10_count_1.
*assignvariableop_11_adam_dense_30_kernel_m,
(assignvariableop_12_adam_dense_30_bias_m.
*assignvariableop_13_adam_dense_30_kernel_v,
(assignvariableop_14_adam_dense_30_bias_v
identity_16¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ŗ
value BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesū
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_30_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1„
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_30_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2”
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¢
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ŗ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10£
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11²
AssignVariableOp_11AssignVariableOp*assignvariableop_11_adam_dense_30_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12°
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_dense_30_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13²
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_dense_30_kernel_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14°
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_dense_30_bias_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpØ
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15
Identity_16IdentityIdentity_15:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_16"#
identity_16Identity_16:output:0*Q
_input_shapes@
>: :::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
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
ļ

·
I__inference_sequential_30_layer_call_and_return_conditional_losses_248436
input_30
dense_30_248430
dense_30_248432
identity¢ dense_30/StatefulPartitionedCallą
flatten_22/PartitionedCallPartitionedCallinput_30*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_2484002
flatten_22/PartitionedCall“
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_30_248430dense_30_248432*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_2484192"
 dense_30/StatefulPartitionedCall 
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall:Y U
/
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_30
«
G
+__inference_flatten_22_layer_call_fn_248559

inputs
identityČ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_2484002
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*.
_input_shapes
:’’’’’’’’’:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ļ

·
I__inference_sequential_30_layer_call_and_return_conditional_losses_248446
input_30
dense_30_248440
dense_30_248442
identity¢ dense_30/StatefulPartitionedCallą
flatten_22/PartitionedCallPartitionedCallinput_30*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_2484002
flatten_22/PartitionedCall“
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_30_248440dense_30_248442*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_2484192"
 dense_30/StatefulPartitionedCall 
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall:Y U
/
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_30
Ó(

__inference__traced_save_248647
file_prefix.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ŗ
value BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesØ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesæ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2ŗ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes”
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*\
_input_shapesK
I: :	
:
: : : : : : : : : :	
:
:	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
: 

_output_shapes
:
:%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: 
Ķ
{
$__inference_signature_wrapper_248504
input_30
unknown
	unknown_0
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinput_30unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_2483902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_30


I__inference_sequential_30_layer_call_and_return_conditional_losses_248517

inputs+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource
identity¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOpu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’  2
flatten_22/Const
flatten_22/ReshapeReshapeinputsflatten_22/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
flatten_22/Reshape©
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_22/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_30/BiasAdd/ReadVariableOp„
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2
dense_30/BiasAdd|
dense_30/SoftmaxSoftmaxdense_30/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
2
dense_30/Softmax±
IdentityIdentitydense_30/Softmax:softmax:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


.__inference_sequential_30_layer_call_fn_248485
input_30
unknown
	unknown_0
identity¢StatefulPartitionedCallž
StatefulPartitionedCallStatefulPartitionedCallinput_30unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2484782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_30


I__inference_sequential_30_layer_call_and_return_conditional_losses_248530

inputs+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource
identity¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOpu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’  2
flatten_22/Const
flatten_22/ReshapeReshapeinputsflatten_22/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
flatten_22/Reshape©
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_22/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_30/BiasAdd/ReadVariableOp„
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2
dense_30/BiasAdd|
dense_30/SoftmaxSoftmaxdense_30/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
2
dense_30/Softmax±
IdentityIdentitydense_30/Softmax:softmax:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¾
b
F__inference_flatten_22_layer_call_and_return_conditional_losses_248400

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*.
_input_shapes
:’’’’’’’’’:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


.__inference_sequential_30_layer_call_fn_248466
input_30
unknown
	unknown_0
identity¢StatefulPartitionedCallž
StatefulPartitionedCallStatefulPartitionedCallinput_30unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2484592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_30
ł	
Ż
D__inference_dense_30_layer_call_and_return_conditional_losses_248570

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*/
_input_shapes
:’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
é

µ
I__inference_sequential_30_layer_call_and_return_conditional_losses_248478

inputs
dense_30_248472
dense_30_248474
identity¢ dense_30/StatefulPartitionedCallŽ
flatten_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_2484002
flatten_22/PartitionedCall“
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_30_248472dense_30_248474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_2484192"
 dense_30/StatefulPartitionedCall 
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
é

µ
I__inference_sequential_30_layer_call_and_return_conditional_losses_248459

inputs
dense_30_248453
dense_30_248455
identity¢ dense_30/StatefulPartitionedCallŽ
flatten_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_2484002
flatten_22/PartitionedCall“
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_30_248453dense_30_248455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_2484192"
 dense_30/StatefulPartitionedCall 
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ś

.__inference_sequential_30_layer_call_fn_248548

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2484782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ś

.__inference_sequential_30_layer_call_fn_248539

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2484592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
į
~
)__inference_dense_30_layer_call_fn_248579

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_2484192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*/
_input_shapes
:’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ę

!__inference__wrapped_model_248390
input_309
5sequential_30_dense_30_matmul_readvariableop_resource:
6sequential_30_dense_30_biasadd_readvariableop_resource
identity¢-sequential_30/dense_30/BiasAdd/ReadVariableOp¢,sequential_30/dense_30/MatMul/ReadVariableOp
sequential_30/flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’  2 
sequential_30/flatten_22/Constµ
 sequential_30/flatten_22/ReshapeReshapeinput_30'sequential_30/flatten_22/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2"
 sequential_30/flatten_22/ReshapeÓ
,sequential_30/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_30_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02.
,sequential_30/dense_30/MatMul/ReadVariableOpŪ
sequential_30/dense_30/MatMulMatMul)sequential_30/flatten_22/Reshape:output:04sequential_30/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2
sequential_30/dense_30/MatMulŃ
-sequential_30/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_30_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-sequential_30/dense_30/BiasAdd/ReadVariableOpŻ
sequential_30/dense_30/BiasAddBiasAdd'sequential_30/dense_30/MatMul:product:05sequential_30/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2 
sequential_30/dense_30/BiasAdd¦
sequential_30/dense_30/SoftmaxSoftmax'sequential_30/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
2 
sequential_30/dense_30/SoftmaxŪ
IdentityIdentity(sequential_30/dense_30/Softmax:softmax:0.^sequential_30/dense_30/BiasAdd/ReadVariableOp-^sequential_30/dense_30/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:’’’’’’’’’::2^
-sequential_30/dense_30/BiasAdd/ReadVariableOp-sequential_30/dense_30/BiasAdd/ReadVariableOp2\
,sequential_30/dense_30/MatMul/ReadVariableOp,sequential_30/dense_30/MatMul/ReadVariableOp:Y U
/
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_30
ł	
Ż
D__inference_dense_30_layer_call_and_return_conditional_losses_248419

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
2

Identity"
identityIdentity:output:0*/
_input_shapes
:’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default”
E
input_309
serving_default_input_30:0’’’’’’’’’<
dense_300
StatefulPartitionedCall:0’’’’’’’’’
tensorflow/serving/predict:ó^
Ä
layer-0
layer_with_weights-0
layer-1
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
6__call__
*7&call_and_return_all_conditional_losses
8_default_save_signature"Å
_tf_keras_sequential¦{"class_name": "Sequential", "name": "sequential_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_30"}}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_30"}}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
č
	trainable_variables

regularization_losses
	variables
	keras_api
9__call__
*:&call_and_return_all_conditional_losses"Ł
_tf_keras_layeræ{"class_name": "Flatten", "name": "flatten_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
÷

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
;__call__
*<&call_and_return_all_conditional_losses"Ņ
_tf_keras_layerø{"class_name": "Dense", "name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
w
iter

beta_1

beta_2
	decay
learning_ratem2m3v4v5"
	optimizer
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ź

layers
trainable_variables
non_trainable_variables
metrics
regularization_losses
	variables
layer_regularization_losses
layer_metrics
6__call__
8_default_save_signature
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
,
=serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

layers
	trainable_variables
non_trainable_variables
metrics

regularization_losses
	variables
 layer_regularization_losses
!layer_metrics
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
": 	
2dense_30/kernel
:
2dense_30/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­

"layers
trainable_variables
#non_trainable_variables
$metrics
regularization_losses
	variables
%layer_regularization_losses
&layer_metrics
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
»
	)total
	*count
+	variables
,	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
’
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api"ø
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
)0
*1"
trackable_list_wrapper
-
+	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
-
0	variables"
_generic_user_object
':%	
2Adam/dense_30/kernel/m
 :
2Adam/dense_30/bias/m
':%	
2Adam/dense_30/kernel/v
 :
2Adam/dense_30/bias/v
2
.__inference_sequential_30_layer_call_fn_248539
.__inference_sequential_30_layer_call_fn_248466
.__inference_sequential_30_layer_call_fn_248548
.__inference_sequential_30_layer_call_fn_248485Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ņ2ļ
I__inference_sequential_30_layer_call_and_return_conditional_losses_248436
I__inference_sequential_30_layer_call_and_return_conditional_losses_248446
I__inference_sequential_30_layer_call_and_return_conditional_losses_248530
I__inference_sequential_30_layer_call_and_return_conditional_losses_248517Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
č2å
!__inference__wrapped_model_248390æ
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ */¢,
*'
input_30’’’’’’’’’
Õ2Ņ
+__inference_flatten_22_layer_call_fn_248559¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
š2ķ
F__inference_flatten_22_layer_call_and_return_conditional_losses_248554¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ó2Š
)__inference_dense_30_layer_call_fn_248579¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ī2ė
D__inference_dense_30_layer_call_and_return_conditional_losses_248570¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ĢBÉ
$__inference_signature_wrapper_248504input_30"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
!__inference__wrapped_model_248390t9¢6
/¢,
*'
input_30’’’’’’’’’
Ŗ "3Ŗ0
.
dense_30"
dense_30’’’’’’’’’
„
D__inference_dense_30_layer_call_and_return_conditional_losses_248570]0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "%¢"

0’’’’’’’’’

 }
)__inference_dense_30_layer_call_fn_248579P0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’
«
F__inference_flatten_22_layer_call_and_return_conditional_losses_248554a7¢4
-¢*
(%
inputs’’’’’’’’’
Ŗ "&¢#

0’’’’’’’’’
 
+__inference_flatten_22_layer_call_fn_248559T7¢4
-¢*
(%
inputs’’’’’’’’’
Ŗ "’’’’’’’’’»
I__inference_sequential_30_layer_call_and_return_conditional_losses_248436nA¢>
7¢4
*'
input_30’’’’’’’’’
p

 
Ŗ "%¢"

0’’’’’’’’’

 »
I__inference_sequential_30_layer_call_and_return_conditional_losses_248446nA¢>
7¢4
*'
input_30’’’’’’’’’
p 

 
Ŗ "%¢"

0’’’’’’’’’

 ¹
I__inference_sequential_30_layer_call_and_return_conditional_losses_248517l?¢<
5¢2
(%
inputs’’’’’’’’’
p

 
Ŗ "%¢"

0’’’’’’’’’

 ¹
I__inference_sequential_30_layer_call_and_return_conditional_losses_248530l?¢<
5¢2
(%
inputs’’’’’’’’’
p 

 
Ŗ "%¢"

0’’’’’’’’’

 
.__inference_sequential_30_layer_call_fn_248466aA¢>
7¢4
*'
input_30’’’’’’’’’
p

 
Ŗ "’’’’’’’’’

.__inference_sequential_30_layer_call_fn_248485aA¢>
7¢4
*'
input_30’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’

.__inference_sequential_30_layer_call_fn_248539_?¢<
5¢2
(%
inputs’’’’’’’’’
p

 
Ŗ "’’’’’’’’’

.__inference_sequential_30_layer_call_fn_248548_?¢<
5¢2
(%
inputs’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’
©
$__inference_signature_wrapper_248504E¢B
¢ 
;Ŗ8
6
input_30*'
input_30’’’’’’’’’"3Ŗ0
.
dense_30"
dense_30’’’’’’’’’
