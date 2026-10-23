.class public final Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic O:I


# instance fields
.field public final K:Lgv7;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhs4;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->K:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lno5;

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lgv7;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->L:Lgv7;

    .line 31
    .line 32
    new-instance v0, Lqb5;

    .line 33
    .line 34
    const/16 v1, 0xb

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lgv7;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->M:Lgv7;

    .line 45
    .line 46
    new-instance v0, Ln55;

    .line 47
    .line 48
    const/16 v1, 0xc

    .line 49
    .line 50
    invoke-direct {v0, p0, v1}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lgv7;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N:Lgv7;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final N()Lgh8;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->K:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgh8;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()V
    .locals 6

    .line 1
    invoke-static {}, Lyx5;->k()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->M:Lgv7;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lgh8;->p:Landroid/widget/TextView;

    .line 24
    .line 25
    const v4, 0x7f1303fa

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lsz8;->w(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lgh8;->f:Landroid/widget/ImageView;

    .line 47
    .line 48
    const v4, 0x7f080104

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lsz8;->w(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lgh8;->k:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 79
    .line 80
    const v1, 0x7f1300f6

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Lgh8;->p:Landroid/widget/TextView;

    .line 92
    .line 93
    const v4, 0x7f1303bb

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    const v4, 0x7f060023

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v0, v0, Lgh8;->f:Landroid/widget/ImageView;

    .line 118
    .line 119
    const v5, 0x7f08013a

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Lgh8;->k:Landroid/widget/ImageView;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 150
    .line 151
    const v1, 0x7f1303b5

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    .line 156
    .line 157
    :goto_1
    invoke-static {}, Lyx5;->i()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v1, v1, Lgh8;->q:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_2

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iget-object v2, v2, Lgh8;->n:Landroid/widget/ImageView;

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const v2, 0x7f1305c6

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p0}, Lsz8;->x(Landroid/content/Context;)I

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    iget-object p0, p0, Lgh8;->n:Landroid/widget/ImageView;

    .line 220
    .line 221
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lgh8;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lgh8;->b:Lw00;

    .line 18
    .line 19
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lix0;

    .line 22
    .line 23
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lgh8;->r:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->L:Lgv7;

    .line 47
    .line 48
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {p1, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Lgh8;->d:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 66
    .line 67
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p1, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lzf1;

    .line 81
    .line 82
    const/16 v1, 0xa

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->M:Lgv7;

    .line 91
    .line 92
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 97
    .line 98
    new-instance v0, Lh00;

    .line 99
    .line 100
    const/16 v1, 0xd

    .line 101
    .line 102
    invoke-direct {v0, p0, v1}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object p1, p1, Lgh8;->k:Landroid/widget/ImageView;

    .line 113
    .line 114
    new-instance v0, Li00;

    .line 115
    .line 116
    const/16 v1, 0xf

    .line 117
    .line 118
    invoke-direct {v0, p0, v1}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N:Lgv7;

    .line 125
    .line 126
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 131
    .line 132
    new-instance v0, Les;

    .line 133
    .line 134
    invoke-direct {v0, p0, v1}, Les;-><init>(Ljava/lang/Object;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p1, p1, Lgh8;->n:Landroid/widget/ImageView;

    .line 145
    .line 146
    new-instance v0, Lxd1;

    .line 147
    .line 148
    const/16 v1, 0xc

    .line 149
    .line 150
    invoke-direct {v0, p0, v1}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final q()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
