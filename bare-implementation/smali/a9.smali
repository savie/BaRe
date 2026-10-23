.class public final synthetic La9;
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
    iput p2, p0, La9;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La9;->b:Ljava/lang/Object;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La9;->a:I

    .line 4
    .line 5
    iget-object v0, v0, La9;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/util/Iterator;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v0, Lbt3;

    .line 17
    .line 18
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    check-cast v0, Lcom/l4digital/fastscroll/FastScroller;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/l4digital/fastscroll/FastScroller;->b(Lcom/l4digital/fastscroll/FastScroller;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 29
    .line 30
    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$RI_yp9D8O45MTQNTh9uwcvGFNWk(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_3
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;

    .line 35
    .line 36
    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$vkKC_qUqVF9-wOBsyy-_S1A6Hoo(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_4
    check-cast v0, Ldr0;

    .line 41
    .line 42
    invoke-virtual {v0}, Ldr0;->a()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_5
    check-cast v0, Llj0;

    .line 47
    .line 48
    invoke-virtual {v0}, Lu35;->dismiss()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_6
    move-object v1, v0

    .line 53
    check-cast v1, Landroid/app/Activity;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_9

    .line 60
    .line 61
    sget-object v2, Le9;->g:Landroid/os/Handler;

    .line 62
    .line 63
    sget-object v0, Le9;->f:Ljava/lang/reflect/Method;

    .line 64
    .line 65
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v4, 0x1c

    .line 68
    .line 69
    if-lt v3, v4, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_0
    const/16 v4, 0x1b

    .line 77
    .line 78
    const/16 v5, 0x1a

    .line 79
    .line 80
    if-eq v3, v5, :cond_1

    .line 81
    .line 82
    if-ne v3, v4, :cond_2

    .line 83
    .line 84
    :cond_1
    if-nez v0, :cond_2

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_2
    sget-object v6, Le9;->e:Ljava/lang/reflect/Method;

    .line 89
    .line 90
    if-nez v6, :cond_3

    .line 91
    .line 92
    sget-object v6, Le9;->d:Ljava/lang/reflect/Method;

    .line 93
    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_3
    :try_start_0
    sget-object v6, Le9;->c:Ljava/lang/reflect/Field;

    .line 99
    .line 100
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-nez v7, :cond_4

    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_4
    sget-object v6, Le9;->b:Ljava/lang/reflect/Field;

    .line 109
    .line 110
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-nez v6, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    new-instance v9, Ld9;

    .line 122
    .line 123
    invoke-direct {v9, v1}, Ld9;-><init>(Landroid/app/Activity;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v9}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 127
    .line 128
    .line 129
    new-instance v10, Li8;

    .line 130
    .line 131
    const/4 v11, 0x1

    .line 132
    const/4 v12, 0x0

    .line 133
    invoke-direct {v10, v9, v7, v11, v12}, Li8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 137
    .line 138
    .line 139
    if-eq v3, v5, :cond_7

    .line 140
    .line 141
    if-ne v3, v4, :cond_6

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    move v11, v12

    .line 145
    :cond_7
    :goto_0
    if-eqz v11, :cond_8

    .line 146
    .line 147
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    .line 153
    move v3, v12

    .line 154
    const/4 v12, 0x0

    .line 155
    const/4 v13, 0x0

    .line 156
    move-object v4, v8

    .line 157
    const/4 v8, 0x0

    .line 158
    move-object v5, v9

    .line 159
    const/4 v9, 0x0

    .line 160
    move-object v14, v11

    .line 161
    move-object v15, v11

    .line 162
    :try_start_2
    filled-new-array/range {v7 .. v15}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    goto :goto_2

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    move-object v4, v8

    .line 174
    move-object v5, v9

    .line 175
    move v3, v12

    .line 176
    goto :goto_2

    .line 177
    :cond_8
    move-object v4, v8

    .line 178
    move-object v5, v9

    .line 179
    move v3, v12

    .line 180
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .line 182
    .line 183
    :goto_1
    :try_start_3
    new-instance v0, Lb9;

    .line 184
    .line 185
    invoke-direct {v0, v3, v4, v5}, Lb9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :goto_2
    new-instance v6, Lb9;

    .line 193
    .line 194
    invoke-direct {v6, v3, v4, v5}, Lb9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    .line 199
    .line 200
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 201
    :catchall_2
    :goto_3
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 202
    .line 203
    .line 204
    :cond_9
    :goto_4
    return-void

    .line 205
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
