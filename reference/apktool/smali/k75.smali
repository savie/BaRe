.class public final Lk75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Ljava/util/Set;

.field public static final h:Ljava/util/Set;

.field public static final i:Ljava/util/Set;


# instance fields
.field public final a:Lge;

.field public final b:Lus2;

.field public final c:Ljava/util/ArrayList;

.field public d:Lo64;

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v31, "tt"

    .line 4
    .line 5
    const-string v32, "var"

    .line 6
    .line 7
    const-string v1, "a"

    .line 8
    .line 9
    const-string v2, "abbr"

    .line 10
    .line 11
    const-string v3, "acronym"

    .line 12
    .line 13
    const-string v4, "b"

    .line 14
    .line 15
    const-string v5, "bdo"

    .line 16
    .line 17
    const-string v6, "big"

    .line 18
    .line 19
    const-string v7, "br"

    .line 20
    .line 21
    const-string v8, "button"

    .line 22
    .line 23
    const-string v9, "cite"

    .line 24
    .line 25
    const-string v10, "code"

    .line 26
    .line 27
    const-string v11, "dfn"

    .line 28
    .line 29
    const-string v12, "em"

    .line 30
    .line 31
    const-string v13, "i"

    .line 32
    .line 33
    const-string v14, "img"

    .line 34
    .line 35
    const-string v15, "input"

    .line 36
    .line 37
    const-string v16, "kbd"

    .line 38
    .line 39
    const-string v17, "label"

    .line 40
    .line 41
    const-string v18, "map"

    .line 42
    .line 43
    const-string v19, "object"

    .line 44
    .line 45
    const-string v20, "q"

    .line 46
    .line 47
    const-string v21, "samp"

    .line 48
    .line 49
    const-string v22, "script"

    .line 50
    .line 51
    const-string v23, "select"

    .line 52
    .line 53
    const-string v24, "small"

    .line 54
    .line 55
    const-string v25, "span"

    .line 56
    .line 57
    const-string v26, "strong"

    .line 58
    .line 59
    const-string v27, "sub"

    .line 60
    .line 61
    const-string v28, "sup"

    .line 62
    .line 63
    const-string v29, "textarea"

    .line 64
    .line 65
    const-string v30, "time"

    .line 66
    .line 67
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lk75;->g:Ljava/util/Set;

    .line 83
    .line 84
    new-instance v0, Ljava/util/HashSet;

    .line 85
    .line 86
    const-string v14, "track"

    .line 87
    .line 88
    const-string v15, "wbr"

    .line 89
    .line 90
    const-string v1, "area"

    .line 91
    .line 92
    const-string v2, "base"

    .line 93
    .line 94
    const-string v3, "br"

    .line 95
    .line 96
    const-string v4, "col"

    .line 97
    .line 98
    const-string v5, "embed"

    .line 99
    .line 100
    const-string v6, "hr"

    .line 101
    .line 102
    const-string v7, "img"

    .line 103
    .line 104
    const-string v8, "input"

    .line 105
    .line 106
    const-string v9, "keygen"

    .line 107
    .line 108
    const-string v10, "link"

    .line 109
    .line 110
    const-string v11, "meta"

    .line 111
    .line 112
    const-string v12, "param"

    .line 113
    .line 114
    const-string v13, "source"

    .line 115
    .line 116
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lk75;->h:Ljava/util/Set;

    .line 132
    .line 133
    new-instance v0, Ljava/util/HashSet;

    .line 134
    .line 135
    const-string v35, "ul"

    .line 136
    .line 137
    const-string v36, "video"

    .line 138
    .line 139
    const-string v1, "address"

    .line 140
    .line 141
    const-string v2, "article"

    .line 142
    .line 143
    const-string v3, "aside"

    .line 144
    .line 145
    const-string v4, "blockquote"

    .line 146
    .line 147
    const-string v5, "canvas"

    .line 148
    .line 149
    const-string v6, "dd"

    .line 150
    .line 151
    const-string v7, "div"

    .line 152
    .line 153
    const-string v8, "dl"

    .line 154
    .line 155
    const-string v9, "dt"

    .line 156
    .line 157
    const-string v10, "fieldset"

    .line 158
    .line 159
    const-string v11, "figcaption"

    .line 160
    .line 161
    const-string v12, "figure"

    .line 162
    .line 163
    const-string v13, "footer"

    .line 164
    .line 165
    const-string v14, "form"

    .line 166
    .line 167
    const-string v15, "h1"

    .line 168
    .line 169
    const-string v16, "h2"

    .line 170
    .line 171
    const-string v17, "h3"

    .line 172
    .line 173
    const-string v18, "h4"

    .line 174
    .line 175
    const-string v19, "h5"

    .line 176
    .line 177
    const-string v20, "h6"

    .line 178
    .line 179
    const-string v21, "header"

    .line 180
    .line 181
    const-string v22, "hgroup"

    .line 182
    .line 183
    const-string v23, "hr"

    .line 184
    .line 185
    const-string v24, "li"

    .line 186
    .line 187
    const-string v25, "main"

    .line 188
    .line 189
    const-string v26, "nav"

    .line 190
    .line 191
    const-string v27, "noscript"

    .line 192
    .line 193
    const-string v28, "ol"

    .line 194
    .line 195
    const-string v29, "output"

    .line 196
    .line 197
    const-string v30, "p"

    .line 198
    .line 199
    const-string v31, "pre"

    .line 200
    .line 201
    const-string v32, "section"

    .line 202
    .line 203
    const-string v33, "table"

    .line 204
    .line 205
    const-string v34, "tfoot"

    .line 206
    .line 207
    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    sput-object v0, Lk75;->i:Ljava/util/Set;

    .line 223
    .line 224
    return-void
.end method

.method public constructor <init>(Lge;Lus2;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lk75;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Lo64;

    .line 13
    .line 14
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, ""

    .line 18
    .line 19
    invoke-direct {v0, v4, v1, v2, v3}, Lo64;-><init>(Ljava/lang/String;ILjava/util/Map;Lo64;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lk75;->d:Lo64;

    .line 23
    .line 24
    iput-object p1, p0, Lk75;->a:Lge;

    .line 25
    .line 26
    iput-object p2, p0, Lk75;->b:Lus2;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Lb58;)Ljava/util/Map;
    .locals 8

    .line 1
    iget-object p0, p0, Lc58;->k:Lb80;

    .line 2
    .line 3
    iget v0, p0, Lb80;->a:I

    .line 4
    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    move v2, v0

    .line 14
    :goto_0
    iget v3, p0, Lb80;->a:I

    .line 15
    .line 16
    if-ge v2, v3, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move v3, v0

    .line 21
    :goto_1
    if-eqz v3, :cond_4

    .line 22
    .line 23
    iget-object v3, p0, Lb80;->c:[Ljava/lang/String;

    .line 24
    .line 25
    aget-object v3, v3, v2

    .line 26
    .line 27
    new-instance v4, Lv70;

    .line 28
    .line 29
    iget-object v5, p0, Lb80;->b:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object v5, v5, v2

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    :cond_1
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iput-object v7, v4, Lv70;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    iput-object v3, v4, Lv70;->b:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p0, v4, Lv70;->c:Lb80;

    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    iget-object v3, v4, Lv70;->a:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v4, v4, Lv70;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string p0, "String must not be empty"

    .line 76
    .line 77
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v6

    .line 81
    :cond_3
    const-string p0, "Object must not be null"

    .line 82
    .line 83
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v6

    .line 87
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_5
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 93
    .line 94
    return-object p0
.end method
