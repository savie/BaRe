.class public abstract Luz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "manifestLink"

    .line 2
    .line 3
    const-string v10, "driveId"

    .line 4
    .line 5
    const-string v0, "apkLink"

    .line 6
    .line 7
    const-string v1, "splitsLink"

    .line 8
    .line 9
    const-string v2, "sharedLibsLink"

    .line 10
    .line 11
    const-string v3, "dataLink"

    .line 12
    .line 13
    const-string v4, "extDataLink"

    .line 14
    .line 15
    const-string v5, "mediaLink"

    .line 16
    .line 17
    const-string v6, "expLink"

    .line 18
    .line 19
    const-string v7, "specialDataLink"

    .line 20
    .line 21
    const-string v8, "backupLink"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Luz3;->a:Ljava/util/Set;

    .line 32
    .line 33
    return-void
.end method

.method public static final a(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    check-cast p1, Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_b

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-lt v3, v1, :cond_2

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v2, v4

    .line 62
    :goto_1
    sget-object v3, Luz3;->a:Ljava/util/Set;

    .line 63
    .line 64
    invoke-static {v3, v2}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_6

    .line 69
    .line 70
    instance-of v2, v0, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move-object v0, v4

    .line 78
    :goto_2
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-lez v2, :cond_5

    .line 95
    .line 96
    move-object v4, v0

    .line 97
    :cond_5
    if-eqz v4, :cond_1

    .line 98
    .line 99
    invoke-virtual {p0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-static {p0, v0}, Luz3;->a(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    instance-of v0, p1, Ljava/lang/Iterable;

    .line 108
    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    check-cast p1, Ljava/lang/Iterable;

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_b

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-lt v2, v1, :cond_8

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_8
    invoke-static {p0, v0}, Luz3;->a(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_9
    instance-of v0, p1, [Ljava/lang/Object;

    .line 139
    .line 140
    if-eqz v0, :cond_b

    .line 141
    .line 142
    check-cast p1, [Ljava/lang/Object;

    .line 143
    .line 144
    array-length v0, p1

    .line 145
    const/4 v2, 0x0

    .line 146
    :goto_4
    if-ge v2, v0, :cond_b

    .line 147
    .line 148
    aget-object v3, p1, v2

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-lt v4, v1, :cond_a

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_a
    invoke-static {p0, v3}, Luz3;->a(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_b
    :goto_5
    return-void
.end method
