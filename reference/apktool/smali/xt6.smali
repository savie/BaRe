.class public final enum Lxt6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lxt6;

.field public static final synthetic c:[Lxt6;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lxt6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "SMB2_RESTART_SCANS"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Lxt6;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lxt6;->b:Lxt6;

    .line 12
    .line 13
    new-instance v1, Lxt6;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-wide/16 v3, 0x2

    .line 17
    .line 18
    const-string v5, "SMB2_RETURN_SINGLE_ENTRY"

    .line 19
    .line 20
    invoke-direct {v1, v5, v3, v4, v2}, Lxt6;-><init>(Ljava/lang/String;JI)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lxt6;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const-wide/16 v4, 0x4

    .line 27
    .line 28
    const-string v6, "SMB2_INDEX_SPECIFIED"

    .line 29
    .line 30
    invoke-direct {v2, v6, v4, v5, v3}, Lxt6;-><init>(Ljava/lang/String;JI)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lxt6;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const-wide/16 v5, 0x10

    .line 37
    .line 38
    const-string v7, "SMB2_REOPEN"

    .line 39
    .line 40
    invoke-direct {v3, v7, v5, v6, v4}, Lxt6;-><init>(Ljava/lang/String;JI)V

    .line 41
    .line 42
    .line 43
    filled-new-array {v0, v1, v2, v3}, [Lxt6;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lxt6;->c:[Lxt6;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lxt6;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lxt6;
    .locals 1

    .line 1
    const-class v0, Lxt6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxt6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lxt6;
    .locals 1

    .line 1
    sget-object v0, Lxt6;->c:[Lxt6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lxt6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lxt6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lxt6;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
