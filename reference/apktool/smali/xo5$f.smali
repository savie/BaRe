.class public Lxo5$f;
.super Lxo5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxo5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation runtime Lno6;
    name = "QueueConfiguration"
    strict = false
.end annotation


# instance fields
.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Queue"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lxo5$d;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Queue"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Id"
            required = false
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lgt2;
            entry = "Event"
            inline = true
        .end annotation
    .end param
    .param p4    # Lxo5$d;
        .annotation runtime Lat2;
            name = "Filter"
            required = false
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lxo5$d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lxo5$a;-><init>(Ljava/lang/String;Ljava/util/List;Lxo5$d;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxo5$f;->d:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxo5$f;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lxo5$f;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0}, Lxo5$a;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    const-string v2, "}"

    .line 14
    .line 15
    const-string v3, "QueueConfiguration{queue="

    .line 16
    .line 17
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
