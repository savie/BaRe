.class public final synthetic Luf1;
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
    iput p1, p0, Luf1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Luf1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Luf1;->c:Ljava/lang/Object;

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
    .locals 13

    .line 1
    iget v0, p0, Luf1;->a:I

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Luf1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Luf1;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lmt3;

    .line 14
    .line 15
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 16
    .line 17
    invoke-interface {p0, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lzm;

    .line 22
    .line 23
    check-cast v3, Lkn3;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lu45;

    .line 29
    .line 30
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    const p0, 0x7f0f001d

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ll90;->f(I)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Lfs;

    .line 40
    .line 41
    const/16 p1, 0x8

    .line 42
    .line 43
    invoke-direct {p0, v3, p1}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    iput-object p0, v0, Ll90;->e:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0}, Lu45;->j()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    check-cast p0, Lqj2;

    .line 53
    .line 54
    check-cast v3, Lzj2;

    .line 55
    .line 56
    iget-object p0, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-object v0, Lq05;->DEVICE:Lq05;

    .line 62
    .line 63
    iget-object v1, v3, Lzj2;->a:Liz4;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0(Landroid/view/View;Lq05;Liz4;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_2
    check-cast p0, Lpj2;

    .line 70
    .line 71
    check-cast v3, Lwj2;

    .line 72
    .line 73
    iget-object p0, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 79
    .line 80
    iget-object v1, v3, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 81
    .line 82
    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0(Landroid/view/View;Lq05;Liz4;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_3
    check-cast p0, Lgj2;

    .line 87
    .line 88
    move-object v5, v3

    .line 89
    check-cast v5, Lji;

    .line 90
    .line 91
    iget-object v9, p0, Lgj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 92
    .line 93
    new-instance v10, Lkf;

    .line 94
    .line 95
    const/16 p1, 0x17

    .line 96
    .line 97
    invoke-direct {v10, p0, p1}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    sget-object p0, Lzn4;->a:Lzn4;

    .line 101
    .line 102
    new-instance v4, Lkj;

    .line 103
    .line 104
    const/4 v12, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x1

    .line 108
    const/4 v11, 0x0

    .line 109
    invoke-direct/range {v4 .. v12}, Lkj;-><init>(Lji;ZZZLk28;Lbt3;ZLjv1;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v4}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_4
    check-cast p0, Lkb2;

    .line 117
    .line 118
    check-cast v3, Lmt3;

    .line 119
    .line 120
    iget-object p0, p0, Lkb2;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-interface {v3, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_5
    check-cast p0, Lid2;

    .line 140
    .line 141
    check-cast v3, Ljd2;

    .line 142
    .line 143
    invoke-static {p0, v3}, Lgm7;->x(Lgm7;Ljl0;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_6
    check-cast p0, Lwf1;

    .line 148
    .line 149
    check-cast v3, Ldd1;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance v0, Lu45;

    .line 155
    .line 156
    iget-object v2, p0, Lwf1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 157
    .line 158
    invoke-direct {v0, v2, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 159
    .line 160
    .line 161
    const p1, 0x7f0f000b

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 165
    .line 166
    .line 167
    iget-object p1, v0, Ll90;->c:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, Lfc5;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    :goto_0
    iget-object v2, p1, Lfc5;->f:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-ge v1, v2, :cond_2

    .line 182
    .line 183
    add-int/lit8 v2, v1, 0x1

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_1

    .line 190
    .line 191
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const v5, 0x7f0a007f

    .line 196
    .line 197
    .line 198
    if-ne v4, v5, :cond_0

    .line 199
    .line 200
    invoke-virtual {v3}, Ldd1;->getAllowSavingSetupDetails()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    .line 206
    .line 207
    :cond_0
    move v1, v2

    .line 208
    goto :goto_0

    .line 209
    :cond_1
    invoke-static {}, Ll0;->a()V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_2
    new-instance p1, Lvf1;

    .line 214
    .line 215
    invoke-direct {p1, p0, v3}, Lvf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {v0}, Lu45;->j()V

    .line 221
    .line 222
    .line 223
    :goto_1
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
