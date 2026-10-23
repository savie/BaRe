.class public final Lgj8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llj6;


# instance fields
.field public final a:Lbw1;

.field public final b:Ljava/lang/Object;

.field public final c:Luq4;


# direct methods
.method public constructor <init>(Lbw1;Luq4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgj8;->a:Lbw1;

    .line 5
    .line 6
    iput-object p3, p0, Lgj8;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lgj8;->c:Luq4;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lev5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lgj8;->a(Lev5;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lgj8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lgj8;->c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lgj8;->a:Lbw1;

    .line 10
    .line 11
    instance-of v3, v2, Llj6;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    check-cast v2, Llj6;

    .line 16
    .line 17
    invoke-interface {v2, p1, p2}, Lbw1;->c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p1, Lkd5;

    .line 23
    .line 24
    iget-object p0, p0, Lgj8;->c:Luq4;

    .line 25
    .line 26
    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p2, "Element \'%s\' is already used with %s at %s"

    .line 31
    .line 32
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final d(Lmc4;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lgj8;->a:Lbw1;

    .line 10
    .line 11
    instance-of v2, p0, Llj6;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast p0, Llj6;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lbw1;->d(Lmc4;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    new-instance p0, Lkd5;

    .line 23
    .line 24
    const-string p1, "Element \'%s\' declared twice at %s"

    .line 25
    .line 26
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p0, p1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method
