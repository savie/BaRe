.class public final Lm75;
.super Lyc9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c0(Lbs2;Lk75;)V
    .locals 3

    .line 1
    iget-object p0, p2, Lk75;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lo64;

    .line 7
    .line 8
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v1, v2, p1, v0}, Lo64;-><init>(Ljava/lang/String;ILjava/util/Map;Lo64;)V

    .line 15
    .line 16
    .line 17
    iput-object p0, p2, Lk75;->d:Lo64;

    .line 18
    .line 19
    return-void
.end method

.method public final i0(Ljava/lang/String;)Lix7;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
