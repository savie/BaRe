.class public final Lpa4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Z


# direct methods
.method public constructor <init>(Lhp4;Ljava/util/Comparator;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lpa4;->a:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    iput-boolean p3, p0, Lpa4;->b:Z

    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Lhp4;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lpa4;->a:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Ljp4;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Lhp4;->r()Lhp4;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p1}, Lhp4;->b()Lhp4;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lpa4;->a:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lpa4;->a:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljp4;

    .line 8
    .line 9
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 10
    .line 11
    iget-object v3, v1, Ljp4;->a:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v4, v1, Ljp4;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Lpa4;->b:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iget-object p0, v1, Ljp4;->c:Lhp4;

    .line 23
    .line 24
    :goto_0
    invoke-interface {p0}, Lhp4;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object v1, p0

    .line 31
    check-cast v1, Ljp4;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Lhp4;->r()Lhp4;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, v1, Ljp4;->d:Lhp4;

    .line 42
    .line 43
    :goto_1
    invoke-interface {p0}, Lhp4;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    move-object v1, p0

    .line 50
    check-cast v1, Ljp4;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Lhp4;->b()Lhp4;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    return-object v2

    .line 61
    :catch_0
    invoke-static {}, Lm0;->d()V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "remove called on immutable collection"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
