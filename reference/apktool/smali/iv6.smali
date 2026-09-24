.class public final Liv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B

.field public static final p:[B

.field public static final q:[B

.field public static final r:Ll15;


# instance fields
.field public final a:Ldi7;

.field public final b:Lxr1;

.field public final c:Lln5;

.field public final d:Lla;

.field public final e:Lla;

.field public final f:Lur1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SMBC2SCipherKey"

    .line 2
    .line 3
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Liv6;->g:[B

    .line 8
    .line 9
    const-string v0, "SMBS2CCipherKey"

    .line 10
    .line 11
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Liv6;->h:[B

    .line 16
    .line 17
    const-string v0, "SMB2AESCCM"

    .line 18
    .line 19
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Liv6;->i:[B

    .line 24
    .line 25
    const-string v0, "ServerIn "

    .line 26
    .line 27
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Liv6;->j:[B

    .line 32
    .line 33
    const-string v0, "ServerOut"

    .line 34
    .line 35
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Liv6;->k:[B

    .line 40
    .line 41
    const-string v0, "SmbSign"

    .line 42
    .line 43
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Liv6;->l:[B

    .line 48
    .line 49
    const-string v0, "SMB2AESCMAC"

    .line 50
    .line 51
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Liv6;->m:[B

    .line 56
    .line 57
    const-string v0, "SMBSigningKey"

    .line 58
    .line 59
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Liv6;->n:[B

    .line 64
    .line 65
    const-string v0, "SmbRpc"

    .line 66
    .line 67
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Liv6;->o:[B

    .line 72
    .line 73
    const-string v0, "SMB2APP"

    .line 74
    .line 75
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Liv6;->p:[B

    .line 80
    .line 81
    const-string v0, "SMBAppKey"

    .line 82
    .line 83
    invoke-static {v0}, Ll73;->x(Ljava/lang/String;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Liv6;->q:[B

    .line 88
    .line 89
    const-class v0, Liv6;

    .line 90
    .line 91
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Liv6;->r:Ll15;

    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(Lur1;Ldi7;Lln5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liv6;->f:Lur1;

    .line 5
    .line 6
    iput-object p2, p0, Liv6;->a:Ldi7;

    .line 7
    .line 8
    iget-object p2, p1, Lur1;->c:Lxr1;

    .line 9
    .line 10
    iput-object p2, p0, Liv6;->b:Lxr1;

    .line 11
    .line 12
    iget-object p2, p1, Lur1;->d:Lla;

    .line 13
    .line 14
    iput-object p2, p0, Liv6;->d:Lla;

    .line 15
    .line 16
    iget-object p1, p1, Lur1;->e:Lla;

    .line 17
    .line 18
    iput-object p1, p0, Liv6;->e:Lla;

    .line 19
    .line 20
    iput-object p3, p0, Liv6;->c:Lln5;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    new-array p2, p2, [B

    .line 20
    .line 21
    fill-array-data p2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object p0, p0, Liv6;->a:Ldi7;

    .line 28
    .line 29
    iget-object p0, p0, Ldi7;->h:Llv1;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string p0, "KDF/Counter/HMACSHA256"

    .line 35
    .line 36
    sget-object p2, Ltf0;->a:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lx23;

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-interface {p0}, Lx23;->b()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lrf0;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance p3, Ley1;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p3, p1, p2}, Ley1;-><init>([B[B)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p3}, Lrf0;->b(Ley1;)V

    .line 66
    .line 67
    .line 68
    const/16 p1, 0x10

    .line 69
    .line 70
    new-array p1, p1, [B

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lrf0;->a([B)V

    .line 73
    .line 74
    .line 75
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 76
    .line 77
    invoke-direct {p0, p1, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p1, "Unknown DerivationFunction KDF/Counter/HMACSHA256"

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
    :try_end_1
    .catch Lh67; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :catch_0
    move-exception p0

    .line 90
    new-instance p1, Lgv6;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :catch_1
    move-exception p0

    .line 97
    sget-object p1, Liv6;->r:Ll15;

    .line 98
    .line 99
    const-string p2, "Unable to format suffix, error occur : "

    .line 100
    .line 101
    invoke-interface {p1, p2, p0}, Ll15;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return-object p0

    .line 106
    nop

    .line 107
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        -0x80t
    .end array-data
.end method

.method public final b(Lh80;)Ll80;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Liv6;->a:Ldi7;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, v1, Ldi7;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Liv6;->b:Lxr1;

    .line 24
    .line 25
    iget-object v2, p0, Lxr1;->a:[B

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    array-length v2, v2

    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    new-instance v1, Lyl5;

    .line 36
    .line 37
    invoke-direct {v1}, Lzl5;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lxr1;->a:[B

    .line 41
    .line 42
    array-length v2, p0

    .line 43
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v2, Ljw0;

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    sget-object v4, Lvw2;->b:Luw2;

    .line 51
    .line 52
    invoke-direct {v2, p0, v3, v4}, Low0;-><init>([BZLvw2;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "Expected to find the SPNEGO OID ("

    .line 56
    .line 57
    const-string v4, "Incorrect GSS-API ASN.1 token received, expected to find an [APPLICATION 0], not: "

    .line 58
    .line 59
    :try_start_0
    new-instance v5, Lp0;

    .line 60
    .line 61
    new-instance v6, Lg82;

    .line 62
    .line 63
    const/4 v7, 0x4

    .line 64
    invoke-direct {v6, v7}, Lnh4;-><init>(I)V

    .line 65
    .line 66
    .line 67
    new-instance v7, Lhw0;

    .line 68
    .line 69
    invoke-direct {v7, v2}, Lhw0;-><init>(Ljw0;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v6, v7}, Lp0;-><init>(Lg82;Lhw0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v5}, Lp0;->g()Lz0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lr2;

    .line 80
    .line 81
    iget-object v6, v2, Lz0;->a:Lm2;

    .line 82
    .line 83
    iget-object v6, v6, Lm2;->a:Ln2;

    .line 84
    .line 85
    sget-object v7, Ln2;->c:Ln2;

    .line 86
    .line 87
    if-ne v6, v7, :cond_1

    .line 88
    .line 89
    sget-object v4, Lm2;->m:Ll2;

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Lr2;->e(Lm2;)Lz0;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lw1;

    .line 96
    .line 97
    iget-object v2, v2, Lw1;->b:Ljava/util/ArrayList;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lz0;

    .line 105
    .line 106
    instance-of v6, v4, Lg1;

    .line 107
    .line 108
    if-eqz v6, :cond_0

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Lz0;

    .line 115
    .line 116
    invoke-virtual {v1, p0}, Ls51;->b(Lz0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .line 121
    .line 122
    iget-object v1, v1, Lzl5;->d:Ljava/util/ArrayList;

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    :try_start_3
    new-instance p1, Lfk7;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object p0, Lmr5;->a:Lg1;

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p0, "), not: "

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_1
    new-instance p0, Lfk7;

    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catchall_1
    move-exception p1

    .line 178
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 182
    :catch_0
    move-exception p0

    .line 183
    new-instance p1, Lfk7;

    .line 184
    .line 185
    const-string v0, "Could not read NegTokenInit from buffer"

    .line 186
    .line 187
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_2
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_5

    .line 205
    .line 206
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lv23;

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_4

    .line 217
    .line 218
    new-instance v2, Lg1;

    .line 219
    .line 220
    invoke-interface {v0}, Lv23;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-direct {v2, v3}, Lg1;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_3

    .line 232
    .line 233
    :cond_4
    invoke-interface {v0}, Lx23;->b()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ll80;

    .line 238
    .line 239
    invoke-interface {v0, p1}, Ll80;->b(Lh80;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_3

    .line 244
    .line 245
    return-object v0

    .line 246
    :cond_5
    new-instance p0, Lgv6;

    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v2, "Could not find a configured authenticator for mechtypes: "

    .line 251
    .line 252
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, " and authentication context: "

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0
.end method

.method public final c(Lhv6;)Lj87;
    .locals 8

    .line 1
    iget-object v3, p1, Lhv6;->d:Lh80;

    .line 2
    .line 3
    new-instance v0, Lj87;

    .line 4
    .line 5
    iget-object v1, p0, Liv6;->c:Lln5;

    .line 6
    .line 7
    iget-object v1, v1, Lln5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lur1;

    .line 10
    .line 11
    iget-object v2, v1, Lur1;->x:Ldi7;

    .line 12
    .line 13
    iget-object v4, v1, Lur1;->G:Lcv6;

    .line 14
    .line 15
    iget-object v5, v1, Lur1;->n:Lke;

    .line 16
    .line 17
    iget-object v6, v1, Lur1;->r:Ltf7;

    .line 18
    .line 19
    iget-object v7, v1, Lur1;->t:Ljw5;

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Lj87;-><init>(Lur1;Ldi7;Lh80;Lcv6;Lke;Ltf7;Ljw5;)V

    .line 22
    .line 23
    .line 24
    iget-wide v1, p1, Lhv6;->b:J

    .line 25
    .line 26
    iput-wide v1, v0, Lj87;->a:J

    .line 27
    .line 28
    iget-object p0, p0, Liv6;->b:Lxr1;

    .line 29
    .line 30
    iget-object p0, p0, Lxr1;->h:[B

    .line 31
    .line 32
    iget-object p1, v0, Lj87;->t:Ln87;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    array-length v1, p0

    .line 38
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iput-object p0, p1, Ln87;->g:[B

    .line 43
    .line 44
    return-object v0
.end method

.method public final d(Lhv6;[B)V
    .locals 2

    .line 1
    iget-object v0, p1, Lhv6;->a:Ll80;

    .line 2
    .line 3
    iget-object v1, p1, Lhv6;->d:Lh80;

    .line 4
    .line 5
    iget-object p0, p0, Liv6;->b:Lxr1;

    .line 6
    .line 7
    invoke-interface {v0, v1, p2, p0}, Ll80;->a(Lh80;[BLxr1;)Lkc;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p2, Lkc;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, [B

    .line 20
    .line 21
    iput-object p0, p1, Lhv6;->c:[B

    .line 22
    .line 23
    iget-object p0, p2, Lkc;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ls51;

    .line 26
    .line 27
    new-instance p2, Ljw0;

    .line 28
    .line 29
    invoke-direct {p2}, Low0;-><init>()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0, p2}, Ls51;->e(Ljw0;)V
    :try_end_0
    .catch Lfk7; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Low0;->c()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iput-object p0, p1, Lhv6;->e:[B

    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/io/IOException;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final e(Lhv6;)Lj87;
    .locals 14

    .line 1
    iget-object v0, p1, Lhv6;->e:[B

    .line 2
    .line 3
    new-instance v1, Lgu6;

    .line 4
    .line 5
    iget-object v9, p0, Liv6;->b:Lxr1;

    .line 6
    .line 7
    iget-object v2, v9, Lxr1;->b:Lru3;

    .line 8
    .line 9
    iget-object v2, v2, Lru3;->e:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lus6;

    .line 13
    .line 14
    iget-object v2, v9, Lxr1;->c:Le87;

    .line 15
    .line 16
    iget v2, v2, Le87;->f:I

    .line 17
    .line 18
    and-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Leu6;->c:Leu6;

    .line 23
    .line 24
    :goto_0
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v10, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-object v2, Leu6;->b:Leu6;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v11, v9, Lxr1;->e:Ljava/util/EnumSet;

    .line 34
    .line 35
    sget-object v4, Lit6;->c:Lit6;

    .line 36
    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    const/16 v2, 0x19

    .line 42
    .line 43
    invoke-direct/range {v1 .. v8}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v1, Lgu6;->e:Lus6;

    .line 47
    .line 48
    invoke-static {v10}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    long-to-int v2, v2

    .line 53
    int-to-byte v2, v2

    .line 54
    iput-byte v2, v1, Lgu6;->f:B

    .line 55
    .line 56
    invoke-static {v11}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    iput-wide v2, v1, Lgu6;->g:J

    .line 61
    .line 62
    iput-object v0, v1, Lgu6;->h:[B

    .line 63
    .line 64
    iget-object v0, v1, Lev6;->a:Ldv6;

    .line 65
    .line 66
    check-cast v0, Lut6;

    .line 67
    .line 68
    iget-wide v2, p1, Lhv6;->b:J

    .line 69
    .line 70
    iput-wide v2, v0, Lut6;->h:J

    .line 71
    .line 72
    iput-object v1, p1, Lhv6;->f:Lgu6;

    .line 73
    .line 74
    iget-object v0, p0, Liv6;->f:Lur1;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lur1;->m(Lrt6;)Lrt6;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lgu6;

    .line 81
    .line 82
    iput-object v1, p1, Lhv6;->g:Lgu6;

    .line 83
    .line 84
    iget-object v2, v1, Lev6;->a:Ldv6;

    .line 85
    .line 86
    check-cast v2, Lut6;

    .line 87
    .line 88
    iget-wide v3, v2, Lut6;->h:J

    .line 89
    .line 90
    iput-wide v3, p1, Lhv6;->b:J

    .line 91
    .line 92
    iget-object v5, v9, Lxr1;->b:Lru3;

    .line 93
    .line 94
    iget-object v5, v5, Lru3;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Lus6;

    .line 97
    .line 98
    iget-wide v6, v2, Lut6;->j:J

    .line 99
    .line 100
    const-wide v10, 0xc0000016L

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    cmp-long v8, v6, v10

    .line 106
    .line 107
    sget-object v10, Lus6;->n:Lus6;

    .line 108
    .line 109
    iget-object v11, p0, Liv6;->e:Lla;

    .line 110
    .line 111
    if-nez v8, :cond_3

    .line 112
    .line 113
    if-ne v5, v10, :cond_2

    .line 114
    .line 115
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v11, v0}, Lla;->c(Ljava/lang/Long;)Lj87;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Liv6;->c(Lhv6;)Lj87;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-wide v2, p1, Lhv6;->b:J

    .line 130
    .line 131
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, v11, Lla;->a:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 140
    .line 141
    .line 142
    :try_start_0
    iget-object v4, v11, Lla;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v4, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    move-object p0, v0

    .line 155
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_1
    :goto_2
    iget-object v0, v0, Lj87;->t:Ln87;

    .line 160
    .line 161
    iget-object v2, p1, Lhv6;->f:Lgu6;

    .line 162
    .line 163
    invoke-virtual {p0, p1, v0, v2}, Liv6;->f(Lhv6;Ln87;Lrt6;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p1, Lhv6;->g:Lgu6;

    .line 167
    .line 168
    invoke-virtual {p0, p1, v0, v2}, Liv6;->f(Lhv6;Ln87;Lrt6;)V

    .line 169
    .line 170
    .line 171
    :cond_2
    iget-object v0, p1, Lhv6;->d:Lh80;

    .line 172
    .line 173
    iget-object v0, v0, Lh80;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Ljava/lang/String;

    .line 176
    .line 177
    iget-object v2, p1, Lhv6;->a:Ll80;

    .line 178
    .line 179
    sget-object v3, Liv6;->r:Ll15;

    .line 180
    .line 181
    const-string v4, "More processing required for authentication of {} using {}"

    .line 182
    .line 183
    invoke-interface {v3, v0, v2, v4}, Ll15;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, v1, Lgu6;->h:[B

    .line 187
    .line 188
    invoke-virtual {p0, p1, v0}, Liv6;->d(Lhv6;[B)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p1}, Liv6;->e(Lhv6;)Lj87;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :cond_3
    const-wide/16 v12, 0x0

    .line 197
    .line 198
    cmp-long v6, v6, v12

    .line 199
    .line 200
    if-nez v6, :cond_10

    .line 201
    .line 202
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v11, v2}, Lla;->c(Ljava/lang/Long;)Lj87;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    if-ne v5, v10, :cond_4

    .line 211
    .line 212
    if-eqz v2, :cond_4

    .line 213
    .line 214
    iget-wide v3, v2, Lj87;->a:J

    .line 215
    .line 216
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v11, v3}, Lla;->f(Ljava/lang/Long;)V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_4
    invoke-virtual {p0, p1}, Liv6;->c(Lhv6;)Lj87;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    :goto_3
    iget-object v3, v2, Lj87;->t:Ln87;

    .line 229
    .line 230
    iget-object v4, v1, Lgu6;->h:[B

    .line 231
    .line 232
    invoke-virtual {p0, p1, v4}, Liv6;->d(Lhv6;[B)V

    .line 233
    .line 234
    .line 235
    iget-object v4, p1, Lhv6;->c:[B

    .line 236
    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 240
    .line 241
    iget-object v6, p1, Lhv6;->c:[B

    .line 242
    .line 243
    const-string v7, "HmacSHA256"

    .line 244
    .line 245
    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iput-object v4, v3, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 249
    .line 250
    :cond_5
    if-ne v5, v10, :cond_6

    .line 251
    .line 252
    iget-object v4, p1, Lhv6;->f:Lgu6;

    .line 253
    .line 254
    invoke-virtual {p0, p1, v3, v4}, Liv6;->f(Lhv6;Ln87;Lrt6;)V

    .line 255
    .line 256
    .line 257
    :cond_6
    iget-object v4, p0, Liv6;->a:Ldi7;

    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    iget-object v4, v0, Lur1;->c:Lxr1;

    .line 263
    .line 264
    iget-object v4, v4, Lxr1;->c:Le87;

    .line 265
    .line 266
    iget v4, v4, Le87;->f:I

    .line 267
    .line 268
    and-int/lit8 v4, v4, 0x2

    .line 269
    .line 270
    const/4 v6, 0x1

    .line 271
    const/4 v7, 0x0

    .line 272
    if-lez v4, :cond_7

    .line 273
    .line 274
    move v4, v6

    .line 275
    goto :goto_4

    .line 276
    :cond_7
    move v4, v7

    .line 277
    :goto_4
    iput-boolean v4, v3, Ln87;->a:Z

    .line 278
    .line 279
    iget-object v4, p1, Lhv6;->g:Lgu6;

    .line 280
    .line 281
    iget-object v4, v4, Lgu6;->i:Ljava/util/EnumSet;

    .line 282
    .line 283
    sget-object v8, Lfu6;->c:Lfu6;

    .line 284
    .line 285
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_8

    .line 290
    .line 291
    iput-boolean v7, v3, Ln87;->a:Z

    .line 292
    .line 293
    :cond_8
    iget-object v4, p1, Lhv6;->g:Lgu6;

    .line 294
    .line 295
    iget-object v4, v4, Lgu6;->i:Ljava/util/EnumSet;

    .line 296
    .line 297
    sget-object v11, Lfu6;->b:Lfu6;

    .line 298
    .line 299
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_a

    .line 304
    .line 305
    iget-boolean v12, v3, Ln87;->a:Z

    .line 306
    .line 307
    if-nez v12, :cond_9

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_9
    new-instance p0, Lct6;

    .line 311
    .line 312
    const-string p1, "Cannot require message signing when authenticating with a guest account"

    .line 313
    .line 314
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw p0

    .line 318
    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    .line 319
    .line 320
    iput-boolean v7, v3, Ln87;->a:Z

    .line 321
    .line 322
    :cond_b
    iget-object v4, v0, Lur1;->c:Lxr1;

    .line 323
    .line 324
    iget-object v4, v4, Lxr1;->b:Lru3;

    .line 325
    .line 326
    iget-object v4, v4, Lru3;->e:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v4, Lus6;

    .line 329
    .line 330
    invoke-virtual {v4}, Lus6;->a()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_c

    .line 335
    .line 336
    iget-object v0, v0, Lur1;->c:Lxr1;

    .line 337
    .line 338
    invoke-virtual {v0}, Lxr1;->b()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_c

    .line 343
    .line 344
    iget-object p1, p1, Lhv6;->g:Lgu6;

    .line 345
    .line 346
    iget-object p1, p1, Lgu6;->i:Ljava/util/EnumSet;

    .line 347
    .line 348
    sget-object v0, Lfu6;->d:Lfu6;

    .line 349
    .line 350
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    if-eqz p1, :cond_c

    .line 355
    .line 356
    iput-boolean v6, v3, Ln87;->b:Z

    .line 357
    .line 358
    iput-boolean v7, v3, Ln87;->a:Z

    .line 359
    .line 360
    :cond_c
    invoke-virtual {v5}, Lus6;->a()Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-eqz p1, :cond_f

    .line 365
    .line 366
    iget-object p1, v1, Lgu6;->i:Ljava/util/EnumSet;

    .line 367
    .line 368
    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-nez p1, :cond_f

    .line 373
    .line 374
    iget-object p1, v1, Lgu6;->i:Ljava/util/EnumSet;

    .line 375
    .line 376
    invoke-interface {p1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-nez p1, :cond_f

    .line 381
    .line 382
    iget-object p1, v3, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 383
    .line 384
    const-string v0, "AesCmac"

    .line 385
    .line 386
    if-ne v5, v10, :cond_d

    .line 387
    .line 388
    sget-object v1, Liv6;->n:[B

    .line 389
    .line 390
    iget-object v4, v3, Ln87;->g:[B

    .line 391
    .line 392
    invoke-virtual {p0, p1, v1, v4, v0}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    iput-object p1, v3, Ln87;->d:Ljavax/crypto/spec/SecretKeySpec;

    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_d
    sget-object v1, Liv6;->m:[B

    .line 400
    .line 401
    sget-object v4, Liv6;->l:[B

    .line 402
    .line 403
    invoke-virtual {p0, p1, v1, v4, v0}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iput-object p1, v3, Ln87;->d:Ljavax/crypto/spec/SecretKeySpec;

    .line 408
    .line 409
    :goto_6
    invoke-virtual {v9}, Lxr1;->b()Z

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    if-eqz p1, :cond_f

    .line 414
    .line 415
    iget-object p1, v9, Lxr1;->i:Lwu6;

    .line 416
    .line 417
    iget-object p1, p1, Lwu6;->b:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v0, v3, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 420
    .line 421
    if-ne v5, v10, :cond_e

    .line 422
    .line 423
    sget-object v1, Liv6;->g:[B

    .line 424
    .line 425
    iget-object v4, v3, Ln87;->g:[B

    .line 426
    .line 427
    invoke-virtual {p0, v0, v1, v4, p1}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    iput-object v0, v3, Ln87;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 432
    .line 433
    iget-object v0, v3, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 434
    .line 435
    sget-object v1, Liv6;->h:[B

    .line 436
    .line 437
    iget-object v4, v3, Ln87;->g:[B

    .line 438
    .line 439
    invoke-virtual {p0, v0, v1, v4, p1}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    iput-object v0, v3, Ln87;->e:Ljavax/crypto/spec/SecretKeySpec;

    .line 444
    .line 445
    iget-object v0, v3, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 446
    .line 447
    sget-object v1, Liv6;->q:[B

    .line 448
    .line 449
    iget-object v3, v3, Ln87;->g:[B

    .line 450
    .line 451
    invoke-virtual {p0, v0, v1, v3, p1}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 452
    .line 453
    .line 454
    return-object v2

    .line 455
    :cond_e
    sget-object v1, Liv6;->j:[B

    .line 456
    .line 457
    sget-object v4, Liv6;->i:[B

    .line 458
    .line 459
    invoke-virtual {p0, v0, v4, v1, p1}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    iput-object v0, v3, Ln87;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 464
    .line 465
    iget-object v0, v3, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 466
    .line 467
    sget-object v1, Liv6;->k:[B

    .line 468
    .line 469
    invoke-virtual {p0, v0, v4, v1, p1}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    iput-object v0, v3, Ln87;->e:Ljavax/crypto/spec/SecretKeySpec;

    .line 474
    .line 475
    iget-object v0, v3, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 476
    .line 477
    sget-object v1, Liv6;->p:[B

    .line 478
    .line 479
    sget-object v3, Liv6;->o:[B

    .line 480
    .line 481
    invoke-virtual {p0, v0, v1, v3, p1}, Liv6;->a(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 482
    .line 483
    .line 484
    :cond_f
    return-object v2

    .line 485
    :cond_10
    new-instance p0, Lyu6;

    .line 486
    .line 487
    iget-object v0, p1, Lhv6;->d:Lh80;

    .line 488
    .line 489
    iget-object v0, v0, Lh80;->b:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v0, Ljava/lang/String;

    .line 492
    .line 493
    iget-object p1, p1, Lhv6;->a:Ll80;

    .line 494
    .line 495
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    const-string v0, "Authentication failed for \'%s\' using %s"

    .line 500
    .line 501
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-direct {p0, v2, p1}, Lyu6;-><init>(Lut6;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw p0
.end method

.method public final f(Lhv6;Ln87;Lrt6;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lhv6;->h:Lqg0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Liv6;->f:Lur1;

    .line 6
    .line 7
    iget-object v0, v0, Lur1;->c:Lxr1;

    .line 8
    .line 9
    iget-object v0, v0, Lxr1;->g:Lxu6;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "SHA-512"

    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Liv6;->a:Ldi7;

    .line 17
    .line 18
    iget-object p0, p0, Ldi7;->h:Llv1;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p0, Lqg0;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lqg0;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p0, p1, Lhv6;->h:Lqg0;
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Lgv6;

    .line 33
    .line 34
    const-string p2, "Cannot get the message digest for SHA-512"

    .line 35
    .line 36
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_0
    :goto_0
    iget-object p0, p1, Lhv6;->h:Lqg0;

    .line 41
    .line 42
    iget-object p1, p2, Ln87;->g:[B

    .line 43
    .line 44
    invoke-static {p3}, Lvm4;->p(Lev6;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iget-object v0, p0, Lqg0;->a:Lhl2;

    .line 49
    .line 50
    invoke-interface {v0}, Lhl2;->reset()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lqg0;->b([B)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lqg0;->a:Lhl2;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    array-length v1, p3

    .line 60
    invoke-interface {p1, p3, v0, v1}, Lhl2;->update([BII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lqg0;->a()[B

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    array-length p1, p0

    .line 68
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iput-object p0, p2, Ln87;->g:[B

    .line 73
    .line 74
    return-void
.end method
