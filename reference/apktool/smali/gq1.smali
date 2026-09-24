.class public final synthetic Lgq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgq1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgq1;->b:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

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
    iget v0, p0, Lgq1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgq1;->b:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 9
    .line 10
    new-instance v0, Lpq1;

    .line 11
    .line 12
    invoke-virtual {p0}, Lk28;->v()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-direct {v0, p0}, Lpq1;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 21
    .line 22
    sget-object v0, Lbr1;->a:Lbr1;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ldk;

    .line 37
    .line 38
    const/16 v2, 0x13

    .line 39
    .line 40
    invoke-direct {v1, v0, v2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lbe8;->a:Lbe8;

    .line 50
    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
