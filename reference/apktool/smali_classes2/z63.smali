.class public final synthetic Lz63;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Lz63;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lz63;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lgz7;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 15
    .line 16
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lgz7;->COMPLETE:Lgz7;

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->Q(ZLgz7;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lgz7;->isCancelled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->X:Lwa;

    .line 32
    .line 33
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->Y:Lwa;

    .line 37
    .line 38
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->O(Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1}, Lgz7;->isCancelComplete()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 58
    .line 59
    .line 60
    :cond_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lokhttp3/Dns;

    .line 71
    .line 72
    invoke-interface {p0, p1}, Lokhttp3/Dns;->a(Ljava/lang/String;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lp63;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lp63;->d(Ljava/io/File;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const-string v2, "SwiftBackup"

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-static {v0, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lp63;->a(Ljava/io/File;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-array v4, v1, [C

    .line 142
    .line 143
    const/16 v5, 0x2f

    .line 144
    .line 145
    aput-char v5, v4, v3

    .line 146
    .line 147
    const/4 v5, 0x6

    .line 148
    invoke-static {v0, v4, v5}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    add-int/2addr v2, v1

    .line 157
    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const/4 v8, 0x0

    .line 162
    const/16 v9, 0x3e

    .line 163
    .line 164
    const-string v5, "/"

    .line 165
    .line 166
    const/4 v6, 0x0

    .line 167
    const/4 v7, 0x0

    .line 168
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v2, Ljava/io/File;

    .line 173
    .line 174
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0, v2}, Lp63;->b(Ljava/io/File;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lp63;->a(Ljava/io/File;)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lp63;->a(Ljava/io/File;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-ne v0, v1, :cond_9

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lp63;->a(Ljava/io/File;)V

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-nez p1, :cond_a

    .line 236
    .line 237
    move v1, v3

    .line 238
    goto :goto_0

    .line 239
    :cond_a
    iget-object p0, p0, Lp63;->b:Ljava/util/LinkedHashSet;

    .line 240
    .line 241
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
