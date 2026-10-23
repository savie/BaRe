.class public Lcom/microsoft/identity/common/java/util/QueryParamsAdapter;
.super Lcom/google/gson/b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/b;"
    }
.end annotation


# static fields
.field private static final mGson:Lcom/google/gson/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lt14;

    .line 2
    .line 3
    invoke-direct {v0}, Lt14;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-class v3, Ljava/lang/String;

    .line 11
    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v3, v1, v4

    .line 16
    .line 17
    const-class v3, Ljava/util/Map$Entry;

    .line 18
    .line 19
    invoke-static {v3, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v3, v4, [Ljava/lang/reflect/Type;

    .line 28
    .line 29
    aput-object v1, v3, v2

    .line 30
    .line 31
    const-class v1, Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/microsoft/identity/common/java/util/QueryParamsAdapter;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/google/gson/a;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lcom/microsoft/identity/common/java/util/QueryParamsAdapter;->mGson:Lcom/google/gson/a;

    .line 55
    .line 56
    return-void
.end method

.method public static _toJson(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    aput-object v2, v0, v3

    .line 11
    .line 12
    const-class v2, Ljava/util/Map$Entry;

    .line 13
    .line 14
    invoke-static {v2, v0}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-array v2, v3, [Ljava/lang/reflect/Type;

    .line 23
    .line 24
    aput-object v0, v2, v1

    .line 25
    .line 26
    const-class v0, Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lcom/microsoft/identity/common/java/util/QueryParamsAdapter;->mGson:Lcom/google/gson/a;

    .line 37
    .line 38
    invoke-virtual {v1, p0, v0}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method


# virtual methods
.method public final read(Ltl4;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ltl4;->peek()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ldj7;->A(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ltl4;->beginObject()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1}, Ltl4;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 35
    .line 36
    invoke-virtual {p1}, Ltl4;->nextName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Ltl4;->endObject()V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ltl4;->beginArray()V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {p1}, Ltl4;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {p1}, Ltl4;->beginObject()V

    .line 70
    .line 71
    .line 72
    const-string v0, ""

    .line 73
    .line 74
    move-object v1, v0

    .line 75
    :goto_2
    invoke-virtual {p1}, Ltl4;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Ltl4;->nextName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "first"

    .line 86
    .line 87
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-string v1, "second"

    .line 99
    .line 100
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    new-instance p0, Lkm4;

    .line 112
    .line 113
    const-string p1, "Unexpected NAME field: "

    .line 114
    .line 115
    invoke-static {p1, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_5
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 124
    .line 125
    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ltl4;->endObject()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    invoke-virtual {p1}, Ltl4;->endArray()V

    .line 136
    .line 137
    .line 138
    return-object p0
.end method

.method public final write(Lnn4;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p1}, Lnn4;->b()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-virtual {p1}, Lnn4;->g()V

    .line 23
    .line 24
    .line 25
    const-string v0, "first"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lnn4;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lnn4;->S(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "second"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lnn4;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lnn4;->S(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lnn4;->m()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lnn4;->j()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
