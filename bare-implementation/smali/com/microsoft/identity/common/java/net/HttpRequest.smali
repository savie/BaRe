.class public final Lcom/microsoft/identity/common/java/net/HttpRequest;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mRequestContent:[B

.field private final mRequestHeaders:Ljava/util/HashMap;

.field private final mRequestMethod:Ljava/lang/String;

.field private final mRequestUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestHeaders:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestUrl:Ljava/net/URL;

    .line 17
    .line 18
    const-string v2, "Host"

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestMethod:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz p4, :cond_0

    .line 33
    .line 34
    array-length p1, p4

    .line 35
    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_0
    iput-object v1, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestContent:[B

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string p0, "requestMethod is marked non-null but is null"

    .line 43
    .line 44
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_2
    const-string p0, "requestUrl is marked non-null but is null"

    .line 49
    .line 50
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method


# virtual methods
.method public final getRequestContent()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestContent:[B

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    array-length v0, p0

    .line 8
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getRequestHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequestUrl()Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpRequest;->mRequestUrl:Ljava/net/URL;

    .line 2
    .line 3
    return-object p0
.end method
