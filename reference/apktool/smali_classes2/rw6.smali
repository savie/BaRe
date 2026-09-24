.class public final Lrw6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lex6;

.field public c:Lqw6;

.field public d:Lvq;

.field public e:Z

.field public final f:Lgv7;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lbt3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrw6;->a:Ljava/lang/Class;

    .line 5
    .line 6
    new-instance p1, Lex6;

    .line 7
    .line 8
    invoke-direct {p1}, Lzy4;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lrw6;->b:Lex6;

    .line 16
    .line 17
    new-instance p1, Lrm;

    .line 18
    .line 19
    const/16 v0, 0xe

    .line 20
    .line 21
    invoke-direct {p1, v0, p2, p0}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lgv7;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lrw6;->f:Lgv7;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object p0, p0, Lrw6;->c:Lqw6;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    iget-object p0, p0, Lqw6;->a:Lpw6;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lpw6;->c:Lgj5;

    .line 10
    .line 11
    invoke-virtual {p0}, Lpw6;->e()Lgz7;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lgz7;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lpw6;->l:Z

    .line 23
    .line 24
    sget-object v1, Lgz7;->CANCELLED:Lgz7;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lpw6;->k:Lag8;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lag8;->c:Lgz7;

    .line 34
    .line 35
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lpw6;->k:Lag8;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lag8;->c:Lgz7;

    .line 47
    .line 48
    invoke-virtual {v0}, Lag8;->b()V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Lpw6;->a()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    sget-object p0, Lgz7;->CANCELLED:Lgz7;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method
