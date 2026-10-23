.class public final synthetic Lbs;
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
    iput p2, p0, Lbs;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbs;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

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
    .locals 4

    .line 1
    iget v0, p0, Lbs;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lbs;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

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
    iget-object p0, p0, Los;->b:Lx00;

    .line 15
    .line 16
    iget-object p0, p0, Lx00;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 22
    .line 23
    const v0, 0x7f130057

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroid/content/Intent;

    .line 34
    .line 35
    const-class v2, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 36
    .line 37
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "category"

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string v2, "category_title"

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lbe8;->a:Lbe8;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
