.class public final Ly89;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Lu50;


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public volatile b:J

.field public volatile c:J

.field public final d:Lag9;

.field public final e:Lc9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu50;

    .line 2
    .line 3
    const-string v1, "FirebaseAuth:"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "TokenRefresher"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Lu50;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ly89;->f:Lu50;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v1, Ly89;->f:Lu50;

    .line 8
    .line 9
    const-string v2, "Initializing TokenRefresher"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lu50;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Ly89;->a:Lcom/google/firebase/FirebaseApp;

    .line 18
    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    .line 20
    .line 21
    const-string v1, "TokenRefresher"

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lag9;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Ly89;->d:Lag9;

    .line 44
    .line 45
    new-instance v0, Lc9;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p0, p1}, Lc9;-><init>(Ly89;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Ly89;->e:Lc9;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    sget-object v0, Ly89;->f:Lu50;

    .line 2
    .line 3
    iget-wide v1, p0, Ly89;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Ly89;->a:Lcom/google/firebase/FirebaseApp;

    .line 6
    .line 7
    invoke-static {v3}, Lo49;->d(Lcom/google/firebase/FirebaseApp;)Lo49;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-wide/32 v3, 0x493e0

    .line 15
    .line 16
    .line 17
    sub-long/2addr v1, v3

    .line 18
    const-string v5, "Scheduling refresh for "

    .line 19
    .line 20
    invoke-static {v1, v2, v5}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lu50;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Ly89;->d:Lag9;

    .line 31
    .line 32
    iget-object v1, p0, Ly89;->e:Lc9;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v5, p0, Ly89;->b:J

    .line 42
    .line 43
    sub-long/2addr v5, v0

    .line 44
    iget-object v0, p0, Ly89;->a:Lcom/google/firebase/FirebaseApp;

    .line 45
    .line 46
    invoke-static {v0}, Lo49;->d(Lcom/google/firebase/FirebaseApp;)Lo49;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sub-long/2addr v5, v3

    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    const-wide/16 v2, 0x3e8

    .line 61
    .line 62
    div-long/2addr v0, v2

    .line 63
    iput-wide v0, p0, Ly89;->c:J

    .line 64
    .line 65
    iget-object v0, p0, Ly89;->d:Lag9;

    .line 66
    .line 67
    iget-object v1, p0, Ly89;->e:Lc9;

    .line 68
    .line 69
    iget-wide v4, p0, Ly89;->c:J

    .line 70
    .line 71
    mul-long/2addr v4, v2

    .line 72
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    return-void
.end method
