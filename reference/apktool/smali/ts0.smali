.class public final Lts0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:[I

.field public final b:J

.field public c:[B

.field public d:B

.field public e:B


# direct methods
.method public constructor <init>([IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x40

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lts0;->c:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-byte v0, p0, Lts0;->d:B

    .line 12
    .line 13
    iput-byte v0, p0, Lts0;->e:B

    .line 14
    .line 15
    iput-object p1, p0, Lts0;->a:[I

    .line 16
    .line 17
    iput-wide p2, p0, Lts0;->b:J

    .line 18
    .line 19
    return-void
.end method
