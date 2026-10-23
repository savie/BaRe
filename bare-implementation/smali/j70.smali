.class public final synthetic Lj70;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj70;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj70;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lj70;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lj70;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Llv7;

    .line 9
    .line 10
    iget-object p0, p0, Llv7;->a:Liv7;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    check-cast p0, Lcom/jcraft/jsch/Session;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->t()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    check-cast p0, Landroid/content/Context;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    .line 36
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lis;

    .line 51
    .line 52
    const/4 v2, 0x7

    .line 53
    invoke-direct {v1, p0, v2}, Lis;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_2
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    :try_start_0
    invoke-static {}, Lk55;->j()Lzd7;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v1, Lj55;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lj55;-><init>(Lzd7;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lkn5; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    return-void

    .line 78
    :pswitch_3
    check-cast p0, Lt22;

    .line 79
    .line 80
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$hCjUIdJpkFZZ_R4jPEVDfW9xTXk(Lt22;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_4
    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_5
    check-cast p0, Lbt3;

    .line 91
    .line 92
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
