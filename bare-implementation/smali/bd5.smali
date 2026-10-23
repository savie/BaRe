.class public final Lbd5;
.super Lgu2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lnp1;


# direct methods
.method public constructor <init>(Leu5;Lgy5;Lnp1;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p2, p1}, Lgu2;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iput-object p3, p0, Lbd5;->d:Lnp1;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lgu2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgy5;

    .line 4
    .line 5
    iget-object v1, p0, Lgu2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Leu5;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Merge { path="

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ", source="

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", children="

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lbd5;->d:Lnp1;

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " }"

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final x(Lm61;)Lgu2;
    .locals 3

    .line 1
    iget-object v0, p0, Lgu2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Leu5;

    .line 4
    .line 5
    iget-object v1, p0, Lgu2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lgy5;

    .line 8
    .line 9
    invoke-virtual {v1}, Lgy5;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lbd5;->d:Lnp1;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    new-instance v1, Lgy5;

    .line 18
    .line 19
    filled-new-array {p1}, [Lm61;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v1, p1}, Lgy5;-><init>([Lm61;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lnp1;->g(Lgy5;)Lnp1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p1, p0, Lnp1;->a:Lua4;

    .line 31
    .line 32
    invoke-virtual {p1}, Lua4;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p1, Lua4;->a:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v1, p1

    .line 42
    check-cast v1, Lqn5;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance p0, Ljv5;

    .line 47
    .line 48
    sget-object v1, Lgy5;->d:Lgy5;

    .line 49
    .line 50
    check-cast p1, Lqn5;

    .line 51
    .line 52
    invoke-direct {p0, v0, v1, p1}, Ljv5;-><init>(Leu5;Lgy5;Lqn5;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_1
    new-instance p1, Lbd5;

    .line 57
    .line 58
    sget-object v1, Lgy5;->d:Lgy5;

    .line 59
    .line 60
    invoke-direct {p1, v0, v1, p0}, Lbd5;-><init>(Leu5;Lgy5;Lnp1;)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_2
    invoke-virtual {v1}, Lgy5;->k()Lm61;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, p1}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    new-instance p1, Lbd5;

    .line 75
    .line 76
    invoke-virtual {v1}, Lgy5;->p()Lgy5;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {p1, v0, v1, p0}, Lbd5;-><init>(Leu5;Lgy5;Lnp1;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method
