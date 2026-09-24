.class public final enum Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

.field public static final enum CHARGING:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

.field public static final enum MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

.field public static final enum NONE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;


# direct methods
.method private static final synthetic $values()[Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->NONE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->CHARGING:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 4
    .line 5
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->NONE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 10
    .line 11
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 12
    .line 13
    const-string v1, "CHARGING"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->CHARGING:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 20
    .line 21
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 22
    .line 23
    const-string v1, "MINIMUM_PERCENT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 30
    .line 31
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->$values()[Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->$VALUES:[Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 36
    .line 37
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->$ENTRIES:Ljx2;

    .line 42
    .line 43
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
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;
    .locals 1

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->$VALUES:[Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toDisplayString(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/c;->a:[I

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
    const/4 v1, 0x0

    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/16 v0, 0xa

    .line 24
    .line 25
    if-gt v0, p1, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x65

    .line 28
    .line 29
    if-ge p1, v0, :cond_0

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    :cond_0
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 p0, 0x32

    .line 40
    .line 41
    :goto_0
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 42
    .line 43
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, "%"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const v0, 0x7f1303ec

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_3
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 84
    .line 85
    const p0, 0x7f1303ed

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_4
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 94
    .line 95
    const p0, 0x7f1303d4

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
