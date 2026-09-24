.class public final synthetic Ldq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Liq6;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(ILiq6;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ldq6;->a:Liq6;

    .line 5
    .line 6
    iput p1, p0, Ldq6;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Ldq6;->c:Landroid/os/IBinder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldq6;->c:Landroid/os/IBinder;

    .line 2
    .line 3
    iget-object v1, p0, Ldq6;->a:Liq6;

    .line 4
    .line 5
    iget-object v2, v1, Liq6;->c:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget p0, p0, Ldq6;->b:I

    .line 8
    .line 9
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    new-instance v3, Lgq6;

    .line 17
    .line 18
    invoke-direct {v3, p0, v1, v0}, Lgq6;-><init>(ILiq6;Landroid/os/IBinder;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lnd8;->a:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string v0, "IPC"

    .line 32
    .line 33
    invoke-static {v0, p0}, Lji8;->k(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
