.class public final Lyu6;
.super Lgv6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 9
    invoke-direct {p0, p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iput-wide p1, p0, Lyu6;->b:J

    return-void
.end method

.method public constructor <init>(Lut6;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-wide p1, p1, Lut6;->j:J

    .line 5
    .line 6
    iput-wide p1, p0, Lyu6;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lbp5;

    .line 2
    .line 3
    sget-object v1, Lbp5;->b:Lbp5;

    .line 4
    .line 5
    iget-wide v2, p0, Lyu6;->b:J

    .line 6
    .line 7
    invoke-static {v2, v3, v0, v1}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lbp5;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "%s (0x%08x): %s"

    .line 30
    .line 31
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
