.class public final Lm45;
.super Ltl0;


# static fields
.field public static final c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm45;->c:Ljava/util/HashSet;

    .line 7
    .line 8
    sget-object v1, Lpj5;->L:Lf1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    sget-object v1, Lpj5;->M:Lf1;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    sget-object v1, Lpj5;->N:Lf1;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lm45;->c:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ltl0;-><init>(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    new-instance p0, Lgg0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 7
    .line 8
    iput-object v0, p0, Lgg0;->c:Lx1;

    .line 9
    .line 10
    invoke-virtual {p1}, Ly0;->getEncoded()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lgg0;->d:[B

    .line 15
    .line 16
    invoke-static {p1}, Ltu0;->e(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ln60;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lp45;

    .line 21
    .line 22
    iput-object p1, p0, Lgg0;->a:Lp45;

    .line 23
    .line 24
    iget-object p1, p1, Lei0;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lo45;

    .line 27
    .line 28
    iget-object p1, p1, Lo45;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Ln45;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lgg0;->b:Ljava/lang/String;

    .line 41
    .line 42
    return-object p0
.end method

.method public final b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 0

    .line 1
    new-instance p0, Lhg0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb6;->a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lr45;

    .line 11
    .line 12
    iput-object p1, p0, Lhg0;->a:Lr45;

    .line 13
    .line 14
    iget-object p1, p1, Lei0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lo45;

    .line 17
    .line 18
    iget-object p1, p1, Lo45;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Ln45;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lhg0;->b:Ljava/lang/String;

    .line 31
    .line 32
    return-object p0
.end method

.method public final engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5

    .line 1
    instance-of v0, p1, Lq45;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    check-cast p1, Lq45;

    .line 6
    .line 7
    iget-object p0, p1, Lq45;->a:[B

    .line 8
    .line 9
    iget-boolean v0, p1, Lq45;->d:Z

    .line 10
    .line 11
    iget-object v1, p1, Lq45;->c:Ln45;

    .line 12
    .line 13
    iget-object v1, v1, Ln45;->a:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v2, Lli8;->a:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lo45;

    .line 22
    .line 23
    const-string v2, "KeySpec represents long form"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance p1, Lp45;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-static {p0}, Lms8;->k([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p1, v1, p0, v3}, Lp45;-><init>(Lo45;[BLr45;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_1
    new-instance v4, Lp45;

    .line 45
    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    invoke-static {p0}, Lms8;->k([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v4, v1, p0, v3}, Lp45;-><init>(Lo45;[BLr45;)V

    .line 53
    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    iget-object p0, p1, Lq45;->b:[B

    .line 58
    .line 59
    invoke-static {p0}, Lms8;->k([B)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    iget-object p1, v4, Lp45;->f:[B

    .line 66
    .line 67
    iget-object v0, v4, Lp45;->k:[B

    .line 68
    .line 69
    invoke-static {p1, v0}, Lms8;->p([B[B)[B

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p0, p1}, Lms8;->r([B[B)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 81
    .line 82
    const-string p1, "public key data does not match private key data"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_3
    :goto_0
    move-object p1, v4

    .line 89
    :goto_1
    new-instance p0, Lgg0;

    .line 90
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lgg0;->a:Lp45;

    .line 95
    .line 96
    iget-object p1, p1, Lei0;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p1, Lo45;

    .line 99
    .line 100
    iget-object p1, p1, Lo45;->a:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p1}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lgg0;->b:Ljava/lang/String;

    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_4
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v3

    .line 113
    :cond_5
    const-string p0, "KeySpec represents seed"

    .line 114
    .line 115
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v3

    .line 119
    :cond_6
    invoke-super {p0, p1}, Ltl0;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0
.end method

.method public final engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3

    .line 1
    instance-of v0, p1, Ls45;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ls45;

    .line 6
    .line 7
    new-instance p0, Lhg0;

    .line 8
    .line 9
    new-instance v0, Lr45;

    .line 10
    .line 11
    iget-object v1, p1, Ls45;->a:Ln45;

    .line 12
    .line 13
    iget-object v1, v1, Ln45;->a:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v2, Lli8;->a:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lo45;

    .line 22
    .line 23
    iget-object p1, p1, Ls45;->b:[B

    .line 24
    .line 25
    invoke-static {p1}, Lms8;->k([B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, v1, p1}, Lr45;-><init>(Lo45;[B)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lhg0;->a:Lr45;

    .line 36
    .line 37
    iget-object p1, v0, Lei0;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lo45;

    .line 40
    .line 41
    iget-object p1, p1, Lo45;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p1}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Ln45;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lhg0;->b:Ljava/lang/String;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Ltl0;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 11

    .line 1
    instance-of p0, p1, Lgg0;

    .line 2
    .line 3
    const-string v0, "."

    .line 4
    .line 5
    const-class v1, Ls45;

    .line 6
    .line 7
    if-eqz p0, :cond_9

    .line 8
    .line 9
    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 18
    .line 19
    check-cast p1, Lgg0;

    .line 20
    .line 21
    invoke-virtual {p1}, Lgg0;->getEncoded()[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-class p0, Lq45;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 v2, 0x0

    .line 36
    const-string v3, "\'t\' has invalid length"

    .line 37
    .line 38
    const-string v4, "\'rho\' has invalid length"

    .line 39
    .line 40
    const-string v5, "Modulus check failed for ML-KEM public key"

    .line 41
    .line 42
    const/16 v6, 0x20

    .line 43
    .line 44
    if-eqz p0, :cond_5

    .line 45
    .line 46
    check-cast p1, Lgg0;

    .line 47
    .line 48
    iget-object p0, p1, Lgg0;->a:Lp45;

    .line 49
    .line 50
    iget-object p0, p0, Lp45;->n:[B

    .line 51
    .line 52
    invoke-static {p0}, Lms8;->k([B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p2, p1, Lgg0;->a:Lp45;

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    new-instance p1, Lq45;

    .line 61
    .line 62
    iget-object p2, p2, Lei0;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Lo45;

    .line 65
    .line 66
    iget-object p2, p2, Lo45;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p2}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2, p0}, Lq45;-><init>(Ln45;[B)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_1
    new-instance p0, Lq45;

    .line 77
    .line 78
    iget-object p2, p2, Lei0;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p2, Lo45;

    .line 81
    .line 82
    iget-object p2, p2, Lo45;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p2}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object v0, p1, Lgg0;->a:Lp45;

    .line 89
    .line 90
    invoke-virtual {v0}, Lp45;->getEncoded()[B

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object p1, p1, Lgg0;->a:Lp45;

    .line 95
    .line 96
    iget-object v1, p1, Lei0;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Lo45;

    .line 99
    .line 100
    iget-object v7, p1, Lp45;->f:[B

    .line 101
    .line 102
    iget-object p1, p1, Lp45;->k:[B

    .line 103
    .line 104
    new-instance v8, Lk45;

    .line 105
    .line 106
    iget v9, v1, Lo45;->b:I

    .line 107
    .line 108
    invoke-direct {v8, v9}, Lk45;-><init>(I)V

    .line 109
    .line 110
    .line 111
    array-length v9, v7

    .line 112
    iget v10, v8, Lk45;->c:I

    .line 113
    .line 114
    if-ne v9, v10, :cond_4

    .line 115
    .line 116
    array-length v3, p1

    .line 117
    if-ne v3, v6, :cond_3

    .line 118
    .line 119
    invoke-static {v7}, Lms8;->k([B)[B

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {p1}, Lms8;->k([B)[B

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v8, v3}, Lk45;->a([B)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    iget-object v1, v1, Lo45;->a:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v1}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget-object v1, v1, Ln45;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-static {v3, p1}, Lms8;->p([B[B)[B

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p0, p2, v0, p1}, Lq45;-><init>(Ln45;[B[B)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_2
    invoke-static {v5}, Lc6;->f(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object v2

    .line 156
    :cond_3
    invoke-static {v4}, Lc6;->f(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v2

    .line 160
    :cond_4
    invoke-static {v3}, Lc6;->f(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v2

    .line 164
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_b

    .line 169
    .line 170
    check-cast p1, Lgg0;

    .line 171
    .line 172
    new-instance p0, Ls45;

    .line 173
    .line 174
    iget-object p2, p1, Lgg0;->a:Lp45;

    .line 175
    .line 176
    iget-object p2, p2, Lei0;->b:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p2, Lo45;

    .line 179
    .line 180
    iget-object p2, p2, Lo45;->a:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p2}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iget-object p1, p1, Lgg0;->a:Lp45;

    .line 187
    .line 188
    iget-object v0, p1, Lei0;->b:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Lo45;

    .line 191
    .line 192
    iget-object v1, p1, Lp45;->f:[B

    .line 193
    .line 194
    iget-object p1, p1, Lp45;->k:[B

    .line 195
    .line 196
    new-instance v7, Lk45;

    .line 197
    .line 198
    iget v8, v0, Lo45;->b:I

    .line 199
    .line 200
    invoke-direct {v7, v8}, Lk45;-><init>(I)V

    .line 201
    .line 202
    .line 203
    array-length v8, v1

    .line 204
    iget v9, v7, Lk45;->c:I

    .line 205
    .line 206
    if-ne v8, v9, :cond_8

    .line 207
    .line 208
    array-length v3, p1

    .line 209
    if-ne v3, v6, :cond_7

    .line 210
    .line 211
    invoke-static {v1}, Lms8;->k([B)[B

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {p1}, Lms8;->k([B)[B

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v7, v1}, Lk45;->a([B)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_6

    .line 224
    .line 225
    iget-object v0, v0, Lo45;->a:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v0}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v0, v0, Ln45;->a:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v0}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    invoke-static {v1, p1}, Lms8;->p([B[B)[B

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-direct {p0, p2, p1}, Ls45;-><init>(Ln45;[B)V

    .line 241
    .line 242
    .line 243
    return-object p0

    .line 244
    :cond_6
    invoke-static {v5}, Lc6;->f(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v2

    .line 248
    :cond_7
    invoke-static {v4}, Lc6;->f(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return-object v2

    .line 252
    :cond_8
    invoke-static {v3}, Lc6;->f(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-object v2

    .line 256
    :cond_9
    instance-of p0, p1, Lhg0;

    .line 257
    .line 258
    if-eqz p0, :cond_c

    .line 259
    .line 260
    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 261
    .line 262
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    if-eqz p0, :cond_a

    .line 267
    .line 268
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 269
    .line 270
    check-cast p1, Lhg0;

    .line 271
    .line 272
    invoke-virtual {p1}, Lhg0;->getEncoded()[B

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 277
    .line 278
    .line 279
    return-object p0

    .line 280
    :cond_a
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-eqz p0, :cond_b

    .line 285
    .line 286
    check-cast p1, Lhg0;

    .line 287
    .line 288
    new-instance p0, Ls45;

    .line 289
    .line 290
    iget-object p2, p1, Lhg0;->a:Lr45;

    .line 291
    .line 292
    iget-object p2, p2, Lei0;->b:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p2, Lo45;

    .line 295
    .line 296
    iget-object p2, p2, Lo45;->a:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {p2}, Ln45;->a(Ljava/lang/String;)Ln45;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    iget-object p1, p1, Lhg0;->a:Lr45;

    .line 303
    .line 304
    invoke-virtual {p1}, Lr45;->getEncoded()[B

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-direct {p0, p2, p1}, Ls45;-><init>(Ln45;[B)V

    .line 309
    .line 310
    .line 311
    return-object p0

    .line 312
    :cond_b
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 313
    .line 314
    const-string p1, "unknown key specification: "

    .line 315
    .line 316
    invoke-static {p2, p1, v0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p0

    .line 324
    :cond_c
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v1, "Unsupported key type: "

    .line 333
    .line 334
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    .line 1
    instance-of p0, p1, Lgg0;

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    instance-of p0, p1, Lhg0;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p0, "unsupported key type"

    .line 11
    .line 12
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    return-object p1
.end method
