.class public final synthetic Lis;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lis;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lis;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lis;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lis;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lt22;

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->$r8$lambda$b3puoOwGj3hPeeVU7q4sQGzSAjA(Lt22;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p0, Lcom/jcraft/jsch/Channel;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->run()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    check-cast p0, Ljo6;

    .line 24
    .line 25
    iget v0, p0, Lzy4;->c:I

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v3

    .line 32
    :goto_0
    iget-object v4, p0, Ljo6;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Ljo6;->l:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 43
    .line 44
    iget-object v0, v0, Leo6;->a:Ldv1;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v4, p0, Ljo6;->r:Lox1;

    .line 50
    .line 51
    new-instance v5, Lrb5;

    .line 52
    .line 53
    invoke-direct {v5, p0, v3, v2}, Lrb5;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4, v5, v1}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string p0, "coroutineScope"

    .line 61
    .line 62
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v3

    .line 66
    :cond_2
    :goto_1
    return-void

    .line 67
    :pswitch_2
    check-cast p0, Landroid/content/Context;

    .line 68
    .line 69
    new-instance v0, Lp22;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    sget-object v1, Ljb9;->I:Lb05;

    .line 75
    .line 76
    invoke-static {p0, v0, v1, v3}, Ljb9;->l0(Landroid/content/Context;Ljava/util/concurrent/Executor;Lx76;Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_3
    check-cast p0, Lgx4;

    .line 81
    .line 82
    iput-boolean v3, p0, Lgx4;->c:Z

    .line 83
    .line 84
    iget-object v0, p0, Lgx4;->e:Lcom/google/android/material/listitem/ListItemLayout;

    .line 85
    .line 86
    iget-object v3, v0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v3}, Lgl8;->g()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    iget v1, p0, Lgx4;->a:I

    .line 97
    .line 98
    iget v3, p0, Lgx4;->b:I

    .line 99
    .line 100
    iput v1, p0, Lgx4;->a:I

    .line 101
    .line 102
    iput v3, p0, Lgx4;->b:I

    .line 103
    .line 104
    iget-boolean v1, p0, Lgx4;->c:Z

    .line 105
    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lgx4;->d:Lis;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    iput-boolean v2, p0, Lgx4;->c:Z

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    iget v2, v0, Lcom/google/android/material/listitem/ListItemLayout;->t:I

    .line 117
    .line 118
    if-ne v2, v1, :cond_4

    .line 119
    .line 120
    iget v1, p0, Lgx4;->a:I

    .line 121
    .line 122
    iget p0, p0, Lgx4;->b:I

    .line 123
    .line 124
    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/listitem/ListItemLayout;->i(II)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    return-void

    .line 128
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 129
    .line 130
    sget-object v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    const-string v0, "input_method"

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    iget-object p0, p0, Lz44;->f:Landroid/widget/EditText;

    .line 161
    .line 162
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    return-void

    .line 166
    :pswitch_5
    check-cast p0, Llr2;

    .line 167
    .line 168
    iget-object v0, p0, Llr2;->h:Landroid/widget/AutoCompleteTextView;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-virtual {p0, v0}, Llr2;->s(Z)V

    .line 175
    .line 176
    .line 177
    iput-boolean v0, p0, Llr2;->m:Z

    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_6
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 181
    .line 182
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$h1ZWD_XzS4_A2cK0LC8hIyymuW0(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_7
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 187
    .line 188
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$6BTjUpmKVr3y_fTTYfRsim6m_5w(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_8
    check-cast p0, Lr91;

    .line 193
    .line 194
    invoke-virtual {p0, v2}, Lr91;->s(Z)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 199
    .line 200
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 201
    .line 202
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    nop

    .line 211
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
