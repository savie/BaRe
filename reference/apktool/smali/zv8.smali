.class public final enum Lzv8;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lzv8;

.field public static final synthetic c:[Lzv8;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lzv8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x5

    .line 5
    const-string v3, "WINDOWS_MAJOR_VERSION_5"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lzv8;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lzv8;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x6

    .line 14
    const-string v4, "WINDOWS_MAJOR_VERSION_6"

    .line 15
    .line 16
    invoke-direct {v1, v4, v2, v3}, Lzv8;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lzv8;->b:Lzv8;

    .line 20
    .line 21
    new-instance v2, Lzv8;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const/16 v4, 0xa

    .line 25
    .line 26
    const-string v5, "WINDOWS_MAJOR_VERSION_10"

    .line 27
    .line 28
    invoke-direct {v2, v5, v3, v4}, Lzv8;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lzv8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lzv8;->c:[Lzv8;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    int-to-long p1, p3

    .line 5
    iput-wide p1, p0, Lzv8;->a:J

    .line 6
    .line 7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzv8;
    .locals 1

    .line 1
    const-class v0, Lzv8;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzv8;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lzv8;
    .locals 1

    .line 1
    sget-object v0, Lzv8;->c:[Lzv8;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lzv8;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lzv8;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzv8;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
