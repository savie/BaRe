.class public final Ltp7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lv57;


# instance fields
.field public final a:Lv57;

.field public final b:Lrp7;

.field public final synthetic c:Lup7;


# direct methods
.method public constructor <init>(Lup7;Lv57;Lrp7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltp7;->c:Lup7;

    .line 5
    .line 6
    iput-object p2, p0, Ltp7;->a:Lv57;

    .line 7
    .line 8
    iput-object p3, p0, Ltp7;->b:Lrp7;

    .line 9
    .line 10
    iget-object p1, p1, Lup7;->a:Lsp7;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lsp7;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    new-instance v0, Lp5;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lp5;-><init>(Ltp7;Ljava/lang/ref/ReferenceQueue;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Ltp7;->b:Lrp7;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lrp7;->d:Z

    .line 5
    .line 6
    iget-object v0, p0, Ltp7;->c:Lup7;

    .line 7
    .line 8
    iget-object v0, v0, Lup7;->a:Lsp7;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lzp8;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p0, v1, Lzp8;->a:Ltp7;

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, v1, Lzp8;->b:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    iget-object v0, v0, Lsp7;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    iput-object v2, v1, Lzp8;->a:Ltp7;

    .line 34
    .line 35
    iput v3, v1, Lzp8;->b:I

    .line 36
    .line 37
    new-instance v0, Ljava/lang/Throwable;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    array-length v1, v0

    .line 47
    if-ge v3, v1, :cond_4

    .line 48
    .line 49
    aget-object v1, v0, v3

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-class v4, Ltp7;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "close"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    add-int/lit8 v1, v3, 0x2

    .line 80
    .line 81
    add-int/lit8 v2, v3, 0x1

    .line 82
    .line 83
    array-length v4, v0

    .line 84
    if-ge v2, v4, :cond_0

    .line 85
    .line 86
    aget-object v2, v0, v2

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "kotlin.jdk7.AutoCloseableKt"

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_0

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v4, "closeFinally"

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    array-length v2, v0

    .line 113
    if-ge v1, v2, :cond_0

    .line 114
    .line 115
    add-int/lit8 v1, v3, 0x3

    .line 116
    .line 117
    :cond_0
    aget-object v2, v0, v1

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v4, "invokeSuspend"

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_1

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    :cond_1
    array-length v2, v0

    .line 134
    if-ge v1, v2, :cond_3

    .line 135
    .line 136
    aget-object v1, v0, v1

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v4, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 143
    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "resumeWith"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_2

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    const-string p0, "Attempting to close a Scope created by Context.makeCurrent from inside a Kotlin coroutine. This is not allowed. Use Context.asContextElement provided by opentelemetry-extension-kotlin instead of makeCurrent."

    .line 164
    .line 165
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 177
    .line 178
    .line 179
    move-result-wide v0

    .line 180
    iget-object v2, p0, Ltp7;->b:Lrp7;

    .line 181
    .line 182
    iget-wide v3, v2, Lrp7;->b:J

    .line 183
    .line 184
    cmp-long v0, v0, v3

    .line 185
    .line 186
    if-nez v0, :cond_5

    .line 187
    .line 188
    iget-object p0, p0, Ltp7;->a:Lv57;

    .line 189
    .line 190
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_5
    iget-object v0, v2, Lrp7;->a:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v2, "] opened scope, but thread ["

    .line 205
    .line 206
    const-string v3, "] closed it"

    .line 207
    .line 208
    const-string v4, "Thread ["

    .line 209
    .line 210
    invoke-static {v4, v0, v2, v1, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object p0, p0, Ltp7;->b:Lrp7;

    .line 215
    .line 216
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :catchall_0
    move-exception p0

    .line 221
    iput-object v2, v1, Lzp8;->a:Ltp7;

    .line 222
    .line 223
    iput v3, v1, Lzp8;->b:I

    .line 224
    .line 225
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp7;->b:Lrp7;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
