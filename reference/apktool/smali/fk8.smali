.class public final Lfk8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgk8;
.implements Lq36;
.implements Let9;
.implements Les9;
.implements Lcs9;
.implements Lgt9;
.implements Ly1a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfk8;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lkh8;

    .line 2
    .line 3
    iget-boolean p0, p1, Lkh8;->e:Z

    .line 4
    .line 5
    return p0
.end method

.method public synthetic e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

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
    check-cast p1, Lte9;

    .line 2
    .line 3
    invoke-static {}, Llv9;->x()Lkv9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lrv9;->w()Lqv9;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lzv9;->v()Lyv9;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p1, Lte9;->d:Lgf9;

    .line 16
    .line 17
    iget v2, v2, Lgf9;->c:I

    .line 18
    .line 19
    invoke-virtual {v1}, Lj79;->c()V

    .line 20
    .line 21
    .line 22
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 23
    .line 24
    check-cast v3, Lzv9;

    .line 25
    .line 26
    invoke-static {v3, v2}, Lzv9;->u(Lzv9;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lzv9;

    .line 34
    .line 35
    invoke-virtual {v0}, Lj79;->c()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 39
    .line 40
    check-cast v2, Lrv9;

    .line 41
    .line 42
    invoke-static {v2, v1}, Lrv9;->v(Lrv9;Lzv9;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p1, Lte9;->e:Lkm8;

    .line 46
    .line 47
    iget-object v1, v1, Lkm8;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Ld2a;

    .line 50
    .line 51
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    array-length v2, v1

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-static {v1, v3, v2}, Lt69;->g([BII)Lx69;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lj79;->c()V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 65
    .line 66
    check-cast v2, Lrv9;

    .line 67
    .line 68
    invoke-static {v2, v1}, Lrv9;->u(Lrv9;Lx69;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lrv9;

    .line 76
    .line 77
    invoke-virtual {p0}, Lj79;->c()V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 81
    .line 82
    check-cast v1, Llv9;

    .line 83
    .line 84
    invoke-static {v1, v0}, Llv9;->v(Llv9;Lrv9;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Liy9;->x()Lhy9;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p1, Lte9;->d:Lgf9;

    .line 92
    .line 93
    invoke-static {v1}, Lmk9;->d(Lgf9;)Lpy9;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lj79;->c()V

    .line 98
    .line 99
    .line 100
    iget-object v4, v0, Lj79;->b:Lk79;

    .line 101
    .line 102
    check-cast v4, Liy9;

    .line 103
    .line 104
    invoke-static {v4, v2}, Liy9;->w(Liy9;Lpy9;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p1, Lte9;->f:Lkm8;

    .line 108
    .line 109
    iget-object v2, v2, Lkm8;->a:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Ld2a;

    .line 112
    .line 113
    invoke-virtual {v2}, Ld2a;->b()[B

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    array-length v4, v2

    .line 118
    invoke-static {v2, v3, v4}, Lt69;->g([BII)Lx69;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0}, Lj79;->c()V

    .line 123
    .line 124
    .line 125
    iget-object v3, v0, Lj79;->b:Lk79;

    .line 126
    .line 127
    check-cast v3, Liy9;

    .line 128
    .line 129
    invoke-static {v3, v2}, Liy9;->v(Liy9;Lt69;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Liy9;

    .line 137
    .line 138
    invoke-virtual {p0}, Lj79;->c()V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 142
    .line 143
    check-cast v2, Llv9;

    .line 144
    .line 145
    invoke-static {v2, v0}, Llv9;->w(Llv9;Liy9;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Llv9;

    .line 153
    .line 154
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    iget-object v0, v1, Lgf9;->e:Lef9;

    .line 159
    .line 160
    invoke-static {v0}, Lmk9;->c(Lef9;)Lr0a;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object p1, p1, Lte9;->n:Ljava/lang/Integer;

    .line 165
    .line 166
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 167
    .line 168
    const/4 v2, 0x2

    .line 169
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0
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
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

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
    invoke-static {p1, v0}, Li0a;->u(Lt69;Lf79;)Li0a;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-virtual {p1}, Li0a;->x()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lwh9;->a(Lr0a;)Llh9;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Lmh9;

    .line 40
    .line 41
    invoke-direct {v0, p1, p0}, Lmh9;-><init>(Ljava/lang/String;Llh9;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    const-string v0, "Parsing KmsAeadKeyFormat failed: "

    .line 49
    .line 50
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: "

    .line 59
    .line 60
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public i(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    new-instance p0, Lek8;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lek8;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n(Lpt9;)Lvm4;
    .locals 4

    .line 1
    iget p0, p0, Lfk8;->a:I

    .line 2
    .line 3
    const-string v0, "Only version 0 keys are accepted"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 20
    .line 21
    sget-object v2, Lf79;->a:Lf79;

    .line 22
    .line 23
    invoke-static {p0, v2}, Ldz9;->u(Lt69;Lf79;)Ldz9;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ldz9;->t()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Ldz9;->z()Lgz9;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lgz9;->t()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    iget-object v0, p1, Lpt9;->e:Lr0a;

    .line 44
    .line 45
    invoke-virtual {v2}, Lgz9;->y()Laz9;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v0, v3}, Lrq9;->a(Lr0a;Laz9;)Llq9;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v3, v0, Llq9;->a:Ljq9;

    .line 54
    .line 55
    invoke-virtual {v2}, Lgz9;->B()Lt69;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lt69;->w()[B

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v3, v2}, Lrq9;->c(Ljq9;[B)Ld2a;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object p1, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-static {v0, v2, p1}, Lvq9;->K(Llq9;Ld2a;Ljava/lang/Integer;)Lvq9;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0}, Ldz9;->A()Lt69;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lt69;->w()[B

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v3}, Lor9;->a(Ljq9;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v0, p0}, Lwx3;->I(ILjava/math/BigInteger;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance v0, Lkm8;

    .line 94
    .line 95
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-direct {v0, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v0}, Loq9;->K(Lvq9;Lkm8;)Loq9;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 108
    .line 109
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 114
    .line 115
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    const-string p0, "Parsing HpkePrivateKey failed"

    .line 120
    .line 121
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    const-string p1, "Wrong type URL in call to HpkeProtoSerialization.parsePrivateKey: "

    .line 126
    .line 127
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    return-object v1

    .line 135
    :pswitch_0
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 136
    .line 137
    const-string v2, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_4

    .line 144
    .line 145
    :try_start_1
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 146
    .line 147
    sget-object v2, Lf79;->a:Lf79;

    .line 148
    .line 149
    invoke-static {p0, v2}, Lex9;->u(Lt69;Lf79;)Lex9;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Lex9;->t()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_3

    .line 158
    .line 159
    iget-object v0, p1, Lpt9;->e:Lr0a;

    .line 160
    .line 161
    invoke-static {v0}, Lpm9;->a(Lr0a;)Lef9;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lex9;->x()Lt69;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lt69;->w()[B

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    new-instance v2, Lkm8;

    .line 174
    .line 175
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {v2, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-static {v0, v2, p0}, Lvg9;->K(Lef9;Lkm8;Ljava/lang/Integer;)Lvg9;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 190
    .line 191
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p0
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :catch_1
    const-string p0, "Parsing ChaCha20Poly1305Key failed"

    .line 196
    .line 197
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    const-string p0, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey"

    .line 202
    .line 203
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-object v1

    .line 207
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public o(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    new-instance p0, Lek8;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lek8;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public p(Lbd9;)Lot9;
    .locals 4

    .line 1
    iget p0, p0, Lfk8;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lmu9;

    .line 7
    .line 8
    invoke-static {}, Lmz9;->t()Llz9;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lmy9;->y()Lly9;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lpy9;->x()Loy9;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v2, p1, Lmu9;->b:I

    .line 26
    .line 27
    invoke-virtual {v1}, Lj79;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 31
    .line 32
    check-cast v3, Lpy9;

    .line 33
    .line 34
    invoke-static {v3, v2}, Lpy9;->u(Lpy9;I)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lsu9;->b:Lot9;

    .line 38
    .line 39
    iget-object v3, p1, Lmu9;->d:Llu9;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljy9;

    .line 46
    .line 47
    invoke-virtual {v1}, Lj79;->c()V

    .line 48
    .line 49
    .line 50
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 51
    .line 52
    check-cast v3, Lpy9;

    .line 53
    .line 54
    invoke-static {v3, v2}, Lpy9;->v(Lpy9;Ljy9;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lpy9;

    .line 62
    .line 63
    invoke-virtual {v0}, Lj79;->c()V

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 67
    .line 68
    check-cast v2, Lmy9;

    .line 69
    .line 70
    invoke-static {v2, v1}, Lmy9;->w(Lmy9;Lpy9;)V

    .line 71
    .line 72
    .line 73
    iget v1, p1, Lmu9;->a:I

    .line 74
    .line 75
    invoke-virtual {v0}, Lj79;->c()V

    .line 76
    .line 77
    .line 78
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 79
    .line 80
    check-cast v2, Lmy9;

    .line 81
    .line 82
    invoke-static {v2, v1}, Lmy9;->v(Lmy9;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lmy9;

    .line 90
    .line 91
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lsu9;->a:Lot9;

    .line 99
    .line 100
    iget-object p1, p1, Lmu9;->c:Lku9;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lr0a;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lmz9;

    .line 116
    .line 117
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_0
    check-cast p1, Lcq9;

    .line 123
    .line 124
    invoke-static {}, Lmz9;->t()Llz9;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lnx9;->t()Lmx9;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {p1}, Lgr9;->d(Lcq9;)Lqx9;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0}, Lj79;->c()V

    .line 142
    .line 143
    .line 144
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 145
    .line 146
    check-cast v2, Lnx9;

    .line 147
    .line 148
    invoke-static {v2, v1}, Lnx9;->v(Lnx9;Lqx9;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lnx9;

    .line 156
    .line 157
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Lgr9;->g:Lot9;

    .line 165
    .line 166
    iget-object p1, p1, Lcq9;->d:Lzp9;

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lr0a;

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Lmz9;

    .line 182
    .line 183
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
