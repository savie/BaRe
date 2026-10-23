.class public final synthetic Lwx7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwx7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lwx7;->b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lwx7;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lwx7;->b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->N()Lay7;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lay7;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    sget-object v0, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->a0:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->P(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p0, Lhy7;->a:Lhy7;

    .line 29
    .line 30
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 31
    .line 32
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 33
    .line 34
    invoke-virtual {p0}, Lgz7;->isRunning()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lgz7;->isCancelling()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lgz7;->isWaiting()Z

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
