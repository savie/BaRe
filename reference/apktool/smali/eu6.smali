.class public final enum Leu6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Leu6;

.field public static final enum c:Leu6;

.field public static final synthetic d:[Leu6;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Leu6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "SMB2_NEGOTIATE_SIGNING_ENABLED"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Leu6;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Leu6;->b:Leu6;

    .line 12
    .line 13
    new-instance v1, Leu6;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-wide/16 v3, 0x2

    .line 17
    .line 18
    const-string v5, "SMB2_NEGOTIATE_SIGNING_REQUIRED"

    .line 19
    .line 20
    invoke-direct {v1, v5, v3, v4, v2}, Leu6;-><init>(Ljava/lang/String;JI)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Leu6;->c:Leu6;

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Leu6;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Leu6;->d:[Leu6;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Leu6;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu6;
    .locals 1

    .line 1
    const-class v0, Leu6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Leu6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Leu6;
    .locals 1

    .line 1
    sget-object v0, Leu6;->d:[Leu6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Leu6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Leu6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Leu6;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
