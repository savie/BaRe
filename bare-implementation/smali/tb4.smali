.class public final Ltb4;
.super Ltm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Ltb4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltb4;

    .line 2
    .line 3
    const-class v1, Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ltm7;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ltb4;->d:Ltb4;

    .line 9
    .line 10
    return-void
.end method

.method public static p(Ljava/util/List;Lfk4;Lc87;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lc87;->h(Lfk4;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p1, v1}, Lfk4;->b0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_2
    invoke-static {p2, p1, p0, v0}, Ltn7;->m(Lc87;Ljava/lang/Exception;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Ltm7;->c:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    sget-object v2, Lx77;->K:Lx77;

    .line 15
    .line 16
    iget-object v3, p3, Lc87;->a:Lv77;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lv77;->l(Lx77;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-ne p0, v2, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-static {p1, p2, p3, v1}, Ltb4;->p(Ljava/util/List;Lfk4;Lc87;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {p2, p1}, Lfk4;->U(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2, p3, v0}, Ltb4;->p(Ljava/util/List;Lfk4;Lc87;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lfk4;->n()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    sget-object p0, Lmm4;->e:Lmm4;

    .line 4
    .line 5
    invoke-virtual {p4, p1, p0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p4, p2, p0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p1, p2, p3, v0}, Ltb4;->p(Ljava/util/List;Lfk4;Lc87;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p2, p0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final o(Lkp0;Ljava/lang/Boolean;)Lem4;
    .locals 0

    .line 1
    new-instance p1, Ltb4;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2}, Ltm7;-><init>(Ltm7;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
