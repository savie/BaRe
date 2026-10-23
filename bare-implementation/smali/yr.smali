.class public final synthetic Lyr;
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
    iput p2, p0, Lyr;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lyr;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

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
    iget v0, p0, Lyr;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lyr;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 9
    .line 10
    new-instance v0, Lsc3;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lsc3;-><init>(Ldt;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ldt;->Z:Lsc3;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 19
    .line 20
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lzn4;->a:Lzn4;

    .line 30
    .line 31
    new-instance v0, Lb56;

    .line 32
    .line 33
    invoke-direct {v0, p0, v1}, Lb56;-><init>(Lk28;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 41
    .line 42
    const-class v2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 43
    .line 44
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "labels_activity_mode"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
