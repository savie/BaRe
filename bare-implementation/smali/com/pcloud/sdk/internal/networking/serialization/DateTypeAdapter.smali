.class public Lcom/pcloud/sdk/internal/networking/serialization/DateTypeAdapter;
.super Lcom/google/gson/b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final read(Ltl4;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ltl4;->peek()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x7

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {p1}, Ltl4;->nextLong()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x3e8

    .line 15
    .line 16
    mul-long/2addr v0, v2

    .line 17
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final write(Lnn4;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Date;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lnn4;->r()Lnn4;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p1, v0, v1}, Lnn4;->G(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
