.class public final Lup7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lev1;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final b:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lsp7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lup7;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lup7;->b:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lp28;->a:Lp28;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lsp7;

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lsp7;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lup7;->a:Lsp7;

    .line 17
    .line 18
    return-void
.end method

.method public static b(Lrp7;)Ljava/lang/AssertionError;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Thread ["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lrp7;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "] opened a scope of "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lrp7;->c:Lt40;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " here:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method


# virtual methods
.method public final a(Lt40;)Lv57;
    .locals 6

    .line 1
    sget-object v0, Lp28;->a:Lp28;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp28;->a(Lt40;)Lv57;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lrp7;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lrp7;-><init>(Lt40;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, p1

    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    aget-object v3, p1, v2

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-class v5, Lt40;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "makeCurrent"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    add-int/lit8 v3, v2, 0x2

    .line 51
    .line 52
    array-length v4, p1

    .line 53
    if-ge v3, v4, :cond_1

    .line 54
    .line 55
    aget-object v3, p1, v3

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "resumeWith"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_0

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    const-string p0, "Attempting to call Context.makeCurrent from inside a Kotlin coroutine. This is not allowed. Use Context.asContextElement provided by opentelemetry-extension-kotlin instead of makeCurrent."

    .line 83
    .line 84
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0

    .line 89
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v2, 0x1

    .line 93
    :goto_2
    array-length v3, p1

    .line 94
    if-ge v2, v3, :cond_4

    .line 95
    .line 96
    aget-object v3, p1, v2

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v4, "io.opentelemetry.api."

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_3

    .line 109
    .line 110
    const-string v4, "io.opentelemetry.sdk.testing.context.SettableContextStorageProvider"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_3

    .line 117
    .line 118
    const-string v4, "io.opentelemetry.context."

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    array-length v3, p1

    .line 130
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Ltp7;

    .line 140
    .line 141
    invoke-direct {p1, p0, v0, v1}, Ltp7;-><init>(Lup7;Lv57;Lrp7;)V

    .line 142
    .line 143
    .line 144
    return-object p1
.end method

.method public final close()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lup7;->a:Lsp7;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lsp7;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, v0, Lsp7;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lqp0;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2}, Lqp0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/util/List;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-le p0, v2, :cond_1

    .line 59
    .line 60
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 61
    .line 62
    const-string v1, "Multiple scopes leaked - first will be thrown as an error."

    .line 63
    .line 64
    sget-object v2, Lup7;->b:Ljava/util/logging/Logger;

    .line 65
    .line 66
    invoke-virtual {v2, p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lrp7;

    .line 84
    .line 85
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 86
    .line 87
    const-string v4, "Scope leaked"

    .line 88
    .line 89
    invoke-static {v1}, Lup7;->b(Lrp7;)Ljava/lang/AssertionError;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    const/4 p0, 0x0

    .line 98
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Lrp7;

    .line 103
    .line 104
    invoke-static {p0}, Lup7;->b(Lrp7;)Ljava/lang/AssertionError;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    throw p0

    .line 109
    :cond_2
    return-void
.end method

.method public final current()Lt40;
    .locals 0

    .line 1
    sget-object p0, Lp28;->a:Lp28;

    .line 2
    .line 3
    invoke-virtual {p0}, Lp28;->current()Lt40;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
