.class public final synthetic Lqo1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lqo1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lqo1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lqo1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lqo1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqo1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ll72;

    .line 9
    .line 10
    iget-object p0, p0, Lqo1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/Runnable;

    .line 13
    .line 14
    iget v1, v0, Ll72;->c:I

    .line 15
    .line 16
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Ll72;->d:Landroid/os/StrictMode$ThreadPolicy;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lqo1;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lt22;

    .line 33
    .line 34
    iget-object p0, p0, Lqo1;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lk12;

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/blockstore/createrestorecredential/CredentialProviderCreateRestoreCredentialController;->$r8$lambda$iBaXXDfBoOTZ3CAIA8M4jEMrOm4(Lt22;Lk12;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lqo1;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Llu5;

    .line 45
    .line 46
    iget-object p0, p0, Lqo1;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lga6;

    .line 49
    .line 50
    iget-object v1, v0, Llu5;->b:Lga6;

    .line 51
    .line 52
    sget-object v2, Llu5;->d:Lku5;

    .line 53
    .line 54
    if-ne v1, v2, :cond_1

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, v0, Llu5;->a:Lig2;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    iput-object v2, v0, Llu5;->a:Lig2;

    .line 61
    .line 62
    iput-object p0, v0, Llu5;->b:Lga6;

    .line 63
    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-interface {v1, p0}, Lig2;->c(Lga6;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_1
    const-string p0, "provide() can be called only once."

    .line 73
    .line 74
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
