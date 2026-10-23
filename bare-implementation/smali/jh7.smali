.class public final Ljh7;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lkh7;


# direct methods
.method public constructor <init>(Lkh7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljh7;->a:Lkh7;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lih7;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, p0, v0}, Lih7;-><init>(Ljh7;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lxh8;->q()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lih7;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lih7;-><init>(Ljh7;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lxh8;->q()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
