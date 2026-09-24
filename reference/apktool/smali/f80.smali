.class public final Lf80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf80;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsa7;Lfo8;Ls79;Lkm8;Lig9;Lka2;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lf80;->h:Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lf80;->i:Ljava/io/Serializable;

    .line 82
    iput-object p1, p0, Lf80;->a:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lf80;->b:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lf80;->d:Ljava/lang/Object;

    .line 85
    iput-object p4, p0, Lf80;->c:Ljava/lang/Object;

    .line 86
    iput-object p5, p0, Lf80;->e:Ljava/lang/Object;

    .line 87
    iput-object p6, p0, Lf80;->f:Ljava/lang/Object;

    .line 88
    iput-object p7, p0, Lf80;->g:Ljava/lang/Object;

    .line 89
    invoke-static {p3}, Lge;->u(Lfo8;)Lfa7;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lg90;Lz80;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf80;->h:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move v2, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v0

    .line 18
    :goto_0
    if-eqz p2, :cond_1

    .line 19
    .line 20
    move v3, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v3, v0

    .line 23
    :goto_1
    xor-int/2addr v2, v3

    .line 24
    const-string v3, "exactly one of authResponse or authError should be non-null"

    .line 25
    .line 26
    invoke-static {v3, v2}, Ljb9;->h(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lf80;->i:Ljava/io/Serializable;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    move v3, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v3, v0

    .line 37
    :goto_2
    if-eqz p2, :cond_3

    .line 38
    .line 39
    move v0, v1

    .line 40
    :cond_3
    xor-int/2addr v0, v3

    .line 41
    const-string v3, "exactly one of authResponse or authException should be non-null"

    .line 42
    .line 43
    invoke-static {v3, v0}, Ljb9;->h(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_5

    .line 47
    .line 48
    iget p1, p2, Lz80;->a:I

    .line 49
    .line 50
    if-ne p1, v1, :cond_4

    .line 51
    .line 52
    iput-object p2, p0, Lf80;->g:Ljava/lang/Object;

    .line 53
    .line 54
    :cond_4
    return-void

    .line 55
    :cond_5
    iput-object p1, p0, Lf80;->d:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v2, p0, Lf80;->c:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v2, p0, Lf80;->e:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object v2, p0, Lf80;->a:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object v2, p0, Lf80;->g:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object p2, p1, Lg90;->D:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p2, :cond_6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    iget-object p1, p1, Lg90;->w:Le90;

    .line 71
    .line 72
    iget-object p2, p1, Le90;->i:Ljava/lang/String;

    .line 73
    .line 74
    :goto_3
    iput-object p2, p0, Lf80;->b:Ljava/lang/Object;

    .line 75
    .line 76
    return-void
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "FirebaseCrashlytics"

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lf80;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lz80;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lf80;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ln58;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Ln58;->c:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    iget-object p0, p0, Lf80;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lg90;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lg90;->A:Ljava/lang/String;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    return-object v1
.end method

.method public b(I)Lfa7;
    .locals 8

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {v1, p1}, Ldj7;->a(II)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-nez v3, :cond_3

    .line 10
    .line 11
    iget-object v3, p0, Lf80;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lkm8;

    .line 14
    .line 15
    invoke-virtual {v3}, Lkm8;->m()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v5, p0, Lf80;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Ls79;

    .line 25
    .line 26
    invoke-virtual {v5, v3}, Ls79;->o(Lorg/json/JSONObject;)Lfa7;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "Loaded cached settings: "

    .line 31
    .line 32
    invoke-static {v3, v6}, Lf80;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lf80;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lfo8;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-static {v4, p1}, Ldj7;->a(II)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    iget-wide p0, v5, Lfa7;->c:J

    .line 53
    .line 54
    cmp-long p0, p0, v6

    .line 55
    .line 56
    if-gez p0, :cond_0

    .line 57
    .line 58
    const-string p0, "Cached settings have expired."

    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-static {v0, p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :try_start_1
    const-string p0, "Returning cached settings."

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-static {v0, p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    .line 83
    :cond_1
    return-object v5

    .line 84
    :goto_0
    move-object v2, v5

    .line 85
    goto :goto_1

    .line 86
    :catch_1
    move-exception p0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    :try_start_2
    const-string p0, "No cached settings data found."

    .line 89
    .line 90
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-static {v0, p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .line 98
    .line 99
    :cond_3
    return-object v2

    .line 100
    :goto_1
    const-string p1, "Failed to get cached settings"

    .line 101
    .line 102
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-object v2
.end method

.method public c()Lfa7;
    .locals 0

    .line 1
    iget-object p0, p0, Lf80;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lfa7;

    .line 10
    .line 11
    return-object p0
.end method

.method public e(Ln58;Lz80;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    move v0, v1

    .line 11
    :cond_1
    xor-int/2addr v0, v2

    .line 12
    const-string v1, "exactly one of tokenResponse or authException should be non-null"

    .line 13
    .line 14
    invoke-static {v1, v0}, Ljb9;->h(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lf80;->g:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lz80;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lj15;->e()Lj15;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x5

    .line 32
    const/4 v3, 0x0

    .line 33
    const-string v4, "AuthState.update should not be called in an error state (%s), call updatewith the result of the fresh authorization response first"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, v4, v0}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lf80;->g:Ljava/lang/Object;

    .line 39
    .line 40
    :cond_2
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget p1, p2, Lz80;->a:I

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    if-ne p1, v0, :cond_5

    .line 46
    .line 47
    iput-object p2, p0, Lf80;->g:Ljava/lang/Object;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iput-object p1, p0, Lf80;->e:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object p2, p1, Ln58;->g:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    iput-object p2, p0, Lf80;->b:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_4
    iget-object p1, p1, Ln58;->f:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    iput-object p1, p0, Lf80;->a:Ljava/lang/Object;

    .line 63
    .line 64
    :cond_5
    return-void
.end method
