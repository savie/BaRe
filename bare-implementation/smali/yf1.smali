.class public final Lyf1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Lwu2;
.implements Lw23;
.implements Lls5;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lv49;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lmr9;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 39
    iput p1, p0, Lyf1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 33
    iput p1, p0, Lyf1;->a:I

    iput-object p2, p0, Lyf1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lyf1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;Lny1;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lyf1;->a:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lyf1;->b:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lyf1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;)V
    .locals 2

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    iput v0, p0, Lyf1;->a:I

    .line 4
    .line 5
    new-instance v0, Lzg8;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lzg8;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :try_start_0
    new-instance v1, Lbp0;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lbp0;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lrm5; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v1, p0, Lyf1;->c:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 34
    iput p3, p0, Lyf1;->a:I

    iput-object p1, p0, Lyf1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lyf1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lv49;Lu50;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lyf1;->a:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lyf1;->b:Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lly8;->h(Ljava/lang/Object;)V

    iput-object p2, p0, Lyf1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyo1;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lyf1;->a:I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyf1;->b:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lyf1;->c:Ljava/lang/Object;

    return-void
.end method

.method public static h(Landroid/content/Context;)Lyf1;
    .locals 5

    .line 1
    const-string v0, "generatefid.lock"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    const-string v0, "rw"

    .line 16
    .line 17
    invoke-direct {p0, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_6

    .line 24
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_3

    .line 28
    :try_start_2
    new-instance v2, Lyf1;

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-direct {v2, v3, p0, v0}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :catch_0
    move-exception v2

    .line 36
    goto :goto_2

    .line 37
    :catch_1
    move-exception v2

    .line 38
    goto :goto_2

    .line 39
    :catch_2
    move-exception v2

    .line 40
    goto :goto_2

    .line 41
    :catch_3
    move-exception v2

    .line 42
    :goto_0
    move-object v0, v1

    .line 43
    goto :goto_2

    .line 44
    :catch_4
    move-exception v2

    .line 45
    goto :goto_0

    .line 46
    :catch_5
    move-exception v2

    .line 47
    goto :goto_0

    .line 48
    :catch_6
    move-exception v2

    .line 49
    :goto_1
    move-object p0, v1

    .line 50
    move-object v0, p0

    .line 51
    goto :goto_2

    .line 52
    :catch_7
    move-exception v2

    .line 53
    goto :goto_1

    .line 54
    :catch_8
    move-exception v2

    .line 55
    goto :goto_1

    .line 56
    :goto_2
    const-string v3, "CrossProcessLock"

    .line 57
    .line 58
    const-string v4, "encountered error while creating and acquiring the lock, ignoring"

    .line 59
    .line 60
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 66
    .line 67
    .line 68
    :catch_9
    :cond_0
    if-eqz p0, :cond_1

    .line 69
    .line 70
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 71
    .line 72
    .line 73
    :catch_a
    :cond_1
    return-object v1
.end method

.method public static s(Lp1a;)Lyf1;
    .locals 5

    .line 1
    sget-object v0, Lpr9;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x12

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    if-ne v0, v4, :cond_0

    .line 20
    .line 21
    new-instance p0, Lyf1;

    .line 22
    .line 23
    new-instance v0, Lia9;

    .line 24
    .line 25
    const-string v1, "HmacSha512"

    .line 26
    .line 27
    invoke-direct {v0, v1, v4}, Lia9;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lp1a;->c:Lp1a;

    .line 31
    .line 32
    invoke-direct {p0, v0, v1, v3, v2}, Lyf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 37
    .line 38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v1, "invalid curve type: "

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    new-instance p0, Lyf1;

    .line 53
    .line 54
    new-instance v0, Lia9;

    .line 55
    .line 56
    const-string v1, "HmacSha384"

    .line 57
    .line 58
    invoke-direct {v0, v1, v4}, Lia9;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lp1a;->b:Lp1a;

    .line 62
    .line 63
    invoke-direct {p0, v0, v1, v3, v2}, Lyf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_2
    new-instance p0, Lyf1;

    .line 68
    .line 69
    new-instance v0, Lia9;

    .line 70
    .line 71
    const-string v1, "HmacSha256"

    .line 72
    .line 73
    invoke-direct {v0, v1, v4}, Lia9;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lp1a;->a:Lp1a;

    .line 77
    .line 78
    invoke-direct {p0, v0, v1, v3, v2}, Lyf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 79
    .line 80
    .line 81
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv49;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lv49;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lu50;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "RemoteException when sending failure result."

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lu50;->b(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b([BLla;)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp1a;

    .line 4
    .line 5
    iget-object v1, p2, Lla;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ld2a;

    .line 8
    .line 9
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Lzm5;->M(Lp1a;)Ljava/security/spec/ECParameterSpec;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    .line 22
    .line 23
    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Ls1a;->f:Ls1a;

    .line 27
    .line 28
    iget-object v2, v1, Ls1a;->a:Lt1a;

    .line 29
    .line 30
    const-string v4, "EC"

    .line 31
    .line 32
    invoke-interface {v2, v4}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/security/KeyFactory;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/security/interfaces/ECPrivateKey;

    .line 43
    .line 44
    invoke-static {v0}, Lzm5;->M(Lp1a;)Ljava/security/spec/ECParameterSpec;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget-object v5, Lr1a;->a:Lr1a;

    .line 53
    .line 54
    invoke-static {v3, v5, p1}, Lzm5;->N(Ljava/security/spec/EllipticCurve;Lr1a;[B)Ljava/security/spec/ECPoint;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    .line 59
    .line 60
    invoke-direct {v5, v3, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v1, Ls1a;->a:Lt1a;

    .line 64
    .line 65
    invoke-interface {v0, v4}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/security/KeyFactory;

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 76
    .line 77
    invoke-static {v2, v0}, Lzm5;->P(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object p2, p2, Lla;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p2, Ld2a;

    .line 84
    .line 85
    invoke-virtual {p2}, Ld2a;->b()[B

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    filled-new-array {p1, p2}, [[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lz85;->N([[B)[B

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lyf1;->zza()[B

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    sget-object v1, Lor9;->m:[B

    .line 102
    .line 103
    filled-new-array {v1, p2}, [[B

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Lz85;->N([[B)[B

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Lia9;

    .line 114
    .line 115
    iget-object v1, p0, Lia9;->b:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    sget-object v2, Lor9;->o:[B

    .line 126
    .line 127
    sget-object v3, Lau9;->a:Ljava/nio/charset/Charset;

    .line 128
    .line 129
    const-string v4, "eae_prk"

    .line 130
    .line 131
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    filled-new-array {v2, p2, v4, v0}, [[B

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lz85;->N([[B)[B

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0, v0, v4}, Lia9;->b([B[B)[B

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/4 v4, 0x2

    .line 149
    invoke-static {v4, v1}, Lor9;->b(II)[B

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const-string v5, "shared_secret"

    .line 154
    .line 155
    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    filled-new-array {v4, v2, p2, v3, p1}, [[B

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Lz85;->N([[B)[B

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p0, v1, v0, p1}, Lia9;->a(I[B[B)[B

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0
.end method

.method public c(Lc69;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv49;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lv49;->c(Lc69;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lu50;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "RemoteException when sending get recaptcha config response."

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lu50;->b(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public d(Ljava/lang/CharSequence;IILad8;)Z
    .locals 3

    .line 1
    iget v0, p4, Lad8;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lre8;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Lre8;

    .line 16
    .line 17
    instance-of v2, p1, Landroid/text/Spannable;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    check-cast p1, Landroid/text/Spannable;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    .line 25
    .line 26
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v2

    .line 30
    :goto_0
    invoke-direct {v0, p1}, Lre8;-><init>(Landroid/text/Spannable;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lyf1;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lfo8;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p1, Lbd8;

    .line 43
    .line 44
    invoke-direct {p1, p4}, Lbd8;-><init>(Lad8;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lre8;

    .line 50
    .line 51
    const/16 p4, 0x21

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lre8;->setSpan(Ljava/lang/Object;III)V

    .line 54
    .line 55
    .line 56
    return v1
.end method

.method public e(Lb69;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv49;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lv49;->e(Lb69;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lu50;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "RemoteException when sending token result."

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lu50;->b(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public f(Lwc9;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv49;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lv49;->f(Lwc9;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lu50;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "RemoteException when sending failure result for mfa"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lu50;->b(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public g(Lbs2;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv49;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lv49;->g(Lbs2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lu50;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "RemoteException when sending failure result with credential"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lu50;->b(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lyf1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lca6;

    .line 9
    .line 10
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lra7;

    .line 15
    .line 16
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lca6;

    .line 19
    .line 20
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lra7;

    .line 25
    .line 26
    new-instance v1, Ll97;

    .line 27
    .line 28
    invoke-direct {v1, v0, p0}, Ll97;-><init>(Lra7;Lra7;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lid4;

    .line 35
    .line 36
    iget-object v0, v0, Lid4;->a:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/content/Context;

    .line 39
    .line 40
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lca6;

    .line 43
    .line 44
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lox1;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object v1, Lq34;->e:Lq34;

    .line 57
    .line 58
    new-instance v2, Lnh;

    .line 59
    .line 60
    new-instance v3, Lsh;

    .line 61
    .line 62
    const/4 v4, 0x7

    .line 63
    invoke-direct {v3, v4}, Lsh;-><init>(I)V

    .line 64
    .line 65
    .line 66
    const/16 v4, 0xd

    .line 67
    .line 68
    invoke-direct {v2, v3, v4}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Ll73;->c(Lox1;)Ldv1;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance v3, Ll51;

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-direct {v3, v0, v4}, Ll51;-><init>(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2, p0, v3}, Lge;->r(La87;Lnh;Ldv1;Lbt3;)Lic2;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getResult()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lre8;

    .line 4
    .line 5
    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lyf1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lb69;Lx59;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv49;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lv49;->i(Lb69;Lx59;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lu50;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    new-array p2, p2, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v0, "RemoteException when sending get token and account info user response"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, p2}, Lu50;->b(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public j(Lcom/google/android/gms/common/api/Status;Lxz5;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv49;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lv49;->j(Lcom/google/android/gms/common/api/Status;Lxz5;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lu50;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    new-array p2, p2, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v0, "RemoteException when sending failure result."

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, p2}, Lu50;->b(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll75;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lo64;

    .line 20
    .line 21
    invoke-virtual {v1}, Lq64;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, v1, Lq64;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ll75;->i0(Ljava/lang/String;)Lix7;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Lyf1;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Lbs2;

    .line 39
    .line 40
    invoke-virtual {v2, v3, v0, v1}, Lix7;->a(Lbs2;Lyc9;Lq64;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, v1, Lo64;->f:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_1
    invoke-virtual {p0, v1}, Lyf1;->k(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public l(Lm61;Lgz0;)Lqn5;
    .locals 2

    .line 1
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvq;

    .line 4
    .line 5
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lgy5;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lgy5;->d(Lm61;)Lgy5;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v1, v0, Lvq;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lnp1;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lnp1;->k(Lgy5;)Lqn5;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-virtual {p2, p1}, Lgz0;->a(Lm61;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lvq;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lnp1;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lnp1;->g(Lgy5;)Lnp1;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-object p2, p2, Lgz0;->a:Lsb4;

    .line 42
    .line 43
    iget-object p2, p2, Lsb4;->a:Lqn5;

    .line 44
    .line 45
    invoke-interface {p2, p1}, Lqn5;->m(Lm61;)Lqn5;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lnp1;->e(Lqn5;)Lqn5;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_1
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public m(Lqn5;)Lqn5;
    .locals 4

    .line 1
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvq;

    .line 4
    .line 5
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lgy5;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lqv2;->e:Lqv2;

    .line 13
    .line 14
    iget-object v2, v0, Lvq;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lnp1;

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Lnp1;->k(Lgy5;)Lqn5;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Lqn5;->Z()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lhk5;

    .line 45
    .line 46
    iget-object v0, p1, Lhk5;->a:Lm61;

    .line 47
    .line 48
    iget-object p1, p1, Lhk5;->b:Lqn5;

    .line 49
    .line 50
    invoke-interface {v1, v0, p1}, Lqn5;->O(Lm61;Lqn5;)Lqn5;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-object v1

    .line 56
    :cond_1
    iget-object v0, v0, Lvq;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lnp1;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Lnp1;->g(Lgy5;)Lnp1;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lhk5;

    .line 79
    .line 80
    new-instance v2, Lgy5;

    .line 81
    .line 82
    iget-object v3, v0, Lhk5;->a:Lm61;

    .line 83
    .line 84
    filled-new-array {v3}, [Lm61;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {v2, v3}, Lgy5;-><init>([Lm61;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lnp1;->g(Lgy5;)Lnp1;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, v0, Lhk5;->b:Lqn5;

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Lnp1;->e(Lqn5;)Lqn5;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v0, v0, Lhk5;->a:Lm61;

    .line 102
    .line 103
    invoke-interface {v1, v0, v2}, Lqn5;->O(Lm61;Lqn5;)Lqn5;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lnp1;->a:Lua4;

    .line 114
    .line 115
    iget-object v0, p0, Lua4;->a:Ljava/lang/Object;

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    check-cast v0, Lqn5;

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lhk5;

    .line 136
    .line 137
    new-instance v2, Lhk5;

    .line 138
    .line 139
    iget-object v3, v0, Lhk5;->a:Lm61;

    .line 140
    .line 141
    iget-object v0, v0, Lhk5;->b:Lqn5;

    .line 142
    .line 143
    invoke-direct {v2, v3, v0}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lua4;

    .line 173
    .line 174
    iget-object v3, v2, Lua4;->a:Ljava/lang/Object;

    .line 175
    .line 176
    if-eqz v3, :cond_4

    .line 177
    .line 178
    new-instance v3, Lhk5;

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lm61;

    .line 185
    .line 186
    iget-object v2, v2, Lua4;->a:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v2, Lqn5;

    .line 189
    .line 190
    invoke-direct {v3, v0, v2}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_6

    .line 206
    .line 207
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lhk5;

    .line 212
    .line 213
    iget-object v0, p1, Lhk5;->a:Lm61;

    .line 214
    .line 215
    iget-object p1, p1, Lhk5;->b:Lqn5;

    .line 216
    .line 217
    invoke-interface {v1, v0, p1}, Lqn5;->O(Lm61;Lqn5;)Lqn5;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    goto :goto_4

    .line 222
    :cond_6
    return-object v1
.end method

.method public n(Landroid/view/View;Ltv8;)Ltv8;
    .locals 3

    .line 1
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lum8;

    .line 4
    .line 5
    new-instance v1, Lvm8;

    .line 6
    .line 7
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lvm8;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lvm8;->a:I

    .line 15
    .line 16
    iput v2, v1, Lvm8;->a:I

    .line 17
    .line 18
    iget v2, p0, Lvm8;->b:I

    .line 19
    .line 20
    iput v2, v1, Lvm8;->b:I

    .line 21
    .line 22
    iget v2, p0, Lvm8;->c:I

    .line 23
    .line 24
    iput v2, v1, Lvm8;->c:I

    .line 25
    .line 26
    iget p0, p0, Lvm8;->d:I

    .line 27
    .line 28
    iput p0, v1, Lvm8;->d:I

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, v1}, Lum8;->o(Landroid/view/View;Ltv8;Lvm8;)Ltv8;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public o(Lgy5;Lqn5;Lqn5;)Lqn5;
    .locals 2

    .line 1
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvq;

    .line 4
    .line 5
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lgy5;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 20
    :goto_1
    const-string v1, "Either existingEventSnap or existingServerSnap must exist"

    .line 21
    .line 22
    invoke-static {v1, p2}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lgy5;->e(Lgy5;)Lgy5;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p2, v0, Lvq;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Lnp1;

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Lnp1;->k(Lgy5;)Lqn5;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :cond_2
    iget-object p2, v0, Lvq;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lnp1;

    .line 44
    .line 45
    invoke-virtual {p2, p0}, Lnp1;->g(Lgy5;)Lnp1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p2, p0, Lnp1;->a:Lua4;

    .line 50
    .line 51
    invoke-virtual {p2}, Lua4;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    invoke-interface {p3, p1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3
    invoke-interface {p3, p1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lnp1;->e(Lqn5;)Lqn5;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lyf1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lw00;

    .line 4
    .line 5
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ljava/util/Map;

    .line 8
    .line 9
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lca3;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    iget-object p0, p0, Lca3;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v1, "Error creating marker: "

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "FirebaseCrashlytics"

    .line 33
    .line 34
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/channels/FileLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/nio/channels/FileChannel;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "CrossProcessLock"

    .line 18
    .line 19
    const-string v1, "encountered error while releasing, ignoring"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public r(Lgy5;)Lqn5;
    .locals 1

    .line 1
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvq;

    .line 4
    .line 5
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lgy5;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lgy5;->e(Lgy5;)Lgy5;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p1, v0, Lvq;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lnp1;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lnp1;->k(Lgy5;)Lqn5;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public t()Lot9;
    .locals 3

    .line 1
    new-instance v0, Lot9;

    .line 2
    .line 3
    iget-object v1, p0, Lyf1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, p0, v2}, Lot9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 213
    check-cast p1, Ljava/lang/Boolean;

    .line 214
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    check-cast v0, Lsy1;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "FirebaseCrashlytics"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const/4 p0, 0x2

    .line 215
    invoke-static {v2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 216
    const-string p0, "Deleting cached crash reports..."

    invoke-static {v2, p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_0
    iget-object p0, v0, Lsy1;->g:Lca3;

    sget-object p1, Lsy1;->s:Lpy1;

    .line 218
    iget-object p0, p0, Lca3;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    .line 219
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 220
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 222
    :cond_1
    iget-object p0, v0, Lsy1;->m:Lca3;

    .line 223
    iget-object p0, p0, Lca3;->b:Ljava/lang/Object;

    check-cast p0, Lk02;

    .line 224
    iget-object p0, p0, Lk02;->b:Lca3;

    .line 225
    iget-object p1, p0, Lca3;->e:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-static {p1}, Lk02;->a(Ljava/util/List;)V

    .line 228
    iget-object p1, p0, Lca3;->f:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lk02;->a(Ljava/util/List;)V

    .line 230
    iget-object p0, p0, Lca3;->k:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 231
    invoke-static {p0}, Lk02;->a(Ljava/util/List;)V

    .line 232
    iget-object p0, v0, Lsy1;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 233
    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x3

    .line 234
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    const-string v1, "Sending cached crash reports..."

    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 237
    iget-object v1, v0, Lsy1;->b:Lka2;

    if-eqz p1, :cond_4

    .line 238
    iget-object p1, v1, Lka2;->h:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 239
    invoke-virtual {p1, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lyf1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    .line 241
    iget-object v0, v0, Lsy1;->e:Ls02;

    .line 242
    iget-object v0, v0, Ls02;->a:Ljava/lang/Object;

    check-cast v0, Lo02;

    new-instance v1, Lzq8;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 243
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 244
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    const-string p0, "An invalid data collection token was used."

    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    return-object v3
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lna9;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lc69;

    .line 36
    .line 37
    iget-object v0, p1, Lc69;->a:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_1
    new-instance v1, Lgl9;

    .line 50
    .line 51
    const/16 v2, 0x2f

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lgl9;-><init>(C)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lfu;

    .line 57
    .line 58
    new-instance v3, Lnh;

    .line 59
    .line 60
    const/16 v4, 0x18

    .line 61
    .line 62
    invoke-direct {v3, v4}, Lnh;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v3, Lnh;->b:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-direct {v2, v3}, Lfu;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lfu;->j(Ljava/lang/String;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x4

    .line 79
    if-eq v2, v3, :cond_2

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 v2, 0x3

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    new-instance p0, Ljava/lang/Exception;

    .line 97
    .line 98
    const-string p1, "Invalid siteKey format "

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_3
    const-string v0, "RecaptchaHandler"

    .line 113
    .line 114
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    const-string v0, "RecaptchaHandler"

    .line 121
    .line 122
    iget-object v2, p0, Lyf1;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v2, Ljava/lang/String;

    .line 125
    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v4, "Successfully obtained site key for tenant "

    .line 129
    .line 130
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lyo1;

    .line 146
    .line 147
    iget-object v2, v0, Lyo1;->f:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Lfa9;

    .line 150
    .line 151
    iget-object v0, v0, Lyo1;->d:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroid/app/Application;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Lcom/google/android/recaptcha/Recaptcha;->fetchTaskClient(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v1, p0, Lyf1;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lyo1;

    .line 171
    .line 172
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p0, Ljava/lang/String;

    .line 175
    .line 176
    iget-object v2, v1, Lyo1;->a:Ljava/lang/Object;

    .line 177
    .line 178
    monitor-enter v2

    .line 179
    :try_start_0
    iput-object p1, v1, Lyo1;->c:Ljava/lang/Object;

    .line 180
    .line 181
    iget-object p1, v1, Lyo1;->b:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    monitor-exit v2

    .line 189
    return-object v0

    .line 190
    :catchall_0
    move-exception p0

    .line 191
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    throw p0

    .line 193
    :cond_5
    :goto_1
    new-instance p1, Lna9;

    .line 194
    .line 195
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p0, Ljava/lang/String;

    .line 198
    .line 199
    const-string v0, "No Recaptcha Enterprise siteKey configured for tenant/project "

    .line 200
    .line 201
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0
.end method

.method public u(Ljava/lang/Enum;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public zza()[B
    .locals 1

    .line 1
    sget-object v0, Lpr9;->a:[I

    .line 2
    .line 3
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lp1a;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lor9;->e:[B

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "Could not determine HPKE KEM ID"

    .line 26
    .line 27
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lor9;->d:[B

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lor9;->c:[B

    .line 36
    .line 37
    return-object p0
.end method
