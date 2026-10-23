.class public final Lkx3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkx3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lkx3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p0, Lkx3;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lkx3;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Le38;

    .line 18
    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lri7;

    .line 22
    .line 23
    iget-object v0, p0, Le38;->b:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v3, p0, Le38;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Lri7;

    .line 29
    .line 30
    if-eq v3, p1, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Le38;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lri7;

    .line 35
    .line 36
    if-ne v3, p1, :cond_2

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0, p1, v2}, Le38;->b(Lri7;I)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    monitor-exit v0

    .line 42
    :goto_0
    return v1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :pswitch_0
    iget-object p0, p0, Lkx3;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Llx3;

    .line 49
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    .line 51
    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Ljx3;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Llx3;->b(Ljx3;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    if-ne v0, v2, :cond_4

    .line 63
    .line 64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ljx3;

    .line 67
    .line 68
    iget-object p0, p0, Llx3;->d:Lyk6;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lyk6;->i(Lpx7;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    move v1, v3

    .line 74
    :goto_1
    return v1

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
