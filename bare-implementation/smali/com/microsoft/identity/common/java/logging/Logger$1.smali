.class final Lcom/microsoft/identity/common/java/logging/Logger$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$containsPII:Z

.field final synthetic val$diagnosticMetadata:Ljava/lang/String;

.field final synthetic val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$now:Ljava/util/Date;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$now:Ljava/util/Date;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$diagnosticMetadata:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$message:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$throwable:Ljava/lang/Throwable;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$tag:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$containsPII:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$000()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$now:Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$100()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    iget-object v2, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$message:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v4, ""

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    move-object v2, v4

    .line 28
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v5, "["

    .line 31
    .line 32
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$diagnosticMetadata:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, " "

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    move-object v0, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v5, " - "

    .line 51
    .line 52
    invoke-static {v5, v0, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    const-string v5, "- "

    .line 57
    .line 58
    const-string v7, "] "

    .line 59
    .line 60
    invoke-static {v3, v0, v5, v1, v7}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v2, v6, v4, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$throwable:Ljava/lang/Throwable;

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "\n"

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$300()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 105
    .line 106
    .line 107
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$400()Ljava/util/HashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$400()Ljava/util/HashMap;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/microsoft/identity/common/java/logging/ILoggerCallback;

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    iget-object v3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$tag:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v4, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 146
    .line 147
    iget-boolean v5, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$containsPII:Z

    .line 148
    .line 149
    invoke-interface {v2, v3, v4, v0, v5}, Lcom/microsoft/identity/common/java/logging/ILoggerCallback;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$300()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$300()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_5
    const-string p0, "dateTimeStamp is marked non-null but is null"

    .line 179
    .line 180
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
