.class public final Lk43;
.super Lg43;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Ljava/util/Locale;

.field public final c:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/TreeMap;

    .line 5
    .line 6
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lk43;->c:Ljava/util/TreeMap;

    .line 12
    .line 13
    sget v0, Lk05;->a:I

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    iput-object v0, p0, Lk43;->b:Ljava/util/Locale;

    .line 24
    .line 25
    const-string v0, "((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}"

    .line 26
    .line 27
    invoke-static {v0}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/TreeSet;

    .line 32
    .line 33
    sget-object v2, Ll43;->n:Ljava/util/Comparator;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    array-length v3, v2

    .line 47
    const/4 v4, 0x0

    .line 48
    move v5, v4

    .line 49
    :goto_1
    const-string v6, "GMT"

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    if-ge v5, v3, :cond_6

    .line 53
    .line 54
    aget-object v8, v2, v5

    .line 55
    .line 56
    aget-object v9, v8, v4

    .line 57
    .line 58
    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_1
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v9, Lj43;

    .line 70
    .line 71
    invoke-direct {v9, v6, v4}, Lj43;-><init>(Ljava/util/TimeZone;Z)V

    .line 72
    .line 73
    .line 74
    move v10, v7

    .line 75
    move-object v11, v9

    .line 76
    :goto_2
    array-length v12, v8

    .line 77
    if-ge v10, v12, :cond_5

    .line 78
    .line 79
    const/4 v12, 0x3

    .line 80
    if-eq v10, v12, :cond_3

    .line 81
    .line 82
    const/4 v12, 0x5

    .line 83
    if-eq v10, v12, :cond_2

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    move-object v11, v9

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    new-instance v11, Lj43;

    .line 89
    .line 90
    invoke-direct {v11, v6, v7}, Lj43;-><init>(Ljava/util/TimeZone;Z)V

    .line 91
    .line 92
    .line 93
    :goto_3
    aget-object v12, v8, v10

    .line 94
    .line 95
    if-eqz v12, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_4

    .line 102
    .line 103
    iget-object v13, p0, Lk43;->c:Ljava/util/TreeMap;

    .line 104
    .line 105
    invoke-virtual {v13, v12, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    array-length v3, v2

    .line 124
    :goto_5
    if-ge v4, v3, :cond_a

    .line 125
    .line 126
    aget-object v5, v2, v4

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_8

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_8
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5, p1}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v1, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_9

    .line 148
    .line 149
    iget-object v9, p0, Lk43;->c:Ljava/util/TreeMap;

    .line 150
    .line 151
    new-instance v10, Lj43;

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/util/TimeZone;->observesDaylightTime()Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    invoke-direct {v10, v5, v11}, Lj43;-><init>(Ljava/util/TimeZone;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v8, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_a
    new-instance p1, Lkl0;

    .line 167
    .line 168
    invoke-direct {p1, v0, v7}, Lkl0;-><init>(Ljava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v1, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 172
    .line 173
    .line 174
    const-string p1, ")"

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lg43;->a:Ljava/util/regex/Pattern;

    .line 188
    .line 189
    return-void
.end method


# virtual methods
.method public final c(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ls53;->a(Ljava/lang/String;)Liz3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lk43;->c:Ljava/util/TreeMap;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lj43;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x2e

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lj43;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    array-length v1, p1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v2, Ljava/util/TreeSet;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v2, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    filled-new-array {p2, v1, p1, v2}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "Can\'t find time zone \'%s\' (%d %s) in %s"

    .line 76
    .line 77
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    :goto_0
    const/16 p0, 0x10

    .line 86
    .line 87
    iget p2, v0, Lj43;->b:I

    .line 88
    .line 89
    invoke-virtual {p1, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 90
    .line 91
    .line 92
    iget-object p0, v0, Lj43;->a:Ljava/util/TimeZone;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    const/16 p2, 0xf

    .line 99
    .line 100
    invoke-virtual {p1, p2, p0}, Ljava/util/Calendar;->set(II)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimeZoneStrategy [locale="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lk43;->b:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", tzNames="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lk43;->c:Ljava/util/TreeMap;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", pattern="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lg43;->a:Ljava/util/regex/Pattern;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "]"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
