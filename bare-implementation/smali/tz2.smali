.class public final synthetic Ltz2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lga6;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lps4;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ll72;

    .line 34
    .line 35
    const-string v2, "Firebase Lite"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v1, v2, v3, v0}, Ll72;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v0, Lbh2;

    .line 46
    .line 47
    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lps4;

    .line 48
    .line 49
    invoke-virtual {v1}, Lps4;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    invoke-direct {v0, p0, v1}, Lbh2;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method
