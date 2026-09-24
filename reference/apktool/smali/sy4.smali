.class public final Lsy4;
.super Lgu2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Leu5;Lgy5;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p2, p1}, Lgu2;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iget p0, p1, Leu5;->a:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    move p0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    xor-int/2addr p0, p1

    .line 14
    const-string p1, "Can\'t have a listen complete from a user source"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgu2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgy5;

    .line 4
    .line 5
    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Leu5;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "ListenComplete { path="

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ", source="

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " }"

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final x(Lm61;)Lgu2;
    .locals 1

    .line 1
    iget-object p1, p0, Lgu2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lgy5;

    .line 4
    .line 5
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Leu5;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lsy4;

    .line 16
    .line 17
    sget-object v0, Lgy5;->d:Lgy5;

    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Lsy4;-><init>(Leu5;Lgy5;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance v0, Lsy4;

    .line 24
    .line 25
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p0, p1}, Lsy4;-><init>(Leu5;Lgy5;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
