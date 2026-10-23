.class public final Lcom/microsoft/identity/common/java/net/HttpResponse;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mResponseBody:Ljava/lang/String;

.field private final mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Date;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mDate:Ljava/util/Date;

    .line 14
    .line 15
    iput p2, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mStatusCode:I

    .line 16
    .line 17
    iput-object p3, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mResponseBody:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mResponseHeaders:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mResponseBody:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mDate:Ljava/util/Date;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mResponseHeaders:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/util/List;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-gtz p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/String;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mResponseHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatusCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mStatusCode:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HttpResponse{mStatusCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mStatusCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mResponseBody=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mResponseBody:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', mResponseHeaders="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/HttpResponse;->mResponseHeaders:Ljava/util/Map;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
