.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

.field static final referenceContextClass:Ljava/lang/Class;


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/Hashtable;

.field protected parserClasses:Ljava/util/Vector;

.field protected serializerClasses:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 7
    .line 8
    sput-object v0, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 10
    .line 11
    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    invoke-static {v0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 4
    .line 5
    :cond_0
    const-string v0, "\'"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    const-string v2, "DEFAULT"

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    const-string v2, "parameter classNames to newInstance() that contained \'"

    .line 28
    .line 29
    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_0
    :try_start_0
    const-string p0, "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_e

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-gez v2, :cond_d

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    new-instance p1, Ljava/lang/StringBuffer;

    .line 70
    .line 71
    const-string v2, "resource /META-INF/services/org.xmlpull.v1.XmlPullParserFactory that contained \'"

    .line 72
    .line 73
    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_2
    new-instance v0, Ljava/util/Vector;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v2, Ljava/util/Vector;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    move-object v5, v1

    .line 98
    move v4, v3

    .line 99
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-lt v4, v6, :cond_5

    .line 104
    .line 105
    if-nez v5, :cond_4

    .line 106
    .line 107
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 108
    .line 109
    invoke-direct {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 110
    .line 111
    .line 112
    :cond_4
    iput-object v0, v5, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 113
    .line 114
    iput-object v2, v5, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 115
    .line 116
    iput-object p1, v5, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 117
    .line 118
    return-object v5

    .line 119
    :cond_5
    const/16 v6, 0x2c

    .line 120
    .line 121
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    const/4 v7, -0x1

    .line 126
    if-ne v6, v7, :cond_6

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    :cond_6
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    goto :goto_4

    .line 145
    :catch_0
    move-object v7, v1

    .line 146
    :catch_1
    move-object v8, v1

    .line 147
    :goto_4
    if-eqz v7, :cond_c

    .line 148
    .line 149
    instance-of v9, v8, Lorg/xmlpull/v1/XmlPullParser;

    .line 150
    .line 151
    const/4 v10, 0x1

    .line 152
    if-eqz v9, :cond_7

    .line 153
    .line 154
    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    move v9, v10

    .line 158
    goto :goto_5

    .line 159
    :cond_7
    move v9, v3

    .line 160
    :goto_5
    instance-of v11, v8, Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    .line 162
    if-eqz v11, :cond_8

    .line 163
    .line 164
    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    move v9, v10

    .line 168
    :cond_8
    instance-of v7, v8, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 169
    .line 170
    if-eqz v7, :cond_9

    .line 171
    .line 172
    if-nez v5, :cond_a

    .line 173
    .line 174
    check-cast v8, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 175
    .line 176
    move-object v5, v8

    .line 177
    goto :goto_6

    .line 178
    :cond_9
    move v10, v9

    .line 179
    :cond_a
    :goto_6
    if-eqz v10, :cond_b

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 183
    .line 184
    const-string p1, "incompatible class: "

    .line 185
    .line 186
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_c
    :goto_7
    add-int/lit8 v4, v6, 0x1

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catch_2
    move-exception p0

    .line 198
    goto :goto_8

    .line 199
    :cond_d
    const/16 v3, 0x20

    .line 200
    .line 201
    if-le v2, v3, :cond_3

    .line 202
    .line 203
    int-to-char v2, v2

    .line 204
    :try_start_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_e
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 210
    .line 211
    const-string p1, "resource not found: /META-INF/services/org.xmlpull.v1.XmlPullParserFactory make sure that parser implementing XmlPull API is available"

    .line 212
    .line 213
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 217
    :goto_8
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 218
    .line 219
    invoke-direct {p1, v1, v1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    throw p1
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .line 1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isValidating()Z
    .locals 1

    .line 1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Class;

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/xmlpull/v1/XmlPullParser;

    .line 38
    .line 39
    iget-object v4, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v6, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 59
    .line 60
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/lang/Boolean;

    .line 65
    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v3

    .line 80
    new-instance v4, Ljava/lang/StringBuffer;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    const-string v2, ": "

    .line 93
    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    const-string v2, "; "

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuffer;

    .line 122
    .line 123
    const-string v2, "could not create parser: "

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuffer;

    .line 142
    .line 143
    const-string v2, "No valid parser classes found in "

    .line 144
    .line 145
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuffer;

    .line 164
    .line 165
    const-string v2, "Factory initialization was incomplete - has not tried "

    .line 166
    .line 167
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Class;

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    return-object v3

    .line 40
    :catch_0
    move-exception v3

    .line 41
    new-instance v4, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    const-string v2, ": "

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    const-string v2, "; "

    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuffer;

    .line 83
    .line 84
    const-string v2, "could not create serializer: "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuffer;

    .line 103
    .line 104
    const-string v2, "No valid serializer classes found in "

    .line 105
    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuffer;

    .line 125
    .line 126
    const-string v2, "Factory initialization incomplete - has not tried "

    .line 127
    .line 128
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    const-string p1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setValidating(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    const-string p1, "http://xmlpull.org/v1/doc/features.html#validation"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
