.class public Lcom/nimbusds/jose/jwk/ECParameterTable;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final P_256_SPEC:Ljava/security/spec/ECParameterSpec;

.field private static final P_384_SPEC:Ljava/security/spec/ECParameterSpec;

.field private static final P_521_SPEC:Ljava/security/spec/ECParameterSpec;

.field private static final SECP256K1_SPEC:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    new-instance v1, Ljava/security/spec/EllipticCurve;

    .line 4
    .line 5
    new-instance v2, Ljava/security/spec/ECFieldFp;

    .line 6
    .line 7
    new-instance v3, Ljava/math/BigInteger;

    .line 8
    .line 9
    const-string v4, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/math/BigInteger;

    .line 18
    .line 19
    const-string v4, "115792089210356248762697446949407573530086143415290314195533631308867097853948"

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/math/BigInteger;

    .line 25
    .line 26
    const-string v5, "41058363725152142129326129780047268409114441015993725554835256314039467401291"

    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/security/spec/ECPoint;

    .line 35
    .line 36
    new-instance v3, Ljava/math/BigInteger;

    .line 37
    .line 38
    const-string v4, "48439561293906451759052585252797914202762949526041747995844080717082404635286"

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Ljava/math/BigInteger;

    .line 44
    .line 45
    const-string v5, "36134250956749795798585127919587881956611106672985015071877198253568414405109"

    .line 46
    .line 47
    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/math/BigInteger;

    .line 54
    .line 55
    const-string v4, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_256_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 65
    .line 66
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 67
    .line 68
    new-instance v1, Ljava/security/spec/EllipticCurve;

    .line 69
    .line 70
    new-instance v2, Ljava/security/spec/ECFieldFp;

    .line 71
    .line 72
    new-instance v3, Ljava/math/BigInteger;

    .line 73
    .line 74
    const-string v5, "115792089237316195423570985008687907853269984665640564039457584007908834671663"

    .line 75
    .line 76
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Ljava/math/BigInteger;

    .line 83
    .line 84
    const-string v5, "0"

    .line 85
    .line 86
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v5, Ljava/math/BigInteger;

    .line 90
    .line 91
    const-string v6, "7"

    .line 92
    .line 93
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v1, v2, v3, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Ljava/security/spec/ECPoint;

    .line 100
    .line 101
    new-instance v3, Ljava/math/BigInteger;

    .line 102
    .line 103
    const-string v5, "55066263022277343669578718895168534326250603453777594175500187360389116729240"

    .line 104
    .line 105
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Ljava/math/BigInteger;

    .line 109
    .line 110
    const-string v6, "32670510020758816978083085130507043184471273380659243275938904335757337482424"

    .line 111
    .line 112
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v3, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Ljava/math/BigInteger;

    .line 119
    .line 120
    const-string v5, "115792089237316195423570985008687907852837564279074904382605163141518161494337"

    .line 121
    .line 122
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lcom/nimbusds/jose/jwk/ECParameterTable;->SECP256K1_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 129
    .line 130
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 131
    .line 132
    new-instance v1, Ljava/security/spec/EllipticCurve;

    .line 133
    .line 134
    new-instance v2, Ljava/security/spec/ECFieldFp;

    .line 135
    .line 136
    new-instance v3, Ljava/math/BigInteger;

    .line 137
    .line 138
    const-string v5, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319"

    .line 139
    .line 140
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 144
    .line 145
    .line 146
    new-instance v3, Ljava/math/BigInteger;

    .line 147
    .line 148
    const-string v5, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112316"

    .line 149
    .line 150
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v5, Ljava/math/BigInteger;

    .line 154
    .line 155
    const-string v6, "27580193559959705877849011840389048093056905856361568521428707301988689241309860865136260764883745107765439761230575"

    .line 156
    .line 157
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v1, v2, v3, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Ljava/security/spec/ECPoint;

    .line 164
    .line 165
    new-instance v3, Ljava/math/BigInteger;

    .line 166
    .line 167
    const-string v5, "26247035095799689268623156744566981891852923491109213387815615900925518854738050089022388053975719786650872476732087"

    .line 168
    .line 169
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Ljava/math/BigInteger;

    .line 173
    .line 174
    const-string v6, "8325710961489029985546751289520108179287853048861315594709205902480503199884419224438643760392947333078086511627871"

    .line 175
    .line 176
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v2, v3, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 180
    .line 181
    .line 182
    new-instance v3, Ljava/math/BigInteger;

    .line 183
    .line 184
    const-string v5, "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643"

    .line 185
    .line 186
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 190
    .line 191
    .line 192
    sput-object v0, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_384_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 193
    .line 194
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 195
    .line 196
    new-instance v1, Ljava/security/spec/EllipticCurve;

    .line 197
    .line 198
    new-instance v2, Ljava/security/spec/ECFieldFp;

    .line 199
    .line 200
    new-instance v3, Ljava/math/BigInteger;

    .line 201
    .line 202
    const-string v5, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151"

    .line 203
    .line 204
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 208
    .line 209
    .line 210
    new-instance v3, Ljava/math/BigInteger;

    .line 211
    .line 212
    const-string v5, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057148"

    .line 213
    .line 214
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v5, Ljava/math/BigInteger;

    .line 218
    .line 219
    const-string v6, "1093849038073734274511112390766805569936207598951683748994586394495953116150735016013708737573759623248592132296706313309438452531591012912142327488478985984"

    .line 220
    .line 221
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v1, v2, v3, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Ljava/security/spec/ECPoint;

    .line 228
    .line 229
    new-instance v3, Ljava/math/BigInteger;

    .line 230
    .line 231
    const-string v5, "2661740802050217063228768716723360960729859168756973147706671368418802944996427808491545080627771902352094241225065558662157113545570916814161637315895999846"

    .line 232
    .line 233
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    new-instance v5, Ljava/math/BigInteger;

    .line 237
    .line 238
    const-string v6, "3757180025770020463545507224491183603594455134769762486694567779615544477440556316691234405012945539562144444537289428522585666729196580810124344277578376784"

    .line 239
    .line 240
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-direct {v2, v3, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Ljava/math/BigInteger;

    .line 247
    .line 248
    const-string v5, "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449"

    .line 249
    .line 250
    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 254
    .line 255
    .line 256
    sput-object v0, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_521_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 257
    .line 258
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget-object v2, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_256_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_1

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-ne v1, v2, :cond_1

    .line 144
    .line 145
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    sget-object v2, Lcom/nimbusds/jose/jwk/ECParameterTable;->SECP256K1_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-ne v1, v3, :cond_2

    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_2

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_2

    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_2

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_2

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_2

    .line 277
    .line 278
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-ne v1, v2, :cond_2

    .line 287
    .line 288
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    .line 289
    .line 290
    return-object p0

    .line 291
    :cond_2
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    sget-object v2, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_384_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-ne v1, v3, :cond_3

    .line 318
    .line 319
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_3

    .line 340
    .line 341
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_3

    .line 362
    .line 363
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_3

    .line 384
    .line 385
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_3

    .line 406
    .line 407
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-eqz v1, :cond_3

    .line 420
    .line 421
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-ne v1, v2, :cond_3

    .line 430
    .line 431
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 432
    .line 433
    return-object p0

    .line 434
    :cond_3
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    sget-object v2, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_521_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    if-ne v1, v3, :cond_4

    .line 461
    .line 462
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-eqz v1, :cond_4

    .line 483
    .line 484
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-eqz v1, :cond_4

    .line 505
    .line 506
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-eqz v1, :cond_4

    .line 527
    .line 528
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-eqz v1, :cond_4

    .line 549
    .line 550
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-eqz v1, :cond_4

    .line 563
    .line 564
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 565
    .line 566
    .line 567
    move-result p0

    .line 568
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-ne p0, v1, :cond_4

    .line 573
    .line 574
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 575
    .line 576
    return-object p0

    .line 577
    :cond_4
    return-object v0
.end method

.method public static get(Lcom/nimbusds/jose/jwk/Curve;)Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 578
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    sget-object p0, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_256_SPEC:Ljava/security/spec/ECParameterSpec;

    return-object p0

    .line 580
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    sget-object p0, Lcom/nimbusds/jose/jwk/ECParameterTable;->SECP256K1_SPEC:Ljava/security/spec/ECParameterSpec;

    return-object p0

    .line 582
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    sget-object p0, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_384_SPEC:Ljava/security/spec/ECParameterSpec;

    return-object p0

    .line 584
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 585
    sget-object p0, Lcom/nimbusds/jose/jwk/ECParameterTable;->P_521_SPEC:Ljava/security/spec/ECParameterSpec;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
