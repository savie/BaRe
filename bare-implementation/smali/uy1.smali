.class public final synthetic Luy1;
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
    iput p1, p0, Luy1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Luy1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Luy1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Luy1;->d:Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Luy1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Luy1;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Luy1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Luy1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Ljava/lang/Process;

    .line 13
    .line 14
    check-cast v2, Llh6;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v3, Lf51;->a:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    new-instance v4, Ljava/io/InputStreamReader;

    .line 28
    .line 29
    invoke-direct {v4, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/io/BufferedReader;

    .line 33
    .line 34
    const/16 v3, 0x2000

    .line 35
    .line 36
    invoke-direct {v0, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-static {v0}, Lrs9;->p(Ljava/io/BufferedReader;)Lf77;

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
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-lez v5, :cond_0

    .line 66
    .line 67
    const/16 v5, 0xa

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :goto_2
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :catchall_1
    move-exception v3

    .line 87
    :try_start_4
    invoke-static {v0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 91
    :goto_3
    iput-object v0, v2, Llh6;->a:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 94
    .line 95
    .line 96
    :goto_4
    return-void

    .line 97
    :pswitch_0
    check-cast p0, Landroid/view/ViewGroup;

    .line 98
    .line 99
    check-cast v2, Landroid/view/View;

    .line 100
    .line 101
    check-cast v1, Landroidx/fragment/app/c;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, v1, Landroidx/fragment/app/c;->c:Landroidx/fragment/app/d;

    .line 110
    .line 111
    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h0;

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Landroidx/fragment/app/h0;->c(Lzj7;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_1
    check-cast p0, Lzy1;

    .line 118
    .line 119
    check-cast v2, Ljava/lang/String;

    .line 120
    .line 121
    check-cast v1, Ljava/lang/String;

    .line 122
    .line 123
    iget-object p0, p0, Lzy1;->h:Lsy1;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    :try_start_5
    iget-object v0, p0, Lsy1;->d:Li75;

    .line 129
    .line 130
    iget-object v0, v0, Li75;->d:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lfh8;

    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Lfh8;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catch_1
    move-exception v0

    .line 139
    iget-object p0, p0, Lsy1;->a:Landroid/content/Context;

    .line 140
    .line 141
    if-eqz p0, :cond_3

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 148
    .line 149
    and-int/lit8 p0, p0, 0x2

    .line 150
    .line 151
    if-nez p0, :cond_2

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_2
    throw v0

    .line 155
    :cond_3
    :goto_5
    const/4 p0, 0x0

    .line 156
    const-string v0, "FirebaseCrashlytics"

    .line 157
    .line 158
    const-string v1, "Attempting to set custom attribute with null key, ignoring."

    .line 159
    .line 160
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    :goto_6
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
