Мт
Ў®
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
ј
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
≠
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%ЌћL>"
Ttype0:
2
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
delete_old_dirsbool(И
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
Н
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
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718сь
Й
generator/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dА*'
shared_namegenerator/dense/kernel
В
*generator/dense/kernel/Read/ReadVariableOpReadVariableOpgenerator/dense/kernel*
_output_shapes
:	dА*
dtype0
Б
generator/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_namegenerator/dense/bias
z
(generator/dense/bias/Read/ReadVariableOpReadVariableOpgenerator/dense/bias*
_output_shapes	
:А*
dtype0
Ш
generator/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*/
shared_name generator/embedding/embeddings
С
2generator/embedding/embeddings/Read/ReadVariableOpReadVariableOpgenerator/embedding/embeddings*
_output_shapes

:
*
dtype0
М
generator/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*)
shared_namegenerator/dense_1/kernel
Е
,generator/dense_1/kernel/Read/ReadVariableOpReadVariableOpgenerator/dense_1/kernel*
_output_shapes

:
*
dtype0
Д
generator/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namegenerator/dense_1/bias
}
*generator/dense_1/bias/Read/ReadVariableOpReadVariableOpgenerator/dense_1/bias*
_output_shapes
:*
dtype0
®
!generator/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АГ*2
shared_name#!generator/conv2d_transpose/kernel
°
5generator/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp!generator/conv2d_transpose/kernel*(
_output_shapes
:АГ*
dtype0
Ч
generator/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!generator/conv2d_transpose/bias
Р
3generator/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpgenerator/conv2d_transpose/bias*
_output_shapes	
:А*
dtype0
ђ
#generator/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*4
shared_name%#generator/conv2d_transpose_1/kernel
•
7generator/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp#generator/conv2d_transpose_1/kernel*(
_output_shapes
:АА*
dtype0
Ы
!generator/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!generator/conv2d_transpose_1/bias
Ф
5generator/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp!generator/conv2d_transpose_1/bias*
_output_shapes	
:А*
dtype0
Ђ
#generator/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*4
shared_name%#generator/conv2d_transpose_2/kernel
§
7generator/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp#generator/conv2d_transpose_2/kernel*'
_output_shapes
:@А*
dtype0
Ъ
!generator/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!generator/conv2d_transpose_2/bias
У
5generator/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp!generator/conv2d_transpose_2/bias*
_output_shapes
:@*
dtype0
™
#generator/conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#generator/conv2d_transpose_3/kernel
£
7generator/conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOp#generator/conv2d_transpose_3/kernel*&
_output_shapes
:@*
dtype0
Ъ
!generator/conv2d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!generator/conv2d_transpose_3/bias
У
5generator/conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOp!generator/conv2d_transpose_3/bias*
_output_shapes
:*
dtype0

NoOpNoOp
Х%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*–$
value∆$B√$ BЉ$
Ќ

dense1
reshape1
	embed

dense2
reshape2
	conv1
	conv2
	conv3
		conv4

trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
R
$trainable_variables
%	variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
h

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
h

:kernel
;bias
<trainable_variables
=	variables
>regularization_losses
?	keras_api
^
0
1
2
3
4
(5
)6
.7
/8
49
510
:11
;12
^
0
1
2
3
4
(5
)6
.7
/8
49
510
:11
;12
 
≠
@non_trainable_variables

Alayers

trainable_variables
	variables
regularization_losses
Bmetrics
Clayer_metrics
Dlayer_regularization_losses
 
TR
VARIABLE_VALUEgenerator/dense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEgenerator/dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
Enon_trainable_variables

Flayers
trainable_variables
	variables
regularization_losses
Gmetrics
Hlayer_metrics
Ilayer_regularization_losses
 
 
 
≠
Jnon_trainable_variables

Klayers
trainable_variables
	variables
regularization_losses
Lmetrics
Mlayer_metrics
Nlayer_regularization_losses
_]
VARIABLE_VALUEgenerator/embedding/embeddings+embed/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
≠
Onon_trainable_variables

Players
trainable_variables
	variables
regularization_losses
Qmetrics
Rlayer_metrics
Slayer_regularization_losses
VT
VARIABLE_VALUEgenerator/dense_1/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEgenerator/dense_1/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
Tnon_trainable_variables

Ulayers
 trainable_variables
!	variables
"regularization_losses
Vmetrics
Wlayer_metrics
Xlayer_regularization_losses
 
 
 
≠
Ynon_trainable_variables

Zlayers
$trainable_variables
%	variables
&regularization_losses
[metrics
\layer_metrics
]layer_regularization_losses
^\
VARIABLE_VALUE!generator/conv2d_transpose/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEgenerator/conv2d_transpose/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
≠
^non_trainable_variables

_layers
*trainable_variables
+	variables
,regularization_losses
`metrics
alayer_metrics
blayer_regularization_losses
`^
VARIABLE_VALUE#generator/conv2d_transpose_1/kernel'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE!generator/conv2d_transpose_1/bias%conv2/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
≠
cnon_trainable_variables

dlayers
0trainable_variables
1	variables
2regularization_losses
emetrics
flayer_metrics
glayer_regularization_losses
`^
VARIABLE_VALUE#generator/conv2d_transpose_2/kernel'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE!generator/conv2d_transpose_2/bias%conv3/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
≠
hnon_trainable_variables

ilayers
6trainable_variables
7	variables
8regularization_losses
jmetrics
klayer_metrics
llayer_regularization_losses
`^
VARIABLE_VALUE#generator/conv2d_transpose_3/kernel'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE!generator/conv2d_transpose_3/bias%conv4/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
≠
mnon_trainable_variables

nlayers
<trainable_variables
=	variables
>regularization_losses
ometrics
player_metrics
qlayer_regularization_losses
 
