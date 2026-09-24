.class public abstract synthetic Lu48;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(ILtl4;)Ljava/lang/Number;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :try_start_0
    invoke-static {p0}, Lzv1;->n(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lgl4;

    .line 21
    .line 22
    const-string v2, "Cannot parse "

    .line 23
    .line 24
    const-string v3, "; at path "

    .line 25
    .line 26
    invoke-static {v2, p0, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1}, Ltl4;->getPreviousPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_0
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 v0, 0x2e

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ltz v0, :cond_1

    .line 56
    .line 57
    invoke-static {p0, p1}, Lu48;->b(Ljava/lang/String;Ltl4;)Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    goto :goto_0

    .line 71
    :catch_1
    invoke-static {p0, p1}, Lu48;->b(Ljava/lang/String;Ltl4;)Ljava/lang/Double;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    return-object p0

    .line 76
    :cond_2
    new-instance p0, Lns4;

    .line 77
    .line 78
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lns4;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_3
    invoke-virtual {p1}, Ltl4;->nextDouble()D

    .line 87
    .line 88
    .line 89
    move-result-wide p0

    .line 90
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ltl4;)Ljava/lang/Double;
    .locals 5

    .line 1
    const-string v0, "; at path "

    .line 2
    .line 3
    const-string v1, "JSON forbids NaN and infinities: "

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Double;->isInfinite()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ltl4;->isLenient()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    :cond_1
    return-object v2

    .line 31
    :cond_2
    new-instance v3, Lm55;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ltl4;->getPreviousPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    new-instance v2, Lgl4;

    .line 60
    .line 61
    const-string v3, "Cannot parse "

    .line 62
    .line 63
    invoke-static {v3, p0, v0}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1}, Ltl4;->getPreviousPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v2, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v2
.end method

