.class public final Lem0;
.super Ln29;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Don\'t know how to handle message: "

    .line 10
    .line 11
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance p1, Ljava/lang/Exception;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "BasePendingResult"

    .line 21
    .line 22
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 29
    .line 30
    sget-object p1, Lcom/google/android/gms/common/api/Status;->n:Lcom/google/android/gms/common/api/Status;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroid/util/Pair;

    .line 39
    .line 40
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-static {}, Le6;->d()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lfn6;

    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    :try_start_0
    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    sget-object p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Ly16;

    .line 56
    .line 57
    throw p0
.end method
