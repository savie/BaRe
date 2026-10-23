.class public abstract Lkv1;
.super Lml0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final _context:Lox1;

.field private transient intercepted:Ljv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljv1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljv1;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljv1;->getContext()Lox1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, p1, v0}, Lkv1;-><init>(Ljv1;Lox1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljv1;Lox1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lml0;-><init>(Ljv1;)V

    .line 14
    iput-object p2, p0, Lkv1;->_context:Lox1;

    return-void
.end method


# virtual methods
.method public getContext()Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv1;->_context:Lox1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final intercepted()Ljv1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljv1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkv1;->intercepted:Ljv1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lkv1;->getContext()Lox1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Llv1;->b:Llv1;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lox1;->get(Lnx1;)Lmx1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lrx1;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Lym2;

    .line 20
    .line 21
    invoke-direct {v1, v0, p0}, Lym2;-><init>(Lrx1;Lkv1;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, p0

    .line 26
    :goto_0
    iput-object v1, p0, Lkv1;->intercepted:Ljv1;

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkv1;->intercepted:Ljv1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lkv1;->getContext()Lox1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Llv1;->b:Llv1;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Lox1;->get(Lnx1;)Lmx1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v1, Lrx1;

    .line 21
    .line 22
    check-cast v0, Lym2;

    .line 23
    .line 24
    invoke-virtual {v0}, Lym2;->k()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lym2;->m()Lo21;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lo21;->o()V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object v0, Lkn1;->a:Lkn1;

    .line 37
    .line 38
    iput-object v0, p0, Lkv1;->intercepted:Ljv1;

    .line 39
    .line 40
    return-void
.end method
