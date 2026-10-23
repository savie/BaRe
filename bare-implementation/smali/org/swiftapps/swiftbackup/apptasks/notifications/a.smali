.class public abstract Lorg/swiftapps/swiftbackup/apptasks/notifications/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a([Ljava/lang/String;)Lorg/swiftapps/swiftbackup/apptasks/notifications/b;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne v0, v1, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object v1, p0, v0

    .line 8
    .line 9
    const-string v3, "backup"

    .line 10
    .line 11
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v1, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy$a;->Backup:Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy$a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "restore"

    .line 21
    .line 22
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    sget-object v1, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy$a;->Restore:Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy$a;

    .line 29
    .line 30
    :goto_0
    const/4 v3, 0x1

    .line 31
    aget-object v4, p0, v3

    .line 32
    .line 33
    invoke-static {v4}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ltz v5, :cond_3

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    aget-object v3, p0, v3

    .line 47
    .line 48
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-ge v0, v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v5}, Lly8;->C(C)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    const/16 v6, 0x22

    .line 71
    .line 72
    if-eq v5, v6, :cond_2

    .line 73
    .line 74
    const/16 v6, 0x27

    .line 75
    .line 76
    if-eq v5, v6, :cond_2

    .line 77
    .line 78
    const/16 v6, 0x3c

    .line 79
    .line 80
    if-eq v5, v6, :cond_2

    .line 81
    .line 82
    const/16 v6, 0x3e

    .line 83
    .line 84
    if-eq v5, v6, :cond_2

    .line 85
    .line 86
    const/16 v6, 0x26

    .line 87
    .line 88
    if-eq v5, v6, :cond_2

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    new-instance v0, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    new-instance v4, Ljava/io/File;

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    aget-object p0, p0, v5

    .line 103
    .line 104
    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/swiftapps/swiftbackup/apptasks/notifications/b;-><init>(Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy$a;ILjava/lang/String;Ljava/io/File;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_2
    const-string p0, "Unsafe package name: "

    .line 112
    .line 113
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v2

    .line 121
    :cond_3
    aget-object p0, p0, v3

    .line 122
    .line 123
    const-string v0, "Invalid userId: "

    .line 124
    .line 125
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object v2

    .line 133
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    aget-object p0, p0, v0

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v2, "Unknown mode: "

    .line 140
    .line 141
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :cond_5
    const-string p0, "Expected mode, userId, packageName, payloadFile"

    .line 160
    .line 161
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v2
.end method
