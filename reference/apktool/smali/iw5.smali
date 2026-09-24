.class public final Liw5;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lrt6;

.field public final f:Ljavax/crypto/SecretKey;

.field public final synthetic g:Ljw5;


# direct methods
.method public constructor <init>(Ljw5;Lrt6;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liw5;->g:Ljw5;

    .line 2
    .line 3
    invoke-direct {p0}, Lrt6;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Liw5;->e:Lrt6;

    .line 7
    .line 8
    iput-object p3, p0, Liw5;->f:Ljavax/crypto/SecretKey;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lzu6;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Liw5;->g(Lzu6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()Ldv6;
    .locals 0

    .line 1
    iget-object p0, p0, Liw5;->e:Lrt6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lut6;

    .line 8
    .line 9
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Liw5;->e:Lrt6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lrt6;->d()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e()Lrt6;
    .locals 0

    .line 1
    iget-object p0, p0, Liw5;->e:Lrt6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lrt6;->e()Lrt6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final g(Lzu6;)V
    .locals 11

    .line 1
    new-instance v0, Lzu6;

    .line 2
    .line 3
    invoke-direct {v0}, Low0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Liw5;->e:Lrt6;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lrt6;->g(Lzu6;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Low0;->c()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Liw5;->g:Ljw5;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    new-instance v5, Lzu6;

    .line 25
    .line 26
    invoke-direct {v5}, Low0;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v3, v4}, Low0;->m(J)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v2, Ljw5;->b:Lwu6;

    .line 33
    .line 34
    iget v3, v3, Lwu6;->c:I

    .line 35
    .line 36
    add-int/lit8 v3, v3, -0x8

    .line 37
    .line 38
    invoke-virtual {v5, v3}, Lzu6;->u(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Low0;->c()[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    .line 46
    .line 47
    const/16 v5, 0x80

    .line 48
    .line 49
    invoke-direct {v4, v5, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lnu6;

    .line 53
    .line 54
    array-length v6, v0

    .line 55
    invoke-virtual {v1}, Lev6;->c()Ldv6;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lut6;

    .line 60
    .line 61
    iget-wide v7, v7, Lut6;->h:J

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    const/16 v9, 0x10

    .line 67
    .line 68
    new-array v10, v9, [B

    .line 69
    .line 70
    iput-object v10, v5, Lnu6;->b:[B

    .line 71
    .line 72
    iput-object v3, v5, Lnu6;->c:[B

    .line 73
    .line 74
    iput v6, v5, Lnu6;->d:I

    .line 75
    .line 76
    iput-wide v7, v5, Lnu6;->f:J

    .line 77
    .line 78
    new-instance v3, Lzu6;

    .line 79
    .line 80
    invoke-direct {v3}, Low0;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v3}, Lnu6;->d(Lzu6;)V

    .line 84
    .line 85
    .line 86
    const/16 v6, 0x14

    .line 87
    .line 88
    iput v6, v3, Low0;->c:I

    .line 89
    .line 90
    invoke-virtual {v3}, Low0;->c()[B

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :try_start_0
    iget-object v6, v2, Ljw5;->a:Llv1;

    .line 95
    .line 96
    iget-object v2, v2, Ljw5;->b:Lwu6;

    .line 97
    .line 98
    iget-object v2, v2, Lwu6;->b:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Llv1;->f(Ljava/lang/String;)Lgf0;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v6, v2, Lgf0;->a:Ld;

    .line 108
    .line 109
    iget-object p0, p0, Liw5;->f:Ljavax/crypto/SecretKey;

    .line 110
    .line 111
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v2, p0, v4}, Lgf0;->a([BLjavax/crypto/spec/GCMParameterSpec;)Le;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-interface {v6, v2, p0}, Ld;->a(ZLz61;)V

    .line 121
    .line 122
    .line 123
    array-length p0, v3

    .line 124
    invoke-interface {v6, v3, p0}, Ld;->d([BI)V

    .line 125
    .line 126
    .line 127
    array-length p0, v0

    .line 128
    invoke-interface {v6, p0}, Ld;->e(I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    new-array v3, v2, [B

    .line 133
    .line 134
    invoke-interface {v6, p0, v0, v3}, Ld;->b(I[B[B)I

    .line 135
    .line 136
    .line 137
    move-result p0
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :try_start_1
    invoke-interface {v6, v3, p0}, Ld;->doFinal([BI)I
    :try_end_1
    .catch Lyf4; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lh67; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    array-length p0, v0

    .line 142
    add-int/2addr p0, v9

    .line 143
    if-ne v2, p0, :cond_0

    .line 144
    .line 145
    new-array p0, v9, [B

    .line 146
    .line 147
    array-length v1, v0

    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-static {v3, v1, p0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    iput-object p0, v5, Lnu6;->b:[B

    .line 153
    .line 154
    invoke-virtual {v5, p1}, Lnu6;->d(Lzu6;)V

    .line 155
    .line 156
    .line 157
    array-length p0, v0

    .line 158
    invoke-virtual {p1, v3, p0}, Low0;->i([BI)Low0;

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_0
    const-string p0, "Invalid length for cipherText after encryption."

    .line 163
    .line 164
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catch_0
    move-exception p0

    .line 169
    :try_start_2
    new-instance p1, Lh67;

    .line 170
    .line 171
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw p1
    :try_end_2
    .catch Lh67; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    :catch_1
    move-exception p0

    .line 176
    sget-object p1, Ljw5;->d:Ll15;

    .line 177
    .line 178
    const-string v0, "Security exception while encrypting packet << {} >>"

    .line 179
    .line 180
    invoke-virtual {v1}, Lev6;->c()Ldv6;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-interface {p1, v1, v0}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Lgv6;

    .line 188
    .line 189
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Encrypted["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Liw5;->e:Lrt6;

    .line 9
    .line 10
    invoke-virtual {p0}, Lrt6;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "]"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
