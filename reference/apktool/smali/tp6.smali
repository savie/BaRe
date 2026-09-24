.class public final synthetic Ltp6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/ServiceConnection;

.field public final synthetic b:Lyp6;

.field public final synthetic c:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ServiceConnection;Lyp6;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltp6;->a:Landroid/content/ServiceConnection;

    .line 5
    .line 6
    iput-object p2, p0, Ltp6;->b:Lyp6;

    .line 7
    .line 8
    iput-object p3, p0, Ltp6;->c:Landroid/os/IBinder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltp6;->b:Lyp6;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/ComponentName;

    .line 6
    .line 7
    iget-object v1, p0, Ltp6;->a:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    iget-object p0, p0, Ltp6;->c:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-interface {v1, v0, p0}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
