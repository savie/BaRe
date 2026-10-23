.class public final synthetic Lhs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lhs;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhs;->b:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget p1, p0, Lhs;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lhs;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Ln97;

    .line 12
    .line 13
    iget-object p1, p0, Ln97;->f:Lcz;

    .line 14
    .line 15
    sget-object v0, Lm97;->CLEAR_LABELS:Lm97;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lol1;->j(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 25
    .line 26
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 27
    .line 28
    new-instance p1, Lak;

    .line 29
    .line 30
    const/16 v1, 0x1b

    .line 31
    .line 32
    invoke-direct {p1, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 40
    .line 41
    iget-boolean p1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W:Z

    .line 42
    .line 43
    xor-int/2addr p1, v2

    .line 44
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W:Z

    .line 45
    .line 46
    new-instance p1, Lpb0;

    .line 47
    .line 48
    invoke-direct {p1}, Lpb0;-><init>()V

    .line 49
    .line 50
    .line 51
    const-wide/16 v0, 0xa0

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lia8;->P(J)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lia8;->Q(Landroid/animation/TimeInterpolator;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Lz44;->H:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-static {v0, p1}, Lda8;->a(Landroid/view/ViewGroup;Ly98;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V:Lv54;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->b0(Lv54;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    check-cast p0, La14;

    .line 77
    .line 78
    iget-object p1, p0, La14;->n:Lqt3;

    .line 79
    .line 80
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    .line 82
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-interface {p1, v0, v2}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lol1;->j(Z)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_3
    check-cast p0, Lkp3;

    .line 92
    .line 93
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v1, Lgj;

    .line 98
    .line 99
    const/16 v3, 0x13

    .line 100
    .line 101
    invoke-direct {v1, p0, v3}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0, v1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 109
    .line 110
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sget-object p1, Lzn4;->a:Lzn4;

    .line 117
    .line 118
    new-instance p1, Lak;

    .line 119
    .line 120
    const/16 v0, 0x11

    .line 121
    .line 122
    invoke-direct {p1, p0, v0}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 130
    .line 131
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->N()Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 142
    .line 143
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 144
    .line 145
    new-instance p1, Lck;

    .line 146
    .line 147
    const/16 v1, 0xb

    .line 148
    .line 149
    invoke-direct {p1, p0, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 150
    .line 151
    .line 152
    invoke-static {p0, v0, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 157
    .line 158
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 159
    .line 160
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 169
    .line 170
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 177
    .line 178
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 179
    .line 180
    const/16 p1, 0x8

    .line 181
    .line 182
    new-array p1, p1, [Lod3;

    .line 183
    .line 184
    sget-object v0, Ldd3;->a:Ldd3;

    .line 185
    .line 186
    aput-object v0, p1, v1

    .line 187
    .line 188
    sget-object v0, Lud3;->a:Lud3;

    .line 189
    .line 190
    aput-object v0, p1, v2

    .line 191
    .line 192
    sget-object v0, Lgd3;->a:Lgd3;

    .line 193
    .line 194
    const/4 v1, 0x2

    .line 195
    aput-object v0, p1, v1

    .line 196
    .line 197
    sget-object v0, Lmd3;->a:Lmd3;

    .line 198
    .line 199
    const/4 v1, 0x3

    .line 200
    aput-object v0, p1, v1

    .line 201
    .line 202
    sget-object v0, Lrd3;->a:Lrd3;

    .line 203
    .line 204
    const/4 v1, 0x4

    .line 205
    aput-object v0, p1, v1

    .line 206
    .line 207
    sget-object v0, Lde3;->a:Lde3;

    .line 208
    .line 209
    const/4 v1, 0x5

    .line 210
    aput-object v0, p1, v1

    .line 211
    .line 212
    sget-object v0, Ljd3;->a:Ljd3;

    .line 213
    .line 214
    const/4 v1, 0x6

    .line 215
    aput-object v0, p1, v1

    .line 216
    .line 217
    sget-object v0, Lae3;->a:Lae3;

    .line 218
    .line 219
    const/4 v1, 0x7

    .line 220
    aput-object v0, p1, v1

    .line 221
    .line 222
    invoke-static {p1}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lod3;

    .line 241
    .line 242
    invoke-interface {v0}, Lod3;->reset()V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->c0()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
