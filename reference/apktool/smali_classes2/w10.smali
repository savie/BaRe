.class public final synthetic Lw10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lsa1;ZI)V
    .locals 0

    .line 12
    iput p3, p0, Lw10;->a:I

    iput-object p1, p0, Lw10;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lw10;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLkj3;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lw10;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lw10;->b:Z

    .line 8
    .line 9
    iput-object p2, p0, Lw10;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lw10;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-boolean v2, p0, Lw10;->b:Z

    .line 6
    .line 7
    iget-object p0, p0, Lw10;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 13
    .line 14
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v1

    .line 30
    :pswitch_0
    check-cast p0, Lkj3;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    sget-object v2, Lry5;->u:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lry5;->t:Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object v2, Lry5;->u:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Lry5;->s:Ljava/lang/String;

    .line 52
    .line 53
    :goto_0
    new-instance v1, Lq63;

    .line 54
    .line 55
    iget-object p0, p0, Lkj3;->a:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "Folder-"

    .line 58
    .line 59
    invoke-static {v2, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 v2, 0x2

    .line 64
    invoke-direct {v1, v0, p0, v2}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 69
    .line 70
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->r0:Lkm5;

    .line 71
    .line 72
    new-instance v0, Lpy7;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Lpy7;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lkm5;->a(Lty7;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
