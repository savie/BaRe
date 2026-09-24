.class public final synthetic Llf4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lnf4;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lnf4;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llf4;->a:Lnf4;

    .line 5
    .line 6
    iput-boolean p2, p0, Llf4;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Llf4;->a:Lnf4;

    .line 2
    .line 3
    iget-boolean p0, p0, Llf4;->b:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, v0, Lnf4;->h:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, v0, Lnf4;->g:Lmf4;

    .line 11
    .line 12
    sget-object v2, Lmf4;->CHECKING_ROOT:Lmf4;

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-eqz p0, :cond_1

    .line 18
    .line 19
    sget-object p0, Lmf4;->GRANTING_PERMISSIONS:Lmf4;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lnf4;->a(Lmf4;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, v0, Lnf4;->f:Li54;

    .line 25
    .line 26
    invoke-virtual {p0}, Li54;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    sget-object p0, Lmf4;->AWAITING_SHIZUKU:Lmf4;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lnf4;->a(Lmf4;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, v0, Lnf4;->e:Lak;

    .line 38
    .line 39
    invoke-virtual {p0}, Lak;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    monitor-exit v0

    .line 45
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 46
    .line 47
    return-object p0

    .line 48
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method
