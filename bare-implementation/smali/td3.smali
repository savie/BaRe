.class public final enum Ltd3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnd3;


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Ltd3;

.field public static final enum All:Ltd3;

.field public static final enum Labelled:Ltd3;

.field public static final enum NotLabelled:Ltd3;

.field public static final enum Selected:Ltd3;


# direct methods
.method private static final synthetic $values()[Ltd3;
    .locals 4

    .line 1
    sget-object v0, Ltd3;->All:Ltd3;

    .line 2
    .line 3
    sget-object v1, Ltd3;->Selected:Ltd3;

    .line 4
    .line 5
    sget-object v2, Ltd3;->Labelled:Ltd3;

    .line 6
    .line 7
    sget-object v3, Ltd3;->NotLabelled:Ltd3;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ltd3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ltd3;

    .line 2
    .line 3
    const-string v1, "All"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ltd3;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ltd3;->All:Ltd3;

    .line 10
    .line 11
    new-instance v0, Ltd3;

    .line 12
    .line 13
    const-string v1, "Selected"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Ltd3;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ltd3;->Selected:Ltd3;

    .line 20
    .line 21
    new-instance v0, Ltd3;

    .line 22
    .line 23
    const-string v1, "Labelled"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Ltd3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Ltd3;->Labelled:Ltd3;

    .line 30
    .line 31
    new-instance v0, Ltd3;

    .line 32
    .line 33
    const-string v1, "NotLabelled"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Ltd3;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Ltd3;->NotLabelled:Ltd3;

    .line 40
    .line 41
    invoke-static {}, Ltd3;->$values()[Ltd3;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Ltd3;->$VALUES:[Ltd3;

    .line 46
    .line 47
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Ltd3;->$ENTRIES:Ljx2;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltd3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltd3;
    .locals 1

    .line 1
    const-class v0, Ltd3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ltd3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ltd3;
    .locals 1

    .line 1
    sget-object v0, Ltd3;->$VALUES:[Ltd3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ltd3;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lsd3;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_9

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 23
    .line 24
    const p0, 0x7f1303dd

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 37
    .line 38
    const p0, 0x7f1302e1

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    if-eqz p0, :cond_8

    .line 49
    .line 50
    const-string v0, "selected_labels_filter"

    .line 51
    .line 52
    sget-object v2, Lsv2;->a:Lsv2;

    .line 53
    .line 54
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move-object v2, p0

    .line 62
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    sget-object v3, Llr4;->a:Llr4;

    .line 84
    .line 85
    invoke-static {v2}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_6

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    move-object p0, v1

    .line 103
    :goto_2
    if-eqz p0, :cond_7

    .line 104
    .line 105
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_7
    invoke-static {v1}, Lud3;->e(Ljava/util/Set;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_8
    const-string p0, "prefs"

    .line 115
    .line 116
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_9
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 121
    .line 122
    const p0, 0x7f130030

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method public isApplied()Z
    .locals 6

    .line 1
    sget-object v0, Lsd3;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p0, v1, :cond_9

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq p0, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq p0, v2, :cond_7

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-ne p0, v2, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 24
    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    sget-object p0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz p0, :cond_8

    .line 31
    .line 32
    const-string v3, "selected_labels_filter"

    .line 33
    .line 34
    sget-object v4, Lsv2;->a:Lsv2;

    .line 35
    .line 36
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v4, p0

    .line 44
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v5, Llr4;->a:Llr4;

    .line 66
    .line 67
    invoke-static {v4}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    move-object p0, v2

    .line 85
    :goto_2
    if-eqz p0, :cond_6

    .line 86
    .line 87
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :cond_6
    if-eqz v2, :cond_9

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_7

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_7
    :goto_3
    return v1

    .line 101
    :cond_8
    const-string p0, "prefs"

    .line 102
    .line 103
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v2

    .line 107
    :cond_9
    :goto_4
    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1
    sget-object v0, Ltd3;->All:Ltd3;

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

.method public reset()V
    .locals 1

    .line 1
    sget-object p0, Lud3;->a:Lud3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lud3;->c()Lnd3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lud3;->b(Lnd3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
