.class public Lus2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcj8;
.implements La87;
.implements Lam6;
.implements Lkx0;
.implements Lgm2;
.implements Lz23;
.implements Ltf7;
.implements Lkw5;
.implements Lzm7;
.implements Lgk8;


# static fields
.field public static final b:Lus2;

.field public static final c:Lus2;

.field public static final d:Lus2;

.field public static final e:Lus2;

.field public static final f:Lus2;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lus2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lus2;->b:Lus2;

    .line 8
    .line 9
    new-instance v0, Lus2;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lus2;->c:Lus2;

    .line 16
    .line 17
    new-instance v0, Lus2;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lus2;->d:Lus2;

    .line 24
    .line 25
    new-instance v0, Lus2;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lus2;->e:Lus2;

    .line 32
    .line 33
    new-instance v0, Lus2;

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lus2;->f:Lus2;

    .line 40
    .line 41
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lus2;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static B()Lty3;
    .locals 7

    .line 1
    const-string v0, "_androidx_security_master_key_"

    .line 2
    .line 3
    const-string v1, "AndroidKeyStore"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 11
    .line 12
    .line 13
    sget-object v3, Lty3;->c:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    const-string v4, "AES"

    .line 23
    .line 24
    const-string v5, "AndroidKeyStore"

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 31
    .line 32
    const/4 v6, 0x3

    .line 33
    invoke-direct {v5, v0, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const/16 v6, 0x100

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v6, "GCM"

    .line 43
    .line 44
    filled-new-array {v6}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "NoPadding"

    .line 53
    .line 54
    filled-new-array {v6}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    :goto_0
    monitor-exit v3

    .line 79
    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    check-cast v0, Ljavax/crypto/SecretKey;

    .line 87
    .line 88
    new-instance v1, Lty3;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lty3;-><init>(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const/16 v0, 0xa

    .line 94
    .line 95
    new-array v0, v0, [B

    .line 96
    .line 97
    new-instance v3, Ljava/security/SecureRandom;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Lrs9;->c:[B

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {v1, v0, v3}, Lty3;->e([B[B)[B

    .line 108
    .line 109
    .line 110
    move-result-object v4
    :try_end_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    invoke-static {}, Lus2;->v()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0, v3}, Lty3;->e([B[B)[B

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    invoke-static {}, Lus2;->v()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0, v3}, Lty3;->e([B[B)[B

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :goto_1
    invoke-virtual {v1, v4, v3}, Lty3;->c([B[B)[B

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_1
    const-string v0, "Android Keystore AES-GCM self-test failed"

    .line 139
    .line 140
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v2

    .line 144
    :goto_2
    monitor-exit v3

    .line 145
    throw v0
.end method

.method public static C(JJLjava/lang/String;)J
    .locals 2

    .line 1
    add-long v0, p0, p2

    .line 2
    .line 3
    xor-long/2addr p0, v0

    .line 4
    xor-long/2addr p2, v0

    .line 5
    and-long/2addr p0, p2

    .line 6
    const-wide/16 p2, 0x0

    .line 7
    .line 8
    cmp-long p0, p0, p2

    .line 9
    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    const-string p0, "Integer overflow while computing "

    .line 14
    .line 15
    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-static {p0, p1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-wide p2
.end method

.method public static D(Lk28;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 13
    .line 14
    invoke-static {p0}, Lrs9;->u(Lk28;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "labels_activity_mode"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static E(Lk28;I[Ljava/lang/String;ZI)V
    .locals 2

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x10

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    :cond_0
    sget-object p4, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 9
    .line 10
    invoke-virtual {p4}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 17
    .line 18
    invoke-static {p0}, Lrs9;->u(Lk28;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    sget-object p4, Llr4;->a:Llr4;

    .line 23
    .line 24
    invoke-static {}, Llr4;->g()Z

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    if-nez p4, :cond_2

    .line 29
    .line 30
    invoke-static {p0}, Lus2;->D(Lk28;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance p4, Landroid/content/Intent;

    .line 35
    .line 36
    const-class v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 37
    .line 38
    invoke-direct {p4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "labels_activity_mode"

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    const-string v0, "labels_extra_filtered_ids"

    .line 49
    .line 50
    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string p4, "select_mode_replace_existing_labels"

    .line 55
    .line 56
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2, p1}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static final k(IJ)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    int-to-long v0, p0

    .line 9
    add-long v2, p1, v0

    .line 10
    .line 11
    const-wide/16 v4, 0x1

    .line 12
    .line 13
    sub-long/2addr v2, v4

    .line 14
    div-long/2addr v2, v0

    .line 15
    const-wide/16 v0, 0x10

    .line 16
    .line 17
    mul-long/2addr v2, v0

    .line 18
    const-string p0, "AEAD encrypted payload size"

    .line 19
    .line 20
    invoke-static {p1, p2, v2, v3, p0}, Lus2;->C(JJLjava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method

.method public static final n(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    const-string v0, "Malformed UTF-8 in SBA "

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, p1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public static final q(Lcy0;Ll27;)I
    .locals 1

    .line 1
    sget-object v0, Loy6;->j:Loy6;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    :goto_0
    sget-object v0, Lt07;->a:[I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aget p1, v0, p1

    .line 19
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lq;->j()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :pswitch_0
    or-int/lit8 p0, p0, 0x14

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_1
    or-int/lit8 p0, p0, 0x14

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_2
    or-int/lit8 p0, p0, 0x14

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_3
    or-int/lit8 p0, p0, 0xc

    .line 38
    .line 39
    :pswitch_4
    return p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final s(Ley5;)Z
    .locals 5

    .line 1
    sget-object v0, Lvl6;->e:Ley5;

    .line 2
    .line 3
    iget-object v0, p0, Ley5;->a:Lhy0;

    .line 4
    .line 5
    sget-object v1, Lc;->a:Lhy0;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lhy0;->k(Lhy0;Lhy0;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Ley5;->a:Lhy0;

    .line 16
    .line 17
    sget-object v3, Lc;->b:Lhy0;

    .line 18
    .line 19
    invoke-static {v1, v3}, Lhy0;->k(Lhy0;Lhy0;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    add-int/2addr v1, v3

    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-static {v0, v1, p0, v4}, Lhy0;->s(Lhy0;III)Lhy0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Ley5;->c()Ljava/lang/Character;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lhy0;->d()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-ne p0, v4, :cond_2

    .line 45
    .line 46
    sget-object v0, Lhy0;->d:Lhy0;

    .line 47
    .line 48
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lhy0;->w()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, ".class"

    .line 53
    .line 54
    invoke-static {p0, v0, v3}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    xor-int/2addr p0, v3

    .line 59
    return p0
.end method

.method public static final t(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    sget-object v0, Lfh;->g:Lfh;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit16 v1, v0, 0xff

    .line 8
    .line 9
    and-int/lit16 v2, v0, 0x80

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x7f

    .line 14
    .line 15
    shl-int/lit8 v0, v0, 0x7

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 22
    .line 23
    or-int/2addr p0, v0

    .line 24
    return p0

    .line 25
    :cond_0
    return v1
.end method

.method public static final u(Ltq2;)V
    .locals 7

    .line 1
    iget-object p0, p0, Ltq2;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Luq2;

    .line 24
    .line 25
    iget-boolean v4, v3, Luq2;->a:Z

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v4, v3, Luq2;->b:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    const-string v4, ""

    .line 37
    .line 38
    :cond_2
    const-string v5, "path_lookup/not_found"

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-static {v4, v5, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    iget-object v3, v3, Luq2;->c:Ljava/util/List;

    .line 48
    .line 49
    const-string v4, "path_lookup"

    .line 50
    .line 51
    const-string v5, "not_found"

    .line 52
    .line 53
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    const-string v1, "/"

    .line 88
    .line 89
    const-string v2, " Dropbox files"

    .line 90
    .line 91
    const-string v3, "Failed deleting "

    .line 92
    .line 93
    invoke-static {v3, v0, v1, v2, p0}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static final v()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    double-to-long v0, v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static w(Lyr7;)Ls74;
    .locals 4

    .line 1
    iget-object v0, p0, Lyr7;->a:Lnd5;

    .line 2
    .line 3
    iget-object v1, v0, Lnd5;->e:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->isMemberClass()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lkd5;

    .line 23
    .line 24
    const-string v0, "The handler invocation must be top level class or nested STATIC inner class"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    :try_start_0
    const-class v2, Lyr7;

    .line 31
    .line 32
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ls74;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    iget-boolean v1, v0, Lnd5;->k:Z

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    new-instance v1, Lfv7;

    .line 55
    .line 56
    move-object v2, p0

    .line 57
    check-cast v2, Lol1;

    .line 58
    .line 59
    iget-object v2, v2, Lol1;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lyr7;

    .line 62
    .line 63
    const/4 v3, 0x5

    .line 64
    invoke-direct {v1, v2, v3}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    iput-object p0, v1, Lfv7;->e:Ls74;

    .line 68
    .line 69
    move-object p0, v1

    .line 70
    :cond_2
    iget-object v0, v0, Lnd5;->f:Llg4;

    .line 71
    .line 72
    sget-object v1, Llg4;->b:Llg4;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    new-instance v0, Le70;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Le70;-><init>(Ls74;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_3
    return-object p0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :catch_1
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :goto_1
    new-instance v0, Lkd5;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "Could not instantiate the provided handler invocation "

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :goto_2
    new-instance v0, Lkd5;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v3, "The provided handler invocation did not specify the necessary constructor "

    .line 116
    .line 117
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, "(SubscriptionContext);"

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method

.method public static y(Lix0;Lnd5;)Lxr7;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "bus.handlers.error"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lix0;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    new-instance v1, Lyr7;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, v0}, Lyr7;-><init>(Lix0;Lnd5;Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lus2;->w(Lyr7;)Ls74;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lld5;

    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Lld5;-><init>(Lyr7;Ls74;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p0, p1, Lnd5;->g:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    new-instance p0, Lux2;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lrg2;-><init>(Lx74;)V

    .line 30
    .line 31
    .line 32
    move-object v0, p0

    .line 33
    :cond_0
    iget-object p0, p1, Lnd5;->b:[Ly74;

    .line 34
    .line 35
    array-length p0, p0

    .line 36
    if-gtz p0, :cond_1

    .line 37
    .line 38
    iget-object p0, p1, Lnd5;->c:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-lez p0, :cond_2

    .line 51
    .line 52
    :cond_1
    new-instance p0, Lke3;

    .line 53
    .line 54
    invoke-direct {p0, v0}, Lke3;-><init>(Lx74;)V

    .line 55
    .line 56
    .line 57
    move-object v0, p0

    .line 58
    :cond_2
    new-instance p0, Lxr7;

    .line 59
    .line 60
    iget-object p1, p1, Lnd5;->j:Lpd5;

    .line 61
    .line 62
    iget-object p1, p1, Lpd5;->b:Lty4;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-interface {p1}, Lty4;->references()Lnh6;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v2, Lnh6;->a:Lnh6;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    new-instance p1, Lzq7;

    .line 79
    .line 80
    invoke-direct {p1}, Lzq7;-><init>()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    new-instance p1, Lcq8;

    .line 85
    .line 86
    new-instance v2, Ljava/util/WeakHashMap;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, v2}, Ln3;-><init>(Ljava/util/AbstractMap;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lxr7;-><init>(Lyr7;Lx74;Ln3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    new-instance p1, Lkd5;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method


# virtual methods
.method public A(FFFLmc7;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p4, p1, p0}, Lmc7;->c(FF)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public b(Lst6;Ljavax/crypto/SecretKey;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public c(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p0, p1, v0

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const-wide v0, 0xc0000128L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p0, p1, v0

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Lij5;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lij5;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public e(Ljo4;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public f(Lrt6;Ljavax/crypto/SecretKey;)Lrt6;
    .locals 0

    .line 1
    return-object p1
.end method

.method public g(Ljo4;Lu94;)V
    .locals 0

    .line 1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Lfx6;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lfx6;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public h(Ljava/lang/Object;Lqd8;)V
    .locals 5

    .line 1
    check-cast p1, Lij5;

    .line 2
    .line 3
    invoke-virtual {p1}, Lij5;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lq46;->n()Lo46;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ll46;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, v1, Ll46;->a:Ljava/lang/String;

    .line 42
    .line 43
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lu46;->D()Lt46;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v2}, Lyu3;->c()V

    .line 58
    .line 59
    .line 60
    iget-object v3, v2, Lyu3;->b:Lav3;

    .line 61
    .line 62
    check-cast v3, Lu46;

    .line 63
    .line 64
    invoke-static {v3, v0}, Lu46;->q(Lu46;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lu46;

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lu46;->D()Lt46;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v0, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v2}, Lyu3;->c()V

    .line 90
    .line 91
    .line 92
    iget-object v3, v2, Lyu3;->b:Lav3;

    .line 93
    .line 94
    check-cast v3, Lu46;

    .line 95
    .line 96
    invoke-static {v3, v0}, Lu46;->r(Lu46;F)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lu46;

    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :cond_1
    instance-of v2, v0, Ljava/lang/Double;

    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    invoke-static {}, Lu46;->D()Lt46;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v0, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-virtual {v2}, Lyu3;->c()V

    .line 122
    .line 123
    .line 124
    iget-object v0, v2, Lyu3;->b:Lav3;

    .line 125
    .line 126
    check-cast v0, Lu46;

    .line 127
    .line 128
    invoke-static {v0, v3, v4}, Lu46;->o(Lu46;D)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lu46;

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    invoke-static {}, Lu46;->D()Lt46;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v0, Ljava/lang/Number;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {v2}, Lyu3;->c()V

    .line 154
    .line 155
    .line 156
    iget-object v3, v2, Lyu3;->b:Lav3;

    .line 157
    .line 158
    check-cast v3, Lu46;

    .line 159
    .line 160
    invoke-static {v3, v0}, Lu46;->s(Lu46;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lu46;

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    .line 172
    .line 173
    if-eqz v2, :cond_4

    .line 174
    .line 175
    invoke-static {}, Lu46;->D()Lt46;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v0, Ljava/lang/Number;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    invoke-virtual {v2}, Lyu3;->c()V

    .line 186
    .line 187
    .line 188
    iget-object v0, v2, Lyu3;->b:Lav3;

    .line 189
    .line 190
    check-cast v0, Lu46;

    .line 191
    .line 192
    invoke-static {v0, v3, v4}, Lu46;->l(Lu46;J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lu46;

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    .line 203
    .line 204
    if-eqz v2, :cond_5

    .line 205
    .line 206
    invoke-static {}, Lu46;->D()Lt46;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v0, Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v2}, Lyu3;->c()V

    .line 213
    .line 214
    .line 215
    iget-object v3, v2, Lyu3;->b:Lav3;

    .line 216
    .line 217
    check-cast v3, Lu46;

    .line 218
    .line 219
    invoke-static {v3, v0}, Lu46;->m(Lu46;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lu46;

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_5
    instance-of v2, v0, Ljava/util/Set;

    .line 230
    .line 231
    if-eqz v2, :cond_6

    .line 232
    .line 233
    invoke-static {}, Lu46;->D()Lt46;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {}, Ls46;->o()Lr46;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v0, Ljava/util/Set;

    .line 242
    .line 243
    invoke-virtual {v3}, Lyu3;->c()V

    .line 244
    .line 245
    .line 246
    iget-object v4, v3, Lyu3;->b:Lav3;

    .line 247
    .line 248
    check-cast v4, Ls46;

    .line 249
    .line 250
    invoke-static {v4, v0}, Ls46;->l(Ls46;Ljava/util/Set;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Lyu3;->c()V

    .line 254
    .line 255
    .line 256
    iget-object v0, v2, Lyu3;->b:Lav3;

    .line 257
    .line 258
    check-cast v0, Lu46;

    .line 259
    .line 260
    invoke-virtual {v3}, Lyu3;->a()Lav3;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Ls46;

    .line 265
    .line 266
    invoke-static {v0, v3}, Lu46;->n(Lu46;Ls46;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Lu46;

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_6
    instance-of v2, v0, [B

    .line 277
    .line 278
    if-eqz v2, :cond_7

    .line 279
    .line 280
    invoke-static {}, Lu46;->D()Lt46;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v0, [B

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    array-length v4, v0

    .line 288
    invoke-static {v0, v3, v4}, Lgy0;->e([BII)Lgy0;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v2}, Lyu3;->c()V

    .line 293
    .line 294
    .line 295
    iget-object v3, v2, Lyu3;->b:Lav3;

    .line 296
    .line 297
    check-cast v3, Lu46;

    .line 298
    .line 299
    invoke-static {v3, v0}, Lu46;->p(Lu46;Lgy0;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Lyu3;->a()Lav3;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Lu46;

    .line 307
    .line 308
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Lyu3;->c()V

    .line 315
    .line 316
    .line 317
    iget-object v2, p1, Lyu3;->b:Lav3;

    .line 318
    .line 319
    check-cast v2, Lq46;

    .line 320
    .line 321
    invoke-static {v2}, Lq46;->l(Lq46;)Lk65;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v2, v1, v0}, Lk65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    const-string p1, "PreferencesSerializer does not support type: "

    .line 339
    .line 340
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :cond_8
    invoke-virtual {p1}, Lyu3;->a()Lav3;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    check-cast p0, Lq46;

    .line 353
    .line 354
    const/4 p1, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lav3;->a(Lk57;)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    sget-object v0, Ljk1;->f:Ljava/util/logging/Logger;

    .line 360
    .line 361
    const/16 v0, 0x1000

    .line 362
    .line 363
    if-le p1, v0, :cond_9

    .line 364
    .line 365
    move p1, v0

    .line 366
    :cond_9
    new-instance v0, Ljk1;

    .line 367
    .line 368
    invoke-direct {v0, p2, p1}, Ljk1;-><init>(Lqd8;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, v0}, Lav3;->b(Ljk1;)V

    .line 372
    .line 373
    .line 374
    iget p0, v0, Ljk1;->d:I

    .line 375
    .line 376
    if-lez p0, :cond_a

    .line 377
    .line 378
    invoke-virtual {v0}, Ljk1;->k()V

    .line 379
    .line 380
    .line 381
    :cond_a
    return-void
.end method

.method public i(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public j([B)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Lq46;->o(Ljava/io/FileInputStream;)Lq46;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lfg4; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const/4 p1, 0x0

    .line 6
    new-array v0, p1, [Lm46;

    .line 7
    .line 8
    new-instance v1, Lij5;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lij5;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Lm46;

    .line 18
    .line 19
    invoke-virtual {v1}, Lij5;->b()V

    .line 20
    .line 21
    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    if-gtz v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lq46;->m()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lu46;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lu46;->C()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    .line 77
    const/4 v2, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    sget-object v4, Ln46;->a:[I

    .line 80
    .line 81
    invoke-static {v2}, Ldj7;->A(I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    aget v2, v4, v2

    .line 86
    .line 87
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    :pswitch_0
    invoke-static {}, Lq;->j()V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :pswitch_1
    new-instance p0, Ldy1;

    .line 95
    .line 96
    const-string p1, "Value not set."

    .line 97
    .line 98
    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :pswitch_2
    new-instance v2, Ll46;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lu46;->u()Lgy0;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lgy0;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    sget-object p1, Lyd4;->b:[B

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    new-array v4, v0, [B

    .line 121
    .line 122
    invoke-virtual {p1, v4, v0}, Lgy0;->f([BI)V

    .line 123
    .line 124
    .line 125
    move-object p1, v4

    .line 126
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_3
    new-instance v2, Ll46;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lu46;->B()Ls46;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ls46;->n()Lxd4;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_4
    new-instance v2, Ll46;

    .line 158
    .line 159
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lu46;->A()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :pswitch_5
    new-instance v2, Ll46;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lu46;->z()J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_6
    new-instance v2, Ll46;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lu46;->y()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_7
    new-instance v2, Ll46;

    .line 211
    .line 212
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lu46;->w()D

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_8
    new-instance v2, Ll46;

    .line 229
    .line 230
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lu46;->x()F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :pswitch_9
    new-instance v2, Ll46;

    .line 247
    .line 248
    invoke-direct {v2, v0}, Ll46;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Lu46;->t()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v1, v2, p1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :pswitch_a
    new-instance p0, Ldy1;

    .line 265
    .line 266
    const-string p1, "Value case is null."

    .line 267
    .line 268
    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    throw p0

    .line 272
    :cond_2
    new-instance p0, Lij5;

    .line 273
    .line 274
    invoke-virtual {v1}, Lij5;->a()Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 279
    .line 280
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 281
    .line 282
    .line 283
    const/4 p1, 0x1

    .line 284
    invoke-direct {p0, v0, p1}, Lij5;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 285
    .line 286
    .line 287
    return-object p0

    .line 288
    :cond_3
    aget-object p0, v0, p1

    .line 289
    .line 290
    throw v3

    .line 291
    :catch_0
    move-exception p0

    .line 292
    new-instance p1, Ldy1;

    .line 293
    .line 294
    const-string v0, "Unable to parse preferences proto."

    .line 295
    .line 296
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    throw p1

    .line 300
    nop

    .line 301
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public m(Lll6;Lou5;)Lll6;
    .locals 0

    .line 1
    return-object p1
.end method

.method public o(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public p([B)Z
    .locals 3

    .line 1
    array-length p0, p1

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    aget-byte p0, p1, v1

    .line 7
    .line 8
    const/4 v0, -0x3

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    aget-byte v0, p1, p0

    .line 13
    .line 14
    const/16 v2, 0x53

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    aget-byte v0, p1, v0

    .line 20
    .line 21
    const/16 v2, 0x4d

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aget-byte p1, p1, v0

    .line 27
    .line 28
    const/16 v0, 0x42

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    return p0

    .line 33
    :cond_0
    return v1
.end method

.method public r(Lul4;F)Ljava/lang/Object;
    .locals 11

    .line 1
    iget p0, p0, Lus2;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lul4;->v()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lul4;->a()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Lul4;->q()D

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    double-to-float p0, v1

    .line 25
    invoke-virtual {p1}, Lul4;->q()D

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    double-to-float v1, v1

    .line 30
    :goto_0
    invoke-virtual {p1}, Lul4;->m()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lul4;->G()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lul4;->g()V

    .line 43
    .line 44
    .line 45
    :cond_3
    new-instance p1, Lp27;

    .line 46
    .line 47
    const/high16 v0, 0x42c80000    # 100.0f

    .line 48
    .line 49
    div-float/2addr p0, v0

    .line 50
    mul-float/2addr p0, p2

    .line 51
    div-float/2addr v1, v0

    .line 52
    mul-float/2addr v1, p2

    .line 53
    invoke-direct {p1, p0, v1}, Lp27;-><init>(FF)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_0
    invoke-static {p1, p2}, Lgn4;->b(Lul4;F)Landroid/graphics/PointF;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_1
    invoke-virtual {p1}, Lul4;->v()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-ne p0, v1, :cond_4

    .line 67
    .line 68
    move v0, v1

    .line 69
    :cond_4
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Lul4;->a()V

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p1}, Lul4;->q()D

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-virtual {p1}, Lul4;->q()D

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-virtual {p1}, Lul4;->q()D

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    invoke-virtual {p1}, Lul4;->v()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    const/4 p2, 0x7

    .line 91
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 92
    .line 93
    if-ne p0, p2, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Lul4;->q()D

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    move-wide v9, v7

    .line 101
    :goto_1
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Lul4;->g()V

    .line 104
    .line 105
    .line 106
    :cond_7
    cmpg-double p0, v1, v7

    .line 107
    .line 108
    if-gtz p0, :cond_8

    .line 109
    .line 110
    cmpg-double p0, v3, v7

    .line 111
    .line 112
    if-gtz p0, :cond_8

    .line 113
    .line 114
    cmpg-double p0, v5, v7

    .line 115
    .line 116
    if-gtz p0, :cond_8

    .line 117
    .line 118
    const-wide p0, 0x406fe00000000000L    # 255.0

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    mul-double/2addr v1, p0

    .line 124
    mul-double/2addr v3, p0

    .line 125
    mul-double/2addr v5, p0

    .line 126
    cmpg-double p2, v9, v7

    .line 127
    .line 128
    if-gtz p2, :cond_8

    .line 129
    .line 130
    mul-double/2addr v9, p0

    .line 131
    :cond_8
    double-to-int p0, v9

    .line 132
    double-to-int p1, v1

    .line 133
    double-to-int p2, v3

    .line 134
    double-to-int v0, v5

    .line 135
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([B)Lev6;
    .locals 1

    .line 1
    new-instance p0, Lvu6;

    .line 2
    .line 3
    new-instance v0, Lnu6;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lev6;-><init>(Ldv6;[B)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public x(F)F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p0
.end method

.method public z()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lh75;

    .line 2
    .line 3
    return p0
.end method
