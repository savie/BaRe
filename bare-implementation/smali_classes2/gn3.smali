.class public final synthetic Lgn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lgn3;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lgn3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lgn3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lgn3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lgn3;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lgn3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lgn3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lgn3;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroid/content/Intent;

    .line 15
    .line 16
    check-cast v3, Landroid/content/Context;

    .line 17
    .line 18
    check-cast v2, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;

    .line 19
    .line 20
    sget v0, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;->b:I

    .line 21
    .line 22
    const-string v0, "APP_PARCEL"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lji;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 33
    .line 34
    iget-object v5, v2, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0}, Lji;->asString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "Detail screen shortcut added for "

    .line 41
    .line 42
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v8, 0x4

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/common/Const;->x(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 57
    .line 58
    check-cast v3, Ld7;

    .line 59
    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lil0;->H()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ld7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :goto_0
    return-object v1

    .line 76
    :pswitch_1
    check-cast p0, Lnd6;

    .line 77
    .line 78
    check-cast v3, Lzc6;

    .line 79
    .line 80
    check-cast v2, Lsa1;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    const/4 v0, 0x1

    .line 93
    if-ne p0, v0, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v3}, Lzc6;->c()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_3

    .line 101
    .line 102
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 103
    .line 104
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-nez p0, :cond_3

    .line 109
    .line 110
    sget p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 111
    .line 112
    invoke-static {v2}, Lrs9;->u(Lk28;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {v2}, Lil0;->G()Lqo0;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0, v3}, Lqo0;->g(Lzc6;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-object v1

    .line 124
    :pswitch_2
    check-cast p0, Lin3;

    .line 125
    .line 126
    check-cast v3, Lq63;

    .line 127
    .line 128
    check-cast v2, Lbt3;

    .line 129
    .line 130
    iget-object v0, p0, Lin3;->g:Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    iget-object v4, p0, Lin3;->h:Lex6;

    .line 133
    .line 134
    iget-object p0, p0, Lin3;->i:Lex6;

    .line 135
    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    const/4 v3, 0x0

    .line 144
    :goto_2
    if-nez v3, :cond_5

    .line 145
    .line 146
    const-string v3, ""

    .line 147
    .line 148
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lhn3;

    .line 153
    .line 154
    if-eqz v3, :cond_6

    .line 155
    .line 156
    invoke-virtual {p0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_6
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Lhn3;

    .line 170
    .line 171
    invoke-static {v3, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_7

    .line 176
    .line 177
    iget-object v3, v2, Lhn3;->c:Lq63;

    .line 178
    .line 179
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-virtual {v4, p0}, Lex6;->l(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    return-object v1

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
