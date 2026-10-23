.class public final synthetic Lmr3;
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
    iput p2, p0, Lmr3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmr3;->b:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget v0, p0, Lmr3;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lmr3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->h0:Lk88;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lk88;->b:Lic5;

    .line 23
    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lic5;->collapseActionView()Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :pswitch_1
    check-cast p0, Landroid/view/View;

    .line 31
    .line 32
    sget v0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->k:I

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    check-cast p0, Lue7;

    .line 40
    .line 41
    iget-object v0, p0, Lue7;->a:Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/content/ServiceConnection;

    .line 58
    .line 59
    iget-object v3, p0, Lue7;->b:Landroid/content/ComponentName;

    .line 60
    .line 61
    invoke-interface {v2, v3}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lve7;->a:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/util/Map$Entry;

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-ne v4, p0, :cond_3

    .line 100
    .line 101
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    return-void

    .line 132
    :pswitch_3
    check-cast p0, Lpd7;

    .line 133
    .line 134
    :try_start_0
    sget v0, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 135
    .line 136
    invoke-static {}, Lk55;->j()Lzd7;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Lzd7;->execTask(Lpd7;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catch_0
    move-exception p0

    .line 151
    const-string v0, "LIBSU"

    .line 152
    .line 153
    invoke-static {v0, p0}, Lji8;->k(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    :goto_4
    return-void

    .line 157
    :pswitch_4
    check-cast p0, Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 158
    .line 159
    sget v0, Lcom/yubico/yubikit/android/ui/OtpActivity;->x:I

    .line 160
    .line 161
    iget-object p0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->k:Landroid/widget/TextView;

    .line 162
    .line 163
    const v0, 0x7f1305d2

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_5
    check-cast p0, Landroidx/fragment/app/z;

    .line 171
    .line 172
    iget-object p0, p0, Landroidx/fragment/app/z;->n:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_7

    .line 183
    .line 184
    return-void

    .line 185
    :cond_7
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    throw p0

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
