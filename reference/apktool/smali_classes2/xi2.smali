.class public final synthetic Lxi2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxi2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

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
    .locals 3

    .line 1
    iget v0, p0, Lxi2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lxi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 9
    .line 10
    new-instance v0, Lt35;

    .line 11
    .line 12
    invoke-direct {v0}, Lt35;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x190

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lbj2;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lbj2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 34
    .line 35
    new-instance v0, Lxi0;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lxi0;-><init>(Lil0;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
