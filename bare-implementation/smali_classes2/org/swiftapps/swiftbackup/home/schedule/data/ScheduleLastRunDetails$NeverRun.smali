.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;
.super Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NeverRun"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public asHumanReadableString()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const p0, 0x7f1303ac

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public getTimeMillis()Ljava/lang/Long;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    const p0, 0x70fcb0d9

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NeverRun"

    .line 2
    .line 3
    return-object p0
.end method
