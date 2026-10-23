.class public final synthetic Leq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Liq6;

.field public final synthetic b:[Landroid/os/IBinder;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Liq6;[Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leq6;->a:Liq6;

    .line 5
    .line 6
    iput-object p2, p0, Leq6;->b:[Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Leq6;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Leq6;->d:Landroid/content/Intent;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Leq6;->a:Liq6;

    .line 2
    .line 3
    iget-object v1, p0, Leq6;->b:[Landroid/os/IBinder;

    .line 4
    .line 5
    iget v2, p0, Leq6;->c:I

    .line 6
    .line 7
    iget-object p0, p0, Leq6;->d:Landroid/content/Intent;

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, p0, v2}, Liq6;->a(Landroid/content/Intent;I)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    aput-object p0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v0, "IPC"

    .line 19
    .line 20
    invoke-static {v0, p0}, Lji8;->k(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
