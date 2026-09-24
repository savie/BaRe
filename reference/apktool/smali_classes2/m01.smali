.class public final Lm01;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lm01;->l:Landroid/widget/TextView;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 9

    .line 1
    check-cast p1, Ll01;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 8
    .line 9
    iget-object p2, p1, Ll01;->D:Lm01;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Ll01;->C:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Ll01;->v:Lmi7;

    .line 25
    .line 26
    iget-object v3, v2, Lmi7;->d:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/material/card/MaterialCardView;->setCheckable(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p1, Ll01;->x:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getPhotoUri()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v3, v4}, Ljm1;->D(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p1, Ll01;->z:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getNumber()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p1, Ll01;->y:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getType()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const/4 v6, 0x2

    .line 79
    const/4 v7, 0x4

    .line 80
    if-eq v5, v6, :cond_5

    .line 81
    .line 82
    const/4 v6, 0x3

    .line 83
    if-eq v5, v6, :cond_4

    .line 84
    .line 85
    if-eq v5, v7, :cond_3

    .line 86
    .line 87
    const/4 v6, 0x5

    .line 88
    const v8, 0x7f0800f8

    .line 89
    .line 90
    .line 91
    if-eq v5, v6, :cond_2

    .line 92
    .line 93
    const/4 v6, 0x6

    .line 94
    if-eq v5, v6, :cond_1

    .line 95
    .line 96
    const v5, 0x7f060065

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const v8, 0x7f0800f5

    .line 101
    .line 102
    .line 103
    const v5, 0x7f060064

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    const v5, 0x7f06006a

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const v8, 0x7f0800ff

    .line 112
    .line 113
    .line 114
    const v5, 0x7f06006b

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const v8, 0x7f0800fd

    .line 119
    .line 120
    .line 121
    const v5, 0x7f060066

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    const v8, 0x7f0800fe

    .line 126
    .line 127
    .line 128
    const v5, 0x7f060069

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-static {v4, v8, v5}, Lorg/swiftapps/swiftbackup/common/Const;->w(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, p1, Ll01;->A:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getNumber()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, p1, Ll01;->B:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getDate()J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    invoke-static {v4, v5}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {v4}, Lsz8;->w(Landroid/content/Context;)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p0}, Lgm7;->q(Ljl0;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v2, Lmi7;->d:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lk01;

    .line 198
    .line 199
    invoke-direct {v1, p2, p0, p1}, Lk01;-><init>(Lm01;Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;Ll01;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    .line 204
    .line 205
    iget-object p0, p1, Ll01;->w:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 206
    .line 207
    new-instance p2, Lmf;

    .line 208
    .line 209
    invoke-direct {p2, p1, v7}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0176

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Ll01;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Ll01;-><init>(Lm01;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public final y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm01;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Lgm7;->b()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const v3, 0x7f1304e7

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v3, "app_locale"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v3, "prefs"

    .line 42
    .line 43
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    :goto_0
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v4}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, "/"

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, " "

    .line 97
    .line 98
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
