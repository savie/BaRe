.class public final Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "mContext is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public final getDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;

    .line 4
    .line 5
    const-string v1, "microsoft-device-pop"

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string v0, "io_error"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    const-string v0, "no_such_algorithm"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_2
    move-exception p0

    .line 20
    const-string v0, "certificate_load_failure"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_3
    move-exception p0

    .line 24
    const-string v0, "keystore_not_initialized"

    .line 25
    .line 26
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "Failed to initialize DevicePoPManager = "

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, v0, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v1
.end method
