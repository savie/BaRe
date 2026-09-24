.class public final synthetic Lza4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lgm7;

.field public final synthetic c:Ljl0;

.field public final synthetic d:Lfh6;


# direct methods
.method public synthetic constructor <init>(Lgm7;Ljl0;Lfh6;I)V
    .locals 0

    .line 1
    iput p4, p0, Lza4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lza4;->b:Lgm7;

    .line 4
    .line 5
    iput-object p2, p0, Lza4;->c:Ljl0;

    .line 6
    .line 7
    iput-object p3, p0, Lza4;->d:Lfh6;

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
    .locals 11

    .line 1
    iget p1, p0, Lza4;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lza4;->d:Lfh6;

    .line 4
    .line 5
    iget-object v1, p0, Lza4;->c:Ljl0;

    .line 6
    .line 7
    iget-object p0, p0, Lza4;->b:Lgm7;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lj57;

    .line 13
    .line 14
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 15
    .line 16
    check-cast v0, Lg57;

    .line 17
    .line 18
    iget-object p1, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 19
    .line 20
    iget-object v0, v0, Lg57;->A:Lcom/google/android/material/button/MaterialButton;

    .line 21
    .line 22
    iget-object v1, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 23
    .line 24
    new-instance v2, Lu45;

    .line 25
    .line 26
    const/16 v3, 0xc

    .line 27
    .line 28
    invoke-direct {v2, v1, v0, v3}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lbb;

    .line 36
    .line 37
    const/4 v5, 0x7

    .line 38
    invoke-direct {v4, v0, v5}, Lbb;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iput-object v4, v2, Ll90;->f:Ljava/lang/Object;

    .line 42
    .line 43
    const v0, 0x7f0f0027

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ll90;->f(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v2, Ll90;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lfc5;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v4, v0, Lfc5;->f:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x0

    .line 63
    move v6, v5

    .line 64
    :goto_0
    const/4 v7, 0x2

    .line 65
    if-ge v6, v4, :cond_7

    .line 66
    .line 67
    invoke-virtual {v0, v6}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const v10, 0x7f0a007e

    .line 76
    .line 77
    .line 78
    if-ne v9, v10, :cond_0

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->canRunManually()Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->canRunManually()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_0
    const v10, 0x7f0a0065

    .line 96
    .line 97
    .line 98
    if-ne v9, v10, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    sget-object v10, Li57;->a:[I

    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    aget v9, v10, v9

    .line 111
    .line 112
    if-eq v9, v3, :cond_3

    .line 113
    .line 114
    if-eq v9, v7, :cond_2

    .line 115
    .line 116
    const/4 v7, 0x3

    .line 117
    if-eq v9, v7, :cond_1

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    const v7, 0x7f13043b

    .line 122
    .line 123
    .line 124
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const v7, 0x7f13005b

    .line 130
    .line 131
    .line 132
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    const v7, 0x7f1301b0

    .line 138
    .line 139
    .line 140
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    :goto_1
    if-eqz v7, :cond_4

    .line 145
    .line 146
    move v9, v3

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move v9, v5

    .line 149
    :goto_2
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    .line 151
    .line 152
    if-eqz v7, :cond_6

    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    const v7, 0x7f0a0054

    .line 167
    .line 168
    .line 169
    if-ne v9, v7, :cond_6

    .line 170
    .line 171
    invoke-interface {v8}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {v1}, Lsz8;->r(Landroid/content/Context;)I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 193
    .line 194
    .line 195
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_7
    new-instance v0, Ljq0;

    .line 200
    .line 201
    invoke-direct {v0, v7, p0, p1}, Ljq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iput-object v0, v2, Ll90;->e:Ljava/lang/Object;

    .line 205
    .line 206
    invoke-virtual {v2}, Lu45;->j()V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_0
    check-cast p0, Lbb4;

    .line 211
    .line 212
    check-cast v1, Lxa4;

    .line 213
    .line 214
    check-cast v0, Lab4;

    .line 215
    .line 216
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 217
    .line 218
    if-eqz p0, :cond_8

    .line 219
    .line 220
    invoke-virtual {v0}, Lfh6;->b()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    :cond_8
    return-void

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
