.class public final Lrj6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lrj6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lrj6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lrj6;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lrj6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lrj6;->c:Ljava/lang/Object;

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
    .locals 9

    .line 1
    iget v0, p0, Lrj6;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lrj6;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lkq3;

    .line 10
    .line 11
    invoke-virtual {v0}, Lkq3;->call()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    iget-object v0, p0, Lrj6;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Llq3;

    .line 18
    .line 19
    iget-object p0, p0, Lrj6;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v2, Lvb;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v2, v3, v0, v1}, Lvb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lrj6;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ldk6;

    .line 36
    .line 37
    iget-object v2, p0, Lrj6;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Lyb0;

    .line 40
    .line 41
    iget-object p0, p0, Lrj6;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 44
    .line 45
    invoke-virtual {v0, v2, p0}, Ldk6;->b(Lyb0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, v0, Ldk6;->i:Lc00;

    .line 49
    .line 50
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 56
    .line 57
    .line 58
    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    iget-wide v5, v0, Ldk6;->a:D

    .line 64
    .line 65
    div-double/2addr v3, v5

    .line 66
    iget-wide v5, v0, Ldk6;->b:D

    .line 67
    .line 68
    invoke-virtual {v0}, Ldk6;->a()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    int-to-double v7, p0

    .line 73
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    mul-double/2addr v5, v3

    .line 78
    const-wide v3, 0x414b774000000000L    # 3600000.0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "Delay for: "

    .line 90
    .line 91
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 95
    .line 96
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    div-double v5, v3, v5

    .line 102
    .line 103
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const-string v6, "%.2f"

    .line 112
    .line 113
    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, " s for report: "

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v0, v2, Lyb0;->b:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string v0, "FirebaseCrashlytics"

    .line 135
    .line 136
    const/4 v2, 0x3

    .line 137
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_0

    .line 142
    .line 143
    invoke-static {v0, p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    :cond_0
    double-to-long v0, v3

    .line 147
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    :catch_1
    return-void

    .line 151
    :pswitch_1
    iget-object v0, p0, Lrj6;->d:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lnh;

    .line 154
    .line 155
    iget-object v0, v0, Lnh;->b:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lwj6;

    .line 158
    .line 159
    iget-object v2, v0, Lwj6;->d:Lnh;

    .line 160
    .line 161
    iget-object v3, p0, Lrj6;->b:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v3, Lqc6;

    .line 164
    .line 165
    iget-object v3, v3, Lqc6;->a:Lgy5;

    .line 166
    .line 167
    iget-object v2, v2, Lnh;->b:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v2, Lqn5;

    .line 170
    .line 171
    invoke-interface {v2, v3}, Lqn5;->U(Lgy5;)Lqn5;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-interface {v2}, Lqn5;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_1

    .line 180
    .line 181
    iget-object v4, v0, Lwj6;->m:Lbv7;

    .line 182
    .line 183
    invoke-virtual {v4, v3, v2}, Lbv7;->g(Lgy5;Lqn5;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v0, v2}, Lwj6;->j(Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lrj6;->c:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p0, Lgd;

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Lgd;->k(Lwc2;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    :cond_1
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
