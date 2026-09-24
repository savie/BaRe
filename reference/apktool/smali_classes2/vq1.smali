.class public final synthetic Lvq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lvq1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lvq1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lvq1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lvq1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget p1, p0, Lvq1;->a:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iget-object v0, p0, Lvq1;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v1, p0, Lvq1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lvq1;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    sget p1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Lq63;

    .line 26
    .line 27
    const/4 p0, 0x2

    .line 28
    invoke-direct {v5, v1, p0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lq63;

    .line 32
    .line 33
    invoke-direct {v6, v0, p0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lzn4;->a:Lzn4;

    .line 37
    .line 38
    new-instance v2, Lxo7;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct/range {v2 .. v7}, Lxo7;-><init>(ZLyo7;Lq63;Lq63;Ljv1;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 50
    .line 51
    check-cast v1, Liz4;

    .line 52
    .line 53
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 54
    .line 55
    sget p1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {}, Liu;->getEntries()Ljx2;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1}, Liz4;->getBackup()Lgm;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    iget-object p2, p0, Lgm;->a:Lhk;

    .line 74
    .line 75
    :cond_0
    invoke-static {p2}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v0}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v2, Lkk2;

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    invoke-direct/range {v2 .. v7}, Lkk2;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_1
    check-cast p0, Ljx2;

    .line 97
    .line 98
    check-cast v1, Ljh6;

    .line 99
    .line 100
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 101
    .line 102
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 103
    .line 104
    iget p1, v1, Ljh6;->a:I

    .line 105
    .line 106
    check-cast p0, Lkx2;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lkx2;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;

    .line 113
    .line 114
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->P()Lorg/swiftapps/swiftbackup/appconfigs/list/a;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    sget-object p2, Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;->Desc:Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;

    .line 119
    .line 120
    invoke-virtual {p1, p0, p2}, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->k(Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
