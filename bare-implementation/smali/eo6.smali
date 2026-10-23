.class public abstract Leo6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ldv1;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ld98;

.field public d:Lmi2;

.field public e:Lkg4;

.field public final f:Lh80;

.field public g:Z

.field public final h:Ljava/lang/ThreadLocal;

.field public final i:Ljava/util/LinkedHashMap;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh80;

    .line 5
    .line 6
    new-instance v1, Lp02;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v8, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const-class v4, Leo6;

    .line 12
    .line 13
    const-string v5, "onClosed"

    .line 14
    .line 15
    const-string v6, "onClosed()V"

    .line 16
    .line 17
    move-object v3, p0

    .line 18
    invoke-direct/range {v1 .. v8}, Lp02;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lh80;-><init>(Lp02;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, v3, Leo6;->f:Lh80;

    .line 25
    .line 26
    new-instance p0, Ljava/lang/ThreadLocal;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p0, v3, Leo6;->h:Ljava/lang/ThreadLocal;

    .line 32
    .line 33
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p0, v3, Leo6;->i:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    iput-boolean p0, v3, Leo6;->j:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lx65;->q0(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

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
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ln81;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ln81;->a()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object p0, Lov2;->a:Lov2;

    .line 59
    .line 60
    return-object p0
.end method

.method public abstract b()Lkg4;
.end method

.method public c()Lgu2;
    .locals 1

    .line 1
    new-instance p0, Lio5;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lio5;-><init>(I)V

    .line 5
    .line 6
    .line 7
    throw p0
.end method

.method public final d()Lkg4;
    .locals 0

    .line 1
    iget-object p0, p0, Leo6;->e:Lkg4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "internalTracker"

    .line 7
    .line 8
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final e()Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Leo6;->a:Ldv1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ldv1;->a:Lox1;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "coroutineScope"

    .line 9
    .line 10
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public f()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    sget-object v1, Lsv2;->a:Lsv2;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public g()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    sget-object p0, Lsv2;->a:Lsv2;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Lx65;->q0(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    if-ge p0, v0, :cond_0

    .line 16
    .line 17
    move p0, v0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-object p0, p0, Leo6;->d:Lmi2;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lmi2;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lns7;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    const-string p0, "connectionManager"

    .line 16
    .line 17
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method

.method public final i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Leo6;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Leo6;->d:Lmi2;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lmi2;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lns7;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Lns7;->L()Lis3;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lis3;->a0()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    const-string p0, "Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room."

    .line 31
    .line 32
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    const-string p0, "connectionManager"

    .line 37
    .line 38
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0

    .line 43
    :cond_2
    return v1
.end method

.method public final j()Z
    .locals 0

    .line 1
    iget-object p0, p0, Leo6;->d:Lmi2;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lmi2;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lis3;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lis3;->isOpen()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    const-string p0, "connectionManager"

    .line 19
    .line 20
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0
.end method

.method public final k(ZLqt3;Lkv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Leo6;->d:Lmi2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lmi2;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcs1;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2, p3}, Lcs1;->w(ZLqt3;Lkv1;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "connectionManager"

    .line 15
    .line 16
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method
