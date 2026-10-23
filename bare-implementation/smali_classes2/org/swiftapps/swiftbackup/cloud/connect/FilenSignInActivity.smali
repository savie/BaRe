.class public final Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic N:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public M:Lwa;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgl0;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lgl0;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lec3;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Luf;

    .line 19
    .line 20
    const/4 v4, 0x7

    .line 21
    invoke-direct {v3, p0, v4}, Luf;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lvf;

    .line 25
    .line 26
    const/4 v5, 0x5

    .line 27
    invoke-direct {v4, p0, v5}, Lvf;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->K:Ll90;

    .line 34
    .line 35
    new-instance v0, Llf;

    .line 36
    .line 37
    const/16 v1, 0x13

    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lgv7;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->L:Lgv7;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lub5;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lub5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()Lec3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lec3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lub5;->b:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lec3;->e:Lex6;

    .line 12
    .line 13
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lac3;->a:Lac3;

    .line 18
    .line 19
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lub5;->f:Ld62;

    .line 30
    .line 31
    iget-object v1, v1, Ld62;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 32
    .line 33
    invoke-virtual {v1}, Llo;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    xor-int/2addr v1, v2

    .line 45
    if-ne v1, v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iget-object p0, p0, Lub5;->k:Lx00;

    .line 52
    .line 53
    iget-object p0, p0, Lx00;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 56
    .line 57
    invoke-virtual {p0}, Llo;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-lez p0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lub5;->f:Ld62;

    .line 9
    .line 10
    iget-object p1, p1, Ld62;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 11
    .line 12
    const v0, 0x7f0a0210

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lub5;->k:Lx00;

    .line 23
    .line 24
    iget-object p1, p1, Lx00;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 27
    .line 28
    const v0, 0x7f0a0211

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lub5;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lil0;->B()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Lub5;->e:Landroidx/core/widget/NestedScrollView;

    .line 51
    .line 52
    const/4 v0, 0x7

    .line 53
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Lub5;->c:Landroid/widget/ImageView;

    .line 61
    .line 62
    sget-object v0, Ldd1;->Filen:Ldd1;

    .line 63
    .line 64
    invoke-virtual {v0}, Ldd1;->getBrandingIconRes()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p1, p1, Lub5;->n:Landroid/widget/TextView;

    .line 76
    .line 77
    const v0, 0x7f13023a

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p1, p1, Lub5;->d:Landroid/widget/ImageView;

    .line 88
    .line 89
    const/16 v0, 0x8

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object p1, p1, Lub5;->f:Ld62;

    .line 99
    .line 100
    iget-object p1, p1, Ld62;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 101
    .line 102
    const v0, 0x7f130214

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object p1, p1, Lub5;->k:Lx00;

    .line 117
    .line 118
    iget-object p1, p1, Lx00;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 121
    .line 122
    const v0, 0x7f1303f7

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object p1, p1, Lub5;->f:Ld62;

    .line 141
    .line 142
    iget-object p1, p1, Ld62;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 143
    .line 144
    const/16 v1, 0x21

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object p1, p1, Lub5;->k:Lx00;

    .line 154
    .line 155
    iget-object p1, p1, Lx00;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 158
    .line 159
    const/16 v1, 0x81

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Ld7;

    .line 165
    .line 166
    const/16 v1, 0xa

    .line 167
    .line 168
    invoke-direct {p1, p0, v1}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iget-object v1, v1, Lub5;->f:Ld62;

    .line 176
    .line 177
    iget-object v1, v1, Ld62;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 178
    .line 179
    new-instance v2, Lvb3;

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-direct {v2, p1, v3}, Lvb3;-><init>(Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v1, v1, Lub5;->k:Lx00;

    .line 193
    .line 194
    iget-object v1, v1, Lx00;->c:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 197
    .line 198
    new-instance v2, Lk52;

    .line 199
    .line 200
    invoke-direct {v2, p1, v0}, Lk52;-><init>(Ljava/lang/Object;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iget-object p1, p1, Lub5;->b:Lcom/google/android/material/button/MaterialButton;

    .line 211
    .line 212
    new-instance v1, Lmf;

    .line 213
    .line 214
    const/4 v2, 0x6

    .line 215
    invoke-direct {v1, p0, v2}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iget-object p1, p1, Lec3;->e:Lex6;

    .line 226
    .line 227
    new-instance v1, Loh1;

    .line 228
    .line 229
    const/4 v7, 0x0

    .line 230
    const/4 v8, 0x1

    .line 231
    const/4 v2, 0x1

    .line 232
    const-class v4, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 233
    .line 234
    const-string v5, "onSignInStateChanged"

    .line 235
    .line 236
    const-string v6, "onSignInStateChanged(Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInVM$State;)V"

    .line 237
    .line 238
    move-object v3, p0

    .line 239
    invoke-direct/range {v1 .. v8}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 240
    .line 241
    .line 242
    new-instance p0, Lnv1;

    .line 243
    .line 244
    invoke-direct {p0, v1, v0}, Lnv1;-><init>(Ljava/lang/Object;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v3, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->P()V

    .line 251
    .line 252
    .line 253
    return-void
.end method
