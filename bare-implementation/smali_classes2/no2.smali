.class public abstract Lno2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq63;

.field public final c:J

.field public d:Lgz7;

.field public final e:Lke;

.field public f:Lmt3;

.field public final k:Lj86;


# direct methods
.method public constructor <init>(JLq63;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p4, p0, Lno2;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lno2;->b:Lq63;

    .line 13
    .line 14
    iput-wide p1, p0, Lno2;->c:J

    .line 15
    .line 16
    sget-object p1, Lgz7;->WAITING:Lgz7;

    .line 17
    .line 18
    iput-object p1, p0, Lno2;->d:Lgz7;

    .line 19
    .line 20
    new-instance p1, Lke;

    .line 21
    .line 22
    const/4 p2, 0x5

    .line 23
    invoke-direct {p1, p2}, Lke;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lno2;->e:Lke;

    .line 27
    .line 28
    new-instance p1, Lj86;

    .line 29
    .line 30
    invoke-direct {p1}, Lj86;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lno2;->k:Lj86;

    .line 34
    .line 35
    return-void
.end method

.method public static h(Lno2;Ljava/lang/Long;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lno2;->f:Lmt3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lno2;->k:Lj86;

    .line 7
    .line 8
    iget-wide v2, p0, Lno2;->c:J

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3, p1}, Lj86;->a(JLjava/lang/Long;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Lke;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    :try_start_0
    sget-object v0, Ld45;->b:Ld45;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    :cond_0
    move-object v0, v1

    .line 37
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    sget-object v0, Lgz7;->RUNNING:Lgz7;

    .line 46
    .line 47
    iput-object v0, p0, Lno2;->d:Lgz7;

    .line 48
    .line 49
    invoke-virtual {p0}, Lno2;->g()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lno2;->d:Lgz7;

    .line 53
    .line 54
    invoke-virtual {v0}, Lgz7;->isCancelled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    sget-object v0, Lgz7;->CANCEL_COMPLETE:Lgz7;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    sget-object v0, Lgz7;->COMPLETE:Lgz7;

    .line 64
    .line 65
    :goto_1
    iput-object v0, p0, Lno2;->d:Lgz7;

    .line 66
    .line 67
    iget-object p0, p0, Lno2;->e:Lke;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_2
    const-string p0, "Check failed."

    .line 71
    .line 72
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public abstract g()V
.end method
