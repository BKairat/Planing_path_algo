ƒ

��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_48/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_48/bias/*
dtype0*
shape:*&
shared_nameAdam/v/conv2d_48/bias
{
)Adam/v/conv2d_48/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_48/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_48/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_48/bias/*
dtype0*
shape:*&
shared_nameAdam/m/conv2d_48/bias
{
)Adam/m/conv2d_48/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_48/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_48/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_48/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_48/kernel
�
+Adam/v/conv2d_48/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_48/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_48/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_48/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_48/kernel
�
+Adam/m/conv2d_48/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_48/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/conv2d_47/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_47/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_47/bias
{
)Adam/v/conv2d_47/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_47/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_47/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_47/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_47/bias
{
)Adam/m/conv2d_47/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_47/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_47/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_47/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_47/kernel
�
+Adam/v/conv2d_47/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_47/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_47/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_47/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_47/kernel
�
+Adam/m/conv2d_47/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_47/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/conv2d_46/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_46/bias/*
dtype0*
shape:*&
shared_nameAdam/v/conv2d_46/bias
{
)Adam/v/conv2d_46/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_46/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_46/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_46/bias/*
dtype0*
shape:*&
shared_nameAdam/m/conv2d_46/bias
{
)Adam/m/conv2d_46/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_46/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_46/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_46/kernel/*
dtype0*
shape:*(
shared_nameAdam/v/conv2d_46/kernel
�
+Adam/v/conv2d_46/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_46/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_46/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_46/kernel/*
dtype0*
shape:*(
shared_nameAdam/m/conv2d_46/kernel
�
+Adam/m/conv2d_46/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_46/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_45/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_45/bias/*
dtype0*
shape:*&
shared_nameAdam/v/conv2d_45/bias
{
)Adam/v/conv2d_45/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_45/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_45/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_45/bias/*
dtype0*
shape:*&
shared_nameAdam/m/conv2d_45/bias
{
)Adam/m/conv2d_45/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_45/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_45/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_45/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_45/kernel
�
+Adam/v/conv2d_45/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_45/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_45/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_45/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_45/kernel
�
+Adam/m/conv2d_45/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_45/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/conv2d_44/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_44/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_44/bias
{
)Adam/v/conv2d_44/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_44/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_44/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_44/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_44/bias
{
)Adam/m/conv2d_44/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_44/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_44/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_44/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_44/kernel
�
+Adam/v/conv2d_44/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_44/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_44/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_44/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_44/kernel
�
+Adam/m/conv2d_44/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_44/kernel*&
_output_shapes
: *
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
conv2d_48/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_48/bias/*
dtype0*
shape:*
shared_nameconv2d_48/bias
m
"conv2d_48/bias/Read/ReadVariableOpReadVariableOpconv2d_48/bias*
_output_shapes
:*
dtype0
�
conv2d_48/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_48/kernel/*
dtype0*
shape: *!
shared_nameconv2d_48/kernel
}
$conv2d_48/kernel/Read/ReadVariableOpReadVariableOpconv2d_48/kernel*&
_output_shapes
: *
dtype0
�
conv2d_47/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_47/bias/*
dtype0*
shape: *
shared_nameconv2d_47/bias
m
"conv2d_47/bias/Read/ReadVariableOpReadVariableOpconv2d_47/bias*
_output_shapes
: *
dtype0
�
conv2d_47/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_47/kernel/*
dtype0*
shape: *!
shared_nameconv2d_47/kernel
}
$conv2d_47/kernel/Read/ReadVariableOpReadVariableOpconv2d_47/kernel*&
_output_shapes
: *
dtype0
�
conv2d_46/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_46/bias/*
dtype0*
shape:*
shared_nameconv2d_46/bias
m
"conv2d_46/bias/Read/ReadVariableOpReadVariableOpconv2d_46/bias*
_output_shapes
:*
dtype0
�
conv2d_46/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_46/kernel/*
dtype0*
shape:*!
shared_nameconv2d_46/kernel
}
$conv2d_46/kernel/Read/ReadVariableOpReadVariableOpconv2d_46/kernel*&
_output_shapes
:*
dtype0
�
conv2d_45/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_45/bias/*
dtype0*
shape:*
shared_nameconv2d_45/bias
m
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes
:*
dtype0
�
conv2d_45/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_45/kernel/*
dtype0*
shape: *!
shared_nameconv2d_45/kernel
}
$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*&
_output_shapes
: *
dtype0
�
conv2d_44/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_44/bias/*
dtype0*
shape: *
shared_nameconv2d_44/bias
m
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes
: *
dtype0
�
conv2d_44/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_44/kernel/*
dtype0*
shape: *!
shared_nameconv2d_44/kernel
}
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*&
_output_shapes
: *
dtype0
�
serving_default_conv2d_44_inputPlaceholder*/
_output_shapes
:���������@@*
dtype0*$
shape:���������@@
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_44_inputconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasconv2d_48/kernelconv2d_48/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_99139

NoOpNoOp
�N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�N
value�NB�N B�N
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
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op*
J
0
1
(2
)3
74
85
F6
G7
U8
V9*
J
0
1
(2
)3
74
85
F6
G7
U8
V9*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

]trace_0
^trace_1* 

