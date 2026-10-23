.class public Lwm7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "Stats"
    strict = false
.end annotation


# instance fields
.field private a:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "BytesScanned"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "BytesProcessed"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "BytesReturned"
        required = false
    .end annotation
.end field


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwm7;->a:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object p2, p0, Lwm7;->b:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object p3, p0, Lwm7;->c:Ljava/lang/Long;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwm7;->b:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwm7;->c:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwm7;->a:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lwm7;->a:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lwm7;->b:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object p0, p0, Lwm7;->c:Ljava/lang/Long;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "bytesScanned="

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", bytesProcessed="

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", bytesReturned="

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwm7;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Stats{"

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
