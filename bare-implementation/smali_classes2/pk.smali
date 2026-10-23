.class public final Lpk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic c:Lqk;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lqk;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpk;->a:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-object p2, p0, Lpk;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lpk;->c:Lqk;

    .line 9
    .line 10
    iput-object p4, p0, Lpk;->d:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lpk;->c:Lqk;

    .line 2
    .line 3
    iget-object v1, v0, Lqk;->u:Lbt3;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v3, v2

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x6

    .line 23
    invoke-static {v4, p1}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object p1, v2

    .line 29
    :goto_1
    const-string v4, "0"

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    :cond_3
    :goto_2
    move-object p1, v4

    .line 47
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x1

    .line 53
    if-le v5, v7, :cond_6

    .line 54
    .line 55
    invoke-static {p1, v4, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_6

    .line 60
    .line 61
    new-array v5, v7, [C

    .line 62
    .line 63
    const/16 v8, 0x30

    .line 64
    .line 65
    aput-char v8, v5, v6

    .line 66
    .line 67
    invoke-static {p1, v5}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    move-object v4, p1

    .line 79
    :goto_3
    move-object p1, v4

    .line 80
    :cond_6
    invoke-static {v3, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_7

    .line 85
    .line 86
    iget-object v3, p0, Lpk;->a:Landroid/widget/EditText;

    .line 87
    .line 88
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-static {p1}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v3, p0, Lpk;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iget-object v5, v0, Lqk;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 109
    .line 110
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-ne v4, v5, :cond_8

    .line 115
    .line 116
    iput-object p1, v0, Lqk;->A:Ljava/lang/Long;

    .line 117
    .line 118
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    iget-object v5, v0, Lqk;->x:Lcom/google/android/material/textfield/TextInputLayout;

    .line 126
    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-ne v4, v5, :cond_9

    .line 132
    .line 133
    iput-object p1, v0, Lqk;->B:Ljava/lang/Long;

    .line 134
    .line 135
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_9
    const-wide/16 v0, 0x0

    .line 139
    .line 140
    iget-object p0, p0, Lpk;->d:Landroid/content/Context;

    .line 141
    .line 142
    if-eqz p1, :cond_a

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    cmp-long v4, v4, v0

    .line 149
    .line 150
    if-lez v4, :cond_a

    .line 151
    .line 152
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    goto :goto_4

    .line 157
    :cond_a
    const v4, 0x7f0401d7

    .line 158
    .line 159
    .line 160
    invoke-static {p0, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    :goto_4
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 173
    .line 174
    .line 175
    if-eqz p1, :cond_b

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    const-wide/32 v8, 0x100000

    .line 182
    .line 183
    .line 184
    mul-long/2addr v4, v8

    .line 185
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    goto :goto_5

    .line 190
    :cond_b
    move-object p1, v2

    .line 191
    :goto_5
    if-eqz p1, :cond_d

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    cmp-long v0, v4, v0

    .line 198
    .line 199
    if-gtz v0, :cond_c

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    const-wide/32 v4, 0x40000000

    .line 207
    .line 208
    .line 209
    cmp-long p0, v0, v4

    .line 210
    .line 211
    if-ltz p0, :cond_e

    .line 212
    .line 213
    sget-object p0, Lp93;->a:Lp93;

    .line 214
    .line 215
    invoke-static {p1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    goto :goto_7

    .line 220
    :cond_d
    :goto_6
    const p1, 0x7f1303cb

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :cond_e
    :goto_7
    if-eqz v2, :cond_f

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    if-nez p0, :cond_10

    .line 234
    .line 235
    :cond_f
    move v6, v7

    .line 236
    :cond_10
    xor-int/lit8 p0, v6, 0x1

    .line 237
    .line 238
    invoke-virtual {v3, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