.method public static final c(I)Z
    .locals 4

    .line 1
    invoke-static {}, Lpo9;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    :try_start_0
    const-string p0, "org.conscrypt.Conscrypt"

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "isBoringSslFIPSBuild"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    sget-object p0, Lpo9;->a:Ljava/util/logging/Logger;

    .line 28
    .line 29
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 30
    .line 31
    const-string v1, "checkConscryptIsAvailableAndUsesFipsBoringSsl"

    .line 32
    .line 33
    const-string v2, "Conscrypt is not available or does not support checking for FIPS build."

    .line 34
    .line 35
    const-string v3, "com.google.crypto.tink.config.internal.TinkFipsUtil"

    .line 36
    .line 37
    invoke-virtual {p0, v0, v3, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public static final d(I)I
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p0, v1, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq p0, v1, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    throw p0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    :cond_3
    :goto_0
    return v0

    .line 27
    :cond_4
    invoke-static {}, Ll79;->c()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0
.end method

.method public static final e(I)Z
    .locals 0

    .line 1
    invoke-static {}, Lpo9;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static f(I)I
    .locals 4

    .line 1
    const/16 v0, 0x5a

    .line 2
    .line 3
    if-eq p0, v0, :cond_3

    .line 4
    .line 5
    const/16 v1, 0x5b

    .line 6
    .line 7
    if-eq p0, v1, :cond_2

    .line 8
    .line 9
    const/16 v2, 0x5d

    .line 10
    .line 11
    if-eq p0, v2, :cond_1

    .line 12
    .line 13
    const/16 v3, 0x5e

    .line 14
    .line 15
    if-eq p0, v3, :cond_0

    .line 16
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    packed-switch p0, :pswitch_data_1

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :pswitch_0
    const/16 p0, 0x8d

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_1
    const/16 p0, 0x8c

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_2
    const/16 p0, 0x8b

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_3
    const/16 p0, 0x8a

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_4
    const/16 p0, 0x89

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_5
    const/16 p0, 0x76

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_6
    const/16 p0, 0x74

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_7
    const/16 p0, 0x73

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_8
    const/16 p0, 0x88

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_9
    const/16 p0, 0x87

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_a
    const/16 p0, 0x86

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_b
    const/16 p0, 0x85

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_c
    const/16 p0, 0x84

    .line 62
    .line 63
    return p0

    .line 64
    :pswitch_d
    const/16 p0, 0x83

    .line 65
    .line 66
    return p0

    .line 67
    :pswitch_e
    const/16 p0, 0x82

    .line 68
    .line 69
    return p0

    .line 70
    :pswitch_f
    const/16 p0, 0x81

    .line 71
    .line 72
    return p0

    .line 73
    :pswitch_10
    const/16 p0, 0x80

    .line 74
    .line 75
    return p0

    .line 76
    :pswitch_11
    const/16 p0, 0x7f

    .line 77
    .line 78
    return p0

    .line 79
    :pswitch_12
    const/16 p0, 0x7e

    .line 80
    .line 81
    return p0

    .line 82
    :pswitch_13
    const/16 p0, 0x7d

    .line 83
    .line 84
    return p0

    .line 85
    :pswitch_14
    const/16 p0, 0x7c

    .line 86
    .line 87
    return p0

    .line 88
    :pswitch_15
    const/16 p0, 0x7b

    .line 89
    .line 90
    return p0

    .line 91
    :pswitch_16
    const/16 p0, 0x7a

    .line 92
    .line 93
    return p0

    .line 94
    :pswitch_17
    const/16 p0, 0x79

    .line 95
    .line 96
    return p0

    .line 97
    :pswitch_18
    const/16 p0, 0x78

    .line 98
    .line 99
    return p0

    .line 100
    :pswitch_19
    const/16 p0, 0x77

    .line 101
    .line 102
    return p0

    .line 103
    :pswitch_1a
    const/16 p0, 0x75

    .line 104
    .line 105
    return p0

    .line 106
    :pswitch_1b
    const/16 p0, 0x72

    .line 107
    .line 108
    return p0

    .line 109
    :pswitch_1c
    const/16 p0, 0x71

    .line 110
    .line 111
    return p0

    .line 112
    :pswitch_1d
    const/16 p0, 0x70

    .line 113
    .line 114
    return p0

    .line 115
    :pswitch_1e
    const/16 p0, 0x6f

    .line 116
    .line 117
    return p0

    .line 118
    :pswitch_1f
    const/16 p0, 0x6e

    .line 119
    .line 120
    return p0

    .line 121
    :pswitch_20
    const/16 p0, 0x6d

    .line 122
    .line 123
    return p0

    .line 124
    :pswitch_21
    const/16 p0, 0x6c

    .line 125
    .line 126
    return p0

    .line 127
    :pswitch_22
    const/16 p0, 0x6b

    .line 128
    .line 129
    return p0

    .line 130
    :pswitch_23
    const/16 p0, 0x6a

    .line 131
    .line 132
    return p0

    .line 133
    :pswitch_24
    const/16 p0, 0x69

    .line 134
    .line 135
    return p0

    .line 136
    :pswitch_25
    const/16 p0, 0x68

    .line 137
    .line 138
    return p0

    .line 139
    :pswitch_26
    const/16 p0, 0x67

    .line 140
    .line 141
    return p0

    .line 142
    :pswitch_27
    const/16 p0, 0x66

    .line 143
    .line 144
    return p0

    .line 145
    :pswitch_28
    const/16 p0, 0x65

    .line 146
    .line 147
    return p0

    .line 148
    :pswitch_29
    const/16 p0, 0x64

    .line 149
    .line 150
    return p0

    .line 151
    :pswitch_2a
    const/16 p0, 0x63

    .line 152
    .line 153
    return p0

    .line 154
    :pswitch_2b
    const/16 p0, 0x62

    .line 155
    .line 156
    return p0

    .line 157
    :pswitch_2c
    const/16 p0, 0x61

    .line 158
    .line 159
    return p0

    .line 160
    :pswitch_2d
    const/16 p0, 0x60

    .line 161
    .line 162
    return p0

    .line 163
    :pswitch_2e
    const/16 p0, 0x5f

    .line 164
    .line 165
    return p0

    .line 166
    :pswitch_2f
    return v3

    .line 167
    :pswitch_30
    return v2

    .line 168
    :pswitch_31
    const/16 p0, 0x56

    .line 169
    .line 170
    return p0

    .line 171
    :pswitch_32
    const/16 p0, 0x53

    .line 172
    .line 173
    return p0

    .line 174
    :pswitch_33
    const/16 p0, 0x5c

    .line 175
    .line 176
    return p0

    .line 177
    :pswitch_34
    return v1

    .line 178
    :pswitch_35
    return v0

    .line 179
    :pswitch_36
    const/16 p0, 0x59

    .line 180
    .line 181
    return p0

    .line 182
    :pswitch_37
    const/16 p0, 0x58

    .line 183
    .line 184
    return p0

    .line 185
    :pswitch_38
    const/16 p0, 0x57

    .line 186
    .line 187
    return p0

    .line 188
    :pswitch_39
    const/16 p0, 0x50

    .line 189
    .line 190
    return p0

    .line 191
    :pswitch_3a
    const/16 p0, 0x4f

    .line 192
    .line 193
    return p0

    .line 194
    :pswitch_3b
    const/16 p0, 0x4e

    .line 195
    .line 196
    return p0

    .line 197
    :pswitch_3c
    const/16 p0, 0x4d

    .line 198
    .line 199
    return p0

    .line 200
    :pswitch_3d
    const/16 p0, 0x4c

    .line 201
    .line 202
    return p0

    .line 203
    :pswitch_3e
    const/16 p0, 0x4b

    .line 204
    .line 205
    return p0

    .line 206
    :pswitch_3f
    const/16 p0, 0x4a

    .line 207
    .line 208
    return p0

    .line 209
    :pswitch_40
    const/16 p0, 0x49

    .line 210
    .line 211
    return p0

    .line 212
    :pswitch_41
    const/16 p0, 0x48

    .line 213
    .line 214
    return p0

    .line 215
    :pswitch_42
    const/16 p0, 0x47

    .line 216
    .line 217
    return p0

    .line 218
    :pswitch_43
    const/16 p0, 0x46

    .line 219
    .line 220
    return p0

    .line 221
    :pswitch_44
    const/16 p0, 0x45

    .line 222
    .line 223
    return p0

    .line 224
    :pswitch_45
    const/16 p0, 0x44

    .line 225
    .line 226
    return p0

    .line 227
    :pswitch_46
    const/16 p0, 0x43

    .line 228
    .line 229
    return p0

    .line 230
    :pswitch_47
    const/16 p0, 0x42

    .line 231
    .line 232
    return p0

    .line 233
    :pswitch_48
    const/16 p0, 0x41

    .line 234
    .line 235
    return p0

    .line 236
    :pswitch_49
    const/16 p0, 0x40

    .line 237
    .line 238
    return p0

    .line 239
    :pswitch_4a
    const/16 p0, 0x3f

    .line 240
    .line 241
    return p0

    .line 242
    :pswitch_4b
    const/16 p0, 0x3e

    .line 243
    .line 244
    return p0

    .line 245
    :pswitch_4c
    const/16 p0, 0x3d

    .line 246
    .line 247
    return p0

    .line 248
    :pswitch_4d
    const/16 p0, 0x3c

    .line 249
    .line 250
    return p0

    .line 251
    :pswitch_4e
    const/16 p0, 0x3b

    .line 252
    .line 253
    return p0

    .line 254
    :pswitch_4f
    const/16 p0, 0x3a

    .line 255
    .line 256
    return p0

    .line 257
    :pswitch_50
    const/16 p0, 0x39

    .line 258
    .line 259
    return p0

    .line 260
    :pswitch_51
    const/16 p0, 0x38

    .line 261
    .line 262
    return p0

    .line 263
    :pswitch_52
    const/16 p0, 0x37

    .line 264
    .line 265
    return p0

    .line 266
    :pswitch_53
    const/16 p0, 0x36

    .line 267
    .line 268
    return p0

    .line 269
    :pswitch_54
    const/16 p0, 0x35

    .line 270
    .line 271
    return p0

    .line 272
    :pswitch_55
    const/16 p0, 0x34

    .line 273
    .line 274
    return p0

    .line 275
    :pswitch_56
    const/16 p0, 0x33

    .line 276
    .line 277
    return p0

    .line 278
    :pswitch_57
    const/16 p0, 0x32

    .line 279
    .line 280
    return p0

    .line 281
    :pswitch_58
    const/16 p0, 0x31

    .line 282
    .line 283
    return p0

    .line 284
    :pswitch_59
    const/16 p0, 0x30

    .line 285
    .line 286
    return p0

    .line 287
    :pswitch_5a
    const/16 p0, 0x2f

    .line 288
    .line 289
    return p0

    .line 290
    :pswitch_5b
    const/16 p0, 0x2e

    .line 291
    .line 292
    return p0

    .line 293
    :pswitch_5c
    const/16 p0, 0x2d

    .line 294
    .line 295
    return p0

    .line 296
    :pswitch_5d
    const/16 p0, 0x2c

    .line 297
    .line 298
    return p0

    .line 299
    :pswitch_5e
    const/16 p0, 0x2b

    .line 300
    .line 301
    return p0

    .line 302
    :pswitch_5f
    const/16 p0, 0x2a

    .line 303
    .line 304
    return p0

    .line 305
    :pswitch_60
    const/16 p0, 0x29

    .line 306
    .line 307
    return p0

    .line 308
    :pswitch_61
    const/16 p0, 0x28

    .line 309
    .line 310
    return p0

    .line 311
    :pswitch_62
    const/16 p0, 0x27

    .line 312
    .line 313
    return p0

    .line 314
    :pswitch_63
    const/16 p0, 0x26

    .line 315
    .line 316
    return p0

    .line 317
    :pswitch_64
    const/16 p0, 0x25

    .line 318
    .line 319
    return p0

    .line 320
    :pswitch_65
    const/16 p0, 0x24

    .line 321
    .line 322
    return p0

    .line 323
    :pswitch_66
    const/16 p0, 0x23

    .line 324
    .line 325
    return p0

    .line 326
    :pswitch_67
    const/16 p0, 0x22

    .line 327
    .line 328
    return p0

    .line 329
    :pswitch_68
    const/16 p0, 0x21

    .line 330
    .line 331
    return p0

    .line 332
    :pswitch_69
    const/16 p0, 0x20

    .line 333
    .line 334
    return p0

    .line 335
    :pswitch_6a
    const/16 p0, 0x1f

    .line 336
    .line 337
    return p0

    .line 338
    :pswitch_6b
    const/16 p0, 0x1e

    .line 339
    .line 340
    return p0

    .line 341
    :pswitch_6c
    const/16 p0, 0x1d

    .line 342
    .line 343
    return p0

    .line 344
    :pswitch_6d
    const/16 p0, 0x1c

    .line 345
    .line 346
    return p0

    .line 347
    :pswitch_6e
    const/16 p0, 0x1b

    .line 348
    .line 349
    return p0

    .line 350
    :pswitch_6f
    const/16 p0, 0x1a

    .line 351
    .line 352
    return p0

    .line 353
    :pswitch_70
    const/16 p0, 0x19

    .line 354
    .line 355
    return p0

    .line 356
    :pswitch_71
    const/16 p0, 0x18

    .line 357
    .line 358
    return p0

    .line 359
    :pswitch_72
    const/16 p0, 0x17

    .line 360
    .line 361
    return p0

    .line 362
    :pswitch_73
    const/16 p0, 0x16

    .line 363
    .line 364
    return p0

    .line 365
    :pswitch_74
    const/16 p0, 0x15

    .line 366
    .line 367
    return p0

    .line 368
    :pswitch_75
    const/16 p0, 0x14

    .line 369
    .line 370
    return p0

    .line 371
    :pswitch_76
    const/16 p0, 0x13

    .line 372
    .line 373
    return p0

    .line 374
    :pswitch_77
    const/16 p0, 0x12

    .line 375
    .line 376
    return p0

    .line 377
    :pswitch_78
    const/16 p0, 0x11

    .line 378
    .line 379
    return p0

    .line 380
    :pswitch_79
    const/16 p0, 0x10

    .line 381
    .line 382
    return p0

    .line 383
    :pswitch_7a
    const/16 p0, 0xf

    .line 384
    .line 385
    return p0

    .line 386
    :pswitch_7b
    const/16 p0, 0xe

    .line 387
    .line 388
    return p0

    .line 389
    :pswitch_7c
    const/16 p0, 0xd

    .line 390
    .line 391
    return p0

    .line 392
    :pswitch_7d
    const/16 p0, 0xc

    .line 393
    .line 394
    return p0

    .line 395
    :pswitch_7e
    const/16 p0, 0xb

    .line 396
    .line 397
    return p0

    .line 398
    :pswitch_7f
    const/16 p0, 0xa

    .line 399
    .line 400
    return p0

    .line 401
    :pswitch_80
    const/16 p0, 0x9

    .line 402
    .line 403
    return p0

    .line 404
    :pswitch_81
    const/16 p0, 0x8

    .line 405
    .line 406
    return p0

    .line 407
    :pswitch_82
    const/4 p0, 0x7

    .line 408
    return p0

    .line 409
    :pswitch_83
    const/4 p0, 0x6

    .line 410
    return p0

    .line 411
    :pswitch_84
    const/4 p0, 0x5

    .line 412
    return p0

    .line 413
    :pswitch_85
    const/4 p0, 0x4

    .line 414
    return p0

    .line 415
    :pswitch_86
    const/4 p0, 0x3

    .line 416
    return p0

    .line 417
    :pswitch_87
    const/4 p0, 0x2

    .line 418
    return p0

    .line 419
    :pswitch_88
    const/4 p0, 0x1

    .line 420
    return p0

    .line 421
    :cond_0
    const/16 p0, 0x55

    .line 422
    .line 423
    return p0

    .line 424
    :cond_1
    const/16 p0, 0x54

    .line 425
    .line 426
    return p0

    .line 427
    :cond_2
    const/16 p0, 0x52

    .line 428
    .line 429
    return p0

    .line 430
    :cond_3
    const/16 p0, 0x51

    .line 431
    .line 432
    return p0

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic g(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const/16 p0, 0x98

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_1
    const/16 p0, 0x97

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_2
    const/16 p0, 0x96

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_3
    const/16 p0, 0x95

    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_4
    const/16 p0, 0x94

    .line 19
    .line 20
    return p0

    .line 21
    :pswitch_5
    const/16 p0, 0x90

    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_6
    const/16 p0, 0x8f

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_7
    const/16 p0, 0x8e

    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_8
    const/16 p0, 0x8d

    .line 31
    .line 32
    return p0

    .line 33
    :pswitch_9
    const/16 p0, 0x8c

    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_a
    const/16 p0, 0x8b

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_b
    const/16 p0, 0x8a

    .line 40
    .line 41
    return p0

    .line 42
    :pswitch_c
    const/16 p0, 0x89

    .line 43
    .line 44
    return p0

    .line 45
    :pswitch_d
    const/16 p0, 0x88

    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_e
    const/16 p0, 0x87

    .line 49
    .line 50
    return p0

    .line 51
    :pswitch_f
    const/16 p0, 0x86

    .line 52
    .line 53
    return p0

    .line 54
    :pswitch_10
    const/16 p0, 0x85

    .line 55
    .line 56
    return p0

    .line 57
    :pswitch_11
    const/16 p0, 0x84

    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_12
    const/16 p0, 0x83

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_13
    const/16 p0, 0x82

    .line 64
    .line 65
    return p0

    .line 66
    :pswitch_14
    const/16 p0, 0x81

    .line 67
    .line 68
    return p0

    .line 69
    :pswitch_15
    const/16 p0, 0x80

    .line 70
    .line 71
    return p0

    .line 72
    :pswitch_16
    const/16 p0, 0x7f

    .line 73
    .line 74
    return p0

    .line 75
    :pswitch_17
    const/16 p0, 0x93

    .line 76
    .line 77
    return p0

    .line 78
    :pswitch_18
    const/16 p0, 0x7e

    .line 79
    .line 80
    return p0

    .line 81
    :pswitch_19
    const/16 p0, 0x92

    .line 82
    .line 83
    return p0

    .line 84
    :pswitch_1a
    const/16 p0, 0x91

    .line 85
    .line 86
    return p0

    .line 87
    :pswitch_1b
    const/16 p0, 0x7d

    .line 88
    .line 89
    return p0

    .line 90
    :pswitch_1c
    const/16 p0, 0x7c

    .line 91
    .line 92
    return p0

    .line 93
    :pswitch_1d
    const/16 p0, 0x7b

    .line 94
    .line 95
    return p0

    .line 96
    :pswitch_1e
    const/16 p0, 0x7a

    .line 97
    .line 98
    return p0

    .line 99
    :pswitch_1f
    const/16 p0, 0x79

    .line 100
    .line 101
    return p0

    .line 102
    :pswitch_20
    const/16 p0, 0x78

    .line 103
    .line 104
    return p0

    .line 105
    :pswitch_21
    const/16 p0, 0x77

    .line 106
    .line 107
    return p0

    .line 108
    :pswitch_22
    const/16 p0, 0x76

    .line 109
    .line 110
    return p0

    .line 111
    :pswitch_23
    const/16 p0, 0x75

    .line 112
    .line 113
    return p0

    .line 114
    :pswitch_24
    const/16 p0, 0x74

    .line 115
    .line 116
    return p0

    .line 117
    :pswitch_25
    const/16 p0, 0x73

    .line 118
    .line 119
    return p0

    .line 120
    :pswitch_26
    const/16 p0, 0x72

    .line 121
    .line 122
    return p0

    .line 123
    :pswitch_27
    const/16 p0, 0x71

    .line 124
    .line 125
    return p0

    .line 126
    :pswitch_28
    const/16 p0, 0x70

    .line 127
    .line 128
    return p0

    .line 129
    :pswitch_29
    const/16 p0, 0x6f

    .line 130
    .line 131
    return p0

    .line 132
    :pswitch_2a
    const/16 p0, 0x6e

    .line 133
    .line 134
    return p0

    .line 135
    :pswitch_2b
    const/16 p0, 0x6d

    .line 136
    .line 137
    return p0

    .line 138
    :pswitch_2c
    const/16 p0, 0x6c

    .line 139
    .line 140
    return p0

    .line 141
    :pswitch_2d
    const/16 p0, 0x6b

    .line 142
    .line 143
    return p0

    .line 144
    :pswitch_2e
    const/16 p0, 0x6a

    .line 145
    .line 146
    return p0

    .line 147
    :pswitch_2f
    const/16 p0, 0x69

    .line 148
    .line 149
    return p0

    .line 150
    :pswitch_30
    const/16 p0, 0x68

    .line 151
    .line 152
    return p0

    .line 153
    :pswitch_31
    const/16 p0, 0x65

    .line 154
    .line 155
    return p0

    .line 156
    :pswitch_32
    const/16 p0, 0x64

    .line 157
    .line 158
    return p0

    .line 159
    :pswitch_33
    const/16 p0, 0x63

    .line 160
    .line 161
    return p0

    .line 162
    :pswitch_34
    const/16 p0, 0x62

    .line 163
    .line 164
    return p0

    .line 165
    :pswitch_35
    const/16 p0, 0x61

    .line 166
    .line 167
    return p0

    .line 168
    :pswitch_36
    const/16 p0, 0x60

    .line 169
    .line 170
    return p0

    .line 171
    :pswitch_37
    const/16 p0, 0x67

    .line 172
    .line 173
    return p0

    .line 174
    :pswitch_38
    const/16 p0, 0x5e

    .line 175
    .line 176
    return p0

    .line 177
    :pswitch_39
    const/16 p0, 0x5d

    .line 178
    .line 179
    return p0

    .line 180
    :pswitch_3a
    const/16 p0, 0x66

    .line 181
    .line 182
    return p0

    .line 183
    :pswitch_3b
    const/16 p0, 0x5b

    .line 184
    .line 185
    return p0

    .line 186
    :pswitch_3c
    const/16 p0, 0x5a

    .line 187
    .line 188
    return p0

    .line 189
    :pswitch_3d
    const/16 p0, 0x4f

    .line 190
    .line 191
    return p0

    .line 192
    :pswitch_3e
    const/16 p0, 0x4e

    .line 193
    .line 194
    return p0

    .line 195
    :pswitch_3f
    const/16 p0, 0x4d

    .line 196
    .line 197
    return p0

    .line 198
    :pswitch_40
    const/16 p0, 0x4c

    .line 199
    .line 200
    return p0

    .line 201
    :pswitch_41
    const/16 p0, 0x4b

    .line 202
    .line 203
    return p0

    .line 204
    :pswitch_42
    const/16 p0, 0x4a

    .line 205
    .line 206
    return p0

    .line 207
    :pswitch_43
    const/16 p0, 0x49

    .line 208
    .line 209
    return p0

    .line 210
    :pswitch_44
    const/16 p0, 0x48

    .line 211
    .line 212
    return p0

    .line 213
    :pswitch_45
    const/16 p0, 0x47

    .line 214
    .line 215
    return p0

    .line 216
    :pswitch_46
    const/16 p0, 0x46

    .line 217
    .line 218
    return p0

    .line 219
    :pswitch_47
    const/16 p0, 0x45

    .line 220
    .line 221
    return p0

    .line 222
    :pswitch_48
    const/16 p0, 0x44

    .line 223
    .line 224
    return p0

    .line 225
    :pswitch_49
    const/16 p0, 0x43

    .line 226
    .line 227
    return p0

    .line 228
    :pswitch_4a
    const/16 p0, 0x42

    .line 229
    .line 230
    return p0

    .line 231
    :pswitch_4b
    const/16 p0, 0x41

    .line 232
    .line 233
    return p0

    .line 234
    :pswitch_4c
    const/16 p0, 0x40

    .line 235
    .line 236
    return p0

    .line 237
    :pswitch_4d
    const/16 p0, 0x3f

    .line 238
    .line 239
    return p0

    .line 240
    :pswitch_4e
    const/16 p0, 0x3e

    .line 241
    .line 242
    return p0

    .line 243
    :pswitch_4f
    const/16 p0, 0x3d

    .line 244
    .line 245
    return p0

    .line 246
    :pswitch_50
    const/16 p0, 0x3c

    .line 247
    .line 248
    return p0

    .line 249
    :pswitch_51
    const/16 p0, 0x3b

    .line 250
    .line 251
    return p0

    .line 252
    :pswitch_52
    const/16 p0, 0x3a

    .line 253
    .line 254
    return p0

    .line 255
    :pswitch_53
    const/16 p0, 0x39

    .line 256
    .line 257
    return p0

    .line 258
    :pswitch_54
    const/16 p0, 0x38

    .line 259
    .line 260
    return p0

    .line 261
    :pswitch_55
    const/16 p0, 0x37

    .line 262
    .line 263
    return p0

    .line 264
    :pswitch_56
    const/16 p0, 0x36

    .line 265
    .line 266
    return p0

    .line 267
    :pswitch_57
    const/16 p0, 0x35

    .line 268
    .line 269
    return p0

    .line 270
    :pswitch_58
    const/16 p0, 0x34

    .line 271
    .line 272
    return p0

    .line 273
    :pswitch_59
    const/16 p0, 0x33

    .line 274
    .line 275
    return p0

    .line 276
    :pswitch_5a
    const/16 p0, 0x32

    .line 277
    .line 278
    return p0

    .line 279
    :pswitch_5b
    const/16 p0, 0x31

    .line 280
    .line 281
    return p0

    .line 282
    :pswitch_5c
    const/16 p0, 0x30

    .line 283
    .line 284
    return p0

    .line 285
    :pswitch_5d
    const/16 p0, 0x2f

    .line 286
    .line 287
    return p0

    .line 288
    :pswitch_5e
    const/16 p0, 0x2e

    .line 289
    .line 290
    return p0

    .line 291
    :pswitch_5f
    const/16 p0, 0x2d

    .line 292
    .line 293
    return p0

    .line 294
    :pswitch_60
    const/16 p0, 0x2c

    .line 295
    .line 296
    return p0

    .line 297
    :pswitch_61
    const/16 p0, 0x2b

    .line 298
    .line 299
    return p0

    .line 300
    :pswitch_62
    const/16 p0, 0x2a

    .line 301
    .line 302
    return p0

    .line 303
    :pswitch_63
    const/16 p0, 0x29

    .line 304
    .line 305
    return p0

    .line 306
    :pswitch_64
    const/16 p0, 0x28

    .line 307
    .line 308
    return p0

    .line 309
    :pswitch_65
    const/16 p0, 0x27

    .line 310
    .line 311
    return p0

    .line 312
    :pswitch_66
    const/16 p0, 0x26

    .line 313
    .line 314
    return p0

    .line 315
    :pswitch_67
    const/16 p0, 0x25

    .line 316
    .line 317
    return p0

    .line 318
    :pswitch_68
    const/16 p0, 0x24

    .line 319
    .line 320
    return p0

    .line 321
    :pswitch_69
    const/16 p0, 0x23

    .line 322
    .line 323
    return p0

    .line 324
    :pswitch_6a
    const/16 p0, 0x22

    .line 325
    .line 326
    return p0

    .line 327
    :pswitch_6b
    const/16 p0, 0x21

    .line 328
    .line 329
    return p0

    .line 330
    :pswitch_6c
    const/16 p0, 0x20

    .line 331
    .line 332
    return p0

    .line 333
    :pswitch_6d
    const/16 p0, 0x1f

    .line 334
    .line 335
    return p0

    .line 336
    :pswitch_6e
    const/16 p0, 0x1e

    .line 337
    .line 338
    return p0

    .line 339
    :pswitch_6f
    const/16 p0, 0x1d

    .line 340
    .line 341
    return p0

    .line 342
    :pswitch_70
    const/16 p0, 0x1c

    .line 343
    .line 344
    return p0

    .line 345
    :pswitch_71
    const/16 p0, 0x1b

    .line 346
    .line 347
    return p0

    .line 348
    :pswitch_72
    const/16 p0, 0x1a

    .line 349
    .line 350
    return p0

    .line 351
    :pswitch_73
    const/16 p0, 0x19

    .line 352
    .line 353
    return p0

    .line 354
    :pswitch_74
    const/16 p0, 0x18

    .line 355
    .line 356
    return p0

    .line 357
    :pswitch_75
    const/16 p0, 0x17

    .line 358
    .line 359
    return p0

    .line 360
    :pswitch_76
    const/16 p0, 0x16

    .line 361
    .line 362
    return p0

    .line 363
    :pswitch_77
    const/16 p0, 0x15

    .line 364
    .line 365
    return p0

    .line 366
    :pswitch_78
    const/16 p0, 0x14

    .line 367
    .line 368
    return p0

    .line 369
    :pswitch_79
    const/16 p0, 0x13

    .line 370
    .line 371
    return p0

    .line 372
    :pswitch_7a
    const/16 p0, 0x12

    .line 373
    .line 374
    return p0

    .line 375
    :pswitch_7b
    const/16 p0, 0x11

    .line 376
    .line 377
    return p0

    .line 378
    :pswitch_7c
    const/16 p0, 0x10

    .line 379
    .line 380
    return p0

    .line 381
    :pswitch_7d
    const/16 p0, 0xf

    .line 382
    .line 383
    return p0

    .line 384
    :pswitch_7e
    const/16 p0, 0xe

    .line 385
    .line 386
    return p0

    .line 387
    :pswitch_7f
    const/16 p0, 0xd

    .line 388
    .line 389
    return p0

    .line 390
    :pswitch_80
    const/16 p0, 0xc

    .line 391
    .line 392
    return p0

    .line 393
    :pswitch_81
    const/16 p0, 0xb

    .line 394
    .line 395
    return p0

    .line 396
    :pswitch_82
    const/16 p0, 0xa

    .line 397
    .line 398
    return p0

    .line 399
    :pswitch_83
    const/16 p0, 0x9

    .line 400
    .line 401
    return p0

    .line 402
    :pswitch_84
    const/16 p0, 0x8

    .line 403
    .line 404
    return p0

    .line 405
    :pswitch_85
    const/4 p0, 0x7

    .line 406
    return p0

    .line 407
    :pswitch_86
    const/4 p0, 0x6

    .line 408
    return p0

    .line 409
    :pswitch_87
    const/4 p0, 0x5

    .line 410
    return p0

    .line 411
    :pswitch_88
    const/4 p0, 0x4

    .line 412
    return p0

    .line 413
    :pswitch_89
    const/4 p0, 0x3

    .line 414
    return p0

    .line 415
    :pswitch_8a
    const/4 p0, 0x2

    .line 416
    return p0

    .line 417
    :pswitch_8b
    const/4 p0, 0x1

    .line 418
    return p0

    .line 419
    :pswitch_8c
    const/4 p0, 0x0

    .line 420
    return p0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lc79;->t(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method public static i(IIII)I
    .locals 0

    .line 1
    invoke-static {p0}, Lnh9;->n(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    add-int/2addr p0, p3

    .line 8
    return p0
.end method

.method public static j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static l(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static q(IILf1;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    new-instance v0, Lkx8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lkx8;-><init>(IILf1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Ljava/lang/AutoCloseable;)V
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p0, v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 33
    .line 34
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    const-wide/16 v3, 0x1

    .line 37
    .line 38
    invoke-interface {p0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 57
    .line 58
    .line 59
    :cond_4
    :goto_1
    return-void

    .line 60
    :cond_5
    instance-of v0, p0, Landroid/content/res/TypedArray;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    check-cast p0, Landroid/content/res/TypedArray;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_6
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    check-cast p0, Landroid/media/MediaMetadataRetriever;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_7
    instance-of v0, p0, Landroid/media/MediaDrm;

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    .line 84
    check-cast p0, Landroid/media/MediaDrm;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_8
    invoke-static {}, Lc6;->b()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static t(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lnh9;->n(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method public static u(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzln;->zzA(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method
