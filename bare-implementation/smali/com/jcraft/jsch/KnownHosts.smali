.class Lcom/jcraft/jsch/KnownHosts;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/HostKeyRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
    }
.end annotation


# static fields
.field public static final e:[B

.field public static final f:[B


# instance fields
.field public final a:Lcom/jcraft/jsch/JSch;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/Vector;

.field public final d:Lcom/jcraft/jsch/MAC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-byte v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->e:[B

    .line 10
    .line 11
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 12
    .line 13
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    const-string v1, "\n"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->f:[B

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "hmac-sha1"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-class v2, Lcom/jcraft/jsch/MAC;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/jcraft/jsch/MAC;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "unable to instantiate HMAC-class "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x3

    .line 68
    invoke-interface {p0, v2, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string v1, "instantiation of "

    .line 74
    .line 75
    const-string v2, " lead to an error"

    .line 76
    .line 77
    invoke-static {v1, p1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_0
    :goto_0
    new-instance p1, Ljava/util/Vector;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 91
    .line 92
    return-void
.end method

.method public static c(Ljava/io/FileOutputStream;Lcom/jcraft/jsch/HostKey;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/jcraft/jsch/HostKey;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p1, Lcom/jcraft/jsch/HostKey;->e:Ljava/lang/String;

    .line 10
    .line 11
    const-string v4, "UNKNOWN"

    .line 12
    .line 13
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    sget-object v5, Lcom/jcraft/jsch/KnownHosts;->f:[B

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sget-object v6, Lcom/jcraft/jsch/KnownHosts;->e:[B

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 85
    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 100
    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, v1, v2, v2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/jcraft/jsch/HostKey;->c:I

    .line 2
    .line 3
    iget-object v0, p1, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ge v3, v4, :cond_0

    .line 17
    .line 18
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/jcraft/jsch/HostKey;

    .line 25
    .line 26
    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string p1, " does not exist.\nAre you sure you want to create it?"

    .line 42
    .line 43
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_5

    .line 63
    .line 64
    if-eqz p2, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {p2, v3}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v4, "The parent directory "

    .line 91
    .line 92
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-interface {p2, p1}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, " has not been created."

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p2, p1}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move v3, v2

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, " has been succesfully created.\nPlease check its access permission."

    .line 148
    .line 149
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p2, p1}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    move v2, v3

    .line 163
    goto :goto_2

    .line 164
    :cond_5
    const/4 v2, 0x1

    .line 165
    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 166
    .line 167
    :goto_3
    return-void

    .line 168
    :cond_7
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_0
    move-exception p1

    .line 173
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    .line 174
    .line 175
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v0, "unable to sync known host file "

    .line 184
    .line 185
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    const/4 v0, 0x3

    .line 200
    invoke-interface {p0, v0, p2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    throw p0
.end method

.method public final b(Ljava/io/FileOutputStream;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/jcraft/jsch/HostKey;

    .line 20
    .line 21
    invoke-static {p1, v2}, Lcom/jcraft/jsch/KnownHosts;->c(Ljava/io/FileOutputStream;Lcom/jcraft/jsch/HostKey;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 v0, 0x3

    .line 43
    const-string v1, "unable to dump known hosts"

    .line 44
    .line 45
    invoke-interface {p0, v0, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final check(Ljava/lang/String;[B)I
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Lcom/jcraft/jsch/HostKey;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, p1, v1, p2, v3}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    move v5, v0

    .line 16
    move v4, v1

    .line 17
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ge v4, v6, :cond_3

    .line 24
    .line 25
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 26
    .line 27
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Lcom/jcraft/jsch/HostKey;

    .line 32
    .line 33
    invoke-virtual {v6, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    iget v7, v6, Lcom/jcraft/jsch/HostKey;->c:I

    .line 40
    .line 41
    iget v8, v2, Lcom/jcraft/jsch/HostKey;->c:I

    .line 42
    .line 43
    if-ne v7, v8, :cond_2

    .line 44
    .line 45
    iget-object v5, v6, Lcom/jcraft/jsch/HostKey;->d:[B

    .line 46
    .line 47
    invoke-static {v5, p2}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    monitor-exit v3

    .line 54
    return v1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v5, 0x2

    .line 58
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-ne v5, v0, :cond_4

    .line 63
    .line 64
    const-string v1, "["

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    const-string v1, "]:"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-le v1, v0, :cond_4

    .line 79
    .line 80
    const-string v1, "]:"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts;->check(Ljava/lang/String;[B)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    return p0

    .line 95
    :cond_4
    return v5

    .line 96
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    throw p0

    .line 98
    :catch_0
    move-exception p2

    .line 99
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v2, "exception while trying to read key while checking host \'"

    .line 108
    .line 109
    const-string v3, "\'"

    .line 110
    .line 111
    invoke-static {v2, p1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p0, v1, p1, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    return v0
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v7, v1, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/util/Vector;->removeAllElements()V

    .line 6
    .line 7
    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x400

    .line 14
    .line 15
    :try_start_0
    new-array v0, v0, [B

    .line 16
    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    move-object v9, v0

    .line 19
    move v0, v2

    .line 20
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    .line 21
    .line 22
    .line 23
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/16 v4, 0xa

    .line 25
    .line 26
    const/16 v5, 0xd

    .line 27
    .line 28
    const/4 v6, -0x1

    .line 29
    if-ne v3, v6, :cond_0

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    if-ne v3, v5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    if-ne v3, v4, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :try_start_2
    array-length v10, v9

    .line 44
    if-gt v10, v0, :cond_2f

    .line 45
    .line 46
    const/16 v10, 0x2800

    .line 47
    .line 48
    if-le v0, v10, :cond_2e

    .line 49
    .line 50
    :cond_3
    :goto_2
    move v3, v2

    .line 51
    :goto_3
    const/16 v10, 0x9

    .line 52
    .line 53
    const/16 v11, 0x20

    .line 54
    .line 55
    if-ge v3, v0, :cond_6

    .line 56
    .line 57
    aget-byte v12, v9, v3

    .line 58
    .line 59
    if-eq v12, v11, :cond_5

    .line 60
    .line 61
    if-ne v12, v10, :cond_4

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_4
    const/16 v13, 0x23

    .line 65
    .line 66
    if-ne v12, v13, :cond_6

    .line 67
    .line 68
    invoke-static {v9, v2, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1f

    .line 76
    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object v1, v0

    .line 79
    goto/16 :goto_20

    .line 80
    .line 81
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    if-lt v3, v0, :cond_7

    .line 85
    .line 86
    invoke-static {v9, v2, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_1f

    .line 94
    .line 95
    :cond_7
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    .line 97
    .line 98
    :goto_5
    if-ge v3, v0, :cond_a

    .line 99
    .line 100
    add-int/lit8 v12, v3, 0x1

    .line 101
    .line 102
    aget-byte v3, v9, v3

    .line 103
    .line 104
    if-eq v3, v11, :cond_9

    .line 105
    .line 106
    if-ne v3, v10, :cond_8

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    int-to-char v3, v3

    .line 110
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move v3, v12

    .line 114
    goto :goto_5

    .line 115
    :cond_9
    :goto_6
    move v3, v12

    .line 116
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    if-ge v3, v0, :cond_2d

    .line 121
    .line 122
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-nez v13, :cond_b

    .line 127
    .line 128
    goto/16 :goto_1e

    .line 129
    .line 130
    :cond_b
    :goto_7
    if-ge v3, v0, :cond_d

    .line 131
    .line 132
    aget-byte v13, v9, v3

    .line 133
    .line 134
    if-eq v13, v11, :cond_c

    .line 135
    .line 136
    if-ne v13, v10, :cond_d

    .line 137
    .line 138
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_d
    const-string v13, ""

    .line 142
    .line 143
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    const/16 v15, 0x40

    .line 148
    .line 149
    if-ne v14, v15, :cond_15

    .line 150
    .line 151
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    .line 153
    .line 154
    :goto_8
    if-ge v3, v0, :cond_10

    .line 155
    .line 156
    add-int/lit8 v13, v3, 0x1

    .line 157
    .line 158
    aget-byte v3, v9, v3

    .line 159
    .line 160
    if-eq v3, v11, :cond_f

    .line 161
    .line 162
    if-ne v3, v10, :cond_e

    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_e
    int-to-char v3, v3

    .line 166
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move v3, v13

    .line 170
    goto :goto_8

    .line 171
    :cond_f
    :goto_9
    move v3, v13

    .line 172
    :cond_10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    if-ge v3, v0, :cond_14

    .line 177
    .line 178
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    if-nez v14, :cond_11

    .line 183
    .line 184
    goto :goto_b

    .line 185
    :cond_11
    :goto_a
    if-ge v3, v0, :cond_13

    .line 186
    .line 187
    aget-byte v14, v9, v3

    .line 188
    .line 189
    if-eq v14, v11, :cond_12

    .line 190
    .line 191
    if-ne v14, v10, :cond_13

    .line 192
    .line 193
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    goto :goto_a

    .line 196
    :cond_13
    move-object/from16 v16, v13

    .line 197
    .line 198
    move-object v13, v12

    .line 199
    move-object/from16 v12, v16

    .line 200
    .line 201
    goto :goto_c

    .line 202
    :cond_14
    :goto_b
    invoke-static {v9, v2, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_1f

    .line 210
    .line 211
    :cond_15
    :goto_c
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    .line 213
    .line 214
    :goto_d
    if-ge v3, v0, :cond_18

    .line 215
    .line 216
    add-int/lit8 v14, v3, 0x1

    .line 217
    .line 218
    aget-byte v3, v9, v3

    .line 219
    .line 220
    if-eq v3, v11, :cond_17

    .line 221
    .line 222
    if-ne v3, v10, :cond_16

    .line 223
    .line 224
    goto :goto_e

    .line 225
    :cond_16
    int-to-char v3, v3

    .line 226
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move v3, v14

    .line 230
    goto :goto_d

    .line 231
    :cond_17
    :goto_e
    move v3, v14

    .line 232
    :cond_18
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    move v15, v2

    .line 237
    :goto_f
    sget-object v4, Lcom/jcraft/jsch/HostKey;->f:[[B

    .line 238
    .line 239
    array-length v5, v4

    .line 240
    if-ge v15, v5, :cond_1a

    .line 241
    .line 242
    aget-object v4, v4, v15

    .line 243
    .line 244
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_19

    .line 253
    .line 254
    add-int/lit8 v15, v15, 0x1

    .line 255
    .line 256
    goto :goto_10

    .line 257
    :cond_19
    add-int/lit8 v15, v15, 0x1

    .line 258
    .line 259
    const/16 v5, 0xd

    .line 260
    .line 261
    goto :goto_f

    .line 262
    :cond_1a
    move v15, v6

    .line 263
    :goto_10
    if-eq v15, v6, :cond_1d

    .line 264
    .line 265
    move v4, v2

    .line 266
    :goto_11
    sget-object v5, Lcom/jcraft/jsch/HostKey;->f:[[B

    .line 267
    .line 268
    array-length v15, v5

    .line 269
    if-ge v4, v15, :cond_1c

    .line 270
    .line 271
    aget-object v5, v5, v4

    .line 272
    .line 273
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_1b

    .line 282
    .line 283
    add-int/lit8 v6, v4, 0x1

    .line 284
    .line 285
    goto :goto_12

    .line 286
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    .line 287
    .line 288
    goto :goto_11

    .line 289
    :cond_1c
    :goto_12
    move v4, v6

    .line 290
    goto :goto_13

    .line 291
    :cond_1d
    move v3, v0

    .line 292
    goto :goto_12

    .line 293
    :goto_13
    if-lt v3, v0, :cond_1e

    .line 294
    .line 295
    invoke-static {v9, v2, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1f

    .line 303
    .line 304
    :cond_1e
    :goto_14
    if-ge v3, v0, :cond_20

    .line 305
    .line 306
    aget-byte v5, v9, v3

    .line 307
    .line 308
    if-eq v5, v11, :cond_1f

    .line 309
    .line 310
    if-ne v5, v10, :cond_20

    .line 311
    .line 312
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    goto :goto_14

    .line 315
    :cond_20
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 316
    .line 317
    .line 318
    :goto_15
    if-ge v3, v0, :cond_25

    .line 319
    .line 320
    add-int/lit8 v5, v3, 0x1

    .line 321
    .line 322
    aget-byte v3, v9, v3

    .line 323
    .line 324
    const/16 v6, 0xd

    .line 325
    .line 326
    if-ne v3, v6, :cond_21

    .line 327
    .line 328
    goto :goto_16

    .line 329
    :cond_21
    const/16 v6, 0xa

    .line 330
    .line 331
    if-ne v3, v6, :cond_22

    .line 332
    .line 333
    goto :goto_17

    .line 334
    :cond_22
    if-eq v3, v11, :cond_24

    .line 335
    .line 336
    if-ne v3, v10, :cond_23

    .line 337
    .line 338
    goto :goto_17

    .line 339
    :cond_23
    int-to-char v3, v3

    .line 340
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    :goto_16
    move v3, v5

    .line 344
    goto :goto_15

    .line 345
    :cond_24
    :goto_17
    move v3, v5

    .line 346
    :cond_25
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-nez v6, :cond_26

    .line 355
    .line 356
    invoke-static {v9, v2, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto :goto_1f

    .line 364
    :cond_26
    :goto_18
    if-ge v3, v0, :cond_28

    .line 365
    .line 366
    aget-byte v6, v9, v3

    .line 367
    .line 368
    if-eq v6, v11, :cond_27

    .line 369
    .line 370
    if-ne v6, v10, :cond_28

    .line 371
    .line 372
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 373
    .line 374
    goto :goto_18

    .line 375
    :cond_28
    if-ge v3, v0, :cond_2c

    .line 376
    .line 377
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 378
    .line 379
    .line 380
    :goto_19
    if-ge v3, v0, :cond_2b

    .line 381
    .line 382
    add-int/lit8 v6, v3, 0x1

    .line 383
    .line 384
    aget-byte v3, v9, v3

    .line 385
    .line 386
    const/16 v10, 0xd

    .line 387
    .line 388
    if-ne v3, v10, :cond_29

    .line 389
    .line 390
    const/16 v11, 0xa

    .line 391
    .line 392
    goto :goto_1a

    .line 393
    :cond_29
    const/16 v11, 0xa

    .line 394
    .line 395
    if-ne v3, v11, :cond_2a

    .line 396
    .line 397
    goto :goto_1b

    .line 398
    :cond_2a
    int-to-char v3, v3

    .line 399
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    :goto_1a
    move v3, v6

    .line 403
    goto :goto_19

    .line 404
    :cond_2b
    :goto_1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    :goto_1c
    move-object v6, v0

    .line 409
    goto :goto_1d

    .line 410
    :cond_2c
    const/4 v0, 0x0

    .line 411
    goto :goto_1c

    .line 412
    :goto_1d
    new-instance v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    .line 413
    .line 414
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 415
    .line 416
    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-static {v3, v2, v5}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    move-object v3, v12

    .line 429
    move-object v2, v13

    .line 430
    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    goto :goto_1f

    .line 437
    :cond_2d
    :goto_1e
    invoke-static {v9, v2, v0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :goto_1f
    move-object v0, v9

    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_2e
    array-length v4, v9

    .line 448
    mul-int/lit8 v4, v4, 0x2

    .line 449
    .line 450
    new-array v4, v4, [B

    .line 451
    .line 452
    array-length v5, v9

    .line 453
    invoke-static {v9, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    .line 455
    .line 456
    move-object v9, v4

    .line 457
    :cond_2f
    add-int/lit8 v4, v0, 0x1

    .line 458
    .line 459
    int-to-byte v3, v3

    .line 460
    aput-byte v3, v9, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    .line 462
    move v0, v4

    .line 463
    goto/16 :goto_1

    .line 464
    .line 465
    :goto_20
    if-eqz p1, :cond_30

    .line 466
    .line 467
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 468
    .line 469
    .line 470
    goto :goto_21

    .line 471
    :catchall_1
    move-exception v0

    .line 472
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 473
    .line 474
    .line 475
    :cond_30
    :goto_21
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    .line 478
    .line 479
    if-nez v1, :cond_31

    .line 480
    .line 481
    invoke-static {v0}, La6;->f(Ljava/lang/Throwable;)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :cond_31
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    .line 486
    .line 487
    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->b(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_2
    move-exception v0

    .line 31
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    throw p1

    .line 35
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    throw p1
.end method

.method public final getHostKey()[Lcom/jcraft/jsch/HostKey;
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0, v0}, Lcom/jcraft/jsch/KnownHosts;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object p0

    return-object p0
.end method

.method public final getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_3

    .line 18
    .line 19
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/jcraft/jsch/HostKey;

    .line 26
    .line 27
    iget v5, v4, Lcom/jcraft/jsch/HostKey;->c:I

    .line 28
    .line 29
    const/4 v6, -0x1

    .line 30
    if-ne v5, v6, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_4

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    new-array v4, v3, [Lcom/jcraft/jsch/HostKey;

    .line 67
    .line 68
    move v5, v2

    .line 69
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ge v5, v6, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Lcom/jcraft/jsch/HostKey;

    .line 80
    .line 81
    aput-object v6, v4, v5

    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    if-eqz p1, :cond_5

    .line 87
    .line 88
    const-string v1, "["

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    const-string v1, "]:"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/4 v5, 0x1

    .line 103
    if-le v1, v5, :cond_5

    .line 104
    .line 105
    const-string v1, "]:"

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    array-length p1, p0

    .line 120
    if-lez p1, :cond_5

    .line 121
    .line 122
    array-length p1, p0

    .line 123
    add-int/2addr p1, v3

    .line 124
    new-array p1, p1, [Lcom/jcraft/jsch/HostKey;

    .line 125
    .line 126
    invoke-static {v4, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    array-length p2, p0

    .line 130
    invoke-static {p0, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    .line 132
    .line 133
    move-object v4, p1

    .line 134
    :cond_5
    monitor-exit v0

    .line 135
    return-object v4

    .line 136
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw p0
.end method

.method public final getKnownHostsRepositoryID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/KnownHosts;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ge v2, v4, :cond_9

    .line 14
    .line 15
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/jcraft/jsch/HostKey;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_8

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_8

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    iget-object v6, v4, Lcom/jcraft/jsch/HostKey;->d:[B

    .line 47
    .line 48
    invoke-static {p3, v6}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_8

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_0
    :goto_1
    iget-object v3, v4, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_7

    .line 67
    .line 68
    instance-of v6, v4, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    .line 69
    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    move-object v6, v4

    .line 73
    check-cast v6, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    .line 74
    .line 75
    iget-boolean v6, v6, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    .line 76
    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    move v8, v1

    .line 89
    :goto_2
    if-ge v8, v7, :cond_4

    .line 90
    .line 91
    const/16 v9, 0x2c

    .line 92
    .line 93
    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->indexOf(II)I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const/4 v10, -0x1

    .line 98
    if-ne v9, v10, :cond_2

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-nez v10, :cond_3

    .line 110
    .line 111
    add-int/lit8 v8, v9, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    add-int/lit8 v9, v9, 0x1

    .line 119
    .line 120
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    goto :goto_5

    .line 129
    :cond_4
    :goto_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_6

    .line 134
    .line 135
    sub-int v8, v7, v8

    .line 136
    .line 137
    if-ne v8, v6, :cond_6

    .line 138
    .line 139
    if-ne v6, v7, :cond_5

    .line 140
    .line 141
    move v7, v1

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    sub-int/2addr v7, v6

    .line 144
    sub-int/2addr v7, v5

    .line 145
    :goto_4
    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    :cond_6
    :goto_5
    iput-object v3, v4, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_7
    :goto_6
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    add-int/lit8 v2, v2, -0x1

    .line 158
    .line 159
    :goto_7
    move v3, v5

    .line 160
    :cond_8
    add-int/2addr v2, v5

    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    if-eqz v3, :cond_a

    .line 165
    .line 166
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    .line 167
    .line 168
    if-eqz p1, :cond_a

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KnownHosts;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .line 172
    .line 173
    :catch_0
    :cond_a
    return-void

    .line 174
    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    throw p0
.end method
