.class public final synthetic Ltb3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ltb3;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ltb3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ltb3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget v0, p0, Ltb3;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Ltb3;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Ltb3;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lmt3;

    .line 12
    .line 13
    check-cast v2, Llh6;

    .line 14
    .line 15
    iget-object p1, v2, Llh6;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    const-string v0, "onedrive_auth_agent"

    .line 22
    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    check-cast v2, Lfs4;

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lt80;

    .line 45
    .line 46
    iget v3, p1, Lt80;->a:I

    .line 47
    .line 48
    if-ne v3, p2, :cond_0

    .line 49
    .line 50
    iget-object p0, p1, Lt80;->b:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 51
    .line 52
    :try_start_0
    sget-object p1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string p1, "prefs"

    .line 62
    .line 63
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    move-object p1, v1

    .line 68
    :goto_0
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-object p1, v1

    .line 83
    :goto_1
    if-eqz p1, :cond_3

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    :goto_2
    sget-object p1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 87
    .line 88
    :goto_3
    if-eq p0, p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lfs4;->r()V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    const-string p0, "editor"

    .line 110
    .line 111
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_5
    :goto_4
    return-void

    .line 116
    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 117
    .line 118
    const-string p1, "Collection contains no element matching the predicate."

    .line 119
    .line 120
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 125
    .line 126
    check-cast v2, Ll39;

    .line 127
    .line 128
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N:I

    .line 129
    .line 130
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    iget-object p1, v2, Ll39;->c:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 137
    .line 138
    invoke-virtual {p1}, Llo;->getText()Landroid/text/Editable;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lec3;->e:Lex6;

    .line 158
    .line 159
    invoke-virtual {p2}, Lzy4;->d()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sget-object v2, Lbc3;->a:Lbc3;

    .line 164
    .line 165
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_7

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    const-string v0, ""

    .line 173
    .line 174
    iput-object v0, p0, Lec3;->j:Ljava/lang/String;

    .line 175
    .line 176
    sget-object v0, Lyb3;->a:Lyb3;

    .line 177
    .line 178
    invoke-virtual {p2, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const p2, 0x7f13042e

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p2}, Lqo0;->h(I)V

    .line 185
    .line 186
    .line 187
    sget-object p2, Lzn4;->a:Lzn4;

    .line 188
    .line 189
    iget-object p2, p0, Lec3;->g:Lfs7;

    .line 190
    .line 191
    new-instance v0, Ldc3;

    .line 192
    .line 193
    invoke-direct {v0, p0, p1, v1}, Ldc3;-><init>(Lec3;Ljava/lang/String;Ljv1;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 197
    .line 198
    .line 199
    :goto_5
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
