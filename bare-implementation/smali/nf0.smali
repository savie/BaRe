.class public final Lnf0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx23;


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance p0, Lmf0;

    .line 2
    .line 3
    new-instance v0, Lsw0;

    .line 4
    .line 5
    new-instance v1, Lln5;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lln5;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, v1, Lln5;->b:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v3, Le42;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ld42;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lsw0;->d:Lln5;

    .line 29
    .line 30
    iput-object v2, v0, Lsw0;->e:Lgf2;

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    iput-object v2, v0, Lsw0;->a:[B

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput v2, v0, Lsw0;->b:I

    .line 40
    .line 41
    iput-boolean v2, v0, Lsw0;->g:Z

    .line 42
    .line 43
    instance-of v1, v1, Lcp7;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    iput-boolean v1, v0, Lsw0;->f:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-boolean v2, v0, Lsw0;->f:Z

    .line 52
    .line 53
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lmf0;->a:Lsw0;

    .line 57
    .line 58
    return-object p0
.end method