_trace_0
`trace_1* 
* 
�
a
_variables
b_iterations
c_learning_rate
d_index_dict
e
_momentums
f_velocities
g_update_step_xla*

hserving_default* 

0
1*

0
1*
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
`Z
VARIABLE_VALUEconv2d_44/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_44/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

utrace_0* 

vtrace_0* 

(0
)1*

(0
)1*
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
`Z
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

70
81*

70
81*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_46/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_46/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

F0
G1*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_47/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_47/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_48/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_48/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0*
* 
* 
* 
* 
* 
* 
�
b0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9*
T
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9*
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
b\
VARIABLE_VALUEAdam/m/conv2d_44/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_44/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_44/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_44/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_45/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_45/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_45/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_45/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_46/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_46/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_46/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_46/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_47/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_47/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_47/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_47/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_48/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_48/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_48/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_48/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasconv2d_48/kernelconv2d_48/bias	iterationlearning_rateAdam/m/conv2d_44/kernelAdam/v/conv2d_44/kernelAdam/m/conv2d_44/biasAdam/v/conv2d_44/biasAdam/m/conv2d_45/kernelAdam/v/conv2d_45/kernelAdam/m/conv2d_45/biasAdam/v/conv2d_45/biasAdam/m/conv2d_46/kernelAdam/v/conv2d_46/kernelAdam/m/conv2d_46/biasAdam/v/conv2d_46/biasAdam/m/conv2d_47/kernelAdam/v/conv2d_47/kernelAdam/m/conv2d_47/biasAdam/v/conv2d_47/biasAdam/m/conv2d_48/kernelAdam/v/conv2d_48/kernelAdam/m/conv2d_48/biasAdam/v/conv2d_48/biastotalcountConst*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_99519
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasconv2d_48/kernelconv2d_48/bias	iterationlearning_rateAdam/m/conv2d_44/kernelAdam/v/conv2d_44/kernelAdam/m/conv2d_44/biasAdam/v/conv2d_44/biasAdam/m/conv2d_45/kernelAdam/v/conv2d_45/kernelAdam/m/conv2d_45/biasAdam/v/conv2d_45/biasAdam/m/conv2d_46/kernelAdam/v/conv2d_46/kernelAdam/m/conv2d_46/biasAdam/v/conv2d_46/biasAdam/m/conv2d_47/kernelAdam/v/conv2d_47/kernelAdam/m/conv2d_47/biasAdam/v/conv2d_47/biasAdam/m/conv2d_48/kernelAdam/v/conv2d_48/kernelAdam/m/conv2d_48/biasAdam/v/conv2d_48/biastotalcount*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_99630��
�
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_98846

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
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
�
L
0__inference_max_pooling2d_19_layer_call_fn_99194

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
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_98856�
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
�
g
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_98890

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
�
L
0__inference_up_sampling2d_20_layer_call_fn_99224

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
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_98873�
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
�
L
0__inference_max_pooling2d_18_layer_call_fn_99164

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
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_98846�
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
�
�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_99159

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
g
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_99273

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_98856

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
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
D__inference_conv2d_47_layer_call_and_return_conditional_losses_99256

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�,
�
G__inference_sequential_8_layer_call_and_return_conditional_losses_99016
conv2d_44_input)
conv2d_44_98986: 
conv2d_44_98988: )
conv2d_45_98992: 
conv2d_45_98994:)
conv2d_46_98998:
conv2d_46_99000:)
conv2d_47_99004: 
conv2d_47_99006: )
conv2d_48_99010: 
conv2d_48_99012:
identity��!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�!conv2d_47/StatefulPartitionedCall�!conv2d_48/StatefulPartitionedCall�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputconv2d_44_98986conv2d_44_98988*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_98908�
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_98846�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_45_98992conv2d_45_98994*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_98925�
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_98856�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_46_98998conv2d_46_99000*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_98942�
 up_sampling2d_20/PartitionedCallPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_98873�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_20/PartitionedCall:output:0conv2d_47_99004conv2d_47_99006*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_98959�
 up_sampling2d_21/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_98890�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_21/PartitionedCall:output:0conv2d_48_99010conv2d_48_99012*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_98976�
IdentityIdentity*conv2d_48/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@: : : : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall:%
!

_user_specified_name99012:%	!

_user_specified_name99010:%!

_user_specified_name99006:%!

_user_specified_name99004:%!

_user_specified_name99000:%!

_user_specified_name98998:%!

_user_specified_name98994:%!

_user_specified_name98992:%!

_user_specified_name98988:%!

_user_specified_name98986:` \
/
_output_shapes
:���������@@
)
_user_specified_nameconv2d_44_input
�
g
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_99236

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
�,
�
G__inference_sequential_8_layer_call_and_return_conditional_losses_98983
conv2d_44_input)
conv2d_44_98909: 
conv2d_44_98911: )
conv2d_45_98926: 
conv2d_45_98928:)
conv2d_46_98943:
conv2d_46_98945:)
conv2d_47_98960: 
conv2d_47_98962: )
conv2d_48_98977: 
conv2d_48_98979:
identity��!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�!conv2d_47/StatefulPartitionedCall�!conv2d_48/StatefulPartitionedCall�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputconv2d_44_98909conv2d_44_98911*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_98908�
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_98846�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_45_98926conv2d_45_98928*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_98925�
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_98856�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_46_98943conv2d_46_98945*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_98942�
 up_sampling2d_20/PartitionedCallPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_98873�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_20/PartitionedCall:output:0conv2d_47_98960conv2d_47_98962*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_98959�
 up_sampling2d_21/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_98890�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_21/PartitionedCall:output:0conv2d_48_98977conv2d_48_98979*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_98976�
