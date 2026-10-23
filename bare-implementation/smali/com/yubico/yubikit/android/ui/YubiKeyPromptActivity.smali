.class public Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;
.super Landroid/app/Activity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final q:Ll15;


# instance fields
.field public final a:Loy8;

.field public b:Lyf1;

.field public c:Z

.field public d:I

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public k:Landroid/widget/TextView;

.field public n:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->q:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Loy8;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->a:Loy8;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->c:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->d:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v0, "ALLOW_USB"

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->n:Z

    .line 23
    .line 24
    const-string v0, "ALLOW_NFC"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->p:Z

    .line 31
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v2, 0x21

    .line 35
    .line 36
    const-string v3, "ACTION_CLASS"

    .line 37
    .line 38
    if-lt v0, v2, :cond_0

    .line 39
    .line 40
    const-class v0, Ljava/lang/Class;

    .line 41
    .line 42
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Class;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Class;

    .line 54
    .line 55
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    .line 57
    :try_start_0
    const-class v2, Lly8;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lxs1;->r(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    goto :goto_1

    .line 82
    :catch_2
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :catch_3
    move-exception v0

    .line 85
    goto :goto_1

    .line 86
    :catch_4
    move-exception v0

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string v2, "Missing or invalid ConnectionAction class"

    .line 91
    .line 92
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    sget-object v2, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->q:Ll15;

    .line 97
    .line 98
    const-string v3, "Unable to instantiate ConnectionAction"

    .line 99
    .line 100
    invoke-static {v1, v2, v3, v0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 104
    .line 105
    .line 106
    :goto_2
    const-string v0, "CONTENT_VIEW_ID"

    .line 107
    .line 108
    const v1, 0x7f0d0196

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 116
    .line 117
    .line 118
    const-string v0, "TITLE_ID"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 131
    .line 132
    .line 133
    :cond_2
    const v0, 0x7f0a0601

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/TextView;

    .line 141
    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    const-string v0, "HELP_TEXT_VIEW_ID"

    .line 152
    .line 153
    const v1, 0x7f0a0600

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->k:Landroid/widget/TextView;

    .line 167
    .line 168
    const-string v0, "CANCEL_BUTTON_ID"

    .line 169
    .line 170
    const v1, 0x7f0a05fe

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Landroid/widget/Button;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->e:Landroid/widget/Button;

    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->e:Landroid/widget/Button;

    .line 190
    .line 191
    new-instance v2, Lg7;

    .line 192
    .line 193
    const/16 v3, 0x11

    .line 194
    .line 195
    invoke-direct {v2, p0, v3}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lyf1;

    .line 202
    .line 203
    invoke-direct {v0, p0}, Lyf1;-><init>(Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;)V

    .line 204
    .line 205
    .line 206
    iput-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->b:Lyf1;

    .line 207
    .line 208
    iget-boolean v2, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->n:Z

    .line 209
    .line 210
    if-eqz v2, :cond_4

    .line 211
    .line 212
    new-instance v2, Lkg8;

    .line 213
    .line 214
    invoke-direct {v2}, Lkg8;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v3, Lmy8;

    .line 218
    .line 219
    invoke-direct {v3, p0}, Lmy8;-><init>(Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v0, Lyf1;->b:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Lzg8;

    .line 225
    .line 226
    invoke-virtual {v0, v2, v3}, Lzg8;->b(Lkg8;Lvz0;)V

    .line 227
    .line 228
    .line 229
    :cond_4
    iget-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->p:Z

    .line 230
    .line 231
    if-eqz v0, :cond_5

    .line 232
    .line 233
    const-string v0, "ENABLE_NFC_BUTTON_ID"

    .line 234
    .line 235
    const v2, 0x7f0a05ff

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Landroid/widget/Button;

    .line 247
    .line 248
    iput-object p1, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->f:Landroid/widget/Button;

    .line 249
    .line 250
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->f:Landroid/widget/Button;

    .line 254
    .line 255
    new-instance v0, Lof;

    .line 256
    .line 257
    const/16 v1, 0xc

    .line 258
    .line 259
    invoke-direct {v0, p0, v1}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    .line 264
    .line 265
    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->b:Lyf1;

    .line 6
    .line 7
    iget-object v0, v0, Lyf1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lzg8;

    .line 10
    .line 11
    invoke-virtual {v0}, Lzg8;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->b:Lyf1;

    .line 6
    .line 7
    iget-object v0, v0, Lyf1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lbp0;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lbp0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lbp0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    :cond_0
    iget-object v0, v0, Lbp0;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lke;

    .line 28
    .line 29
    iget-object v0, v0, Lke;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/nfc/NfcAdapter;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->p:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->f:Landroid/widget/Button;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->b:Lyf1;

    .line 17
    .line 18
    new-instance v2, Lbq4;

    .line 19
    .line 20
    invoke-direct {v2}, Lbq4;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lny8;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lny8;-><init>(Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lyf1;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lbp0;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, p0, v2, v3}, Lbp0;->a(Landroid/app/Activity;Lbq4;Lvz0;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v1, Lrm5;

    .line 39
    .line 40
    const-string v2, "NFC is not available on this device"

    .line 41
    .line 42
    invoke-direct {v1, v2, v0}, Lrm5;-><init>(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    throw v1
    :try_end_0
    .catch Lrm5; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    iput-boolean v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->c:Z

    .line 48
    .line 49
    iget-object v2, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->k:Landroid/widget/TextView;

    .line 50
    .line 51
    const v3, 0x7f1305d6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    iget-boolean v1, v1, Lrm5;->a:Z

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object p0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->f:Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method
