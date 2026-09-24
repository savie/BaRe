.class public final Ljv5;
.super Lgu2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lqn5;


# direct methods
.method public constructor <init>(Leu5;Lgy5;Lqn5;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p2, p1}, Lgu2;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iput-object p3, p0, Ljv5;->d:Lqn5;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

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
    iget-object p0, p0, Ljv5;->d:Lqn5;

    .line 10
    .line 11
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "Overwrite { path=%s, source=%s, snapshot=%s }"

    .line 16
    .line 17
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final x(Lm61;)Lgu2;
    .locals 3

    .line 1
    iget-object v0, p0, Lgu2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgy5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lgy5;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lgu2;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Leu5;

    .line 12
    .line 13
    iget-object p0, p0, Ljv5;->d:Lqn5;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljv5;

    .line 18
    .line 19
    sget-object v1, Lgy5;->d:Lgy5;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lqn5;->m(Lm61;)Lqn5;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, v2, v1, p0}, Ljv5;-><init>(Leu5;Lgy5;Lqn5;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance p1, Ljv5;

    .line 30
    .line 31
    invoke-virtual {v0}, Lgy5;->p()Lgy5;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v2, v0, p0}, Ljv5;-><init>(Leu5;Lgy5;Lqn5;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method
