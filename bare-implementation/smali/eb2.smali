.class public final Leb2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lsb4;

.field public final b:Lzc2;


# direct methods
.method public constructor <init>(Lzc2;Lsb4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Leb2;->a:Lsb4;

    .line 5
    .line 6
    iput-object p1, p0, Leb2;->b:Lzc2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Leb2;
    .locals 2

    .line 1
    iget-object v0, p0, Leb2;->b:Lzc2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Leb2;->a:Lsb4;

    .line 8
    .line 9
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 10
    .line 11
    new-instance v1, Lgy5;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Leb2;

    .line 21
    .line 22
    invoke-static {p0}, Lsb4;->d(Lqn5;)Lsb4;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, v0, p0}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public final b()Ldb2;
    .locals 3

    .line 1
    iget-object v0, p0, Leb2;->a:Lsb4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsb4;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ldb2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, p0, v0}, Ldb2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public final c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Leb2;->a:Lsb4;

    .line 2
    .line 3
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 4
    .line 5
    invoke-interface {p0}, Lqn5;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1, p0}, Lt62;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DataSnapshot { key = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Leb2;->b:Lzc2;

    .line 9
    .line 10
    invoke-virtual {v1}, Lzc2;->e()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", value = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Leb2;->a:Lsb4;

    .line 23
    .line 24
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p0, v1}, Lqn5;->g0(Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, " }"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
