.class public abstract Lcom/microsoft/identity/common/java/util/FileUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final compareSemanticVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const-string v2, "\\."

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v2, p0

    .line 19
    array-length v3, p1

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    move v3, v0

    .line 25
    :goto_0
    if-ge v3, v2, :cond_5

    .line 26
    .line 27
    array-length v4, p0

    .line 28
    if-ge v3, v4, :cond_1

    .line 29
    .line 30
    aget-object v4, p0, v3

    .line 31
    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v0

    .line 38
    :goto_1
    array-length v5, p1

    .line 39
    if-ge v3, v5, :cond_2

    .line 40
    .line 41
    aget-object v5, p1, v3

    .line 42
    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v5, v0

    .line 49
    :goto_2
    if-ge v4, v5, :cond_3

    .line 50
    .line 51
    const/4 p0, -0x1

    .line 52
    return p0

    .line 53
    :cond_3
    if-le v4, v5, :cond_4

    .line 54
    .line 55
    return v1

    .line 56
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    return v0

    .line 60
    :cond_6
    const-string p0, "thisVersion is marked non-null but is null"

    .line 61
    .line 62
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Delete File"

    .line 10
    .line 11
    const-string v1, "FileUtil:deleteKeyFile"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const-string p0, "Failed to delete file."

    .line 23
    .line 24
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    const-string p0, "file is marked non-null but is null"

    .line 29
    .line 30
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static declared-synchronized getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/util/FileUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/io/PrintWriter;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public static isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p0, :cond_2

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/util/FileUtil;->compareSemanticVersion(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-ltz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    return v1

    .line 20
    :cond_2
    const-string p0, "first is marked non-null but is null"

    .line 21
    .line 22
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public static logExposedFieldsOfObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, ":"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeExposedFieldsOfObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p0, "object is marked non-null but is null"

    .line 33
    .line 34
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static logResult(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IResult;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    const-string v0, ":"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getSuccess()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v0, "Success Result"

    .line 31
    .line 32
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getSuccessResponse()Lcom/microsoft/identity/common/java/providers/oauth2/ISuccessResponse;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/util/FileUtil;->logExposedFieldsOfObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v0, "Failure Result"

    .line 44
    .line 45
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;->getError()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Error: "

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;->getError()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "Description: "

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/util/FileUtil;->logExposedFieldsOfObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v1, "Authorization Status: "

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :cond_5
    const-string p0, "result is marked non-null but is null"

    .line 170
    .line 171
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public static readFromFile(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x400

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 48
    .line 49
    .line 50
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 53
    .line 54
    const-string v1, "io_error"

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "FileUtil:readKeyData"

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    const-string p0, "file is marked non-null but is null"

    .line 74
    .line 75
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public static writeDataToFile(Ljava/io/File;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 19
    .line 20
    .line 21
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 24
    .line 25
    const-string v0, "io_error"

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "FileUtil:writeKeyData"

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_0
    const-string p0, "file is marked non-null but is null"

    .line 45
    .line 46
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const-string p0, "data is marked non-null but is null"

    .line 51
    .line 52
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
