.class public final synthetic Lc11;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc11;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc11;->b:Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lc11;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lc11;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lc11;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p0, p0, Lc11;->b:Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 12
    .line 13
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    sget-object p1, Ltb1;->a:Ltb1;

    .line 20
    .line 21
    invoke-static {}, Lqb1;->m()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ld11;

    .line 29
    .line 30
    invoke-direct {p1, v0, p0, v1}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const v1, 0x7f1301e2

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v1, p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void

    .line 41
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 42
    .line 43
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->T:I

    .line 44
    .line 45
    invoke-static {p0, v1, v0}, Lzm5;->D(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
