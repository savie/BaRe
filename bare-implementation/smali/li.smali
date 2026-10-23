.class public final synthetic Lli;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lli;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lli;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lli;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lli;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Los4;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    check-cast p2, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Le76;

    .line 25
    .line 26
    iget-object v0, p0, Le76;->a:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v1, p0, Le76;->c:Lxr8;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const-class v5, Ljava/lang/String;

    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    if-eq p1, v6, :cond_1

    .line 37
    .line 38
    if-ne p1, v4, :cond_0

    .line 39
    .line 40
    new-array v7, v4, [Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v5, v7, v3

    .line 43
    .line 44
    aput-object v5, v7, v2

    .line 45
    .line 46
    const-class v2, Landroid/os/Bundle;

    .line 47
    .line 48
    aput-object v2, v7, v6

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 52
    .line 53
    const-string p1, "Unsupported parameter count"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    new-array v7, v6, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v5, v7, v3

    .line 62
    .line 63
    aput-object v5, v7, v2

    .line 64
    .line 65
    :goto_0
    iget-object p0, p0, Le76;->b:Ljava/lang/Class;

    .line 66
    .line 67
    array-length v2, v7

    .line 68
    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, [Ljava/lang/Class;

    .line 73
    .line 74
    const-string v3, "getPrivilegedConfiguredNetworks"

    .line 75
    .line 76
    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v2, "com.android.shell"

    .line 81
    .line 82
    const-string v3, "shell"

    .line 83
    .line 84
    if-ne p1, v6, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :try_start_0
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    move-object p0, v0

    .line 107
    :goto_1
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    move-object p1, p0

    .line 112
    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-eqz p2, :cond_2

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    throw p0

    .line 129
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    filled-new-array {v3, v2, p2}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :try_start_1
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_2
    return-object p0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    move-object p0, v0

    .line 150
    :goto_3
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    move-object p1, p0

    .line 155
    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-eqz p2, :cond_4

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    throw p0

    .line 172
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 173
    .line 174
    check-cast p1, Lvq4;

    .line 175
    .line 176
    check-cast p2, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    sget p2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->S(Lvq4;)V

    .line 187
    .line 188
    .line 189
    return-object v1

    .line 190
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 191
    .line 192
    check-cast p1, Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    check-cast p2, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 204
    .line 205
    if-eqz p2, :cond_5

    .line 206
    .line 207
    invoke-virtual {p2}, Ll20;->y()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0(Z)V

    .line 211
    .line 212
    .line 213
    return-object v1

    .line 214
    :cond_5
    const-string p0, "mAdapter"

    .line 215
    .line 216
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/4 p0, 0x0

    .line 220
    throw p0

    .line 221
    :pswitch_2
    move-object v6, p0

    .line 222
    check-cast v6, Ljava/util/Set;

    .line 223
    .line 224
    move-object v2, p1

    .line 225
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 226
    .line 227
    check-cast p2, Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    sget-object p0, Ltr;->n0:Lqr;

    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    const/16 v9, 0xfe2

    .line 240
    .line 241
    const/4 v3, 0x0

    .line 242
    const/high16 v5, 0x3f800000    # 1.0f

    .line 243
    .line 244
    const/4 v7, 0x0

    .line 245
    invoke-static/range {v2 .. v9}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 246
    .line 247
    .line 248
    return-object v1

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
