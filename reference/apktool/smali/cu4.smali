.class public final Lcu4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ltt4;
.implements Leu4;


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lhu4;


# direct methods
.method public constructor <init>(Lhu4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcu4;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    iput-object p1, p0, Lcu4;->b:Lhu4;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lhu4;->a(Leu4;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ldu4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcu4;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Ldu4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcu4;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcu4;->b:Lhu4;

    .line 7
    .line 8
    iget-object p0, p0, Lhu4;->d:Lst4;

    .line 9
    .line 10
    sget-object v0, Lst4;->a:Lst4;

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ldu4;->e()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lst4;->d:Lst4;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-ltz p0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ldu4;->m()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-interface {p1}, Ldu4;->h()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onDestroy(Lfu4;)V
    .locals 2
    .annotation runtime Lct5;
        value = .enum Lrt4;->ON_DESTROY:Lrt4;
    .end annotation

    .line 1
    iget-object v0, p0, Lcu4;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {v0}, Lxh8;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ldu4;

    .line 22
    .line 23
    invoke-interface {v1}, Ldu4;->e()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Lhu4;->f(Leu4;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onStart(Lfu4;)V
    .locals 0
    .annotation runtime Lct5;
        value = .enum Lrt4;->ON_START:Lrt4;
    .end annotation

    .line 1
    iget-object p0, p0, Lcu4;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lxh8;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ldu4;

    .line 22
    .line 23
    invoke-interface {p1}, Ldu4;->m()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onStop(Lfu4;)V
    .locals 0
    .annotation runtime Lct5;
        value = .enum Lrt4;->ON_STOP:Lrt4;
    .end annotation

    .line 1
    iget-object p0, p0, Lcu4;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lxh8;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ldu4;

    .line 22
    .line 23
    invoke-interface {p1}, Ldu4;->h()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
