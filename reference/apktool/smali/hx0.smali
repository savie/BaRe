.class public Lhx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvc5;
.implements Lzv2;
.implements Lnx1;
.implements Le33;
.implements Lq36;
.implements Laj8;
.implements Ldh5;
.implements Lgt9;
.implements Les9;
.implements Lcs9;
.implements Let9;
.implements Lhr9;
.implements Ly1a;


# static fields
.field public static final b:Lhx0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhx0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhx0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhx0;->b:Lhx0;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhx0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static m(Lbt3;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lby3;->a:Lgv7;

    .line 2
    .line 3
    new-instance v1, Ly63;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    sget-object v3, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 9
    .line 10
    const-class v4, Lorg/swiftapps/swiftbackup/common/Const;

    .line 11
    .line 12
    const-string v5, "sleepTemporarily"

    .line 13
    .line 14
    const-string v6, "sleepTemporarily(J)V"

    .line 15
    .line 16
    invoke-direct/range {v1 .. v8}, Ly63;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    move v2, v0

    .line 21
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const/16 v3, 0x32

    .line 28
    .line 29
    if-ge v2, v3, :cond_0

    .line 30
    .line 31
    const-wide/16 v3, 0x1388

    .line 32
    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Ly63;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public b(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lun1;

    .line 25
    .line 26
    iget-object v2, v0, Lun1;->a:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    new-instance v7, Lno1;

    .line 31
    .line 32
    invoke-direct {v7, v2, v0}, Lno1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lun1;

    .line 36
    .line 37
    iget-object v3, v0, Lun1;->b:Ljava/util/Set;

    .line 38
    .line 39
    iget-object v4, v0, Lun1;->c:Ljava/util/Set;

    .line 40
    .line 41
    iget v5, v0, Lun1;->d:I

    .line 42
    .line 43
    iget v6, v0, Lun1;->e:I

    .line 44
    .line 45
    iget-object v8, v0, Lun1;->g:Ljava/util/Set;

    .line 46
    .line 47
    invoke-direct/range {v1 .. v8}, Lun1;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILmo1;Ljava/util/Set;)V

    .line 48
    .line 49
    .line 50
    move-object v0, v1

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object p0
.end method

.method public c([B[B[BI[B)[B
    .locals 3

    .line 1
    array-length p0, p1

    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    if-ne p0, v0, :cond_6

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lim9;->c()Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lim9;->c()Ljavax/crypto/Cipher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v1}, Lu48;->e(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    array-length v1, p1

    .line 26
    if-ne v1, v0, :cond_4

    .line 27
    .line 28
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 29
    .line 30
    const-string v1, "ChaCha20"

    .line 31
    .line 32
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-eqz p3, :cond_3

    .line 36
    .line 37
    array-length p1, p2

    .line 38
    const/16 v1, 0xc

    .line 39
    .line 40
    if-ne p1, v1, :cond_2

    .line 41
    .line 42
    array-length p1, p3

    .line 43
    add-int/lit8 v1, p4, 0x10

    .line 44
    .line 45
    if-lt p1, v1, :cond_1

    .line 46
    .line 47
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 50
    .line 51
    .line 52
    const-string p2, "ChaCha20-Poly1305"

    .line 53
    .line 54
    invoke-static {p2, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const/4 p2, 0x2

    .line 59
    invoke-virtual {p0, p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    .line 61
    .line 62
    array-length p1, p5

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, p5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 66
    .line 67
    .line 68
    :cond_0
    array-length p1, p3

    .line 69
    sub-int/2addr p1, p4

    .line 70
    invoke-virtual {p0, p3, p4, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    const-string p0, "ciphertext too short"

    .line 76
    .line 77
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_2
    const-string p0, "nonce length must be 12 bytes."

    .line 82
    .line 83
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :cond_3
    const-string p0, "ciphertext is null"

    .line 88
    .line 89
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :cond_4
    const-string p0, "The key length in bytes must be 32."

    .line 94
    .line 95
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_5
    const-string p0, "Can not use ChaCha20Poly1305 in FIPS-mode."

    .line 100
    .line 101
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :catch_0
    array-length p0, p3

    .line 106
    invoke-static {p3, p4, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance p3, Len9;

    .line 111
    .line 112
    invoke-direct {p3, p1}, Lao;-><init>([B)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p3, p0, p2, p5}, Lao;->t(Ljava/nio/ByteBuffer;[B[B)[B

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_6
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 125
    .line 126
    const-string p1, "Unexpected key length: 32"

    .line 127
    .line 128
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public d(Lfc5;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 5

    .line 1
    iget p0, p0, Lhx0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lzt9;

    .line 9
    .line 10
    invoke-static {}, Lcv9;->x()Lbv9;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object v2, p1, Lzt9;->d:Leu9;

    .line 15
    .line 16
    invoke-static {}, Liv9;->v()Lhv9;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget v2, v2, Leu9;->b:I

    .line 21
    .line 22
    invoke-virtual {v3}, Lj79;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v4, v3, Lj79;->b:Lk79;

    .line 26
    .line 27
    check-cast v4, Liv9;

    .line 28
    .line 29
    invoke-static {v4, v2}, Liv9;->u(Liv9;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lj79;->b()Lk79;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Liv9;

    .line 37
    .line 38
    invoke-virtual {p0}, Lj79;->c()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lj79;->b:Lk79;

    .line 42
    .line 43
    check-cast v3, Lcv9;

    .line 44
    .line 45
    invoke-static {v3, v2}, Lcv9;->w(Lcv9;Liv9;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p1, Lzt9;->e:Lkm8;

    .line 49
    .line 50
    iget-object v2, v2, Lkm8;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ld2a;

    .line 53
    .line 54
    invoke-virtual {v2}, Ld2a;->b()[B

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    array-length v3, v2

    .line 59
    invoke-static {v2, v1, v3}, Lt69;->g([BII)Lx69;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lj79;->c()V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 67
    .line 68
    check-cast v2, Lcv9;

    .line 69
    .line 70
    invoke-static {v2, v1}, Lcv9;->v(Lcv9;Lx69;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Lcv9;

    .line 78
    .line 79
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-object v1, p1, Lzt9;->d:Leu9;

    .line 84
    .line 85
    iget-object v1, v1, Leu9;->c:Ldu9;

    .line 86
    .line 87
    invoke-static {v1}, Lqu9;->b(Ldu9;)Lr0a;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object p1, p1, Lzt9;->f:Ljava/lang/Integer;

    .line 92
    .line 93
    const-string v2, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 94
    .line 95
    invoke-static {v2, p0, v0, v1, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_0
    check-cast p1, Lvg9;

    .line 101
    .line 102
    invoke-static {}, Lex9;->w()Ldx9;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iget-object v2, p1, Lvg9;->e:Lkm8;

    .line 107
    .line 108
    iget-object v2, v2, Lkm8;->a:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v2, Ld2a;

    .line 111
    .line 112
    invoke-virtual {v2}, Ld2a;->b()[B

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    array-length v3, v2

    .line 117
    invoke-static {v2, v1, v3}, Lt69;->g([BII)Lx69;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lj79;->c()V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 125
    .line 126
    check-cast v2, Lex9;

    .line 127
    .line 128
    invoke-static {v2, v1}, Lex9;->v(Lex9;Lx69;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Lex9;

    .line 136
    .line 137
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    iget-object v1, p1, Lvg9;->d:Lah9;

    .line 142
    .line 143
    iget-object v1, v1, Lah9;->a:Lef9;

    .line 144
    .line 145
    invoke-static {v1}, Lpm9;->b(Lef9;)Lr0a;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object p1, p1, Lvg9;->k:Ljava/lang/Integer;

    .line 150
    .line 151
    const-string v2, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 152
    .line 153
    invoke-static {v2, p0, v0, v1, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_1
    check-cast p1, Lhf9;

    .line 159
    .line 160
    invoke-static {}, Lcw9;->x()Lbw9;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    iget-object v2, p1, Lhf9;->d:Lsf9;

    .line 165
    .line 166
    invoke-static {v2}, Lsk9;->c(Lsf9;)Liw9;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p0}, Lj79;->c()V

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lj79;->b:Lk79;

    .line 174
    .line 175
    check-cast v3, Lcw9;

    .line 176
    .line 177
    invoke-static {v3, v2}, Lcw9;->w(Lcw9;Liw9;)V

    .line 178
    .line 179
    .line 180
    iget-object v2, p1, Lhf9;->e:Lkm8;

    .line 181
    .line 182
    iget-object v2, v2, Lkm8;->a:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v2, Ld2a;

    .line 185
    .line 186
    invoke-virtual {v2}, Ld2a;->b()[B

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    array-length v3, v2

    .line 191
    invoke-static {v2, v1, v3}, Lt69;->g([BII)Lx69;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lj79;->c()V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 199
    .line 200
    check-cast v2, Lcw9;

    .line 201
    .line 202
    invoke-static {v2, v1}, Lcw9;->v(Lcw9;Lx69;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Lcw9;

    .line 210
    .line 211
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    iget-object v1, p1, Lhf9;->d:Lsf9;

    .line 216
    .line 217
    iget-object v1, v1, Lsf9;->d:Lrf9;

    .line 218
    .line 219
    invoke-static {v1}, Lsk9;->b(Lrf9;)Lr0a;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object p1, p1, Lhf9;->k:Ljava/lang/Integer;

    .line 224
    .line 225
    const-string v2, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 226
    .line 227
    invoke-static {v2, p0, v0, v1, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lot9;)Lbd9;
    .locals 1

    .line 1
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lmz9;

    .line 4
    .line 5
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lf79;->a:Lf79;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lwy9;->t(Lt69;Lf79;)Lwy9;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1}, Lwy9;->w()Laz9;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lrq9;->a(Lr0a;Laz9;)Llq9;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 42
    .line 43
    const-string v0, "Parsing HpkeParameters failed: "

    .line 44
    .line 45
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "Wrong type URL in call to HpkeProtoSerialization.parseParameters: "

    .line 54
    .line 55
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/io/File;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1, p2}, Lay0;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const/4 p1, 0x3

    .line 10
    const-string p2, "ByteBufferEncoder"

    .line 11
    .line 12
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string p1, "Failed to write data"

    .line 19
    .line 20
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public declared-synchronized i(Ljava/lang/Object;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lny2;->b()Lny2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v1, v0, Lny2;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    monitor-exit v0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lny2;->b()Lny2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lny2;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    :try_start_4
    throw p1

    .line 34
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    throw p1
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "https"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "android.intent.action.VIEW"

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    const-string p0, "com.android.browser.application_id"

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "Actvity was not found for the link: \'"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "\'"

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "LinkResolverDef"

    .line 73
    .line 74
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public declared-synchronized l(Ljava/lang/Object;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lny2;->b()Lny2;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v1, v0, Lny2;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    monitor-exit v0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lny2;->b()Lny2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lny2;->k(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    :try_start_4
    throw p1

    .line 31
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    throw p1
.end method

.method public n(Lpt9;)Lvm4;
    .locals 3

    .line 1
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 13
    .line 14
    sget-object v1, Lf79;->a:Lf79;

    .line 15
    .line 16
    invoke-static {p0, v1}, Ld1a;->u(Lt69;Lf79;)Ld1a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ld1a;->t()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p1, Lpt9;->e:Lr0a;

    .line 27
    .line 28
    invoke-static {v1}, Lao9;->a(Lr0a;)Lsg9;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Ld1a;->x()Lt69;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lt69;->w()[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v2, Lkm8;

    .line 41
    .line 42
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v2, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-static {v1, v2, p0}, Lck9;->K(Lsg9;Lkm8;Ljava/lang/Integer;)Lck9;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 57
    .line 58
    const-string p1, "Only version 0 keys are accepted"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    const-string p0, "Parsing XChaCha20Poly1305Key failed"

    .line 65
    .line 66
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_1
    const-string p0, "Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey"

    .line 71
    .line 72
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public o(Llb9;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Llb9;->a()Lvm4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lte9;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p0, Lte9;

    .line 10
    .line 11
    invoke-static {p0}, Lq1a;->c(Lte9;)Lq1a;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of p1, p0, Luf9;

    .line 17
    .line 18
    const/16 v0, 0x10

    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    check-cast p0, Luf9;

    .line 25
    .line 26
    iget-object p1, p0, Luf9;->d:Lkg9;

    .line 27
    .line 28
    iget v2, p1, Lkg9;->b:I

    .line 29
    .line 30
    iget v3, p1, Lkg9;->c:I

    .line 31
    .line 32
    if-ne v2, v1, :cond_2

    .line 33
    .line 34
    if-ne v3, v0, :cond_1

    .line 35
    .line 36
    new-instance p1, Ll1a;

    .line 37
    .line 38
    iget-object v0, p0, Luf9;->e:Lkm8;

    .line 39
    .line 40
    iget-object v0, v0, Lkm8;->a:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ld2a;

    .line 43
    .line 44
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p0, p0, Luf9;->f:Ld2a;

    .line 49
    .line 50
    invoke-direct {p1, v0, p0}, Ll1a;-><init>([BLd2a;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 55
    .line 56
    const-string p1, "Expected tag Size 16, got "

    .line 57
    .line 58
    invoke-static {v3, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 67
    .line 68
    iget p1, p1, Lkg9;->b:I

    .line 69
    .line 70
    const-string v0, "Expected IV Size 12, got "

    .line 71
    .line 72
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_3
    instance-of p1, p0, Llg9;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    check-cast p0, Llg9;

    .line 86
    .line 87
    sget-object p1, Leo9;->a:Lio9;

    .line 88
    .line 89
    new-instance p1, Lq34;

    .line 90
    .line 91
    const/16 v0, 0x15

    .line 92
    .line 93
    invoke-direct {p1, v0}, Lq34;-><init>(I)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lml9;->d:[B

    .line 97
    .line 98
    invoke-static {}, Lq34;->t()Ljavax/crypto/Cipher;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lml9;->c(Ljavax/crypto/Cipher;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    new-instance v0, Lml9;

    .line 109
    .line 110
    iget-object v1, p0, Llg9;->e:Lkm8;

    .line 111
    .line 112
    iget-object v1, v1, Lkm8;->a:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Ld2a;

    .line 115
    .line 116
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object p0, p0, Llg9;->f:Ld2a;

    .line 121
    .line 122
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-direct {v0, v1, p0, p1}, Lml9;-><init>([B[BLq34;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_4
    const-string p0, "Cipher does not implement AES GCM SIV."

    .line 131
    .line 132
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v2

    .line 136
    :cond_5
    instance-of p1, p0, Lhf9;

    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    check-cast p0, Lhf9;

    .line 141
    .line 142
    sget-object p1, Lk1a;->e:Lei8;

    .line 143
    .line 144
    const/4 p1, 0x1

    .line 145
    invoke-static {p1}, Lu48;->e(I)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    iget-object p1, p0, Lhf9;->d:Lsf9;

    .line 152
    .line 153
    iget v1, p1, Lsf9;->c:I

    .line 154
    .line 155
    if-ne v1, v0, :cond_6

    .line 156
    .line 157
    new-instance v0, Lk1a;

    .line 158
    .line 159
    iget-object v1, p0, Lhf9;->e:Lkm8;

    .line 160
    .line 161
    iget-object v1, v1, Lkm8;->a:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v1, Ld2a;

    .line 164
    .line 165
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget p1, p1, Lsf9;->b:I

    .line 170
    .line 171
    iget-object p0, p0, Lhf9;->f:Ld2a;

    .line 172
    .line 173
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-direct {v0, p1, v1, p0}, Lk1a;-><init>(I[B[B)V

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 182
    .line 183
    iget p1, p1, Lsf9;->c:I

    .line 184
    .line 185
    const-string v0, "AesEaxJce only supports 16 byte tag size, not "

    .line 186
    .line 187
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p0

    .line 195
    :cond_7
    const-string p0, "Can not use AES-EAX in FIPS-mode."

    .line 196
    .line 197
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-object v2

    .line 201
    :cond_8
    instance-of p1, p0, Lvg9;

    .line 202
    .line 203
    if-eqz p1, :cond_9

    .line 204
    .line 205
    check-cast p0, Lvg9;

    .line 206
    .line 207
    iget-object p1, p0, Lvg9;->f:Ld2a;

    .line 208
    .line 209
    iget-object p0, p0, Lvg9;->e:Lkm8;

    .line 210
    .line 211
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p0, Ld2a;

    .line 214
    .line 215
    :try_start_0
    invoke-static {}, Lim9;->c()Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lim9;->c()Ljavax/crypto/Cipher;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Lim9;

    .line 223
    .line 224
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {p1}, Ld2a;->b()[B

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-direct {v1, p0, p1, v0}, Lim9;-><init>([B[BLjava/security/Provider;)V

    .line 237
    .line 238
    .line 239
    return-object v1

    .line 240
    :catch_0
    new-instance v0, Lsn9;

    .line 241
    .line 242
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-virtual {p1}, Ld2a;->b()[B

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-direct {v0, p0, p1}, Lsn9;-><init>([B[B)V

    .line 251
    .line 252
    .line 253
    return-object v0

    .line 254
    :cond_9
    instance-of p1, p0, Lck9;

    .line 255
    .line 256
    if-eqz p1, :cond_a

    .line 257
    .line 258
    check-cast p0, Lck9;

    .line 259
    .line 260
    iget-object p1, p0, Lck9;->f:Ld2a;

    .line 261
    .line 262
    iget-object p0, p0, Lck9;->e:Lkm8;

    .line 263
    .line 264
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast p0, Ld2a;

    .line 267
    .line 268
    :try_start_1
    invoke-static {}, Lim9;->c()Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    .line 270
    .line 271
    invoke-static {}, Lim9;->c()Ljavax/crypto/Cipher;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    new-instance v1, Lyn9;

    .line 276
    .line 277
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p1}, Ld2a;->b()[B

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-direct {v1, p0, p1, v0}, Lyn9;-><init>([B[BLjava/security/Provider;)V

    .line 290
    .line 291
    .line 292
    return-object v1

    .line 293
    :catch_1
    new-instance v0, Lc2a;

    .line 294
    .line 295
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {p1}, Ld2a;->b()[B

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-direct {v0, p0, p1}, Lc2a;-><init>([B[B)V

    .line 304
    .line 305
    .line 306
    return-object v0

    .line 307
    :cond_a
    instance-of p1, p0, Lmj9;

    .line 308
    .line 309
    if-eqz p1, :cond_c

    .line 310
    .line 311
    check-cast p0, Lmj9;

    .line 312
    .line 313
    iget-object p1, p0, Lmj9;->d:Lxj9;

    .line 314
    .line 315
    iget p1, p1, Lxj9;->b:I

    .line 316
    .line 317
    const/16 v0, 0x8

    .line 318
    .line 319
    if-lt p1, v0, :cond_b

    .line 320
    .line 321
    if-gt p1, v1, :cond_b

    .line 322
    .line 323
    new-instance v0, Lvn9;

    .line 324
    .line 325
    iget-object v1, p0, Lmj9;->e:Lkm8;

    .line 326
    .line 327
    iget-object v1, v1, Lkm8;->a:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v1, Ld2a;

    .line 330
    .line 331
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iget-object p0, p0, Lmj9;->f:Ld2a;

    .line 336
    .line 337
    invoke-direct {v0, v1, p0, p1}, Lvn9;-><init>([BLd2a;I)V

    .line 338
    .line 339
    .line 340
    return-object v0

    .line 341
    :cond_b
    const-string p0, "invalid salt size"

    .line 342
    .line 343
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    return-object v2

    .line 347
    :cond_c
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 348
    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    const-string v0, "Unknown key class: "

    .line 358
    .line 359
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw p1
.end method

.method public onCancelled(Lwc2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDataChange(Leb2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Lbd9;)Lot9;
    .locals 3

    .line 1
    check-cast p1, Lmh9;

    .line 2
    .line 3
    invoke-static {}, Lmz9;->t()Llz9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Li0a;->t()Lh0a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p1, Lmh9;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Lj79;->c()V

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 22
    .line 23
    check-cast v2, Li0a;

    .line 24
    .line 25
    invoke-static {v2, v1}, Li0a;->v(Li0a;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Li0a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lmh9;->b:Llh9;

    .line 42
    .line 43
    sget-object v0, Llh9;->c:Llh9;

    .line 44
    .line 45
    if-eq v0, p1, :cond_1

    .line 46
    .line 47
    sget-object v0, Llh9;->d:Llh9;

    .line 48
    .line 49
    if-ne v0, p1, :cond_0

    .line 50
    .line 51
    sget-object p1, Lr0a;->e:Lr0a;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "Unable to serialize variant: "

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    sget-object p1, Lr0a;->c:Lr0a;

    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Lmz9;

    .line 80
    .line 81
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public r(Lfc5;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public y(Lai5;)Lch5;
    .locals 2

    .line 1
    new-instance p0, Leq7;

    .line 2
    .line 3
    const-class v0, Landroid/net/Uri;

    .line 4
    .line 5
    const-class v1, Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Leq7;-><init>(Lch5;I)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public zza()I
    .locals 0

    .line 1
    const/16 p0, 0x20

    .line 2
    .line 3
    return p0
.end method

.method public zzc()[B
    .locals 0

    .line 1
    sget-object p0, Lor9;->k:[B

    .line 2
    .line 3
    return-object p0
.end method
