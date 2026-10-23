.class final Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/ported/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/ported/Function<",
        "Lcom/microsoft/identity/common/java/net/HttpResponse;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 p1, 0x190

    .line 10
    .line 11
    if-ge p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
