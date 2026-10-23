.class public final Lr76;
.super Lo3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh41;
.implements Lc77;


# instance fields
.field public final f:Luw0;


# direct methods
.method public constructor <init>(Lox1;Luw0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lo3;-><init>(Lox1;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lr76;->f:Luw0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final Y(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr76;->f:Luw0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Luw0;->g(Ljava/lang/Throwable;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lo3;->e:Lox1;

    .line 13
    .line 14
    invoke-static {p0, p1}, Ly13;->m(Lox1;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final Z(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lbe8;

    .line 2
    .line 3
    iget-object p0, p0, Lr76;->f:Luw0;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Luw0;->g(Ljava/lang/Throwable;Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lr76;->f:Luw0;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lc77;->c(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lci4;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Lph4;

    .line 11
    .line 12
    invoke-virtual {p0}, Lo3;->o()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, v0, v1, p0}, Lph4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Loh4;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lr76;->m(Ljava/util/concurrent/CancellationException;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Lbe8;->a:Lbe8;

    .line 2
    .line 3
    iget-object p0, p0, Lr76;->f:Luw0;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lc77;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final m(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lci4;->T(Lci4;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lr76;->f:Luw0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Luw0;->g(Ljava/lang/Throwable;Z)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lci4;->l(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
