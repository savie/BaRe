.class public final synthetic Lbw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Llw;Lxw;Lax;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lbw;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lbw;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p1, p0, Lbw;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lv07;Lz07;Loz6;)V
    .locals 0

    .line 12
    const/4 p2, 0x1

    iput p2, p0, Lbw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw;->b:Ljava/lang/Object;

    iput-object p3, p0, Lbw;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lbw;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lbw;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lbw;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lv07;

    .line 11
    .line 12
    check-cast v1, Loz6;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    check-cast p3, Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lv07;->a:Ls07;

    .line 32
    .line 33
    iget-object p0, p0, Ls07;->e:Lcy0;

    .line 34
    .line 35
    sget-object v0, Loy6;->j:Loy6;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    new-instance p0, Ljava/io/FileInputStream;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2, p3}, Lcom/swiftapps/sba/SbaSwiftTarNative;->d(Ljava/io/FileDescriptor;J)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :catchall_1
    move-exception p2

    .line 75
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :cond_0
    instance-of p0, p0, Lpy6;

    .line 80
    .line 81
    if-eqz p0, :cond_1

    .line 82
    .line 83
    new-instance p0, Ljava/io/FileInputStream;

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 93
    .line 94
    .line 95
    sget-object p1, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-wide v0, v1, Loz6;->f:J

    .line 105
    .line 106
    invoke-static {p1, p2, p3, v0, v1}, Lcom/swiftapps/sba/SbaSwiftTarNative;->e(Ljava/io/FileDescriptor;JJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 107
    .line 108
    .line 109
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-static {p1}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_1

    .line 118
    :catchall_2
    move-exception p1

    .line 119
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 120
    :catchall_3
    move-exception p2

    .line 121
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 126
    .line 127
    .line 128
    const/4 p0, 0x0

    .line 129
    :goto_1
    return-object p0

    .line 130
    :pswitch_0
    check-cast p0, Lax;

    .line 131
    .line 132
    check-cast v1, Llw;

    .line 133
    .line 134
    check-cast p1, Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    check-cast p2, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide p1

    .line 146
    check-cast p3, Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    sget-object p3, Lex;->UNTAR_DEDATA:Lex;

    .line 152
    .line 153
    invoke-virtual {p0, p3}, Lax;->c(Lex;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    long-to-float p3, v2

    .line 158
    long-to-float p1, p1

    .line 159
    div-float/2addr p3, p1

    .line 160
    long-to-float p1, v4

    .line 161
    mul-float/2addr p3, p1

    .line 162
    float-to-double p1, p3

    .line 163
    invoke-static {p1, p2}, Ltu0;->w(D)J

    .line 164
    .line 165
    .line 166
    move-result-wide p1

    .line 167
    invoke-virtual {p0}, Lax;->b()J

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    add-long/2addr v2, p1

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {v1, p0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    sget-object p0, Lbe8;->a:Lbe8;

    .line 180
    .line 181
    return-object p0

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
