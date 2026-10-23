.class public final synthetic Lcg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfg8;

.field public final synthetic b:Loe0;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lfg8;Loe0;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcg8;->a:Lfg8;

    .line 5
    .line 6
    iput-object p2, p0, Lcg8;->b:Loe0;

    .line 7
    .line 8
    iput p3, p0, Lcg8;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcg8;->d:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcg8;->b:Loe0;

    .line 2
    .line 3
    iget v1, p0, Lcg8;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcg8;->d:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-object p0, p0, Lcg8;->a:Lfg8;

    .line 8
    .line 9
    iget-object v3, p0, Lfg8;->f:Lmw6;

    .line 10
    .line 11
    :try_start_0
    iget-object v4, p0, Lfg8;->c:Lmw6;

    .line 12
    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v5, Lrn1;

    .line 17
    .line 18
    const/16 v6, 0x8

    .line 19
    .line 20
    invoke-direct {v5, v4, v6}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v5}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lfg8;->a:Landroid/content/Context;

    .line 27
    .line 28
    const-string v5, "connectivity"

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Lfg8;->a(Loe0;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    new-instance v4, Ldg8;

    .line 55
    .line 56
    invoke-direct {v4, p0, v0, v1}, Ldg8;-><init>(Lfg8;Loe0;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Lmw6;->m(Ldv7;)Ljava/lang/Object;
    :try_end_0
    .catch Lcv7; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    :try_start_1
    iget-object p0, p0, Lfg8;->d:Le41;

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0, v0, v1, v3}, Le41;->d(Loe0;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 79
    .line 80
    .line 81
    throw p0
.end method
