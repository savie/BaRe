.class public final synthetic Lgp3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg36;
.implements Lat5;
.implements Lig2;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgp3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lgp3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lga6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgp3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lig2;

    .line 4
    .line 5
    iget-object p0, p0, Lgp3;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lig2;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lig2;->c(Lga6;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p1}, Lig2;->c(Lga6;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lgp3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N:Lgv7;

    .line 6
    .line 7
    iget-object p0, p0, Lgp3;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lry5;

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    check-cast v3, Ljava/util/List;

    .line 13
    .line 14
    sget p1, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lt55;

    .line 28
    .line 29
    new-instance v2, Lgi4;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v2, v4, v0, p0}, Lgi4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p1, Lgm7;->j:Lqt3;

    .line 36
    .line 37
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lt55;

    .line 42
    .line 43
    new-instance v2, Lfm7;

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/16 v7, 0x1e

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-direct/range {v2 .. v7}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, v2, p1}, Lgm7;->w(Lfm7;Z)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->L:Lgv7;

    .line 58
    .line 59
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 64
    .line 65
    invoke-static {p0}, Lsz8;->W(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->M:Lgv7;

    .line 69
    .line 70
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    invoke-static {p0}, Lsz8;->c0(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lgp3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkp3;

    .line 4
    .line 5
    iget-object p0, p0, Lgp3;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lzk3;

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const v1, 0x7f0a004f

    .line 14
    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v0, Ll30;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-direct {v0, v1, p1, p0}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    const v1, 0x7f0a005f

    .line 44
    .line 45
    .line 46
    if-ne p1, v1, :cond_1

    .line 47
    .line 48
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 49
    .line 50
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p0, p0, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroid/content/Intent;

    .line 60
    .line 61
    const-class v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 62
    .line 63
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "extra_folder_item"

    .line 67
    .line 68
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const/16 v0, 0x137c

    .line 76
    .line 77
    invoke-virtual {p1, p0, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    const v1, 0x7f0a0058

    .line 83
    .line 84
    .line 85
    if-ne p1, v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p0, p0, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v0, Ld11;

    .line 101
    .line 102
    const/16 v1, 0xa

    .line 103
    .line 104
    invoke-direct {v0, v1, p1, p0}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const v1, 0x7f0a005a

    .line 112
    .line 113
    .line 114
    const v2, 0x7f1300f1

    .line 115
    .line 116
    .line 117
    const v3, 0x7f1301e5

    .line 118
    .line 119
    .line 120
    const v4, 0x7f140160

    .line 121
    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    if-ne p1, v1, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v1, Lhv1;

    .line 131
    .line 132
    invoke-direct {v1, p1, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 133
    .line 134
    .line 135
    new-instance v6, Ls35;

    .line 136
    .line 137
    invoke-direct {v6, p1, v4, v1, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 138
    .line 139
    .line 140
    const p1, 0x7f1301f4

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, p1}, Lv75;->v(I)V

    .line 144
    .line 145
    .line 146
    const p1, 0x7f1301f5

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, p1}, Lv75;->n(I)V

    .line 150
    .line 151
    .line 152
    new-instance p1, Lfp3;

    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-direct {p1, v1, v0, p0}, Lfp3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v3, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v2, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    const v1, 0x7f0a0057

    .line 169
    .line 170
    .line 171
    if-ne p1, v1, :cond_4

    .line 172
    .line 173
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance v1, Lhv1;

    .line 178
    .line 179
    invoke-direct {v1, p1, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 180
    .line 181
    .line 182
    new-instance v6, Ls35;

    .line 183
    .line 184
    invoke-direct {v6, p1, v4, v1, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 185
    .line 186
    .line 187
    const p1, 0x7f1301eb

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, p1}, Lv75;->v(I)V

    .line 191
    .line 192
    .line 193
    const p1, 0x7f1301ec

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, p1}, Lv75;->n(I)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lb52;

    .line 200
    .line 201
    const/4 v1, 0x2

    .line 202
    invoke-direct {p1, v1, v0, p0}, Lb52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v3, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v2, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 212
    .line 213
    .line 214
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 215
    return p0
.end method
