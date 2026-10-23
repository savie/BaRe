.class public final synthetic Lrj1;
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

    .line 14
    iput p1, p0, Lrj1;->a:I

    iput-object p2, p0, Lrj1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lrj1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lrj1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljx2;Ljh6;Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lrj1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrj1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lrj1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lrj1;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget p1, p0, Lrj1;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Lrj1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lrj1;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lrj1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/String;

    .line 17
    .line 18
    sget p1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lq63;

    .line 25
    .line 26
    const/4 p0, 0x2

    .line 27
    invoke-direct {v4, v0, p0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lq63;

    .line 31
    .line 32
    invoke-direct {v5, p2, p0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lzn4;->a:Lzn4;

    .line 36
    .line 37
    new-instance v1, Lxo7;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct/range {v1 .. v6}, Lxo7;-><init>(ZLyo7;Lq63;Lq63;Ljv1;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    invoke-static {p0, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    check-cast p0, Lkj3;

    .line 50
    .line 51
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 52
    .line 53
    check-cast p2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 54
    .line 55
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 56
    .line 57
    if-eqz p0, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object v1, Lto3;->LOCAL:Lto3;

    .line 72
    .line 73
    invoke-virtual {p0, p1, v1}, Lkk3;->j(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lto3;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    if-eqz p2, :cond_1

    .line 77
    .line 78
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object p2, Lto3;->CLOUD:Lto3;

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2}, Lkk3;->j(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lto3;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void

    .line 102
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 103
    .line 104
    check-cast v0, Ljava/util/List;

    .line 105
    .line 106
    check-cast p2, Ljh6;

    .line 107
    .line 108
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 109
    .line 110
    iget p1, p2, Ljh6;->a:I

    .line 111
    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lvi1;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->Y(Lvi1;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_2
    check-cast p0, Ljx2;

    .line 123
    .line 124
    check-cast p2, Ljh6;

    .line 125
    .line 126
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 127
    .line 128
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 129
    .line 130
    iget p1, p2, Ljh6;->a:I

    .line 131
    .line 132
    check-cast p0, Lkx2;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lkx2;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;

    .line 139
    .line 140
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->P()Lorg/swiftapps/swiftbackup/appconfigs/list/a;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    sget-object p2, Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;->Asc:Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;

    .line 145
    .line 146
    invoke-virtual {p1, p0, p2}, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->k(Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_3
    check-cast p0, Lmt3;

    .line 151
    .line 152
    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .line 154
    check-cast p2, Ljh6;

    .line 155
    .line 156
    iget p1, p2, Ljh6;->a:I

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
