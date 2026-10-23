.class public final La72;
.super Lj72;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lgh;


# direct methods
.method public constructor <init>(Lgh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La72;->a:Lgh;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Li72;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p1, Li72;->a:Lr74;

    .line 2
    .line 3
    check-cast v0, Lp74;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp74;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    invoke-virtual {p1}, Li72;->b()Lka;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, La72;->a:Lgh;

    .line 13
    .line 14
    iput-object p1, p0, Lgh;->c:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lgh;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/net/Uri;

    .line 21
    .line 22
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object v1, p1, Lka;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lr74;

    .line 30
    .line 31
    iget-object p1, p1, Lka;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Ld72;

    .line 34
    .line 35
    check-cast v1, Lp74;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, p1, p0, v0, v2}, Lp74;->a(Ld72;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .line 40
    .line 41
    :catch_1
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method
