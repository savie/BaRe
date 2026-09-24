.class public final synthetic Lqi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lqi;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lqi;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lqi;->c:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lqi;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lqi;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lqi;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lbs8;

    .line 12
    .line 13
    check-cast v2, Lgu8;

    .line 14
    .line 15
    iget-object p0, p0, Lbs8;->b:Liu8;

    .line 16
    .line 17
    check-cast v2, Lfu8;

    .line 18
    .line 19
    iget-object p1, v2, Lfu8;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lrm;

    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    invoke-direct {v0, v1, p1, p0}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast p0, Lqi7;

    .line 36
    .line 37
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 38
    .line 39
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lfo0;->a(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 47
    .line 48
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 51
    .line 52
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->T:I

    .line 53
    .line 54
    invoke-static {p0, v2, v1}, Lpe4;->D(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    check-cast p0, Lml3;

    .line 59
    .line 60
    check-cast v2, Lul3;

    .line 61
    .line 62
    iget-object p0, p0, Lml3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v0, v2, Lul3;->a:Lkj3;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    const/4 v2, 0x4

    .line 71
    invoke-static {p0, p1, v0, v1, v2}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Landroid/view/View;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_3
    check-cast p0, Lwi;

    .line 76
    .line 77
    check-cast v2, Lpi;

    .line 78
    .line 79
    iget-object p0, p0, Lwi;->g:Lhj;

    .line 80
    .line 81
    if-eqz p0, :cond_0

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lhj;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
