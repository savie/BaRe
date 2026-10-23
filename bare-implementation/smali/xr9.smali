.class public final Lxr9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw99;


# instance fields
.field public final a:Lwr9;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwr9;

    .line 5
    .line 6
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Lwr9;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lxr9;->a:Lwr9;

    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4

    .line 1
    iget-object p0, p0, Lxr9;->a:Lwr9;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lwr9;->a([B[B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception v0

    .line 11
    :goto_0
    const-string v1, "xr9"

    .line 12
    .line 13
    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 23
    .line 24
    mul-double/2addr v0, v2

    .line 25
    double-to-int v0, v0

    .line 26
    int-to-long v0, v0

    .line 27
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 28
    .line 29
    .line 30
    :catch_2
    invoke-virtual {p0, p1, p2}, Lwr9;->a([B[B)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :catch_3
    move-exception p0

    .line 36
    throw p0
.end method

.method public final b([B[B)[B
    .locals 4

    .line 1
    iget-object p0, p0, Lxr9;->a:Lwr9;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lwr9;->b([B[B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception v0

    .line 11
    :goto_0
    const-string v1, "xr9"

    .line 12
    .line 13
    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 23
    .line 24
    mul-double/2addr v0, v2

    .line 25
    double-to-int v0, v0

    .line 26
    int-to-long v0, v0

    .line 27
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 28
    .line 29
    .line 30
    :catch_2
    invoke-virtual {p0, p1, p2}, Lwr9;->b([B[B)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
