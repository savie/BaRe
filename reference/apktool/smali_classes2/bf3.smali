.class public final Lbf3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lmt3;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lmt3;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbf3;->a:Lmt3;

    .line 5
    .line 6
    iput-object p2, p0, Lbf3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    iput-object p3, p0, Lbf3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Lbf3;->d:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lwc2;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lbf3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Exception;

    .line 8
    .line 9
    const-string v1, "runTransaction: "

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    const-string v3, "FireSynchronizer"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lue3;

    .line 32
    .line 33
    invoke-static {v0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Lue3;-><init>(Lwc2;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 44
    .line 45
    iget-object p2, p1, Lwc2;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v4, 0x4

    .line 52
    const/4 v5, 0x0

    .line 53
    const-string v1, "FireSynchronizer"

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lue3;

    .line 60
    .line 61
    invoke-direct {p2, p1}, Lue3;-><init>(Lwc2;)V

    .line 62
    .line 63
    .line 64
    move-object p1, p2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    .line 68
    sget-object p1, Lte3;->a:Lte3;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    sget-object p1, Lse3;->a:Lse3;

    .line 72
    .line 73
    :goto_0
    iget-object p2, p0, Lbf3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lbf3;->d:Ljava/util/concurrent/CountDownLatch;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 81
    .line 82
    .line 83
    return-void
.end method
