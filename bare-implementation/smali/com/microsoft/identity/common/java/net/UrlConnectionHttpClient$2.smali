.class final Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Lcom/microsoft/identity/common/java/net/HttpResponse;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 p1, 0x1f4

    .line 12
    .line 13
    if-eq p0, p1, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x1f8

    .line 16
    .line 17
    if-eq p0, p1, :cond_0

    .line 18
    .line 19
    const/16 p1, 0x1f7

    .line 20
    .line 21
    if-ne p0, p1, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
