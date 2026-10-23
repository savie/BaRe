.class public final Lxy4;
.super Lyy4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;


# instance fields
.field public final e:Lfu4;

.field public final synthetic f:Lzy4;


# direct methods
.method public constructor <init>(Lzy4;Lfu4;Les5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxy4;->f:Lzy4;

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lyy4;-><init>(Lzy4;Les5;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lxy4;->e:Lfu4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxy4;->e:Lfu4;

    .line 2
    .line 3
    invoke-interface {v0}, Lfu4;->getLifecycle()Lhu4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lhu4;->f(Leu4;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Lfu4;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxy4;->e:Lfu4;

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lxy4;->e:Lfu4;

    .line 2
    .line 3
    invoke-interface {p0}, Lfu4;->getLifecycle()Lhu4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lhu4;->d:Lst4;

    .line 8
    .line 9
    sget-object v0, Lst4;->d:Lst4;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-ltz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final g(Lfu4;Lrt4;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lxy4;->e:Lfu4;

    .line 2
    .line 3
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p2, p2, Lhu4;->d:Lst4;

    .line 8
    .line 9
    sget-object v0, Lst4;->a:Lst4;

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lxy4;->f:Lzy4;

    .line 14
    .line 15
    iget-object p0, p0, Lyy4;->a:Les5;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lzy4;->j(Les5;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eq v0, p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lxy4;->d()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Lyy4;->a(Z)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lhu4;->d:Lst4;

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    move-object v0, p2

    .line 39
    move-object p2, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method
