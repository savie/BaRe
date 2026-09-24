.class public final Ltc8;
.super Lem4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# instance fields
.field public final a:Lrc8;

.field public final b:Lem4;


# direct methods
.method public constructor <init>(Lrc8;Lem4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltc8;->a:Lrc8;

    .line 5
    .line 6
    iput-object p2, p0, Ltc8;->b:Lem4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lc87;Lkp0;)Lem4;
    .locals 2

    .line 1
    iget-object v0, p0, Ltc8;->b:Lem4;

    .line 2
    .line 3
    instance-of v1, v0, Liv1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lc87;->w(Lem4;Lkp0;)Lem4;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, v0

    .line 13
    :goto_0
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    new-instance p2, Ltc8;

    .line 17
    .line 18
    iget-object p0, p0, Ltc8;->a:Lrc8;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1}, Ltc8;-><init>(Lrc8;Lem4;)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method

.method public final b()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltc8;->b:Lem4;

    .line 2
    .line 3
    iget-object p0, p0, Ltc8;->a:Lrc8;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ltc8;->b:Lem4;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
