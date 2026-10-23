.class public final synthetic Lzr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lzr;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lzr;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

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
    iget v0, p0, Lzr;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lzr;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->p0()Los;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Los;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 21
    .line 22
    sget-object v0, Lmp6;->a:Lmp6;

    .line 23
    .line 24
    invoke-static {}, Lmp6;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lzn4;->a:Lzn4;

    .line 43
    .line 44
    new-instance v0, Lb56;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, p0, v1}, Lb56;-><init>(Lk28;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-class v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 55
    .line 56
    invoke-static {p0, v0}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 60
    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
