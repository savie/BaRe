.class public final Lcom/microsoft/identity/common/components/AndroidClockSkewManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/IClockSkewManager;


# instance fields
.field public final synthetic a:I

.field private mClockSkewStorage:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->a:I

    .line 3
    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

    .line 5
    .line 6
    const-string v1, "com.microsoft.identity.client.clock_correction"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v1, v2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;-><init>(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->mClockSkewStorage:Ljava/lang/Object;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "mManager is marked non-null but is null"

    .line 25
    .line 26
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->mClockSkewStorage:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;-><init>(Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getAdjustedReferenceTime()Ljava/util/Date;
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    new-instance v2, Ljava/util/Date;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->mClockSkewStorage:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

    .line 18
    .line 19
    const-string v3, "skew"

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    sub-long/2addr v0, v3

    .line 32
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 33
    .line 34
    .line 35
    return-object v2
.end method

.method public onTimestampReceived(J)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr v0, p1

    .line 14
    iget-object p0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->mClockSkewStorage:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

    .line 17
    .line 18
    const-string p1, "skew"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public retryPolicy(Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->mClockSkewStorage:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->a:I

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
    const-string v1, "UrlConnectionHttpClient.UrlConnectionHttpClientBuilder(retryPolicy="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->mClockSkewStorage:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, ", streamBufferSize=null, connectTimeoutMs=null, readTimeoutMs=null, connectTimeoutMsSupplier=null, readTimeoutMsSupplier=null, supportedSslProtocols=null, sslContext=null)"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
