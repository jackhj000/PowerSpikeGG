
4
placeholderPlaceholder*
dtype0*
shape: 
[
BatchNorm/betaConst*
dtype0*5
value,B*" t*��S�s¯FlB����gB�g��?0~ eB
[
BatchNorm/beta/readIdentityBatchNorm/beta*!
_class
loc:@BatchNorm/beta*
T0
b
BatchNorm/moving_meanConst*
dtype0*5
value,B*" ��@���@�^4A��A�H.I�E7�HAv��?
p
BatchNorm/moving_mean/readIdentityBatchNorm/moving_mean*(
_class
loc:@BatchNorm/moving_mean*
T0
f
BatchNorm/moving_varianceConst*
dtype0*5
value,B*" �j�A�C�@���A�,�DQ��O҄}K��BBM�?
|
BatchNorm/moving_variance/readIdentityBatchNorm/moving_variance*,
_class"
 loc:@BatchNorm/moving_variance*
T0
V
(BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
{
BatchNorm/moments/MeanMeanplaceholder(BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
O
BatchNorm/moments/StopGradientStopGradientBatchNorm/moments/Mean*
T0
\
-BatchNorm/moments/sufficient_statistics/ShapeShapeplaceholder*
out_type0*
T0
{
,BatchNorm/moments/sufficient_statistics/CastCast-BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
d
6BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
.BatchNorm/moments/sufficient_statistics/GatherGather,BatchNorm/moments/sufficient_statistics/Cast6BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
[
-BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
-BatchNorm/moments/sufficient_statistics/countProd.BatchNorm/moments/sufficient_statistics/Gather-BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
h
+BatchNorm/moments/sufficient_statistics/SubSubplaceholderBatchNorm/moments/StopGradient*
T0
�
9BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferenceplaceholderBatchNorm/moments/StopGradient*
T0
o
ABatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
/BatchNorm/moments/sufficient_statistics/mean_ssSum+BatchNorm/moments/sufficient_statistics/SubABatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
n
@BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
.BatchNorm/moments/sufficient_statistics/var_ssSum9BatchNorm/moments/sufficient_statistics/SquaredDifference@BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
E
BatchNorm/moments/ShapeConst*
dtype0*
valueB:
t
BatchNorm/moments/ReshapeReshapeBatchNorm/moments/StopGradientBatchNorm/moments/Shape*
Tshape0*
T0
�
#BatchNorm/moments/normalize/divisor
Reciprocal-BatchNorm/moments/sufficient_statistics/count0^BatchNorm/moments/sufficient_statistics/mean_ss/^BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
(BatchNorm/moments/normalize/shifted_meanMul/BatchNorm/moments/sufficient_statistics/mean_ss#BatchNorm/moments/normalize/divisor*
T0
u
 BatchNorm/moments/normalize/meanAdd(BatchNorm/moments/normalize/shifted_meanBatchNorm/moments/Reshape*
T0
�
BatchNorm/moments/normalize/MulMul.BatchNorm/moments/sufficient_statistics/var_ss#BatchNorm/moments/normalize/divisor*
T0
_
"BatchNorm/moments/normalize/SquareSquare(BatchNorm/moments/normalize/shifted_mean*
T0
y
$BatchNorm/moments/normalize/varianceSubBatchNorm/moments/normalize/Mul"BatchNorm/moments/normalize/Square*
T0
v
BatchNorm/AssignMovingAvg/decayConst*
dtype0*(
_class
loc:@BatchNorm/moving_mean*
valueB
 *���=
�
BatchNorm/AssignMovingAvg/subSubBatchNorm/moving_mean/read BatchNorm/moments/normalize/mean*(
_class
loc:@BatchNorm/moving_mean*
T0
�
BatchNorm/AssignMovingAvg/mulMulBatchNorm/AssignMovingAvg/subBatchNorm/AssignMovingAvg/decay*(
_class
loc:@BatchNorm/moving_mean*
T0
�
BatchNorm/AssignMovingAvg	AssignSubBatchNorm/moving_meanBatchNorm/AssignMovingAvg/mul*(
_class
loc:@BatchNorm/moving_mean*
use_locking( *
T0
|
!BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*,
_class"
 loc:@BatchNorm/moving_variance*
valueB
 *���=
�
BatchNorm/AssignMovingAvg_1/subSubBatchNorm/moving_variance/read$BatchNorm/moments/normalize/variance*,
_class"
 loc:@BatchNorm/moving_variance*
T0
�
BatchNorm/AssignMovingAvg_1/mulMulBatchNorm/AssignMovingAvg_1/sub!BatchNorm/AssignMovingAvg_1/decay*,
_class"
 loc:@BatchNorm/moving_variance*
T0
�
BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm/moving_varianceBatchNorm/AssignMovingAvg_1/mul*,
_class"
 loc:@BatchNorm/moving_variance*
use_locking( *
T0
�
BatchNorm/IdentityIdentity BatchNorm/moments/normalize/mean^BatchNorm/AssignMovingAvg^BatchNorm/AssignMovingAvg_1*
T0
�
BatchNorm/Identity_1Identity$BatchNorm/moments/normalize/variance^BatchNorm/AssignMovingAvg^BatchNorm/AssignMovingAvg_1*
T0
F
BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
X
BatchNorm/batchnorm/addAddBatchNorm/Identity_1BatchNorm/batchnorm/add/y*
T0
D
BatchNorm/batchnorm/RsqrtRsqrtBatchNorm/batchnorm/add*
T0
O
BatchNorm/batchnorm/mulMulplaceholderBatchNorm/batchnorm/Rsqrt*
T0
X
BatchNorm/batchnorm/mul_1MulBatchNorm/IdentityBatchNorm/batchnorm/Rsqrt*
T0
W
BatchNorm/batchnorm/subSubBatchNorm/beta/readBatchNorm/batchnorm/mul_1*
T0
[
BatchNorm/batchnorm/add_1AddBatchNorm/batchnorm/mulBatchNorm/batchnorm/sub*
T0
�
hidden1/weightsConst*
dtype0*�
value�B�2"��"oB��n�<�n�!�nB�(n��mBj0nBZ�nB��n�|�_B�nBC^m´�n¢dn�{�nµ�d�gQoB�<n�tnBVgnB�nBOSn��o®�nBd�n��nB�nB*Xn�n�B2nB~Y�!nBPjn��qn�9:��Qxr�Lkv�l$nB�nnen�.2oB��n�(�tB�(n�sn�-Go¯�mBB�nB��nB֢n��o�%�m��vnBW|n��nB�n�ԞnB�#nB\Rn�Ҏq�DYnB�Af�VJn�#kn�{7o�7�pB�nBh�nBP�n�N�n�(�mBzn�e�p�[�r���n��znB�nBH�o�8In�! oBxW§�m�Ϥn�l�iBu���q�Y+ B��nBJ�n+oB0�nn§�uB��Bԓn��n��YSBl�n�c�lBq7m�ok���m�<9oBтn���nB�6m�hnB�;nB<�n�'-l�"$nB���&[n�c�n��|n�ͶmBo&nB�nB�_o��n�xOnB��nB�*k�-Od�?n�aSpB�ZnB�Oo®�n�^nB����"n��n©�xBY"b¾Fd��{�B��nB�snBJgn���n½o��9fBa&NBL6oª�m�~�B�n�J�oB�`o���nB�n� >o¼HnB(�np��tnB�nB�nB'DB��nB�@i«hn�X n��:noB�Vm�nBQnB��nB�WoB}n«5BvJeon�:^nB 'nB`�j��)oB6�nB���Bwpp�&�n.o���� jB75nB�-n�9/oµ�cB+�n¨n�B�9n��n¢�n���i �nBMk�=�n��ylBՁn�Cyn��nBa�n�X�mB�<nBJnB2sn�qB�)oB��o�#�n���n���m¡�kB�oBD�n�V`oB��nB\�m�E�n o��cnBh�o�ƎnB0�nB�Dl���n�&2n����nB��o�Y�n´�Bq
m�ygi�}nB�n�n;n�<ioBR�n���iB̽n��Zn� �m�#nB�nB?�nB�m�Zsn�-o�{�n�X4n��JnB;4s�=�nBh=oB�mnB�<x�n{nB0�B}�n�X�n�f�n·�nB��h��AnB��n¸nB�JoBϒn�w~u��j�^Qn�֔n?oBn�>oB٘nB�Z'�;"o¤\n���mB�\B�B�B\$nB��o��8oBfDn��bn�o4Cco�=�n�n���~BN�n¼onpn�ثn��ChBe.mo��/oB#�nByoB~�nBZ�n�Gq�w�mBΊj�$-o�no�]o�L�oB0mBLo�u�m�m�~�nB��nBJOo�ioBC�nnLnB�:n���n CnB��Y¾0o�`o�um�����v�P�u���nB�oB>�n�m�n��qsB�o�l��n�PDn�R�n�oBgHr�mpBMoBX{o�lB�cn�1�qB*�nBJUn��on��k� oBݵr��n�m�m�nYnBK'oBo�mnB��n�hnB4�nB�,l�rBf�N�~�nB��nB%q� 1n��nB�5{�oBR�m���n¨l���vB�OnB��nB|�n³lB<GnkB��n���o��n��sB�nB`�nB�n�
^
hidden1/weights/readIdentityhidden1/weights*"
_class
loc:@hidden1/weights*
T0
�
hidden1/biasesConst*
dtype0*�
value�B�2"�~�n��n�|�n�|�nB~�nB|�nB|�n�|�n�~�nBB�nB~�n�D�n�|�n�~�nB}�nBßn�|�nB�n�|�nB|�nB~�n�{�n��%oB|�nB~�n��nB|�n�~�nB~�n�~�nB#tgB~�nB~�nB|�n���j��(n��Am��n�|�nB{�n�~�nB|�n�3�mB|�n�}�n�~�nB~�nB|�nB|�nB~�n�
[
hidden1/biases/readIdentityhidden1/biases*!
_class
loc:@hidden1/biases*
T0
x
hidden1/MatMulMatMulBatchNorm/batchnorm/add_1hidden1/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden1/addAddhidden1/MatMulhidden1/biases/read*
T0
*
hidden1/ReluReluhidden1/add*
T0
�
BatchNorm_1/betaConst*
dtype0*�
value�B�2"�����v� �\�l�QB�}d!�B�a�49��s:N���RB2*\B�|�BB�fB���z.���B�Jr�a��B3��B���h���>�nu�B+/UB�"VBU��V��kB(k�B�Mx��u�A m����\B3�@N�Bc�pB�7��3|�B��A��Q�9�tB �xB��u����;�5ezB�(XB�ԗ�0SBҽ}B
a
BatchNorm_1/beta/readIdentityBatchNorm_1/beta*#
_class
loc:@BatchNorm_1/beta*
T0
�
BatchNorm_1/moving_meanConst*
dtype0*�
value�B�2"���EZ�E(�EŇE:&�4XڐE)��4���36HI4�-}9D/�4�E�V�EL�E?�Ez�D��E�I24d`�E�44���4Z�=F�f:j_�ED=�E��Eb4dںE�X04��40)9t�<F&_�E�"F	^IF]Y�E<r�E��c42�?Fu��4��Et@�E�J"9��E���Etg�E�WFN��E�̅E4E�E
v
BatchNorm_1/moving_mean/readIdentityBatchNorm_1/moving_mean**
_class 
loc:@BatchNorm_1/moving_mean*
T0
�
BatchNorm_1/moving_varianceConst*
dtype0*�
value�B�2"��krG�'�F�?G��sG�\�7#C�Fa��7��7���7�׏;��7��F�d�F���Fn4�F��F^	G���7��sG�7�s�7#oCG��<��F���FlG���7���F�_�7���70̀;�RGi6�Fl�%G��F�m�F>(dF���7��CG��7�qG��FE��;�f
G�;�F�z�F]?�FW�sG��	G�h�F
�
 BatchNorm_1/moving_variance/readIdentityBatchNorm_1/moving_variance*.
_class$
" loc:@BatchNorm_1/moving_variance*
T0
^
0hidden1/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden1/BatchNorm/moments/MeanMeanhidden1/Relu0hidden1/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden1/BatchNorm/moments/StopGradientStopGradienthidden1/BatchNorm/moments/Mean*
T0
e
5hidden1/BatchNorm/moments/sufficient_statistics/ShapeShapehidden1/Relu*
out_type0*
T0
�
4hidden1/BatchNorm/moments/sufficient_statistics/CastCast5hidden1/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden1/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden1/BatchNorm/moments/sufficient_statistics/GatherGather4hidden1/BatchNorm/moments/sufficient_statistics/Cast>hidden1/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden1/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden1/BatchNorm/moments/sufficient_statistics/countProd6hidden1/BatchNorm/moments/sufficient_statistics/Gather5hidden1/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden1/BatchNorm/moments/sufficient_statistics/SubSubhidden1/Relu&hidden1/BatchNorm/moments/StopGradient*
T0
�
Ahidden1/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden1/Relu&hidden1/BatchNorm/moments/StopGradient*
T0
w
Ihidden1/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden1/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden1/BatchNorm/moments/sufficient_statistics/SubIhidden1/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden1/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden1/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden1/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden1/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden1/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden1/BatchNorm/moments/ReshapeReshape&hidden1/BatchNorm/moments/StopGradienthidden1/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden1/BatchNorm/moments/normalize/divisor
Reciprocal5hidden1/BatchNorm/moments/sufficient_statistics/count8^hidden1/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden1/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden1/BatchNorm/moments/normalize/shifted_meanMul7hidden1/BatchNorm/moments/sufficient_statistics/mean_ss+hidden1/BatchNorm/moments/normalize/divisor*
T0
�
(hidden1/BatchNorm/moments/normalize/meanAdd0hidden1/BatchNorm/moments/normalize/shifted_mean!hidden1/BatchNorm/moments/Reshape*
T0
�
'hidden1/BatchNorm/moments/normalize/MulMul6hidden1/BatchNorm/moments/sufficient_statistics/var_ss+hidden1/BatchNorm/moments/normalize/divisor*
T0
o
*hidden1/BatchNorm/moments/normalize/SquareSquare0hidden1/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden1/BatchNorm/moments/normalize/varianceSub'hidden1/BatchNorm/moments/normalize/Mul*hidden1/BatchNorm/moments/normalize/Square*
T0
�
'hidden1/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_1/moving_mean*
valueB
 *���=
�
%hidden1/BatchNorm/AssignMovingAvg/subSubBatchNorm_1/moving_mean/read(hidden1/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_1/moving_mean*
T0
�
%hidden1/BatchNorm/AssignMovingAvg/mulMul%hidden1/BatchNorm/AssignMovingAvg/sub'hidden1/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_1/moving_mean*
T0
�
!hidden1/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_1/moving_mean%hidden1/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_1/moving_mean*
use_locking( *
T0
�
)hidden1/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_1/moving_variance*
valueB
 *���=
�
'hidden1/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_1/moving_variance/read,hidden1/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_1/moving_variance*
T0
�
'hidden1/BatchNorm/AssignMovingAvg_1/mulMul'hidden1/BatchNorm/AssignMovingAvg_1/sub)hidden1/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_1/moving_variance*
T0
�
#hidden1/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_1/moving_variance'hidden1/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_1/moving_variance*
use_locking( *
T0
�
hidden1/BatchNorm/IdentityIdentity(hidden1/BatchNorm/moments/normalize/mean"^hidden1/BatchNorm/AssignMovingAvg$^hidden1/BatchNorm/AssignMovingAvg_1*
T0
�
hidden1/BatchNorm/Identity_1Identity,hidden1/BatchNorm/moments/normalize/variance"^hidden1/BatchNorm/AssignMovingAvg$^hidden1/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden1/BatchNorm/batchnorm/addAddhidden1/BatchNorm/Identity_1!hidden1/BatchNorm/batchnorm/add/y*
T0
T
!hidden1/BatchNorm/batchnorm/RsqrtRsqrthidden1/BatchNorm/batchnorm/add*
T0
`
hidden1/BatchNorm/batchnorm/mulMulhidden1/Relu!hidden1/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden1/BatchNorm/batchnorm/mul_1Mulhidden1/BatchNorm/Identity!hidden1/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden1/BatchNorm/batchnorm/subSubBatchNorm_1/beta/read!hidden1/BatchNorm/batchnorm/mul_1*
T0
s
!hidden1/BatchNorm/batchnorm/add_1Addhidden1/BatchNorm/batchnorm/mulhidden1/BatchNorm/batchnorm/sub*
T0
�N
hidden2/weightsConst*
dtype0*�N
value�NB�N22"�N6�zB�n�7�m�7oBH�nB��n�nBb�o�H{n�nB�HnB&nn�F�nB��nB�sn�� n¼`nB�y�>�nB��nB��Bn�nBI�m�mBn.n�[Az�on�6 nB��B��i�x�sKp®o�'�n�nB|1s��0n�xlrGm°~nB-�n»:o�E2lnB��m��nB�1oB�nB�.oª�j��o�nmv¸�n�)�nB��n�\]nB��m��{o²�nB�3nB�;n�snB�7nB��k�LqnBHGnBD�BP�nB܁nB��=B�nB`qnBFAnB�n��zLo�[�nB{��%�v��t�эl��n�l�r�nB��j0o¦�oB�kB�n�Ho�8�g,lB�o���nB���B��nBV�n� �n���p�d4kBPnB(noB��nB�	p°�mB��n�m��`nB�\n��yn�0�n���mBJ�gB�n�h	oB��eB�nB�oBo�:B��nBbn�nB��n��?���,p���nB�V�J�p�t�wn��n%o�6�lB��e�l���lB?�n���nB�}n��6p���pB�nB2n�7o�Y(oB;�mBT�m�g�s�g�oB��n§�qB0�nBD�nBlcoBz�n�m�ntn�0�nB+.oB�Vn�n���nBs�nB�nB�nB�(�B�9nBrynB{�~BJ1oB4n��'oB��sBg�e�<�n�R�nB�FBn�pB&m�R1kB)oBJ�n�_l���OB��oB��mB��m�^`nB��hº�mBL�h��oB.o�:�n�oB�2nBV3o�gSkzn��o�to®�nB.�nB��n���nB}�n�d7n»�nB��mB�n�HZo �nBݓnB�nB��nBi�ZBJoB��nB�3<B��nB��nB �nB�Yn¶:yn�d�nB�[�f�n�u�ϗn�n§�n�6ynBh-n�x�n��OnB�nzn�0GnB�onB�eoBm�nB�nB�{n1oB�mnB��n�80ooo�
�nBl�s£{n�P�n�pB�Hn	o¡kBB.nBn�nBb'l�x�nB��nB�]�2KoB|*o�Ȇ}B��nB��m®�BpnB��nB^�m�qB䭄B�ln®%oBZ��¦u�C�f��ll�?nBn�oBE=n�$g{�;�lB�`rB	�p�p�n�gOnB��B�jBn���mB�so¢�nBp�n�u/s�m��nBLoB�n�ˌnB>=nB[�n¶VnBl|nB��n��n���n�znB|�nB[�no°�n§�n�h,jB�hn�nB��Ln�A�n��SoB�UnB��IB�unBP2n�4�P�Z�nBVVB�nB�n�	\n�e�nB��n¼oB+�m���n���mB��n�>�n�<�nª�nB�0n�"�nB�n�.;oB��nB'nB��nB{�nB��nnBt�nB@[nEnB�o��n�(nB�JnB�n���nB<^n�Z�n��n�to�u�d*nBj�nB����;nB�\n���nB�unB ��rwn��nB�P�B��m���^B�)n�3�n��n��7nB:�n�!�nBXrnB��n�#�nBd�n�&�n�dn�2�nB�n�nB�nB��nB��n�{_o���nB�zn·�nB�2o�ȱnB�cn�Z�nBJ�nB� o�
Bn�xnB��nB��n� Kn¯7nB��m��hnB*3lBh�nBx
nB��GBj/oB�Ho¼�n¾�n�%�¨@nB�Sn�M{E�@qnBW4q¶SnB��n�|{n�nB�n�n��"n���mB&*o¼)n��m��pn�9�n�u�m�-KoB��n��n°�m�ivnB�An�m�( s�&o�oBzAm´nB��p�Vrª�nB�n�Nkm�P�m��-oBK�pB�nB�nBj�xBLnB��nB���A�3o�BTnBlrnBs8n�e�d�J^u��o����|�B�79��j�Z�o�M�n��nB��s�x;o¶qB8�nBHo��pqB�RZB�Dn���mB�#nBb�nB*�n��gn�pB58oB�n�.�nB��n1n���nB4]nBNQnB�$oB��n�"�mB�nB"]nqn�nB&n��sn�1m��6o�| o�f7¥Sn�h�nBn�B�nB��Bv�n�IoBj\eB�5n��\rB<wnB��nB��nB�[nB��nB�	nB(	o� �nB��n�gwnB"	oB��n��n��#nB`�nB@hn���n� �nBnBio�K�nB�nl´"n�N�n�J�p´bn��_o¿��BL|nB�|nB�:o­�nB|oB��n�D�m�H�n�υg���nBYnB�BxrnB�[q���m�U�lB��}BR�m��UnB���8�i�(��BK�n�N nBO�mBp�n���2EmBJ�o�n ,oB��m���nEpB�$o�VJp�3p�@MnB̋n±�BPn�[8�!n�G�mB��n°�n�JBq�m�ynB�	mB�Kn��tnB��oB�nBe2n��n¶wn��dn�W,j��	o� =nB�ѽ��zn��n«�n�nB,�~BOhlB��mB��]Bx�r���xB�qB!�mBp�lBs�o§npBmB��m�/�mB��mBf�m��m��J����n�mo� 9bBtn���n�҃nB�`mBy(q��GnBrjB7pnB&o±CnBz�n��&o�mB��nBfnB��h¨�nB
�nB�jn���mB�op�6�n�_o�t0�¦}nB38nB��n��nB��[B�0o��nB`bwBo�MOlBE,l���mBQ�nB`�n���pB��mB�m�l�o$nBnB0�m�r��lEn�G�nBy�n,nB(4n� �nB�Mn�LkB�n�nB�nB��m�ҺmB�oB�Z:B3�mB�n��qnB��oBD8n��n�2�nBڨnB�An¨}p��;n��Dn�a��eFn���nB_�n�h�nB�JB Ko�8�nBN�tB��n�kBs�pBEtlB�8kB�%>B�0pBHnB�/oB�emB��n©�nBk?oB���0�nB2MnB�iBU�m�R�n���mBB�mB��uB�Ln�blB.�nVnB}�m�~JnB�tnB�r¿zn��n��m¾�n�P�n�>wB�,o�ZoBEoB[oB��mB�ӂB�	o��n�np�q\°�nB>�n¢cw��nB��l�'oBZ�n��n��	nB)p� �o��wsB}�nB�(n�o��Od±_Bk�n�6�o��oBhIo�{�m�*�n�ʒoBFnBv�n�I�nB��m�n�	n��nBd�mBkUpBe�n�"�n�A�nB�nMn�ӹw�B�n��n��1iB\!n­oB���n� Wn�Q^n�c�pBCTB�>oBҨn��BlZmB5B�,nB��sBu�k�pB*lBB�oB.o�N�nB��n�:n�Mkq��Z��4o�H�n«wrB-�n�z0n�nB�nB��nB.�n�(�mBKXn��do�l�nBUnB�xnB��nB��n�<�nB1�nBV�nB��n��m_o�(<n¾�B�nn�R�nB_[�B$oB�fn´�n�}�nBpb�B�nB�nB�\B��nB��f�nBj�nB�vn��Bn��vnB�enB��n��oB�,n�p�n�brn��nB�o���n�}�n��Rn°qn�nB��nB��oB�,oBP�l��inB�n�nB�fn¤}nB��nB��nB<nn�P�nBEn��n�{�nB��mB�Qo�l�oB�fnBƕn��6�Bܬn�b�nB̿nB��oB��B��nB�8n�$v�d�oB�Vk�r@mB؇mB�gnB��{B,p��[oB�nB�@wB-�noBٰnBw�j�πnB��nB��mBo��?n³�n��pB��nB�n��n���nB�mB^�n�i+nB�dn®�m��oB
�nB/�n�A�n���nBU�mB"{nB-_nB����nBiKn�{�4Bj�nB�$oB�ZnB��n°�y�n�PunB⢓B��n���v�fn�ʓn�=n�oBo�n|n�nB�o��XnB��nB�nB�n¬�mBИrB�!nBL�nB�/oB��n�6�nB��n��vnB�on�koB�_n�R|nB��n�H�n�NoB��nBɵnB��n�L�m�z�nB��nB
�nBwzn�,Tt�nB7|n´��A�nB#�nB
�n��?nBU+QBHn�d�nB;�K��&n²`��j�n�vnB��nB�n���n�fNnB��nB�n�`n��nB�%oB4�n��nBD�nB��n�}�nB^8n�n&o�=�s�m�~�n��oBt`oB�PoXn�( m��bn���nB�mBy�o��nB��nB��n�}�m�nB�_yª�nBs2nB�@B�HnBSOnoB�w�9���|an¹�nB�j��1Hw�[Jt�.
n�Qjl�V0qB��n��i�)�n�)�n­eo��+oB��n�o���linB��n�"��foB��nB��m�p,q�anBU1o�~snBOnºwnBd|n��`o��3mBc^nB�\nB�m�m��nB��oB�;nB�QnB!l�.o�$�n�yw�B��nB)�nB�Nn��FlB�a�B<�n�7qnB��@B��m�DixB#Fk�|�lB�%mB9�o�4uB�	kB��oB��n�0�n�W�nB�pB��eB.�n�qhnB��q��<nB��n�nBptn�mBrdn�U�p�8gnBP�nB&�l��wn��Wn���pinB`=nB�0m�_nB�nBXWm�k�n�L�mB�b�#�nBPoB܁�B�nBd:n�nB�Hk²vS�?o��#oB�7A�-ukg�-�l�{�o�ٌrB �nB�{©�o�'vA�bo�ܢnB��o�E�l°�r�8^nB/�n»?kB�{nB��nB�p�(�l���iB�o�9�nB�%o¶Jn�ZXlB�/nB��mB�mB2�n�(�nBKoB
~nB�]n��n��]n�(�m�Y�i"n��onB<p����n���n�x�n�J�nB���B��lB8 oB�^aB��s¨�xB�pB�mBE�gB�st�ʏpB��mB1n��mBЊnZn���m�(9�¾n���n�)ohBZo�"on�nBa�nB��jMnB�1l��7nB�nB�YlB�Mn�io�Z�sdnB�nBt^o�
in�h�nBs�kBmxnBKoB�]BB�bnB8�n��:B��nB3�mB CnB�lm���\�n��fnBN�F���j�M�v���q�P�qB
pBa�l�nWfª�lBd�m��oB��oB�jBP�B�{nB�:pBy�l¬�nB�knB�n�Y�n�¤nB{�n|n��&nBg�nBh�n�VoB��nB��n·�n�OoBs�nB6]n²In¦Yo���n��1o�6�NBEoBsoB��KB6 oBi�n��nB�>nB��#B؏n¤�nB�΍B��nB�xq�TAnB��n�{"o§UnBT`nB��nB��nSn�
7nB��n¯�n��ZnoB?�n���mBunB�nB	�n�+;nB,mB�HnB�o��inB0�n�L�o�.�nB�nBSo�VBo�1o±LoB�nB��n­�m��@n�Z�n�K��B��n�|�nB4���71n��n���nBV|nB�E�B'wmB��n��0B�9mBxr�BNqB7�u��,��[�cB؆yB�nB��n���n�F�nB-	o�\�l�E�p�nB[�n¢
iB	�n��NoBWjnB?+nBmon�<oB6n�|Vn���n�n�!�n�	o�^oB��nB_�nB2n�CnB|hnB��n�DGn�v�mB;a�ޒnB�nB��BAnBoB�2n�'�nB�>�B�9o�b�nBĉ�o�n�^�Fnn��VnBF
oBtcn�*xn��OnBQ�n�Dn�߮nB��n�So�j�n�V�n�8p�Cn�.�mB��n�q~n�Zn��n�NInB��n��^nBRHn�J�nBF�n�m�nB'�mB��nB}�m�h�nB��nBSn�
oB�nB��pº�m��n
����nB�8nBe�n�l�nB_VB*�n�@�nB��}B�n±�iB�_o�[�nB��nBln���nB��nB?)n�n��unB�#nB�n�conBGn���nBYn�s�nB�So�1DnB��n�;`gB��n�y�nBdn��0nB!4o���nB�mBk�s·�m�n�8qB�pnB�o�Ǡm�\7n�lpnBHrB�n��knB>��o�p�n�n�zJp��VU�h�mB;o��/�¯UoBn�P�]�qB"�n�r�p��bmB�Uf�͛onm�_(nB��n�n±�i�!�����n�=Wo��&lB�Un��`n�=bo�=oB�}m�m�mB}�m�R-nBh�n�	�pB'�n�p�oB��nBd�nBR?n��nB�mB|n���nB�o���:B��nB��nV(BŭnB�oB�m�?JpBNj[B�o�nB9V�4j�x���o��mB�mB�Bn�HxspB�t��z9n���mB��nBE�n�X�rB�ln�7dpB|�o�mB��n¹knhn�p��o��o� (nB�CoB�5n�a�n�`+o¸�o¿KnB�|nB�n���nBn�nB�n���mdnB��g�PnB��nB]��B�2oBuDn�ļn���n��M¡p��?oB�.B��p�*}d�x�l��Wo�wnmB]ciB�VT���n��n��Jw�W_nB��n��Pn�z¦on�p�9BgB �nB<0oB�2n�Psn�ɔn­~nB~?n���nB�)nB�o�^�n��n�0�m��oB�oB'�n¦�nB�/oB��n�h�n�-�nB����,nBc>nB��BBJ7oBS�n�	pn�f�mBp�;B1�m�{+nBG�:�r¤Vs�5n2qB9oBeo��f�;s¨�n��	o�BnBFln��	n��lj°�m�2	o�C{g�@`nBl�nBn!n�1Go��Pp�nB��"ª,nB�dn��,nB�n�t�n��{oBN7oB��nB}�p�f�n�E]oB�LnBP�nB��n�*��gnB��nº��B�-nB�nB@nB[GB�ȞB�n��^nB���)Z¶l[�q�S�mB�jB�o¹]ª�mB�nB�n�h�n�I�nB �nBbApB&�nB��nB�r�\nB*�n���i�7o�����n��wB��nBN�nBk�mB�8nB�o�ǷoB(�nB3�mBJo»�n�J�nBa�nB_oB 0oB�4^��cnBd n�MƛB�lnB<cnB(FnB�+p�]Ec�V/n§inBV��Z�|C\¹t[BV�n�s¬�mBj�^��2o�dYmBkEpBH�n��oB9CnB��mB��nB�"nB��iBvnB��nbn��mBͪg�AIo��j®�nBYnB�pp�ԪnB\�n¡�j�v�nB��nB�ptnB,dnBZ*q�nBc/oB"+���nB�oB�VAB��nBM�o¢lnBsPn�:z��n��nB;�Bg�m�\>v�X�r�{pm¢qi�vboB�Dh�.�l�=|eBE jº=oBu�k�Ds�i�7�^fnB��G��^uB|nBnB?.n�#qp²9nBJ�nBun´�mBaoBo�;�n��EnB�Gn�7�n�n¨hnBz�nn¿>n´�n�nMn��pB�nB<3nB`��BNCn¼�n�^qnB��mB���B2WoB6sn;y6oB�j�:GnB�On�o»�nBбn��nB�+nB�n�BInBBxnn�Ҕn���nB[�n[nB�<n¬UnBhAn�2jnB!�nn��:n��nB�`oB5�o��,o��il�m¸nB��nB�^oº�nB�AnBl�n�w<oxnB��v���nB��nB�\4BbnB#�n��nB�'mBN/�m�Z�nB� R��/y¥Au�� n���k�U�oB��n��g�t�n�R�n�r[p¨�nB"�n�&�n��m¼�nB+4n�9�B�4nB��nBծn»�n�8�nBDWnBn�"nB�nB�nn��<n�1o��^n���nBOnB�^n�nB62nB�6n���nBL�nBӼ;B��nBpnnBoh9B��mBTMn�ŋnB�Tn�܋�0n§^nB��6�?o�u�=Jo���n��&n���n�8�n�0�nBnBM�n��nB	�n��n�vn��/nB�n�m�BRoB�UnBn�t%n³RpB��nBon�nB�mnB~oB��n�_o�yn��ZnBV�nBU�n�
`o¬�nB�LnB�gnB`co�
y���nB��n���B�snB�$oB�cnB^�rB���H`n�6�nB8w��kui�j�e�>�s�6�p�)�n��k�s�oB	nB��n�@�nB	oB�nBʦk�=nBS�s±�o��nB�nB[o��zl��jBr!n�nB*o���nB�Yn�(�nB�nB��r¬n�^fnB��oB:�n�9�m�p)N��bo��AnBnrBV�n±�nB��B>7n)n�Ho�n�n�+I#³�mB�	o�«EnB��i�k
pB�to®Pp�F�mB��Bg�o�9Bn½bnBR�n���m�Dl�b���n��o�,�lB��n�n�vn�ٝnB{tB�ln�foB�=o��WnB�n�4OoB��nB#�j�mº�nB�ylBU2n��n� ����rn��xnB�	dB�Kn�f�nB`n7B�GoB��n��un�LTn�f��y�oB��n��l�B��oB�s'mB5=n�$n»_oBS�lB�$m�"qhoBȌn�ћm�ծp�ՃB|o��n��~rB�n�0�n�e�l�2KnB*�lB�nBa8oB��n�\mn�߅\B<pnB��nB�tpB��n��]n��nB��nBJ*n�q�n«Snµ̀´�n���nB+�¶�n�4�n�go$nB�2VB�mB��n�O�BfdlB�HjB_oBX�nB�C��}�VB��rBmqnB�"o½�nBN�n�~Qn��}p�k�.�n� 7n­�mB�n��}n�Z�nB�nB�lB��mB�n�nBf�nB:�o´Mn��do¬�n�P<nB�WnB#Ym�.�mB4�nBdn��QnB�n�E��°unBJ�nB�p,Bn�nB�n�&oB�nB��°�o�jhnBF�����q�6�w�m6j²�w°���Dp��f���lBi�oBHfn��nB#No�c�m���q)nB50n�w4w�nBX�nB�m�Oo�^}gB6�n�:�mBbn�V�nB�n��nBO�mB��n�B�nBroB6�m���n½*o�+�n�pLo�nBc�qB�LnB
�nB�	�B~�mB'�n���nB7xn�n!b�!NkB�Do�����BnB��k�qB��n��9o�P�nB��k�o��nB+�nB��mB�{n��mv�çnBQo�lBb~nB��nB�Jn��nB�.rBv�nBi�pB��n�An�ҞmBX�nB�nB��qB�hn��"n�>nB{n�c#n�v�lBG�n�64n��l®?o�tEn³H\�^8n¾�nB��n�7oBsY�BpB�o¿�gB1^m�MoB�GgB5�pBr�nB�BN2nB�pBu�p���oB�(n¯gpB��kB�8�pn�0 pB�qBH�m°�noB(�nB�Gm� 7nB�Ln�toB�n�K=l��o��fo��m�abnB5AnB�Vo�dknBoB�pnVoB'�n�d<B�	oBDnB�)'B�mB��n�p�nB�BoB��UB�qn��nB;(O�,\j«x��o�*�nBUnB(n�{br�>�oB-�z���m��8nB)\g�S�n� ��B �nBVFk�r�n�C&oB,�nB�So�n�,�nB՚n�[�nOnBؿnB��n�nB��n��o���mB�SnB�n�p�nB!nB��n�@�n��2oB(c�WJnB^�nB6��B��nB1 n�F9oBd�l�X�	Do 7nB�(B`�w·Je�E�q�Pn�بm��oBM�q¸pl�`skBk�n�nB�mn§�o��<l�nB��n�=jrB�	nB�-oB>�nYcB�Yp�f"o�~�u��o��nB�kmBGoBa�n��"mB�nB2�nB>Wm�ջn�	XnBo�nB�rnB�BnB�I~B�knB��n�7��B��nB��nB��nB��n½=\��?oFnB�ŋ²�p���d�Afl®�p�5Jp���lB�uj¢ooB�dB�En��nBV�nB0okB�fnBlnB=�r�B�nBR9n�CGn o�
^
hidden2/weights/readIdentityhidden2/weights*"
_class
loc:@hidden2/weights*
T0
�
hidden2/biasesConst*
dtype0*�
value�B�2"�|�n�~�n�~�n�~�nB~�nB��nB~�nB|�nB|�n�n�|�n��nBz�n�}�n�}�nB~�nB|�nB+oB{�n�|�n�_�j�~�n�~�nB{�n�~�n��tB~�nB|�n�bmB{�nB�*oB��nB|�n�y�nB|�n��nB~�n�|�n�~�nB~�nB}�nB}�nB�nB|�nB܊nB{�n�~�n�{�nB{�nB|�nB
[
hidden2/biases/readIdentityhidden2/biases*!
_class
loc:@hidden2/biases*
T0
�
hidden2/MatMulMatMul!hidden1/BatchNorm/batchnorm/add_1hidden2/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden2/addAddhidden2/MatMulhidden2/biases/read*
T0
*
hidden2/ReluReluhidden2/add*
T0
�
BatchNorm_2/betaConst*
dtype0*�
value�B�2"���vB �B˥Z�.�n�H�"��.B#p���X�B�hB1֣B��+��RBQny�ք����hR��=�|��}�˖���f�0.��4���_r�HB��BM�A�hyB�n�Y��G�VB�yB�2��&��B�O�� �s_�&�1B.IB$��B�Ae�μ�BE�vBŹZ��AѴ���Z�@�;���F�B�!sBV�%B
a
BatchNorm_2/beta/readIdentityBatchNorm_2/beta*#
_class
loc:@BatchNorm_2/beta*
T0
�
BatchNorm_2/moving_meanConst*
dtype0*�
value�B�2"�lz;��<5{HF�)�4�*�4�Y�F��c4�:�F3�!G��B��YDx�DZf�5_"5ZA�F3�5�$�5��ZF�=LF�2�4���G�Ҥ5��4F�($5�B�F�}PG�ҷFWV75|��9��,F��o9c��F_��F0�G�Y�:Q
�;C�F�_F���F�5��DJ��F�Fkh�4U�9kjBD6E5Q��4�<���F
v
BatchNorm_2/moving_mean/readIdentityBatchNorm_2/moving_mean**
_class 
loc:@BatchNorm_2/moving_mean*
T0
�
BatchNorm_2/moving_varianceConst*
dtype0*�
value�B�2"��7�=s#�7y�G�F�7���7GRHk��7�ϦGD�;G��F�1�H�דG�]�7�Y�7���H���7H�7�CH���Gc��7�),H<�7�9Hp�7۶�GD��GQ^�G���70�8<�3nH��<�(G;HRr�G]<�;gr&><�:H��lG�v�G�5�7b).H.��HJf@H�J�7���<��G��7�p�7,9�>��G
�
 BatchNorm_2/moving_variance/readIdentityBatchNorm_2/moving_variance*.
_class$
" loc:@BatchNorm_2/moving_variance*
T0
^
0hidden2/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden2/BatchNorm/moments/MeanMeanhidden2/Relu0hidden2/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden2/BatchNorm/moments/StopGradientStopGradienthidden2/BatchNorm/moments/Mean*
T0
e
5hidden2/BatchNorm/moments/sufficient_statistics/ShapeShapehidden2/Relu*
out_type0*
T0
�
4hidden2/BatchNorm/moments/sufficient_statistics/CastCast5hidden2/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden2/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden2/BatchNorm/moments/sufficient_statistics/GatherGather4hidden2/BatchNorm/moments/sufficient_statistics/Cast>hidden2/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden2/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden2/BatchNorm/moments/sufficient_statistics/countProd6hidden2/BatchNorm/moments/sufficient_statistics/Gather5hidden2/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden2/BatchNorm/moments/sufficient_statistics/SubSubhidden2/Relu&hidden2/BatchNorm/moments/StopGradient*
T0
�
Ahidden2/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden2/Relu&hidden2/BatchNorm/moments/StopGradient*
T0
w
Ihidden2/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden2/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden2/BatchNorm/moments/sufficient_statistics/SubIhidden2/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden2/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden2/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden2/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden2/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden2/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden2/BatchNorm/moments/ReshapeReshape&hidden2/BatchNorm/moments/StopGradienthidden2/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden2/BatchNorm/moments/normalize/divisor
Reciprocal5hidden2/BatchNorm/moments/sufficient_statistics/count8^hidden2/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden2/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden2/BatchNorm/moments/normalize/shifted_meanMul7hidden2/BatchNorm/moments/sufficient_statistics/mean_ss+hidden2/BatchNorm/moments/normalize/divisor*
T0
�
(hidden2/BatchNorm/moments/normalize/meanAdd0hidden2/BatchNorm/moments/normalize/shifted_mean!hidden2/BatchNorm/moments/Reshape*
T0
�
'hidden2/BatchNorm/moments/normalize/MulMul6hidden2/BatchNorm/moments/sufficient_statistics/var_ss+hidden2/BatchNorm/moments/normalize/divisor*
T0
o
*hidden2/BatchNorm/moments/normalize/SquareSquare0hidden2/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden2/BatchNorm/moments/normalize/varianceSub'hidden2/BatchNorm/moments/normalize/Mul*hidden2/BatchNorm/moments/normalize/Square*
T0
�
'hidden2/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_2/moving_mean*
valueB
 *���=
�
%hidden2/BatchNorm/AssignMovingAvg/subSubBatchNorm_2/moving_mean/read(hidden2/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_2/moving_mean*
T0
�
%hidden2/BatchNorm/AssignMovingAvg/mulMul%hidden2/BatchNorm/AssignMovingAvg/sub'hidden2/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_2/moving_mean*
T0
�
!hidden2/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_2/moving_mean%hidden2/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_2/moving_mean*
use_locking( *
T0
�
)hidden2/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_2/moving_variance*
valueB
 *���=
�
'hidden2/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_2/moving_variance/read,hidden2/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_2/moving_variance*
T0
�
'hidden2/BatchNorm/AssignMovingAvg_1/mulMul'hidden2/BatchNorm/AssignMovingAvg_1/sub)hidden2/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_2/moving_variance*
T0
�
#hidden2/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_2/moving_variance'hidden2/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_2/moving_variance*
use_locking( *
T0
�
hidden2/BatchNorm/IdentityIdentity(hidden2/BatchNorm/moments/normalize/mean"^hidden2/BatchNorm/AssignMovingAvg$^hidden2/BatchNorm/AssignMovingAvg_1*
T0
�
hidden2/BatchNorm/Identity_1Identity,hidden2/BatchNorm/moments/normalize/variance"^hidden2/BatchNorm/AssignMovingAvg$^hidden2/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden2/BatchNorm/batchnorm/addAddhidden2/BatchNorm/Identity_1!hidden2/BatchNorm/batchnorm/add/y*
T0
T
!hidden2/BatchNorm/batchnorm/RsqrtRsqrthidden2/BatchNorm/batchnorm/add*
T0
`
hidden2/BatchNorm/batchnorm/mulMulhidden2/Relu!hidden2/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden2/BatchNorm/batchnorm/mul_1Mulhidden2/BatchNorm/Identity!hidden2/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden2/BatchNorm/batchnorm/subSubBatchNorm_2/beta/read!hidden2/BatchNorm/batchnorm/mul_1*
T0
s
!hidden2/BatchNorm/batchnorm/add_1Addhidden2/BatchNorm/batchnorm/mulhidden2/BatchNorm/batchnorm/sub*
T0
�N
hidden3/weightsConst*
dtype0*�N
value�NB�N22"�N�&>�f�n��h��q�4�n�nBk�kB�boB�(n­�uB��r�Hn���wB�bBAcnB�ymB{�pB;�uB�����I�*-o���k¦Bn�L3nJl��:nB��nB��kBW�n�m~n¦�n��o���o��tn��anB��nB��mB��n�o}BçlB�&kB.$oBvUn�n�ӡB�on�ѧnB�gk���m�Nn���nB S0� >n�n��nB�nB�o�Uo�#UnBQ,n°�m�p_vB4enB��nB\�nB�Gn�X_nBؚ�;�xB�nByKn��Mn:n���nB��n�<�n�nB:�n5n��:n�:�n��nB�|o��(on�RoB�nB~�n�YoB��nBp�w�|�n¾o�JoB�/�>RnB{n�j�n��nB�Jn�G!oB�ƅ¹.mB��nB�oB#vmB�>k��o�nBĥn��n��eB=�`B�nBL*m��n�2p�I"X�dBXnB�m�6Yn�EIn�5rB��nB;�mBS�o 9o�V�w�$�nB�$nB��nB9�m���nB�nBz"nB��o�n¾�B�nBa���m�j[nBi|n�P��o­2nB�q�$AnB��nB�o¿$u��n�ÇnB�n{nB��n�Ωn�CvnB�oB�nB�%��~�mB��mº�n�q"nB��n7�<�y���nB�To�B+o�O{n���n»�n�joB=�n��AnBP�nB��n�4Nn��SnBn�j� oBdJn���nB�n���m�8o�b�n½ZtB�oB�n¶�nB�j<B��n�,Xn³NoB��n���nB	n�olBnB
�n� �n���nB��nB��nB�InBs�nB�snB��pªnB{Jn�m�nB2�nB�'	�����بnBn:n�#o�n«<nB��nB�<n¥"o�e�n?o� knB^nB� o�0lj°9nB�dnB�nB��nB�nBx�mB��n�e�j�nB��nBwDnBUSB�pnBRn�X�n®�n��mBPdn��tB��nBA2nBF�m��+mB!�kBɀn�a�wB(�lBc���%Bb
�B<4n ��"�oB�j¼�/-� �mB�n¶�n���m�ႤBoyn�fLo��Zq�4�n��sB��m��mB�n¦;n��^n�YRo�T�nB&/o�"bn®`|B�s�����A� nB��nlnB�d$��n�$o� �nBQVn·�nB.�nB�l���nB�|nB��nB�o���nBZ"n��	o�(n���n�fB��nB<�nBY�nB�=nB"nB���B|��L nB�<n�VoB7#nB��nB�ZnYn�oBf&o��gn�A�n�cqnBt�n�v�pBOyn�b�n��4oB,oB�o�^'nB|�nB̀{B�aoB��n¼vn�8���n�.\nB�nBB�n�(�tB�5oBKlqB�ZlBrunB�Yn�^nB���BpZnB1�rB:�nB��oB��l�H��Au�nBs�n�e�yBp�xB�\��������nB[j���m�!Wn��'eB.�n��Rn�Oun¡;o²!1��nB�nB�fn¬�w���n´�n�<�nBa|«_nBVG��n��q��1qB�mnB��nB�a�B=nB��n¨�Xªzn�BoBs(n�b"�O�o���n��n�E�nB
�e �mB!oB�	oB��mBU�j�1��B�^n��n�7}mBTUo�h
����^�KgBcl¬�n�hDo��k��{nB��mB��n��nB<dmB\9oB�'o�ޤn��p��AnB
�n�FEnB�iBN�nB�Xn���m¿]BHnB�nJoB�_}B�nB�!n�|io�]n/n�nB�}B6|n���m��nB�|nB�LnB:9n¾xnB"�n�5�n�d��B��nBx�nB��nB*n¼�nB�Y���w�BF nB7In�sn�sn��nBn���n���n��.o�NEn���n®vn�*n���p���n�I�n�NnB�nB�nBx]nBr�nB=��nB_�n��nBBE�BanB�o£%o�-�n��n�nB@4q�nn��n���nBܞnB�nXnB.Xn�n��n#kB�n¸\oB�'o��n�G>n�iqB��5��m��o�a�mB��nB��m���n���nB��nBD�nB�oB�?n�E�n�v�nB=�j��PnB��n���mBb9o�pCn��tnAnB�ltB �m�n�"�n�-B<@oB��n�Uin¹�nB��BB�nBu�,���mB�oB��nB��n¸�oBj�n�\om�Jo��m�rltB�Y���:nB��nB��Z��nB�YB)�Ban�4epB�"oB*�nB��mB�pn���n�?nB��n���n�n¢�mB Cn�1�lB�pn��m�H�n���A�n�m�mB�goB�lKB8n���n±�n�[7_��cognB��mBV�m��ZoB<$nB �gB�nBDinB��nB�an®o�x�nB[\n�n��*nB��p�n��?nB,6n���m�R�n�r��BaZ]B�ln���nBڽnB��mB�TnB��n�@�n���nB��n��"nB��nB(�nB �nB�oB�n��5o�~fn��o�~knBDhn�Hyn�h��gnRnB�Mn�᳁�mnBx�nB�hnBB.nBŜnB�nB{kBz�nB��nB�nB�n��~nB�oB�n��zn���nB�RtªDnRnB/o�4n�,�n�ۉ}B�}JB��nB�VnBϦnBY�nBЉnB{�n�X�n��nB��n�7nB8�nB��nBqnBډoB=gn �nDn�Ҡn��MnB�yn���n�»i��m��nB�o�!B��n{nBian�=�nB��nBymB�n�.gB��oB}�nBzo��zq�S�_B��nB_�dnB �mB��s¨~$� n�6o½aoB��n¾܎B�Y�d�mB�mB �mB
�nB�_�B��n�,3n¨)o�LWn�Q-oBL�nB�*nB-nBrB;�nBo��o�(%n�7�nB��d��Lo�bz\¯�lB��nB�enB$2�¨Un�RPn�)�nB2�n�InB-�n�e�B'�nB�oB�VnB��nB�nB�bn� �nBVjnBN�nB��WBIoB�jncn�ƆnBfpn��T��韒�nBl1o�b+oB�@n�RinB"�n�t�nBr�n�$(n�u�nB�n�O�nB؆nBФe¨nBfn©�nBR�m \n�c�n�1�nB���Bt�nB��n��unB����on��o���nB��n�wn�ՃnB���ԁnB��nBrnBF�n��Tn�G@nB�o��n��o��|gBHkn�h�nB�=oBp{n���mB��B-8bBq#n��nB�nBX�nB�/nB#�n¢�n� unBY�non���n��nB�oB�qB�sn��Bn���m®�nB�n�*�nB�;nBq�b_n�>�mB�n����ɻnB�AnB[ln�(nB�u�n�nB��w�j�6NnB#unB�8o���o�<�nB	1k�\rn°�p�vxhBK�d�;;nBRr�Ęm�6�oB�L�B��YBHn�mB�'nBh�nBl�nBSo�tnB�mBd&oB"�rB̖n��co·�nB�?qB�n� �m¿Ln°2��X�n�a­+nB�w��n�o�p�n����mBX<nB��l�l�nBJ o�*�nB��t�X�n�>6nB��nB��nBun��nB��nB)n�xn�iB![nB��nB�o��[n'o�e�@�ti]B�@n�@�n�*o�+HnBv&n�]�n�{1nBMnB�nB�oB*Uoo���nB��lnBP�n��oB�oan��n���nB�d�B�!n"o�o�nB�q��Jn�$�n�1�nB��nB�0n���n�~�YB�n�l�n���m�
GnB�`nBdhn�H�nB8�nB�hn�ϙ����nB��nB�;nB��nB��mB���ZР�@�nB��n�( n�	o��n� �nB�nBT\n�m�.�n�"nB��n�&8n¶�k�nB.oB�znB��nB�mnB��nB�n��ӇB� oBl oB�Vn�AZinB۩nB�n�n�nss»YnB{J�¦�zB�nB��nB�o���r¿{nB�k�9�n�8���ԏdBN���joB��j�<o/cB�,��;cB?�j�~t�~TnB�+oB��kB��n�n�nmB�n«���VMnB�mB"�nB rj©�n�t�n­"oB�����n�! ��nB�d°�o�t�nBK�oB)���nB-�nB�4��!nBޱn�6WnB�A��f+nB��nBG5oBq�n�o���mB~�n�A$n�lKn�v�eB��n�C�nBq�n�V�n¤�mB�y�Ba#^B4�n-nB znB�$oB6�nB�nn¦Yn�UnB�o���n�`nB>RnB�nB��oB��n���n��tn�n�=Cn�7�n��nB>E`���n�\�nBW�n����W�nB
�nB��n�(:nB��oB�n���ª)o�ޜn��Ao�4�nB93mB�7o�m�sB��mB/op��"��*��B0anB��mB*�nB�.�B�<��;��ڪ~�i}n��0o�o�"@k��nB�PnB�%p�2Vn�0�m���nB��n��"n¤rg��oBt�nB�6nB�#nB7&nB���Bw�+�wB�CnB�nBb�n��PBT�nB"�nB%�m�x�n���nB�n�Y�@��nB֛nB�nnB�nBnB��n�&�nB�nB�On�	x}B8�nBV�nª�nB��nB��n�zi�ΆB��nB�unFn·�n�G`nB�mB�\oBxn��UnoB�nBˉnB�nB��r�yOnB�nB�MnB�n£�m���nB�wnB\B��nB��mBPWo���dn��wnB�DnB[�n�@qBB�n�v�l�%�p��nBh�n�S/oB>�eBmn�b-mB��q�,�p�}�uB�|B��n�S&o�lnB�m�cr��}�_���r�cVn�gWn�ܜnjk��o¨�nBg�cB�nB�nB.An�yOo��n�_�p��oBxsn��	nB�wn�.n��l²�mB��iB�.nB:Yn�ioBi֕B��n��n� nBbn�k�*B�dn�0?��΍pB��nBu�nB�l«nBğn��~\Bs!k�o��$wB�}~B�`n�#TqB(mB���A�5�W�j�mBr�mB�{nB�o�btpB6�n���nB�}nBx?n�변�f�nInB��m�df��n�.qn���n*n��n���`B�<pB��OB��kB�vn�d�k£�Q�kSn�zOnB!nnB��n�ŘpB��nB��qBҤlB@An�4�n�m>kB�<[�P�nB��d�`tnB�nB6�l*��denBd�n�Kl�`�wBb%B���nB'�tB�gn�L�nB�5mB~anª�n)n­nB�rrB��nB��mBdxnBH�iB�n���n� �n�m�x�0�nBi�f³�n�Ԓq�FdgnBʸnB�S�B�1nBڮn}m�}n�Ysn���nB�<`BznB�UoB��nB��n�x;n�W9oB*�n�9o���nB��=B��n�oB�n��n�nB�r�B�)\B}�n�'�nB�@nB+�nB�nB4o��n©�nB-�n��o�!�nB'knBG=oB��oB�5o�<o�;=nª�n�|knBEn�0nBm=f��-nª�mBgn����j�nB �nB�{n¬�mB\�m°�nBwЌ9pBH�nnB	sn�q�p�FPn³}M��n�@+o�(�iBb�t�y	oBJoB�Ln�n5nB�K8¦ gB.jn�Zq��pnBH�n��WnB�n��knBzoB8�m�MIo�.pn�ϷoB��nB6Yk�n oBh�nB�JoBX�n�blB�nB��b�o��nBO�m��RrnB�KnB�er�hnB�Fm�
�nBc�<�y�lBVoB��nB��n¾�lnB��j�>�n�C�s���vB�m¸�nB*�v���m��sB��YB�$|Bv7n³oB��nB2JnB1�oB&
o�k'n��nB	�n���4��mBz�lB�nB~�nB!�n�
En�N�n�F��o�lR�AmBu�w�V�m��\nBxCo��9N�>oB�nB��\�oB��p:nB�!�.'qB�=nB�knB�p�ږm��nB�>t�Bn«1l��atBC$i�lnBćk�Z?n9gB95��ߤxBu�n���uB��nBz�nB�[nB�{n°4n��nBQ,n�B*���nB8�mB*�nB�z��9Lo��o��nB��]���n��@�oBq�y¹�n�V�nBq�m���A��*oB�oBjm~�
oB2)oB��nB�rB�&nB�nB�n�܍o�:�f��anBg'm�|-nB6nB]�j��l�B�n¬Uo�X2m�fin�Hl`B�ǌB�lB.`oB�nB��nB�~pB-n�4\o�mBp�nbnB�nB��nB�ZnBCnB�3nYo�xn�#�n�J1nBo�i-o�r�un
oB��n�~�V��nB��n�:mB��nB�AmB��n¦=m¤�n�dn¥�n�9mB����n�MBwB:�p�5'p�sB;�B��n�[�mB�uoBQo�#l���[�,�o�
Bp�Yn�@�m�<1m¦9nB�^nB��kB�nB��nB�+oBX�n¶�n�n.nB��nB�unBX�wB��n�ձf>nB��kBS�mB5vn°�n�妋B\un�$�nB�o�HIn��@g�(o�sfaB��v�m�Jo��pBR�oB��n�c-mB��nB�lB�lx©�mBm�n�SQnB��mB�&oB=>�Ё��7nB�&o�,n�?�n���kun�ޣn�5�n�snBS�n�|�n�poB��n�{�i�D�n�o�H$nB	�nB,knB(qB`/o¼��B�nBH�n�##nB�$B&�n��m¬5oB��n�xBz�n�=�s�^�r�n��gnB<lB${pBJLo�1�oB҉o�5`m��hB��RB,�m�nB��oB�[j94µ�n�I�l�f�n� o��o��7oB4�nB�&nB��n�j���n�n��n´�l��/nBʙnB�nB��bB*�n�Bv�B/�mB��tB-BoBr n¤�n��A�5n�x�nB��k���n�u�k±�nB�w��"9kB�nBugnBW�o�l�&�nB6fpo�-#[��`eBS���kFnBQo�W�n¥�pBي+���dBfSn¿�|B�nB*�nB�AnB��n�.sn©~nB�]o�$lp½RnB�	oB6/nB׎l�Poµ]o��}nB�����n��g}�d�nB3�d��-n AnB-�j� �����nB�oBXo�VnnB�ByB:o�?��TB�znB5�n�ȱjB��MB�xn�2~BOk]BX�q"RB�ϟB�8o��kBبpB��h��.����BX}�ڑj�n�$an�q��Br1oB�	oB�x���>n�j�(�nB��aB�n���^�nB��mBj�nBd�UB��n�V��B��fB��B4�nBc�nB��n���nBT�nBeQm�ĥn�mB8gn�{pBt�nB�,nBZ4n��kB8�SB�boBV"��HnBy�mB�lµo;@W�n«�n�oB2�m�5kDB>�oBX�nB~�nB�nnB�sB��n�an��lo��n��	pB�nB4KnB5�nB�oBtbnB�(n�ҧn��0n��nB�����o�@Ss���lB�nB`�nBN�*���n���n��nB�dn�ʛk��|n­l��P����n��mB�lB\ sB��n���lBL�n�z;m�:�uBI}XB8oBj�nB�LpB3FpBIb�´9�BT`nB�m�1o�*�n���yBoBV�nB4�j�غn£�m���n �n¡�n�&q¶�m��nB�>oBRmB> o��%oB��nBFHB�cpB�nB�m�B��nº,nB�Am�n.oB3o�>�q��ln�ROn�ksn�nBB?oB]�n�ޡnB�nB��m�YeB}}nB�Ao�f�nB.oB��n��g'Cw�.�m�<�n�y�n�
Ho�\�n��"oB�UnB��m���nB�nB4*n�Zo�nl�S/nBr�n�oB�nB�n®�m�oBx�qB�SoBn�#nBWB��n�"�n�ƶn�o�n�b�o��nBu�j®�n�R�n�bnBͪmB��s�nB]B�Bh7n�P*s��sBH��B3�nB��q� Fn��pB^$�£3�B��q�~"n�2o�/�nB�g�N�m��ZnB&�kB,�nBeFqB�n��0o��nB�n�=n�2n�lnB��nB&�n©l\��gmB�>B.`o��o�Y�lB{̟Bb�nB�o�� o�nB�jB��nB�zB2�nBH�nB|�nB�\o��[�GnB3�k��So�jkB�{BWPZ�nB'ro�'m �l�a�cB�8�BSAp�~{nB��nB�nB�zpBO�n�x9nB�mB�8n�1�oB��n���mB��nB�enB��nQn�4nn�m�n���n��|:���lBʖxdo�b�nB��nUqn?nBѠnB�~nB�kB	|n�P;r�Jn�,�n��In�8:nB��}�^�m�1IvBpHoYgB���BB?nmB��oBI�n�x��i-�¯n�#o�C�n��On°�m�"1nB�$nB��lB�nBb�oB�oBQ�n�`nBȓe�˳nB1oB|RnB�n�Rjn�nfg¸amB��rB��nBd�n�(pn�aLB��nB��nB�cn���noB��n��MyB�9nB"�nB96n�Rbn���nB��nB*�n�nB�%nB�٦A1An]n���m�2oB+hn�>KKB��+�	NoB�^nB�nBBonBLoB�nB�inBE@nB4�n��bnB��nBb�nB��nB<mB��nB�inBZao��n�ߓn�nB~nB����nB� oBjn�J�T�rn¼�nB�oBH�n�R�n�}�nB�.Bme�T�n¢cnB�unB�p���n�'7qB��o�u�o�_�bB��}B��mB�mBn�^VnB�lU�#�bB>7nB~o���nPn���qB�mn�q�n¨�p��An�4�n� |n�{�p� �n��l��n��/nB�nBw�nB jn��tB4mB��b�$eo��LnB'{nB��Aj^nB�SnB�n��bnB�^µ�n��^�jWB}n�j�nB��mB�qB��n�jB9^c��l�,/yB�_RB�n��nB�HnB��pB��Q�9�oB�kynBv�n�t��un�n�wxB��n� fn¦3n.pB|�n�t
v��n¦4o�n�nB�kmB��n�j�mB��oBbgB�koB��n�|6oBj��4�n��o�oBr�n� ynBh�n�S(w�+�n� 5n���nB }n�I�nBnB��n¨�n�n�vheBTo��$o�z)nBf�nB�~n�8%�B�c� \n UnB�n�p0oB>�nBO.oBK�nB�nBO5n��n��nB�n�nB�pBz�nB��nB��n�#o��Zn�=�m[nB�vBF�nB�nB�n��ՙ�ānB��nB!n�6Ho�Nno���
So�)�n�>�nBP-nB��n¨{n�foB��mB�o��kwB�gnB@n�VbnBo��eoB�{���yBd�nBʇn�<�n�kn�<�mBJ�nB�nBoo�t�n�Sn�n���n¹rnB�Aon��knBݬnB\KnB�En��;nB2nBV��<Dn��nB�RnB�͢B�nB��nBb�n�śnBOo�޵nB��(�LkBHrn���nB@�o1l�
Bo�}\Be�n�l�k�tB�]��"XnBS�oB�No�c`nBb,��Q,xB˚r��7i��!nB�Rn��nB��n��o���nB�o�Reo¯on�ӡoB�%oB&�r�xqn¦�n�H�nB�*nB �n�k�[B��nBQy��n�nBϺnB�k1��#oBFoB��v�uVoBDNg��n���kB\xnB �nBK�q�rBCrn�5R§�n�$�mPuB�JBXpn��)nB��oB;PrBH��X4�B6�mB��zBx�nB�qnBƬoBoIn��jn���nB�}n��8m�8�n��nB�7n�lYaB�o¢on�u��8o�z�qB� nBZp4B!njn�dn���Z¼;n�nB��nB^n�
^
hidden3/weights/readIdentityhidden3/weights*"
_class
loc:@hidden3/weights*
T0
�
hidden3/biasesConst*
dtype0*�
value�B�2"�{�n�|�n||B~�n�{�n�|�nB|�n�}�n�v�nB~�n�|�n�~�nB��m�~�n�|�nB~�nB|�n�~�n�|�iB��pB|�n��nB~�nB�nB~�n�x�nB|�nB~�nBm�nB}�nB~�n�|�n�~�n��cnBz�nB|�nB|�n�{�nB|�nB~�nB}�n�4mo�|�n�|�n�|�n�<�A�}�n�|�nB~�nB~�nB
[
hidden3/biases/readIdentityhidden3/biases*!
_class
loc:@hidden3/biases*
T0
�
hidden3/MatMulMatMul!hidden2/BatchNorm/batchnorm/add_1hidden3/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden3/addAddhidden3/MatMulhidden3/biases/read*
T0
*
hidden3/ReluReluhidden3/add*
T0
�
BatchNorm_3/betaConst*
dtype0*�
value�B�2"�Zr3����YKB�A���A���¼�CB��B��B�~��R���ށB��B��(B�ӝB�@�œB0�B��·ud�r9�B����n�}B�h�A�Z�Ak��B/Q²����2�Gd�B��B�/��ָA�^1B�I�B[?�B4u@B�(�����g�|B{�?B�4B�m`B�d�Bd��BoU§���w�B/�O�N�\�
a
BatchNorm_3/beta/readIdentityBatchNorm_3/beta*#
_class
loc:@BatchNorm_3/beta*
T0
�
BatchNorm_3/moving_meanConst*
dtype0*�
value�B�2"�=BG;���4{�Ff�;�`�43B;7�>G,��F�=5�,/GQ�;Z��:��GA[�F��5�u�FrHE�G�F{�9�G7E�F��L;��b5��p5!�
F�'F�>GE^�:�@��;�>�5̇�:���5ʀ9ԓ_5�]�E>��F��GDA�5ʉGk�F�`9���E�:�5)��F06�GŨy5�my5(�0<��4
v
BatchNorm_3/moving_mean/readIdentityBatchNorm_3/moving_mean**
_class 
loc:@BatchNorm_3/moving_mean*
T0
�
BatchNorm_3/moving_varianceConst*
dtype0*�
value�B�2"�9(>w�7�;/G��>,��7���9(��G7QF�N�7(z�G2q�=/x�<��(G	&H]��7G!�G�65Gc,�G�r�;�ݢG\�]H���<
��7T.�7��bH�GV"H���<~l"D4��>���7�c�<�q�7��;�B�7�_�G��^HZ-H:T�7@��G���FgKs;�@�G��7*��Ga�F=��7`��7T�=��7
�
 BatchNorm_3/moving_variance/readIdentityBatchNorm_3/moving_variance*.
_class$
" loc:@BatchNorm_3/moving_variance*
T0
^
0hidden3/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden3/BatchNorm/moments/MeanMeanhidden3/Relu0hidden3/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden3/BatchNorm/moments/StopGradientStopGradienthidden3/BatchNorm/moments/Mean*
T0
e
5hidden3/BatchNorm/moments/sufficient_statistics/ShapeShapehidden3/Relu*
out_type0*
T0
�
4hidden3/BatchNorm/moments/sufficient_statistics/CastCast5hidden3/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden3/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden3/BatchNorm/moments/sufficient_statistics/GatherGather4hidden3/BatchNorm/moments/sufficient_statistics/Cast>hidden3/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden3/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden3/BatchNorm/moments/sufficient_statistics/countProd6hidden3/BatchNorm/moments/sufficient_statistics/Gather5hidden3/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden3/BatchNorm/moments/sufficient_statistics/SubSubhidden3/Relu&hidden3/BatchNorm/moments/StopGradient*
T0
�
Ahidden3/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden3/Relu&hidden3/BatchNorm/moments/StopGradient*
T0
w
Ihidden3/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden3/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden3/BatchNorm/moments/sufficient_statistics/SubIhidden3/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden3/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden3/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden3/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden3/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden3/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden3/BatchNorm/moments/ReshapeReshape&hidden3/BatchNorm/moments/StopGradienthidden3/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden3/BatchNorm/moments/normalize/divisor
Reciprocal5hidden3/BatchNorm/moments/sufficient_statistics/count8^hidden3/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden3/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden3/BatchNorm/moments/normalize/shifted_meanMul7hidden3/BatchNorm/moments/sufficient_statistics/mean_ss+hidden3/BatchNorm/moments/normalize/divisor*
T0
�
(hidden3/BatchNorm/moments/normalize/meanAdd0hidden3/BatchNorm/moments/normalize/shifted_mean!hidden3/BatchNorm/moments/Reshape*
T0
�
'hidden3/BatchNorm/moments/normalize/MulMul6hidden3/BatchNorm/moments/sufficient_statistics/var_ss+hidden3/BatchNorm/moments/normalize/divisor*
T0
o
*hidden3/BatchNorm/moments/normalize/SquareSquare0hidden3/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden3/BatchNorm/moments/normalize/varianceSub'hidden3/BatchNorm/moments/normalize/Mul*hidden3/BatchNorm/moments/normalize/Square*
T0
�
'hidden3/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_3/moving_mean*
valueB
 *���=
�
%hidden3/BatchNorm/AssignMovingAvg/subSubBatchNorm_3/moving_mean/read(hidden3/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_3/moving_mean*
T0
�
%hidden3/BatchNorm/AssignMovingAvg/mulMul%hidden3/BatchNorm/AssignMovingAvg/sub'hidden3/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_3/moving_mean*
T0
�
!hidden3/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_3/moving_mean%hidden3/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_3/moving_mean*
use_locking( *
T0
�
)hidden3/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_3/moving_variance*
valueB
 *���=
�
'hidden3/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_3/moving_variance/read,hidden3/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_3/moving_variance*
T0
�
'hidden3/BatchNorm/AssignMovingAvg_1/mulMul'hidden3/BatchNorm/AssignMovingAvg_1/sub)hidden3/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_3/moving_variance*
T0
�
#hidden3/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_3/moving_variance'hidden3/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_3/moving_variance*
use_locking( *
T0
�
hidden3/BatchNorm/IdentityIdentity(hidden3/BatchNorm/moments/normalize/mean"^hidden3/BatchNorm/AssignMovingAvg$^hidden3/BatchNorm/AssignMovingAvg_1*
T0
�
hidden3/BatchNorm/Identity_1Identity,hidden3/BatchNorm/moments/normalize/variance"^hidden3/BatchNorm/AssignMovingAvg$^hidden3/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden3/BatchNorm/batchnorm/addAddhidden3/BatchNorm/Identity_1!hidden3/BatchNorm/batchnorm/add/y*
T0
T
!hidden3/BatchNorm/batchnorm/RsqrtRsqrthidden3/BatchNorm/batchnorm/add*
T0
`
hidden3/BatchNorm/batchnorm/mulMulhidden3/Relu!hidden3/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden3/BatchNorm/batchnorm/mul_1Mulhidden3/BatchNorm/Identity!hidden3/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden3/BatchNorm/batchnorm/subSubBatchNorm_3/beta/read!hidden3/BatchNorm/batchnorm/mul_1*
T0
s
!hidden3/BatchNorm/batchnorm/add_1Addhidden3/BatchNorm/batchnorm/mulhidden3/BatchNorm/batchnorm/sub*
T0
�N
hidden4/weightsConst*
dtype0*�N
value�NB�N22"�N �kB�n�)'WB�nB�Dngn�a�n�;nB2�n�B fB9�oB�[r��ehB�KpB�oB��n�#�m�LUxB�qB��n�w�1B��n�m�ntnBBFo��n¶|nB"�n�*�n�f�nB�tmB @n�^�nB��m�knB�xmB�vn��n���nB�+n�E�iB�n�C�m�'�}B��nBz�n݅�_bh��oB�imB=�VB��nB�Hn¨UnB~�nBXoB��nB��n�InBP�n�d%o�o�nB�n�:]n�En��'nB��nB2�n¡NoB�wnB�m��nB��nBn�nn���nBԠn��onBH�nB�{nBR nBV�nBښnB��mB<�n�H�n�oB�'n��n�<aoBPxn��vnB�nB̮k�`�nB��mBB*r��:o�oBfnn����Bo�nB�IoB��n®�nB�nBs�hB�mBN�nB�jB�ohBPiu�n�PQn@oB�oBx^n��5mB��nBD8´ oB�nB�n�`�m��o���m¡}n�B�nB��n��eB��n�ѦnB�nB��mgr��GoB�VpB��n�0�nB@{o�T=nB�anB��p���nB(oBʵj roB$�n�i�n��©0n��`p�en�zVnBn¸�nBB�nB� oB�ߥBH^rUm�f�Q�n�b�o�k�r�7XnB�wp��p��nBI��A��nB�#nB/�oB��nB��nB�Po�P�nB"nB}An�a<n�n¥�nB�nBhgp�YBU�2�nB6�nB�Jn�Z_nB�a��[nB�,n�? a�nBLwnB��p��foB��n�ʣn��tqB�o´PnBځn¯n¢�nun6nBm�nB�n«�nB�7oB(%oBHCnB��nB�Sn��n�v�nB��n�tan�m�R���n� Rn� ^nB�nB *oB��nBk�n§�n§Sn¬VoB)nBqnn�mB��nB n²�n�-(n�oBMo���n�zzn���n��dB�qn�f�n���3¨8nB�'oB��nB±kB�OnB�;n�H�mBv�nB��nBco�n� dnB&�n(oB��nB�^n 4n��oXn��bn�JnB�nnnB]@��nB��nB`Dn�nB`WnBN�m��nB&�n���nBƜnB�$nB�nB��n��mBD�n�pGo�o[nB> n��{n��Pn�ln��ktB�!oVnB�[hB�8n�b�nB�(oBr�vB xnBE��B,�n�]nB(mnBprg�n�iB*�nB �_�s��B�SnB�!fB��n�DYo�l!m��xk�?�k�pBh�nB�":�synBX�nB'�m�6�n��2nWm�ISnB,�n�i�mB
1qBA\n��mBD�nB��m�	 ��<^nB�k�nB�QnB��p�l"oBQUo�o�nB��nB�dk�`���L�mB��m��'b���nB���BloB�o��[nB��wB�o���n�����]����BF�l���nB̖kB�pBr�qB��{B&H�Brn�)¿wn�y�nB��wB+fn�8%oB�xBCqn�A!n��n��B`�n�Kn�kjnB��l��w��o��!vB�^o�zsn�q��n���nB5����n�&�nwsB7r���n�CltBwdvB�MnB�m���n���nB|Ln���n�nB�XnBDn�Xn+oB4�n�lSo®�n���n�*�n�ˉnB؋n�OnB�f�B"�nB��n¤�n�nB��nB`�n�)�nBm�nBu�nB[�mB�~nBpnB�}n� )pB�2o�n¸on�P�nBX`n´�n�r_n��hn�mjB��mB�cnB�SvB�o�h�nBR�n�q��nBr�i�`oB�o�S�nBxB�Op��n¯�m�^��kBȓy§�nB�mnBG�kBk!oB��wB�EzBz}n����n®�nB�9�B&�m£Jo�%�qB��nB2 n��nB��qB&`o�}�n�¸nB'�o���}�4�nB�jq�ʉnB2<o�Crz�r�n�lB�Z�BTln²�n³�hB�p�2nBB4oBƤfBooB��BznB%SoB�mnB��nB��n� n»K���vk�I�aBRFx�u�n�0�m�W.oB]~nBq�m�n3oB�nB�����XnB��nB��n��n�V�m�Dn��nB�n���nB`�kB�"o�>oB]�nB o���}�6�mB�qB�o��oB�cq�ˡnB�GnB|�j�^=oB dnB`2y���n¬�n�go��>�4nn�:onB�on��nB��nBĨlB�8nB�mB��kB��q��o��Pv��Go�:[j¹anB\JnBxo�`�mB��nB�=�B<oB��m��p�Fn�n~n�5)n��n�5
oB��n�|	s�m£)n���n���m¼�bB]oB�nB�n�SnB�jB��nB�mB�{s��]nBjsn1l���nBr�n��o�d�:��"oB�mB��n�nbnB��nB��sB��nB��nB/́B%�k��'oBY�n�a�m¾�x�nB&MnB�e��Yl�sKn�'*�BenB/�n�l�nBp�nB�:o�z�n�l�nB��nµ�wB�$oB��n��nB`�d�!�i�� n��NoB�Cn��n�v�n���n���m��w¡�nB۱n¶�|BU�nB:CnB1�k��`B��n��?k®�n�n�@vn�=_�G�lB�nBڇk�@JX½ToB�soBkBc�m�U��B�CtB��l�o�u�$B��n�Yo�[�pB��nB�fnB�<Z���nB"\oBn�nB��l¼�nB�n>oB��mB�U{�t<n�pB�WnB1@n��/����m0o�tBŉn0o���`B�����nB��vBx�e�V nB�)o½>nB�n���n¹�nB�Sn�OYnB��m�n��oB��m���nBp�nB�wnB�
oB,�nB��n�ro½�B�=n��n´�nB�unB��nB��nªnB�2nB��nB9tn���nB�on�k=oBpB�!o�n�mBʣn�m�m�@n¤\n��4n�7�kB�.o�Jo�tB�n�^�n�()nBWOBT�nB�tW���nwnBoBf�B&EnB�nBl����!�cvj���BFn�!�n�$l�^csB�n�5hqBXMnB�ť�FnB4BnB�m­�n�xSnB��m���nB6enBݹnBY�k¤�n���mB��nB~o�&���fnB�%oBpnB��nBՌi�:oB��o���l��-nB��nB�q��Ŏ�Kn�L�l�XqB�'o�=�M�d�nB'on�nn��jjª�lB}n�8�|B <sB%mB�XjB��nB�lnB%�m��m¯xB��^�n�X��B�o�T�n ui�nBZ�n�&�pBM�n��n 9nB\VoBT�nB�obo�e�oBelB?�m���m��nB��m��lB[5n�n�EnlBÌn�YUn�KI}Bn�x�|]nB�?pBy�B�y�n�zBn�n�D�n�nB�GoBknB�KtB�7w?m�\~�B�7nBG�lBZpBU�nB:wlBb_B��m¤[B�n��Fn��=oBwyn�&nBM'oB��m�v�nB��n�{�m��m�]�n�n�ٕrBK�qB6�n�ĹnB��n�n�E�rBƜnBH�pBW|ZB��n�eo�`�g�`:nB!�n��
vB��s�#�mB�m��vnBHn���nB��]B��m¯�n�d�p�s���oB�]e��TnB�$oB�m^��nB�	jB�R[BK-o�=u��</o��^nB,PB�o´�n���mB�'nBK�m�f8nB�~lB@�n��nn�nBI)r�s j���nB��l�j�nB��n�΃m�2�n�oB���B��n��n���hBCm��HnBg.mB�t�N.n�E�pBzo�\�n��nBߩoB�nB&>oBY9rBV{z�m���`�ӦnB&�nBDynBW�mBr�lBĄnBQ�nº�ZB�n�4Xn����Bh n¤vn¨cnB��n��"nB>�n�F�uB��n�,n�Fn�-y��sB�n�nB]Bn��n®�rB��nVn�{B�	nB�n�3��@^�mB�Wn��oBx��B�o�:|~Bx�n�R�nB�nB��qB�nB�HnBṞB�[q��tB�*m�q�n�Qo�InBhUmB��m�s�m�[\nBKցB,�nB�0n³�n �nB"�m�LnWn��nB^hn�q�oB��nB?n���n�kl¹�{BPn�!�kB^o�FtnBG�`�ңnB�o� ����nB��nB.:2��mB@OnB�on¿|hgn�=k�"�nB�o�Ho��gBGӁBV�nxB����U�m�HmyB`�nBP�nBf%mµ:mBI�jBa�QB�Ko�U;5�7�n���mBoB`�n©`nBїmBY)nB��n�FnB��n½#nooBx�j�hbY�\�n�҅nB"�n�An¦VB�nB}�nB�GB*�n¯�n�b�e�k��n§�aBv-�7o���n�n���nB��n�N�mB�RnB֫nB��n�P\n�n�n�nB�n��n��?nBH�nB6�n�nB��B��nB�xnBeWnB��nBknB|�n�=nBx�mBȹnB�Pn�X!oBtaoBd oB��%�nnB��m��nB��n��n�nBvnBgn��dB�nBثnBsi�4zn�#"n��n�j�4`nB�1o�̕nB��n��SnBnB
;n��Eocn��/o�d�nB#�nª�nB&�nB�snB>}nBN.nBb�nB�0n�F�5¢Rn��PoB&�nB$n��n¦\nB�mB�kn��WnB�nB�cn�n���nB�2l��On�EoB�Eo�"mn��#o�F�n�d�n��oB�RB�1n��n���sB�\n��qnB�\nB��BH�nB�x���nB�`n���mB��iBW�n¥Fn���gt~ª�oB��n�u�nB�mB�fgB)�lB�pB��LBT�n���D�wEn�o
nBG�wB�Jn�A�n�6'lB�
nB��n�D�nB¯mBҌn�m�nB;Hg���Y�4�n�ˬn���nB�n�0�d�V�n��nBe�TBr�n�0�n�1vB�n�ȒnBE�mB�-���n¬wn�1�nB��n¬�n�r�mBj�nBD�mB|^nB��mB�nXoB�knB��nB�,n�,|nB`�mB��nB��n�>ӁB$�nen��nB5�nenB �nB
oBn�nB o�2�n�>�n+nB�:n���BsnBL�n�M�nBH�n�o�,�nBR�nB�nBīdB��n��n��lk§qn��sn�N�n��7��,n���n§Zn�u]nBNnB�(nB,4nB�mnBЭn���n¼�n¾an�,o�08n<nB}HnB�(n�|n��nB�<^B�fnB�<n�c n»�nBVFnB�?n�)nB.;oB~�nB,2n��nBnBm�n�:�o�nBD�nBt5nB�n�,!oB��nB�pnB��n�B�nB��nB�u�nB�7n�;�m�7whB�VoB��mBR�n�o_nBd�nBY9n�d�pB6nB$^qB��kBz�nB��sB�Kn�n¾nB�o�x�o�ؖnBx�nB�9��mBʷnBjn�P�n�I�n¹p��n�f�nB
�n�J�nB|Kn�:�n�tnB�>r�U�i®unB��o�o�nB��nB �l�mBgo¯}l��nB�n�ڱu��nB0DoB�hn����|o��nBa�n�"�n¨�nB�gnB�LnB�nBnnB�en�*n¬bo�!oB\�nB��nB��mBUdnB �nB~n�^B�n�z�n�?�n�Z�mBm+n� �nB�n¨�nB2�n�#�nBQ�n�b2o�9o�)�gBŜnBBWn���nB�4n�*�n�nnBpn�nB �yB��nBk�n¨Q���nB�#n¾:oBR:�v�n�l�hBӖn���n��n�K�kBnB��nB7�iB��n±p�I���I�nBS�pB!(nB_nB��nB�gsrn���B�(n�r�n�͎mB?�nB��nB!�mB�o�8�nB�nHp���n�J�n³<n���qB]�eB�2o��ZoB��n��n¢�hBH�n�Ľn¶xiB��nfn���d¼�oBK�n��GhB�A��~n��xnBf�m�mB@�nB�
oB�nB�nB%ynB}Sn�nB�"o�ޜn�.o��nB�nB��n��InbnBX�B�unB��n�)Uo��nB+�mB}En�v�n�SnB�3n�W�nB��nB On��Mn�e�e�j;n�6�n�k#nB~=o¶�n�uo�7n�
o²�®�nB$�n�}�{B�ynB:}nB�o����nB,fB�Po�NoByLnBm�nBtnoB��nB� )�O�q��ȀB�sj�x}n��Co»nB�mB~�n�x�mB��nB9N����nBN?oB�n��nnB�InB?o�LoBN�nBN6n�n�D�nB�gnB��nBYzn�Ee�:�nB�rmB,n�loBu�k�nBB�m�VlnB��nB��q���mB|o�5n­�b�r$nBX�n
oB�n®o�o�nB�Jn�2�n�A�n���n��nB`<nB�HnB"oBin��nB̄nB�|nB
�n�K�K¥�n�:[nBJnB(�n�nB�nBךnBdGo�4�nB��nB��n��m�v�nB2%c¬�n�/�nB(8o¹JnB�dn�JDo��o�J;nB�<XB\In��on�|�uB�n�Y�m���nB�j�)_nB�k��[oB�Qn�ЂnB���Ӏl�t�nªrp�3�[Bg�nB� xB�nBC�oB��l�j�n��BjB�reBH�n�\5R�nº#nB�{PBLo©�n�{�mB�enB�un�mWnB��mB�Cn�o�wnBE�_��kGoB^m��$oB�o�^�m�I;o�Y#n�²RB�n��o�{vsBbalCoB�~mBQ?�Jhn�[n��n��n�frn�}AnB� oB �nB�n���n��!on�yAnB�{nB��nB��nB#aoB��n��do�_	�Bh=n�b.o�inB.�mB��nBT�nB ?nB'nB��nBJ�n­�nB$�ncn���oBNFnB��n�nB�gn��#o�u�nBj�n�V*n�s#kB��n�jhn�.BT_nBl�n�(nB$!-�vo�(�nBPFn�՛n�7�nB��nB(RnB��mB��nBRoo�B�n��nBP�nBJOoB�4oB4�nBݹnBi*n�\��B>�n�:o�nBPn�n��nB
Qn��/nBs!o©�nB>�n�|�n���mu�B@nB,�n��0nBWn� %o��/oBH�n²�nB�*��=FnB��n̢B�NnB��n��VnB���B�`nBj|n��nB��n��8oB�0o¥�n¨rn�9nQnB� nB$�nBZRnB�{nB)n�n�H8nB�nBn���W�&{n�nB8�nBB�n�*%n�ưnBvBnBZYn��UnBjoB")n¶yn�y�nBN\pB�en¦snB�n�
�nB�n�n�(n±InB|:WB]o�1^n�W?sB|n�p�mB� nB�C��oB��e�5dn�_�nB�DnB$\xBܸmB��nB��g�Ԭd�_���h�	n�Y�n���yB5pBu�m�L�B��nB��AZoB��nBLm�I�nBoInB��m��NnBj�mB8nBǩl�|KnB��nBbxnB9Ho��oB�oB~�n��nB��l�B�nB�o�m�k®�nB;PnB8�r¡(��0�n am�萍�WWnB��nBZ�n�ހnB�~nB��nB
.nB�&oB^^nB��nfnB��n���n½�n��nB�KoBN�n�bo�&�n�|��A��nB ]n�V�n �nB/AnBLNn�p�n��oBtn�6�nB��mB0�n�_
oBI�t�\)o�Rgn�P4nB}&n´&n�b2n�KLn°ln�Pb�CnB�'n��bBBoBВnB�n��VF�H�m�$�zB��m®�n��n��rB��nB�nB�#tB֨�B��m�Y:gnB�lB?oB��nB��qB9�sB�m��@B�dn�n�2�pBEn��
n¥�oBzo�S�nB)n�si��n�V[n��Yn��<}B�oB n�SnB`�n�T�n��3qB��n���lB
�YBq�nB�:o#c¬3lBf�n·{tBU�+�m�ѪmB�m¾unB&bnB��rB`�oB'(nB�rB"mrl�S�D���l�Y�_B��nB�HoBU�k��:oBN9o�����S�nB�;o�0�sBZ�n°�nBmr��n�nB��n��m�N�n�$�n�=.oB�kIj�6nB�nB�9n��GnB2k�ӣnB;g�}�r�{nBM�nF�5�nBt�n��*l�1�pB@nB-mtB~�n�I�nB.znBh�kp�x�nµ�}B�	sBU�nBq�nB�7n�c�q�"�m%n«�f���rB[Pn�a0\*oB�(nB(�m¬�n�n��@wB�_n¥�n�	Mo%pB��n�\o�B�nB�toB�r��nB��m�FfnB�5nB+oº�n�b,jBJt�N�n���n«${Bt(iBo oB�vB��pBc]nB:�oB-o� �m,nB��^��o��o�{ukB��E0mBUB'znBҥnB��nB�ȄB��zB�?�B�Rn�:0F©=o¦qn��rB8On�~bn��pB�3o�nBBsn� oB�n�IQnnB,spBYSs°�n�[qBn�nB0?n�?�v�0�n��nBUu�HWn�t�n�H4sB�XhBWnB }oB�NM��o�Go�Ysn�HenB?oB��nBP�nBb�mB��n+n�\n�|n�z�n���n¨*oB�nB�Inln�nB�j~B(nBF;n�n�!�nB*
oB�n£�nBdEnB��m�qSn|nB8�nB�nHl��nB�tn²VnB�7o n´oB�?oB�	o��&VBO�nB�1nBݒf�nB�zn��n��sB`]nBG|��nBoB[�nB�^eBF9o�0�n�1-��o-iB��q�l7B7eo�Ōm��q�r�R�n�׌nBLrnB�X�B�.nB�KnBR�o�˚n�o0o¤No���nBj�n��nBnlBOo�4oB��n�i�n���fBɘnB�Zp�n���nB+�t���nBN|nB؎q�(�nB��nBl�dRm��	nB�
p¨��4�nBHMd�z8n�HunB.�nB��yB�AjB�
oB{j�~�g�~rnB��n�n���o��pBe�pB��\�l�jnB�+KB��nB �n�pm���nBd�nB�7l¤oB,1oB��nB��B��nB�Rn���n��VB�|�m��wB�n�kn©o£�n�Cso�mjyB8GnBBnB�aB��hB`VnB��i�u�yWnB�sn¶tnB��m¼�nB��n�n�½n§�n��qnB��nBh�n²�nB6�nBPYn��o2nBL�m��	o�c��s�n�`�nB\�n��nB6Ho��MnB��nB�n¢_nB��mB%�mB��n��8oB�lBW]n� _o�v�n���mB��n��=n�f n��HnBYuB5n���n¹�kBPOn�r�nB��nB�f�BL�n�ՌnB�~n�\GnB�9nB��nBzEnB��nB��nB�=oB,_n�w�n¸Pn�~ln¸SnB�3nB��n^nB�WoB��B��mB�@o���m�=!o���n4n�w�n�SnB�On�:YoBJ�m��(oBq�n��Dm¯|nBBNnB�LnB��n¥%nBboB�nB;�n�`�q��nB�qnB�i���nBA*n�/o�^��n�
oBM n�9o�QnB�oB��mB��nBޜgB̚p�Dsp�w�n���mB�%pB��nB��mB�lB<n�n���YB(�n���mIp�8snB}n��SoB��n�nB��n�lB� oBD|n��oµwmB�`BĤn�1AlB��n��n��jByn�n��rBB�n�vXn©deB��nB�nB�.mB|�{�n��Rn��n� �mBR�n�nBG)oB5FoB��n�b�n<n�,vn��nB��n�ќn���nB�oB�gn� [nB��5B��nB%oB��nB�oBn.oBho¡�nB�SnB�
nBDo�oB%�nB6oBJ`iB.�n��nn��oB�n��n�� o�nB��n�i�uB�)oB�nB��v�ZnBX�n�Ksn�
^
hidden4/weights/readIdentityhidden4/weights*"
_class
loc:@hidden4/weights*
T0
�
hidden4/biasesConst*
dtype0*�
value�B�2"�	�qB{�n�~�nB~�nB|�nB~�n��n�~�n�~�n�~�nB|�nB}�n�|�nB|�n�~�n�}�n�z�n�{�n�~�n�}�nBmbsB}�nB|�n�|�n�{�nBz�nB{�n��n�{�n��n�~�n��nB|�n�~�n��m�~�nB|�nB~�nB|�nB~�nB��nB|�nB{�nB��p�|�nB}�nB*#n�|�nB{�nB|�n�
[
hidden4/biases/readIdentityhidden4/biases*!
_class
loc:@hidden4/biases*
T0
�
hidden4/MatMulMatMul!hidden3/BatchNorm/batchnorm/add_1hidden4/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden4/addAddhidden4/MatMulhidden4/biases/read*
T0
*
hidden4/ReluReluhidden4/add*
T0
�
BatchNorm_4/betaConst*
dtype0*�
value�B�2"��fB���B��P�E�½��(.�Bb�;*��!������|gb��B��G��V��RV��XR. �B3�>½duB7�Z�i� ?�%~Bm�}B�|B���B���5��B.�A��F_B��� �	�D��W�B�n�B<�½�)���?B�*�Bz;�B��(�9PV�&�e���UB�g¡���
��AL$�B�N��cy�BԹ�B
a
BatchNorm_4/beta/readIdentityBatchNorm_4/beta*#
_class
loc:@BatchNorm_4/beta*
T0
�
BatchNorm_4/moving_meanConst*
dtype0*�
value�B�2"��{9F]�5X��F4�Y5GU�5��I5-�F�&Gݑ�F��G��:���:���D��XF:��F@��F/]�F��EF9�<ߍ5�ӭG�`5��=5h�G�'5e[#F�F�E4�5Z�G"�$5H��:#b]5�v5��e5�}F�YG�?F57j%G�d5��}5F�F
_e5��<�dg8c-"5ҥ5##&F+o�F,FH5<YcC
v
BatchNorm_4/moving_mean/readIdentityBatchNorm_4/moving_mean**
_class 
loc:@BatchNorm_4/moving_mean*
T0
�
BatchNorm_4/moving_varianceConst*
dtype0*�
value�B�2"�投G�S�7��G�-�7n��7��76�SH\��G)GH��?H�8^<�2)=;�F��G�݋F�]G"��G��GR�=�A�7-jEGwm�7Sd�7WOG3~�7��!G*��Gv�7x2H6��7��=2V�7��7,��7��F��hH�z�7�KHB��7�0�74�]H���7��R>� ;bz�7��7��G���G���7B��F
�
 BatchNorm_4/moving_variance/readIdentityBatchNorm_4/moving_variance*.
_class$
" loc:@BatchNorm_4/moving_variance*
T0
^
0hidden4/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden4/BatchNorm/moments/MeanMeanhidden4/Relu0hidden4/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden4/BatchNorm/moments/StopGradientStopGradienthidden4/BatchNorm/moments/Mean*
T0
e
5hidden4/BatchNorm/moments/sufficient_statistics/ShapeShapehidden4/Relu*
out_type0*
T0
�
4hidden4/BatchNorm/moments/sufficient_statistics/CastCast5hidden4/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden4/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden4/BatchNorm/moments/sufficient_statistics/GatherGather4hidden4/BatchNorm/moments/sufficient_statistics/Cast>hidden4/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden4/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden4/BatchNorm/moments/sufficient_statistics/countProd6hidden4/BatchNorm/moments/sufficient_statistics/Gather5hidden4/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden4/BatchNorm/moments/sufficient_statistics/SubSubhidden4/Relu&hidden4/BatchNorm/moments/StopGradient*
T0
�
Ahidden4/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden4/Relu&hidden4/BatchNorm/moments/StopGradient*
T0
w
Ihidden4/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden4/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden4/BatchNorm/moments/sufficient_statistics/SubIhidden4/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden4/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden4/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden4/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden4/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden4/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden4/BatchNorm/moments/ReshapeReshape&hidden4/BatchNorm/moments/StopGradienthidden4/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden4/BatchNorm/moments/normalize/divisor
Reciprocal5hidden4/BatchNorm/moments/sufficient_statistics/count8^hidden4/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden4/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden4/BatchNorm/moments/normalize/shifted_meanMul7hidden4/BatchNorm/moments/sufficient_statistics/mean_ss+hidden4/BatchNorm/moments/normalize/divisor*
T0
�
(hidden4/BatchNorm/moments/normalize/meanAdd0hidden4/BatchNorm/moments/normalize/shifted_mean!hidden4/BatchNorm/moments/Reshape*
T0
�
'hidden4/BatchNorm/moments/normalize/MulMul6hidden4/BatchNorm/moments/sufficient_statistics/var_ss+hidden4/BatchNorm/moments/normalize/divisor*
T0
o
*hidden4/BatchNorm/moments/normalize/SquareSquare0hidden4/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden4/BatchNorm/moments/normalize/varianceSub'hidden4/BatchNorm/moments/normalize/Mul*hidden4/BatchNorm/moments/normalize/Square*
T0
�
'hidden4/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_4/moving_mean*
valueB
 *���=
�
%hidden4/BatchNorm/AssignMovingAvg/subSubBatchNorm_4/moving_mean/read(hidden4/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_4/moving_mean*
T0
�
%hidden4/BatchNorm/AssignMovingAvg/mulMul%hidden4/BatchNorm/AssignMovingAvg/sub'hidden4/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_4/moving_mean*
T0
�
!hidden4/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_4/moving_mean%hidden4/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_4/moving_mean*
use_locking( *
T0
�
)hidden4/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_4/moving_variance*
valueB
 *���=
�
'hidden4/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_4/moving_variance/read,hidden4/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_4/moving_variance*
T0
�
'hidden4/BatchNorm/AssignMovingAvg_1/mulMul'hidden4/BatchNorm/AssignMovingAvg_1/sub)hidden4/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_4/moving_variance*
T0
�
#hidden4/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_4/moving_variance'hidden4/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_4/moving_variance*
use_locking( *
T0
�
hidden4/BatchNorm/IdentityIdentity(hidden4/BatchNorm/moments/normalize/mean"^hidden4/BatchNorm/AssignMovingAvg$^hidden4/BatchNorm/AssignMovingAvg_1*
T0
�
hidden4/BatchNorm/Identity_1Identity,hidden4/BatchNorm/moments/normalize/variance"^hidden4/BatchNorm/AssignMovingAvg$^hidden4/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden4/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden4/BatchNorm/batchnorm/addAddhidden4/BatchNorm/Identity_1!hidden4/BatchNorm/batchnorm/add/y*
T0
T
!hidden4/BatchNorm/batchnorm/RsqrtRsqrthidden4/BatchNorm/batchnorm/add*
T0
`
hidden4/BatchNorm/batchnorm/mulMulhidden4/Relu!hidden4/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden4/BatchNorm/batchnorm/mul_1Mulhidden4/BatchNorm/Identity!hidden4/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden4/BatchNorm/batchnorm/subSubBatchNorm_4/beta/read!hidden4/BatchNorm/batchnorm/mul_1*
T0
s
!hidden4/BatchNorm/batchnorm/add_1Addhidden4/BatchNorm/batchnorm/mulhidden4/BatchNorm/batchnorm/sub*
T0
�N
hidden5/weightsConst*
dtype0*�N
value�NB�N22"�N,So��ao�'nB�`_�m�q��Ɉ��gB��n�ڶnB�Yn�H�mB�nBrcn��mB��nBNNo��en�<�pB��pB�"�BȇlB�nB�n� ^nB�%n�O�n¦�o:po��n��p���n�u��B��rB-oB˟m�tjB[�nB�n�dQn��gnB�2��qnB.�n�U���n��nB�?pBy:nB���µ]nB�6oB�1o�ަqBAnBȪn��yn�ؗnB��n��snB,nB�*o�n�nB.�n1n�mB�nB1enB�UnB,�n{n��nnB��nB�n�Q<nB�xnB|$oB%&nBptnBsnB#�nBH�mB%�n�l���n¬
nB��n���n�#nBnB�n«"��V�n�*�nBn�nB*nBb�n�a�n�X�n²=o�B<n��n�c[oB��s!q��rB-LnB�jnB2cnB�ml�&�nBXEn�:�nB_znBx�n��RoB�g�m�i�T����nqB��nBPo¡ɔ�.�nB�n¤Yl�$S�BTGn�'�t���B�oB#YVB�0iB��r�:=l�#�pB�qoB��p oBxGnBU3BBo�^n6L��rn?nB��lB� oB�k���GnB��nB�n��i�� 5nB�n{n�enB}�n��OnB��nºoBRnB�n�ҏnB5�nBX�nB��n�&n�n�nB�cn�fnB �nBffn¼�nBЩn�Z�g��nB�nEn�l�nB�n��jdB��n��bn�9To��ln�Bun�nB�nB���B^�n�nB2oB� nB�nB�Xn�ibn�BnB�n�^n¶MnBM��̰n�K�n�`�nB�!o���nB�vn��`nBunB2�n��nB�nB`n¸�nª�nB��nB.oBURo�4nB�xn�#�nB��n�,�n�|nBlHm�D,o´In§�n�"�n�v~nB�|fB;"nB�^nB��nB;jnB�n�*�n���nB��2B�oB
dn�.o¬vn�oBTanB�nB�$o�_Jn�m�p8o�X1tBmo�:6n��oanB<InB�oBJ�n�c~n��n�|n�n�#^oB�FnB PoB� oB�5nB5\o��nB��nB�,onB�nB��nBNmB pn�"�nB�MoB�+o§�nB�.j9n��oB�7oB1~nB�bnB�XnBhgn��"n�.oB$n�qdn�&.n��nBL�n�Oan¢eoB:'oB�)o�yՊµ5f�)8+B�fm¬�nBhn�MoB�}nBjp��m�n�J�nB$�nB&oB�{q��oɐ�tgBL�mBˮnB��B
5nB��nB�t��yB=�nB�Ii�s�rB�$oB�p��SgdB��m�q�-�mB\|n�D�i�~[nBnn�43B��n¼�nB�csB;BoBoBm�m£�nB��3B��n���nB��mBC�wJnB�s$6sB��m��nB��n�=אB!oB.nB=*nB��nBn�*�n¯FzB�G�������(pB%�n�*n��nnB�ln�on�Dbl�k�ĢnBA�o£�h���nB�G����fB^jB&Fn�_v,B)�oB�o�h�nBN�nB���B{nBh�n�3��B�n¼YnBo,oB<��B�fnSn�?�nB80w��n��,ngnB4 oB�oB6�n���n�mB��nBznB�nB
n���n��qn�tGnB��nBt�nB�TnBbGo �mB��n�.�n�n§
j�&�n�n��{n��5n�zvnB+jB��m�/^n�
	oB6=nB��n��+n�n�mBWx�B�hnBn�n�./n·UnB�n�f�nB��n�Y�nzn�9KmB@�v�.sB��2Bk�mB��nB�6nB�@nB!�n�Q�o�B�nB�lBP�nB	�mBbnB��s�L�q�` ��mBZ�nB1#nB�:b���nBcOnBwCo®�B��nB;ai�˄{� �n��c�@�cB��m¡�o�^[mBQ�n�6�l���nB�`oB,f3B�anBTxn�l��¡�nB�nB~m�V�mB�5B�)oB?�nBPn�>xkBwl�EY#B�{o�DnBuNnB�1nB�lB�n��&nBswn��rn�j�nB��nB
nBܝmB��Am�o���nB��nB��noBАnB1�nB��oB
�nB�RnB��lB��mB-�?r�p���m7nBC7p�Tcn�E�nBoB^�n�2X3Bz�n�p&oB�?BR�nB�>n�`k�×n¥!��io��m��oB\�h��pjB�.�\oB0}nB8oB�5nB�am�>lh�30nB�#pB��nB8!nBdcnB��c¤��BQÏAQDpB[nµ�n��JB��mB��n�Yl�w�eB��nB��u�ztB�n��Ս )sB �o�f'k��|pB�+oB�q¤�nB�nB���"!o��n���2�n��oB�"znB�83�>�n��+o�F+oB4u¶8pBSn�B�mB��nBD�nB�anBm�p�ۮo�>rnB[�nB�WnB<DnB�nBB%q��VZB�ԇBV.nB�un�>tnBE5sBnB@xnB��o�EJxB��nB�Rl¨
dB*�n��#��p`B��m�@2p��"kB n��*m±�nB�
nB�2B�n��n��[��ռnB�7nB��k�|nB�ߍBi�nBlnB4�n�X�ZBnepB?%�BECBBKnB�nB��mBvdkB��n¸�nB��no�<�mBnB��kB��lBqٝB�ׄ�"�n�T�nBA�n�SnBZ4nB�;lB&�oB�_nBoB̂jB�)oB3"A�_s�V�n��mBYJs¢�n�zQoB� oBQn�R�B-o���nBg*B��nB��n�}An�&0n�K�.nB�,nB�(n¡31BrM°߃B�q�;#nBN�n�k�nB�p�Քn�PJnBkn�an�TnnB~2oB_�lB�/p������p�tNn�_�nBɂn�_lnB:ynB	�nBڮrB��nB03nBK[{��nB�c�L�v¨o���n¸�o���n��5oBm^nBR5nB��B�oB�'oB� \B��nB:�n�o�ѣn³�*�Q�n�Z�nnB��spu��+4�#zB�nB�m�1�nBz�h�,[nB�n�Z:mB|�nBN�nB�nBe�m�,�m�,I���oB_�nB�;n�S�nB�HnB��n��m��uB��n�x{o��fwBwoB�JBf6jB��n�+�m�/�qB�hnBoo��MnB��nB�1B�n0n�
�$�nB��nB�kB��nB�0B�Bn o�>4nB|_fZkBǲ��(rBݕnB�?nB�enB)�l�i�m��qnB��nB��nBIHnB�nB!n�n.�B�>+oB	�nBonº�nB�YnB�^n��n�gB�mB�lp���wB�Tn��0��yzB�_o��n�1)pB�Z�B[�n��nB��nB�2�	o�,kn�g+$¢	n�ܗnB�t�*MnBA�.BX�n��@n¡�n���QB�sB�-BÃ���oB�nBQ�nB��qYn¾GnB��n�FnnB�1nB�{nBl�o�7@rª���kB�2oBr�nB!]n�nB�JnBY�o�r�oB��nB3oB�,iB�^nBIiJ�ׁw©Ao���ZB��gB�8n��7d�nB�8o¨m2B��n¤�n�w6
BR�nB��nB�n���n��؍��YnB�9nBnn�4�pB�C���u����j��.o�nB�Yn½}oBz
n¬QnB�n�%�n��qnBX�m�JpB��nB�����xm�(nB�EoBw�nº�nB�oB�oB�1nB��nB�mB-�nB�}n�v���/qm� �oB��nB��m �m¨oBL�n�-o��� �n�y�nB��Bzn�jo�A�mBI-n�}��YnB�ynB��n©,ZB5n�rnB*�n�dPnB�:nBnB�]n�*�n��n�#�n�0�n�nB�~nB�yn���m���n�~n�Ƞn�<oBo�M�nB*�nB�EnB@XqB(snB]nB\HnB�onB!n§{z9o�Fn�V+o�b�n|nB�nB��m���3B��n¬�mB��nB*�nBɪn�Ԩn��n��CnB�n��`o¨�mBr�s�E>o�^ɡ�kB�oB��nB��no�venB*�m�&�mBײnB�in^n���s��mB�/BO�mB$8nB �n�JyB��nB0n &p��itB�Hn2lµ�oB�n�#�xB�ykB��n£�o�q�mB��mBS�m�nBԠnB�_2B��m·o��}u�pn�nBopBZ�nB��3B8�n/n²AnBjrf���nB��nB$�nBnB�nB��nB"�n¨`n�)oB�/nB�pnBCSnBƢnB<�n�n�x�n�вnB��nB��nB�un²�nBH�nBb�n�/�iB��nB$�n�#cnB�nB��m��B��m�P�n¸�nBpo�n�&nBT�n�v��� n�8�n� EnB~nB.�nB�o���nBK�nBH�nB#�nB��n�eipBJ�m�e7o��n��\nBԀn�1nBoB@�n¸nBR�n�N}n�ƬnB��nB�"oB#�nB��n�ŧnXnBtnB��n��snBNnB�nB�anB�nB��nB��nB�\nB�Xn�)Im� Bn��oB7}n��hn��	nB'LnB�ynµ݂��n��pnB�nB��mB�yn�ANn��yn��@n��nB'JoB2"n�q�rBs�pB.\�B�=l�C�mB�OnBl�nB�nB�pn�}�nBhn�m�qknB�nB�nB5�mB�� �n�Өn�.�nB�3n�+�nB>inB]�nB�lB\nB]�nB�knB:o�y���l�/�mnBan��m�f�nB nB��n��Ѓ��nYnB�rB��nB�Bn�Hp)nª��B�onB�QnB�nn��@qB<o£�n±�n�nB��m�r�nB�nB$n��GnB�n���n��UoB�nB`�nB�nBF�n��;n�޹nB]�nBAo���nB�`nBu?nB��mB nB�nB$nB��nB=�n�dRl���n��nB��n���n±^nB\DnB�o%��n���nBr�nB��nB�
n�p�m���n��o��
o�to�nB�Dx��n��n�LoB��nB�oBdlnBK�n¢�n���nB�nB
qnB�|nBQ�nBdn�rcn��nBHfnB��nBjAnB�n��nB~�nB�ng�A1�nB�cn��yn�ewnºXn�u�_BS�n��:n�мnBH-o���n���nB	�nB�4B�SnB<Io�n�GMn���nB©nsnBwn�İn���m�nB�f��l¯V3BÙiB|�nB*wnBwRo���v�Q4o�_cn�
unB#qnB�o�0�n��B�A8TkBAХB8�bBTXnB$jn��n��nB�7oB�Nz��[kB^;n�ȮnBҏhB:Lnªi|B nwB!�m�Q�iB�kB�=oBm�BL�nB�HnB�� �n³nB�*��tn�<+nB�oBMcn�$�0Bx�nB~&n�� n¹gBhOn�.�n�*�n¤�nB_DnBG�n©oB��n¾�n�",n�jsn�µnB�mB��nB�=oB��nB(�m��lnB>�nB"�n�NnB �nB��nB5�nBD�n¸CoB��nB��mBZnB"�s�Ȩn�~oB��n���nB�gnB"�nB��n �2Bh�nnBKn�p�n��xn�Q�nB��n³�n�V�nB_�nB6nBP�_Fn�h�n��n�c@n��:n®�nB��nBoB�Mo�k�mB�'nB�*n�O#oBKln�q�n�un�)7nB�"nB �n�MnB�n��	o¾�n��p�3Xn��6n�n�n¾�nB��nB�rB��nBo�6nBs�n�HMo�`on���n�3�Z�n�d*o�+nBڭnB>oBP.n�hnBiOo��Qn�`�n¤nnB� znB�#o�*mnB�nB�nBq/nB&n�f�n�hInB��nBXeoB�YnB�nBh)n�n��n��1oBjUnB�nBJ�mBnB�oBn�vB]oBp�n�tnB\-n�n:ABn���n�R�nBV�n�m�n�$qnBr0oBd�2BR�n��n�6o�{OnB��nBj�n�@�nBj�no¦�n��nB��q2r��E!��lB�.nB5SoB�m�h<oB{�nB߰n��oBT\nB:�n�r9o��B��wBl�B5;oBOQn��n�Q gBnYnBF�n�l�`7�B�o�1q¿�lBF�nB��oB?+kB�jr��Wj�WSnB�nBewq�f�nB�znB�H3B#o�zenBW�o�dQn�T�nB�lBT�n�z�1&nBc\nB��nB��s�~�nB`RoB�HoB7nB�Sn�nB��n�ٮn¨JnB�~n�jnB�nBw�nB�Nn´�n�Gan���nBn�V%nB�o�/nB��nBH�n±V1���nB��n�"DnnnBo��adB�Zn�/�n��nB�-o���n��nB�oB2�3B��n¸�n¸�nB��nB��nBFco�b�nBoBs�nB��nB4�n�Q�rB�n Mo��n�Tun��5n���m�E9nB��n�&oB�n��o�Kn¬4o�5�nB�oB��n���n�m;nB�nB� oB˧n�nB�nB���T�nB��nB��m¬�n�|%o�Ij�ooB�TnB�nYn��oB4o�Dn��ۃ��n�_�n��gnB.�nBX	o±�nBh�nB��n£�n�{dn�OoB�Xh��hnB�nB�oB�enBB�mBDoB�in�F�n�bEoBy�nB�nBx�nBx�nB�cn�ےnB��mBqnB��n�@ nB��mB��mB^�nB*Kn��cB��mB�mn�T�nBDLnB�
o��v{Bqgn��n�d�nB;�n¶�n�"4nB"nB���¨�n�n�GnB��nB�AnBFo�V�m�J/nB�jn��o�n��*iBΏv���gn{�S�nB�EoBznB�Gm³�n �nBWo��nB�xnB��mB��b���oBԟB��m�a�nBA�nB?!n�F#oBnB|n�/&pBB�nB��mB�hoB"�nB�`��Fs²�o�HpB��nB|o��_mB�mB��m�e5�B��n�:�nBx�m���n��gnBѡm�O�n���̌nB��n�)t���v��Ki��{�BH���*6nB��m�oB��y��>kB��n}��nBd�nB��nB[�z��<p�G�߿�UYB��n�T�n��TV�nB��n��;��G�$8n©�d��͐�nB��B�{kB�k³#r��]B~)q�g¥oB*bnBn;4B�1n�@nBW9�)oB�nB�N�B�nB3��BL2oB�]nB�n¾�tB�o�$(n�z}n�7nBGInBN�nB�gn��Xn¦ynB_'o���n�u<oB�InB�ZoB��m�>�m�]�n�M�n���nB%n�F�nBĦnB�snB5�lB�]nB|snB�$nB6�nB6�n�y+k�aon�JHn�"jn�m�N�nB �nBwo���3�an�XBoB�oB:�nBNcn�d�n�8�n8nB
~n�!,n��BnB��j��؀�B"��sBHnBU�n�RoBPjuBc�nBƯn��4nBH�nB(jn�znBi:n@l۔�4}oB�sn�!�n^pB��nB� o�X0m�CfB��n�J�o®�wB�mBqK\BarB�Vo���m�qB�nBcio���nB�*nB5��Rqn¬ynB�=L� <oB0enBM�mB)nB��BޡnBa(n��^nf¢WnfnB3�n¬VnBzn�7oB.�nB�tnB>�n�n��nB�'nBDoBf�n�"n�10n3nBd�n�B�n�̦nB�]nB�un»�n� �eB�n�u�n���nBj�nB��nBI�tB`Sn��Zn�c�nB�n�n��XnBE+oº3�Dn�gonB��nB�]nB�}nB
�n�`wnBx�nB&
n���nB��n��kB�Rn�r{n��[n�"�nBߜnBT�nB�n���n���nB��n���n�l�nBj�mB	oB��nB�jnB�4n���nB�NnB�n�nBr�nBnB�ToB1oB�oB@EoB�an��n�O�p��Uo�nBBEn��n��nBĳnB�Uo�X3Bt�m��nBйnB!o�n���n�n�n�o�n�hnB$oB"o��jB�]	³4Bl�q\nB�&o��lnB��hBLo¾�nB#�o��jn�/DnB��nBn�^B��LBY��+7p�n�nB�zn�OynB��nB\[lB��nBbnB��oB8�iB�_nB�y��:o�lplB��q�#�n�LppB~PnB�hn:4B�Sn�Q�nBܖ,B�~nB`�n���i�&�n�:+�B��n´En�rHn��hB5n�2�n�&�n�l_nB
�nB�|nB��n�NXo��hnBR�n��3oB�oB��nB$Znª�nB�/oB5�n���nB�,oBޘn��tnB�(nB/�nBc�pB*ynB��nBp[nBqgn�8n���r<o¹�nBdnB�n�Z�nB�~nB��n���2BT�n�nB9jn�xo��nBrOn��m�ԅn¶�n�(n��@nB�Fdº5f�+BC7gB�RnB��nBV�mBq3o¨0nBΈnB�nB�enB<�nB@nB�v�lOp�]_�BURkBnzn��n��oB,�n���nBjp�M�q�d�nB�{m\s� o�wY,x{B��m��1o �fB�q�;m�a�nB2�nB�2�,�nB;�n��ߥ|n�ınBi6k�4�nB뾂B��nB`LnBV�m�͉kB�/auBJn�+5oB�JoB�
oB��p�>o��oB.�m���n¦oB�znBݕfB1mBy�SA�o��nB��mB��m�2�nB�fnB�5nB)�nB�onBEoBylBW�nB��d{p§xn�q�nB�q�SLn�foBdDnB�n��&3Bz-n�s7oBPBX�nB�Jnµ�n�>gn�Q`�A�2nB4fnB�>o�{5jB��mB89oB�Sn�wrn¤�nBg�n�f�nB�n�!nB̆n´�n#n�0�n���nBj�nBenB��n�a�n��nB�NoBOo��$oB�AnB�i��[nB��nB�qn�+n�\n�ցq��,nB�hnB��n��o�nB?�n�37oA�B]�nB��nBL�mB`$o�Un�)snB�nBe�nBc�nB�knB6�n��jB�o��nWn¤~nB��n¿�mB	]oB�m��n�L;n��o¾�nB�dnB��nB�`n�U�n�Ҝn�*PnBqnB�$o�ʌnB��nB��nB]pB��n��nB��mB�lnB��nB�r�n�J5nB�cn�_�n¾_nBv�nB�n¬�2BՒnnB��nB�cnB�n�ko�o��n?n���n� �l�xyB�Ae3�����d�nB}�nB�#nB9�k�m�nBj�l�B�nBfsnB�
oBt�`���rB/.�ɑ�BO�nB�OnB�2ooBM�nB�h�1nB!nB��kBUsB|nº���}�j¾Wp��|B�awBNvn���\B�nB/@n�5����n°=n���B��n���nB�r��yn�yt��knBH�nB��jB�A��*}qB�҂B�^�v�n�JRn��o¶noB@�mBbnB:APBP�nBan�n��s�n�$����KmB�nB$�n���nBd�n�qn�2p��|m�K�nBg]n¦Gn°\n�I�v� iBL|nBR�p¬B;n�K�m�>�n�n�˂B0dnB\n�OdzB�UnB�oB��nB��nBm4BB�n�)�n�+�mB5�j��n�,�nB�oB4�nB��nBZ�n���n���nBZ�n�(�nB��nB�]n���n��n��3o���mBp�nBɢn�">nª�n½dnB��n´�n�� ��n�fin��nB�<o�f�nB��qB�Ln�r�n�M�nBT oB�Dn�|�nB�nB� �nB�n��Mn�rYn�&�nB�nB�nB7�nB��n�L�n"nBZ�h��'o�o��)jB�,nBFnB\�n�kB�oBn��7oB�nB^on�ptn�։rBSunBz}�B�;_A-un¤�n²!o�[oB��n?nB�"jB�nn�N�mB�jBt�m�O�qB�2tB�YVB�]rBIlB!nBs%iB��n�8�nB�C��Bin�D)nB	Ww�N�n�r�nB��nB��n�{g1�
^
hidden5/weights/readIdentityhidden5/weights*"
_class
loc:@hidden5/weights*
T0
�
hidden5/biasesConst*
dtype0*�
value�B�2"�~�nB}�n�}�n��[tB|�nB,�nB|�n�~�n�r�n�|�n�}�n�~�nB|�n�{�n�~�n�{�n�~�n�~�n�|�n�E�n�|�n��n�|�n�}�n�|�n�|�nB|�nB�WiB}�n�|�nB�n�}�nB|�nB�n�~�nB~�nB�nB~�n�}�nB|�n�|�n���|�nB~�n�{�n�{�nB~�n��nB}�n�nB
[
hidden5/biases/readIdentityhidden5/biases*!
_class
loc:@hidden5/biases*
T0
�
hidden5/MatMulMatMul!hidden4/BatchNorm/batchnorm/add_1hidden5/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden5/addAddhidden5/MatMulhidden5/biases/read*
T0
*
hidden5/ReluReluhidden5/add*
T0
�
BatchNorm_5/betaConst*
dtype0*�
value�B�2"���2�Li1�
��¸1�(8�B0B;.��"�B����-�B0,����~ÅBA���.��JA,���,��1�3;)�ɉ4B�1���Q�B�`�B Q,B3�*�^ �B��0©�0®O�B΃Bp�2����B�X3B�+B�'B��0x��`&��[�B�E�B$�����1B
���ށ2��b4�m4�B[g���)Bl1B�23B
a
BatchNorm_5/beta/readIdentityBatchNorm_5/beta*#
_class
loc:@BatchNorm_5/beta*
T0
�
BatchNorm_5/moving_meanConst*
dtype0*�
value�B�2"��Y5O'�54�FU��9/��:M�:TD�F<v�E��pD�/E�o�Fpa1;ч/5��FkE9�O5^�;5��F���F�/;T �F�nE�[85Kq4E��F~-�4Z�;���F��Q59WA�*.G�t�5���F��F��RE��E=�FG��FǚEkr^5W�D"� 9�w5!6^5�E<�k5��jE��6Fa�E��D
v
BatchNorm_5/moving_mean/readIdentityBatchNorm_5/moving_mean**
_class 
loc:@BatchNorm_5/moving_mean*
T0
�
BatchNorm_5/moving_varianceConst*
dtype0*�
value�B�2"�8c�7ю�7U�G.B�<�\=93<)>�F(�H��G���G��VF�>���74�G�<Ha��7V��7��EH���G��@=��H�bGp�7UtHz�PHRZ�7�)�=�)H ��7��?E��OGy�7H�F�oH�cmHÿ�H�LH��gG�s�H���7�%G�-�;��7,�7ѣ�>���7�<Ht�GL��H)]"H
�
 BatchNorm_5/moving_variance/readIdentityBatchNorm_5/moving_variance*.
_class$
" loc:@BatchNorm_5/moving_variance*
T0
^
0hidden5/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden5/BatchNorm/moments/MeanMeanhidden5/Relu0hidden5/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden5/BatchNorm/moments/StopGradientStopGradienthidden5/BatchNorm/moments/Mean*
T0
e
5hidden5/BatchNorm/moments/sufficient_statistics/ShapeShapehidden5/Relu*
out_type0*
T0
�
4hidden5/BatchNorm/moments/sufficient_statistics/CastCast5hidden5/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden5/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden5/BatchNorm/moments/sufficient_statistics/GatherGather4hidden5/BatchNorm/moments/sufficient_statistics/Cast>hidden5/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden5/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden5/BatchNorm/moments/sufficient_statistics/countProd6hidden5/BatchNorm/moments/sufficient_statistics/Gather5hidden5/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden5/BatchNorm/moments/sufficient_statistics/SubSubhidden5/Relu&hidden5/BatchNorm/moments/StopGradient*
T0
�
Ahidden5/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden5/Relu&hidden5/BatchNorm/moments/StopGradient*
T0
w
Ihidden5/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden5/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden5/BatchNorm/moments/sufficient_statistics/SubIhidden5/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden5/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden5/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden5/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden5/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden5/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden5/BatchNorm/moments/ReshapeReshape&hidden5/BatchNorm/moments/StopGradienthidden5/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden5/BatchNorm/moments/normalize/divisor
Reciprocal5hidden5/BatchNorm/moments/sufficient_statistics/count8^hidden5/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden5/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden5/BatchNorm/moments/normalize/shifted_meanMul7hidden5/BatchNorm/moments/sufficient_statistics/mean_ss+hidden5/BatchNorm/moments/normalize/divisor*
T0
�
(hidden5/BatchNorm/moments/normalize/meanAdd0hidden5/BatchNorm/moments/normalize/shifted_mean!hidden5/BatchNorm/moments/Reshape*
T0
�
'hidden5/BatchNorm/moments/normalize/MulMul6hidden5/BatchNorm/moments/sufficient_statistics/var_ss+hidden5/BatchNorm/moments/normalize/divisor*
T0
o
*hidden5/BatchNorm/moments/normalize/SquareSquare0hidden5/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden5/BatchNorm/moments/normalize/varianceSub'hidden5/BatchNorm/moments/normalize/Mul*hidden5/BatchNorm/moments/normalize/Square*
T0
�
'hidden5/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_5/moving_mean*
valueB
 *���=
�
%hidden5/BatchNorm/AssignMovingAvg/subSubBatchNorm_5/moving_mean/read(hidden5/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_5/moving_mean*
T0
�
%hidden5/BatchNorm/AssignMovingAvg/mulMul%hidden5/BatchNorm/AssignMovingAvg/sub'hidden5/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_5/moving_mean*
T0
�
!hidden5/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_5/moving_mean%hidden5/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_5/moving_mean*
use_locking( *
T0
�
)hidden5/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_5/moving_variance*
valueB
 *���=
�
'hidden5/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_5/moving_variance/read,hidden5/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_5/moving_variance*
T0
�
'hidden5/BatchNorm/AssignMovingAvg_1/mulMul'hidden5/BatchNorm/AssignMovingAvg_1/sub)hidden5/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_5/moving_variance*
T0
�
#hidden5/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_5/moving_variance'hidden5/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_5/moving_variance*
use_locking( *
T0
�
hidden5/BatchNorm/IdentityIdentity(hidden5/BatchNorm/moments/normalize/mean"^hidden5/BatchNorm/AssignMovingAvg$^hidden5/BatchNorm/AssignMovingAvg_1*
T0
�
hidden5/BatchNorm/Identity_1Identity,hidden5/BatchNorm/moments/normalize/variance"^hidden5/BatchNorm/AssignMovingAvg$^hidden5/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden5/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden5/BatchNorm/batchnorm/addAddhidden5/BatchNorm/Identity_1!hidden5/BatchNorm/batchnorm/add/y*
T0
T
!hidden5/BatchNorm/batchnorm/RsqrtRsqrthidden5/BatchNorm/batchnorm/add*
T0
`
hidden5/BatchNorm/batchnorm/mulMulhidden5/Relu!hidden5/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden5/BatchNorm/batchnorm/mul_1Mulhidden5/BatchNorm/Identity!hidden5/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden5/BatchNorm/batchnorm/subSubBatchNorm_5/beta/read!hidden5/BatchNorm/batchnorm/mul_1*
T0
s
!hidden5/BatchNorm/batchnorm/add_1Addhidden5/BatchNorm/batchnorm/mulhidden5/BatchNorm/batchnorm/sub*
T0
�
hidden6/weightsConst*
dtype0*�
value�B�2"���kBm�lB��B{hBTEs�sB�
vBlu�ҸtB����$�lB$�B��v�AX�B�RsB$�jB'eB�?lB\MmB�ik²�tB�U���|¦%T�UV4Bht�fBķjB����r�t���kBe�q�`��Ta��b��iBB�sBL�qBM�q�A�r`uB��B�5qB��jBHlBax�sepB?�j�0�h�^��A
^
hidden6/weights/readIdentityhidden6/weights*"
_class
loc:@hidden6/weights*
T0
?
hidden6/biasesConst*
dtype0*
valueB*�*B
[
hidden6/biases/readIdentityhidden6/biases*!
_class
loc:@hidden6/biases*
T0
�
hidden6/MatMulMatMul!hidden5/BatchNorm/batchnorm/add_1hidden6/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden6/addAddhidden6/MatMulhidden6/biases/read*
T0
*
hidden6/ReluReluhidden6/add*
T0
A
BatchNorm_6/betaConst*
dtype0*
valueB*���B
a
BatchNorm_6/beta/readIdentityBatchNorm_6/beta*#
_class
loc:@BatchNorm_6/beta*
T0
H
BatchNorm_6/moving_meanConst*
dtype0*
valueB*~�9
v
BatchNorm_6/moving_mean/readIdentityBatchNorm_6/moving_mean**
_class 
loc:@BatchNorm_6/moving_mean*
T0
L
BatchNorm_6/moving_varianceConst*
dtype0*
valueB*<%/<
�
 BatchNorm_6/moving_variance/readIdentityBatchNorm_6/moving_variance*.
_class$
" loc:@BatchNorm_6/moving_variance*
T0
^
0hidden6/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden6/BatchNorm/moments/MeanMeanhidden6/Relu0hidden6/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden6/BatchNorm/moments/StopGradientStopGradienthidden6/BatchNorm/moments/Mean*
T0
e
5hidden6/BatchNorm/moments/sufficient_statistics/ShapeShapehidden6/Relu*
out_type0*
T0
�
4hidden6/BatchNorm/moments/sufficient_statistics/CastCast5hidden6/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden6/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden6/BatchNorm/moments/sufficient_statistics/GatherGather4hidden6/BatchNorm/moments/sufficient_statistics/Cast>hidden6/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden6/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden6/BatchNorm/moments/sufficient_statistics/countProd6hidden6/BatchNorm/moments/sufficient_statistics/Gather5hidden6/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden6/BatchNorm/moments/sufficient_statistics/SubSubhidden6/Relu&hidden6/BatchNorm/moments/StopGradient*
T0
�
Ahidden6/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden6/Relu&hidden6/BatchNorm/moments/StopGradient*
T0
w
Ihidden6/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden6/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden6/BatchNorm/moments/sufficient_statistics/SubIhidden6/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden6/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden6/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden6/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden6/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden6/BatchNorm/moments/ShapeConst*
dtype0*
valueB:
�
!hidden6/BatchNorm/moments/ReshapeReshape&hidden6/BatchNorm/moments/StopGradienthidden6/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden6/BatchNorm/moments/normalize/divisor
Reciprocal5hidden6/BatchNorm/moments/sufficient_statistics/count8^hidden6/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden6/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden6/BatchNorm/moments/normalize/shifted_meanMul7hidden6/BatchNorm/moments/sufficient_statistics/mean_ss+hidden6/BatchNorm/moments/normalize/divisor*
T0
�
(hidden6/BatchNorm/moments/normalize/meanAdd0hidden6/BatchNorm/moments/normalize/shifted_mean!hidden6/BatchNorm/moments/Reshape*
T0
�
'hidden6/BatchNorm/moments/normalize/MulMul6hidden6/BatchNorm/moments/sufficient_statistics/var_ss+hidden6/BatchNorm/moments/normalize/divisor*
T0
o
*hidden6/BatchNorm/moments/normalize/SquareSquare0hidden6/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden6/BatchNorm/moments/normalize/varianceSub'hidden6/BatchNorm/moments/normalize/Mul*hidden6/BatchNorm/moments/normalize/Square*
T0
�
'hidden6/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_6/moving_mean*
valueB
 *���=
�
%hidden6/BatchNorm/AssignMovingAvg/subSubBatchNorm_6/moving_mean/read(hidden6/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_6/moving_mean*
T0
�
%hidden6/BatchNorm/AssignMovingAvg/mulMul%hidden6/BatchNorm/AssignMovingAvg/sub'hidden6/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_6/moving_mean*
T0
�
!hidden6/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_6/moving_mean%hidden6/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_6/moving_mean*
use_locking( *
T0
�
)hidden6/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_6/moving_variance*
valueB
 *���=
�
'hidden6/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_6/moving_variance/read,hidden6/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_6/moving_variance*
T0
�
'hidden6/BatchNorm/AssignMovingAvg_1/mulMul'hidden6/BatchNorm/AssignMovingAvg_1/sub)hidden6/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_6/moving_variance*
T0
�
#hidden6/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_6/moving_variance'hidden6/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_6/moving_variance*
use_locking( *
T0
�
hidden6/BatchNorm/IdentityIdentity(hidden6/BatchNorm/moments/normalize/mean"^hidden6/BatchNorm/AssignMovingAvg$^hidden6/BatchNorm/AssignMovingAvg_1*
T0
�
hidden6/BatchNorm/Identity_1Identity,hidden6/BatchNorm/moments/normalize/variance"^hidden6/BatchNorm/AssignMovingAvg$^hidden6/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden6/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden6/BatchNorm/batchnorm/addAddhidden6/BatchNorm/Identity_1!hidden6/BatchNorm/batchnorm/add/y*
T0
T
!hidden6/BatchNorm/batchnorm/RsqrtRsqrthidden6/BatchNorm/batchnorm/add*
T0
`
hidden6/BatchNorm/batchnorm/mulMulhidden6/Relu!hidden6/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden6/BatchNorm/batchnorm/mul_1Mulhidden6/BatchNorm/Identity!hidden6/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden6/BatchNorm/batchnorm/subSubBatchNorm_6/beta/read!hidden6/BatchNorm/batchnorm/mul_1*
T0
s
!hidden6/BatchNorm/batchnorm/add_1Addhidden6/BatchNorm/batchnorm/mulhidden6/BatchNorm/batchnorm/sub*
T0
>
logitsIdentity!hidden6/BatchNorm/batchnorm/add_1*
T0