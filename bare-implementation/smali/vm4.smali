.class public abstract Lvm4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[Ljava/lang/Object;

.field public static final b:Lcz4;

.field public static final c:Ly09;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Lvm4;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v0, Lcz4;

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lvm4;->b:Lcz4;

    .line 14
    .line 15
    new-instance v0, Ly09;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, v1}, Ly09;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lvm4;->c:Ly09;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static A(Lorg/swiftapps/swiftbackup/home/HomeActivity;Z)V
    .locals 2

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.telephony"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object p1, Lzn4;->a:Lzn4;

    .line 22
    .line 23
    const-string p1, "Feature not supported on this device"

    .line 24
    .line 25
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    const-class v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 32
    .line 33
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "highlight_cloud_card"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static B(Lil0;Ldd1;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "cloud_type"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final C(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :goto_0
    sget-object p0, Lvm4;->a:[Ljava/lang/Object;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v0, v1

    .line 31
    .line 32
    array-length v1, v0

    .line 33
    if-lt v2, v1, :cond_6

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    mul-int/lit8 v1, v2, 0x3

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    ushr-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    if-gt v1, v2, :cond_4

    .line 49
    .line 50
    const v1, 0x7ffffffd

    .line 51
    .line 52
    .line 53
    if-ge v2, v1, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_5
    move v1, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static final D(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    array-length p0, p1

    .line 10
    if-lez p0, :cond_1

    .line 11
    .line 12
    aput-object v1, p1, v2

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    array-length p0, p1

    .line 26
    if-lez p0, :cond_1

    .line 27
    .line 28
    aput-object v1, p1, v2

    .line 29
    .line 30
    :cond_1
    return-object p1

    .line 31
    :cond_2
    array-length v3, p1

    .line 32
    if-gt v0, v3, :cond_3

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast v0, [Ljava/lang/Object;

    .line 52
    .line 53
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    aput-object v4, v0, v2

    .line 60
    .line 61
    array-length v2, v0

    .line 62
    if-lt v3, v2, :cond_8

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_4
    mul-int/lit8 v2, v3, 0x3

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    ushr-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    if-gt v2, v3, :cond_6

    .line 78
    .line 79
    const v2, 0x7ffffffd

    .line 80
    .line 81
    .line 82
    if-ge v3, v2, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 86
    .line 87
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_6
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_7
    move v2, v3

    .line 96
    goto :goto_0

    .line 97
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_7

    .line 102
    .line 103
    if-ne v0, p1, :cond_9

    .line 104
    .line 105
    aput-object v1, p1, v3

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_9
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x26

    .line 5
    .line 6
    invoke-static {p0, v0}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ge v3, v4, :cond_17

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eq v4, v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    const/16 v6, 0x3b

    .line 46
    .line 47
    invoke-static {v6, v3, v5, p0}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, -0x1

    .line 52
    if-ne v5, v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/16 v8, 0xced

    .line 67
    .line 68
    if-eq v7, v8, :cond_b

    .line 69
    .line 70
    const/16 v8, 0xd88

    .line 71
    .line 72
    if-eq v7, v8, :cond_9

    .line 73
    .line 74
    const v8, 0x179c4

    .line 75
    .line 76
    .line 77
    if-eq v7, v8, :cond_7

    .line 78
    .line 79
    const v8, 0x2dca53

    .line 80
    .line 81
    .line 82
    if-eq v7, v8, :cond_5

    .line 83
    .line 84
    const v8, 0x352309

    .line 85
    .line 86
    .line 87
    if-eq v7, v8, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const-string v7, "quot"

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const-string v6, "\""

    .line 100
    .line 101
    goto/16 :goto_8

    .line 102
    .line 103
    :cond_5
    const-string v7, "apos"

    .line 104
    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-nez v7, :cond_6

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    const-string v6, "\'"

    .line 113
    .line 114
    goto/16 :goto_8

    .line 115
    .line 116
    :cond_7
    const-string v7, "amp"

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-nez v7, :cond_8

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_8
    const-string v6, "&"

    .line 126
    .line 127
    goto/16 :goto_8

    .line 128
    .line 129
    :cond_9
    const-string v7, "lt"

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_a

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_a
    const-string v6, "<"

    .line 139
    .line 140
    goto/16 :goto_8

    .line 141
    .line 142
    :cond_b
    const-string v7, "gt"

    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-nez v7, :cond_15

    .line 149
    .line 150
    :goto_1
    const/16 v7, 0x23

    .line 151
    .line 152
    invoke-static {v6, v7}, Lnq7;->y0(Ljava/lang/CharSequence;C)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    const/4 v8, 0x0

    .line 157
    if-nez v7, :cond_d

    .line 158
    .line 159
    :cond_c
    :goto_2
    move-object v6, v8

    .line 160
    goto :goto_8

    .line 161
    :cond_d
    const-string v7, "#x"

    .line 162
    .line 163
    invoke-static {v6, v7, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    const/4 v9, 0x1

    .line 168
    if-nez v7, :cond_f

    .line 169
    .line 170
    const-string v7, "#X"

    .line 171
    .line 172
    invoke-static {v6, v7, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_e

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_e
    move v7, v2

    .line 180
    goto :goto_4

    .line 181
    :cond_f
    :goto_3
    move v7, v9

    .line 182
    :goto_4
    if-eqz v7, :cond_10

    .line 183
    .line 184
    const/4 v9, 0x2

    .line 185
    :cond_10
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-nez v9, :cond_11

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_11
    if-eqz v7, :cond_12

    .line 197
    .line 198
    const/16 v7, 0x10

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_12
    const/16 v7, 0xa

    .line 202
    .line 203
    :goto_5
    invoke-static {v7, v6}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    if-eqz v6, :cond_c

    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    invoke-static {v6}, Ljava/lang/Character;->isValidCodePoint(I)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-nez v7, :cond_13

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_13
    :try_start_0
    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    new-instance v7, Ljava/lang/String;

    .line 228
    .line 229
    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :catchall_0
    move-exception v6

    .line 234
    new-instance v7, Lbn6;

    .line 235
    .line 236
    invoke-direct {v7, v6}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 237
    .line 238
    .line 239
    :goto_6
    instance-of v6, v7, Lbn6;

    .line 240
    .line 241
    if-eqz v6, :cond_14

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_14
    move-object v8, v7

    .line 245
    :goto_7
    check-cast v8, Ljava/lang/String;

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_15
    const-string v6, ">"

    .line 249
    .line 250
    :goto_8
    if-nez v6, :cond_16

    .line 251
    .line 252
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_16
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    add-int/lit8 v3, v5, 0x1

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    return-object p0
.end method

.method public static varargs F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    mul-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    array-length v3, p1

    .line 17
    if-ge v0, v3, :cond_1

    .line 18
    .line 19
    const-string v4, "%s"

    .line 20
    .line 21
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, -0x1

    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v2, p0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v0, 0x1

    .line 33
    .line 34
    aget-object v0, p1, v0

    .line 35
    .line 36
    invoke-static {v0}, Lvm4;->I(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v4, 0x2

    .line 44
    .line 45
    move v6, v1

    .line 46
    move v1, v0

    .line 47
    move v0, v6

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v2, p0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    if-ge v0, v3, :cond_3

    .line 57
    .line 58
    const-string p0, " ["

    .line 59
    .line 60
    :goto_2
    array-length v1, p1

    .line 61
    if-ge v0, v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    aget-object p0, p1, v0

    .line 67
    .line 68
    invoke-static {p0}, Lvm4;->I(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    const-string p0, ", "

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/16 p0, 0x5d

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static I(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    move-object v5, v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    add-int/2addr v1, v2

    .line 46
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const-string v1, "@"

    .line 50
    .line 51
    invoke-static {v3, v0, v1, p0}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v0, "com.google.common.base.Strings"

    .line 56
    .line 57
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 62
    .line 63
    const-string v3, "lenientToString"

    .line 64
    .line 65
    const-string v2, "Exception during lenientFormat for "

    .line 66
    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v2, "com.google.common.base.Strings"

    .line 72
    .line 73
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/lit8 v1, v1, 0x8

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    add-int/2addr v1, v2

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .line 101
    .line 102
    const-string v1, "<"

    .line 103
    .line 104
    const-string v2, " threw "

    .line 105
    .line 106
    invoke-static {v3, v1, p0, v2, v0}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string p0, ">"

    .line 110
    .line 111
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static final a(Ljava/util/List;Lex;J)J
    .locals 6

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-long v2, v2

    .line 21
    div-long v2, p2, v2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    int-to-long v4, p0

    .line 28
    rem-long/2addr p2, v4

    .line 29
    int-to-long p0, p1

    .line 30
    cmp-long p0, p0, p2

    .line 31
    .line 32
    if-gez p0, :cond_1

    .line 33
    .line 34
    const-wide/16 v0, 0x1

    .line 35
    .line 36
    :cond_1
    add-long/2addr v2, v0

    .line 37
    return-wide v2

    .line 38
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static final b(Lq63;Z)Ljava/util/Map;
    .locals 8

    .line 1
    sget-object v0, Lpv2;->a:Lpv2;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    sget-object p1, Lmz6;->a:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-static {p0}, Lmz6;->t(Lq63;)Lky6;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Lky6;->i:Ljava/util/List;

    .line 13
    .line 14
    const/16 p1, 0xa

    .line 15
    .line 16
    invoke-static {p0, p1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Lx65;->q0(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    if-ge p1, v1, :cond_1

    .line 27
    .line 28
    move p1, v1

    .line 29
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lxy6;

    .line 49
    .line 50
    iget-object v2, p1, Lxy6;->a:Ljava/lang/String;

    .line 51
    .line 52
    iget-wide v3, p1, Lxy6;->g:J

    .line 53
    .line 54
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-wide v4, p1, Lxy6;->f:J

    .line 59
    .line 60
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-wide v5, p1, Lxy6;->e:J

    .line 65
    .line 66
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {v3, v4, p1}, [Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v4, v3

    .line 93
    check-cast v4, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    const-wide/16 v6, 0x0

    .line 100
    .line 101
    cmp-long v4, v4, v6

    .line 102
    .line 103
    if-lez v4, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const/4 v3, 0x0

    .line 109
    :goto_1
    check-cast v3, Ljava/lang/Long;

    .line 110
    .line 111
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :goto_2
    new-instance v1, Lbn6;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    instance-of p0, v1, Lbn6;

    .line 129
    .line 130
    if-eqz p0, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    move-object v0, v1

    .line 134
    :goto_3
    check-cast v0, Ljava/util/Map;

    .line 135
    .line 136
    return-object v0
.end method

.method public static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Lvm4;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1, p3}, Lvm4;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_b

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 17
    .line 18
    const/16 v1, 0x82

    .line 19
    .line 20
    const/16 v3, 0x21

    .line 21
    .line 22
    const/16 v4, 0x42

    .line 23
    .line 24
    const/16 v5, 0x11

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq p0, v5, :cond_4

    .line 28
    .line 29
    if-eq p0, v3, :cond_3

    .line 30
    .line 31
    if-eq p0, v4, :cond_2

    .line 32
    .line 33
    if-ne p0, v1, :cond_1

    .line 34
    .line 35
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    iget v8, p3, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    if-gt v7, v8, :cond_a

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    iget v8, p3, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    if-gt v7, v8, :cond_a

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    if-lt v7, v8, :cond_a

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    iget v8, p3, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    if-lt v7, v8, :cond_a

    .line 65
    .line 66
    :goto_0
    if-eq p0, v5, :cond_a

    .line 67
    .line 68
    if-ne p0, v4, :cond_5

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    invoke-static {p0, p1, p2}, Lvm4;->w(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eq p0, v5, :cond_9

    .line 76
    .line 77
    if-eq p0, v3, :cond_8

    .line 78
    .line 79
    if-eq p0, v4, :cond_7

    .line 80
    .line 81
    if-ne p0, v1, :cond_6

    .line 82
    .line 83
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 84
    .line 85
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    :goto_1
    sub-int/2addr p0, p1

    .line 88
    goto :goto_2

    .line 89
    :cond_6
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return v2

    .line 93
    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 94
    .line 95
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_8
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_2
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-ge p2, p0, :cond_b

    .line 113
    .line 114
    :cond_a
    :goto_3
    return v6

    .line 115
    :cond_b
    :goto_4
    return v2
.end method

.method public static d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x21

    .line 7
    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x42

    .line 11
    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x82

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    if-lt p0, v0, :cond_3

    .line 30
    .line 31
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    if-gt p0, p1, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    if-lt p0, v0, :cond_3

    .line 43
    .line 44
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    if-gt p0, p1, :cond_3

    .line 49
    .line 50
    :goto_1
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_3
    return v1
.end method

.method public static e(Lq2;)V
    .locals 3

    .line 1
    iget p0, p0, Lq2;->b:I

    .line 2
    .line 3
    const/16 v0, 0x80

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0x40

    .line 9
    .line 10
    const-string v2, "CONTEXT"

    .line 11
    .line 12
    if-eq p0, v1, :cond_3

    .line 13
    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/16 v0, 0xc0

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const-string p0, "UNIVERSAL"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string p0, "PRIVATE"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move-object p0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const-string p0, "APPLICATION"

    .line 29
    .line 30
    :goto_0
    const-string v0, "Expected "

    .line 31
    .line 32
    const-string v1, " tag but found "

    .line 33
    .line 34
    invoke-static {v0, v2, v1, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static f(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    aget-object v2, p0, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-static {v2, p1}, Lvm4;->f(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static final g(JLor2;)J
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-wide/16 v4, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const-wide/32 v0, 0x5265c00

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Wrong unit for millisMultiplier: "

    .line 29
    .line 30
    invoke-static {p2, p0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-wide v2

    .line 34
    :cond_1
    const-wide/32 v0, 0x36ee80

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-wide/32 v0, 0xea60

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const-wide/16 v0, 0x3e8

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move-wide v0, v4

    .line 46
    :goto_0
    cmp-long p2, p0, v2

    .line 47
    .line 48
    if-nez p2, :cond_5

    .line 49
    .line 50
    return-wide v2

    .line 51
    :cond_5
    cmp-long p2, p0, v4

    .line 52
    .line 53
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    if-nez p2, :cond_7

    .line 59
    .line 60
    cmp-long p0, v0, v2

    .line 61
    .line 62
    if-lez p0, :cond_6

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    return-wide v0

    .line 66
    :cond_7
    cmp-long p2, v0, v4

    .line 67
    .line 68
    if-nez p2, :cond_9

    .line 69
    .line 70
    cmp-long p2, p0, v2

    .line 71
    .line 72
    if-lez p2, :cond_8

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_8
    return-wide p0

    .line 76
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    rsub-int p2, p2, 0x80

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    sub-int/2addr p2, v4

    .line 87
    const/16 v4, 0x3f

    .line 88
    .line 89
    if-ge p2, v4, :cond_a

    .line 90
    .line 91
    mul-long/2addr p0, v0

    .line 92
    return-wide p0

    .line 93
    :cond_a
    if-le p2, v4, :cond_b

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_b
    mul-long/2addr p0, v0

    .line 97
    cmp-long p2, p0, v2

    .line 98
    .line 99
    if-lez p2, :cond_c

    .line 100
    .line 101
    :goto_1
    return-wide v2

    .line 102
    :cond_c
    return-wide p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Lun1;
    .locals 2

    .line 1
    new-instance v0, Lwd0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lwd0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lwd0;

    .line 7
    .line 8
    invoke-static {p0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Ltn1;->e:I

    .line 14
    .line 15
    new-instance p1, Lrn1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p1, v0, v1}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ltn1;->f:Lmo1;

    .line 22
    .line 23
    invoke-virtual {p0}, Ltn1;->b()Lun1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static i(Ldd1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lki1;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v2, Lli1;->a:[I

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aget v2, v2, v3

    .line 19
    .line 20
    if-eq v2, v0, :cond_4

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object v2, Loq8;->i:Loq8;

    .line 27
    .line 28
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProviderPresetId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lxh8;->j(Ljava/lang/String;)Loq8;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Lxh8;->t(Ljava/lang/String;)Loq8;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_2
    sget-object p2, Loq8;->i:Loq8;

    .line 47
    .line 48
    invoke-static {v2, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    new-instance v1, Lmi1;

    .line 56
    .line 57
    iget-object p2, v2, Loq8;->b:Ljava/lang/String;

    .line 58
    .line 59
    iget v2, v2, Loq8;->c:I

    .line 60
    .line 61
    const v3, 0x7f1305ae

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v3, v2, p2}, Lmi1;-><init>(IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    sget-object v2, Lxq6;->j:Lxq6;

    .line 69
    .line 70
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProviderPresetId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lfo8;->e(Ljava/lang/String;)Lxq6;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-nez v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p2}, Lfo8;->h(Ljava/lang/String;)Lxq6;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :cond_5
    sget-object p2, Lxq6;->j:Lxq6;

    .line 89
    .line 90
    invoke-static {v2, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    new-instance v1, Lmi1;

    .line 98
    .line 99
    iget-object p2, v2, Lxq6;->b:Ljava/lang/String;

    .line 100
    .line 101
    iget v2, v2, Lxq6;->c:I

    .line 102
    .line 103
    const v3, 0x7f1304b9

    .line 104
    .line 105
    .line 106
    invoke-direct {v1, v3, v2, p2}, Lmi1;-><init>(IILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    if-eqz v1, :cond_7

    .line 110
    .line 111
    iget-object p0, v1, Lmi1;->b:Ljava/lang/String;

    .line 112
    .line 113
    new-instance p2, Lki1;

    .line 114
    .line 115
    const-string v2, ": "

    .line 116
    .line 117
    invoke-static {p1, v2, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget v1, v1, Lmi1;->c:I

    .line 122
    .line 123
    invoke-direct {p2, v1, p1, p0, v0}, Lki1;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    return-object p2

    .line 127
    :cond_7
    new-instance p2, Lki1;

    .line 128
    .line 129
    invoke-virtual {p0}, Ldd1;->getBrandingIconRes()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    const/4 v0, 0x0

    .line 134
    invoke-direct {p2, p0, p1, p1, v0}, Lki1;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    return-object p2
.end method

.method public static j(Ljava/lang/String;Lkt4;)Lun1;
    .locals 2

    .line 1
    const-class v0, Lwd0;

    .line 2
    .line 3
    invoke-static {v0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Ltn1;->e:I

    .line 9
    .line 10
    const-class v1, Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ltn1;->a(Lji2;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Liq0;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Liq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Ltn1;->f:Lmo1;

    .line 25
    .line 26
    invoke-virtual {v0}, Ltn1;->b()Lun1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static k([J)Lv17;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v3, Lv17;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget-wide v4, v0, v1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget-wide v6, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    aget-wide v8, v0, v1

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    aget-wide v10, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    aget-wide v12, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    aget-wide v14, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    aget-wide v16, v0, v1

    .line 33
    .line 34
    const/4 v1, 0x7

    .line 35
    aget-wide v18, v0, v1

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    aget-wide v20, v0, v1

    .line 40
    .line 41
    const/16 v1, 0x9

    .line 42
    .line 43
    aget-wide v22, v0, v1

    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    aget-wide v24, v0, v1

    .line 48
    .line 49
    const/16 v1, 0xb

    .line 50
    .line 51
    aget-wide v26, v0, v1

    .line 52
    .line 53
    const/16 v1, 0xc

    .line 54
    .line 55
    aget-wide v28, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xd

    .line 58
    .line 59
    aget-wide v30, v0, v1

    .line 60
    .line 61
    const/16 v1, 0xe

    .line 62
    .line 63
    aget-wide v32, v0, v1

    .line 64
    .line 65
    const/16 v1, 0xf

    .line 66
    .line 67
    aget-wide v34, v0, v1

    .line 68
    .line 69
    const/16 v1, 0x10

    .line 70
    .line 71
    aget-wide v36, v0, v1

    .line 72
    .line 73
    const/16 v1, 0x11

    .line 74
    .line 75
    aget-wide v38, v0, v1

    .line 76
    .line 77
    const/16 v1, 0x12

    .line 78
    .line 79
    aget-wide v40, v0, v1

    .line 80
    .line 81
    const/16 v1, 0x13

    .line 82
    .line 83
    aget-wide v42, v0, v1

    .line 84
    .line 85
    invoke-direct/range {v3 .. v43}, Lv17;-><init>(JJJJJJJJJJJJJJJJJJJJ)V

    .line 86
    .line 87
    .line 88
    return-object v3

    .line 89
    :cond_0
    array-length v0, v0

    .line 90
    const-string v1, "Unexpected SwiftTar extract stats length: "

    .line 91
    .line 92
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    return-object v0
.end method

.method public static l(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/annotation/Annotation;
    .locals 3

    .line 1
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v0, p0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_3

    .line 25
    .line 26
    aget-object v2, p0, v1

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, p1, p2}, Lvm4;->l(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/annotation/Annotation;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0}, Lvm4;->l(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/annotation/Annotation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final n(Lp77;Lni4;Ljava/lang/String;)I
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
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lni4;->a:Ldj4;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p0}, Lvm4;->y(Lni4;Lp77;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p2}, Lp77;->d(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x3

    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, v0, Ldj4;->d:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :goto_0
    return v1

    .line 31
    :cond_1
    iget-object v0, p1, Lni4;->c:Lkm8;

    .line 32
    .line 33
    new-instance v1, Lqf;

    .line 34
    .line 35
    const/16 v3, 0xf

    .line 36
    .line 37
    invoke-direct {v1, v3, p0, p1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Lkm8;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/Map;

    .line 52
    .line 53
    sget-object v3, Lvm4;->b:Lcz4;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v0, v4

    .line 64
    :goto_1
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v4, v0

    .line 68
    :goto_2
    if-eqz v4, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    invoke-virtual {v1}, Lqf;->invoke()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_5
    check-cast v0, Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :goto_3
    check-cast v4, Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Ljava/lang/Integer;

    .line 102
    .line 103
    if-eqz p0, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    return p0

    .line 110
    :cond_6
    return v2
.end method

.method public static o(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    const-class v4, Lo24;

    .line 12
    .line 13
    invoke-static {v3, v4}, Lvm4;->m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :cond_1
    const-class v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0, p1}, Lvm4;->o(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public static p(Lev6;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lev6;->b()Lzu6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Low0;->c:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ldv6;->b()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, v0, Low0;->c:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ldv6;->c()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ldv6;->b()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    sub-int/2addr v2, p0

    .line 34
    new-array p0, v2, [B

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v0, p0, v2}, Low0;->o([BI)V
    :try_end_0
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    iput v1, v0, Low0;->c:I

    .line 40
    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Lgv6;

    .line 44
    .line 45
    const-string v1, "Cannot read packet bytes from buffer"

    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public static q(II)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const-string v1, "]"

    .line 4
    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x80

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xc0

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "[UNIVERSAL "

    .line 16
    .line 17
    :goto_0
    invoke-static {p1, p0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "[PRIVATE "

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "[CONTEXT "

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string p0, "[APPLICATION "

    .line 29
    .line 30
    goto :goto_0
.end method

.method public static r(Lcom/google/android/material/appbar/MaterialToolbar;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    check-cast v2, Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0
.end method

.method public static s(ILjava/math/BigInteger;)[B
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    if-ne v0, p0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-ge v0, p0, :cond_1

    .line 12
    .line 13
    new-array v0, p0, [B

    .line 14
    .line 15
    array-length v2, p1

    .line 16
    sub-int/2addr p0, v2

    .line 17
    array-length v2, p1

    .line 18
    invoke-static {p1, v1, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    array-length v0, p1

    .line 23
    add-int/lit8 v2, p0, 0x1

    .line 24
    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    aget-byte v0, p1, v1

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    array-length p0, p1

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-static {p1, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p1, "value is too large to be represented in "

    .line 39
    .line 40
    const-string v0, " bytes"

    .line 41
    .line 42
    invoke-static {p0, p1, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public static t(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_6

    .line 5
    .line 6
    const/16 v0, 0x21

    .line 7
    .line 8
    if-eq p0, v0, :cond_4

    .line 9
    .line 10
    const/16 v0, 0x42

    .line 11
    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x82

    .line 15
    .line 16
    if-ne p0, v0, :cond_1

    .line 17
    .line 18
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    if-lt p0, v0, :cond_0

    .line 23
    .line 24
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    if-gt p0, v0, :cond_8

    .line 27
    .line 28
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    if-ge p0, p1, :cond_8

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 36
    .line 37
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    if-lt p0, v0, :cond_3

    .line 46
    .line 47
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    if-gt p0, v0, :cond_8

    .line 50
    .line 51
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    if-ge p0, p1, :cond_8

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 61
    .line 62
    if-gt p0, v0, :cond_5

    .line 63
    .line 64
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    if-lt p0, v0, :cond_8

    .line 67
    .line 68
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    if-le p0, p1, :cond_8

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    if-gt p0, v0, :cond_7

    .line 80
    .line 81
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 82
    .line 83
    if-lt p0, v0, :cond_8

    .line 84
    .line 85
    :cond_7
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    if-le p0, p1, :cond_8

    .line 90
    .line 91
    :goto_0
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :cond_8
    return v1
.end method

.method public static v(B)Z
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

.method public static w(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/16 v0, 0x21

    .line 7
    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x42

    .line 11
    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x82

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    :goto_0
    sub-int/2addr p0, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string p0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 25
    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static x(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x42

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 19
    .line 20
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    div-int/lit8 p1, p1, 0x2

    .line 32
    .line 33
    add-int/2addr p1, p0

    .line 34
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    div-int/lit8 p2, p2, 0x2

    .line 41
    .line 42
    add-int/2addr p2, p0

    .line 43
    sub-int/2addr p1, p2

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    div-int/lit8 p1, p1, 0x2

    .line 56
    .line 57
    add-int/2addr p1, p0

    .line 58
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    div-int/lit8 p2, p2, 0x2

    .line 65
    .line 66
    add-int/2addr p2, p0

    .line 67
    sub-int/2addr p1, p2

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0
.end method

.method public static final y(Lni4;Lp77;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lp77;->e()Lzh8;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Ldr7;->g:Ldr7;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lni4;->a:Ldj4;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public abstract G()Lbd9;
.end method

.method public abstract H()Ljava/lang/Integer;
.end method
