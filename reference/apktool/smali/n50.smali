.class public abstract Ln50;
.super Lfu1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# instance fields
.field public final c:Lkp0;

.field public final d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ltn7;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Ln50;->c:Lkp0;

    .line 14
    iput-object p1, p0, Ln50;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ln50;Lkp0;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p1, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Ln50;->c:Lkp0;

    .line 8
    .line 9
    iput-object p3, p0, Ln50;->d:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lc87;Lkp0;)Lem4;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Ltn7;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Ltn7;->k(Lc87;Lkp0;Ljava/lang/Class;)Lbk4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lyj4;->a:Lyj4;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lbk4;->a(Lyj4;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Ln50;->d:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p2, p1}, Ln50;->q(Lkp0;Ljava/lang/Boolean;)Lem4;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    return-object p0
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    sget-object v0, Lmm4;->e:Lmm4;

    .line 2
    .line 3
    invoke-virtual {p4, p1, v0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p4, p2, v0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Ln50;->r(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, p2, v0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final p(Lc87;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ln50;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lx77;->K:Lx77;

    .line 6
    .line 7
    iget-object p1, p1, Lc87;->a:Lv77;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lv77;->l(Lx77;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public abstract q(Lkp0;Ljava/lang/Boolean;)Lem4;
.end method

.method public abstract r(Ljava/lang/Object;Lfk4;Lc87;)V
.end method