IdentityIdentity*conv2d_48/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@: : : : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall:%
!

_user_specified_name98979:%	!

_user_specified_name98977:%!

_user_specified_name98962:%!

_user_specified_name98960:%!

_user_specified_name98945:%!

_user_specified_name98943:%!

_user_specified_name98928:%!

_user_specified_name98926:%!

_user_specified_name98911:%!

_user_specified_name98909:` \
/
_output_shapes
:���������@@
)
_user_specified_nameconv2d_44_input
�
�
,__inference_sequential_8_layer_call_fn_99066
conv2d_44_input!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_99016�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name99062:%	!

_user_specified_name99060:%!

_user_specified_name99058:%!

_user_specified_name99056:%!

_user_specified_name99054:%!

_user_specified_name99052:%!

_user_specified_name99050:%!

_user_specified_name99048:%!

_user_specified_name99046:%!

_user_specified_name99044:` \
/
_output_shapes
:���������@@
)
_user_specified_nameconv2d_44_input
�
g
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_98873

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
��
�
__inference__traced_save_99519
file_prefixA
'read_disablecopyonread_conv2d_44_kernel: 5
'read_1_disablecopyonread_conv2d_44_bias: C
)read_2_disablecopyonread_conv2d_45_kernel: 5
'read_3_disablecopyonread_conv2d_45_bias:C
)read_4_disablecopyonread_conv2d_46_kernel:5
'read_5_disablecopyonread_conv2d_46_bias:C
)read_6_disablecopyonread_conv2d_47_kernel: 5
'read_7_disablecopyonread_conv2d_47_bias: C
)read_8_disablecopyonread_conv2d_48_kernel: 5
'read_9_disablecopyonread_conv2d_48_bias:-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: K
1read_12_disablecopyonread_adam_m_conv2d_44_kernel: K
1read_13_disablecopyonread_adam_v_conv2d_44_kernel: =
/read_14_disablecopyonread_adam_m_conv2d_44_bias: =
/read_15_disablecopyonread_adam_v_conv2d_44_bias: K
1read_16_disablecopyonread_adam_m_conv2d_45_kernel: K
1read_17_disablecopyonread_adam_v_conv2d_45_kernel: =
/read_18_disablecopyonread_adam_m_conv2d_45_bias:=
/read_19_disablecopyonread_adam_v_conv2d_45_bias:K
1read_20_disablecopyonread_adam_m_conv2d_46_kernel:K
1read_21_disablecopyonread_adam_v_conv2d_46_kernel:=
/read_22_disablecopyonread_adam_m_conv2d_46_bias:=
/read_23_disablecopyonread_adam_v_conv2d_46_bias:K
1read_24_disablecopyonread_adam_m_conv2d_47_kernel: K
1read_25_disablecopyonread_adam_v_conv2d_47_kernel: =
/read_26_disablecopyonread_adam_m_conv2d_47_bias: =
/read_27_disablecopyonread_adam_v_conv2d_47_bias: K
1read_28_disablecopyonread_adam_m_conv2d_48_kernel: K
1read_29_disablecopyonread_adam_v_conv2d_48_kernel: =
/read_30_disablecopyonread_adam_m_conv2d_48_bias:=
/read_31_disablecopyonread_adam_v_conv2d_48_bias:)
read_32_disablecopyonread_total: )
read_33_disablecopyonread_count: 
savev2_const
identity_69��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_44_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_44_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_44_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_44_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_45_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_45_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_46_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_46_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_47_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_47_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_48_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_48_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_48_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_48_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_12/DisableCopyOnReadDisableCopyOnRead1read_12_disablecopyonread_adam_m_conv2d_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp1read_12_disablecopyonread_adam_m_conv2d_44_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_13/DisableCopyOnReadDisableCopyOnRead1read_13_disablecopyonread_adam_v_conv2d_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp1read_13_disablecopyonread_adam_v_conv2d_44_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_adam_m_conv2d_44_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_adam_m_conv2d_44_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead/read_15_disablecopyonread_adam_v_conv2d_44_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp/read_15_disablecopyonread_adam_v_conv2d_44_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_16/DisableCopyOnReadDisableCopyOnRead1read_16_disablecopyonread_adam_m_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp1read_16_disablecopyonread_adam_m_conv2d_45_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead1read_17_disablecopyonread_adam_v_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp1read_17_disablecopyonread_adam_v_conv2d_45_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead/read_18_disablecopyonread_adam_m_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp/read_18_disablecopyonread_adam_m_conv2d_45_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_v_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_v_conv2d_45_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead1read_20_disablecopyonread_adam_m_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp1read_20_disablecopyonread_adam_m_conv2d_46_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead1read_21_disablecopyonread_adam_v_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp1read_21_disablecopyonread_adam_v_conv2d_46_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_conv2d_46_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_conv2d_46_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_24/DisableCopyOnReadDisableCopyOnRead1read_24_disablecopyonread_adam_m_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp1read_24_disablecopyonread_adam_m_conv2d_47_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_25/DisableCopyOnReadDisableCopyOnRead1read_25_disablecopyonread_adam_v_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp1read_25_disablecopyonread_adam_v_conv2d_47_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_26/DisableCopyOnReadDisableCopyOnRead/read_26_disablecopyonread_adam_m_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp/read_26_disablecopyonread_adam_m_conv2d_47_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_27/DisableCopyOnReadDisableCopyOnRead/read_27_disablecopyonread_adam_v_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp/read_27_disablecopyonread_adam_v_conv2d_47_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_28/DisableCopyOnReadDisableCopyOnRead1read_28_disablecopyonread_adam_m_conv2d_48_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp1read_28_disablecopyonread_adam_m_conv2d_48_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_29/DisableCopyOnReadDisableCopyOnRead1read_29_disablecopyonread_adam_v_conv2d_48_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp1read_29_disablecopyonread_adam_v_conv2d_48_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnRead/read_30_disablecopyonread_adam_m_conv2d_48_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp/read_30_disablecopyonread_adam_m_conv2d_48_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_v_conv2d_48_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_v_conv2d_48_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_32/DisableCopyOnReadDisableCopyOnReadread_32_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOpread_32_disablecopyonread_total^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_33/DisableCopyOnReadDisableCopyOnReadread_33_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOpread_33_disablecopyonread_count^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *1
dtypes'
%2#	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_68Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_69IdentityIdentity_68:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_69Identity_69:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=#9

