.class public final Lfj5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lnh;

.field public final b:Lgy5;


# direct methods
.method public constructor <init>(Lqn5;)V
    .locals 2

    .line 1
    new-instance v0, Lnh;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lgy5;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-direct {p1, v1}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lfj5;->a:Lnh;

    .line 19
    .line 20
    iput-object p1, p0, Lfj5;->b:Lgy5;

    .line 21
    .line 22
    iget-object p0, v0, Lnh;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lqn5;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lqn5;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Lrd2;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lrd2;-><init>(Lgy5;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lrd2;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lfj5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lfj5;

    .line 6
    .line 7
    iget-object v0, p1, Lfj5;->a:Lnh;

    .line 8
    .line 9
    iget-object v1, p0, Lfj5;->a:Lnh;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lfj5;->b:Lgy5;

    .line 18
    .line 19
    iget-object p1, p1, Lfj5;->b:Lgy5;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lgy5;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfj5;->b:Lgy5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgy5;->k()Lm61;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "MutableData { key = "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lm61;->a:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "<none>"

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", value = "

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lfj5;->a:Lnh;

    .line 30
    .line 31
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lqn5;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-interface {p0, v0}, Lqn5;->g0(Z)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " }"

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
