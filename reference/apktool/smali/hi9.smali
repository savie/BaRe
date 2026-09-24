.class public final synthetic Lhi9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgt9;
.implements Lcs9;
.implements Les9;
.implements Let9;
.implements Lba9;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhi9;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public f(Lvm4;)Lpt9;
    .locals 4

    .line 1
    check-cast p1, Lmj9;

    .line 2
    .line 3
    invoke-static {}, Lu0a;->x()Lt0a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p1, Lmj9;->e:Lkm8;

    .line 8
    .line 9
    iget-object v0, v0, Lkm8;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ld2a;

    .line 12
    .line 13
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    array-length v2, v0

    .line 19
    invoke-static {v0, v1, v2}, Lt69;->g([BII)Lx69;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lj79;->c()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 27
    .line 28
    check-cast v1, Lu0a;

    .line 29
    .line 30
    invoke-static {v1, v0}, Lu0a;->v(Lu0a;Lx69;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, La1a;->v()Lz0a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p1, Lmj9;->d:Lxj9;

    .line 38
    .line 39
    iget v2, v1, Lxj9;->b:I

    .line 40
    .line 41
    invoke-virtual {v0}, Lj79;->c()V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lj79;->b:Lk79;

    .line 45
    .line 46
    check-cast v3, La1a;

    .line 47
    .line 48
    invoke-static {v3, v2}, La1a;->u(La1a;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, La1a;

    .line 56
    .line 57
    invoke-virtual {p0}, Lj79;->c()V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 61
    .line 62
    check-cast v2, Lu0a;

    .line 63
    .line 64
    invoke-static {v2, v0}, Lu0a;->w(Lu0a;La1a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lu0a;

    .line 72
    .line 73
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object v0, v1, Lxj9;->a:Lrf9;

    .line 78
    .line 79
    sget-object v1, Lrf9;->f:Lrf9;

    .line 80
    .line 81
    if-eq v0, v1, :cond_1

    .line 82
    .line 83
    sget-object v1, Lrf9;->k:Lrf9;

    .line 84
    .line 85
    if-ne v0, v1, :cond_0

    .line 86
    .line 87
    sget-object v0, Lr0a;->e:Lr0a;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "Unable to serialize variant: "

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_1
    sget-object v0, Lr0a;->c:Lr0a;

    .line 107
    .line 108
    :goto_0
    iget-object p1, p1, Lmj9;->k:Ljava/lang/Integer;

    .line 109
    .line 110
    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 111
    .line 112
    const/4 v2, 0x2

    .line 113
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
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
    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

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
    invoke-static {p1, v0}, Lbx9;->u(Lt69;Lf79;)Lbx9;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lbx9;->w()I

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Ldp9;->b()Lwc9;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lbx9;->t()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v0, p1}, Lwc9;->g(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Llp9;->a(Lr0a;)Lcp9;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iput-object p0, v0, Lwc9;->c:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v0}, Lwc9;->f()Ldp9;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string p1, "Only version 0 keys are accepted"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 69
    .line 70
    const-string v0, "Parsing AesSivParameters failed: "

    .line 71
    .line 72
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "Wrong type URL in call to AesSivParameters.parseParameters: "

    .line 81
    .line 82
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public n(Lpt9;)Lvm4;
    .locals 4

    .line 1
    iget p0, p0, Lhi9;->a:I

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
    iget-object v2, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 12
    .line 13
    const-string v3, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 22
    .line 23
    sget-object v3, Lf79;->a:Lf79;

    .line 24
    .line 25
    invoke-static {p0, v3}, Lwx9;->u(Lt69;Lf79;)Lwx9;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lwx9;->t()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    iget-object p1, p1, Lpt9;->e:Lr0a;

    .line 36
    .line 37
    invoke-virtual {p0}, Lwx9;->y()Lqx9;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lgr9;->b(Lr0a;Lqx9;)Lcq9;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p1, Lcq9;->a:Lyp9;

    .line 46
    .line 47
    sget-object v3, Lyp9;->e:Lyp9;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lwx9;->D()Lt69;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lt69;->d()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0}, Lwx9;->C()Lt69;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lt69;->w()[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0, v2}, Lnq9;->L(Lcq9;Ld2a;Ljava/lang/Integer;)Lnq9;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 83
    .line 84
    const-string p1, "Y must be empty for X25519 points"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_1
    new-instance v0, Ljava/security/spec/ECPoint;

    .line 91
    .line 92
    invoke-virtual {p0}, Lwx9;->C()Lt69;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lt69;->w()[B

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p0}, Lwx9;->D()Lt69;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Lt69;->w()[B

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {v0, v3, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1, v0, v2}, Lnq9;->K(Lcq9;Ljava/security/spec/ECPoint;Ljava/lang/Integer;)Lnq9;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 125
    .line 126
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    const-string p0, "Parsing EcdsaPublicKey failed"

    .line 131
    .line 132
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    const-string p1, "Wrong type URL in call to EciesProtoSerialization.parsePublicKey: "

    .line 137
    .line 138
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-object v1

    .line 146
    :pswitch_0
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 147
    .line 148
    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 149
    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_5

    .line 155
    .line 156
    :try_start_1
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 157
    .line 158
    sget-object v2, Lf79;->a:Lf79;

    .line 159
    .line 160
    invoke-static {p0, v2}, Lrw9;->u(Lt69;Lf79;)Lrw9;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Lrw9;->t()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_4

    .line 169
    .line 170
    invoke-static {}, Ltg9;->b()Lcd;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lrw9;->x()Lt69;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lt69;->d()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-virtual {v0, v2}, Lcd;->o(I)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p1, Lpt9;->e:Lr0a;

    .line 186
    .line 187
    invoke-static {v2}, Lsl9;->a(Lr0a;)Lsg9;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iput-object v2, v0, Lcd;->c:Ljava/lang/Object;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcd;->n()Ltg9;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v2, Lgh;

    .line 198
    .line 199
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    iput-object v1, v2, Lgh;->b:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v1, v2, Lgh;->c:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v0, v2, Lgh;->a:Ljava/lang/Object;

    .line 207
    .line 208
    invoke-virtual {p0}, Lrw9;->x()Lt69;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0}, Lt69;->w()[B

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    new-instance v0, Lkm8;

    .line 217
    .line 218
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-direct {v0, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, v2, Lgh;->b:Ljava/lang/Object;

    .line 226
    .line 227
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 228
    .line 229
    iput-object p0, v2, Lgh;->c:Ljava/lang/Object;

    .line 230
    .line 231
    invoke-virtual {v2}, Lgh;->p()Llg9;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    goto :goto_1

    .line 236
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 237
    .line 238
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p0
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :catch_1
    const-string p0, "Parsing AesGcmSivKey failed"

    .line 243
    .line 244
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_5
    const-string p0, "Wrong type URL in call to AesGcmSivProtoSerialization.parseKey"

    .line 249
    .line 250
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :goto_1
    return-object v1

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public p(Lbd9;)Lot9;
    .locals 3

    .line 1
    iget p0, p0, Lhi9;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lkg9;

    .line 7
    .line 8
    invoke-static {p1}, Lal9;->c(Lkg9;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lmz9;->t()Llz9;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Low9;->x()Lnw9;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p1, Lkg9;->a:I

    .line 25
    .line 26
    invoke-virtual {v0}, Lj79;->c()V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 30
    .line 31
    check-cast v2, Low9;

    .line 32
    .line 33
    invoke-static {v2, v1}, Low9;->v(Low9;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Low9;

    .line 41
    .line 42
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lkg9;->d:Lig9;

    .line 50
    .line 51
    invoke-static {p1}, Lal9;->b(Lig9;)Lr0a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lmz9;

    .line 63
    .line 64
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_0
    check-cast p1, Ldi9;

    .line 70
    .line 71
    invoke-static {}, Lmz9;->t()Llz9;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lki9;->b(Ldi9;)Lo0a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Ldi9;->a:Lci9;

    .line 92
    .line 93
    sget-object v0, Lci9;->c:Lci9;

    .line 94
    .line 95
    if-eq v0, p1, :cond_1

    .line 96
    .line 97
    sget-object v0, Lci9;->d:Lci9;

    .line 98
    .line 99
    if-ne v0, p1, :cond_0

    .line 100
    .line 101
    sget-object p1, Lr0a;->e:Lr0a;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 105
    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "Unable to serialize variant: "

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_1
    sget-object p1, Lr0a;->c:Lr0a;

    .line 121
    .line 122
    :goto_0
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lmz9;

    .line 130
    .line 131
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
