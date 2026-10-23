.class public final synthetic Lvx7;
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
    iput p2, p0, Lvx7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lvx7;->b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

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
    iget v0, p0, Lvx7;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lvx7;->b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

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
    iget-object p0, p0, Lay7;->e:Lfm1;

    .line 15
    .line 16
    iget-object p0, p0, Lfm1;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 22
    .line 23
    new-instance v0, Lbs6;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p0, v1}, Lbs6;-><init>(Lk28;Z)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
