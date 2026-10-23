.class public final synthetic Lsz2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lga6;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lps4;

    .line 2
    .line 3
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Ll72;

    .line 27
    .line 28
    const-string v1, "Firebase Background"

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-direct {v0, v1, v2, p0}, Ll72;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x4

    .line 36
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v0, Lbh2;

    .line 41
    .line 42
    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lps4;

    .line 43
    .line 44
    invoke-virtual {v1}, Lps4;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    .line 50
    invoke-direct {v0, p0, v1}, Lbh2;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method
