.class public final synthetic Lnq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lnq1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lnq1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lnq1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lnq1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lnq1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lnq1;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lnq1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lnq1;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lrh3;

    .line 14
    .line 15
    check-cast v2, Lus5;

    .line 16
    .line 17
    check-cast v1, Lwa;

    .line 18
    .line 19
    invoke-virtual {p0}, Lrh3;->o()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_1

    .line 47
    .line 48
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    move-object v0, p1

    .line 55
    :cond_1
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lyx5;->i()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p1, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 77
    .line 78
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v3, "saved_old_user_passwords_set"

    .line 87
    .line 88
    invoke-static {p1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    const-string p1, "UserOldPasswordsDialog"

    .line 100
    .line 101
    const-string v0, "Old passwords updated"

    .line 102
    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lrh3;->y()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lus5;->invoke()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lho;->dismiss()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_0
    check-cast p0, Lh56;

    .line 117
    .line 118
    check-cast v2, Lr14;

    .line 119
    .line 120
    check-cast v1, Lf56;

    .line 121
    .line 122
    iget-object p1, v2, Lr14;->a:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const v2, 0x7f0d014d

    .line 136
    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const v2, 0x7f0a03b2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lorg/swiftapps/swiftbackup/views/ProviderChipGroup;

    .line 151
    .line 152
    iget-object v3, v1, Lf56;->b:Ljava/util/ArrayList;

    .line 153
    .line 154
    new-instance v4, Ljava/util/ArrayList;

    .line 155
    .line 156
    const/16 v5, 0xa

    .line 157
    .line 158
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_5

    .line 174
    .line 175
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Lg56;

    .line 180
    .line 181
    new-instance v6, Lha6;

    .line 182
    .line 183
    iget-object v7, v5, Lg56;->a:Ljava/lang/String;

    .line 184
    .line 185
    iget v5, v5, Lg56;->b:I

    .line 186
    .line 187
    invoke-direct {v6, v7, v5}, Lha6;-><init>(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    invoke-virtual {v2, v4}, Lorg/swiftapps/swiftbackup/views/ProviderChipGroup;->setChips(Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lh56;->u:Lil0;

    .line 198
    .line 199
    new-instance v2, Lhv1;

    .line 200
    .line 201
    const v3, 0x7f140160

    .line 202
    .line 203
    .line 204
    invoke-direct {v2, p0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    new-instance v4, Ls35;

    .line 211
    .line 212
    invoke-direct {v4, p0, v3, v2, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 213
    .line 214
    .line 215
    iget-object p0, v1, Lf56;->a:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v1, v4, Lva;->b:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v1, Lra;

    .line 220
    .line 221
    iput-object p0, v1, Lra;->d:Ljava/lang/CharSequence;

    .line 222
    .line 223
    iput-object p1, v1, Lra;->s:Landroid/view/View;

    .line 224
    .line 225
    const p0, 0x7f130105

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, p0, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_1
    check-cast p0, Lqj2;

    .line 236
    .line 237
    check-cast v2, Ljava/lang/String;

    .line 238
    .line 239
    check-cast v1, Lzj2;

    .line 240
    .line 241
    iget-object p1, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 242
    .line 243
    new-instance v0, Lxs;

    .line 244
    .line 245
    const/4 v3, 0x3

    .line 246
    invoke-direct {v0, v3, p0, v1}, Lxs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-static {p1, v2, v0}, Ltu0;->y(Lil0;Ljava/lang/String;Lmt3;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_2
    check-cast p0, Lpq1;

    .line 254
    .line 255
    check-cast v2, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 256
    .line 257
    check-cast v1, Loq1;

    .line 258
    .line 259
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 260
    .line 261
    if-eqz p0, :cond_6

    .line 262
    .line 263
    invoke-virtual {v1}, Lfh6;->b()I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-interface {p0, v2, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    :cond_6
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
