��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-0-g919f693420e8��
�
$recommender_net/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�2*5
shared_name&$recommender_net/embedding/embeddings
�
8recommender_net/embedding/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/embedding/embeddings* 
_output_shapes
:
�2*
dtype0
�
&recommender_net/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*7
shared_name(&recommender_net/embedding_1/embeddings
�
:recommender_net/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_1/embeddings* 
_output_shapes
:
�*
dtype0
�
&recommender_net/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M2*7
shared_name(&recommender_net/embedding_2/embeddings
�
:recommender_net/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_2/embeddings*
_output_shapes
:	�M2*
dtype0
�
&recommender_net/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M*7
shared_name(&recommender_net/embedding_3/embeddings
�
:recommender_net/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_3/embeddings*
_output_shapes
:	�M*
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
�
+Adam/recommender_net/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�2*<
shared_name-+Adam/recommender_net/embedding/embeddings/m
�
?Adam/recommender_net/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/embedding/embeddings/m* 
_output_shapes
:
�2*
dtype0
�
-Adam/recommender_net/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*>
shared_name/-Adam/recommender_net/embedding_1/embeddings/m
�
AAdam/recommender_net/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_1/embeddings/m* 
_output_shapes
:
�*
dtype0
�
-Adam/recommender_net/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M2*>
shared_name/-Adam/recommender_net/embedding_2/embeddings/m
�
AAdam/recommender_net/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_2/embeddings/m*
_output_shapes
:	�M2*
dtype0
�
-Adam/recommender_net/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M*>
shared_name/-Adam/recommender_net/embedding_3/embeddings/m
�
AAdam/recommender_net/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_3/embeddings/m*
_output_shapes
:	�M*
dtype0
�
+Adam/recommender_net/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�2*<
shared_name-+Adam/recommender_net/embedding/embeddings/v
�
?Adam/recommender_net/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/embedding/embeddings/v* 
_output_shapes
:
�2*
dtype0
�
-Adam/recommender_net/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*>
shared_name/-Adam/recommender_net/embedding_1/embeddings/v
�
AAdam/recommender_net/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_1/embeddings/v* 
_output_shapes
:
�*
dtype0
�
-Adam/recommender_net/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M2*>
shared_name/-Adam/recommender_net/embedding_2/embeddings/v
�
AAdam/recommender_net/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_2/embeddings/v*
_output_shapes
:	�M2*
dtype0
�
-Adam/recommender_net/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M*>
shared_name/-Adam/recommender_net/embedding_3/embeddings/v
�
AAdam/recommender_net/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_3/embeddings/v*
_output_shapes
:	�M*
dtype0

NoOpNoOp
� 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*� 
value� B�  B� 
�
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
regularization_losses
trainable_variables
	variables
		keras_api


signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
�
iter

 beta_1

!beta_2
	"decay
#learning_ratemBmCmDmEvFvGvHvI
 

0
1
2
3

0
1
2
3
�
$layer_metrics
%layer_regularization_losses
regularization_losses
&metrics

'layers
(non_trainable_variables
trainable_variables
	variables
 
nl
VARIABLE_VALUE$recommender_net/embedding/embeddings4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
�
)layer_metrics
	variables
*layer_regularization_losses
regularization_losses
+metrics
,non_trainable_variables
trainable_variables

-layers
ki
VARIABLE_VALUE&recommender_net/embedding_1/embeddings/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
�
.layer_metrics
	variables
/layer_regularization_losses
regularization_losses
0metrics
1non_trainable_variables
trainable_variables

2layers
qo
VARIABLE_VALUE&recommender_net/embedding_2/embeddings5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
�
3layer_metrics
	variables
4layer_regularization_losses
regularization_losses
5metrics
6non_trainable_variables
trainable_variables

7layers
lj
VARIABLE_VALUE&recommender_net/embedding_3/embeddings0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
�
8layer_metrics
	variables
9layer_regularization_losses
regularization_losses
:metrics
;non_trainable_variables
trainable_variables

<layers
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
 
 

=0

0
1
2
3
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
	>total
	?count
@	variables
A	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

>0
?1

@	variables
��
VARIABLE_VALUE+Adam/recommender_net/embedding/embeddings/mPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/recommender_net/embedding_1/embeddings/mKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/recommender_net/embedding_2/embeddings/mQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/recommender_net/embedding_3/embeddings/mLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+Adam/recommender_net/embedding/embeddings/vPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/recommender_net/embedding_1/embeddings/vKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/recommender_net/embedding_2/embeddings/vQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/recommender_net/embedding_3/embeddings/vLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_339648
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8recommender_net/embedding/embeddings/Read/ReadVariableOp:recommender_net/embedding_1/embeddings/Read/ReadVariableOp:recommender_net/embedding_2/embeddings/Read/ReadVariableOp:recommender_net/embedding_3/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp?Adam/recommender_net/embedding/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_1/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_2/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_3/embeddings/m/Read/ReadVariableOp?Adam/recommender_net/embedding/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_1/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_2/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_3/embeddings/v/Read/ReadVariableOpConst* 
Tin
2	*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_339942
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount+Adam/recommender_net/embedding/embeddings/m-Adam/recommender_net/embedding_1/embeddings/m-Adam/recommender_net/embedding_2/embeddings/m-Adam/recommender_net/embedding_3/embeddings/m+Adam/recommender_net/embedding/embeddings/v-Adam/recommender_net/embedding_1/embeddings/v-Adam/recommender_net/embedding_2/embeddings/v-Adam/recommender_net/embedding_3/embeddings/v*
Tin
2*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_340009��
�
�
,__inference_embedding_1_layer_call_fn_339796

inputs	
unknown:
�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3393802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_embedding_3_layer_call_fn_339840

inputs	
unknown:	�M
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_3394202
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_embedding_layer_call_and_return_conditional_losses_339773

inputs	+
embedding_lookup_339761:
�2
identity��embedding_lookup�Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_339761inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339761*'
_output_shapes
:���������2*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339761*'
_output_shapes
:���������22
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������22
embedding_lookup/Identity_1�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_339761* 
_output_shapes
:
�2*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�229
7recommender_net/embedding/embeddings/Regularizer/Square�
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const�
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum�
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�528
6recommender_net/embedding/embeddings/Regularizer/mul/x�
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identity�
NoOpNoOp^embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_339648
input_1	
unknown:
�2
	unknown_0:
�
	unknown_1:	�M2
	unknown_2:	�M
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_3393372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
G__inference_embedding_2_layer_call_and_return_conditional_losses_339403

inputs	*
embedding_lookup_339391:	�M2
identity��embedding_lookup�Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_339391inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339391*'
_output_shapes
:���������2*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339391*'
_output_shapes
:���������22
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������22
embedding_lookup/Identity_1�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_339391*
_output_shapes
:	�M2*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M22;
9recommender_net/embedding_2/embeddings/Regularizer/Square�
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const�
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum�
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x�
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identity�
NoOpNoOp^embedding_lookupI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_339862d
Qrecommender_net_embedding_2_embeddings_regularizer_square_readvariableop_resource:	�M2
identity��Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpQrecommender_net_embedding_2_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	�M2*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M22;
9recommender_net/embedding_2/embeddings/Regularizer/Square�
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const�
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum�
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x�
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mul�
IdentityIdentity:recommender_net/embedding_2/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity�
NoOpNoOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp
�
�
0__inference_recommender_net_layer_call_fn_339752

inputs	
unknown:
�2
	unknown_0:
�
	unknown_1:	�M2
	unknown_2:	�M
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_recommender_net_layer_call_and_return_conditional_losses_3394762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�~
�
K__inference_recommender_net_layer_call_and_return_conditional_losses_339739

inputs	5
!embedding_embedding_lookup_339655:
�27
#embedding_1_embedding_lookup_339664:
�6
#embedding_2_embedding_lookup_339673:	�M26
#embedding_3_embedding_lookup_339682:	�M
identity��embedding/embedding_lookup�embedding_1/embedding_lookup�embedding_2/embedding_lookup�embedding_3/embedding_lookup�Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2�
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice�
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_339655strided_slice:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/339655*'
_output_shapes
:���������2*
dtype02
embedding/embedding_lookup�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/339655*'
_output_shapes
:���������22%
#embedding/embedding_lookup/Identity�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������22'
%embedding/embedding_lookup/Identity_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack�
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1�
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2�
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1�
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_339664strided_slice_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*6
_class,
*(loc:@embedding_1/embedding_lookup/339664*'
_output_shapes
:���������*
dtype02
embedding_1/embedding_lookup�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/339664*'
_output_shapes
:���������2'
%embedding_1/embedding_lookup/Identity�
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2)
'embedding_1/embedding_lookup/Identity_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack�
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1�
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2�
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2�
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_339673strided_slice_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*6
_class,
*(loc:@embedding_2/embedding_lookup/339673*'
_output_shapes
:���������2*
dtype02
embedding_2/embedding_lookup�
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/339673*'
_output_shapes
:���������22'
%embedding_2/embedding_lookup/Identity�
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������22)
'embedding_2/embedding_lookup/Identity_1
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack�
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1�
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2�
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3�
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_339682strided_slice_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*6
_class,
*(loc:@embedding_3/embedding_lookup/339682*'
_output_shapes
:���������*
dtype02
embedding_3/embedding_lookup�
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/339682*'
_output_shapes
:���������2'
%embedding_3/embedding_lookup/Identity�
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2)
'embedding_3/embedding_lookup/Identity_1q
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axesc
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free�
Tensordot/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:���������22
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshapeu
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axes_1g
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free_1�
Tensordot/Shape_1Shape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axis�
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2_2x
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_3/axis�
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_3p
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2�
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_2p
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_3�
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_3t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1�
Tensordot/transpose_1	Transpose0embedding_2/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������22
Tensordot/transpose_1�
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape_1�
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis�
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2
Tensordot/concat_2{
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
	Tensordot�
addAddV2Tensordot:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������2
add�
add_1AddV2add:z:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp!embedding_embedding_lookup_339655* 
_output_shapes
:
�2*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�229
7recommender_net/embedding/embeddings/Regularizer/Square�
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const�
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum�
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�528
6recommender_net/embedding/embeddings/Regularizer/mul/x�
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp#embedding_2_embedding_lookup_339673*
_output_shapes
:	�M2*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M22;
9recommender_net/embedding_2/embeddings/Regularizer/Square�
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const�
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum�
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x�
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mulf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup^embedding_2/embedding_lookup^embedding_3/embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp2�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_embedding_layer_call_fn_339780

inputs	
unknown:
�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3393632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
G__inference_embedding_1_layer_call_and_return_conditional_losses_339789

inputs	+
embedding_lookup_339783:
�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_339783inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339783*'
_output_shapes
:���������*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339783*'
_output_shapes
:���������2
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�

__inference__traced_save_339942
file_prefixC
?savev2_recommender_net_embedding_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_1_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_2_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_3_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopJ
Fsavev2_adam_recommender_net_embedding_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_1_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_2_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_3_embeddings_m_read_readvariableopJ
Fsavev2_adam_recommender_net_embedding_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_1_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_2_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_3_embeddings_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_recommender_net_embedding_embeddings_read_readvariableopAsavev2_recommender_net_embedding_1_embeddings_read_readvariableopAsavev2_recommender_net_embedding_2_embeddings_read_readvariableopAsavev2_recommender_net_embedding_3_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopFsavev2_adam_recommender_net_embedding_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_1_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_2_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_3_embeddings_m_read_readvariableopFsavev2_adam_recommender_net_embedding_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_1_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_2_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_3_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
�2:
�:	�M2:	�M: : : : : : : :
�2:
�:	�M2:	�M:
�2:
�:	�M2:	�M: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
�2:&"
 
_output_shapes
:
�:%!

_output_shapes
:	�M2:%!

_output_shapes
:	�M:
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
: :&"
 
_output_shapes
:
�2:&"
 
_output_shapes
:
�:%!

_output_shapes
:	�M2:%!

_output_shapes
:	�M:&"
 
_output_shapes
:
�2:&"
 
_output_shapes
:
�:%!

_output_shapes
:	�M2:%!

_output_shapes
:	�M:

_output_shapes
: 
�
�
0__inference_recommender_net_layer_call_fn_339487
input_1	
unknown:
�2
	unknown_0:
�
	unknown_1:	�M2
	unknown_2:	�M
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_recommender_net_layer_call_and_return_conditional_losses_3394762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�r
�
K__inference_recommender_net_layer_call_and_return_conditional_losses_339476

inputs	$
embedding_339364:
�2&
embedding_1_339381:
�%
embedding_2_339404:	�M2%
embedding_3_339421:	�M
identity��!embedding/StatefulPartitionedCall�#embedding_1/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�#embedding_3/StatefulPartitionedCall�Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2�
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice�
!embedding/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_339364*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3393632#
!embedding/StatefulPartitionedCall
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack�
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1�
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2�
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1�
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_1_339381*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3393802%
#embedding_1/StatefulPartitionedCall
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack�
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1�
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2�
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_2_339404*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_3394032%
#embedding_2/StatefulPartitionedCall
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack�
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1�
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2�
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3�
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_3_339421*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_3394202%
#embedding_3/StatefulPartitionedCallq
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axesc
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free|
Tensordot/ShapeShape*embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	Transpose*embedding/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:���������22
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshapeu
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axes_1g
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free_1�
Tensordot/Shape_1Shape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axis�
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2_2x
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_3/axis�
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_3p
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2�
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_2p
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_3�
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_3t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1�
Tensordot/transpose_1	Transpose,embedding_2/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������22
Tensordot/transpose_1�
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape_1�
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis�
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2
Tensordot/concat_2{
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
	Tensordot�
addAddV2Tensordot:output:0,embedding_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
add�
add_1AddV2add:z:0,embedding_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_339364* 
_output_shapes
:
�2*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�229
7recommender_net/embedding/embeddings/Regularizer/Square�
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const�
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum�
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�528
6recommender_net/embedding/embeddings/Regularizer/mul/x�
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_339404*
_output_shapes
:	�M2*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M22;
9recommender_net/embedding_2/embeddings/Regularizer/Square�
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const�
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum�
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x�
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mulf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp2�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_339851c
Orecommender_net_embedding_embeddings_regularizer_square_readvariableop_resource:
�2
identity��Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpOrecommender_net_embedding_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
�2*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�229
7recommender_net/embedding/embeddings/Regularizer/Square�
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const�
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum�
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�528
6recommender_net/embedding/embeddings/Regularizer/mul/x�
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul�
IdentityIdentity8recommender_net/embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity�
NoOpNoOpG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp
�
�
G__inference_embedding_2_layer_call_and_return_conditional_losses_339817

inputs	*
embedding_lookup_339805:	�M2
identity��embedding_lookup�Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_339805inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339805*'
_output_shapes
:���������2*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339805*'
_output_shapes
:���������22
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������22
embedding_lookup/Identity_1�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_339805*
_output_shapes
:	�M2*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M22;
9recommender_net/embedding_2/embeddings/Regularizer/Square�
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const�
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum�
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x�
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identity�
NoOpNoOp^embedding_lookupI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_339337
input_1	E
1recommender_net_embedding_embedding_lookup_339265:
�2G
3recommender_net_embedding_1_embedding_lookup_339274:
�F
3recommender_net_embedding_2_embedding_lookup_339283:	�M2F
3recommender_net_embedding_3_embedding_lookup_339292:	�M
identity��*recommender_net/embedding/embedding_lookup�,recommender_net/embedding_1/embedding_lookup�,recommender_net/embedding_2/embedding_lookup�,recommender_net/embedding_3/embedding_lookup�
#recommender_net/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#recommender_net/strided_slice/stack�
%recommender_net/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%recommender_net/strided_slice/stack_1�
%recommender_net/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%recommender_net/strided_slice/stack_2�
recommender_net/strided_sliceStridedSliceinput_1,recommender_net/strided_slice/stack:output:0.recommender_net/strided_slice/stack_1:output:0.recommender_net/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
recommender_net/strided_slice�
*recommender_net/embedding/embedding_lookupResourceGather1recommender_net_embedding_embedding_lookup_339265&recommender_net/strided_slice:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*D
_class:
86loc:@recommender_net/embedding/embedding_lookup/339265*'
_output_shapes
:���������2*
dtype02,
*recommender_net/embedding/embedding_lookup�
3recommender_net/embedding/embedding_lookup/IdentityIdentity3recommender_net/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@recommender_net/embedding/embedding_lookup/339265*'
_output_shapes
:���������225
3recommender_net/embedding/embedding_lookup/Identity�
5recommender_net/embedding/embedding_lookup/Identity_1Identity<recommender_net/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������227
5recommender_net/embedding/embedding_lookup/Identity_1�
%recommender_net/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%recommender_net/strided_slice_1/stack�
'recommender_net/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net/strided_slice_1/stack_1�
'recommender_net/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'recommender_net/strided_slice_1/stack_2�
recommender_net/strided_slice_1StridedSliceinput_1.recommender_net/strided_slice_1/stack:output:00recommender_net/strided_slice_1/stack_1:output:00recommender_net/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2!
recommender_net/strided_slice_1�
,recommender_net/embedding_1/embedding_lookupResourceGather3recommender_net_embedding_1_embedding_lookup_339274(recommender_net/strided_slice_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*F
_class<
:8loc:@recommender_net/embedding_1/embedding_lookup/339274*'
_output_shapes
:���������*
dtype02.
,recommender_net/embedding_1/embedding_lookup�
5recommender_net/embedding_1/embedding_lookup/IdentityIdentity5recommender_net/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@recommender_net/embedding_1/embedding_lookup/339274*'
_output_shapes
:���������27
5recommender_net/embedding_1/embedding_lookup/Identity�
7recommender_net/embedding_1/embedding_lookup/Identity_1Identity>recommender_net/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������29
7recommender_net/embedding_1/embedding_lookup/Identity_1�
%recommender_net/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%recommender_net/strided_slice_2/stack�
'recommender_net/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net/strided_slice_2/stack_1�
'recommender_net/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'recommender_net/strided_slice_2/stack_2�
recommender_net/strided_slice_2StridedSliceinput_1.recommender_net/strided_slice_2/stack:output:00recommender_net/strided_slice_2/stack_1:output:00recommender_net/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2!
recommender_net/strided_slice_2�
,recommender_net/embedding_2/embedding_lookupResourceGather3recommender_net_embedding_2_embedding_lookup_339283(recommender_net/strided_slice_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*F
_class<
:8loc:@recommender_net/embedding_2/embedding_lookup/339283*'
_output_shapes
:���������2*
dtype02.
,recommender_net/embedding_2/embedding_lookup�
5recommender_net/embedding_2/embedding_lookup/IdentityIdentity5recommender_net/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@recommender_net/embedding_2/embedding_lookup/339283*'
_output_shapes
:���������227
5recommender_net/embedding_2/embedding_lookup/Identity�
7recommender_net/embedding_2/embedding_lookup/Identity_1Identity>recommender_net/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������229
7recommender_net/embedding_2/embedding_lookup/Identity_1�
%recommender_net/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%recommender_net/strided_slice_3/stack�
'recommender_net/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'recommender_net/strided_slice_3/stack_1�
'recommender_net/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'recommender_net/strided_slice_3/stack_2�
recommender_net/strided_slice_3StridedSliceinput_1.recommender_net/strided_slice_3/stack:output:00recommender_net/strided_slice_3/stack_1:output:00recommender_net/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2!
recommender_net/strided_slice_3�
,recommender_net/embedding_3/embedding_lookupResourceGather3recommender_net_embedding_3_embedding_lookup_339292(recommender_net/strided_slice_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*F
_class<
:8loc:@recommender_net/embedding_3/embedding_lookup/339292*'
_output_shapes
:���������*
dtype02.
,recommender_net/embedding_3/embedding_lookup�
5recommender_net/embedding_3/embedding_lookup/IdentityIdentity5recommender_net/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@recommender_net/embedding_3/embedding_lookup/339292*'
_output_shapes
:���������27
5recommender_net/embedding_3/embedding_lookup/Identity�
7recommender_net/embedding_3/embedding_lookup/Identity_1Identity>recommender_net/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������29
7recommender_net/embedding_3/embedding_lookup/Identity_1�
recommender_net/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2 
recommender_net/Tensordot/axes�
recommender_net/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2 
recommender_net/Tensordot/free�
recommender_net/Tensordot/ShapeShape>recommender_net/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2!
recommender_net/Tensordot/Shape�
'recommender_net/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'recommender_net/Tensordot/GatherV2/axis�
"recommender_net/Tensordot/GatherV2GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/free:output:00recommender_net/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2$
"recommender_net/Tensordot/GatherV2�
)recommender_net/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net/Tensordot/GatherV2_1/axis�
$recommender_net/Tensordot/GatherV2_1GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/axes:output:02recommender_net/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$recommender_net/Tensordot/GatherV2_1�
recommender_net/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
recommender_net/Tensordot/Const�
recommender_net/Tensordot/ProdProd+recommender_net/Tensordot/GatherV2:output:0(recommender_net/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
recommender_net/Tensordot/Prod�
!recommender_net/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!recommender_net/Tensordot/Const_1�
 recommender_net/Tensordot/Prod_1Prod-recommender_net/Tensordot/GatherV2_1:output:0*recommender_net/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 recommender_net/Tensordot/Prod_1�
%recommender_net/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%recommender_net/Tensordot/concat/axis�
 recommender_net/Tensordot/concatConcatV2'recommender_net/Tensordot/free:output:0'recommender_net/Tensordot/axes:output:0.recommender_net/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 recommender_net/Tensordot/concat�
recommender_net/Tensordot/stackPack'recommender_net/Tensordot/Prod:output:0)recommender_net/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
recommender_net/Tensordot/stack�
#recommender_net/Tensordot/transpose	Transpose>recommender_net/embedding/embedding_lookup/Identity_1:output:0)recommender_net/Tensordot/concat:output:0*
T0*'
_output_shapes
:���������22%
#recommender_net/Tensordot/transpose�
!recommender_net/Tensordot/ReshapeReshape'recommender_net/Tensordot/transpose:y:0(recommender_net/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2#
!recommender_net/Tensordot/Reshape�
 recommender_net/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 recommender_net/Tensordot/axes_1�
 recommender_net/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2"
 recommender_net/Tensordot/free_1�
!recommender_net/Tensordot/Shape_1Shape@recommender_net/embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2#
!recommender_net/Tensordot/Shape_1�
)recommender_net/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net/Tensordot/GatherV2_2/axis�
$recommender_net/Tensordot/GatherV2_2GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/free_1:output:02recommender_net/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2&
$recommender_net/Tensordot/GatherV2_2�
)recommender_net/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)recommender_net/Tensordot/GatherV2_3/axis�
$recommender_net/Tensordot/GatherV2_3GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/axes_1:output:02recommender_net/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$recommender_net/Tensordot/GatherV2_3�
!recommender_net/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2#
!recommender_net/Tensordot/Const_2�
 recommender_net/Tensordot/Prod_2Prod-recommender_net/Tensordot/GatherV2_2:output:0*recommender_net/Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2"
 recommender_net/Tensordot/Prod_2�
!recommender_net/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2#
!recommender_net/Tensordot/Const_3�
 recommender_net/Tensordot/Prod_3Prod-recommender_net/Tensordot/GatherV2_3:output:0*recommender_net/Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2"
 recommender_net/Tensordot/Prod_3�
'recommender_net/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'recommender_net/Tensordot/concat_1/axis�
"recommender_net/Tensordot/concat_1ConcatV2)recommender_net/Tensordot/axes_1:output:0)recommender_net/Tensordot/free_1:output:00recommender_net/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"recommender_net/Tensordot/concat_1�
!recommender_net/Tensordot/stack_1Pack)recommender_net/Tensordot/Prod_3:output:0)recommender_net/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2#
!recommender_net/Tensordot/stack_1�
%recommender_net/Tensordot/transpose_1	Transpose@recommender_net/embedding_2/embedding_lookup/Identity_1:output:0+recommender_net/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������22'
%recommender_net/Tensordot/transpose_1�
#recommender_net/Tensordot/Reshape_1Reshape)recommender_net/Tensordot/transpose_1:y:0*recommender_net/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:������������������2%
#recommender_net/Tensordot/Reshape_1�
 recommender_net/Tensordot/MatMulMatMul*recommender_net/Tensordot/Reshape:output:0,recommender_net/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������2"
 recommender_net/Tensordot/MatMul�
'recommender_net/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'recommender_net/Tensordot/concat_2/axis�
"recommender_net/Tensordot/concat_2ConcatV2+recommender_net/Tensordot/GatherV2:output:0-recommender_net/Tensordot/GatherV2_2:output:00recommender_net/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2$
"recommender_net/Tensordot/concat_2�
recommender_net/TensordotReshape*recommender_net/Tensordot/MatMul:product:0+recommender_net/Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
recommender_net/Tensordot�
recommender_net/addAddV2"recommender_net/Tensordot:output:0@recommender_net/embedding_1/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������2
recommender_net/add�
recommender_net/add_1AddV2recommender_net/add:z:0@recommender_net/embedding_3/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������2
recommender_net/add_1�
recommender_net/SigmoidSigmoidrecommender_net/add_1:z:0*
T0*'
_output_shapes
:���������2
recommender_net/Sigmoidv
IdentityIdentityrecommender_net/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp+^recommender_net/embedding/embedding_lookup-^recommender_net/embedding_1/embedding_lookup-^recommender_net/embedding_2/embedding_lookup-^recommender_net/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2X
*recommender_net/embedding/embedding_lookup*recommender_net/embedding/embedding_lookup2\
,recommender_net/embedding_1/embedding_lookup,recommender_net/embedding_1/embedding_lookup2\
,recommender_net/embedding_2/embedding_lookup,recommender_net/embedding_2/embedding_lookup2\
,recommender_net/embedding_3/embedding_lookup,recommender_net/embedding_3/embedding_lookup:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
G__inference_embedding_1_layer_call_and_return_conditional_losses_339380

inputs	+
embedding_lookup_339374:
�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_339374inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339374*'
_output_shapes
:���������*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339374*'
_output_shapes
:���������2
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_embedding_2_layer_call_fn_339824

inputs	
unknown:	�M2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_3394032
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�r
�
K__inference_recommender_net_layer_call_and_return_conditional_losses_339615
input_1	$
embedding_339539:
�2&
embedding_1_339546:
�%
embedding_2_339553:	�M2%
embedding_3_339560:	�M
identity��!embedding/StatefulPartitionedCall�#embedding_1/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�#embedding_3/StatefulPartitionedCall�Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2�
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice�
!embedding/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_339539*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3393632#
!embedding/StatefulPartitionedCall
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack�
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1�
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2�
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1�
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_1_339546*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3393802%
#embedding_1/StatefulPartitionedCall
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack�
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1�
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2�
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_2_339553*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_3394032%
#embedding_2/StatefulPartitionedCall
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack�
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1�
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2�
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3�
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_3_339560*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_3394202%
#embedding_3/StatefulPartitionedCallq
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axesc
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free|
Tensordot/ShapeShape*embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	Transpose*embedding/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:���������22
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshapeu
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axes_1g
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free_1�
Tensordot/Shape_1Shape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axis�
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2_2x
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_3/axis�
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_3p
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2�
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_2p
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_3�
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_3t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1�
Tensordot/transpose_1	Transpose,embedding_2/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������22
Tensordot/transpose_1�
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape_1�
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis�
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2
Tensordot/concat_2{
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
	Tensordot�
addAddV2Tensordot:output:0,embedding_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
add�
add_1AddV2add:z:0,embedding_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_339539* 
_output_shapes
:
�2*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�229
7recommender_net/embedding/embeddings/Regularizer/Square�
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const�
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum�
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�528
6recommender_net/embedding/embeddings/Regularizer/mul/x�
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_339553*
_output_shapes
:	�M2*
dtype02J
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp�
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M22;
9recommender_net/embedding_2/embeddings/Regularizer/Square�
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2:
8recommender_net/embedding_2/embeddings/Regularizer/Const�
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/Sum�
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52:
8recommender_net/embedding_2/embeddings/Regularizer/mul/x�
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 28
6recommender_net/embedding_2/embeddings/Regularizer/mulf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp2�
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
E__inference_embedding_layer_call_and_return_conditional_losses_339363

inputs	+
embedding_lookup_339351:
�2
identity��embedding_lookup�Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_339351inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339351*'
_output_shapes
:���������2*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339351*'
_output_shapes
:���������22
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������22
embedding_lookup/Identity_1�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_339351* 
_output_shapes
:
�2*
dtype02H
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp�
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�229
7recommender_net/embedding/embeddings/Regularizer/Square�
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       28
6recommender_net/embedding/embeddings/Regularizer/Const�
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/Sum�
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�528
6recommender_net/embedding/embeddings/Regularizer/mul/x�
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 26
4recommender_net/embedding/embeddings/Regularizer/mul
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identity�
NoOpNoOp^embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
G__inference_embedding_3_layer_call_and_return_conditional_losses_339833

inputs	*
embedding_lookup_339827:	�M
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_339827inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339827*'
_output_shapes
:���������*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339827*'
_output_shapes
:���������2
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
G__inference_embedding_3_layer_call_and_return_conditional_losses_339420

inputs	*
embedding_lookup_339414:	�M
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_339414inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/339414*'
_output_shapes
:���������*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/339414*'
_output_shapes
:���������2
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�X
�
"__inference__traced_restore_340009
file_prefixI
5assignvariableop_recommender_net_embedding_embeddings:
�2M
9assignvariableop_1_recommender_net_embedding_1_embeddings:
�L
9assignvariableop_2_recommender_net_embedding_2_embeddings:	�M2L
9assignvariableop_3_recommender_net_embedding_3_embeddings:	�M&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: S
?assignvariableop_11_adam_recommender_net_embedding_embeddings_m:
�2U
Aassignvariableop_12_adam_recommender_net_embedding_1_embeddings_m:
�T
Aassignvariableop_13_adam_recommender_net_embedding_2_embeddings_m:	�M2T
Aassignvariableop_14_adam_recommender_net_embedding_3_embeddings_m:	�MS
?assignvariableop_15_adam_recommender_net_embedding_embeddings_v:
�2U
Aassignvariableop_16_adam_recommender_net_embedding_1_embeddings_v:
�T
Aassignvariableop_17_adam_recommender_net_embedding_2_embeddings_v:	�M2T
Aassignvariableop_18_adam_recommender_net_embedding_3_embeddings_v:	�M
identity_20��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp5assignvariableop_recommender_net_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp9assignvariableop_1_recommender_net_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp9assignvariableop_2_recommender_net_embedding_2_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp9assignvariableop_3_recommender_net_embedding_3_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp?assignvariableop_11_adam_recommender_net_embedding_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpAassignvariableop_12_adam_recommender_net_embedding_1_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpAassignvariableop_13_adam_recommender_net_embedding_2_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpAassignvariableop_14_adam_recommender_net_embedding_3_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp?assignvariableop_15_adam_recommender_net_embedding_embeddings_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpAassignvariableop_16_adam_recommender_net_embedding_1_embeddings_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpAassignvariableop_17_adam_recommender_net_embedding_2_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpAassignvariableop_18_adam_recommender_net_embedding_3_embeddings_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_189
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_19f
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_20�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
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
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0	���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�T
�
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
regularization_losses
trainable_variables
	variables
		keras_api


signatures
*J&call_and_return_all_conditional_losses
K_default_save_signature
L__call__"
_tf_keras_model
�

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
*M&call_and_return_all_conditional_losses
N__call__"
_tf_keras_layer
�

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"
_tf_keras_layer
�

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"
_tf_keras_layer
�

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"
_tf_keras_layer
�
iter

 beta_1

!beta_2
	"decay
#learning_ratemBmCmDmEvFvGvHvI"
	optimizer
.
U0
V1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
�
$layer_metrics
%layer_regularization_losses
regularization_losses
&metrics

'layers
(non_trainable_variables
trainable_variables
	variables
L__call__
K_default_save_signature
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
,
Wserving_default"
signature_map
8:6
�22$recommender_net/embedding/embeddings
'
0"
trackable_list_wrapper
'
U0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
)layer_metrics
	variables
*layer_regularization_losses
regularization_losses
+metrics
,non_trainable_variables
trainable_variables

-layers
N__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
::8
�2&recommender_net/embedding_1/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
.layer_metrics
	variables
/layer_regularization_losses
regularization_losses
0metrics
1non_trainable_variables
trainable_variables

2layers
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
9:7	�M22&recommender_net/embedding_2/embeddings
'
0"
trackable_list_wrapper
'
V0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
3layer_metrics
	variables
4layer_regularization_losses
regularization_losses
5metrics
6non_trainable_variables
trainable_variables

7layers
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
9:7	�M2&recommender_net/embedding_3/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
8layer_metrics
	variables
9layer_regularization_losses
regularization_losses
:metrics
;non_trainable_variables
trainable_variables

<layers
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
U0"
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
'
V0"
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
N
	>total
	?count
@	variables
A	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
>0
?1"
trackable_list_wrapper
-
@	variables"
_generic_user_object
=:;
�22+Adam/recommender_net/embedding/embeddings/m
?:=
�2-Adam/recommender_net/embedding_1/embeddings/m
>:<	�M22-Adam/recommender_net/embedding_2/embeddings/m
>:<	�M2-Adam/recommender_net/embedding_3/embeddings/m
=:;
�22+Adam/recommender_net/embedding/embeddings/v
?:=
�2-Adam/recommender_net/embedding_1/embeddings/v
>:<	�M22-Adam/recommender_net/embedding_2/embeddings/v
>:<	�M2-Adam/recommender_net/embedding_3/embeddings/v
�2�
K__inference_recommender_net_layer_call_and_return_conditional_losses_339739
K__inference_recommender_net_layer_call_and_return_conditional_losses_339615�
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
!__inference__wrapped_model_339337input_1"�
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
�2�
0__inference_recommender_net_layer_call_fn_339487
0__inference_recommender_net_layer_call_fn_339752�
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
�2�
E__inference_embedding_layer_call_and_return_conditional_losses_339773�
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
�2�
*__inference_embedding_layer_call_fn_339780�
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
�2�
G__inference_embedding_1_layer_call_and_return_conditional_losses_339789�
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
�2�
,__inference_embedding_1_layer_call_fn_339796�
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
�2�
G__inference_embedding_2_layer_call_and_return_conditional_losses_339817�
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
�2�
,__inference_embedding_2_layer_call_fn_339824�
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
�2�
G__inference_embedding_3_layer_call_and_return_conditional_losses_339833�
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
�2�
,__inference_embedding_3_layer_call_fn_339840�
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
�2�
__inference_loss_fn_0_339851�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_339862�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
$__inference_signature_wrapper_339648input_1"�
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
 �
!__inference__wrapped_model_339337m0�-
&�#
!�
input_1���������	
� "3�0
.
output_1"�
output_1����������
G__inference_embedding_1_layer_call_and_return_conditional_losses_339789W+�(
!�
�
inputs���������	
� "%�"
�
0���������
� z
,__inference_embedding_1_layer_call_fn_339796J+�(
!�
�
inputs���������	
� "�����������
G__inference_embedding_2_layer_call_and_return_conditional_losses_339817W+�(
!�
�
inputs���������	
� "%�"
�
0���������2
� z
,__inference_embedding_2_layer_call_fn_339824J+�(
!�
�
inputs���������	
� "����������2�
G__inference_embedding_3_layer_call_and_return_conditional_losses_339833W+�(
!�
�
inputs���������	
� "%�"
�
0���������
� z
,__inference_embedding_3_layer_call_fn_339840J+�(
!�
�
inputs���������	
� "�����������
E__inference_embedding_layer_call_and_return_conditional_losses_339773W+�(
!�
�
inputs���������	
� "%�"
�
0���������2
� x
*__inference_embedding_layer_call_fn_339780J+�(
!�
�
inputs���������	
� "����������2;
__inference_loss_fn_0_339851�

� 
� "� ;
__inference_loss_fn_1_339862�

� 
� "� �
K__inference_recommender_net_layer_call_and_return_conditional_losses_339615_0�-
&�#
!�
input_1���������	
� "%�"
�
0���������
� �
K__inference_recommender_net_layer_call_and_return_conditional_losses_339739^/�,
%�"
 �
inputs���������	
� "%�"
�
0���������
� �
0__inference_recommender_net_layer_call_fn_339487R0�-
&�#
!�
input_1���������	
� "�����������
0__inference_recommender_net_layer_call_fn_339752Q/�,
%�"
 �
inputs���������	
� "�����������
$__inference_signature_wrapper_339648x;�8
� 
1�.
,
input_1!�
input_1���������	"3�0
.
output_1"�
output_1���������