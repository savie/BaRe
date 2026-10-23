.class public final Lcom/microsoft/identity/common/java/opentelemetry/NoopTraceState;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/crypto/wrappedsecretkey/IWrappedSecretKeySerializer;
.implements La98;


# virtual methods
.method public deserialize([B)Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;
    .locals 6

    .line 1
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string p0, "AbstractWrappedSecretKeySerializer:loadFromNewFormat"

    .line 4
    .line 5
    const-string v0, "Loading key using metadata format"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    new-instance v5, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-direct {v5, v2, v3, v4}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;->getKeyLength()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eq v0, v1, :cond_0

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "Key data length mismatch. Expected: "

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;->getKeyLength()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", Actual: "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    new-array v0, v0, [B

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v1, "Successfully loaded key with algorithm: "

    .line 123
    .line 124
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;->getAlgorithm()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", transformation: "

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;->getCipherTransformation()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance p0, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;->getAlgorithm()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {v5}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyMetadata;->getCipherTransformation()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 164
    .line 165
    .line 166
    return-object p0

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    goto :goto_0

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    :catchall_2
    move-exception p1

    .line 172
    :try_start_4
    invoke-static {v0, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :goto_0
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 177
    :catchall_3
    move-exception p1

    .line 178
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method

.method public forEach(Lqn8;)V
    .locals 0

    .line 1
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public serialize(Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;)[B
    .locals 2

    .line 1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getAlgorithm()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getCipherTransformation()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getWrappedKeyData()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    array-length v1, v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    array-length p0, v0

    .line 47
    add-int/lit8 p0, p0, 0xc

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getWrappedKeyData()[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    array-length v1, v1

    .line 54
    add-int/2addr p0, v1

    .line 55
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const v1, 0xff3cab

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    array-length v1, v0

    .line 72
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getWrappedKeyData()[B

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_0

    .line 98
    :catchall_1
    move-exception p1

    .line 99
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 100
    :catchall_2
    move-exception v1

    .line 101
    :try_start_4
    invoke-static {v0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 106
    :catchall_3
    move-exception v0

    .line 107
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method
