.class public Lcom/jcraft/jsch/PageantConnector;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/AgentConnector;


# instance fields
.field public final a:Lcom/sun/jna/platform/win32/User32;

.field public final b:Lcom/sun/jna/platform/win32/Kernel32;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "os.name"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    .line 9
    .line 10
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    const-string v0, "Windows"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_1
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/jcraft/jsch/PageantConnector;->a:Lcom/sun/jna/platform/win32/User32;

    .line 25
    .line 26
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    return-void

    .line 31
    :catch_1
    move-exception p0

    .line 32
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/AgentProxyException;

    .line 43
    .line 44
    const-string v0, "PageantConnector only available on Windows."

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;
    .locals 4

    .line 1
    new-instance v0, Lcom/sun/jna/Memory;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    int-to-long v1, v1

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    const-string v3, "US-ASCII"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/sun/jna/Memory;->setString(JLjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    .line 26
    .line 27
    const-wide v2, 0x804e50baL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;-><init>(J)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;->dwData:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/sun/jna/Memory;->size()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    long-to-int v1, v1

    .line 42
    iput v1, p0, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;->cbData:I

    .line 43
    .line 44
    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;->lpData:Lcom/sun/jna/Pointer;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;->write()V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;)J
    .locals 3

    .line 1
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$LPARAM;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;->getPointer()Lcom/sun/jna/Pointer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$LPARAM;-><init>(J)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/jcraft/jsch/PageantConnector;->a:Lcom/sun/jna/platform/win32/User32;

    .line 15
    .line 16
    const/16 p2, 0x4a

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p0, p1, p2, v1, v0}, Lcom/sun/jna/platform/win32/User32;->SendMessage(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$LRESULT;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    return-wide p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "pageant"

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/PageantConnector;->a:Lcom/sun/jna/platform/win32/User32;

    .line 2
    .line 3
    const-string v0, "Pageant"

    .line 4
    .line 5
    invoke-interface {p0, v0, v0}, Lcom/sun/jna/platform/win32/User32;->FindWindow(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$HWND;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final query(Lcom/jcraft/jsch/Buffer;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "User32.SendMessage() returned 0 with cds.dwData: "

    .line 6
    .line 7
    const-string v3, "Illegal length: "

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/high16 v5, 0x40000

    .line 14
    .line 15
    if-gt v4, v5, :cond_7

    .line 16
    .line 17
    iget-object v4, v1, Lcom/jcraft/jsch/PageantConnector;->a:Lcom/sun/jna/platform/win32/User32;

    .line 18
    .line 19
    const-string v5, "Pageant"

    .line 20
    .line 21
    invoke-interface {v4, v5, v5}, Lcom/sun/jna/platform/win32/User32;->FindWindow(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$HWND;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_6

    .line 26
    .line 27
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 28
    .line 29
    iget-object v6, v1, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;

    .line 30
    .line 31
    invoke-interface {v6}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentThreadId()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v7, "PageantRequest%08x"

    .line 44
    .line 45
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v14

    .line 49
    const/4 v5, 0x0

    .line 50
    :try_start_0
    iget-object v8, v1, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;

    .line 51
    .line 52
    sget-object v9, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 53
    .line 54
    const/4 v12, 0x0

    .line 55
    const/high16 v13, 0x40000

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x4

    .line 59
    invoke-interface/range {v8 .. v14}, Lcom/sun/jna/platform/win32/Kernel32;->CreateFileMapping(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;IIILjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 60
    .line 61
    .line 62
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 63
    const-string v7, "Unable to create shared file mapping."

    .line 64
    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    :try_start_1
    sget-object v8, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 68
    .line 69
    if-eq v6, v8, :cond_3

    .line 70
    .line 71
    iget-object v15, v1, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    .line 73
    const/16 v19, 0x0

    .line 74
    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const/16 v17, 0x2

    .line 78
    .line 79
    const/16 v18, 0x0

    .line 80
    .line 81
    move-object/from16 v16, v6

    .line 82
    .line 83
    :try_start_2
    invoke-interface/range {v15 .. v20}, Lcom/sun/jna/platform/win32/Kernel32;->MapViewOfFile(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IIII)Lcom/sun/jna/Pointer;

    .line 84
    .line 85
    .line 86
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    if-eqz v8, :cond_2

    .line 88
    .line 89
    :try_start_3
    iget-object v11, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    const-wide/16 v9, 0x0

    .line 96
    .line 97
    const/4 v12, 0x0

    .line 98
    invoke-virtual/range {v8 .. v13}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 99
    .line 100
    .line 101
    invoke-static {v14}, Lcom/jcraft/jsch/PageantConnector;->a(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v1, v4, v5}, Lcom/jcraft/jsch/PageantConnector;->b(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    iget-object v4, v5, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;->dwData:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    const/4 v7, 0x0

    .line 116
    iput v7, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 117
    .line 118
    const-wide/16 v11, 0x0

    .line 119
    .line 120
    cmp-long v9, v9, v11

    .line 121
    .line 122
    if-eqz v9, :cond_1

    .line 123
    .line 124
    iget-object v11, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 125
    .line 126
    const/4 v12, 0x0

    .line 127
    const/4 v13, 0x4

    .line 128
    const-wide/16 v9, 0x0

    .line 129
    .line 130
    invoke-virtual/range {v8 .. v13}, Lcom/sun/jna/Pointer;->read(J[BII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-lez v13, :cond_0

    .line 138
    .line 139
    const v2, 0x3fffc

    .line 140
    .line 141
    .line 142
    if-gt v13, v2, :cond_0

    .line 143
    .line 144
    iput v7, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 145
    .line 146
    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 147
    .line 148
    .line 149
    iget-object v11, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 150
    .line 151
    const/4 v12, 0x0

    .line 152
    const-wide/16 v9, 0x4

    .line 153
    .line 154
    invoke-virtual/range {v8 .. v13}, Lcom/sun/jna/Pointer;->read(J[BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .line 156
    .line 157
    iget-object v0, v1, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;

    .line 158
    .line 159
    invoke-interface {v0, v8}, Lcom/sun/jna/platform/win32/Kernel32;->UnmapViewOfFile(Lcom/sun/jna/Pointer;)Z

    .line 160
    .line 161
    .line 162
    iget-object v0, v1, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;

    .line 163
    .line 164
    invoke-interface {v0, v6}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    move-object v5, v8

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    :try_start_4
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 212
    .line 213
    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    move-object/from16 v6, v16

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :catchall_2
    move-exception v0

    .line 222
    goto :goto_0

    .line 223
    :cond_3
    :try_start_5
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 224
    .line 225
    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 229
    :catchall_3
    move-exception v0

    .line 230
    move-object v6, v5

    .line 231
    :goto_0
    if-eqz v5, :cond_4

    .line 232
    .line 233
    iget-object v2, v1, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;

    .line 234
    .line 235
    invoke-interface {v2, v5}, Lcom/sun/jna/platform/win32/Kernel32;->UnmapViewOfFile(Lcom/sun/jna/Pointer;)Z

    .line 236
    .line 237
    .line 238
    :cond_4
    if-eqz v6, :cond_5

    .line 239
    .line 240
    iget-object v1, v1, Lcom/jcraft/jsch/PageantConnector;->b:Lcom/sun/jna/platform/win32/Kernel32;

    .line 241
    .line 242
    invoke-interface {v1, v6}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 243
    .line 244
    .line 245
    :cond_5
    throw v0

    .line 246
    :cond_6
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 247
    .line 248
    const-string v1, "Pageant is not runnning."

    .line 249
    .line 250
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_7
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 255
    .line 256
    const-string v1, "Query too large."

    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v0
.end method
