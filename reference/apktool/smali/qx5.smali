.class public final Lqx5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcs1;


# instance fields
.field public final a:Lgw6;

.field public final b:Ljava/lang/String;

.field public final c:Lqt3;

.field public final d:Lgv7;


# direct methods
.method public constructor <init>(Lgw6;Ljava/lang/String;Lqt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqx5;->a:Lgw6;

    .line 5
    .line 6
    iput-object p2, p0, Lqx5;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lqx5;->c:Lqt3;

    .line 9
    .line 10
    new-instance p1, Lkn3;

    .line 11
    .line 12
    const/16 p2, 0xd

    .line 13
    .line 14
    invoke-direct {p1, p0, p2}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lgv7;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lqx5;->d:Lgv7;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lqx5;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lfw6;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final w(ZLqt3;Lkv1;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p3}, Ljv1;->getContext()Lox1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lox5;->b:Lge;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lox1;->get(Lnx1;)Lmx1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lox5;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lox5;->a:Lnx5;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v0

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p2, p1, p3}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance p1, Lnx5;

    .line 28
    .line 29
    iget-object v1, p0, Lqx5;->d:Lgv7;

    .line 30
    .line 31
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lfw6;

    .line 36
    .line 37
    iget-object p0, p0, Lqx5;->c:Lqt3;

    .line 38
    .line 39
    invoke-direct {p1, p0, v1}, Lnx5;-><init>(Lqt3;Lfw6;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lox5;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lox5;-><init>(Lnx5;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lpx5;

    .line 48
    .line 49
    invoke-direct {v1, p2, p1, v0}, Lpx5;-><init>(Lqt3;Lnx5;Ljv1;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v1, p3}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
