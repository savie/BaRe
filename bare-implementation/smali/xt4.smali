.class public final Lxt4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;
.implements Lxx1;


# instance fields
.field public final a:Lhu4;

.field public final b:Lox1;


# direct methods
.method public constructor <init>(Lhu4;Lox1;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxt4;->a:Lhu4;

    .line 8
    .line 9
    iput-object p2, p0, Lxt4;->b:Lox1;

    .line 10
    .line 11
    iget-object p0, p1, Lhu4;->d:Lst4;

    .line 12
    .line 13
    sget-object p1, Lst4;->a:Lst4;

    .line 14
    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    sget-object p0, Lnh4;->b:Lnh4;

    .line 18
    .line 19
    invoke-interface {p2, p0}, Lox1;->get(Lnx1;)Lmx1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Loh4;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-interface {p0, p1}, Loh4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public final d()Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxt4;->b:Lox1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Lfu4;Lrt4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lxt4;->a:Lhu4;

    .line 2
    .line 3
    iget-object p2, p1, Lhu4;->d:Lst4;

    .line 4
    .line 5
    sget-object v0, Lst4;->a:Lst4;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-gtz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lhu4;->f(Leu4;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lnh4;->b:Lnh4;

    .line 17
    .line 18
    iget-object p0, p0, Lxt4;->b:Lox1;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Lox1;->get(Lnx1;)Lmx1;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Loh4;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-interface {p0, p1}, Loh4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
