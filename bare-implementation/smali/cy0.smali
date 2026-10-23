.class public abstract Lcy0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lhw5;


# static fields
.field public static final a:Lxd;

.field public static b:Lrt3;

.field public static final c:Lq34;

.field public static final d:Lma2;

.field public static final e:Llv1;

.field public static final f:Ly53;

.field public static final g:Ly53;

.field public static final h:Ly53;

.field public static final i:[Ly53;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lxd;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcy0;->a:Lxd;

    .line 7
    .line 8
    new-instance v0, Ln63;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ln63;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcy0;->b:Lrt3;

    .line 15
    .line 16
    new-instance v0, Lq34;

    .line 17
    .line 18
    const/16 v1, 0xb

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lq34;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcy0;->c:Lq34;

    .line 24
    .line 25
    new-instance v0, Lma2;

    .line 26
    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lma2;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcy0;->d:Lma2;

    .line 33
    .line 34
    new-instance v0, Llv1;

    .line 35
    .line 36
    const/16 v1, 0x13

    .line 37
    .line 38
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcy0;->e:Llv1;

    .line 42
    .line 43
    new-instance v2, Ly53;

    .line 44
    .line 45
    const-string v0, "GET_CREDENTIAL"

    .line 46
    .line 47
    const-wide/16 v3, 0x1

    .line 48
    .line 49
    invoke-direct {v2, v0, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 50
    .line 51
    .line 52
    sput-object v2, Lcy0;->f:Ly53;

    .line 53
    .line 54
    new-instance v0, Ly53;

    .line 55
    .line 56
    const-string v1, "CREDENTIAL_REGISTRY"

    .line 57
    .line 58
    invoke-direct {v0, v1, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Ly53;

    .line 62
    .line 63
    const-string v5, "CLEAR_REGISTRY"

    .line 64
    .line 65
    const-wide/16 v6, 0x2

    .line 66
    .line 67
    invoke-direct {v1, v5, v6, v7}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Ly53;

    .line 71
    .line 72
    const-string v6, "CLEAR_CREATION_OPTIONS"

    .line 73
    .line 74
    invoke-direct {v5, v6, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 75
    .line 76
    .line 77
    new-instance v6, Ly53;

    .line 78
    .line 79
    const-string v7, "CLEAR_CREDENTIAL_STATE"

    .line 80
    .line 81
    invoke-direct {v6, v7, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 82
    .line 83
    .line 84
    sput-object v6, Lcy0;->g:Ly53;

    .line 85
    .line 86
    new-instance v7, Ly53;

    .line 87
    .line 88
    const-string v8, "CREATE_CREDENTIAL"

    .line 89
    .line 90
    const-wide/16 v9, 0x3

    .line 91
    .line 92
    invoke-direct {v7, v8, v9, v10}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 93
    .line 94
    .line 95
    sput-object v7, Lcy0;->h:Ly53;

    .line 96
    .line 97
    new-instance v8, Ly53;

    .line 98
    .line 99
    const-string v11, "REGISTER_CREATION_OPTIONS"

    .line 100
    .line 101
    invoke-direct {v8, v11, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 102
    .line 103
    .line 104
    new-instance v11, Ly53;

    .line 105
    .line 106
    const-string v12, "REGISTER_EXPORT"

    .line 107
    .line 108
    invoke-direct {v11, v12, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 109
    .line 110
    .line 111
    new-instance v12, Ly53;

    .line 112
    .line 113
    const-string v13, "IMPORT_CREDENTIALS"

    .line 114
    .line 115
    invoke-direct {v12, v13, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 116
    .line 117
    .line 118
    move-object v13, v11

    .line 119
    new-instance v11, Ly53;

    .line 120
    .line 121
    const-string v14, "SIGNAL_CREDENTIAL_STATE"

    .line 122
    .line 123
    invoke-direct {v11, v14, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 124
    .line 125
    .line 126
    move-object v14, v12

    .line 127
    new-instance v12, Ly53;

    .line 128
    .line 129
    const-string v15, "CLEAR_EXPORT"

    .line 130
    .line 131
    invoke-direct {v12, v15, v3, v4}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 132
    .line 133
    .line 134
    move-object v3, v13

    .line 135
    new-instance v13, Ly53;

    .line 136
    .line 137
    const-string v4, "IMPORT_CREDENTIALS_FOR_DEVICE_SETUP"

    .line 138
    .line 139
    invoke-direct {v13, v4, v9, v10}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    move-object v4, v14

    .line 143
    new-instance v14, Ly53;

    .line 144
    .line 145
    const-string v15, "EXPORT_CREDENTIALS_TO_DEVICE_SETUP"

    .line 146
    .line 147
    invoke-direct {v14, v15, v9, v10}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 148
    .line 149
    .line 150
    new-instance v15, Ly53;

    .line 151
    .line 152
    move-object/from16 v16, v0

    .line 153
    .line 154
    const-string v0, "GET_CREDENTIAL_TRANSFER_CAPABILITIES"

    .line 155
    .line 156
    invoke-direct {v15, v0, v9, v10}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 157
    .line 158
    .line 159
    move-object v9, v3

    .line 160
    move-object v10, v4

    .line 161
    move-object/from16 v3, v16

    .line 162
    .line 163
    move-object v4, v1

    .line 164
    filled-new-array/range {v2 .. v15}, [Ly53;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    sput-object v0, Lcy0;->i:[Ly53;

    .line 169
    .line 170
    return-void
.end method

.method public static A(Lq63;Ljava/lang/String;Lo93;Z)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    sget-object v0, Lo93;->NORMAL:Lo93;

    .line 11
    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    array-length v1, v0

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    sget-object v0, Lrv2;->a:Lrv2;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance v1, Lw50;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lw50;-><init>([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :goto_0
    new-instance v1, Lsh;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v1, v2}, Lsh;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lme3;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, v0, v3, v1}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcz;

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Lq98;

    .line 62
    .line 63
    invoke-direct {p0, v2, v0}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 64
    .line 65
    .line 66
    if-eqz p3, :cond_3

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-static {p0, v0}, Lh77;->B0(Lf77;I)Lf77;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {p0}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_5
    invoke-static {p1}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p3, :cond_6

    .line 90
    .line 91
    const-string p3, " -print -quit"

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    const-string p3, " -print"

    .line 95
    .line 96
    :goto_2
    const-string v0, " ! -path "

    .line 97
    .line 98
    const-string v1, " ! -name \'.fuse*\'"

    .line 99
    .line 100
    const-string v2, "find "

    .line 101
    .line 102
    invoke-static {v2, p0, v0, p0, v1}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0, p2}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lub;->a()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_9

    .line 122
    .line 123
    iget-object p0, p0, Lub;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Ljava/util/List;

    .line 126
    .line 127
    new-instance p1, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_8

    .line 141
    .line 142
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    move-object p3, p2

    .line 147
    check-cast p3, Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {p3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-nez p3, :cond_7

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    return-object p1

    .line 160
    :cond_9
    new-instance p0, Ljr7;

    .line 161
    .line 162
    invoke-direct {p0, p1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p0}, Lcy0;->z(Ljr7;)Ljava/util/ArrayList;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    .line 170
    .line 171
    const/16 p2, 0xa

    .line 172
    .line 173
    invoke-static {p0, p2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_a

    .line 189
    .line 190
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Ljr7;

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_a
    return-object p1
.end method

.method public static B(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "DirectoryCleaner"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static C([D[[D)[D
    .locals 17

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    aget-object v3, p1, v0

    .line 5
    .line 6
    aget-wide v4, v3, v0

    .line 7
    .line 8
    mul-double/2addr v4, v1

    .line 9
    const/4 v6, 0x1

    .line 10
    aget-wide v7, p0, v6

    .line 11
    .line 12
    aget-wide v9, v3, v6

    .line 13
    .line 14
    mul-double/2addr v9, v7

    .line 15
    add-double/2addr v9, v4

    .line 16
    const/4 v4, 0x2

    .line 17
    aget-wide v11, p0, v4

    .line 18
    .line 19
    aget-wide v13, v3, v4

    .line 20
    .line 21
    mul-double/2addr v13, v11

    .line 22
    add-double/2addr v13, v9

    .line 23
    aget-object v3, p1, v6

    .line 24
    .line 25
    aget-wide v9, v3, v0

    .line 26
    .line 27
    mul-double/2addr v9, v1

    .line 28
    aget-wide v15, v3, v6

    .line 29
    .line 30
    mul-double/2addr v15, v7

    .line 31
    add-double/2addr v15, v9

    .line 32
    aget-wide v9, v3, v4

    .line 33
    .line 34
    mul-double/2addr v9, v11

    .line 35
    add-double/2addr v9, v15

    .line 36
    aget-object v3, p1, v4

    .line 37
    .line 38
    aget-wide v15, v3, v0

    .line 39
    .line 40
    mul-double/2addr v1, v15

    .line 41
    aget-wide v15, v3, v6

    .line 42
    .line 43
    mul-double/2addr v7, v15

    .line 44
    add-double/2addr v7, v1

    .line 45
    aget-wide v1, v3, v4

    .line 46
    .line 47
    mul-double/2addr v11, v1

    .line 48
    add-double/2addr v11, v7

    .line 49
    const/4 v1, 0x3

    .line 50
    new-array v1, v1, [D

    .line 51
    .line 52
    aput-wide v13, v1, v0

    .line 53
    .line 54
    aput-wide v9, v1, v6

    .line 55
    .line 56
    aput-wide v11, v1, v4

    .line 57
    .line 58
    return-object v1
.end method

.method public static D(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2f

    .line 5
    .line 6
    const/16 v1, 0x5c

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, ":\\\\"

    .line 16
    .line 17
    const-string v2, "\\"

    .line 18
    .line 19
    invoke-static {p0, v0, v2}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [C

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput-char v1, v0, v2

    .line 28
    .line 29
    invoke-static {p0, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final E(Ljava/io/InputStream;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x2000

    .line 11
    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0, v2}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public static final F(Ldd1;Ljava/lang/String;)Ldd1;
    .locals 4

    .line 1
    invoke-static {}, Ldd1;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v3, v1

    .line 21
    check-cast v3, Ldd1;

    .line 22
    .line 23
    invoke-virtual {v3}, Ldd1;->getConstant()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, v2

    .line 35
    :goto_0
    check-cast v1, Ldd1;

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    if-eq p0, v1, :cond_2

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_2
    if-nez p0, :cond_3

    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_3
    return-object p0
.end method

.method public static G(I)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, -0x3361d2af

    .line 3
    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    long-to-int p0, v0

    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long v0, p0

    .line 14
    const-wide/32 v2, 0x1b873593

    .line 15
    .line 16
    .line 17
    mul-long/2addr v0, v2

    .line 18
    long-to-int p0, v0

    .line 19
    return p0
.end method

.method public static H(Ljava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    :goto_0
    invoke-static {p0}, Lcy0;->G(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final I(Ljava/lang/CharSequence;Ljava/lang/String;)Lc12;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :sswitch_0
    const-string v0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lf12;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lf12;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :sswitch_1
    const-string v0, "android.credentials.CreateCredentialException.TYPE_INTERRUPTED"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Le12;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Le12;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :sswitch_2
    const-string v0, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance p1, Ll12;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ll12;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :sswitch_3
    const-string v0, "androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance p1, Lg12;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lg12;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :sswitch_4
    const-string v0, "androidx.credentials.TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p1, Lm12;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Lm12;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :sswitch_5
    const-string v0, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    :goto_0
    const-string v0, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION"

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    sget v2, Ld22;->c:I

    .line 102
    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 p0, 0x0

    .line 111
    :goto_1
    :try_start_0
    invoke-static {p1, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    sget v0, Ld22;->c:I

    .line 118
    .line 119
    invoke-static {p1, p0}, Ljd4;->k(Ljava/lang/String;Ljava/lang/String;)Lc12;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_6
    new-instance v0, Lfs3;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 127
    .line 128
    .line 129
    throw v0
    :try_end_0
    .catch Lfs3; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    new-instance v0, Lb12;

    .line 131
    .line 132
    invoke-direct {v0, p0, p1}, Lb12;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_7
    new-instance v0, Lb12;

    .line 137
    .line 138
    invoke-direct {v0, p0, p1}, Lb12;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_8
    new-instance p1, La12;

    .line 143
    .line 144
    invoke-direct {p1, p0}, La12;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    nop

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x7a828535 -> :sswitch_5
        -0x458a486e -> :sswitch_4
        -0x22966b75 -> :sswitch_3
        0x4e7e62e8 -> :sswitch_2
        0x7cba5de0 -> :sswitch_1
        0x7f1271b7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final J(Ljava/lang/CharSequence;Ljava/lang/String;)Lwv3;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :sswitch_0
    const-string v0, "androidx.credentials.TYPE_GET_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lyv3;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lyv3;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :sswitch_1
    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Lan5;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lan5;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :sswitch_2
    const-string v0, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance p1, Lsv3;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lsv3;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :sswitch_3
    const-string v0, "android.credentials.GetCredentialException.TYPE_INTERRUPTED"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance p1, Lxv3;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lxv3;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :sswitch_4
    const-string v0, "androidx.credentials.TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p1, Ldw3;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Ldw3;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :sswitch_5
    const-string v0, "android.credentials.GetCredentialException.TYPE_UNKNOWN"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    :goto_0
    const-string v0, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION"

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    sget v2, Lvw3;->b:I

    .line 102
    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 p0, 0x0

    .line 111
    :goto_1
    :try_start_0
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    sget v0, Lvw3;->b:I

    .line 118
    .line 119
    invoke-static {p1, p0}, Ljb9;->o(Ljava/lang/String;Ljava/lang/String;)Lwv3;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_6
    new-instance v0, Lfs3;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 127
    .line 128
    .line 129
    throw v0
    :try_end_0
    .catch Lfs3; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    new-instance v0, Lvv3;

    .line 131
    .line 132
    invoke-direct {v0, p0, p1}, Lvv3;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_7
    new-instance v0, Lvv3;

    .line 137
    .line 138
    invoke-direct {v0, p0, p1}, Lvv3;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_8
    new-instance p1, Lcw3;

    .line 143
    .line 144
    invoke-direct {p1, p0}, Lcw3;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    nop

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x2e8eeb80 -> :sswitch_5
        -0x1853f64c -> :sswitch_4
        -0x2b57c88 -> :sswitch_3
        0x229a9a63 -> :sswitch_2
        0x256cf16b -> :sswitch_1
        0x5f03f929 -> :sswitch_0
    .end sparse-switch
.end method

.method public static K([BI)[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    array-length v1, p0

    .line 3
    invoke-static {p0, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lq48;->c(Ljava/nio/ByteBuffer;)Lq48;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Lq48;->a:I

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lq48;->b()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p0, Lvk0;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "Expected tag: %02x, got %02x"

    .line 41
    .line 42
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    const-string p0, "Extra data remaining"

    .line 51
    .line 52
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static L(Ldh9;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldh9;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Ldh9;->f()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ldh9;->c(I)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x22

    .line 22
    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x27

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x5c

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-lt v2, v4, :cond_0

    .line 39
    .line 40
    const/16 v4, 0x7e

    .line 41
    .line 42
    if-gt v2, v4, :cond_0

    .line 43
    .line 44
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    ushr-int/lit8 v3, v2, 0x6

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0x3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    int-to-char v3, v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    ushr-int/lit8 v3, v2, 0x3

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x7

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x30

    .line 67
    .line 68
    int-to-char v3, v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v2, v2, 0x7

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x30

    .line 75
    .line 76
    int-to-char v2, v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    const-string v2, "\\r"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    const-string v2, "\\f"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    const-string v2, "\\v"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_3
    const-string v2, "\\n"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_4
    const-string v2, "\\t"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_5
    const-string v2, "\\b"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_6
    const-string v2, "\\a"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const-string v2, "\\\\"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const-string v2, "\\\'"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string v2, "\\\""

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static M(B)Z
    .locals 1

    .line 1
    const/16 v0, -0x41

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static e(Lq63;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ldm2;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v1, v3}, Ldm2;-><init>(Lq63;Ljv1;)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Li77;

    .line 15
    .line 16
    invoke-direct {v4, v0}, Li77;-><init>(Lqt3;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Lh77;->x0(Lf77;)Lmn2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lmn2;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :goto_0
    move-object v0, v4

    .line 28
    check-cast v0, Lv3;

    .line 29
    .line 30
    invoke-virtual {v0}, Lv3;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lv3;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lo93;

    .line 41
    .line 42
    :try_start_0
    invoke-static {v1, v0}, Lcy0;->h(Lq63;Lo93;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-boolean v0, Lq63;->d:Z

    .line 52
    .line 53
    const-string v0, "Failed cleaning directory at "

    .line 54
    .line 55
    invoke-static {v1, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Lcy0;->b:Lrt3;

    .line 60
    .line 61
    const-string v6, "DirectoryCleaner"

    .line 62
    .line 63
    invoke-interface {v5, v6, v4, v3}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget v4, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 67
    .line 68
    invoke-static {}, Lk55;->j()Lzd7;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/16 v5, 0xa

    .line 77
    .line 78
    const-string v7, ": "

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    if-eqz v4, :cond_b

    .line 82
    .line 83
    new-instance v4, Ljr7;

    .line 84
    .line 85
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-direct {v4, v9}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v9, "[ -d @@ ]"

    .line 93
    .line 94
    invoke-virtual {v4, v9}, Ljr7;->b(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_a

    .line 99
    .line 100
    invoke-static {}, Lk55;->j()Lzd7;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v10}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_1

    .line 109
    .line 110
    sget-object v10, Lo93;->ROOT:Lo93;

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    sget-object v10, Lqe7;->a:Lgv7;

    .line 114
    .line 115
    invoke-static {}, Lle7;->f()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_8

    .line 120
    .line 121
    invoke-static {}, Lqe7;->b()Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-eqz v10, :cond_8

    .line 126
    .line 127
    sget-object v10, Lo93;->SHIZUKU:Lo93;

    .line 128
    .line 129
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v11}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    const-string v12, " ! -path "

    .line 141
    .line 142
    const-string v13, " -print"

    .line 143
    .line 144
    const-string v14, "find "

    .line 145
    .line 146
    invoke-static {v14, v11, v12, v11, v13}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-static {v11, v10}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v10}, Lub;->a()Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-nez v11, :cond_2

    .line 159
    .line 160
    invoke-static {v4}, Lcy0;->z(Ljr7;)Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_2
    iget-object v4, v10, Lub;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v4, Ljava/util/List;

    .line 169
    .line 170
    new-instance v10, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-eqz v11, :cond_4

    .line 184
    .line 185
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    move-object v12, v11

    .line 190
    check-cast v12, Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v12}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    if-nez v12, :cond_3

    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-static {v10, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-eqz v11, :cond_5

    .line 220
    .line 221
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    check-cast v11, Ljava/lang/String;

    .line 226
    .line 227
    new-instance v12, Ljr7;

    .line 228
    .line 229
    invoke-direct {v12, v11}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-eqz v11, :cond_7

    .line 250
    .line 251
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    move-object v12, v11

    .line 256
    check-cast v12, Ljr7;

    .line 257
    .line 258
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    const-string v13, ".fuse"

    .line 266
    .line 267
    invoke-static {v12, v13, v8}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    if-nez v12, :cond_6

    .line 272
    .line 273
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_7
    move-object v4, v10

    .line 278
    goto :goto_5

    .line 279
    :cond_8
    invoke-static {v4}, Lcy0;->z(Ljr7;)Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    :goto_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    move v10, v8

    .line 288
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    if-eqz v11, :cond_b

    .line 293
    .line 294
    add-int/lit8 v10, v10, 0x1

    .line 295
    .line 296
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    check-cast v11, Ljr7;

    .line 301
    .line 302
    sget-boolean v12, Lq63;->d:Z

    .line 303
    .line 304
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    invoke-virtual {v11, v9}, Ljr7;->b(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    if-eqz v11, :cond_9

    .line 313
    .line 314
    const-string v11, "/"

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_9
    const-string v11, ""

    .line 318
    .line 319
    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v14, "Remnant #"

    .line 322
    .line 323
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    sget-object v12, Lcy0;->b:Lrt3;

    .line 343
    .line 344
    invoke-interface {v12, v6, v11, v3}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_a
    const-string v0, "listRecursive: Not a directory \'"

    .line 349
    .line 350
    const-string v1, "\'"

    .line 351
    .line 352
    invoke-static {v4, v1, v0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    move v9, v8

    .line 361
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    const-string v11, "Error#"

    .line 366
    .line 367
    if-eqz v10, :cond_d

    .line 368
    .line 369
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    add-int/lit8 v12, v9, 0x1

    .line 374
    .line 375
    if-ltz v9, :cond_c

    .line 376
    .line 377
    check-cast v10, Ljava/lang/Exception;

    .line 378
    .line 379
    sget-boolean v13, Lq63;->d:Z

    .line 380
    .line 381
    invoke-static {v9, v11}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    sget-object v11, Lcy0;->b:Lrt3;

    .line 386
    .line 387
    invoke-interface {v11, v6, v9, v10}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move v9, v12

    .line 391
    goto :goto_8

    .line 392
    :cond_c
    invoke-static {}, Lfl1;->F0()V

    .line 393
    .line 394
    .line 395
    throw v3

    .line 396
    :cond_d
    new-instance v13, Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-static {v2, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-eqz v4, :cond_11

    .line 414
    .line 415
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    add-int/lit8 v5, v8, 0x1

    .line 420
    .line 421
    if-ltz v8, :cond_10

    .line 422
    .line 423
    check-cast v4, Ljava/lang/Exception;

    .line 424
    .line 425
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    if-eqz v4, :cond_f

    .line 438
    .line 439
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 440
    .line 441
    .line 442
    move-result v9

    .line 443
    if-nez v9, :cond_e

    .line 444
    .line 445
    goto :goto_a

    .line 446
    :cond_e
    invoke-static {v6, v7, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    :cond_f
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move v8, v5

    .line 472
    goto :goto_9

    .line 473
    :cond_10
    invoke-static {}, Lfl1;->F0()V

    .line 474
    .line 475
    .line 476
    throw v3

    .line 477
    :cond_11
    const/16 v17, 0x0

    .line 478
    .line 479
    const/16 v18, 0x3f

    .line 480
    .line 481
    const/4 v14, 0x0

    .line 482
    const/4 v15, 0x0

    .line 483
    const/16 v16, 0x0

    .line 484
    .line 485
    invoke-static/range {v13 .. v18}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    new-instance v3, Ljava/lang/RuntimeException;

    .line 490
    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v0, ". ERRORS: "

    .line 500
    .line 501
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v3
.end method

.method public static f(Lq63;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcy0;->e(Lq63;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq63;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcy0;->e(Lq63;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static h(Lq63;Lo93;)V
    .locals 13

    .line 1
    sget-boolean v0, Lq63;->d:Z

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "cleanDirWithShell: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcy0;->B(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lq63;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "Directory doesn\'t exist at "

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcy0;->B(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcm2;->a:[I

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    aget v0, v0, v1

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x1

    .line 50
    if-eq v0, v2, :cond_3

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    if-eq v0, v3, :cond_2

    .line 54
    .line 55
    const/4 v3, 0x3

    .line 56
    if-ne v0, v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v3, "/storage/emulated/"

    .line 68
    .line 69
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    const-string v4, "/storage/emulated/0/"

    .line 76
    .line 77
    invoke-static {v0, v4, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    new-instance v4, Ljava/io/File;

    .line 84
    .line 85
    const-string v5, "/data/media/"

    .line 86
    .line 87
    invoke-static {v0, v3, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lzv1;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_4
    :goto_1
    invoke-static {v0, p1}, Lcy0;->i(Ljava/lang/String;Lo93;)Lub;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {p0, v0, p1, v2}, Lcy0;->A(Lq63;Ljava/lang/String;Lo93;Z)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    goto/16 :goto_8

    .line 125
    .line 126
    :cond_5
    invoke-static {p0, v0, p1, v1}, Lcy0;->A(Lq63;Ljava/lang/String;Lo93;Z)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    const/4 v9, 0x0

    .line 135
    const/16 v10, 0x3f

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, " remnants: "

    .line 153
    .line 154
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4}, Lcy0;->B(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance v4, Ljr7;

    .line 168
    .line 169
    invoke-direct {v4, v0}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v6, Ljava/util/ArrayList;

    .line 173
    .line 174
    const/16 v7, 0xa

    .line 175
    .line 176
    invoke-static {v5, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-eqz v9, :cond_6

    .line 192
    .line 193
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    check-cast v9, Ljava/lang/String;

    .line 198
    .line 199
    new-instance v10, Ljr7;

    .line 200
    .line 201
    invoke-direct {v10, v9}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_8

    .line 222
    .line 223
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    move-object v10, v9

    .line 228
    check-cast v10, Ljr7;

    .line 229
    .line 230
    const-string v11, "[ -f @@ ]"

    .line 231
    .line 232
    invoke-virtual {v10, v11}, Ljr7;->b(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-eqz v10, :cond_7

    .line 237
    .line 238
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    const-string v9, "rm -rf @@"

    .line 251
    .line 252
    const-string v10, "\'"

    .line 253
    .line 254
    if-eqz v8, :cond_a

    .line 255
    .line 256
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    check-cast v8, Ljr7;

    .line 261
    .line 262
    sget-boolean v11, Lq63;->d:Z

    .line 263
    .line 264
    new-instance v11, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v12, "Deleting remnant file \'"

    .line 267
    .line 268
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    invoke-static {v11}, Lcy0;->B(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8, v9}, Ljr7;->b(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-eqz v9, :cond_9

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_9
    const-string p0, "Unable to delete remnant file \'"

    .line 292
    .line 293
    invoke-static {v8, v10, p0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-static {v5, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-eqz v7, :cond_b

    .line 315
    .line 316
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    check-cast v7, Ljava/lang/String;

    .line 321
    .line 322
    new-instance v8, Ljr7;

    .line 323
    .line 324
    invoke-direct {v8, v7}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    if-eqz v7, :cond_d

    .line 345
    .line 346
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    move-object v8, v7

    .line 351
    check-cast v8, Ljr7;

    .line 352
    .line 353
    const-string v11, "[ -d @@ ]"

    .line 354
    .line 355
    invoke-virtual {v8, v11}, Ljr7;->b(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    if-eqz v8, :cond_c

    .line 360
    .line 361
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_d
    new-instance v6, Lxg;

    .line 366
    .line 367
    const/4 v7, 0x5

    .line 368
    invoke-direct {v6, v7}, Lxg;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-static {v5, v6}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    if-eqz v6, :cond_f

    .line 384
    .line 385
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    check-cast v6, Ljr7;

    .line 390
    .line 391
    sget-boolean v7, Lq63;->d:Z

    .line 392
    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v8, "Deleting remnant dir \'"

    .line 396
    .line 397
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    invoke-static {v7}, Lcy0;->B(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6, v9}, Ljr7;->b(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    if-eqz v7, :cond_e

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_e
    const-string p0, "Unable to delete remnant dir \'"

    .line 421
    .line 422
    invoke-static {v6, v10, p0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :cond_f
    invoke-static {v0, p1}, Lcy0;->i(Ljava/lang/String;Lo93;)Lub;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    invoke-static {p0, v5, p1, v2}, Lcy0;->A(Lq63;Ljava/lang/String;Lo93;Z)Ljava/util/List;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_10

    .line 446
    .line 447
    :goto_8
    return-void

    .line 448
    :cond_10
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    invoke-static {p0, v2, p1, v1}, Lcy0;->A(Lq63;Ljava/lang/String;Lo93;Z)Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    iget-object p0, v3, Lub;->b:Ljava/lang/Object;

    .line 460
    .line 461
    move-object v6, p0

    .line 462
    check-cast v6, Ljava/util/List;

    .line 463
    .line 464
    const/4 v10, 0x0

    .line 465
    const/16 v11, 0x3f

    .line 466
    .line 467
    const/4 v7, 0x0

    .line 468
    const/4 v8, 0x0

    .line 469
    const/4 v9, 0x0

    .line 470
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    iget-object p1, v0, Lub;->b:Ljava/lang/Object;

    .line 475
    .line 476
    move-object v6, p1

    .line 477
    check-cast v6, Ljava/util/List;

    .line 478
    .line 479
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    const/16 v10, 0x3f

    .line 484
    .line 485
    const/4 v6, 0x0

    .line 486
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    const-string v2, "Failed cleaning dir \'"

    .line 493
    .line 494
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v2, "\'. First output: "

    .line 501
    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string p0, ". Last output: "

    .line 509
    .line 510
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string p0, ". Remnants: "

    .line 514
    .line 515
    invoke-static {v1, p1, p0, v0}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    return-void
.end method

.method public static final i(Ljava/lang/String;Lo93;)Lub;
    .locals 3

    .line 1
    invoke-static {p0}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "/.[!.]* "

    .line 6
    .line 7
    const-string v1, "/..?* "

    .line 8
    .line 9
    const-string v2, "rm -rf "

    .line 10
    .line 11
    invoke-static {v2, p0, v0, p0, v1}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, "/*"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0, p1}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static final j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-array p2, p2, [B

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    :goto_0
    if-ltz v0, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, p2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    int-to-long v3, v0

    .line 22
    add-long/2addr v1, v3

    .line 23
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-wide v1
.end method

.method public static synthetic k(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static l(Ln60;Lx1;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Ldw6;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Ldw6;

    new-instance v1, Lya;

    sget-object v2, Lbw5;->a:Lf1;

    new-instance v4, Ltv6;

    .line 1
    iget-object v5, v0, Luv6;->b:Ljava/lang/String;

    .line 2
    invoke-static {v5}, Lfi8;->d(Ljava/lang/String;)Lya;

    move-result-object v5

    invoke-direct {v4, v5}, Ltv6;-><init>(Lya;)V

    invoke-direct {v1, v2, v4}, Lya;-><init>(Lf1;Ly0;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    .line 3
    iget-object v0, v0, Ldw6;->c:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    .line 4
    invoke-direct {v4, v0}, Lj1;-><init>([B)V

    .line 5
    invoke-direct {v2, v1, v4, v3, v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v2

    .line 6
    :cond_0
    instance-of v2, v0, Lnj5;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    check-cast v0, Lnj5;

    new-instance v1, Lya;

    sget-object v2, Lbw5;->b:Lf1;

    invoke-direct {v1, v2}, Lya;-><init>(Lf1;)V

    .line 7
    iget-object v0, v0, Lnj5;->b:[S

    invoke-static {v0}, Lms8;->l([S)[S

    move-result-object v0

    .line 8
    array-length v2, v0

    mul-int/2addr v2, v5

    new-array v2, v2, [B

    :goto_0
    array-length v5, v0

    if-eq v7, v5, :cond_1

    aget-short v5, v0, v7

    mul-int/lit8 v8, v7, 0x2

    int-to-byte v9, v5

    .line 9
    aput-byte v9, v2, v8

    add-int/2addr v8, v6

    ushr-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    .line 11
    invoke-direct {v4, v2}, Lj1;-><init>([B)V

    .line 12
    invoke-direct {v0, v1, v4, v3, v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 13
    :cond_2
    instance-of v2, v0, Lqp4;

    if-eqz v2, :cond_3

    check-cast v0, Lqp4;

    .line 14
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 16
    :try_start_0
    invoke-virtual {v0}, Lqp4;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 18
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 20
    invoke-virtual {v0}, Lqp4;->f()Lrp4;

    move-result-object v0

    .line 21
    :try_start_1
    invoke-virtual {v0}, Lrp4;->b()[B

    move-result-object v0

    .line 22
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 24
    new-instance v3, Lya;

    sget-object v4, Ltv5;->a:Lf1;

    invoke-direct {v3, v4}, Lya;-><init>(Lf1;)V

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lp82;

    .line 25
    invoke-direct {v5, v2}, Lj1;-><init>([B)V

    .line 26
    invoke-direct {v4, v3, v5, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v4

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 28
    :cond_3
    instance-of v2, v0, Lm24;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lm24;

    .line 29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    iget v4, v2, Lm24;->b:I

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    .line 31
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 32
    :try_start_2
    invoke-virtual {v2}, Lm24;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 34
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    iget v5, v2, Lm24;->b:I

    ushr-int/lit8 v6, v5, 0x18

    int-to-byte v6, v6

    .line 36
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 37
    monitor-enter v2

    .line 38
    :try_start_3
    iget-object v5, v2, Lm24;->d:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqp4;

    .line 39
    invoke-virtual {v5}, Lqp4;->f()Lrp4;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    monitor-exit v2

    .line 40
    :try_start_4
    invoke-virtual {v5}, Lrp4;->b()[B

    move-result-object v2

    .line 41
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 42
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 43
    new-instance v3, Lya;

    sget-object v4, Ltv5;->a:Lf1;

    invoke-direct {v3, v4}, Lya;-><init>(Lf1;)V

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lp82;

    .line 44
    invoke-direct {v5, v0}, Lj1;-><init>([B)V

    .line 45
    invoke-direct {v4, v3, v5, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v4

    :catch_2
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 47
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lmsPublicKey"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_3
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 50
    :cond_5
    instance-of v2, v0, Lbw6;

    if-eqz v2, :cond_6

    check-cast v0, Lbw6;

    new-instance v2, Lya;

    .line 51
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Law6;

    .line 52
    sget-object v4, Lfi8;->o:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 53
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-virtual {v0}, Lbw6;->getEncoded()[B

    move-result-object v5

    .line 54
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 55
    iget-object v0, v0, Lbw6;->d:Lw00;

    iget-object v5, v0, Lw00;->b:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v5, v0}, Lms8;->p([B[B)[B

    move-result-object v0

    .line 56
    invoke-direct {v3, v2, v4, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v3

    :cond_6
    instance-of v2, v0, Lsr6;

    if-eqz v2, :cond_7

    check-cast v0, Lsr6;

    new-instance v2, Lya;

    .line 57
    iget-object v4, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v4, Lrr6;

    .line 58
    sget-object v5, Lfi8;->K:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1;

    .line 59
    invoke-direct {v2, v4}, Lya;-><init>(Lf1;)V

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 60
    iget-object v5, v0, Lsr6;->c:Lnr6;

    iget-object v6, v5, Lnr6;->b:[B

    iget-object v5, v5, Lnr6;->c:[B

    iget-object v0, v0, Lsr6;->d:Loe;

    iget-object v7, v0, Loe;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v0, v0, Loe;->c:Ljava/lang/Object;

    check-cast v0, [B

    filled-new-array {v6, v5, v7, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Lms8;->q([[B)[B

    move-result-object v0

    .line 61
    invoke-direct {v4, v2, v0, v1, v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;[BLx1;[B)V

    return-object v4

    .line 62
    :cond_7
    instance-of v2, v0, Lh06;

    if-eqz v2, :cond_8

    check-cast v0, Lh06;

    .line 63
    iget-object v2, v0, Lh06;->c:[B

    invoke-static {v2}, Lms8;->k([B)[B

    move-result-object v2

    .line 64
    new-instance v4, Lya;

    .line 65
    iget-object v0, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v0, Lg06;

    .line 66
    sget-object v5, Lfi8;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1;

    .line 67
    invoke-direct {v4, v0}, Lya;-><init>(Lf1;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lp82;

    .line 68
    invoke-direct {v5, v2}, Lj1;-><init>([B)V

    .line 69
    invoke-direct {v0, v4, v5, v1, v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 70
    :cond_8
    instance-of v2, v0, Luy0;

    if-eqz v2, :cond_43

    check-cast v0, Luy0;

    new-instance v2, Lya;

    .line 71
    iget-object v11, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v11, Lsy0;

    .line 72
    sget-object v12, Lfi8;->m:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf1;

    .line 73
    invoke-direct {v2, v11}, Lya;-><init>(Lf1;)V

    new-instance v11, Lvy0;

    .line 74
    iget-object v12, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v12, Lsy0;

    .line 75
    iget-object v12, v12, Lsy0;->c:Lqy0;

    .line 76
    iget-object v13, v0, Luy0;->c:[B

    .line 77
    iget v14, v12, Lqy0;->c:I

    .line 78
    iget v15, v12, Lqy0;->a:I

    const-wide/16 v16, 0x1

    .line 79
    iget-boolean v8, v12, Lqy0;->i:Z

    iget v9, v12, Lqy0;->e:I

    if-eqz v8, :cond_9

    div-int/lit8 v18, v15, 0x8

    add-int/lit8 v19, v9, -0x1

    div-int/lit8 v19, v19, 0x8

    sub-int v18, v18, v19

    mul-int v18, v18, v9

    move/from16 v10, v18

    const/16 v18, 0x4

    goto :goto_1

    :cond_9
    const/16 v18, 0x4

    iget v10, v12, Lqy0;->f:I

    mul-int/2addr v10, v9

    div-int/2addr v10, v4

    .line 80
    :goto_1
    new-array v10, v10, [B

    shl-int v3, v6, v14

    move/from16 v20, v6

    new-array v6, v3, [S

    move/from16 v21, v4

    new-array v4, v3, [I

    div-int/lit8 v5, v15, 0x8

    mul-int/lit8 v23, v3, 0x4

    add-int v7, v23, v5

    move-object/from16 p0, v4

    new-array v4, v7, [B

    add-int/lit8 v25, v7, -0x20

    move-object/from16 v26, v6

    iget v6, v12, Lqy0;->d:I

    sub-int v25, v25, v6

    sub-int v25, v25, v23

    new-instance v6, Llr6;

    move/from16 v23, v8

    const/16 v8, 0x100

    invoke-direct {v6, v8}, Llr6;-><init>(I)V

    const/16 v8, 0x40

    invoke-virtual {v6, v8}, Lgo4;->a(B)V

    const/16 v8, 0x20

    const/4 v1, 0x0

    invoke-virtual {v6, v13, v1, v8}, Lgo4;->update([BII)V

    invoke-virtual {v6, v4, v1, v7}, Llr6;->l([BII)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    mul-int/lit8 v6, v1, 0x4

    add-int v6, v6, v25

    .line 81
    invoke-static {v4, v6}, Lxx3;->r([BI)I

    move-result v6

    .line 82
    aput v6, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_a
    iget v1, v12, Lqy0;->g:I

    iget-object v4, v12, Lqy0;->h:Lsz8;

    iget v6, v12, Lqy0;->b:I

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [S

    aput-short v20, v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_b

    mul-int/lit8 v28, v8, 0x2

    add-int/lit8 v29, v28, 0x28

    move-object/from16 v30, v7

    .line 84
    aget-byte v7, v13, v29

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v28, v28, 0x29

    move/from16 v29, v7

    aget-byte v7, v13, v28

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int v7, v29, v7

    int-to-short v7, v7

    and-int/2addr v7, v1

    int-to-short v7, v7

    .line 85
    aput-short v7, v30, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, v30

    goto :goto_3

    :cond_b
    move-object/from16 v30, v7

    new-array v7, v3, [J

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v3, :cond_c

    const/16 v28, 0x1f

    aget v13, p0, v8

    move-object/from16 v31, v10

    move-object/from16 v29, v11

    int-to-long v10, v13

    aput-wide v10, v7, v8

    shl-long v10, v10, v28

    aput-wide v10, v7, v8

    move-wide/from16 v32, v10

    int-to-long v10, v8

    or-long v10, v32, v10

    aput-wide v10, v7, v8

    const-wide v32, 0x7fffffffffffffffL

    and-long v10, v10, v32

    aput-wide v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, v29

    move-object/from16 v10, v31

    goto :goto_4

    :cond_c
    move-object/from16 v31, v10

    move-object/from16 v29, v11

    const/16 v28, 0x1f

    const/4 v10, 0x2

    if-ge v3, v10, :cond_e

    :cond_d
    move-object/from16 v38, v7

    const/16 p0, 0x3f

    goto/16 :goto_d

    :cond_e
    move/from16 v10, v20

    :goto_5
    sub-int v11, v3, v10

    if-ge v10, v11, :cond_f

    add-int/2addr v10, v10

    goto :goto_5

    :cond_f
    move v11, v10

    :goto_6
    if-lez v11, :cond_d

    const/16 p0, 0x3f

    const/4 v13, 0x0

    :goto_7
    sub-int v8, v3, v11

    if-ge v13, v8, :cond_11

    and-int v8, v13, v11

    if-nez v8, :cond_10

    add-int v8, v13, v11

    .line 86
    aget-wide v32, v7, v8

    aget-wide v34, v7, v13

    sub-long v36, v32, v34

    move-object/from16 v38, v7

    move/from16 v39, v8

    ushr-long v7, v36, p0

    neg-long v7, v7

    xor-long v32, v34, v32

    and-long v7, v7, v32

    xor-long v32, v34, v7

    aput-wide v32, v38, v13

    aget-wide v32, v38, v39

    xor-long v7, v32, v7

    aput-wide v7, v38, v39

    goto :goto_8

    :cond_10
    move-object/from16 v38, v7

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v38

    goto :goto_7

    :cond_11
    move-object/from16 v38, v7

    move v8, v10

    const/4 v7, 0x0

    :goto_9
    if-le v8, v11, :cond_15

    :goto_a
    sub-int v13, v3, v8

    if-ge v7, v13, :cond_14

    and-int v13, v7, v11

    if-nez v13, :cond_13

    add-int v13, v7, v11

    aget-wide v32, v38, v13

    move/from16 v34, v7

    move v7, v8

    :goto_b
    if-le v7, v11, :cond_12

    add-int v35, v34, v7

    aget-wide v36, v38, v35

    sub-long v39, v36, v32

    move/from16 v42, v7

    move/from16 v41, v8

    ushr-long v7, v39, p0

    neg-long v7, v7

    xor-long v39, v32, v36

    and-long v7, v7, v39

    xor-long v32, v32, v7

    xor-long v7, v36, v7

    aput-wide v7, v38, v35

    ushr-int/lit8 v7, v42, 0x1

    move/from16 v8, v41

    goto :goto_b

    :cond_12
    move/from16 v41, v8

    aput-wide v32, v38, v13

    goto :goto_c

    :cond_13
    move/from16 v34, v7

    move/from16 v41, v8

    :goto_c
    add-int/lit8 v7, v34, 0x1

    move/from16 v8, v41

    goto :goto_a

    :cond_14
    move/from16 v34, v7

    move/from16 v41, v8

    ushr-int/lit8 v8, v41, 0x1

    goto :goto_9

    :cond_15
    ushr-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v38

    goto :goto_6

    :goto_d
    move/from16 v7, v20

    :goto_e
    if-ge v7, v3, :cond_17

    add-int/lit8 v8, v7, -0x1

    .line 87
    aget-wide v10, v38, v8

    shr-long v10, v10, v28

    aget-wide v32, v38, v7

    shr-long v32, v32, v28

    cmp-long v8, v10, v32

    if-nez v8, :cond_16

    :goto_f
    move-object/from16 v3, v31

    goto/16 :goto_34

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_17
    new-array v7, v15, [S

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v3, :cond_18

    aget-wide v10, v38, v8

    move-object v13, v7

    move/from16 v28, v8

    int-to-long v7, v1

    and-long/2addr v7, v10

    long-to-int v7, v7

    int-to-short v7, v7

    aput-short v7, v26, v28

    add-int/lit8 v8, v28, 0x1

    move-object v7, v13

    goto :goto_10

    :cond_18
    move-object v13, v7

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v15, :cond_1a

    aget-short v3, v26, v1

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v3, v8

    shr-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v7

    int-to-short v3, v3

    and-int/lit16 v7, v3, 0xf0f

    shl-int/lit8 v7, v7, 0x4

    const v8, 0xf0f0

    and-int/2addr v3, v8

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v7

    int-to-short v3, v3

    and-int/lit16 v7, v3, 0x3333

    const/16 v22, 0x2

    shl-int/lit8 v7, v7, 0x2

    const v8, 0xcccc

    and-int/2addr v3, v8

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v7

    int-to-short v3, v3

    and-int/lit16 v7, v3, 0x5555

    shl-int/lit8 v7, v7, 0x1

    const v8, 0xaaaa

    and-int/2addr v3, v8

    shr-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v7

    int-to-short v3, v3

    const/16 v7, 0xc

    if-ne v14, v7, :cond_19

    shr-int/lit8 v3, v3, 0x4

    :goto_12
    int-to-short v3, v3

    goto :goto_13

    :cond_19
    shr-int/lit8 v3, v3, 0x3

    goto :goto_12

    :goto_13
    aput-short v3, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1a
    new-array v1, v15, [S

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v15, :cond_1c

    .line 88
    aget-short v7, v13, v3

    .line 89
    aget-short v8, v30, v6

    add-int/lit8 v10, v6, -0x1

    :goto_15
    if-ltz v10, :cond_1b

    invoke-virtual {v4, v8, v7}, Lsz8;->D(SS)S

    move-result v8

    aget-short v11, v30, v10

    xor-int/2addr v8, v11

    int-to-short v8, v8

    add-int/lit8 v10, v10, -0x1

    goto :goto_15

    .line 90
    :cond_1b
    aput-short v8, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1c
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v15, :cond_1d

    .line 91
    aget-short v7, v1, v3

    invoke-virtual {v4, v7}, Lsz8;->C(S)S

    move-result v7

    aput-short v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_1d
    const/4 v10, 0x2

    new-array v3, v10, [I

    aput v5, v3, v20

    const/16 v24, 0x0

    aput v9, v3, v24

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    move/from16 v7, v24

    :goto_17
    if-ge v7, v9, :cond_1f

    move/from16 v8, v24

    :goto_18
    if-ge v8, v5, :cond_1e

    aget-object v10, v3, v7

    aput-byte v24, v10, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v24, 0x0

    goto :goto_18

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    const/16 v24, 0x0

    goto :goto_17

    :cond_1f
    const/4 v7, 0x0

    :goto_19
    if-ge v7, v6, :cond_23

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v15, :cond_21

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v14, :cond_20

    add-int/lit8 v11, v8, 0x7

    aget-short v11, v1, v11

    ushr-int/2addr v11, v10

    and-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    shl-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    add-int/lit8 v18, v8, 0x6

    aget-short v18, v1, v18

    ushr-int v18, v18, v10

    and-int/lit8 v18, v18, 0x1

    or-int v11, v11, v18

    int-to-byte v11, v11

    shl-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    add-int/lit8 v18, v8, 0x5

    aget-short v18, v1, v18

    ushr-int v18, v18, v10

    and-int/lit8 v18, v18, 0x1

    or-int v11, v11, v18

    int-to-byte v11, v11

    shl-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    add-int/lit8 v18, v8, 0x4

    aget-short v18, v1, v18

    ushr-int v18, v18, v10

    and-int/lit8 v18, v18, 0x1

    or-int v11, v11, v18

    int-to-byte v11, v11

    shl-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    add-int/lit8 v18, v8, 0x3

    aget-short v18, v1, v18

    ushr-int v18, v18, v10

    and-int/lit8 v18, v18, 0x1

    or-int v11, v11, v18

    int-to-byte v11, v11

    shl-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    add-int/lit8 v18, v8, 0x2

    aget-short v18, v1, v18

    ushr-int v18, v18, v10

    and-int/lit8 v18, v18, 0x1

    or-int v11, v11, v18

    int-to-byte v11, v11

    shl-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    add-int/lit8 v18, v8, 0x1

    aget-short v18, v1, v18

    ushr-int v18, v18, v10

    and-int/lit8 v18, v18, 0x1

    or-int v11, v11, v18

    int-to-byte v11, v11

    shl-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    aget-short v18, v1, v8

    ushr-int v18, v18, v10

    and-int/lit8 v18, v18, 0x1

    or-int v11, v11, v18

    int-to-byte v11, v11

    mul-int v18, v7, v14

    add-int v18, v18, v10

    aget-object v18, v3, v18

    div-int/lit8 v28, v8, 0x8

    aput-byte v11, v18, v28

    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    :cond_20
    add-int/lit8 v8, v8, 0x8

    goto :goto_1a

    :cond_21
    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v15, :cond_22

    aget-short v10, v1, v8

    aget-short v11, v13, v8

    invoke-virtual {v4, v10, v11}, Lsz8;->D(SS)S

    move-result v10

    aput-short v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19

    :cond_23
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v9, :cond_3e

    ushr-int/lit8 v7, v1, 0x3

    and-int/lit8 v6, v1, 0x7

    iget-boolean v8, v12, Lqy0;->j:Z

    if-eqz v8, :cond_37

    add-int/lit8 v8, v9, -0x20

    if-ne v1, v8, :cond_37

    const/16 v10, 0x40

    .line 92
    new-array v11, v10, [J

    const/16 v10, 0x20

    new-array v13, v10, [J

    const/16 v14, 0x9

    const/16 v18, 0x7

    new-array v4, v14, [B

    div-int/lit8 v14, v8, 0x8

    rem-int/lit8 v30, v8, 0x8

    if-eqz v23, :cond_26

    move-object/from16 v32, v3

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v10, :cond_27

    move/from16 v33, v3

    const/4 v10, 0x0

    :goto_1f
    const/16 v3, 0x9

    if-ge v10, v3, :cond_24

    add-int v3, v8, v33

    aget-object v3, v32, v3

    add-int v34, v14, v10

    aget-byte v3, v3, v34

    aput-byte v3, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_24
    move/from16 v10, v21

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v10, :cond_25

    aget-byte v10, v4, v3

    and-int/lit16 v10, v10, 0xff

    shr-int v10, v10, v30

    add-int/lit8 v34, v3, 0x1

    aget-byte v35, v4, v34

    rsub-int/lit8 v36, v30, 0x8

    shl-int v35, v35, v36

    or-int v10, v10, v35

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    move/from16 v3, v34

    const/16 v10, 0x8

    goto :goto_20

    :cond_25
    const/4 v3, 0x0

    .line 93
    invoke-static {v4, v3}, Lxx3;->t([BI)J

    move-result-wide v34

    .line 94
    aput-wide v34, v11, v33

    add-int/lit8 v3, v33, 0x1

    const/16 v10, 0x20

    const/16 v21, 0x8

    goto :goto_1e

    :cond_26
    move-object/from16 v32, v3

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v10, :cond_27

    add-int v25, v8, v3

    aget-object v10, v32, v25

    .line 95
    invoke-static {v10, v14}, Lxx3;->t([BI)J

    move-result-wide v34

    .line 96
    aput-wide v34, v11, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x20

    goto :goto_21

    :cond_27
    const/4 v3, 0x0

    const/16 v10, 0x20

    :goto_22
    if-ge v3, v10, :cond_2e

    aget-wide v33, v11, v3

    add-int/lit8 v35, v3, 0x1

    move/from16 v37, v6

    move/from16 v36, v7

    move-wide/from16 v6, v33

    move/from16 v33, v3

    move/from16 v3, v35

    :goto_23
    if-ge v3, v10, :cond_28

    aget-wide v38, v11, v3

    or-long v6, v6, v38

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x20

    goto :goto_23

    :cond_28
    const-wide/16 v38, 0x0

    cmp-long v3, v6, v38

    if-nez v3, :cond_29

    goto/16 :goto_f

    :cond_29
    not-long v6, v6

    const-wide v40, 0x101010101010101L

    const/4 v3, 0x0

    :goto_24
    const/16 v10, 0x8

    if-ge v3, v10, :cond_2a

    ushr-long v42, v6, v3

    and-long v40, v40, v42

    add-long v38, v38, v40

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_2a
    const-wide v6, 0x808080808080808L

    and-long v6, v38, v6

    ushr-long v40, v6, v20

    or-long v6, v6, v40

    const/16 v22, 0x2

    ushr-long v40, v6, v22

    or-long v6, v6, v40

    const/16 v10, 0x8

    ushr-long v40, v38, v10

    and-long v42, v40, v6

    add-long v38, v38, v42

    move-wide/from16 v44, v38

    move-wide/from16 v38, v6

    move-wide/from16 v6, v44

    const/4 v3, 0x2

    :goto_25
    if-ge v3, v10, :cond_2b

    ushr-long v42, v38, v10

    and-long v38, v38, v42

    ushr-long v40, v40, v10

    and-long v42, v40, v38

    add-long v6, v6, v42

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x8

    goto :goto_25

    :cond_2b
    long-to-int v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    aput-wide v6, v13, v33

    move/from16 v6, v35

    :goto_26
    const/16 v10, 0x20

    if-ge v6, v10, :cond_2c

    aget-wide v38, v11, v33

    shr-long v40, v38, v3

    and-long v40, v40, v16

    sub-long v40, v40, v16

    aget-wide v42, v11, v6

    and-long v40, v42, v40

    xor-long v38, v38, v40

    aput-wide v38, v11, v33

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_2c
    move/from16 v6, v35

    :goto_27
    if-ge v6, v10, :cond_2d

    aget-wide v38, v11, v6

    shr-long v40, v38, v3

    move v10, v6

    and-long v6, v40, v16

    neg-long v6, v6

    aget-wide v40, v11, v33

    and-long v6, v40, v6

    xor-long v6, v38, v6

    aput-wide v6, v11, v10

    add-int/lit8 v6, v10, 0x1

    const/16 v10, 0x20

    goto :goto_27

    :cond_2d
    move/from16 v3, v35

    move/from16 v7, v36

    move/from16 v6, v37

    goto/16 :goto_22

    :cond_2e
    move/from16 v37, v6

    move/from16 v36, v7

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v10, :cond_30

    add-int/lit8 v6, v3, 0x1

    move v7, v6

    :goto_29
    const/16 v10, 0x40

    if-ge v7, v10, :cond_2f

    add-int v11, v8, v3

    aget-short v10, v26, v11

    add-int v33, v8, v7

    aget-short v34, v26, v33

    move/from16 v35, v3

    xor-int v3, v10, v34

    move/from16 v38, v11

    move-object/from16 v34, v12

    int-to-long v11, v3

    int-to-short v3, v7

    move/from16 v39, v6

    move/from16 v40, v7

    aget-wide v6, v13, v35

    long-to-int v6, v6

    int-to-short v6, v6

    xor-int/2addr v3, v6

    int-to-long v6, v3

    sub-long v6, v6, v16

    ushr-long v6, v6, p0

    neg-long v6, v6

    and-long/2addr v6, v11

    int-to-long v10, v10

    xor-long/2addr v10, v6

    long-to-int v3, v10

    int-to-short v3, v3

    aput-short v3, v26, v38

    aget-short v3, v26, v33

    int-to-long v10, v3

    xor-long/2addr v6, v10

    long-to-int v3, v6

    int-to-short v3, v3

    aput-short v3, v26, v33

    add-int/lit8 v7, v40, 0x1

    move-object/from16 v12, v34

    move/from16 v3, v35

    move/from16 v6, v39

    goto :goto_29

    :cond_2f
    move/from16 v39, v6

    move/from16 v3, v39

    const/16 v10, 0x20

    goto :goto_28

    :cond_30
    move-object/from16 v34, v12

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v9, :cond_38

    if-eqz v23, :cond_33

    const/4 v6, 0x0

    const/16 v7, 0x9

    :goto_2b
    if-ge v6, v7, :cond_31

    aget-object v8, v32, v3

    add-int v10, v14, v6

    aget-byte v8, v8, v10

    aput-byte v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_31
    const/4 v6, 0x0

    :goto_2c
    const/16 v10, 0x8

    if-ge v6, v10, :cond_32

    aget-byte v8, v4, v6

    and-int/lit16 v8, v8, 0xff

    shr-int v8, v8, v30

    add-int/lit8 v10, v6, 0x1

    aget-byte v11, v4, v10

    rsub-int/lit8 v12, v30, 0x8

    shl-int/2addr v11, v12

    or-int/2addr v8, v11

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    move v6, v10

    goto :goto_2c

    :cond_32
    const/4 v6, 0x0

    .line 97
    invoke-static {v4, v6}, Lxx3;->t([BI)J

    move-result-wide v10

    goto :goto_2d

    :cond_33
    const/16 v7, 0x9

    .line 98
    aget-object v6, v32, v3

    .line 99
    invoke-static {v6, v14}, Lxx3;->t([BI)J

    move-result-wide v10

    :goto_2d
    const/4 v6, 0x0

    :goto_2e
    const/16 v8, 0x20

    if-ge v6, v8, :cond_34

    shr-long v38, v10, v6

    .line 100
    aget-wide v7, v13, v6

    long-to-int v7, v7

    shr-long v40, v10, v7

    xor-long v38, v38, v40

    and-long v38, v38, v16

    shl-long v7, v38, v7

    xor-long/2addr v7, v10

    shl-long v10, v38, v6

    xor-long/2addr v10, v7

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x9

    goto :goto_2e

    :cond_34
    if-eqz v23, :cond_35

    const/4 v6, 0x0

    invoke-static {v6, v10, v11, v4}, Lg67;->E(IJ[B)V

    aget-object v6, v32, v3

    add-int/lit8 v7, v14, 0x8

    aget-byte v8, v6, v7

    and-int/lit16 v8, v8, 0xff

    ushr-int v8, v8, v30

    shl-int v8, v8, v30

    aget-byte v10, v4, v18

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v30, 0x8

    ushr-int/2addr v10, v11

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/16 v24, 0x0

    aget-byte v7, v4, v24

    and-int/lit16 v7, v7, 0xff

    shl-int v7, v7, v30

    aget-byte v8, v6, v14

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    ushr-int/2addr v8, v11

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v14

    move/from16 v6, v18

    move/from16 v7, v20

    :goto_2f
    if-lt v6, v7, :cond_36

    aget-object v7, v32, v3

    add-int v8, v14, v6

    aget-byte v10, v4, v6

    and-int/lit16 v10, v10, 0xff

    shl-int v10, v10, v30

    add-int/lit8 v12, v6, -0x1

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    ushr-int/2addr v12, v11

    or-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto :goto_2f

    :cond_35
    aget-object v6, v32, v3

    invoke-static {v14, v10, v11, v6}, Lg67;->E(IJ[B)V

    :cond_36
    add-int/lit8 v3, v3, 0x1

    const/16 v20, 0x1

    goto/16 :goto_2a

    :cond_37
    move-object/from16 v32, v3

    move/from16 v37, v6

    move/from16 v36, v7

    move-object/from16 v34, v12

    :cond_38
    add-int/lit8 v3, v1, 0x1

    move v4, v3

    :goto_30
    if-ge v4, v9, :cond_3a

    .line 101
    aget-object v6, v32, v1

    aget-byte v6, v6, v36

    aget-object v7, v32, v4

    aget-byte v7, v7, v36

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    shr-int v6, v6, v37

    int-to-byte v6, v6

    const/16 v20, 0x1

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x0

    :goto_31
    if-ge v7, v5, :cond_39

    aget-object v8, v32, v1

    aget-byte v10, v8, v7

    aget-object v11, v32, v4

    aget-byte v11, v11, v7

    and-int/2addr v11, v6

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_3a
    aget-object v4, v32, v1

    aget-byte v4, v4, v36

    shr-int v4, v4, v37

    const/16 v20, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3b

    goto/16 :goto_f

    :cond_3b
    const/4 v4, 0x0

    :goto_32
    if-ge v4, v9, :cond_3d

    if-eq v4, v1, :cond_3c

    aget-object v6, v32, v4

    aget-byte v6, v6, v36

    shr-int v6, v6, v37

    int-to-byte v6, v6

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x0

    :goto_33
    if-ge v7, v5, :cond_3c

    aget-object v8, v32, v4

    aget-byte v10, v8, v7

    aget-object v11, v32, v1

    aget-byte v11, v11, v7

    and-int/2addr v11, v6

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    const/16 v20, 0x1

    goto :goto_32

    :cond_3d
    move v1, v3

    move-object/from16 v3, v32

    move-object/from16 v12, v34

    move/from16 v7, v36

    const/16 v20, 0x1

    const/16 v21, 0x8

    goto/16 :goto_1d

    :cond_3e
    move-object/from16 v32, v3

    const/16 v18, 0x7

    if-eqz v23, :cond_42

    rem-int/lit8 v1, v9, 0x8

    if-nez v1, :cond_40

    aget-object v1, v32, v7

    const/16 v20, 0x1

    add-int/lit8 v9, v9, -0x1

    const/16 v21, 0x8

    div-int/lit8 v9, v9, 0x8

    move-object/from16 v3, v31

    const/4 v6, 0x0

    invoke-static {v1, v9, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3f
    :goto_34
    move-object/from16 v1, v29

    goto :goto_38

    :cond_40
    move-object/from16 v3, v31

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_35
    const/16 v20, 0x1

    const/16 v21, 0x8

    if-ge v4, v9, :cond_3f

    add-int/lit8 v7, v9, -0x1

    div-int/lit8 v7, v7, 0x8

    :goto_36
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_41

    add-int/lit8 v8, v6, 0x1

    aget-object v10, v32, v4

    aget-byte v11, v10, v7

    and-int/lit16 v11, v11, 0xff

    ushr-int/2addr v11, v1

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    rsub-int/lit8 v12, v1, 0x8

    shl-int/2addr v10, v12

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    move v6, v8

    const/16 v20, 0x1

    goto :goto_36

    :cond_41
    add-int/lit8 v8, v6, 0x1

    aget-object v10, v32, v4

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v8

    goto :goto_35

    :cond_42
    move-object/from16 v3, v31

    sub-int/2addr v15, v9

    add-int/lit8 v15, v15, 0x7

    const/16 v21, 0x8

    div-int/lit8 v15, v15, 0x8

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v9, :cond_3f

    aget-object v4, v32, v1

    div-int/lit8 v5, v9, 0x8

    mul-int v6, v15, v1

    invoke-static {v4, v5, v3, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 102
    :goto_38
    invoke-direct {v1, v3}, Lvy0;-><init>([B)V

    new-instance v3, Lty0;

    .line 103
    iget-object v4, v0, Luy0;->c:[B

    const/4 v6, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v6, v10}, Lms8;->t([BII)[B

    move-result-object v4

    .line 104
    iget-object v5, v0, Luy0;->c:[B

    const/16 v6, 0x28

    invoke-static {v5, v10, v6}, Lms8;->t([BII)[B

    move-result-object v5

    .line 105
    iget-object v7, v0, Luy0;->c:[B

    .line 106
    iget-object v8, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v8, Lsy0;

    .line 107
    iget v8, v8, Lsy0;->b:I

    const/16 v22, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    .line 108
    invoke-static {v7, v6, v8}, Lms8;->t([BII)[B

    move-result-object v7

    .line 109
    iget-object v8, v0, Luy0;->c:[B

    .line 110
    iget-object v9, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v9, Lsy0;

    .line 111
    iget v9, v9, Lsy0;->b:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    .line 112
    array-length v6, v8

    const/16 v25, 0x20

    add-int/lit8 v6, v6, -0x20

    invoke-static {v8, v9, v6}, Lms8;->t([BII)[B

    move-result-object v6

    .line 113
    iget-object v0, v0, Luy0;->c:[B

    array-length v8, v0

    add-int/lit8 v8, v8, -0x20

    array-length v9, v0

    invoke-static {v0, v8, v9}, Lms8;->t([BII)[B

    move-result-object v0

    .line 114
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    .line 115
    iput v8, v3, Lty0;->a:I

    invoke-static {v4}, Lms8;->k([B)[B

    move-result-object v4

    iput-object v4, v3, Lty0;->b:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v4

    iput-object v4, v3, Lty0;->c:[B

    invoke-static {v7}, Lms8;->k([B)[B

    move-result-object v4

    iput-object v4, v3, Lty0;->d:[B

    invoke-static {v6}, Lms8;->k([B)[B

    move-result-object v4

    iput-object v4, v3, Lty0;->e:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    iput-object v0, v3, Lty0;->f:[B

    iput-object v1, v3, Lty0;->k:Lvy0;

    .line 116
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-object/from16 v1, p1

    const/4 v4, 0x0

    .line 117
    invoke-direct {v0, v2, v3, v1, v4}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    :cond_43
    const-wide/16 v16, 0x1

    const/16 v18, 0x4

    .line 118
    instance-of v2, v0, Ltx8;

    if-eqz v2, :cond_46

    check-cast v0, Ltx8;

    new-instance v2, Lya;

    sget-object v3, Lbw5;->c:Lf1;

    new-instance v4, Lhx8;

    .line 119
    iget-object v5, v0, Ltx8;->c:Lrx8;

    .line 120
    iget v5, v5, Lrx8;->b:I

    .line 121
    iget-object v6, v0, Luv6;->b:Ljava/lang/String;

    .line 122
    invoke-static {v6}, Lfi8;->f(Ljava/lang/String;)Lya;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lhx8;-><init>(ILya;)V

    invoke-direct {v2, v3, v4}, Lya;-><init>(Lf1;Ly0;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 123
    invoke-virtual {v0}, Ltx8;->getEncoded()[B

    move-result-object v4

    .line 124
    iget-object v0, v0, Ltx8;->c:Lrx8;

    .line 125
    iget v5, v0, Lrx8;->f:I

    .line 126
    iget v0, v0, Lrx8;->b:I

    move/from16 v6, v18

    .line 127
    invoke-static {v4, v6}, Ljd4;->c([BI)J

    move-result-wide v7

    long-to-int v10, v7

    int-to-long v7, v10

    invoke-static {v0, v7, v8}, Ljd4;->u(IJ)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v11

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v12

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v13

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v14

    add-int/2addr v6, v5

    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v15

    :try_start_6
    const-class v4, Llh0;

    invoke-static {v15, v4}, Ljd4;->l([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llh0;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 128
    iget v4, v4, Llh0;->r:I

    const/16 v20, 0x1

    shl-int v0, v20, v0

    add-int/lit8 v0, v0, -0x1

    .line 129
    new-instance v9, Lsx8;

    if-eq v4, v0, :cond_44

    move/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Lsx8;-><init>(I[B[B[B[B[BI)V

    :goto_39
    const/4 v4, 0x0

    goto :goto_3a

    :cond_44
    invoke-direct/range {v9 .. v15}, Lsx8;-><init>(I[B[B[B[B[B)V

    goto :goto_39

    .line 130
    :goto_3a
    invoke-direct {v3, v2, v9, v1, v4}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v3

    :catch_4
    move-exception v0

    const/4 v4, 0x0

    .line 131
    const-string v1, "cannot parse BDS: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lc6;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_45
    const/4 v4, 0x0

    const-string v0, "index out of bounds"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    return-object v4

    .line 132
    :cond_46
    instance-of v2, v0, Lnx8;

    if-eqz v2, :cond_49

    check-cast v0, Lnx8;

    new-instance v2, Lya;

    sget-object v3, Lbw5;->d:Lf1;

    new-instance v4, Ljx8;

    .line 133
    iget-object v5, v0, Lnx8;->c:Lkx8;

    .line 134
    iget v6, v5, Lkx8;->c:I

    .line 135
    iget v5, v5, Lkx8;->d:I

    .line 136
    iget-object v7, v0, Luv6;->b:Ljava/lang/String;

    .line 137
    invoke-static {v7}, Lfi8;->f(Ljava/lang/String;)Lya;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Ljx8;-><init>(IILya;)V

    invoke-direct {v2, v3, v4}, Lya;-><init>(Lf1;Ly0;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 138
    invoke-virtual {v0}, Lnx8;->getEncoded()[B

    move-result-object v4

    .line 139
    iget-object v0, v0, Lnx8;->c:Lkx8;

    .line 140
    iget-object v5, v0, Lkx8;->b:Lrx8;

    .line 141
    iget v5, v5, Lrx8;->f:I

    .line 142
    iget v0, v0, Lkx8;->c:I

    add-int/lit8 v6, v0, 0x7

    const/16 v21, 0x8

    .line 143
    div-int/lit8 v6, v6, 0x8

    invoke-static {v4, v6}, Ljd4;->c([BI)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v9, v7

    invoke-static {v0, v9, v10}, Ljd4;->u(IJ)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v23

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v24

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v25

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v14

    add-int/2addr v6, v5

    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-static {v4, v6, v5}, Ljd4;->o([BII)[B

    move-result-object v15

    :try_start_7
    const-class v4, Lmh0;

    invoke-static {v15, v4}, Ljd4;->l([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmh0;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    .line 144
    iget-wide v4, v4, Lmh0;->b:J

    shl-long v6, v16, v0

    sub-long v6, v6, v16

    cmp-long v0, v4, v6

    if-eqz v0, :cond_47

    .line 145
    new-instance v20, Llx8;

    move-wide/from16 v28, v4

    move-wide/from16 v21, v9

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    invoke-direct/range {v20 .. v29}, Llx8;-><init>(J[B[B[B[B[BJ)V

    move-object/from16 v8, v20

    :goto_3b
    const/4 v4, 0x0

    goto :goto_3c

    :cond_47
    move-wide/from16 v21, v9

    new-instance v8, Llx8;

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    invoke-direct/range {v8 .. v15}, Llx8;-><init>(J[B[B[B[B[B)V

    goto :goto_3b

    .line 146
    :goto_3c
    invoke-direct {v3, v2, v8, v1, v4}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v3

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    .line 147
    const-string v1, "cannot parse BDSStateMap: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lc6;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_48
    const/4 v4, 0x0

    const-string v0, "index out of bounds"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    return-object v4

    .line 148
    :cond_49
    instance-of v2, v0, Lrs3;

    if-eqz v2, :cond_4a

    check-cast v0, Lrs3;

    .line 149
    iget-object v2, v0, Lrs3;->c:[B

    invoke-static {v2}, Lms8;->k([B)[B

    move-result-object v2

    .line 150
    new-instance v3, Lya;

    .line 151
    iget-object v0, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v0, Lqs3;

    .line 152
    sget-object v4, Lfi8;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1;

    .line 153
    invoke-direct {v3, v0}, Lya;-><init>(Lf1;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    .line 154
    invoke-direct {v4, v2}, Lj1;-><init>([B)V

    const/4 v2, 0x0

    .line 155
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 156
    :cond_4a
    instance-of v2, v0, Lcr6;

    if-eqz v2, :cond_4b

    check-cast v0, Lcr6;

    .line 157
    iget-object v2, v0, Lcr6;->c:[B

    invoke-static {v2}, Lms8;->k([B)[B

    move-result-object v2

    .line 158
    new-instance v3, Lya;

    .line 159
    iget-object v0, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v0, Lbr6;

    .line 160
    sget-object v4, Lfi8;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1;

    .line 161
    invoke-direct {v3, v0}, Lya;-><init>(Lf1;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    .line 162
    invoke-direct {v4, v2}, Lj1;-><init>([B)V

    const/4 v2, 0x0

    .line 163
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 164
    :cond_4b
    instance-of v2, v0, Lyj5;

    if-eqz v2, :cond_4c

    check-cast v0, Lyj5;

    .line 165
    iget-object v2, v0, Lyj5;->c:[B

    invoke-static {v2}, Lms8;->k([B)[B

    move-result-object v2

    .line 166
    new-instance v3, Lya;

    .line 167
    iget-object v0, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v0, Lxj5;

    .line 168
    sget-object v4, Lfi8;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1;

    .line 169
    invoke-direct {v3, v0}, Lya;-><init>(Lf1;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    .line 170
    invoke-direct {v4, v2}, Lj1;-><init>([B)V

    const/4 v2, 0x0

    .line 171
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 172
    :cond_4c
    instance-of v2, v0, Lm33;

    if-eqz v2, :cond_4d

    check-cast v0, Lm33;

    new-instance v2, Lya;

    .line 173
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lk33;

    .line 174
    sget-object v4, Lfi8;->s:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 175
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    new-instance v3, Ln33;

    .line 176
    iget-object v4, v0, Lm33;->c:[B

    invoke-static {v4}, Lms8;->k([B)[B

    move-result-object v4

    .line 177
    invoke-direct {v3, v4}, Ln33;-><init>([B)V

    new-instance v4, Ll33;

    .line 178
    iget-object v5, v0, Lm33;->d:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 179
    iget-object v6, v0, Lm33;->e:[B

    invoke-static {v6}, Lms8;->k([B)[B

    move-result-object v6

    .line 180
    iget-object v0, v0, Lm33;->f:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    .line 181
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    .line 182
    iput v8, v4, Ll33;->a:I

    iput-object v5, v4, Ll33;->b:[B

    iput-object v6, v4, Ll33;->c:[B

    iput-object v0, v4, Ll33;->d:[B

    iput-object v3, v4, Ll33;->e:Ln33;

    .line 183
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    const/4 v3, 0x0

    .line 184
    invoke-direct {v0, v2, v4, v1, v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 185
    :cond_4d
    instance-of v2, v0, Lp45;

    if-eqz v2, :cond_50

    check-cast v0, Lp45;

    new-instance v2, Lya;

    .line 186
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lo45;

    .line 187
    sget-object v4, Lfi8;->G:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 188
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    .line 189
    iget v3, v0, Lp45;->p:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_4e

    .line 190
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lw82;

    new-instance v5, Lp82;

    .line 191
    iget-object v0, v0, Lp45;->n:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    .line 192
    invoke-direct {v5, v0}, Lj1;-><init>([B)V

    const/16 v0, 0x80

    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 193
    invoke-direct {v4, v10, v0, v6, v5}, Lq2;-><init>(IIILb0;)V

    const/4 v5, 0x0

    .line 194
    invoke-direct {v3, v2, v4, v1, v5}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v3

    :cond_4e
    const/4 v5, 0x0

    const/4 v10, 0x2

    if-ne v3, v10, :cond_4f

    .line 195
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-virtual {v0}, Lp45;->getEncoded()[B

    move-result-object v0

    .line 196
    invoke-direct {v4, v0}, Lj1;-><init>([B)V

    .line 197
    invoke-direct {v3, v2, v4, v1, v5}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v3

    .line 198
    :cond_4f
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 199
    iget-object v4, v0, Lp45;->n:[B

    invoke-static {v4}, Lms8;->k([B)[B

    move-result-object v4

    .line 200
    invoke-virtual {v0}, Lp45;->getEncoded()[B

    move-result-object v0

    invoke-static {v4, v0}, Lcy0;->u([B[B)Lt82;

    move-result-object v0

    .line 201
    invoke-direct {v3, v2, v0, v1, v5}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v3

    .line 202
    :cond_50
    instance-of v2, v0, Lvj5;

    const/4 v3, -0x1

    if-eqz v2, :cond_51

    check-cast v0, Lvj5;

    new-instance v2, Lc0;

    invoke-direct {v2}, Lc0;-><init>()V

    new-instance v4, Lp82;

    .line 203
    iget-object v5, v0, Lvj5;->c:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 204
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 205
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lp82;

    .line 206
    iget-object v5, v0, Lvj5;->d:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 207
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 208
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lp82;

    .line 209
    iget-object v5, v0, Lvj5;->e:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 210
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 211
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lp82;

    .line 212
    iget-object v5, v0, Lvj5;->f:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 213
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 214
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lya;

    .line 215
    iget-object v0, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v0, Luj5;

    .line 216
    sget-object v5, Lfi8;->u:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1;

    .line 217
    invoke-direct {v4, v0}, Lya;-><init>(Lf1;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lt82;

    .line 218
    invoke-direct {v5, v2}, Lv1;-><init>(Lc0;)V

    iput v3, v5, Lt82;->c:I

    const/4 v2, 0x0

    .line 219
    invoke-direct {v0, v4, v5, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 220
    :cond_51
    instance-of v2, v0, Lpv6;

    if-eqz v2, :cond_52

    check-cast v0, Lpv6;

    new-instance v2, Lc0;

    invoke-direct {v2}, Lc0;-><init>()V

    new-instance v4, Lp82;

    .line 221
    iget-object v5, v0, Lpv6;->c:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 222
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 223
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lp82;

    .line 224
    iget-object v5, v0, Lpv6;->d:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 225
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 226
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lp82;

    .line 227
    iget-object v5, v0, Lpv6;->e:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 228
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 229
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lp82;

    .line 230
    iget-object v5, v0, Lpv6;->f:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 231
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 232
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lp82;

    .line 233
    iget-object v5, v0, Lpv6;->k:[B

    invoke-static {v5}, Lms8;->k([B)[B

    move-result-object v5

    .line 234
    invoke-direct {v4, v5}, Lj1;-><init>([B)V

    .line 235
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    new-instance v4, Lya;

    .line 236
    iget-object v0, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v0, Lov6;

    .line 237
    sget-object v5, Lfi8;->w:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1;

    .line 238
    invoke-direct {v4, v0}, Lya;-><init>(Lf1;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lt82;

    .line 239
    invoke-direct {v5, v2}, Lv1;-><init>(Lc0;)V

    iput v3, v5, Lt82;->c:I

    const/4 v2, 0x0

    .line 240
    invoke-direct {v0, v4, v5, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v0

    .line 241
    :cond_52
    instance-of v2, v0, Li45;

    if-eqz v2, :cond_55

    check-cast v0, Li45;

    new-instance v2, Lya;

    .line 242
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lh45;

    .line 243
    sget-object v4, Lfi8;->I:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 244
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    .line 245
    iget v3, v0, Li45;->r:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_53

    .line 246
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lw82;

    new-instance v5, Lp82;

    .line 247
    iget-object v0, v0, Li45;->q:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    .line 248
    invoke-direct {v5, v0}, Lj1;-><init>([B)V

    const/4 v6, 0x0

    .line 249
    invoke-direct {v4, v6, v6, v5}, Lq2;-><init>(ZILb0;)V

    .line 250
    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_53
    const/4 v10, 0x2

    if-ne v3, v10, :cond_54

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-virtual {v0}, Li45;->getEncoded()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lp82;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_54
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 251
    iget-object v4, v0, Li45;->q:[B

    invoke-static {v4}, Lms8;->k([B)[B

    move-result-object v4

    .line 252
    invoke-virtual {v0}, Li45;->getEncoded()[B

    move-result-object v0

    invoke-static {v4, v0}, Lcy0;->u([B[B)Lt82;

    move-result-object v0

    invoke-direct {v3, v2, v0, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_55
    instance-of v2, v0, Lpl2;

    if-eqz v2, :cond_56

    check-cast v0, Lpl2;

    new-instance v2, Lya;

    .line 253
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lol2;

    .line 254
    sget-object v4, Lfi8;->y:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 255
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    new-instance v3, Lql2;

    .line 256
    iget-object v4, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v4, Lol2;

    .line 257
    iget-object v5, v0, Lpl2;->c:[B

    iget-object v6, v0, Lpl2;->p:[B

    invoke-direct {v3, v4, v5, v6}, Lql2;-><init>(Lol2;[B[B)V

    .line 258
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lp82;

    .line 259
    iget-object v6, v0, Lpl2;->c:[B

    iget-object v7, v0, Lpl2;->d:[B

    iget-object v8, v0, Lpl2;->e:[B

    iget-object v9, v0, Lpl2;->f:[B

    iget-object v10, v0, Lpl2;->k:[B

    iget-object v11, v0, Lpl2;->n:[B

    filled-new-array/range {v6 .. v11}, [[B

    move-result-object v0

    invoke-static {v0}, Lms8;->q([[B)[B

    move-result-object v0

    .line 260
    invoke-direct {v5, v0}, Lp82;-><init>([B)V

    .line 261
    iget-object v0, v3, Lql2;->c:[B

    iget-object v3, v3, Lql2;->d:[B

    .line 262
    invoke-static {v0, v3}, Lms8;->p([B[B)[B

    move-result-object v0

    .line 263
    invoke-direct {v4, v2, v5, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-object v4

    :cond_56
    instance-of v2, v0, Lgi0;

    if-eqz v2, :cond_57

    check-cast v0, Lgi0;

    new-instance v2, Lya;

    .line 264
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lfi0;

    .line 265
    sget-object v4, Lfi8;->A:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 266
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    invoke-virtual {v0}, Lgi0;->getEncoded()[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-direct {v4, v0}, Lp82;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_57
    instance-of v2, v0, Lk24;

    if-eqz v2, :cond_58

    check-cast v0, Lk24;

    new-instance v2, Lya;

    .line 267
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lj24;

    .line 268
    sget-object v4, Lfi8;->C:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 269
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    .line 270
    iget-object v0, v0, Lk24;->c:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    .line 271
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-direct {v4, v0}, Lp82;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_58
    instance-of v2, v0, Lse6;

    if-eqz v2, :cond_59

    check-cast v0, Lse6;

    new-instance v2, Lya;

    .line 272
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lre6;

    .line 273
    sget-object v4, Lfi8;->E:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 274
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    invoke-virtual {v0}, Lse6;->getEncoded()[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-direct {v4, v0}, Lp82;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_59
    instance-of v2, v0, Ln95;

    if-eqz v2, :cond_5a

    check-cast v0, Ln95;

    new-instance v2, Lya;

    .line 275
    iget-object v3, v0, Lei0;->b:Ljava/lang/Object;

    check-cast v3, Lm95;

    .line 276
    sget-object v4, Lfi8;->M:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 277
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    .line 278
    iget-object v0, v0, Ln95;->c:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    .line 279
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-direct {v4, v0}, Lp82;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_5a
    instance-of v2, v0, Lui7;

    if-eqz v2, :cond_5b

    check-cast v0, Lui7;

    new-instance v2, Lya;

    .line 280
    iget-object v3, v0, Lui7;->c:Lti7;

    .line 281
    sget-object v4, Lfi8;->O:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1;

    .line 282
    invoke-direct {v2, v3}, Lya;-><init>(Lf1;)V

    .line 283
    iget-object v0, v0, Lui7;->b:[B

    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object v0

    .line 284
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lp82;

    invoke-direct {v4, v0}, Lp82;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Lq1;Lx1;)V

    return-object v3

    :cond_5b
    const-string v0, "key parameters not recognized"

    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19
.end method

.method public static final m(Lej5;)Lmx6;
    .locals 7

    .line 1
    iget-object p0, p0, Ln22;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    sget-object v0, Lcy0;->c:Lq34;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lwx6;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    sget-object v2, Lcy0;->d:Lma2;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lzl8;

    .line 21
    .line 22
    if-eqz v2, :cond_8

    .line 23
    .line 24
    sget-object v3, Lcy0;->e:Llv1;

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/os/Bundle;

    .line 31
    .line 32
    sget-object v4, Lg67;->f:Lnh4;

    .line 33
    .line 34
    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    .line 40
    if-eqz p0, :cond_7

    .line 41
    .line 42
    invoke-interface {v0}, Lwx6;->getSavedStateRegistry()Lot9;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lot9;->e()Lux6;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    instance-of v4, v0, Lrx6;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    check-cast v0, Lrx6;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v0, v1

    .line 58
    :goto_0
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-static {v2}, Lcy0;->w(Lzl8;)Lsx6;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v2, v2, Lsx6;->b:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lmx6;

    .line 71
    .line 72
    if-nez v4, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Lrx6;->b()V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lrx6;->c:Landroid/os/Bundle;

    .line 78
    .line 79
    if-nez v4, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v4, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v4, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_3

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    new-array v6, v5, [Lpw5;

    .line 97
    .line 98
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, [Lpw5;

    .line 103
    .line 104
    invoke-static {v5}, Ljd4;->b([Lpw5;)Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    :cond_3
    invoke-virtual {v4, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    iput-object v1, v0, Lrx6;->c:Landroid/os/Bundle;

    .line 118
    .line 119
    :cond_4
    move-object v1, v5

    .line 120
    :goto_1
    invoke-static {v1, v3}, Ljm1;->k(Landroid/os/Bundle;Landroid/os/Bundle;)Lmx6;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_5
    return-object v4

    .line 129
    :cond_6
    const-string p0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    .line 130
    .line 131
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_7
    const-string p0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    .line 136
    .line 137
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_8
    const-string p0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    .line 142
    .line 143
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object v1

    .line 147
    :cond_9
    const-string p0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    .line 148
    .line 149
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v1
.end method

.method public static n([B)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lq48;->c(Ljava/nio/ByteBuffer;)Lq48;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public static o([B)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lq48;->c(Ljava/nio/ByteBuffer;)Lq48;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, v1, Lq48;->a:I

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lq48;->b()[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public static p(Ljava/lang/String;)[B
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/16 v0, 0xb

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final q(Lwx6;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lfu4;->getLifecycle()Lhu4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lhu4;->d:Lst4;

    .line 6
    .line 7
    sget-object v1, Lst4;->b:Lst4;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lst4;->c:Lst4;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "Failed requirement."

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p0}, Lwx6;->getSavedStateRegistry()Lot9;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lot9;->e()Lux6;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Lrx6;

    .line 33
    .line 34
    invoke-interface {p0}, Lwx6;->getSavedStateRegistry()Lot9;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v2, p0

    .line 39
    check-cast v2, Lzl8;

    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lrx6;-><init>(Lot9;Lzl8;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lwx6;->getSavedStateRegistry()Lot9;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Lot9;->h(Ljava/lang/String;Lux6;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Lfu4;->getLifecycle()Lhu4;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v1, Lnx6;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lnx6;-><init>(Lrx6;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lhu4;->a(Leu4;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public static r(Ljava/util/List;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lq48;

    .line 21
    .line 22
    invoke-virtual {v1}, Lq48;->a()[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    array-length v3, v1

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static s(Ljava/util/LinkedHashMap;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    new-instance v2, Lq48;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, [B

    .line 43
    .line 44
    invoke-direct {v2, v1, v3}, Lq48;-><init>([BI)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lq48;->a()[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    array-length v3, v1

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static t([B)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/16 v0, 0xb

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static u([B[B)Lt82;
    .locals 2

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lc0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lp82;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lj1;-><init>([B)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lp82;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lj1;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lc0;->a(Lb0;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lt82;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lt82;->c:I

    .line 30
    .line 31
    return-object p0
.end method

.method public static v(Ln60;)[B
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln60;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lpe4;->i(Ln60;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ly0;->i()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    return-object v1

    .line 16
    :cond_0
    const-string p0, "private key found"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static final w(Lzl8;)Lsx6;
    .locals 3

    .line 1
    new-instance v0, Lqx6;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p0, Lw24;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Lw24;

    .line 12
    .line 13
    invoke-interface {v1}, Lw24;->getDefaultViewModelCreationExtras()Lej5;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lm22;->b:Lm22;

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v2, Llj3;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0, v1}, Llj3;-><init>(Lyl8;Lwl8;Ln22;)V

    .line 33
    .line 34
    .line 35
    const-class p0, Lsx6;

    .line 36
    .line 37
    invoke-static {p0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 42
    .line 43
    invoke-virtual {v2, p0, v0}, Llj3;->b(Ln81;Ljava/lang/String;)Ltl8;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lsx6;

    .line 48
    .line 49
    return-object p0
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Ljr8;->a:Lve;

    .line 2
    .line 3
    sget-object v0, Lbf;->c:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lbf;

    .line 29
    .line 30
    iget-object v3, v2, Lbf;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x0

    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lbf;

    .line 64
    .line 65
    invoke-virtual {v0}, Lbf;->a()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lbf;->b()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    :cond_3
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :cond_4
    return v2

    .line 80
    :cond_5
    const-string v0, "Unknown feature "

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v2
.end method

.method public static z(Ljr7;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const-string v0, "[ -d @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljr7;->f()[Ljr7;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    array-length v3, p0

    .line 22
    move v4, v2

    .line 23
    :goto_0
    if-ge v4, v3, :cond_1

    .line 24
    .line 25
    aget-object v5, p0, v4

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljr7;->b(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-static {v5}, Lcy0;->z(Ljr7;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v3, v1

    .line 69
    check-cast v3, Ljr7;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string v4, ".fuse"

    .line 79
    .line 80
    invoke-static {v3, v4, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    return-object p0

    .line 91
    :cond_4
    const-string v0, "listRecursive: Not a directory \'"

    .line 92
    .line 93
    const-string v1, "\'"

    .line 94
    .line 95
    invoke-static {p0, v1, v0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method


# virtual methods
.method public abstract b(Ljava/lang/annotation/Annotation;)Lcy0;
.end method

.method public abstract c()Ls79;
.end method

.method public abstract d()Lee;
.end method

.method public abstract y(Ljava/lang/annotation/Annotation;)Z
.end method
