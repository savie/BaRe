.class final Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/google/gson/b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/b;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/gson/b;

.field public final b:Lcom/google/gson/b;

.field public final c:Ler5;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/b;Lcom/google/gson/b;Ler5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->a:Lcom/google/gson/b;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/google/gson/b;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Ler5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final read(Ltl4;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ltl4;->peek()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ltl4;->nextNull()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Ler5;

    .line 15
    .line 16
    invoke-interface {v1}, Ler5;->construct()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const-string v3, "duplicate key: "

    .line 24
    .line 25
    if-ne v0, v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Ltl4;->beginArray()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1}, Ltl4;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Ltl4;->beginArray()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->a:Lcom/google/gson/b;

    .line 40
    .line 41
    check-cast v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->b:Lcom/google/gson/b;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/google/gson/b;->read(Ltl4;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/google/gson/b;

    .line 50
    .line 51
    check-cast v2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->b:Lcom/google/gson/b;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lcom/google/gson/b;->read(Ltl4;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ltl4;->endArray()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance p0, Lkm4;

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_2
    invoke-virtual {p1}, Ltl4;->endArray()V

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_3
    invoke-virtual {p1}, Ltl4;->beginObject()V

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {p1}, Ltl4;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    sget-object v0, Lsl4;->a:Lsl4;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lsl4;->C(Ltl4;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->a:Lcom/google/gson/b;

    .line 112
    .line 113
    check-cast v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->b:Lcom/google/gson/b;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/google/gson/b;->read(Ltl4;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/google/gson/b;

    .line 122
    .line 123
    check-cast v2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->b:Lcom/google/gson/b;

    .line 126
    .line 127
    invoke-virtual {v2, p1}, Lcom/google/gson/b;->read(Ltl4;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_4

    .line 136
    .line 137
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    new-instance p0, Lkm4;

    .line 142
    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_5
    invoke-virtual {p1}, Ltl4;->endObject()V

    .line 160
    .line 161
    .line 162
    return-object v1
.end method

.method public final write(Lnn4;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lnn4;->r()Lnn4;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lnn4;->g()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Lnn4;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/google/gson/b;

    .line 48
    .line 49
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/b;->write(Lnn4;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lnn4;->m()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