?
0
1
2
3
4
5
6
7
	8
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
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:€€€€€€€€€d*
dtype0*
shape:€€€€€€€€€d
z
serving_default_input_2Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Н
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2generator/dense/kernelgenerator/dense/biasgenerator/embedding/embeddingsgenerator/dense_1/kernelgenerator/dense_1/bias!generator/conv2d_transpose/kernelgenerator/conv2d_transpose/bias#generator/conv2d_transpose_1/kernel!generator/conv2d_transpose_1/bias#generator/conv2d_transpose_2/kernel!generator/conv2d_transpose_2/bias#generator/conv2d_transpose_3/kernel!generator/conv2d_transpose_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_226887
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ћ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*generator/dense/kernel/Read/ReadVariableOp(generator/dense/bias/Read/ReadVariableOp2generator/embedding/embeddings/Read/ReadVariableOp,generator/dense_1/kernel/Read/ReadVariableOp*generator/dense_1/bias/Read/ReadVariableOp5generator/conv2d_transpose/kernel/Read/ReadVariableOp3generator/conv2d_transpose/bias/Read/ReadVariableOp7generator/conv2d_transpose_1/kernel/Read/ReadVariableOp5generator/conv2d_transpose_1/bias/Read/ReadVariableOp7generator/conv2d_transpose_2/kernel/Read/ReadVariableOp5generator/conv2d_transpose_2/bias/Read/ReadVariableOp7generator/conv2d_transpose_3/kernel/Read/ReadVariableOp5generator/conv2d_transpose_3/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_227063
¬
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamegenerator/dense/kernelgenerator/dense/biasgenerator/embedding/embeddingsgenerator/dense_1/kernelgenerator/dense_1/bias!generator/conv2d_transpose/kernelgenerator/conv2d_transpose/bias#generator/conv2d_transpose_1/kernel!generator/conv2d_transpose_1/bias#generator/conv2d_transpose_2/kernel!generator/conv2d_transpose_2/bias#generator/conv2d_transpose_3/kernel!generator/conv2d_transpose_3/bias*
Tin
2*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_227112бҐ
В
х
$__inference_signature_wrapper_226887
input_1
input_2
unknown:	dА
	unknown_0:	А
	unknown_1:

	unknown_2:

	unknown_3:%
	unknown_4:АГ
	unknown_5:	А%
	unknown_6:АА
	unknown_7:	А$
	unknown_8:@А
	unknown_9:@$

unknown_10:@

unknown_11:
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_2264652
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€d:€€€€€€€€€: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
€
~
*__inference_embedding_layer_call_fn_226932

inputs
unknown:

identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2266972
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
©
Ђ
3__inference_conv2d_transpose_1_layer_call_fn_226557

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2265472
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ђ
Х
(__inference_dense_1_layer_call_fn_226951

inputs
unknown:

	unknown_0:
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_2267312
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ў
F
*__inference_reshape_1_layer_call_fn_226986

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_2267512
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
м8
І
E__inference_generator_layer_call_and_return_conditional_losses_226780
input_1
input_2
dense_226665:	dА
dense_226667:	А"
embedding_226698:
 
dense_1_226732:

dense_1_226734:3
conv2d_transpose_226755:АГ&
conv2d_transpose_226757:	А5
conv2d_transpose_1_226761:АА(
conv2d_transpose_1_226763:	А4
conv2d_transpose_2_226767:@А'
conv2d_transpose_2_226769:@3
conv2d_transpose_3_226773:@'
conv2d_transpose_3_226775:
identityИҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐ*conv2d_transpose_3/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallК
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_226665dense_226667*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2266642
dense/StatefulPartitionedCallu
	LeakyRelu	LeakyRelu&dense/StatefulPartitionedCall:output:0*(
_output_shapes
:€€€€€€€€€А2
	LeakyReluо
reshape/PartitionedCallPartitionedCallLeakyRelu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_2266852
reshape/PartitionedCallН
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_226698*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2266972#
!embedding/StatefulPartitionedCallЇ
dense_1/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_1_226732dense_1_226734*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_2267312!
dense_1/StatefulPartitionedCallД
reshape_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_2267512
reshape_1/PartitionedCalle
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
concat/axisЉ
concatConcatV2 reshape/PartitionedCall:output:0"reshape_1/PartitionedCall:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€Г2
concatг
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0conv2d_transpose_226755conv2d_transpose_226757*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_2264992*
(conv2d_transpose/StatefulPartitionedCallЮ
LeakyRelu_1	LeakyRelu1conv2d_transpose/StatefulPartitionedCall:output:0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2
LeakyRelu_1ч
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu_1:activations:0conv2d_transpose_1_226761conv2d_transpose_1_226763*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2265472,
*conv2d_transpose_1/StatefulPartitionedCall†
LeakyRelu_2	LeakyRelu3conv2d_transpose_1/StatefulPartitionedCall:output:0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2
LeakyRelu_2ц
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu_2:activations:0conv2d_transpose_2_226767conv2d_transpose_2_226769*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2265912,
*conv2d_transpose_2/StatefulPartitionedCallЯ
LeakyRelu_3	LeakyRelu3conv2d_transpose_2/StatefulPartitionedCall:output:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
LeakyRelu_3ц
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu_3:activations:0conv2d_transpose_3_226773conv2d_transpose_3_226775*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2266392,
*conv2d_transpose_3/StatefulPartitionedCallХ
TanhTanh3conv2d_transpose_3/StatefulPartitionedCall:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
TanhО
IdentityIdentityTanh:y:0)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€d:€€€€€€€€€: : : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
У

Ґ
E__inference_embedding_layer_call_and_return_conditional_losses_226697

inputs)
embedding_lookup_226691:

identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_226691Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/226691*+
_output_shapes
:€€€€€€€€€
*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/226691*+
_output_shapes
:€€€€€€€€€
2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
embedding_lookup/Identity_1П
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
–(
Ы
__inference__traced_save_227063
file_prefix5
1savev2_generator_dense_kernel_read_readvariableop3
/savev2_generator_dense_bias_read_readvariableop=
9savev2_generator_embedding_embeddings_read_readvariableop7
3savev2_generator_dense_1_kernel_read_readvariableop5
1savev2_generator_dense_1_bias_read_readvariableop@
<savev2_generator_conv2d_transpose_kernel_read_readvariableop>
:savev2_generator_conv2d_transpose_bias_read_readvariableopB
>savev2_generator_conv2d_transpose_1_kernel_read_readvariableop@
<savev2_generator_conv2d_transpose_1_bias_read_readvariableopB
>savev2_generator_conv2d_transpose_2_kernel_read_readvariableop@
<savev2_generator_conv2d_transpose_2_bias_read_readvariableopB
>savev2_generator_conv2d_transpose_3_kernel_read_readvariableop@
<savev2_generator_conv2d_transpose_3_bias_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename≤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ƒ
valueЇBЈB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB+embed/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names§
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices¬
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_generator_dense_kernel_read_readvariableop/savev2_generator_dense_bias_read_readvariableop9savev2_generator_embedding_embeddings_read_readvariableop3savev2_generator_dense_1_kernel_read_readvariableop1savev2_generator_dense_1_bias_read_readvariableop<savev2_generator_conv2d_transpose_kernel_read_readvariableop:savev2_generator_conv2d_transpose_bias_read_readvariableop>savev2_generator_conv2d_transpose_1_kernel_read_readvariableop<savev2_generator_conv2d_transpose_1_bias_read_readvariableop>savev2_generator_conv2d_transpose_2_kernel_read_readvariableop<savev2_generator_conv2d_transpose_2_bias_read_readvariableop>savev2_generator_conv2d_transpose_3_kernel_read_readvariableop<savev2_generator_conv2d_transpose_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*ђ
_input_shapesЪ
Ч: :	dА:А:
:
::АГ:А:АА:А:@А:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	dА:!

_output_shapes	
:А:$ 

_output_shapes

:
:$ 

_output_shapes

:
: 

_output_shapes
::.*
(
_output_shapes
:АГ:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!	

_output_shapes	
:А:-
)
'
_output_shapes
:@А: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: 
Оц
п
!__inference__wrapped_model_226465
input_1
input_2A
.generator_dense_matmul_readvariableop_resource:	dА>
/generator_dense_biasadd_readvariableop_resource:	А=
+generator_embedding_embedding_lookup_226341:
E
3generator_dense_1_tensordot_readvariableop_resource:
?
1generator_dense_1_biasadd_readvariableop_resource:_
Cgenerator_conv2d_transpose_conv2d_transpose_readvariableop_resource:АГI
:generator_conv2d_transpose_biasadd_readvariableop_resource:	Аa
Egenerator_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:ААK
<generator_conv2d_transpose_1_biasadd_readvariableop_resource:	А`
Egenerator_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@АJ
<generator_conv2d_transpose_2_biasadd_readvariableop_resource:@_
Egenerator_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@J
<generator_conv2d_transpose_3_biasadd_readvariableop_resource:
identityИҐ1generator/conv2d_transpose/BiasAdd/ReadVariableOpҐ:generator/conv2d_transpose/conv2d_transpose/ReadVariableOpҐ3generator/conv2d_transpose_1/BiasAdd/ReadVariableOpҐ<generator/conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ3generator/conv2d_transpose_2/BiasAdd/ReadVariableOpҐ<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ3generator/conv2d_transpose_3/BiasAdd/ReadVariableOpҐ<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOpҐ&generator/dense/BiasAdd/ReadVariableOpҐ%generator/dense/MatMul/ReadVariableOpҐ(generator/dense_1/BiasAdd/ReadVariableOpҐ*generator/dense_1/Tensordot/ReadVariableOpҐ$generator/embedding/embedding_lookupЊ
%generator/dense/MatMul/ReadVariableOpReadVariableOp.generator_dense_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype02'
%generator/dense/MatMul/ReadVariableOp•
generator/dense/MatMulMatMulinput_1-generator/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
generator/dense/MatMulљ
&generator/dense/BiasAdd/ReadVariableOpReadVariableOp/generator_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02(
&generator/dense/BiasAdd/ReadVariableOp¬
generator/dense/BiasAddBiasAdd generator/dense/MatMul:product:0.generator/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
generator/dense/BiasAddГ
generator/LeakyRelu	LeakyRelu generator/dense/BiasAdd:output:0*(
_output_shapes
:€€€€€€€€€А2
generator/LeakyReluГ
generator/reshape/ShapeShape!generator/LeakyRelu:activations:0*
T0*
_output_shapes
:2
generator/reshape/ShapeШ
%generator/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%generator/reshape/strided_slice/stackЬ
'generator/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'generator/reshape/strided_slice/stack_1Ь
'generator/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'generator/reshape/strided_slice/stack_2ќ
generator/reshape/strided_sliceStridedSlice generator/reshape/Shape:output:0.generator/reshape/strided_slice/stack:output:00generator/reshape/strided_slice/stack_1:output:00generator/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
generator/reshape/strided_sliceИ
!generator/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!generator/reshape/Reshape/shape/1И
!generator/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!generator/reshape/Reshape/shape/2Й
!generator/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2#
!generator/reshape/Reshape/shape/3¶
generator/reshape/Reshape/shapePack(generator/reshape/strided_slice:output:0*generator/reshape/Reshape/shape/1:output:0*generator/reshape/Reshape/shape/2:output:0*generator/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2!
generator/reshape/Reshape/shape…
generator/reshape/ReshapeReshape!generator/LeakyRelu:activations:0(generator/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
generator/reshape/ReshapeЖ
generator/embedding/CastCastinput_2*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
generator/embedding/Castб
$generator/embedding/embedding_lookupResourceGather+generator_embedding_embedding_lookup_226341generator/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@generator/embedding/embedding_lookup/226341*+
_output_shapes
:€€€€€€€€€
*
dtype02&
$generator/embedding/embedding_lookupљ
-generator/embedding/embedding_lookup/IdentityIdentity-generator/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@generator/embedding/embedding_lookup/226341*+
_output_shapes
:€€€€€€€€€
2/
-generator/embedding/embedding_lookup/Identity№
/generator/embedding/embedding_lookup/Identity_1Identity6generator/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
21
/generator/embedding/embedding_lookup/Identity_1ћ
*generator/dense_1/Tensordot/ReadVariableOpReadVariableOp3generator_dense_1_tensordot_readvariableop_resource*
_output_shapes

:
*
dtype02,
*generator/dense_1/Tensordot/ReadVariableOpО
 generator/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 generator/dense_1/Tensordot/axesХ
 generator/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 generator/dense_1/Tensordot/freeЃ
!generator/dense_1/Tensordot/ShapeShape8generator/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2#
!generator/dense_1/Tensordot/ShapeШ
)generator/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)generator/dense_1/Tensordot/GatherV2/axisЂ
$generator/dense_1/Tensordot/GatherV2GatherV2*generator/dense_1/Tensordot/Shape:output:0)generator/dense_1/Tensordot/free:output:02generator/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$generator/dense_1/Tensordot/GatherV2Ь
+generator/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+generator/dense_1/Tensordot/GatherV2_1/axis±
&generator/dense_1/Tensordot/GatherV2_1GatherV2*generator/dense_1/Tensordot/Shape:output:0)generator/dense_1/Tensordot/axes:output:04generator/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&generator/dense_1/Tensordot/GatherV2_1Р
!generator/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!generator/dense_1/Tensordot/Const»
 generator/dense_1/Tensordot/ProdProd-generator/dense_1/Tensordot/GatherV2:output:0*generator/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 generator/dense_1/Tensordot/ProdФ
#generator/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#generator/dense_1/Tensordot/Const_1–
"generator/dense_1/Tensordot/Prod_1Prod/generator/dense_1/Tensordot/GatherV2_1:output:0,generator/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"generator/dense_1/Tensordot/Prod_1Ф
'generator/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'generator/dense_1/Tensordot/concat/axisК
"generator/dense_1/Tensordot/concatConcatV2)generator/dense_1/Tensordot/free:output:0)generator/dense_1/Tensordot/axes:output:00generator/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"generator/dense_1/Tensordot/concat‘
!generator/dense_1/Tensordot/stackPack)generator/dense_1/Tensordot/Prod:output:0+generator/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!generator/dense_1/Tensordot/stackш
%generator/dense_1/Tensordot/transpose	Transpose8generator/embedding/embedding_lookup/Identity_1:output:0+generator/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2'
%generator/dense_1/Tensordot/transposeз
#generator/dense_1/Tensordot/ReshapeReshape)generator/dense_1/Tensordot/transpose:y:0*generator/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2%
#generator/dense_1/Tensordot/Reshapeж
"generator/dense_1/Tensordot/MatMulMatMul,generator/dense_1/Tensordot/Reshape:output:02generator/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"generator/dense_1/Tensordot/MatMulФ
#generator/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#generator/dense_1/Tensordot/Const_2Ш
)generator/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)generator/dense_1/Tensordot/concat_1/axisЧ
$generator/dense_1/Tensordot/concat_1ConcatV2-generator/dense_1/Tensordot/GatherV2:output:0,generator/dense_1/Tensordot/Const_2:output:02generator/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$generator/dense_1/Tensordot/concat_1Ў
generator/dense_1/TensordotReshape,generator/dense_1/Tensordot/MatMul:product:0-generator/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
generator/dense_1/Tensordot¬
(generator/dense_1/BiasAdd/ReadVariableOpReadVariableOp1generator_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(generator/dense_1/BiasAdd/ReadVariableOpѕ
generator/dense_1/BiasAddBiasAdd$generator/dense_1/Tensordot:output:00generator/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
generator/dense_1/BiasAddИ
generator/reshape_1/ShapeShape"generator/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
generator/reshape_1/ShapeЬ
'generator/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'generator/reshape_1/strided_slice/stack†
)generator/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)generator/reshape_1/strided_slice/stack_1†
)generator/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)generator/reshape_1/strided_slice/stack_2Џ
!generator/reshape_1/strided_sliceStridedSlice"generator/reshape_1/Shape:output:00generator/reshape_1/strided_slice/stack:output:02generator/reshape_1/strided_slice/stack_1:output:02generator/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!generator/reshape_1/strided_sliceМ
#generator/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#generator/reshape_1/Reshape/shape/1М
#generator/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#generator/reshape_1/Reshape/shape/2М
#generator/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#generator/reshape_1/Reshape/shape/3≤
!generator/reshape_1/Reshape/shapePack*generator/reshape_1/strided_slice:output:0,generator/reshape_1/Reshape/shape/1:output:0,generator/reshape_1/Reshape/shape/2:output:0,generator/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!generator/reshape_1/Reshape/shapeѕ
generator/reshape_1/ReshapeReshape"generator/dense_1/BiasAdd:output:0*generator/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
generator/reshape_1/Reshapey
generator/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
generator/concat/axisё
generator/concatConcatV2"generator/reshape/Reshape:output:0$generator/reshape_1/Reshape:output:0generator/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€Г2
generator/concatН
 generator/conv2d_transpose/ShapeShapegenerator/concat:output:0*
T0*
_output_shapes
:2"
 generator/conv2d_transpose/Shape™
.generator/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.generator/conv2d_transpose/strided_slice/stackЃ
0generator/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0generator/conv2d_transpose/strided_slice/stack_1Ѓ
0generator/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0generator/conv2d_transpose/strided_slice/stack_2Д
(generator/conv2d_transpose/strided_sliceStridedSlice)generator/conv2d_transpose/Shape:output:07generator/conv2d_transpose/strided_slice/stack:output:09generator/conv2d_transpose/strided_slice/stack_1:output:09generator/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(generator/conv2d_transpose/strided_sliceК
"generator/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"generator/conv2d_transpose/stack/1К
"generator/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"generator/conv2d_transpose/stack/2Л
"generator/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2$
"generator/conv2d_transpose/stack/3і
 generator/conv2d_transpose/stackPack1generator/conv2d_transpose/strided_slice:output:0+generator/conv2d_transpose/stack/1:output:0+generator/conv2d_transpose/stack/2:output:0+generator/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2"
 generator/conv2d_transpose/stackЃ
0generator/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0generator/conv2d_transpose/strided_slice_1/stack≤
2generator/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose/strided_slice_1/stack_1≤
2generator/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose/strided_slice_1/stack_2О
*generator/conv2d_transpose/strided_slice_1StridedSlice)generator/conv2d_transpose/stack:output:09generator/conv2d_transpose/strided_slice_1/stack:output:0;generator/conv2d_transpose/strided_slice_1/stack_1:output:0;generator/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*generator/conv2d_transpose/strided_slice_1Ж
:generator/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpCgenerator_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АГ*
dtype02<
:generator/conv2d_transpose/conv2d_transpose/ReadVariableOpё
+generator/conv2d_transpose/conv2d_transposeConv2DBackpropInput)generator/conv2d_transpose/stack:output:0Bgenerator/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0generator/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2-
+generator/conv2d_transpose/conv2d_transposeё
1generator/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp:generator_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype023
1generator/conv2d_transpose/BiasAdd/ReadVariableOp€
"generator/conv2d_transpose/BiasAddBiasAdd4generator/conv2d_transpose/conv2d_transpose:output:09generator/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2$
"generator/conv2d_transpose/BiasAddЪ
generator/LeakyRelu_1	LeakyRelu+generator/conv2d_transpose/BiasAdd:output:0*0
_output_shapes
:€€€€€€€€€А2
generator/LeakyRelu_1Ы
"generator/conv2d_transpose_1/ShapeShape#generator/LeakyRelu_1:activations:0*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_1/ShapeЃ
0generator/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0generator/conv2d_transpose_1/strided_slice/stack≤
2generator/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_1/strided_slice/stack_1≤
2generator/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_1/strided_slice/stack_2Р
*generator/conv2d_transpose_1/strided_sliceStridedSlice+generator/conv2d_transpose_1/Shape:output:09generator/conv2d_transpose_1/strided_slice/stack:output:0;generator/conv2d_transpose_1/strided_slice/stack_1:output:0;generator/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*generator/conv2d_transpose_1/strided_sliceО
$generator/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_1/stack/1О
$generator/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_1/stack/2П
$generator/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2&
$generator/conv2d_transpose_1/stack/3ј
"generator/conv2d_transpose_1/stackPack3generator/conv2d_transpose_1/strided_slice:output:0-generator/conv2d_transpose_1/stack/1:output:0-generator/conv2d_transpose_1/stack/2:output:0-generator/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_1/stack≤
2generator/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2generator/conv2d_transpose_1/strided_slice_1/stackґ
4generator/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_1/strided_slice_1/stack_1ґ
4generator/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_1/strided_slice_1/stack_2Ъ
,generator/conv2d_transpose_1/strided_slice_1StridedSlice+generator/conv2d_transpose_1/stack:output:0;generator/conv2d_transpose_1/strided_slice_1/stack:output:0=generator/conv2d_transpose_1/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,generator/conv2d_transpose_1/strided_slice_1М
<generator/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype02>
<generator/conv2d_transpose_1/conv2d_transpose/ReadVariableOpс
-generator/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_1/stack:output:0Dgenerator/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#generator/LeakyRelu_1:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2/
-generator/conv2d_transpose_1/conv2d_transposeд
3generator/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype025
3generator/conv2d_transpose_1/BiasAdd/ReadVariableOpЗ
$generator/conv2d_transpose_1/BiasAddBiasAdd6generator/conv2d_transpose_1/conv2d_transpose:output:0;generator/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2&
$generator/conv2d_transpose_1/BiasAddЬ
generator/LeakyRelu_2	LeakyRelu-generator/conv2d_transpose_1/BiasAdd:output:0*0
_output_shapes
:€€€€€€€€€А2
generator/LeakyRelu_2Ы
"generator/conv2d_transpose_2/ShapeShape#generator/LeakyRelu_2:activations:0*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_2/ShapeЃ
0generator/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0generator/conv2d_transpose_2/strided_slice/stack≤
2generator/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_2/strided_slice/stack_1≤
2generator/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_2/strided_slice/stack_2Р
*generator/conv2d_transpose_2/strided_sliceStridedSlice+generator/conv2d_transpose_2/Shape:output:09generator/conv2d_transpose_2/strided_slice/stack:output:0;generator/conv2d_transpose_2/strided_slice/stack_1:output:0;generator/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*generator/conv2d_transpose_2/strided_sliceО
$generator/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_2/stack/1О
$generator/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_2/stack/2О
$generator/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2&
$generator/conv2d_transpose_2/stack/3ј
"generator/conv2d_transpose_2/stackPack3generator/conv2d_transpose_2/strided_slice:output:0-generator/conv2d_transpose_2/stack/1:output:0-generator/conv2d_transpose_2/stack/2:output:0-generator/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_2/stack≤
2generator/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2generator/conv2d_transpose_2/strided_slice_1/stackґ
4generator/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_2/strided_slice_1/stack_1ґ
4generator/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_2/strided_slice_1/stack_2Ъ
,generator/conv2d_transpose_2/strided_slice_1StridedSlice+generator/conv2d_transpose_2/stack:output:0;generator/conv2d_transpose_2/strided_slice_1/stack:output:0=generator/conv2d_transpose_2/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,generator/conv2d_transpose_2/strided_slice_1Л
<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02>
<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOpп
-generator/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_2/stack:output:0Dgenerator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0#generator/LeakyRelu_2:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2/
-generator/conv2d_transpose_2/conv2d_transposeг
3generator/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3generator/conv2d_transpose_2/BiasAdd/ReadVariableOpЖ
$generator/conv2d_transpose_2/BiasAddBiasAdd6generator/conv2d_transpose_2/conv2d_transpose:output:0;generator/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2&
$generator/conv2d_transpose_2/BiasAddЫ
generator/LeakyRelu_3	LeakyRelu-generator/conv2d_transpose_2/BiasAdd:output:0*/
_output_shapes
:€€€€€€€€€@2
generator/LeakyRelu_3Ы
"generator/conv2d_transpose_3/ShapeShape#generator/LeakyRelu_3:activations:0*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_3/ShapeЃ
0generator/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0generator/conv2d_transpose_3/strided_slice/stack≤
2generator/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_3/strided_slice/stack_1≤
2generator/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_3/strided_slice/stack_2Р
*generator/conv2d_transpose_3/strided_sliceStridedSlice+generator/conv2d_transpose_3/Shape:output:09generator/conv2d_transpose_3/strided_slice/stack:output:0;generator/conv2d_transpose_3/strided_slice/stack_1:output:0;generator/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*generator/conv2d_transpose_3/strided_sliceО
$generator/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2&
$generator/conv2d_transpose_3/stack/1О
$generator/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_3/stack/2О
$generator/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_3/stack/3ј
"generator/conv2d_transpose_3/stackPack3generator/conv2d_transpose_3/strided_slice:output:0-generator/conv2d_transpose_3/stack/1:output:0-generator/conv2d_transpose_3/stack/2:output:0-generator/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_3/stack≤
2generator/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2generator/conv2d_transpose_3/strided_slice_1/stackґ
4generator/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_3/strided_slice_1/stack_1ґ
4generator/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_3/strided_slice_1/stack_2Ъ
,generator/conv2d_transpose_3/strided_slice_1StridedSlice+generator/conv2d_transpose_3/stack:output:0;generator/conv2d_transpose_3/strided_slice_1/stack:output:0=generator/conv2d_transpose_3/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,generator/conv2d_transpose_3/strided_slice_1К
<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02>
<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOpр
-generator/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_3/stack:output:0Dgenerator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0#generator/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:€€€€€€€€€
*
paddingVALID*
strides
2/
-generator/conv2d_transpose_3/conv2d_transposeг
3generator/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3generator/conv2d_transpose_3/BiasAdd/ReadVariableOpЖ
$generator/conv2d_transpose_3/BiasAddBiasAdd6generator/conv2d_transpose_3/conv2d_transpose:output:0;generator/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
2&
$generator/conv2d_transpose_3/BiasAddС
generator/TanhTanh-generator/conv2d_transpose_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
2
generator/TanhО
IdentityIdentitygenerator/Tanh:y:02^generator/conv2d_transpose/BiasAdd/ReadVariableOp;^generator/conv2d_transpose/conv2d_transpose/ReadVariableOp4^generator/conv2d_transpose_1/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_1/conv2d_transpose/ReadVariableOp4^generator/conv2d_transpose_2/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp4^generator/conv2d_transpose_3/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp'^generator/dense/BiasAdd/ReadVariableOp&^generator/dense/MatMul/ReadVariableOp)^generator/dense_1/BiasAdd/ReadVariableOp+^generator/dense_1/Tensordot/ReadVariableOp%^generator/embedding/embedding_lookup*
T0*/
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€d:€€€€€€€€€: : : : : : : : : : : : : 2f
1generator/conv2d_transpose/BiasAdd/ReadVariableOp1generator/conv2d_transpose/BiasAdd/ReadVariableOp2x
:generator/conv2d_transpose/conv2d_transpose/ReadVariableOp:generator/conv2d_transpose/conv2d_transpose/ReadVariableOp2j
3generator/conv2d_transpose_1/BiasAdd/ReadVariableOp3generator/conv2d_transpose_1/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_1/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2j
3generator/conv2d_transpose_2/BiasAdd/ReadVariableOp3generator/conv2d_transpose_2/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2j
3generator/conv2d_transpose_3/BiasAdd/ReadVariableOp3generator/conv2d_transpose_3/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2P
&generator/dense/BiasAdd/ReadVariableOp&generator/dense/BiasAdd/ReadVariableOp2N
%generator/dense/MatMul/ReadVariableOp%generator/dense/MatMul/ReadVariableOp2T
(generator/dense_1/BiasAdd/ReadVariableOp(generator/dense_1/BiasAdd/ReadVariableOp2X
*generator/dense_1/Tensordot/ReadVariableOp*generator/dense_1/Tensordot/ReadVariableOp2L
$generator/embedding/embedding_lookup$generator/embedding/embedding_lookup:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
О 
ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_226981

inputs3
!tensordot_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis—
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis„
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2	
BiasAddЬ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
‘	
ф
A__inference_dense_layer_call_and_return_conditional_losses_226906

inputs1
matmul_readvariableop_resource:	dА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
У
_
C__inference_reshape_layer_call_and_return_conditional_losses_226685

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape/shape/3Ї
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
‘	
ф
A__inference_dense_layer_call_and_return_conditional_losses_226664

inputs1
matmul_readvariableop_resource:	dА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
У

Ґ
E__inference_embedding_layer_call_and_return_conditional_losses_226942

inputs)
embedding_lookup_226936:

identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_226936Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/226936*+
_output_shapes
:€€€€€€€€€
*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/226936*+
_output_shapes
:€€€€€€€€€
2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
embedding_lookup/Identity_1П
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Б'
Ы
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_226639

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B : 2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2м
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3≥
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpс
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingVALID*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp§
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2	
BiasAddє
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ш
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_226751

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3Ї
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
І<
к	
"__inference__traced_restore_227112
file_prefix:
'assignvariableop_generator_dense_kernel:	dА6
'assignvariableop_1_generator_dense_bias:	АC
1assignvariableop_2_generator_embedding_embeddings:
=
+assignvariableop_3_generator_dense_1_kernel:
7
)assignvariableop_4_generator_dense_1_bias:P
4assignvariableop_5_generator_conv2d_transpose_kernel:АГA
2assignvariableop_6_generator_conv2d_transpose_bias:	АR
6assignvariableop_7_generator_conv2d_transpose_1_kernel:ААC
4assignvariableop_8_generator_conv2d_transpose_1_bias:	АQ
6assignvariableop_9_generator_conv2d_transpose_2_kernel:@АC
5assignvariableop_10_generator_conv2d_transpose_2_bias:@Q
7assignvariableop_11_generator_conv2d_transpose_3_kernel:@C
5assignvariableop_12_generator_conv2d_transpose_3_bias:
identity_14ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Є
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ƒ
valueЇBЈB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB+embed/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names™
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesс
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¶
AssignVariableOpAssignVariableOp'assignvariableop_generator_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ђ
AssignVariableOp_1AssignVariableOp'assignvariableop_1_generator_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2ґ
AssignVariableOp_2AssignVariableOp1assignvariableop_2_generator_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3∞
AssignVariableOp_3AssignVariableOp+assignvariableop_3_generator_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѓ
AssignVariableOp_4AssignVariableOp)assignvariableop_4_generator_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5є
AssignVariableOp_5AssignVariableOp4assignvariableop_5_generator_conv2d_transpose_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ј
AssignVariableOp_6AssignVariableOp2assignvariableop_6_generator_conv2d_transpose_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ї
AssignVariableOp_7AssignVariableOp6assignvariableop_7_generator_conv2d_transpose_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8є
AssignVariableOp_8AssignVariableOp4assignvariableop_8_generator_conv2d_transpose_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9ї
AssignVariableOp_9AssignVariableOp6assignvariableop_9_generator_conv2d_transpose_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10љ
AssignVariableOp_10AssignVariableOp5assignvariableop_10_generator_conv2d_transpose_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11њ
AssignVariableOp_11AssignVariableOp7assignvariableop_11_generator_conv2d_transpose_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12љ
AssignVariableOp_12AssignVariableOp5assignvariableop_12_generator_conv2d_transpose_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpь
Identity_13Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_13п
Identity_14IdentityIdentity_13:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_14"#
identity_14Identity_14:output:0*/
_input_shapes
: : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122(
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
У
_
C__inference_reshape_layer_call_and_return_conditional_losses_226925

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape/shape/3Ї
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Н'
Ю
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_226547

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2	
stack/3В
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2м
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_transpose/ReadVariableOpт
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_transposeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOp•
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2	
BiasAddЇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
–
ы
*__inference_generator_layer_call_fn_226813
input_1
input_2
unknown:	dА
	unknown_0:	А
	unknown_1:

	unknown_2:

	unknown_3:%
	unknown_4:АГ
	unknown_5:	А%
	unknown_6:АА
	unknown_7:	А$
	unknown_8:@А
	unknown_9:@$

unknown_10:@

unknown_11:
identityИҐStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_2267802
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€d:€€€€€€€€€: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
—
D
(__inference_reshape_layer_call_fn_226911

inputs
identityЌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_2266852
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•
©
1__inference_conv2d_transpose_layer_call_fn_226509

inputs#
unknown:АГ
	unknown_0:	А
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_2264992
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г
 
_user_specified_nameinputs
Ь
Х
&__inference_dense_layer_call_fn_226896

inputs
unknown:	dА
	unknown_0:	А
identityИҐStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2266642
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ґ$
Ь
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_226591

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2м
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3і
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_transpose/ReadVariableOpр
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp§
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2	
BiasAddє
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
•
©
3__inference_conv2d_transpose_2_layer_call_fn_226601

inputs"
unknown:@А
	unknown_0:@
identityИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2265912
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ґ
®
3__inference_conv2d_transpose_3_layer_call_fn_226649

inputs!
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2266392
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ш
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_227000

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3Ї
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Љ$
Ь
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_226499

inputsD
(conv2d_transpose_readvariableop_resource:АГ.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2м
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АГ*
dtype02!
conv2d_transpose/ReadVariableOpс
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_transposeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOp•
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2	
BiasAddЇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г
 
_user_specified_nameinputs
О 
ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_226731

inputs3
!tensordot_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis—
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis„
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2	
BiasAddЬ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*р
serving_default№
;
input_10
serving_default_input_1:0€€€€€€€€€d
;
input_20
serving_default_input_2:0€€€€€€€€€D
output_18
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:ЦЎ
€

dense1
reshape1
	embed

dense2
reshape2
	conv1
	conv2
	conv3
		conv4

trainable_variables
	variables
regularization_losses
	keras_api

signatures
r_default_save_signature
s__call__
*t&call_and_return_all_conditional_losses"Ў
_tf_keras_modelЊ{"name": "generator", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Generator", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "__tuple__", "items": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [128, 100]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [128, 3]}, "float32", "input_2"]}]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Generator"}}
ћ

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"І
_tf_keras_layerН{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 0}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 3}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 100]}}
М
trainable_variables
	variables
regularization_losses
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"э
_tf_keras_layerг{"name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 2, 256]}}, "shared_object_id": 4}
”

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
y__call__
*z&call_and_return_all_conditional_losses"і
_tf_keras_layerЪ{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 3, "output_dim": 10, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 5}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 6, "build_input_shape": {"class_name": "TensorShape", "items": [128, 3]}}
–

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
{__call__
*|&call_and_return_all_conditional_losses"Ђ
_tf_keras_layerС{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 10}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 3, 10]}}
П
$trainable_variables
%	variables
&regularization_losses
'	keras_api
}__call__
*~&call_and_return_all_conditional_losses"А
_tf_keras_layerж{"name": "reshape_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 2, 3]}}, "shared_object_id": 11}
Ж

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
__call__
+А&call_and_return_all_conditional_losses"а	
_tf_keras_layer∆	{"name": "conv2d_transpose", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 259}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 1, 2, 259]}}
М

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"е	
_tf_keras_layerЋ	{"name": "conv2d_transpose_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 2, 4, 256]}}
К

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"г	
_tf_keras_layer…	{"name": "conv2d_transpose_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 5, 8, 128]}}
И

:kernel
;bias
<trainable_variables
=	variables
>regularization_losses
?	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"б	
_tf_keras_layer«	{"name": "conv2d_transpose_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [2, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 5, 8, 64]}}
~
0
1
2
3
4
(5
)6
.7
/8
49
510
:11
;12"
trackable_list_wrapper
~
0
1
2
3
4
(5
)6
.7
/8
49
510
:11
;12"
trackable_list_wrapper
 "
trackable_list_wrapper
 
@non_trainable_variables

Alayers

trainable_variables
	variables
regularization_losses
Bmetrics
Clayer_metrics
Dlayer_regularization_losses
s__call__
r_default_save_signature
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
-
Зserving_default"
signature_map
):'	dА2generator/dense/kernel
#:!А2generator/dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Enon_trainable_variables

Flayers
trainable_variables
	variables
regularization_losses
Gmetrics
Hlayer_metrics
Ilayer_regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Jnon_trainable_variables

Klayers
trainable_variables
	variables
regularization_losses
Lmetrics
Mlayer_metrics
Nlayer_regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
0:.
2generator/embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Onon_trainable_variables

Players
trainable_variables
	variables
regularization_losses
Qmetrics
Rlayer_metrics
Slayer_regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
*:(
2generator/dense_1/kernel
$:"2generator/dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Tnon_trainable_variables

Ulayers
 trainable_variables
!	variables
"regularization_losses
Vmetrics
Wlayer_metrics
Xlayer_regularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Ynon_trainable_variables

Zlayers
$trainable_variables
%	variables
&regularization_losses
[metrics
\layer_metrics
]layer_regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
=:;АГ2!generator/conv2d_transpose/kernel
.:,А2generator/conv2d_transpose/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
ѓ
^non_trainable_variables

_layers
*trainable_variables
+	variables
,regularization_losses
`metrics
alayer_metrics
blayer_regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
?:=АА2#generator/conv2d_transpose_1/kernel
0:.А2!generator/conv2d_transpose_1/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
cnon_trainable_variables

dlayers
0trainable_variables
1	variables
2regularization_losses
emetrics
flayer_metrics
glayer_regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
>:<@А2#generator/conv2d_transpose_2/kernel
/:-@2!generator/conv2d_transpose_2/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
hnon_trainable_variables

ilayers
6trainable_variables
7	variables
8regularization_losses
jmetrics
klayer_metrics
llayer_regularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
=:;@2#generator/conv2d_transpose_3/kernel
/:-2!generator/conv2d_transpose_3/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
mnon_trainable_variables

nlayers
<trainable_variables
=	variables
>regularization_losses
ometrics
player_metrics
qlayer_regularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
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
З2Д
!__inference__wrapped_model_226465ё
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *NҐK
IҐF
!К
input_1€€€€€€€€€d
!К
input_2€€€€€€€€€
†2Э
*__inference_generator_layer_call_fn_226813о
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *NҐK
IҐF
!К
input_1€€€€€€€€€d
!К
input_2€€€€€€€€€
ї2Є
E__inference_generator_layer_call_and_return_conditional_losses_226780о
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *NҐK
IҐF
!К
input_1€€€€€€€€€d
!К
input_2€€€€€€€€€
–2Ќ
&__inference_dense_layer_call_fn_226896Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
л2и
A__inference_dense_layer_call_and_return_conditional_losses_226906Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_reshape_layer_call_fn_226911Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_reshape_layer_call_and_return_conditional_losses_226925Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_embedding_layer_call_fn_226932Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_embedding_layer_call_and_return_conditional_losses_226942Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_1_layer_call_fn_226951Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_1_layer_call_and_return_conditional_losses_226981Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_reshape_1_layer_call_fn_226986Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_reshape_1_layer_call_and_return_conditional_losses_227000Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
С2О
1__inference_conv2d_transpose_layer_call_fn_226509Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г
ђ2©
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_226499Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г
У2Р
3__inference_conv2d_transpose_1_layer_call_fn_226557Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ѓ2Ђ
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_226547Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
У2Р
3__inference_conv2d_transpose_2_layer_call_fn_226601Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ѓ2Ђ
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_226591Ў
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Т2П
3__inference_conv2d_transpose_3_layer_call_fn_226649„
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *7Ґ4
2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
≠2™
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_226639„
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *7Ґ4
2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
“Bѕ
$__inference_signature_wrapper_226887input_1input_2"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ћ
!__inference__wrapped_model_226465¶()./45:;XҐU
NҐK
IҐF
!К
input_1€€€€€€€€€d
!К
input_2€€€€€€€€€
™ ";™8
6
output_1*К'
output_1€€€€€€€€€
е
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_226547Т./JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ љ
3__inference_conv2d_transpose_1_layer_call_fn_226557Е./JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Ад
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_226591С45JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ Љ
3__inference_conv2d_transpose_2_layer_call_fn_226601Д45JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@г
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_226639Р:;IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ї
3__inference_conv2d_transpose_3_layer_call_fn_226649Г:;IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€г
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_226499Т()JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ ї
1__inference_conv2d_transpose_layer_call_fn_226509Е()JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€Г
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€АЂ
C__inference_dense_1_layer_call_and_return_conditional_losses_226981d3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€

™ ")Ґ&
К
0€€€€€€€€€
Ъ Г
(__inference_dense_1_layer_call_fn_226951W3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€

™ "К€€€€€€€€€Ґ
A__inference_dense_layer_call_and_return_conditional_losses_226906]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ "&Ґ#
К
0€€€€€€€€€А
Ъ z
&__inference_dense_layer_call_fn_226896P/Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ "К€€€€€€€€€А®
E__inference_embedding_layer_call_and_return_conditional_losses_226942_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€

Ъ А
*__inference_embedding_layer_call_fn_226932R/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€
ф
E__inference_generator_layer_call_and_return_conditional_losses_226780™()./45:;XҐU
NҐK
IҐF
!К
input_1€€€€€€€€€d
!К
input_2€€€€€€€€€
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ћ
*__inference_generator_layer_call_fn_226813Э()./45:;XҐU
NҐK
IҐF
!К
input_1€€€€€€€€€d
!К
input_2€€€€€€€€€
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€≠
E__inference_reshape_1_layer_call_and_return_conditional_losses_227000d3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Е
*__inference_reshape_1_layer_call_fn_226986W3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ " К€€€€€€€€€©
C__inference_reshape_layer_call_and_return_conditional_losses_226925b0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Б
(__inference_reshape_layer_call_fn_226911U0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Аа
$__inference_signature_wrapper_226887Ј()./45:;iҐf
Ґ 
_™\
,
input_1!К
input_1€€€€€€€€€d
,
input_2!К
input_2€€€€€€€€€";™8
6
output_1*К'
output_1€€€€€€€€€
