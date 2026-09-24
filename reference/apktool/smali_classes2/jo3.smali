.class public final synthetic Ljo3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljo3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljo3;->b:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Ljo3;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Ljo3;->b:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 10
    .line 11
    iget-object v1, p1, Lgm7;->e:Lfm7;

    .line 12
    .line 13
    iget-object v1, v1, Lfm7;->b:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const p1, 0x7f1304e3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lzn4;->a:Lzn4;

    .line 32
    .line 33
    new-instance v0, Lcv;

    .line 34
    .line 35
    const/16 v1, 0xe

    .line 36
    .line 37
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->R:Llk3;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget-object v2, v1, Llk3;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1}, Lgm7;->l()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/16 v4, 0xa

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    sparse-switch v3, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :sswitch_0
    const-string p1, "Backup"

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    new-instance p1, Lrj3;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    const/16 v1, 0x1a

    .line 79
    .line 80
    invoke-direct {p1, p0, v0, v5, v1}, Lrj3;-><init>(Lil0;ZLorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lrs;

    .line 84
    .line 85
    const/4 v1, 0x4

    .line 86
    invoke-direct {v0, p0, v1}, Lrs;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lrj3;->k(Lqt3;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :sswitch_1
    const-string v0, "Delete backups"

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget v0, v1, Llk3;->k:I

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v2, Lv20;

    .line 112
    .line 113
    const/4 v3, 0x6

    .line 114
    invoke-direct {v2, v3, p0, p1, v1}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v0, v5, v2}, Lorg/swiftapps/swiftbackup/common/Const;->I(Lzm;Ljava/lang/String;Ljava/lang/String;Lbt3;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :sswitch_2
    const-string p1, "Restore"

    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    iget-boolean p1, v1, Llk3;->f:Z

    .line 131
    .line 132
    new-instance v1, Lln3;

    .line 133
    .line 134
    new-instance v2, Lzi1;

    .line 135
    .line 136
    const/4 v3, 0x3

    .line 137
    invoke-direct {v2, v3}, Lzi1;-><init>(I)V

    .line 138
    .line 139
    .line 140
    const-string v3, ""

    .line 141
    .line 142
    invoke-direct {v1, p0, v3, v0, v2}, Lln3;-><init>(Lil0;Ljava/lang/String;ZLmt3;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Lko3;

    .line 146
    .line 147
    invoke-direct {v0, p0, p1}, Lko3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;Z)V

    .line 148
    .line 149
    .line 150
    iput-object v0, v1, Lln3;->a0:Lqt3;

    .line 151
    .line 152
    invoke-virtual {v1}, Lln3;->l()V

    .line 153
    .line 154
    .line 155
    iget-object p0, v1, Lln3;->X:Lgv7;

    .line 156
    .line 157
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 162
    .line 163
    new-instance p1, Lh7;

    .line 164
    .line 165
    invoke-direct {p1, v1, v4}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lu35;->show()V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :sswitch_3
    const-string v1, "Copy folder setups"

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_2

    .line 182
    .line 183
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-static {p1, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    .line 213
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lzk3;

    .line 218
    .line 219
    iget-object v1, v1, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_1
    sget-object p1, Lzn4;->a:Lzn4;

    .line 226
    .line 227
    new-instance p1, Lrm;

    .line 228
    .line 229
    const/16 v1, 0x8

    .line 230
    .line 231
    invoke-direct {p1, v1, v0, p0}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_2
    :goto_1
    new-instance p0, Lio5;

    .line 239
    .line 240
    const-string p1, "Unhandled batch action: "

    .line 241
    .line 242
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p0

    .line 250
    :cond_3
    :goto_2
    return-void

    .line 251
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 252
    .line 253
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W()Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :sswitch_data_0
    .sparse-switch
        -0x6c73e7c3 -> :sswitch_3
        -0x5b5c9592 -> :sswitch_2
        0x2d82559c -> :sswitch_1
        0x762561e2 -> :sswitch_0
    .end sparse-switch
.end method
