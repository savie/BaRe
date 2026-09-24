.class public final Lus0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:J

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>([I[IJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus0;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lus0;->b:[I

    .line 7
    .line 8
    iput-wide p3, p0, Lus0;->c:J

    .line 9
    .line 10
    iput p5, p0, Lus0;->d:I

    .line 11
    .line 12
    iput p6, p0, Lus0;->e:I

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lus0;)[I
    .locals 6

    .line 1
    iget-object v0, p0, Lus0;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lus0;->b:[I

    .line 4
    .line 5
    iget-wide v2, p0, Lus0;->c:J

    .line 6
    .line 7
    iget v4, p0, Lus0;->d:I

    .line 8
    .line 9
    iget v5, p0, Lus0;->e:I

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lvs0;->a([I[IJII)[I

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
