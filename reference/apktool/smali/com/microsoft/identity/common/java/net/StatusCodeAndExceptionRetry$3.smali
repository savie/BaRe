.class final Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$3;
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
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 2
    .line 3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p0
.end method
