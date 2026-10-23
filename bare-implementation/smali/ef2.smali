.class public final Lef2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;


# instance fields
.field public final a:Llu2;

.field public final b:Lau4;


# direct methods
.method public constructor <init>(Llu2;Lau4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lef2;->a:Llu2;

    .line 5
    .line 6
    iput-object p2, p0, Lef2;->b:Lau4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Lfu4;Lrt4;)V
    .locals 5

    .line 1
    sget-object v0, Ldf2;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lq;->j()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    const-string p0, "ON_ANY must not been send by anybody"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lef2;->a:Llu2;

    .line 23
    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x1c

    .line 27
    .line 28
    if-lt v1, v2, :cond_0

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Laq1;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    new-instance v2, Lpu2;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    const-wide/16 v3, 0x1f4

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Llu2;->a:Lhu4;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lhu4;->f(Leu4;)V

    .line 61
    .line 62
    .line 63
    :pswitch_2
    iget-object p0, p0, Lef2;->b:Lau4;

    .line 64
    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    invoke-interface {p0, p1, p2}, Lau4;->g(Lfu4;Lrt4;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
