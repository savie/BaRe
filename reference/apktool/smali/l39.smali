.class public final Ll39;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lbe9;


# static fields
.field public static d:Ll39;

.field public static e:Ll39;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Ll39;->a:I

    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 138
    new-array v0, p1, [I

    .line 139
    iput-object v0, p0, Ll39;->b:Ljava/lang/Object;

    .line 140
    new-array p1, p1, [I

    .line 141
    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    return-void

    .line 142
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Ll39;->b:Ljava/lang/Object;

    .line 144
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 110
    iput p1, p0, Ll39;->a:I

    iput-object p2, p0, Ll39;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll39;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    iput p2, p0, Ll39;->a:I

    packed-switch p2, :pswitch_data_0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lao7;->a(Landroid/content/Context;)Lao7;

    move-result-object p1

    iput-object p1, p0, Ll39;->b:Ljava/lang/Object;

    .line 112
    invoke-virtual {p1}, Lao7;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p2

    iput-object p2, p0, Ll39;->c:Ljava/lang/Object;

    .line 113
    const-string p0, "defaultGoogleSignInAccount"

    invoke-virtual {p1, p0}, Lao7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "googleSignInOptions"

    .line 115
    invoke-static {p2, p0}, Lao7;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lao7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 116
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 117
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 118
    const-string v0, "FBA-PackageInfo"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p2}, Lly8;->e(Ljava/lang/String;)V

    iput-object p2, p0, Ll39;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 120
    :try_start_1
    invoke-static {p1, p2}, Lly8;->x(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_2

    .line 121
    const-string p1, "single cert required: "

    .line 122
    invoke-static {p1, p2, v0}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-object v1, p0, Ll39;->c:Ljava/lang/Object;

    goto :goto_1

    .line 124
    :cond_2
    invoke-static {p1}, Ll73;->f([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    goto :goto_1

    .line 125
    :catch_1
    const-string p1, "no pkg: "

    .line 126
    invoke-static {p1, p2, v0}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object v1, p0, Ll39;->c:Ljava/lang/Object;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lhp9;)V
    .locals 5

    const/16 v0, 0xb

    iput v0, p0, Ll39;->a:I

    .line 128
    new-instance v0, Lbe;

    .line 129
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lya8;->b(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Lya8;->a()Lya8;

    move-result-object p1

    sget-object v1, Loy0;->e:Loy0;

    .line 131
    invoke-virtual {p1, v1}, Lya8;->c(Loy0;)Lxa8;

    move-result-object p1

    const-string v1, "PLAY_BILLING_LIBRARY"

    const-string v2, "proto"

    .line 132
    new-instance v3, Ldw2;

    invoke-direct {v3, v2}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v2, Lnh4;

    const/16 v4, 0xf

    .line 134
    invoke-direct {v2, v4}, Lnh4;-><init>(I)V

    .line 135
    invoke-virtual {p1, v1, v3, v2}, Lxa8;->a(Ljava/lang/String;Ldw2;Lo98;)Lrh3;

    move-result-object p1

    iput-object p1, v0, Lbe;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, v0, Lbe;->a:Z

    .line 136
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll39;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll39;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iput v0, p0, Ll39;->a:I

    .line 4
    .line 5
    const-string v0, "android-keystore://firebear_master_key_id."

    .line 6
    .line 7
    const-string v1, "com.google.firebase.auth.api.crypto."

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Ll39;->b:Ljava/lang/Object;

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lwq9;->a()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lso8;

    .line 18
    .line 19
    invoke-direct {v2}, Lso8;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "GenericIdpKeyset"

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iput-object p1, v2, Lso8;->a:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v3, v2, Lso8;->b:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object v1, v2, Lso8;->c:Ljava/lang/Object;

    .line 43
    .line 44
    sget-object p1, Lar9;->a:Lmz9;

    .line 45
    .line 46
    iput-object p1, v2, Lso8;->k:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p2, "android-keystore://"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    iput-object p1, v2, Lso8;->d:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v2}, Lso8;->b()Ltr9;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    move-exception p1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string p2, "key URI must start with android-keystore://"

    .line 82
    .line 83
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string p2, "need an Android context"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string p2, "Exception encountered during crypto setup:\n"

    .line 100
    .line 101
    const-string v0, "FirebearCryptoHelper"

    .line 102
    .line 103
    invoke-static {p2, p1, v0}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    :goto_1
    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    .line 108
    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Ll39;->a:I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Lwu8;->g(Landroid/view/WindowInsetsAnimation$Bounds;)Lvc4;

    move-result-object v0

    iput-object v0, p0, Ll39;->b:Ljava/lang/Object;

    .line 155
    invoke-static {p1}, Lwu8;->f(Landroid/view/WindowInsetsAnimation$Bounds;)Lvc4;

    move-result-object p1

    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk48;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Ll39;->a:I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Ll39;->b:Ljava/lang/Object;

    .line 158
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llk8;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Ll39;->a:I

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Ll39;->b:Ljava/lang/Object;

    .line 147
    new-instance p1, Lkk8;

    .line 148
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput v0, p1, Lkk8;->a:I

    .line 150
    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln92;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ll39;->a:I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll39;->c:Ljava/lang/Object;

    .line 152
    iput-object p2, p0, Ll39;->b:Ljava/lang/Object;

    return-void
.end method

.method public static c([B[B[B)[B
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    const-string v0, "AES/GCM/NoPadding"

    .line 7
    .line 8
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 13
    .line 14
    const-string v2, "AES"

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 20
    .line 21
    const/16 v2, 0x80

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0xc

    .line 25
    .line 26
    invoke-direct {p0, v2, p1, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v0, v2, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 31
    .line 32
    .line 33
    array-length p0, p2

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 38
    .line 39
    .line 40
    :goto_0
    array-length p0, p1

    .line 41
    sub-int/2addr p0, v4

    .line 42
    invoke-virtual {v0, p1, v4, p0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    const-string p0, "Ciphertext too short"

    .line 51
    .line 52
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static f(II)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const/4 v4, 0x1

    .line 6
    if-ge v1, p0, :cond_2

    .line 7
    .line 8
    add-int/lit8 v2, v2, 0x1

    .line 9
    .line 10
    if-ne v2, p1, :cond_0

    .line 11
    .line 12
    add-int/lit8 v3, v3, 0x1

    .line 13
    .line 14
    move v2, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-le v2, p1, :cond_1

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    move v2, v4

    .line 21
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    add-int/2addr v2, v4

    .line 25
    if-le v2, p1, :cond_3

    .line 26
    .line 27
    add-int/2addr v3, v4

    .line 28
    :cond_3
    return v3
.end method

.method public static varargs i([Ljava/lang/String;)Ll39;
    .locals 5

    .line 1
    :try_start_0
    array-length v0, p0

    .line 2
    new-array v0, v0, [Lhy0;

    .line 3
    .line 4
    new-instance v1, Lnw0;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    array-length v3, p0

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-static {v1, v3}, Ldn4;->u(Lnw0;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lnw0;->readByte()B

    .line 19
    .line 20
    .line 21
    iget-wide v3, v1, Lnw0;->b:J

    .line 22
    .line 23
    invoke-virtual {v1, v3, v4}, Lnw0;->o(J)Lhy0;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v0, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ll39;

    .line 33
    .line 34
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lwx3;->w([Lhy0;)Lnu5;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v2, 0x6

    .line 45
    invoke-direct {v1, v2, p0, v0}, Ll39;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public static declared-synchronized k(Landroid/content/Context;)Ll39;
    .locals 4

    .line 1
    const-class v0, Ll39;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v1, Ll39;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Ll39;->d:Ll39;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_3
    new-instance v2, Ll39;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, p0, v3}, Ll39;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Ll39;->d:Ll39;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return-object v2

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    :try_start_5
    throw p0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 33
    throw p0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)Ll39;
    .locals 1

    .line 1
    sget-object v0, Ll39;->e:Ll39;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll39;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ll39;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Ll39;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Ll39;->e:Ll39;

    .line 21
    .line 22
    :cond_1
    sget-object p0, Ll39;->e:Ll39;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/io/InputStream;JLlq2;)V
    .locals 8

    .line 1
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ln92;

    .line 4
    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Ln92;->i:Lbr2;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    move-wide v2, p2

    .line 12
    move-object v4, p4

    .line 13
    move-wide v5, p5

    .line 14
    move-object v7, p7

    .line 15
    invoke-virtual/range {v0 .. v7}, Lbr2;->o(Ljava/lang/String;JLjava/io/InputStream;JLlq2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    move-object p1, v0

    .line 21
    invoke-virtual {p0, p1}, Ln92;->k(Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    throw p0
.end method

.method public b([B[B)[B
    .locals 5

    .line 1
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lk48;

    .line 4
    .line 5
    iget-object p0, p0, Lk48;->b:Ljava/util/List;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Li48;

    .line 28
    .line 29
    iget v2, v2, Li48;->d:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v2, v1

    .line 58
    check-cast v2, Li48;

    .line 59
    .line 60
    invoke-virtual {v2}, Li48;->a()[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    array-length v3, p1

    .line 65
    array-length v4, v2

    .line 66
    if-lt v3, v4, :cond_2

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    array-length v4, v2

    .line 70
    invoke-static {p1, v3, v4}, Lx50;->k0([BII)[B

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Li48;

    .line 99
    .line 100
    :try_start_0
    iget-object v1, v0, Li48;->b:[B

    .line 101
    .line 102
    invoke-virtual {v0}, Li48;->a()[B

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    array-length v0, v0

    .line 107
    array-length v2, p1

    .line 108
    invoke-static {p1, v0, v2}, Lx50;->k0([BII)[B

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v1, v0, p2}, Ll39;->c([B[B[B)[B

    .line 113
    .line 114
    .line 115
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-object p0

    .line 117
    :cond_4
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    .line 118
    .line 119
    const-string p1, "Decryption failed"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public d(IIII)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkk8;

    .line 4
    .line 5
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Llk8;

    .line 8
    .line 9
    invoke-interface {p0}, Llk8;->o()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {p0}, Llk8;->s()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le p2, p1, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, -0x1

    .line 22
    :goto_0
    const/4 v4, 0x0

    .line 23
    :goto_1
    if-eq p1, p2, :cond_3

    .line 24
    .line 25
    invoke-interface {p0, p1}, Llk8;->w(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {p0, v5}, Llk8;->h(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-interface {p0, v5}, Llk8;->A(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput v1, v0, Lkk8;->b:I

    .line 38
    .line 39
    iput v2, v0, Lkk8;->c:I

    .line 40
    .line 41
    iput v6, v0, Lkk8;->d:I

    .line 42
    .line 43
    iput v7, v0, Lkk8;->e:I

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    iput p3, v0, Lkk8;->a:I

    .line 48
    .line 49
    invoke-virtual {v0}, Lkk8;->a()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    return-object v5

    .line 56
    :cond_1
    if-eqz p4, :cond_2

    .line 57
    .line 58
    iput p4, v0, Lkk8;->a:I

    .line 59
    .line 60
    invoke-virtual {v0}, Lkk8;->a()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    move-object v4, v5

    .line 67
    :cond_2
    add-int/2addr p1, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    return-object v4
.end method

.method public e(Ljava/lang/String;JLjava/io/InputStream;JLlq2;)Lvq2;
    .locals 11

    .line 1
    iget-object v0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ln92;

    .line 5
    .line 6
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v2, v1, Ln92;->i:Lbr2;

    .line 10
    .line 11
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v6, p0

    .line 14
    check-cast v6, Ljava/lang/String;

    .line 15
    .line 16
    move-object v3, p1

    .line 17
    move-wide v4, p2

    .line 18
    move-object v7, p4

    .line 19
    move-wide/from16 v8, p5

    .line 20
    .line 21
    move-object/from16 v10, p7

    .line 22
    .line 23
    invoke-virtual/range {v2 .. v10}, Lbr2;->p(Ljava/lang/String;JLjava/lang/String;Ljava/io/InputStream;JLlq2;)Lvq2;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p1, v1, Ln92;->k:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Lvq2;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    move-object p0, v0

    .line 39
    invoke-virtual {v1, p0}, Ln92;->k(Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    throw p0
.end method

.method public g()V
    .locals 0

    .line 1
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/util/SparseIntArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Ll39;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkk8;

    .line 4
    .line 5
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Llk8;

    .line 8
    .line 9
    invoke-interface {p0}, Llk8;->o()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {p0}, Llk8;->s()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {p0, p1}, Llk8;->h(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {p0, p1}, Llk8;->A(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iput v1, v0, Lkk8;->b:I

    .line 26
    .line 27
    iput v2, v0, Lkk8;->c:I

    .line 28
    .line 29
    iput v3, v0, Lkk8;->d:I

    .line 30
    .line 31
    iput p0, v0, Lkk8;->e:I

    .line 32
    .line 33
    const/16 p0, 0x6003

    .line 34
    .line 35
    iput p0, v0, Lkk8;->a:I

    .line 36
    .line 37
    invoke-virtual {v0}, Lkk8;->a()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public j(Ljava/io/InputStream;JLlq2;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ln92;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Ln92;->i:Lbr2;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lbr2;->q(Ljava/io/InputStream;JLlq2;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p0, p1}, Ln92;->k(Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    throw p0
.end method

.method public declared-synchronized l()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ll39;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lao7;

    .line 5
    .line 6
    iget-object v1, v0, Lao7;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v0, v0, Lao7;->b:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Ll39;->c:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    throw v0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr9;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "FirebearCryptoHelper"

    .line 9
    .line 10
    const-string v0, "KeysetManager failed to initialize - unable to get Public key"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lnh;

    .line 22
    .line 23
    const/16 v3, 0x15

    .line 24
    .line 25
    invoke-direct {v2, v0, v3}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v3, p0, Ll39;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ltr9;

    .line 31
    .line 32
    monitor-enter v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ltr9;

    .line 36
    .line 37
    invoke-virtual {p0}, Ltr9;->g()Lix0;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lix0;->u()Lix0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v2}, Lix0;->s(Lnh;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/16 v0, 0x8

    .line 54
    .line 55
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception p0

    .line 66
    :goto_0
    const-string v0, "FirebearCryptoHelper"

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v2, "Exception encountered when attempting to get Public Key:\n"

    .line 73
    .line 74
    invoke-static {v2, p0, v0}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v1
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr9;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "FirebearCryptoHelper"

    .line 9
    .line 10
    const-string p1, "KeysetManager failed to initialize - unable to decrypt payload"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ltr9;

    .line 20
    .line 21
    invoke-virtual {p0}, Ltr9;->g()Lix0;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-static {}, Lpo9;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    sget-object v2, Lw13;->e:Lfo8;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    :try_start_3
    const-class v3, Lca9;

    .line 34
    .line 35
    invoke-virtual {p0, v2, v3}, Lix0;->n(Laa9;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lca9;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/String;

    .line 42
    .line 43
    const/16 v3, 0x8

    .line 44
    .line 45
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lca9;->zza([B)[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    return-object v2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :try_start_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 63
    .line 64
    const-string p1, "Cannot use non-FIPS-compliant HybridConfigurationV1 in FIPS mode"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1

    .line 79
    :catch_1
    move-exception p0

    .line 80
    const-string p1, "FirebearCryptoHelper"

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v0, "Exception encountered while decrypting bytes:\n"

    .line 87
    .line 88
    invoke-static {v0, p0, p1}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v1
.end method

.method public p(Ldo9;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ll39;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhp9;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Ll39;->w(Ldo9;Lhp9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    const-string p1, "BillingLogger"

    .line 11
    .line 12
    const-string v0, "Unable to log."

    .line 13
    .line 14
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public q(Ldo9;IJ)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ll39;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhp9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lxi9;->l()Lri9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lfp9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lri9;->b()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lri9;->b:Lxi9;

    .line 15
    .line 16
    check-cast v1, Lhp9;

    .line 17
    .line 18
    invoke-static {v1, p2}, Lhp9;->C(Lhp9;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lhp9;

    .line 26
    .line 27
    iput-object p2, p0, Ll39;->b:Ljava/lang/Object;

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    cmp-long v0, p3, v0

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Lxi9;->l()Lri9;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lfp9;

    .line 41
    .line 42
    invoke-virtual {p2}, Lri9;->b()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p2, Lri9;->b:Lxi9;

    .line 46
    .line 47
    check-cast v0, Lhp9;

    .line 48
    .line 49
    invoke-static {v0, p3, p4}, Lhp9;->E(Lhp9;J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lri9;->a()Lxi9;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lhp9;

    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0, p1, p2}, Ll39;->w(Ldo9;Lhp9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    const-string p1, "BillingLogger"

    .line 64
    .line 65
    const-string p2, "Unable to log."

    .line 66
    .line 67
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public r(Ldo9;JZ)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lxi9;->l()Lri9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lco9;

    .line 6
    .line 7
    invoke-virtual {p1}, Ldo9;->u()Lvp9;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lxi9;->l()Lri9;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lop9;

    .line 16
    .line 17
    invoke-virtual {p1}, Lri9;->b()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lri9;->b:Lxi9;

    .line 21
    .line 22
    check-cast v1, Lvp9;

    .line 23
    .line 24
    invoke-static {v1, p4}, Lvp9;->q(Lvp9;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lri9;->b()V

    .line 28
    .line 29
    .line 30
    iget-object p4, v0, Lri9;->b:Lxi9;

    .line 31
    .line 32
    check-cast p4, Ldo9;

    .line 33
    .line 34
    invoke-virtual {p1}, Lri9;->a()Lxi9;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lvp9;

    .line 39
    .line 40
    invoke-static {p4, p1}, Ldo9;->p(Ldo9;Lvp9;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ldo9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    cmp-long p4, p2, v0

    .line 52
    .line 53
    iget-object v0, p0, Ll39;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lhp9;

    .line 56
    .line 57
    if-nez p4, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lxi9;->l()Lri9;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    check-cast p4, Lfp9;

    .line 65
    .line 66
    invoke-virtual {p4}, Lri9;->b()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p4, Lri9;->b:Lxi9;

    .line 70
    .line 71
    check-cast v0, Lhp9;

    .line 72
    .line 73
    invoke-static {v0, p2, p3}, Lhp9;->E(Lhp9;J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4}, Lri9;->a()Lxi9;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    move-object v0, p2

    .line 81
    check-cast v0, Lhp9;

    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0, p1, v0}, Ll39;->w(Ldo9;Lhp9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    const-string p1, "BillingLogger"

    .line 89
    .line 90
    const-string p2, "Unable to log."

    .line 91
    .line 92
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public s(Ldo9;IJZ)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ll39;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhp9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lxi9;->l()Lri9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lfp9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lri9;->b()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lri9;->b:Lxi9;

    .line 15
    .line 16
    check-cast v1, Lhp9;

    .line 17
    .line 18
    invoke-static {v1, p2}, Lhp9;->C(Lhp9;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lhp9;

    .line 26
    .line 27
    iput-object p2, p0, Ll39;->b:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p1}, Lxi9;->l()Lri9;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lco9;

    .line 34
    .line 35
    invoke-virtual {p1}, Ldo9;->u()Lvp9;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lxi9;->l()Lri9;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lop9;

    .line 44
    .line 45
    invoke-virtual {p1}, Lri9;->b()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lri9;->b:Lxi9;

    .line 49
    .line 50
    check-cast v0, Lvp9;

    .line 51
    .line 52
    invoke-static {v0, p5}, Lvp9;->q(Lvp9;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lri9;->b()V

    .line 56
    .line 57
    .line 58
    iget-object p5, p2, Lri9;->b:Lxi9;

    .line 59
    .line 60
    check-cast p5, Ldo9;

    .line 61
    .line 62
    invoke-virtual {p1}, Lri9;->a()Lxi9;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lvp9;

    .line 67
    .line 68
    invoke-static {p5, p1}, Ldo9;->p(Ldo9;Lvp9;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lri9;->a()Lxi9;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ldo9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    const-wide/16 v0, 0x0

    .line 78
    .line 79
    cmp-long p2, p3, v0

    .line 80
    .line 81
    iget-object p5, p0, Ll39;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p5, Lhp9;

    .line 84
    .line 85
    if-nez p2, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    :try_start_1
    invoke-virtual {p5}, Lxi9;->l()Lri9;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Lfp9;

    .line 93
    .line 94
    invoke-virtual {p2}, Lri9;->b()V

    .line 95
    .line 96
    .line 97
    iget-object p5, p2, Lri9;->b:Lxi9;

    .line 98
    .line 99
    check-cast p5, Lhp9;

    .line 100
    .line 101
    invoke-static {p5, p3, p4}, Lhp9;->E(Lhp9;J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lri9;->a()Lxi9;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    move-object p5, p2

    .line 109
    check-cast p5, Lhp9;

    .line 110
    .line 111
    :goto_0
    invoke-virtual {p0, p1, p5}, Ll39;->w(Ldo9;Lhp9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    const-string p1, "BillingLogger"

    .line 117
    .line 118
    const-string p2, "Unable to log."

    .line 119
    .line 120
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public t(Luo9;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ldq9;->q()Lbq9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ll39;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lhp9;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lbq9;->c(Lhp9;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lri9;->b()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lri9;->b:Lxi9;

    .line 16
    .line 17
    check-cast v1, Ldq9;

    .line 18
    .line 19
    invoke-static {v1, p1}, Ldq9;->t(Ldq9;Luo9;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ldq9;

    .line 27
    .line 28
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lbe;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lbe;->g(Ldq9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    const-string p1, "BillingLogger"

    .line 38
    .line 39
    const-string v0, "Unable to log."

    .line 40
    .line 41
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ll39;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Bounds{lower="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ll39;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lvc4;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " upper="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lvc4;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, "}"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lpq9;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ll39;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbe;

    .line 4
    .line 5
    invoke-static {}, Ldq9;->q()Lbq9;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Ll39;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lhp9;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lbq9;->c(Lhp9;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lri9;->b()V

    .line 17
    .line 18
    .line 19
    iget-object p0, v1, Lri9;->b:Lxi9;

    .line 20
    .line 21
    check-cast p0, Ldq9;

    .line 22
    .line 23
    invoke-static {p0, p1}, Ldq9;->v(Ldq9;Lpq9;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lri9;->a()Lxi9;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ldq9;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lbe;->g(Ldq9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    const-string p1, "BillingLogger"

    .line 38
    .line 39
    const-string v0, "Unable to log."

    .line 40
    .line 41
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public v(Lsq9;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Ldq9;->q()Lbq9;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Ll39;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lhp9;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lbq9;->c(Lhp9;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lri9;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lri9;->b:Lxi9;

    .line 19
    .line 20
    check-cast v1, Ldq9;

    .line 21
    .line 22
    invoke-static {v1, p1}, Ldq9;->p(Ldq9;Lsq9;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lbe;

    .line 28
    .line 29
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ldq9;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lbe;->g(Ldq9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    const-string p1, "BillingLogger"

    .line 41
    .line 42
    const-string v0, "Unable to log."

    .line 43
    .line 44
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public w(Ldo9;Lhp9;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Ldq9;->q()Lbq9;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Lbq9;->c(Lhp9;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lri9;->b()V

    .line 12
    .line 13
    .line 14
    iget-object p2, v0, Lri9;->b:Lxi9;

    .line 15
    .line 16
    check-cast p2, Ldq9;

    .line 17
    .line 18
    invoke-static {p2, p1}, Ldq9;->r(Ldq9;Ldo9;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ldq9;

    .line 26
    .line 27
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lbe;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lbe;->g(Ldq9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    const-string p1, "BillingLogger"

    .line 37
    .line 38
    const-string p2, "Unable to log."

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public x(Lno9;Lhp9;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Ldq9;->q()Lbq9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lbq9;->c(Lhp9;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lri9;->b()V

    .line 9
    .line 10
    .line 11
    iget-object p2, v0, Lri9;->b:Lxi9;

    .line 12
    .line 13
    check-cast p2, Ldq9;

    .line 14
    .line 15
    invoke-static {p2, p1}, Ldq9;->s(Ldq9;Lno9;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lbe;

    .line 21
    .line 22
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ldq9;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lbe;->g(Ldq9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    const-string p1, "BillingLogger"

    .line 34
    .line 35
    const-string p2, "Unable to log."

    .line 36
    .line 37
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