_output_shapes
: 

_user_specified_nameConst:%"!

_user_specified_namecount:%!!

_user_specified_nametotal:5 1
/
_user_specified_nameAdam/v/conv2d_48/bias:51
/
_user_specified_nameAdam/m/conv2d_48/bias:73
1
_user_specified_nameAdam/v/conv2d_48/kernel:73
1
_user_specified_nameAdam/m/conv2d_48/kernel:51
/
_user_specified_nameAdam/v/conv2d_47/bias:51
/
_user_specified_nameAdam/m/conv2d_47/bias:73
1
_user_specified_nameAdam/v/conv2d_47/kernel:73
1
_user_specified_nameAdam/m/conv2d_47/kernel:51
/
_user_specified_nameAdam/v/conv2d_46/bias:51
/
_user_specified_nameAdam/m/conv2d_46/bias:73
1
_user_specified_nameAdam/v/conv2d_46/kernel:73
1
_user_specified_nameAdam/m/conv2d_46/kernel:51
/
_user_specified_nameAdam/v/conv2d_45/bias:51
/
_user_specified_nameAdam/m/conv2d_45/bias:73
1
_user_specified_nameAdam/v/conv2d_45/kernel:73
1
_user_specified_nameAdam/m/conv2d_45/kernel:51
/
_user_specified_nameAdam/v/conv2d_44/bias:51
/
_user_specified_nameAdam/m/conv2d_44/bias:73
1
_user_specified_nameAdam/v/conv2d_44/kernel:73
1
_user_specified_nameAdam/m/conv2d_44/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:.
*
(
_user_specified_nameconv2d_48/bias:0	,
*
_user_specified_nameconv2d_48/kernel:.*
(
_user_specified_nameconv2d_47/bias:0,
*
_user_specified_nameconv2d_47/kernel:.*
(
_user_specified_nameconv2d_46/bias:0,
*
_user_specified_nameconv2d_46/kernel:.*
(
_user_specified_nameconv2d_45/bias:0,
*
_user_specified_nameconv2d_45/kernel:.*
(
_user_specified_nameconv2d_44/bias:0,
*
_user_specified_nameconv2d_44/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
!__inference__traced_restore_99630
file_prefix;
!assignvariableop_conv2d_44_kernel: /
!assignvariableop_1_conv2d_44_bias: =
#assignvariableop_2_conv2d_45_kernel: /
!assignvariableop_3_conv2d_45_bias:=
#assignvariableop_4_conv2d_46_kernel:/
!assignvariableop_5_conv2d_46_bias:=
#assignvariableop_6_conv2d_47_kernel: /
!assignvariableop_7_conv2d_47_bias: =
#assignvariableop_8_conv2d_48_kernel: /
!assignvariableop_9_conv2d_48_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: E
+assignvariableop_12_adam_m_conv2d_44_kernel: E
+assignvariableop_13_adam_v_conv2d_44_kernel: 7
)assignvariableop_14_adam_m_conv2d_44_bias: 7
)assignvariableop_15_adam_v_conv2d_44_bias: E
+assignvariableop_16_adam_m_conv2d_45_kernel: E
+assignvariableop_17_adam_v_conv2d_45_kernel: 7
)assignvariableop_18_adam_m_conv2d_45_bias:7
)assignvariableop_19_adam_v_conv2d_45_bias:E
+assignvariableop_20_adam_m_conv2d_46_kernel:E
+assignvariableop_21_adam_v_conv2d_46_kernel:7
)assignvariableop_22_adam_m_conv2d_46_bias:7
)assignvariableop_23_adam_v_conv2d_46_bias:E
+assignvariableop_24_adam_m_conv2d_47_kernel: E
+assignvariableop_25_adam_v_conv2d_47_kernel: 7
)assignvariableop_26_adam_m_conv2d_47_bias: 7
)assignvariableop_27_adam_v_conv2d_47_bias: E
+assignvariableop_28_adam_m_conv2d_48_kernel: E
+assignvariableop_29_adam_v_conv2d_48_kernel: 7
)assignvariableop_30_adam_m_conv2d_48_bias:7
)assignvariableop_31_adam_v_conv2d_48_bias:#
assignvariableop_32_total: #
assignvariableop_33_count: 
identity_35��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_44_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_44_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_45_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_45_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_46_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_46_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_47_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_47_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_48_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_48_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp+assignvariableop_12_adam_m_conv2d_44_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_v_conv2d_44_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_m_conv2d_44_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_v_conv2d_44_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_m_conv2d_45_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_v_conv2d_45_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_m_conv2d_45_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_v_conv2d_45_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_m_conv2d_46_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_v_conv2d_46_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_conv2d_46_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_conv2d_46_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_m_conv2d_47_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_v_conv2d_47_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_m_conv2d_47_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_v_conv2d_47_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_m_conv2d_48_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_v_conv2d_48_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_conv2d_48_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_conv2d_48_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_35IdentityIdentity_34:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_35Identity_35:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%"!

