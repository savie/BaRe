.class public final Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

.field private formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/nimbusds/jose/shaded/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

.field private numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

.field private objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

.field private final reflectionFilters:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;",
            ">;"
        }
    .end annotation
.end field

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

.field private timeStyle:I

.field private useJdkUnsafe:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 170
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 171
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/FieldNamingPolicy;->IDENTITY:Lcom/nimbusds/jose/shaded/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->fieldNamingPolicy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeNulls:Z

    .line 176
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_DATE_PATTERN:Ljava/lang/String;

    iput-object v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    const/4 v1, 0x2

    .line 177
    iput v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->dateStyle:I

    .line 178
    iput v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->timeStyle:I

    .line 179
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 180
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v1, 0x1

    .line 181
    iput-boolean v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 182
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_FORMATTING_STYLE:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    iput-object v2, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 183
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 184
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_STRICTNESS:Lcom/nimbusds/jose/shaded/gson/Strictness;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 185
    iput-boolean v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->useJdkUnsafe:Z

    .line 186
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 187
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_NUMBER_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 188
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/Gson;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 7
    .line 8
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 11
    .line 12
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/FieldNamingPolicy;->IDENTITY:Lcom/nimbusds/jose/shaded/gson/FieldNamingPolicy;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->fieldNamingPolicy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeNulls:Z

    .line 39
    .line 40
    sget-object v4, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_DATE_PATTERN:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v4, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    iput v4, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->dateStyle:I

    .line 46
    .line 47
    iput v4, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->timeStyle:I

    .line 48
    .line 49
    iput-boolean v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 50
    .line 51
    iput-boolean v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    iput-boolean v4, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 55
    .line 56
    sget-object v5, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_FORMATTING_STYLE:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 57
    .line 58
    iput-object v5, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 59
    .line 60
    iput-boolean v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 61
    .line 62
    sget-object v3, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_STRICTNESS:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 63
    .line 64
    iput-object v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 65
    .line 66
    iput-boolean v4, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->useJdkUnsafe:Z

    .line 67
    .line 68
    sget-object v3, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 69
    .line 70
    iput-object v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 71
    .line 72
    sget-object v3, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_NUMBER_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 73
    .line 74
    iput-object v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 75
    .line 76
    new-instance v3, Ljava/util/ArrayDeque;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    .line 82
    .line 83
    iget-object v4, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 84
    .line 85
    iput-object v4, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 86
    .line 87
    iget-object v4, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->fieldNamingStrategy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 88
    .line 89
    iput-object v4, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->fieldNamingPolicy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 90
    .line 91
    iget-object v4, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->instanceCreators:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    iget-boolean v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeNulls:Z

    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeNulls:Z

    .line 99
    .line 100
    iget-boolean v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->complexMapKeySerialization:Z

    .line 101
    .line 102
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 103
    .line 104
    iget-boolean v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->generateNonExecutableJson:Z

    .line 105
    .line 106
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 107
    .line 108
    iget-boolean v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->htmlSafe:Z

    .line 109
    .line 110
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 111
    .line 112
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 115
    .line 116
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 119
    .line 120
    iget-boolean v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeSpecialFloatingPointValues:Z

    .line 121
    .line 122
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 123
    .line 124
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 127
    .line 128
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->datePattern:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 131
    .line 132
    iget v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->dateStyle:I

    .line 133
    .line 134
    iput v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->dateStyle:I

    .line 135
    .line 136
    iget v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->timeStyle:I

    .line 137
    .line 138
    iput v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->timeStyle:I

    .line 139
    .line 140
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->builderFactories:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    .line 149
    .line 150
    iget-boolean v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->useJdkUnsafe:Z

    .line 151
    .line 152
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->useJdkUnsafe:Z

    .line 153
    .line 154
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 155
    .line 156
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 157
    .line 158
    iget-object v0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 161
    .line 162
    iget-object p0, p1, Lcom/nimbusds/jose/shaded/gson/Gson;->reflectionFilters:Ljava/util/List;

    .line 163
    .line 164
    invoke-virtual {v3, p0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method private static addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object p2, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object p2, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 31
    .line 32
    invoke-virtual {p2, p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    move-object p0, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p0, 0x2

    .line 40
    if-ne p1, p0, :cond_2

    .line 41
    .line 42
    if-eq p2, p0, :cond_4

    .line 43
    .line 44
    :cond_2
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 53
    .line 54
    invoke-virtual {v1, p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 59
    .line 60
    invoke-virtual {v2, p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    move-object v3, p1

    .line 65
    move-object p1, p0

    .line 66
    move-object p0, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object p1, p0

    .line 69
    goto :goto_0

    .line 70
    :goto_1
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method private static checkDateFormatStyle(I)I
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    const-string v0, "Invalid style: "

    .line 8
    .line 9
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private static hasNonOverridableAdapter(Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

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


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/nimbusds/jose/shaded/gson/ExclusionStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->withExclusionStrategy(Lcom/nimbusds/jose/shaded/gson/ExclusionStrategy;ZZ)Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 13
    .line 14
    return-object p0
.end method

.method public addReflectionAccessFilter(Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/nimbusds/jose/shaded/gson/ExclusionStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->withExclusionStrategy(Lcom/nimbusds/jose/shaded/gson/ExclusionStrategy;ZZ)Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 13
    .line 14
    return-object p0
.end method

.method public create()Lcom/nimbusds/jose/shaded/gson/Gson;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, v2

    .line 18
    add-int/lit8 v3, v3, 0x3

    .line 19
    .line 20
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 45
    .line 46
    iget v3, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->dateStyle:I

    .line 47
    .line 48
    iget v4, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->timeStyle:I

    .line 49
    .line 50
    invoke-static {v2, v3, v4, v1}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 54
    .line 55
    move-object/from16 v18, v1

    .line 56
    .line 57
    iget-object v1, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 58
    .line 59
    move-object v3, v2

    .line 60
    iget-object v2, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->fieldNamingPolicy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 61
    .line 62
    move-object v4, v3

    .line 63
    new-instance v3, Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v5, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 66
    .line 67
    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    move-object v5, v4

    .line 71
    iget-boolean v4, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeNulls:Z

    .line 72
    .line 73
    move-object v6, v5

    .line 74
    iget-boolean v5, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 75
    .line 76
    move-object v7, v6

    .line 77
    iget-boolean v6, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 78
    .line 79
    move-object v8, v7

    .line 80
    iget-boolean v7, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 81
    .line 82
    move-object v9, v8

    .line 83
    iget-object v8, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 84
    .line 85
    move-object v10, v9

    .line 86
    iget-object v9, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 87
    .line 88
    move-object v11, v10

    .line 89
    iget-boolean v10, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 90
    .line 91
    move-object v12, v11

    .line 92
    iget-boolean v11, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->useJdkUnsafe:Z

    .line 93
    .line 94
    move-object v13, v12

    .line 95
    iget-object v12, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 96
    .line 97
    move-object v14, v13

    .line 98
    iget-object v13, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 99
    .line 100
    move-object v15, v14

    .line 101
    iget v14, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->dateStyle:I

    .line 102
    .line 103
    move-object/from16 v16, v15

    .line 104
    .line 105
    iget v15, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->timeStyle:I

    .line 106
    .line 107
    move-object/from16 v17, v1

    .line 108
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    .line 110
    .line 111
    move-object/from16 v19, v2

    .line 112
    .line 113
    iget-object v2, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 114
    .line 115
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Ljava/util/ArrayList;

    .line 119
    .line 120
    move-object/from16 v20, v1

    .line 121
    .line 122
    iget-object v1, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 123
    .line 124
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 128
    .line 129
    move-object/from16 v21, v1

    .line 130
    .line 131
    iget-object v1, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 132
    .line 133
    move-object/from16 v22, v1

    .line 134
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    .line 141
    .line 142
    move-object/from16 v0, v21

    .line 143
    .line 144
    move-object/from16 v21, v1

    .line 145
    .line 146
    move-object/from16 v1, v17

    .line 147
    .line 148
    move-object/from16 v17, v2

    .line 149
    .line 150
    move-object/from16 v2, v19

    .line 151
    .line 152
    move-object/from16 v19, v0

    .line 153
    .line 154
    move-object/from16 v0, v16

    .line 155
    .line 156
    move-object/from16 v16, v20

    .line 157
    .line 158
    move-object/from16 v20, v22

    .line 159
    .line 160
    invoke-direct/range {v0 .. v21}, Lcom/nimbusds/jose/shaded/gson/Gson;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/Excluder;Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZLcom/nimbusds/jose/shaded/gson/FormattingStyle;Lcom/nimbusds/jose/shaded/gson/Strictness;ZZLcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;Ljava/util/List;)V

    .line 161
    .line 162
    .line 163
    return-object v0
.end method

.method public disableHtmlEscaping()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 8
    .line 9
    return-object p0
.end method

.method public disableJdkUnsafe()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->useJdkUnsafe:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->withModifiers([I)Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 11
    .line 12
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 8
    .line 9
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lcom/nimbusds/jose/shaded/gson/JsonSerializer;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    instance-of v1, p2, Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    instance-of v1, p2, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    instance-of v1, p2, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 24
    :goto_1
    invoke-static {v1}, Lcom/nimbusds/jose/shaded/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->hasNonOverridableAdapter(Ljava/lang/reflect/Type;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_6

    .line 32
    .line 33
    instance-of v1, p2, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 38
    .line 39
    move-object v2, p2

    .line 40
    check-cast v2, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;

    .line 41
    .line 42
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    if-nez v0, :cond_3

    .line 46
    .line 47
    instance-of v0, p2, Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    :cond_3
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 56
    .line 57
    invoke-static {v0, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_4
    instance-of v0, p2, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p2, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 73
    .line 74
    invoke-static {p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_5
    return-object p0

    .line 84
    :cond_6
    const-string p0, "Cannot override built-in adapter for "

    .line 85
    .line 86
    invoke-static {p1, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nimbusds/jose/shaded/gson/GsonBuilder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lcom/nimbusds/jose/shaded/gson/JsonSerializer;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    instance-of v1, p2, Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    instance-of v1, p2, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    invoke-static {v1}, Lcom/nimbusds/jose/shaded/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 21
    .line 22
    .line 23
    instance-of v1, p2, Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    instance-of v0, p2, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    check-cast p2, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_4
    return-object p0
.end method

.method public serializeNulls()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeNulls:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public setDateFormat(I)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->checkDateFormatStyle(I)I

    move-result p1

    iput p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->dateStyle:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->checkDateFormatStyle(I)I

    move-result p1

    iput p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->dateStyle:I

    .line 30
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->checkDateFormatStyle(I)I

    move-result p1

    iput p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->timeStyle:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "The date pattern \'"

    .line 13
    .line 14
    const-string v2, "\' is not valid"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 25
    .line 26
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/nimbusds/jose/shaded/gson/ExclusionStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v3, v2, v4, v4}, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->withExclusionStrategy(Lcom/nimbusds/jose/shaded/gson/ExclusionStrategy;ZZ)Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/nimbusds/jose/shaded/gson/FieldNamingPolicy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->fieldNamingPolicy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 7
    .line 8
    return-object p0
.end method

.method public setFormattingStyle(Lcom/nimbusds/jose/shaded/gson/FormattingStyle;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 5
    .line 6
    return-object p0
.end method

.method public setLenient()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/Strictness;->LENIENT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 5
    .line 6
    return-object p0
.end method

.method public setNumberToNumberStrategy(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 7
    .line 8
    return-object p0
.end method

.method public setObjectToNumberStrategy(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 7
    .line 8
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/FormattingStyle;->PRETTY:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->setFormattingStyle(Lcom/nimbusds/jose/shaded/gson/FormattingStyle;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 5
    .line 6
    return-object p0
.end method

.method public setVersion(D)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmpg-double v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->withVersion(D)Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "Invalid version: "

    .line 23
    .line 24
    invoke-static {p0, p1, p2}, Ld6;->g(Ljava/lang/String;D)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method
