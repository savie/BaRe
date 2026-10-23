.class public abstract Lh44;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-class v0, La44;

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-string v2, "getUnsafe"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lsun/misc/Unsafe;

    .line 17
    .line 18
    sput-object v1, Lh44;->a:Lsun/misc/Unsafe;

    .line 19
    .line 20
    new-instance v2, Lvw1;

    .line 21
    .line 22
    const-string v4, "java.boot.class.path"

    .line 23
    .line 24
    const-string v5, ""

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, ":"

    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    aget-object v4, v4, v5

    .line 39
    .line 40
    invoke-direct {v2, v4, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 41
    .line 42
    .line 43
    const-class v4, Ljava/lang/reflect/Executable;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v2, v4}, Lvw1;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-class v5, Ljava/lang/invoke/MethodHandle;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v2, v5}, Lvw1;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-class v6, Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v2, v6}, Lvw1;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v6, "artMethod"

    .line 74
    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v1, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    sput-wide v6, Lh44;->b:J

    .line 84
    .line 85
    const-string v6, "declaringClass"

    .line 86
    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 92
    .line 93
    .line 94
    const-string v4, "artFieldOrMethod"

    .line 95
    .line 96
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    sput-wide v4, Lh44;->c:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .line 106
    :try_start_1
    const-string v4, "fields"

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    goto :goto_0

    .line 117
    :catch_0
    :try_start_2
    sget-object v1, Lh44;->a:Lsun/misc/Unsafe;

    .line 118
    .line 119
    const-string v4, "iFields"

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    const-string v6, "sFields"

    .line 130
    .line 131
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v1, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 136
    .line 137
    .line 138
    :goto_0
    sget-object v1, Lh44;->a:Lsun/misc/Unsafe;

    .line 139
    .line 140
    const-string v6, "methods"

    .line 141
    .line 142
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v6

    .line 150
    sput-wide v6, Lh44;->d:J

    .line 151
    .line 152
    const-string v2, "a"

    .line 153
    .line 154
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v8, "b"

    .line 159
    .line 160
    invoke-virtual {v0, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    const/4 v8, 0x1

    .line 165
    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-virtual {v9, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v9, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    sget-wide v9, Lh44;->c:J

    .line 188
    .line 189
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 190
    .line 191
    .line 192
    move-result-wide v11

    .line 193
    invoke-virtual {v1, v3, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    invoke-virtual {v1, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v6

    .line 201
    sub-long/2addr v2, v11

    .line 202
    sput-wide v2, Lh44;->e:J

    .line 203
    .line 204
    sub-long/2addr v11, v6

    .line 205
    sub-long/2addr v11, v2

    .line 206
    sput-wide v11, Lh44;->f:J

    .line 207
    .line 208
    const-string v2, "i"

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const-string v3, "j"

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v6, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v6, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v3, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :catch_1
    move-exception v0

    .line 253
    const-string v1, "HiddenApiBypass"

    .line 254
    .line 255
    const-string v2, "Initialize error"

    .line 256
    .line 257
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .line 259
    .line 260
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 261
    .line 262
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    throw v1
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "this object is not an instance of the given class"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const-class v0, [Ljava/lang/Object;

    .line 18
    .line 19
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Ly34;

    .line 24
    .line 25
    const-string v2, "invoke"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lh44;->a:Lsun/misc/Unsafe;

    .line 36
    .line 37
    sget-wide v1, Lh44;->d:J

    .line 38
    .line 39
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    cmp-long p0, v1, v5

    .line 46
    .line 47
    const-string v9, "Cannot find matching method"

    .line 48
    .line 49
    if-eqz p0, :cond_f

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    const/4 v0, 0x0

    .line 56
    move v10, v0

    .line 57
    :goto_1
    if-ge v10, p0, :cond_e

    .line 58
    .line 59
    int-to-long v5, v10

    .line 60
    sget-wide v7, Lh44;->e:J

    .line 61
    .line 62
    mul-long/2addr v5, v7

    .line 63
    add-long/2addr v5, v1

    .line 64
    sget-wide v7, Lh44;->f:J

    .line 65
    .line 66
    add-long/2addr v7, v5

    .line 67
    sget-object v3, Lh44;->a:Lsun/misc/Unsafe;

    .line 68
    .line 69
    sget-wide v5, Lh44;->b:J

    .line 70
    .line 71
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_d

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    sget-object v5, Lb44;->a:Ljava/util/HashSet;

    .line 89
    .line 90
    array-length v5, v3

    .line 91
    array-length v6, p3

    .line 92
    if-eq v5, v6, :cond_2

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_2
    move v5, v0

    .line 97
    :goto_2
    array-length v6, v3

    .line 98
    if-ge v5, v6, :cond_c

    .line 99
    .line 100
    aget-object v6, v3, v5

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_a

    .line 107
    .line 108
    aget-object v6, v3, v5

    .line 109
    .line 110
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 111
    .line 112
    if-ne v6, v7, :cond_3

    .line 113
    .line 114
    aget-object v7, p3, v5

    .line 115
    .line 116
    instance-of v7, v7, Ljava/lang/Integer;

    .line 117
    .line 118
    if-nez v7, :cond_3

    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_3
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 123
    .line 124
    if-ne v6, v7, :cond_4

    .line 125
    .line 126
    aget-object v7, p3, v5

    .line 127
    .line 128
    instance-of v7, v7, Ljava/lang/Byte;

    .line 129
    .line 130
    if-nez v7, :cond_4

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 134
    .line 135
    if-ne v6, v7, :cond_5

    .line 136
    .line 137
    aget-object v7, p3, v5

    .line 138
    .line 139
    instance-of v7, v7, Ljava/lang/Character;

    .line 140
    .line 141
    if-nez v7, :cond_5

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 145
    .line 146
    if-ne v6, v7, :cond_6

    .line 147
    .line 148
    aget-object v7, p3, v5

    .line 149
    .line 150
    instance-of v7, v7, Ljava/lang/Boolean;

    .line 151
    .line 152
    if-nez v7, :cond_6

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 156
    .line 157
    if-ne v6, v7, :cond_7

    .line 158
    .line 159
    aget-object v7, p3, v5

    .line 160
    .line 161
    instance-of v7, v7, Ljava/lang/Double;

    .line 162
    .line 163
    if-nez v7, :cond_7

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 167
    .line 168
    if-ne v6, v7, :cond_8

    .line 169
    .line 170
    aget-object v7, p3, v5

    .line 171
    .line 172
    instance-of v7, v7, Ljava/lang/Float;

    .line 173
    .line 174
    if-nez v7, :cond_8

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 178
    .line 179
    if-ne v6, v7, :cond_9

    .line 180
    .line 181
    aget-object v7, p3, v5

    .line 182
    .line 183
    instance-of v7, v7, Ljava/lang/Long;

    .line 184
    .line 185
    if-nez v7, :cond_9

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_9
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 189
    .line 190
    if-ne v6, v7, :cond_b

    .line 191
    .line 192
    aget-object v6, p3, v5

    .line 193
    .line 194
    instance-of v6, v6, Ljava/lang/Short;

    .line 195
    .line 196
    if-nez v6, :cond_b

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    aget-object v6, p3, v5

    .line 200
    .line 201
    if-eqz v6, :cond_b

    .line 202
    .line 203
    aget-object v7, v3, v5

    .line 204
    .line 205
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-nez v6, :cond_b

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_c
    invoke-virtual {v4, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    return-object p0

    .line 220
    :cond_d
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_e
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 225
    .line 226
    invoke-direct {p0, v9}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    :cond_f
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 231
    .line 232
    invoke-direct {p0, v9}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0
.end method

.method public static varargs b([Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "setHiddenApiExemptions"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-class v2, Ldalvik/system/VMRuntime;

    .line 5
    .line 6
    const-string v3, "getRuntime"

    .line 7
    .line 8
    new-array v4, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-static {v2, v5, v3, v4}, Lh44;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-class v3, Ldalvik/system/VMRuntime;

    .line 16
    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {v3, v2, v0, p0}, Lh44;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string v2, "HiddenApiBypass"

    .line 28
    .line 29
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    return v1
.end method
