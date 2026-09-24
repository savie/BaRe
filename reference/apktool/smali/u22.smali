.class public final Lu22;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu22;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static b(Landroid/content/Context;Lzv3;Lkv1;)Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lo21;

    .line 2
    .line 3
    invoke-static {p2}, Lnc8;->D(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lo21;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lo21;->u()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Landroid/os/CancellationSignal;

    .line 15
    .line 16
    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance p2, Ls22;

    .line 20
    .line 21
    invoke-direct {p2, v5}, Ls22;-><init>(Landroid/os/CancellationSignal;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lo21;->w(Lmt3;)V

    .line 25
    .line 26
    .line 27
    new-instance v7, Lnh;

    .line 28
    .line 29
    const/4 p2, 0x3

    .line 30
    invoke-direct {v7, v0, p2}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Lp22;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p2, Lln5;

    .line 42
    .line 43
    invoke-direct {p2, p0}, Lln5;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p1}, Lln5;->m(Lln5;Ljava/lang/Object;)Lx22;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    new-instance p0, Lyv3;

    .line 53
    .line 54
    const-string p1, "getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lyv3;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, p0}, Lnh;->onError(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v3, p0

    .line 64
    move-object v4, p1

    .line 65
    invoke-interface/range {v2 .. v7}, Lx22;->onGetCredential(Landroid/content/Context;Lzv3;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0}, Lo21;->s()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method


# virtual methods
.method public a(Lf91;Lfz3;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lo21;

    .line 2
    .line 3
    invoke-static {p2}, Lnc8;->D(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lo21;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lo21;->u()V

    .line 12
    .line 13
    .line 14
    new-instance p2, Landroid/os/CancellationSignal;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lq22;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Lq22;-><init>(Landroid/os/CancellationSignal;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lo21;->w(Lmt3;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lz28;

    .line 28
    .line 29
    const/16 v2, 0xa

    .line 30
    .line 31
    invoke-direct {v1, v0, v2}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lp22;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lln5;

    .line 40
    .line 41
    iget-object p0, p0, Lu22;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lln5;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p1, Lf91;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v3, p0}, Lln5;->m(Lln5;Ljava/lang/Object;)Lx22;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-nez p0, :cond_0

    .line 53
    .line 54
    new-instance p0, Ld91;

    .line 55
    .line 56
    invoke-direct {p0}, Ld91;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Lz28;->onError(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p0, p1, p2, v2, v1}, Lx22;->onClearCredential(Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0}, Lo21;->s()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object p1, Lyx1;->a:Lyx1;

    .line 71
    .line 72
    if-ne p0, p1, :cond_1

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 76
    .line 77
    return-object p0
.end method
