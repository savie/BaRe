.class public final synthetic Lnu2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lnu2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lnu2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lnu2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lnu2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lnu2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnu2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Process;

    .line 9
    .line 10
    iget-object v1, p0, Lnu2;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Llh6;

    .line 13
    .line 14
    iget-object p0, p0, Lnu2;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lxs;

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v3, Lf51;->a:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    new-instance v4, Ljava/io/InputStreamReader;

    .line 28
    .line 29
    invoke-direct {v4, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/io/BufferedReader;

    .line 33
    .line 34
    const/16 v3, 0x2000

    .line 35
    .line 36
    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-static {v2}, Lrs9;->p(Ljava/io/BufferedReader;)Lf77;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lws1;

    .line 44
    .line 45
    invoke-virtual {v3}, Lws1;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p0, v4}, Lxs;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :catchall_1
    move-exception v3

    .line 73
    :try_start_4
    invoke-static {v2, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    :goto_2
    iput-object p0, v1, Llh6;->a:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 80
    .line 81
    .line 82
    :goto_3
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lnu2;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 86
    .line 87
    iget-object v1, p0, Lnu2;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object p0, p0, Lnu2;->d:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Ljava/lang/Boolean;

    .line 94
    .line 95
    sget-object v2, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 96
    .line 97
    new-instance v2, Landroid/transition/AutoTransition;

    .line 98
    .line 99
    invoke-direct {v2}, Landroid/transition/AutoTransition;-><init>()V

    .line 100
    .line 101
    .line 102
    const-wide/16 v3, 0xc8

    .line 103
    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v0, v0, Lw44;->c:Lx44;

    .line 112
    .line 113
    iget-object v0, v0, Lx44;->a:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    new-array v3, v3, [Ljava/lang/Class;

    .line 119
    .line 120
    invoke-static {v0, v2, v3}, Lil0;->w(Landroid/view/ViewGroup;Landroid/transition/Transition;[Ljava/lang/Class;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    invoke-static {v1, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_1
    iget-object v0, p0, Lnu2;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Lkm8;

    .line 137
    .line 138
    iget-object v1, p0, Lnu2;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Lnc8;

    .line 141
    .line 142
    iget-object p0, p0, Lnu2;->d:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 145
    .line 146
    :try_start_5
    iget-object v0, v0, Lkm8;->a:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Landroid/content/Context;

    .line 149
    .line 150
    invoke-static {v0}, Ljb9;->l(Landroid/content/Context;)Lhq3;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    .line 156
    iget-object v2, v0, Lgu2;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v2, Lju2;

    .line 159
    .line 160
    check-cast v2, Lgq3;

    .line 161
    .line 162
    iget-object v3, v2, Lgq3;->d:Ljava/lang/Object;

    .line 163
    .line 164
    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 165
    :try_start_6
    iput-object p0, v2, Lgq3;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 166
    .line 167
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 168
    :try_start_7
    iget-object v0, v0, Lgu2;->b:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lju2;

    .line 171
    .line 172
    new-instance v2, Lou2;

    .line 173
    .line 174
    invoke-direct {v2, v1, p0}, Lou2;-><init>(Lnc8;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v2}, Lju2;->c(Lnc8;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catchall_2
    move-exception v0

    .line 182
    goto :goto_4

    .line 183
    :catchall_3
    move-exception v0

    .line 184
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 185
    :try_start_9
    throw v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 187
    .line 188
    const-string v2, "EmojiCompat font provider not available on this device."

    .line 189
    .line 190
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 194
    :goto_4
    invoke-virtual {v1, v0}, Lnc8;->P(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 198
    .line 199
    .line 200
    :goto_5
    return-void

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
