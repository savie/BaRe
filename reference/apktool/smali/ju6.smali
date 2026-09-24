.class public final enum Lju6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lju6;

.field public static final enum c:Lju6;

.field public static final enum d:Lju6;

.field public static final e:Ljava/util/Set;

.field public static final synthetic f:[Lju6;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lju6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "FILE_SHARE_READ"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Lju6;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lju6;->b:Lju6;

    .line 12
    .line 13
    new-instance v1, Lju6;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-wide/16 v3, 0x2

    .line 17
    .line 18
    const-string v5, "FILE_SHARE_WRITE"

    .line 19
    .line 20
    invoke-direct {v1, v5, v3, v4, v2}, Lju6;-><init>(Ljava/lang/String;JI)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lju6;->c:Lju6;

    .line 24
    .line 25
    new-instance v2, Lju6;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-wide/16 v4, 0x4

    .line 29
    .line 30
    const-string v6, "FILE_SHARE_DELETE"

    .line 31
    .line 32
    invoke-direct {v2, v6, v4, v5, v3}, Lju6;-><init>(Ljava/lang/String;JI)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lju6;->d:Lju6;

    .line 36
    .line 37
    filled-new-array {v0, v1, v2}, [Lju6;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lju6;->f:[Lju6;

    .line 42
    .line 43
    const-class v0, Lju6;

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lju6;->e:Ljava/util/Set;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lju6;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lju6;
    .locals 1

    .line 1
    const-class v0, Lju6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lju6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lju6;
    .locals 1

    .line 1
    sget-object v0, Lju6;->f:[Lju6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lju6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lju6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lju6;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