_user_specified_namecount:%!!

_user_specified_nametotal:5 1
/
_user_specified_nameAdam/v/conv2d_48/bias:51
/
_user_specified_nameAdam/m/conv2d_48/bias:73
1
_user_specified_nameAdam/v/conv2d_48/kernel:73
1
_user_specified_nameAdam/m/conv2d_48/kernel:51
/
_user_specified_nameAdam/v/conv2d_47/bias:51
/
_user_specified_nameAdam/m/conv2d_47/bias:73
1
_user_specified_nameAdam/v/conv2d_47/kernel:73
1
_user_specified_nameAdam/m/conv2d_47/kernel:51
/
_user_specified_nameAdam/v/conv2d_46/bias:51
/
_user_specified_nameAdam/m/conv2d_46/bias:73
1
_user_specified_nameAdam/v/conv2d_46/kernel:73
1
_user_specified_nameAdam/m/conv2d_46/kernel:51
/
_user_specified_nameAdam/v/conv2d_45/bias:51
/
_user_specified_nameAdam/m/conv2d_45/bias:73
1
_user_specified_nameAdam/v/conv2d_45/kernel:73
1
_user_specified_nameAdam/m/conv2d_45/kernel:51
/
_user_specified_nameAdam/v/conv2d_44/bias:51
/
_user_specified_nameAdam/m/conv2d_44/bias:73
1
_user_specified_nameAdam/v/conv2d_44/kernel:73
1
_user_specified_nameAdam/m/conv2d_44/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:.
*
(
_user_specified_nameconv2d_48/bias:0	,
*
_user_specified_nameconv2d_48/kernel:.*
(
_user_specified_nameconv2d_47/bias:0,
*
_user_specified_nameconv2d_47/kernel:.*
(
_user_specified_nameconv2d_46/bias:0,
*
_user_specified_nameconv2d_46/kernel:.*
(
_user_specified_nameconv2d_45/bias:0,
*
_user_specified_nameconv2d_45/kernel:.*
(
_user_specified_nameconv2d_44/bias:0,
*
_user_specified_nameconv2d_44/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_98925

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_98959

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_98908

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99169

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
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
�
�
)__inference_conv2d_46_layer_call_fn_99208

inputs!
unknown:
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
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_98942w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name99204:%!

_user_specified_name99202:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_47_layer_call_fn_99245

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_98959�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name99241:%!

_user_specified_name99239:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99199

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
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
�
L
0__inference_up_sampling2d_21_layer_call_fn_99261

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
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_98890�
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
�
�
,__inference_sequential_8_layer_call_fn_99041
conv2d_44_input!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_98983�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name99037:%	!

_user_specified_name99035:%!

_user_specified_name99033:%!

_user_specified_name99031:%!

_user_specified_name99029:%!

_user_specified_name99027:%!

_user_specified_name99025:%!

_user_specified_name99023:%!

_user_specified_name99021:%!

_user_specified_name99019:` \
/
_output_shapes
:���������@@
)
_user_specified_nameconv2d_44_input
�
�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_99219

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�M
�

 __inference__wrapped_model_98841
conv2d_44_inputO
5sequential_8_conv2d_44_conv2d_readvariableop_resource: D
6sequential_8_conv2d_44_biasadd_readvariableop_resource: O
5sequential_8_conv2d_45_conv2d_readvariableop_resource: D
6sequential_8_conv2d_45_biasadd_readvariableop_resource:O
5sequential_8_conv2d_46_conv2d_readvariableop_resource:D
6sequential_8_conv2d_46_biasadd_readvariableop_resource:O
5sequential_8_conv2d_47_conv2d_readvariableop_resource: D
6sequential_8_conv2d_47_biasadd_readvariableop_resource: O
5sequential_8_conv2d_48_conv2d_readvariableop_resource: D
6sequential_8_conv2d_48_biasadd_readvariableop_resource:
identity��-sequential_8/conv2d_44/BiasAdd/ReadVariableOp�,sequential_8/conv2d_44/Conv2D/ReadVariableOp�-sequential_8/conv2d_45/BiasAdd/ReadVariableOp�,sequential_8/conv2d_45/Conv2D/ReadVariableOp�-sequential_8/conv2d_46/BiasAdd/ReadVariableOp�,sequential_8/conv2d_46/Conv2D/ReadVariableOp�-sequential_8/conv2d_47/BiasAdd/ReadVariableOp�,sequential_8/conv2d_47/Conv2D/ReadVariableOp�-sequential_8/conv2d_48/BiasAdd/ReadVariableOp�,sequential_8/conv2d_48/Conv2D/ReadVariableOp�
,sequential_8/conv2d_44/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_8/conv2d_44/Conv2DConv2Dconv2d_44_input4sequential_8/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
-sequential_8/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_8/conv2d_44/BiasAddBiasAdd&sequential_8/conv2d_44/Conv2D:output:05sequential_8/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
sequential_8/conv2d_44/ReluRelu'sequential_8/conv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ �
%sequential_8/max_pooling2d_18/MaxPoolMaxPool)sequential_8/conv2d_44/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingSAME*
strides
�
,sequential_8/conv2d_45/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_8/conv2d_45/Conv2DConv2D.sequential_8/max_pooling2d_18/MaxPool:output:04sequential_8/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
-sequential_8/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_8/conv2d_45/BiasAddBiasAdd&sequential_8/conv2d_45/Conv2D:output:05sequential_8/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
sequential_8/conv2d_45/ReluRelu'sequential_8/conv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
%sequential_8/max_pooling2d_19/MaxPoolMaxPool)sequential_8/conv2d_45/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
,sequential_8/conv2d_46/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_8/conv2d_46/Conv2DConv2D.sequential_8/max_pooling2d_19/MaxPool:output:04sequential_8/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-sequential_8/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_8/conv2d_46/BiasAddBiasAdd&sequential_8/conv2d_46/Conv2D:output:05sequential_8/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_8/conv2d_46/ReluRelu'sequential_8/conv2d_46/BiasAdd:output:0*
T0*/
_output_shapes
:���������t
#sequential_8/up_sampling2d_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_8/up_sampling2d_20/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
!sequential_8/up_sampling2d_20/mulMul,sequential_8/up_sampling2d_20/Const:output:0.sequential_8/up_sampling2d_20/Const_1:output:0*
T0*
_output_shapes
:�
:sequential_8/up_sampling2d_20/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_8/conv2d_46/Relu:activations:0%sequential_8/up_sampling2d_20/mul:z:0*
T0*/
_output_shapes
:���������  *
half_pixel_centers(�
,sequential_8/conv2d_47/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_8/conv2d_47/Conv2DConv2DKsequential_8/up_sampling2d_20/resize/ResizeNearestNeighbor:resized_images:04sequential_8/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
-sequential_8/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_8/conv2d_47/BiasAddBiasAdd&sequential_8/conv2d_47/Conv2D:output:05sequential_8/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
sequential_8/conv2d_47/ReluRelu'sequential_8/conv2d_47/BiasAdd:output:0*
T0*/
_output_shapes
:���������   t
#sequential_8/up_sampling2d_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"        v
%sequential_8/up_sampling2d_21/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
!sequential_8/up_sampling2d_21/mulMul,sequential_8/up_sampling2d_21/Const:output:0.sequential_8/up_sampling2d_21/Const_1:output:0*
T0*
_output_shapes
:�
:sequential_8/up_sampling2d_21/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_8/conv2d_47/Relu:activations:0%sequential_8/up_sampling2d_21/mul:z:0*
T0*/
_output_shapes
:���������@@ *
half_pixel_centers(�
,sequential_8/conv2d_48/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_8/conv2d_48/Conv2DConv2DKsequential_8/up_sampling2d_21/resize/ResizeNearestNeighbor:resized_images:04sequential_8/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
-sequential_8/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_8/conv2d_48/BiasAddBiasAdd&sequential_8/conv2d_48/Conv2D:output:05sequential_8/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
sequential_8/conv2d_48/SigmoidSigmoid'sequential_8/conv2d_48/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@y
IdentityIdentity"sequential_8/conv2d_48/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp.^sequential_8/conv2d_44/BiasAdd/ReadVariableOp-^sequential_8/conv2d_44/Conv2D/ReadVariableOp.^sequential_8/conv2d_45/BiasAdd/ReadVariableOp-^sequential_8/conv2d_45/Conv2D/ReadVariableOp.^sequential_8/conv2d_46/BiasAdd/ReadVariableOp-^sequential_8/conv2d_46/Conv2D/ReadVariableOp.^sequential_8/conv2d_47/BiasAdd/ReadVariableOp-^sequential_8/conv2d_47/Conv2D/ReadVariableOp.^sequential_8/conv2d_48/BiasAdd/ReadVariableOp-^sequential_8/conv2d_48/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@: : : : : : : : : : 2^
-sequential_8/conv2d_44/BiasAdd/ReadVariableOp-sequential_8/conv2d_44/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_44/Conv2D/ReadVariableOp,sequential_8/conv2d_44/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_45/BiasAdd/ReadVariableOp-sequential_8/conv2d_45/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_45/Conv2D/ReadVariableOp,sequential_8/conv2d_45/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_46/BiasAdd/ReadVariableOp-sequential_8/conv2d_46/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_46/Conv2D/ReadVariableOp,sequential_8/conv2d_46/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_47/BiasAdd/ReadVariableOp-sequential_8/conv2d_47/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_47/Conv2D/ReadVariableOp,sequential_8/conv2d_47/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_48/BiasAdd/ReadVariableOp-sequential_8/conv2d_48/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_48/Conv2D/ReadVariableOp,sequential_8/conv2d_48/Conv2D/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:` \
/
_output_shapes
:���������@@
)
_user_specified_nameconv2d_44_input
�
�
#__inference_signature_wrapper_99139
conv2d_44_input!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_98841w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name99135:%	!

_user_specified_name99133:%!

_user_specified_name99131:%!

_user_specified_name99129:%!

_user_specified_name99127:%!

_user_specified_name99125:%!

_user_specified_name99123:%!

_user_specified_name99121:%!

_user_specified_name99119:%!

_user_specified_name99117:` \
/
_output_shapes
:���������@@
)
_user_specified_nameconv2d_44_input
�
�
D__inference_conv2d_48_layer_call_and_return_conditional_losses_99293

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_98942

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_48_layer_call_and_return_conditional_losses_98976

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
)__inference_conv2d_48_layer_call_fn_99282

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_98976�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name99278:%!

_user_specified_name99276:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
)__inference_conv2d_44_layer_call_fn_99148

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_98908w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name99144:%!

_user_specified_name99142:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
)__inference_conv2d_45_layer_call_fn_99178

inputs!
unknown: 
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
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_98925w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name99174:%!

_user_specified_name99172:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_99189

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
conv2d_44_input@
!serving_default_conv2d_44_input:0���������@@E
	conv2d_488
StatefulPartitionedCall:0���������@@tensorflow/serving/predict:��
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
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op"
_tf_keras_layer
f
0
1
(2
)3
74
85
F6
G7
U8
V9"
trackable_list_wrapper
f
0
1
(2
)3
74
85
F6
G7
U8
V9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
]trace_0
^trace_12�
,__inference_sequential_8_layer_call_fn_99041
,__inference_sequential_8_layer_call_fn_99066�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0z^trace_1
�
_trace_0
`trace_12�
G__inference_sequential_8_layer_call_and_return_conditional_losses_98983
G__inference_sequential_8_layer_call_and_return_conditional_losses_99016�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z_trace_0z`trace_1
�B�
 __inference__wrapped_model_98841conv2d_44_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
a
_variables
b_iterations
c_learning_rate
d_index_dict
e
_momentums
f_velocities
g_update_step_xla"
experimentalOptimizer
,
hserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ntrace_02�
)__inference_conv2d_44_layer_call_fn_99148�
���
FullArgSpec
args�

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
annotations� *
 zntrace_0
�
otrace_02�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_99159�
���
FullArgSpec
args�

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
annotations� *
 zotrace_0
*:( 2conv2d_44/kernel
: 2conv2d_44/bias
�2��
���
FullArgSpec
args�
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
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
utrace_02�
0__inference_max_pooling2d_18_layer_call_fn_99164�
���
FullArgSpec
args�

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
annotations� *
 zutrace_0
�
vtrace_02�
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99169�
���
FullArgSpec
args�

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
annotations� *
 zvtrace_0
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
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
|trace_02�
)__inference_conv2d_45_layer_call_fn_99178�
���
FullArgSpec
args�

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
annotations� *
 z|trace_0
�
}trace_02�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_99189�
���
FullArgSpec
args�

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
annotations� *
 z}trace_0
*:( 2conv2d_45/kernel
:2conv2d_45/bias
�2��
���
FullArgSpec
args�
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
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_19_layer_call_fn_99194�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99199�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_46_layer_call_fn_99208�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_99219�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
*:(2conv2d_46/kernel
:2conv2d_46/bias
�2��
���
FullArgSpec
args�
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
annotations� *
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
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_up_sampling2d_20_layer_call_fn_99224�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_99236�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_47_layer_call_fn_99245�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_99256�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
*:( 2conv2d_47/kernel
: 2conv2d_47/bias
�2��
���
FullArgSpec
args�
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
annotations� *
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
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_up_sampling2d_21_layer_call_fn_99261�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_99273�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_48_layer_call_fn_99282�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_48_layer_call_and_return_conditional_losses_99293�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
*:( 2conv2d_48/kernel
:2conv2d_48/bias
�2��
���
FullArgSpec
args�
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
annotations� *
 0
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
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_8_layer_call_fn_99041conv2d_44_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_8_layer_call_fn_99066conv2d_44_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_8_layer_call_and_return_conditional_losses_98983conv2d_44_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_8_layer_call_and_return_conditional_losses_99016conv2d_44_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
b0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_99139conv2d_44_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jconv2d_44_input
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
)__inference_conv2d_44_layer_call_fn_99148inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_99159inputs"�
���
FullArgSpec
args�

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
0__inference_max_pooling2d_18_layer_call_fn_99164inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99169inputs"�
���
FullArgSpec
args�

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
)__inference_conv2d_45_layer_call_fn_99178inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_99189inputs"�
���
FullArgSpec
args�

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
0__inference_max_pooling2d_19_layer_call_fn_99194inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99199inputs"�
���
FullArgSpec
args�

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
)__inference_conv2d_46_layer_call_fn_99208inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_99219inputs"�
���
FullArgSpec
args�

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
0__inference_up_sampling2d_20_layer_call_fn_99224inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_99236inputs"�
���
FullArgSpec
args�

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
)__inference_conv2d_47_layer_call_fn_99245inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_99256inputs"�
���
FullArgSpec
args�

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
0__inference_up_sampling2d_21_layer_call_fn_99261inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_99273inputs"�
���
FullArgSpec
args�

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
)__inference_conv2d_48_layer_call_fn_99282inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_conv2d_48_layer_call_and_return_conditional_losses_99293inputs"�
���
FullArgSpec
args�

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
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
/:- 2Adam/m/conv2d_44/kernel
/:- 2Adam/v/conv2d_44/kernel
!: 2Adam/m/conv2d_44/bias
!: 2Adam/v/conv2d_44/bias
/:- 2Adam/m/conv2d_45/kernel
/:- 2Adam/v/conv2d_45/kernel
!:2Adam/m/conv2d_45/bias
!:2Adam/v/conv2d_45/bias
/:-2Adam/m/conv2d_46/kernel
/:-2Adam/v/conv2d_46/kernel
!:2Adam/m/conv2d_46/bias
!:2Adam/v/conv2d_46/bias
/:- 2Adam/m/conv2d_47/kernel
/:- 2Adam/v/conv2d_47/kernel
!: 2Adam/m/conv2d_47/bias
!: 2Adam/v/conv2d_47/bias
/:- 2Adam/m/conv2d_48/kernel
/:- 2Adam/v/conv2d_48/kernel
!:2Adam/m/conv2d_48/bias
!:2Adam/v/conv2d_48/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count�
 __inference__wrapped_model_98841�
()78FGUV@�=
6�3
1�.
conv2d_44_input���������@@
� "=�:
8
	conv2d_48+�(
	conv2d_48���������@@�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_99159s7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@ 
� �
)__inference_conv2d_44_layer_call_fn_99148h7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@ �
D__inference_conv2d_45_layer_call_and_return_conditional_losses_99189s()7�4
-�*
(�%
inputs���������   
� "4�1
*�'
tensor_0���������  
� �
)__inference_conv2d_45_layer_call_fn_99178h()7�4
-�*
(�%
inputs���������   
� ")�&
unknown���������  �
D__inference_conv2d_46_layer_call_and_return_conditional_losses_99219s787�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
)__inference_conv2d_46_layer_call_fn_99208h787�4
-�*
(�%
inputs���������
� ")�&
unknown����������
D__inference_conv2d_47_layer_call_and_return_conditional_losses_99256�FGI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+��������������������������� 
� �
)__inference_conv2d_47_layer_call_fn_99245�FGI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+��������������������������� �
D__inference_conv2d_48_layer_call_and_return_conditional_losses_99293�UVI�F
?�<
:�7
inputs+��������������������������� 
� "F�C
<�9
tensor_0+���������������������������
� �
)__inference_conv2d_48_layer_call_fn_99282�UVI�F
?�<
:�7
inputs+��������������������������� 
� ";�8
unknown+����������������������������
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99169�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_18_layer_call_fn_99164�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99199�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_19_layer_call_fn_99194�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
G__inference_sequential_8_layer_call_and_return_conditional_losses_98983�
()78FGUVH�E
>�;
1�.
conv2d_44_input���������@@
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
G__inference_sequential_8_layer_call_and_return_conditional_losses_99016�
()78FGUVH�E
>�;
1�.
conv2d_44_input���������@@
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
,__inference_sequential_8_layer_call_fn_99041�
()78FGUVH�E
>�;
1�.
conv2d_44_input���������@@
p

 
� ";�8
unknown+����������������������������
,__inference_sequential_8_layer_call_fn_99066�
()78FGUVH�E
>�;
1�.
conv2d_44_input���������@@
p 

 
� ";�8
unknown+����������������������������
#__inference_signature_wrapper_99139�
()78FGUVS�P
� 
I�F
D
conv2d_44_input1�.
conv2d_44_input���������@@"=�:
8
	conv2d_48+�(
	conv2d_48���������@@�
K__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_99236�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_up_sampling2d_20_layer_call_fn_99224�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_99273�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_up_sampling2d_21_layer_call_fn_99261�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4������������������������������������