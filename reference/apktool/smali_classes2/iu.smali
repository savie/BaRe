.class public final enum Liu;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Liu;

.field public static final enum APP:Liu;

.field public static final Companion:Lgu;

.field public static final enum DATA:Liu;

.field public static final enum EXPANSION:Liu;

.field public static final enum EXTDATA:Liu;

.field public static final enum MEDIA:Liu;


# direct methods
.method private static final synthetic $values()[Liu;
    .locals 5

    .line 1
    sget-object v0, Liu;->APP:Liu;

    .line 2
    .line 3
    sget-object v1, Liu;->DATA:Liu;

    .line 4
    .line 5
    sget-object v2, Liu;->EXTDATA:Liu;

    .line 6
    .line 7
    sget-object v3, Liu;->EXPANSION:Liu;

    .line 8
    .line 9
    sget-object v4, Liu;->MEDIA:Liu;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Liu;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Liu;

    .line 2
    .line 3
    const-string v1, "APP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Liu;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Liu;->APP:Liu;

    .line 10
    .line 11
    new-instance v0, Liu;

    .line 12
    .line 13
    const-string v1, "DATA"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Liu;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Liu;->DATA:Liu;

    .line 20
    .line 21
    new-instance v0, Liu;

    .line 22
    .line 23
    const-string v1, "EXTDATA"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Liu;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Liu;->EXTDATA:Liu;

    .line 30
    .line 31
    new-instance v0, Liu;

    .line 32
    .line 33
    const-string v1, "EXPANSION"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Liu;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Liu;->EXPANSION:Liu;

    .line 40
    .line 41
    new-instance v0, Liu;

    .line 42
    .line 43
    const-string v1, "MEDIA"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Liu;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Liu;->MEDIA:Liu;

    .line 50
    .line 51
    invoke-static {}, Liu;->$values()[Liu;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Liu;->$VALUES:[Liu;

    .line 56
    .line 57
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Liu;->$ENTRIES:Ljx2;

    .line 62
    .line 63
    new-instance v0, Lgu;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    sput-object v0, Liu;->Companion:Lgu;

    .line 69
    .line 70
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
    sget-object v0, Liu;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: toDisplayString"

    .line 14
    .line 15
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Liu;
    .locals 1

    .line 1
    const-class v0, Liu;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Liu;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Liu;
    .locals 1

    .line 1
    sget-object v0, Liu;->$VALUES:[Liu;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Liu;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getBackupReq()Lsk0;
    .locals 1

    .line 1
    sget-object v0, Lhu;->a:[I

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
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Lsk0;->NONE:Lsk0;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-static {}, Lb67;->c()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    sget-object p0, Lsk0;->ROOT_OR_SHIZUKU:Lsk0;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    sget-object p0, Lsk0;->NONE:Lsk0;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_3
    sget-object p0, Lsk0;->ROOT:Lsk0;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_4
    sget-object p0, Lsk0;->NONE:Lsk0;

    .line 48
    .line 49
    return-object p0
.end method

.method public final getIconRes()I
    .locals 1

    .line 1
    sget-object v0, Lhu;->a:[I

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
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    const p0, 0x7f080176

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    const p0, 0x7f080132

    .line 34
    .line 35
    .line 36
    return p0

    .line 37
    :cond_2
    const p0, 0x7f0801b0

    .line 38
    .line 39
    .line 40
    return p0

    .line 41
    :cond_3
    const p0, 0x7f080125

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :cond_4
    const p0, 0x7f0800bf

    .line 46
    .line 47
    .line 48
    return p0
.end method

.method public final isCheckedInExpansion(Z)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "system_checked_app_part_"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "user_checked_app_part_"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Liu;->APP:Liu;

    .line 24
    .line 25
    if-eq p0, v0, :cond_2

    .line 26
    .line 27
    sget-object v0, Liu;->DATA:Liu;

    .line 28
    .line 29
    if-ne p0, v0, :cond_1

    .line 30
    .line 31
    sget-object p0, Lmp6;->a:Lmp6;

    .line 32
    .line 33
    sget-boolean p0, Lmp6;->g:Z

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 41
    :goto_2
    :try_start_0
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const-string p1, "prefs"

    .line 51
    .line 52
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    :goto_3
    return p0
.end method

.method public final setCheckedInExpansion(ZZ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "system_checked_app_part_"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "user_checked_app_part_"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string p0, "editor"

    .line 36
    .line 37
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0
.end method

.method public final toDisplayString(Z)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 4
    .line 5
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lsz8;->u(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 20
    .line 21
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    sget-object v0, Lhu;->a:[I

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    aget p0, v0, p0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-eq p0, v0, :cond_5

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    if-eq p0, v0, :cond_4

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    if-eq p0, v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    if-eq p0, v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    if-ne p0, v0, :cond_1

    .line 47
    .line 48
    const p0, 0x7f130346

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    :cond_2
    const p0, 0x7f13022a

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_3
    const p0, 0x7f13022f

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_4
    const p0, 0x7f1301d8

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_5
    const-string p0, "APKs"

    .line 98
    .line 99
    return-object p0
.end method
