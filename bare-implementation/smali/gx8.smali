.class public abstract Lgx8;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public b:J

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgx8;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lgx8;->b:J

    iput v0, p0, Lgx8;->d:I

    iput p1, p0, Lgx8;->a:I

    return-void
.end method

.method public constructor <init>(Lgx8;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lgx8;->c:I

    .line 5
    .line 6
    iput v0, p0, Lgx8;->a:I

    .line 7
    .line 8
    iget-wide v0, p1, Lgx8;->b:J

    .line 9
    .line 10
    iput-wide v0, p0, Lgx8;->b:J

    .line 11
    .line 12
    iget v0, p1, Lgx8;->a:I

    .line 13
    .line 14
    iput v0, p0, Lgx8;->c:I

    .line 15
    .line 16
    iget p1, p1, Lgx8;->d:I

    .line 17
    .line 18
    iput p1, p0, Lgx8;->d:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget v1, p0, Lgx8;->a:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lxx3;->n([BII)V

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lgx8;->b:J

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    invoke-static {v3, v1, v2, v0}, Lxx3;->u(IJ[B)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lgx8;->c:I

    .line 18
    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lxx3;->n([BII)V

    .line 22
    .line 23
    .line 24
    iget p0, p0, Lgx8;->d:I

    .line 25
    .line 26
    const/16 v1, 0x1c

    .line 27
    .line 28
    invoke-static {v0, p0, v1}, Lxx3;->n([BII)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
