.class public final Ley1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:I


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Ley1;->a:[B

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    iput-object p1, p0, Ley1;->b:[B

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    array-length p1, p2

    .line 25
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Ley1;->b:[B

    .line 30
    .line 31
    :goto_0
    const/16 p1, 0x20

    .line 32
    .line 33
    iput p1, p0, Ley1;->c:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const-string p0, "Missing Seed for KDF"

    .line 37
    .line 38
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0
.end method
