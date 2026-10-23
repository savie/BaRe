.class public final Lnz8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lnz8;->a:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {p1, p2, v0}, Lwx3;->j([BII)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    long-to-int p1, p1

    .line 10
    iput p1, p0, Lnz8;->a:I

    .line 11
    .line 12
    return-void
.end method

.method public static b([B)Lnz8;
    .locals 1

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    invoke-static {p0}, Lod2;->m(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-direct {v0, p0}, Lnz8;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final a()[B
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    iget p0, p0, Lnz8;->a:I

    .line 5
    .line 6
    int-to-long v2, p0

    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-static {v2, v3, v1, p0, v0}, Lwx3;->C(J[BII)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lnz8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lnz8;

    .line 8
    .line 9
    iget p1, p1, Lnz8;->a:I

    .line 10
    .line 11
    iget p0, p0, Lnz8;->a:I

    .line 12
    .line 13
    if-ne p0, p1, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lnz8;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ZipShort value: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lnz8;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
