.class public Lb86;
.super Lwm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "Progress"
    strict = false
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lat2;
            name = "BytesScanned"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Lat2;
            name = "BytesProcessed"
            required = false
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation runtime Lat2;
            name = "BytesReturned"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lwm7;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lwm7;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Progress{"

    .line 6
    .line 7
    const-string v1, "}"

    .line 8
    .line 9
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
