.class public abstract Lgm7;
.super Lhg6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/lang/String;

.field public e:Lfm7;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Lqt3;

.field public h:Le7;

.field public i:Lmt3;

.field public j:Lqt3;

.field public k:Z


# direct methods
.method public constructor <init>(Lfm7;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lhg6;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lgm7;->d:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Lfm7;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/16 v6, 0x1f

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lgm7;->e:Lfm7;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lgm7;->k:Z

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lgm7;->w(Lfm7;Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public static x(Lgm7;Ljl0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lgm7;->q(Ljl0;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lgm7;->v(Ljl0;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 2
    .line 3
    iget-object p0, p0, Lfm7;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgm7;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Lfh6;ILjava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of p3, p1, Lkx4;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    move-object p3, p1

    .line 9
    check-cast p3, Lkx4;

    .line 10
    .line 11
    invoke-virtual {p0}, Lgm7;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p3, p2, v0}, Lkx4;->r(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Lhg6;->h(Lfh6;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Lfh6;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lgm7;->n(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lgm7;->o(Landroid/view/View;I)Lfh6;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final k()I
    .locals 0

    .line 1
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 2
    .line 3
    iget-object p0, p0, Lfm7;->b:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final l()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 2
    .line 3
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lov2;->a:Lov2;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 15
    .line 16
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, v2

    .line 38
    check-cast v3, Ljl0;

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lgm7;->q(Ljl0;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public final m(I)Ljl0;
    .locals 0

    .line 1
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 2
    .line 3
    iget-object p0, p0, Lfm7;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljl0;

    .line 10
    .line 11
    return-object p0
.end method

.method public abstract n(I)I
.end method

.method public abstract o(Landroid/view/View;I)Lfh6;
.end method

.method public final p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgm7;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lgm7;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lgm7;->k()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-ne v0, p0, :cond_0

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

.method public final q(Ljl0;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 5
    .line 6
    iget-object p0, p0, Lfm7;->b:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgm7;->g:Lqt3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lgm7;->k()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lgm7;->b()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    move v1, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lgm7;->k()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    move v3, v4

    .line 31
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {v0, v1, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final s(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, v0, Lfm7;->a:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {p1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljl0;

    .line 33
    .line 34
    invoke-interface {v2}, Ljl0;->getItemId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    sget-object p1, Lsv2;->a:Lsv2;

    .line 48
    .line 49
    :goto_1
    const/16 v1, 0x1d

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v0, v2, p1, v3, v1}, Lfm7;->a(Lfm7;Ljava/util/List;Ljava/util/Set;ZI)Lfm7;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1, v3}, Lgm7;->w(Lfm7;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final t(Ljava/util/Set;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, p1, v3, v1}, Lfm7;->a(Lfm7;Ljava/util/List;Ljava/util/Set;ZI)Lfm7;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1, v3}, Lgm7;->w(Lfm7;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final u(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1b

    .line 5
    .line 6
    invoke-static {v0, v1, v1, p1, v2}, Lfm7;->a(Lfm7;Ljava/util/List;Ljava/util/Set;ZI)Lfm7;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lgm7;->w(Lfm7;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final v(Ljl0;ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, v0, Lfm7;->b:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p2, v1}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p2, v0, Lfm7;->b:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {p1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p2, v1}, Lsz8;->K(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iput-object p2, v0, Lfm7;->b:Ljava/util/Set;

    .line 33
    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lgm7;->e:Lfm7;

    .line 37
    .line 38
    iget-object p2, p2, Lfm7;->a:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 p2, -0x1

    .line 45
    if-eq p1, p2, :cond_1

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_1
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lhg6;->f(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Lgm7;->r()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public w(Lfm7;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lfm7;->b()Lfm7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lfm7;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {p1}, Lfm7;->b()Lfm7;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v2, p1, Lfm7;->a:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lgm7;->e:Lfm7;

    .line 19
    .line 20
    iget-boolean v3, v0, Lfm7;->c:Z

    .line 21
    .line 22
    iget-boolean v4, p1, Lfm7;->c:Z

    .line 23
    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    sget-object v3, Lsv2;->a:Lsv2;

    .line 29
    .line 30
    iput-object v3, p1, Lfm7;->b:Ljava/util/Set;

    .line 31
    .line 32
    :cond_0
    iget-object v3, p0, Lgm7;->h:Le7;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Le7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    if-nez p2, :cond_5

    .line 44
    .line 45
    iget-boolean p2, p1, Lfm7;->d:Z

    .line 46
    .line 47
    if-nez p2, :cond_5

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_5

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p2, Lim7;

    .line 63
    .line 64
    iget-boolean v3, p0, Lgm7;->k:Z

    .line 65
    .line 66
    invoke-direct {p2, v0, p1, v3}, Lim7;-><init>(Lfm7;Lfm7;Z)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lji8;->c(Ljm1;)Lbl2;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object v3, p0, Lgm7;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-virtual {v3}, Landroidx/recyclerview/widget/a;->s0()Landroid/os/Parcelable;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move-object v3, v4

    .line 90
    :goto_0
    new-instance v5, Lz28;

    .line 91
    .line 92
    const/4 v6, 0x2

    .line 93
    invoke-direct {v5, p0, v6}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v5}, Lbl2;->a(Lz28;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lgm7;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    :cond_4
    instance-of p2, v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 108
    .line 109
    if-nez p2, :cond_6

    .line 110
    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    iget-object p2, p0, Lgm7;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/a;->r0(Landroid/os/Parcelable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lhg6;->e()V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_2
    iget-object p2, v0, Lfm7;->b:Ljava/util/Set;

    .line 131
    .line 132
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    iget-object p1, p1, Lfm7;->b:Ljava/util/Set;

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eq p2, p1, :cond_7

    .line 143
    .line 144
    invoke-virtual {p0}, Lgm7;->r()V

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eq p1, p2, :cond_8

    .line 156
    .line 157
    iget-object p1, p0, Lgm7;->i:Lmt3;

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    invoke-virtual {p0}, Lgm7;->b()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :cond_8
    return-void
.end method
