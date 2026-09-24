.class public final Lgz0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lsb4;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lsb4;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgz0;->a:Lsb4;

    .line 5
    .line 6
    iput-boolean p2, p0, Lgz0;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lgz0;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lm61;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgz0;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lgz0;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lgz0;->a:Lsb4;

    .line 10
    .line 11
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lqn5;->c0(Lm61;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    :cond_1
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_2
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final b(Lgy5;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Lgz0;->b:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lgz0;->c:Z

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lgz0;->a(Lm61;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method
